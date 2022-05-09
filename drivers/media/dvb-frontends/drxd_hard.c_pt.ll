; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/drxd_hard.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/drxd_hard.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drxd_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_drxd_attach\09\09\09\09"
module asm "\09.long\09__crc_drxd_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drxd_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22drxd_attach\22\09\09\09\09\09"
module asm "__kstrtabns_drxd_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.drxd_state = type { %struct.dvb_frontend, %struct.dvb_frontend_ops, %struct.dtv_frontend_properties, ptr, ptr, ptr, ptr, %struct.drxd_config, i32, i32, %struct.mutex, i8, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i32, %struct.SCfgAgc, %struct.SCfgAgc, %struct.SNoiseCal, i32, i32, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.drxd_config = type { i8, i8, i8, i32, i8, i8, i8, i8, i8, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.SCfgAgc = type { i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.SNoiseCal = type { i32, i16, i16, i16 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@drxd_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Micronas DRXD DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 47125000, i32 855250000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 -1071961426 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @drxd_release, ptr null, ptr @drxd_init, ptr @drxd_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drxd_set_frontend, ptr @drxd_get_tune_settings, ptr null, ptr @drxd_read_status, ptr @drxd_read_ber, ptr @drxd_read_signal_strength, ptr @drxd_read_snr, ptr @drxd_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drxd_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@drxd_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&state->mutex\00", [18 x i8] zeroinitializer }, align 32
@drxd_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013drxd: not found\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"drxd_attach\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/dvb-frontends/drxd_hard.c\00", [56 x i8] zeroinitializer }, align 32
@drxd_attach._entry_ptr = internal global ptr @drxd_attach._entry, section ".printk_index", align 4
@__kstrtab_drxd_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_drxd_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_drxd_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drxd_attach to i32), ptr @__kstrtab_drxd_attach, ptr @__kstrtabns_drxd_attach }, section "___ksymtab+drxd_attach", align 4
@__UNIQUE_ID_description290 = internal constant [29 x i8] c"drxd.description=DRXD driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [21 x i8] c"drxd.author=Micronas\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [43 x i8] c"drxd.file=drivers/media/dvb-frontends/drxd\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [17 x i8] c"drxd.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@SetDeviceTypeId._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 1493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016drxd: deviceId = %04x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SetDeviceTypeId\00", [16 x i8] zeroinitializer }, align 32
@SetDeviceTypeId._entry_ptr = internal global ptr @SetDeviceTypeId._entry, section ".printk_index", align 4
@SetDeviceTypeId._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 1500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016DRX3975D-A2\0A\00", [17 x i8] zeroinitializer }, align 32
@SetDeviceTypeId._entry_ptr.8 = internal global ptr @SetDeviceTypeId._entry.6, section ".printk_index", align 4
@SetDeviceTypeId._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.3, i32 1503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016DRX397%dD-B1\0A\00", [16 x i8] zeroinitializer }, align 32
@SetDeviceTypeId._entry_ptr.11 = internal global ptr @SetDeviceTypeId._entry.9, section ".printk_index", align 4
@DRXD_InitAtomicRead = external dso_local global [0 x i8], align 1
@DRXD_InitSC = external dso_local global [0 x i8], align 1
@DRXD_ResetECRAM = external dso_local global [0 x i8], align 1
@DRXD_ResetCEFR = external dso_local global [0 x i8], align 1
@DRXD_InitFEA2_1 = external dso_local global [0 x i8], align 1
@DRXD_InitFEA2_2 = external dso_local global [0 x i8], align 1
@DRXD_InitCPA2 = external dso_local global [0 x i8], align 1
@DRXD_InitCEA2 = external dso_local global [0 x i8], align 1
@DRXD_InitEQA2 = external dso_local global [0 x i8], align 1
@DRXD_InitECA2 = external dso_local global [0 x i8], align 1
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drxd-a2-1.1.fw\00", [17 x i8] zeroinitializer }, align 32
@DRXD_InitFEB1_1 = external dso_local global [0 x i8], align 1
@DRXD_InitFEB1_2 = external dso_local global [0 x i8], align 1
@DRXD_InitCPB1 = external dso_local global [0 x i8], align 1
@DRXD_InitCEB1 = external dso_local global [0 x i8], align 1
@DRXD_InitEQB1 = external dso_local global [0 x i8], align 1
@DRXD_InitECB1 = external dso_local global [0 x i8], align 1
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"drxd-b1-1.1.fw\00", [17 x i8] zeroinitializer }, align 32
@DRXD_InitDiversityFront = external dso_local global [0 x i8], align 1
@DRXD_InitDiversityEnd = external dso_local global [0 x i8], align 1
@DRXD_DisableDiversity = external dso_local global [0 x i8], align 1
@DRXD_StartDiversityFront = external dso_local global [0 x i8], align 1
@DRXD_StartDiversityEnd = external dso_local global [0 x i8], align 1
@DRXD_DiversityDelay8MHZ = external dso_local global [0 x i8], align 1
@DRXD_DiversityDelay6MHZ = external dso_local global [0 x i8], align 1
@load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013drxd: firmware load failure [%s]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"load_firmware\00", [18 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr = internal global ptr @load_firmware._entry, section ".printk_index", align 4
@write_chunk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013error in write_chunk\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"write_chunk\00", [20 x i8] zeroinitializer }, align 32
@write_chunk._entry_ptr = internal global ptr @write_chunk._entry, section ".printk_index", align 4
@InitCC._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013invalid osc frequency %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"InitCC\00", [25 x i8] zeroinitializer }, align 32
@InitCC._entry_ptr = internal global ptr @InitCC._entry, section ".printk_index", align 4
@SetCfgIfAgc.slowIncrDecLUT = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 3, i16 4, i16 4, i16 5, i16 6], [22 x i8] zeroinitializer }, align 32
@SetCfgIfAgc.fastIncrDecLUT = internal constant { [18 x i16], [60 x i8] } { [18 x i16] [i16 14, i16 15, i16 15, i16 16, i16 17, i16 18, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 26, i16 27, i16 28, i16 29, i16 31], [60 x i8] zeroinitializer }, align 32
@DRX_GetLockStatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Can't read SC_RA_RAM_LOCK__A status = %08x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DRX_GetLockStatus\00", [46 x i8] zeroinitializer }, align 32
@DRX_GetLockStatus._entry_ptr = internal global ptr @DRX_GetLockStatus._entry, section ".printk_index", align 4
@SC_SendCommand._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013Command Error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SC_SendCommand\00", [17 x i8] zeroinitializer }, align 32
@SC_SendCommand._entry_ptr = internal global ptr @SC_SendCommand._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 4, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@___asan_gen_.34 = private unnamed_addr constant [9 x i8] c"drxd_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 2876, i32 38 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 2923, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 2938, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1493, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1500, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1503, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1540, i32 28 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1550, i32 28 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 895, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 294, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1132, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"slowIncrDecLUT\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 629, i32 22 }
@___asan_gen_.112 = private unnamed_addr constant [15 x i8] c"fastIncrDecLUT\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 631, i32 22 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 531, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [43 x i8] c"../drivers/media/dvb-frontends/drxd_hard.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 1309, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @DRX_GetLockStatus._entry, ptr @DRX_GetLockStatus._entry_ptr, ptr @InitCC._entry, ptr @InitCC._entry_ptr, ptr @SC_SendCommand._entry, ptr @SC_SendCommand._entry_ptr, ptr @SetDeviceTypeId._entry, ptr @SetDeviceTypeId._entry.6, ptr @SetDeviceTypeId._entry.9, ptr @SetDeviceTypeId._entry_ptr, ptr @SetDeviceTypeId._entry_ptr.11, ptr @SetDeviceTypeId._entry_ptr.8, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_drxd_attach, ptr @drxd_attach._entry, ptr @drxd_attach._entry_ptr, ptr @load_firmware._entry, ptr @load_firmware._entry_ptr, ptr @write_chunk._entry, ptr @write_chunk._entry_ptr, ptr @drxd_ops, ptr @drxd_attach.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @SetCfgIfAgc.slowIncrDecLUT, ptr @SetCfgIfAgc.fastIncrDecLUT, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drxd_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drxd_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drxd_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetDeviceTypeId._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetDeviceTypeId._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetDeviceTypeId._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_chunk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @InitCC._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetCfgIfAgc.slowIncrDecLUT to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SetCfgIfAgc.fastIncrDecLUT to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DRX_GetLockStatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @SC_SendCommand._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @drxd_attach(ptr nocapture noundef readonly %config, ptr noundef %priv, ptr noundef %i2c, ptr noundef %dev) #0 align 64 {
entry:
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i = alloca [4 x i8], align 4
  %mm2.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2396) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 1
  %1 = call ptr @memcpy(ptr %ops, ptr @drxd_ops, i32 544)
  %dev1 = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev1, align 4
  %config2 = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 7
  %3 = call ptr @memcpy(ptr %config2, ptr %config, i32 24)
  %i2c3 = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %i2c3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %i2c, ptr %i2c3, align 8
  %priv4 = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %priv4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %priv, ptr %priv4, align 4
  %mutex = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @drxd_attach.__key) #7
  %demod_address.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i) #7
  %8 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %mm1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i) #7
  %9 = ptrtoint ptr %mm2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %mm2.i, align 1, !annotation !75
  %10 = getelementptr inbounds [2 x i8], ptr %mm2.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1, !annotation !75
  %12 = ptrtoint ptr %i2c3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c3, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %14 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 255, i32 16)
  %conv.i.i = zext i8 %7 to i16
  %16 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i.i, align 2
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 4, ptr %14, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mm1.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %20 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %21 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %22 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 2, ptr %len6.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %23 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mm2.i, ptr %buf8.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  br i1 %cmp.not.i.not.i, label %Read16.exit, label %Read16.exit.thread

Read16.exit.thread:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

Read16.exit:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ops8 = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 1
  %24 = call ptr @memcpy(ptr %ops8, ptr @drxd_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %call10 = call fastcc i32 @ConfigureMPEGOutput(ptr noundef nonnull %call7.i.i, i32 noundef 0)
  %IF = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 7, i32 9
  %26 = ptrtoint ptr %IF to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %IF, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.not = icmp eq i32 %27, 0
  %clock.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 7, i32 3
  %28 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clock.i, align 4
  %if_agc_cfg.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 26
  %30 = ptrtoint ptr %if_agc_cfg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %if_agc_cfg.i, align 4
  %outputLevel.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 26, i32 1
  %31 = ptrtoint ptr %outputLevel.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %outputLevel.i, align 8
  %settleLevel.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 26, i32 2
  %32 = ptrtoint ptr %settleLevel.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 140, ptr %settleLevel.i, align 2
  %minOutputLevel.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 26, i32 3
  %33 = ptrtoint ptr %minOutputLevel.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %minOutputLevel.i, align 4
  %maxOutputLevel.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 26, i32 4
  %34 = ptrtoint ptr %maxOutputLevel.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1023, ptr %maxOutputLevel.i, align 2
  %speed.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 26, i32 5
  %35 = ptrtoint ptr %speed.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 904, ptr %speed.i, align 8
  %R1.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 26, i32 6
  %36 = ptrtoint ptr %R1.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 820, ptr %R1.i, align 2
  %R2.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 26, i32 7
  %37 = ptrtoint ptr %R2.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2200, ptr %R2.i, align 4
  %R3.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 26, i32 8
  %38 = ptrtoint ptr %R3.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 150, ptr %R3.i, align 2
  %rf_agc_cfg.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 27
  %R148.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 27, i32 6
  %39 = ptrtoint ptr %R148.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 820, ptr %R148.i, align 2
  %R251.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 27, i32 7
  %40 = ptrtoint ptr %R251.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 2200, ptr %R251.i, align 8
  %R354.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 27, i32 8
  %41 = ptrtoint ptr %R354.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 150, ptr %R354.i, align 2
  %42 = ptrtoint ptr %rf_agc_cfg.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %rf_agc_cfg.i, align 8
  %settleLevel88.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 27, i32 2
  %43 = ptrtoint ptr %settleLevel88.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 528, ptr %settleLevel88.i, align 2
  %minOutputLevel91.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 27, i32 3
  %44 = ptrtoint ptr %minOutputLevel91.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %minOutputLevel91.i, align 8
  %maxOutputLevel94.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 27, i32 4
  %45 = ptrtoint ptr %maxOutputLevel94.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1023, ptr %maxOutputLevel94.i, align 2
  %speed97.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 27, i32 5
  %46 = ptrtoint ptr %speed97.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %speed97.i, align 4
  %app_env_default.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 60
  %47 = ptrtoint ptr %app_env_default.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %app_env_default.i, align 4
  %app_env_diversity.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 61
  %48 = ptrtoint ptr %app_env_diversity.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %app_env_diversity.i, align 8
  %noise_cal119.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 28
  %49 = ptrtoint ptr %noise_cal119.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %noise_cal119.i, align 4
  %cpNexpOfs122.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 28, i32 1
  %50 = ptrtoint ptr %cpNexpOfs122.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %cpNexpOfs122.i, align 8
  %tdCal2k124.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 28, i32 2
  %51 = ptrtoint ptr %tdCal2k124.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -21, ptr %tdCal2k124.i, align 2
  %tdCal8k126.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 28, i32 3
  %52 = ptrtoint ptr %tdCal8k126.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -24, ptr %tdCal8k126.i, align 4
  %m_EcOcRegOcModeLop.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 34
  %53 = ptrtoint ptr %m_EcOcRegOcModeLop.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 4, ptr %m_EcOcRegOcModeLop.i, align 2
  %54 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %demod_address.i, align 1
  %shl.i = shl i8 %55, 1
  %or.i = or i8 %shl.i, 1
  %chip_adr.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 11
  %56 = ptrtoint ptr %chip_adr.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %or.i, ptr %chip_adr.i, align 4
  %m_HiI2cPatch134.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 37
  %57 = ptrtoint ptr %m_HiI2cPatch134.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %m_HiI2cPatch134.i, align 8
  %.op = udiv i32 %27, 1000
  %58 = trunc i32 %.op to i16
  %conv135.i = select i1 %tobool12.not, i16 -29536, i16 %58
  %intermediate_freq.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 16
  %59 = ptrtoint ptr %intermediate_freq.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv135.i, ptr %intermediate_freq.i, align 2
  %expected_sys_clock_freq.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 22
  %60 = ptrtoint ptr %expected_sys_clock_freq.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 -17536, ptr %expected_sys_clock_freq.i, align 8
  %sys_clock_freq.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 20
  %61 = ptrtoint ptr %sys_clock_freq.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -17536, ptr %sys_clock_freq.i, align 4
  %conv136.i = trunc i32 %29 to i16
  %osc_clock_freq.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 17
  %62 = ptrtoint ptr %osc_clock_freq.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv136.i, ptr %osc_clock_freq.i, align 8
  %osc_clock_deviation.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 21
  %63 = ptrtoint ptr %osc_clock_deviation.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %osc_clock_deviation.i, align 2
  %cscd_state.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 18
  %64 = ptrtoint ptr %cscd_state.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %cscd_state.i, align 4
  %drxd_state.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 19
  %65 = ptrtoint ptr %drxd_state.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %drxd_state.i, align 8
  %PGA.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 57
  %66 = ptrtoint ptr %PGA.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %PGA.i, align 8
  %type_A.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 56
  %67 = ptrtoint ptr %type_A.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %type_A.i, align 4
  %tuner_mirrors.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 59
  %68 = ptrtoint ptr %tuner_mirrors.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %tuner_mirrors.i, align 8
  %insert_rs_byte.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 7, i32 4
  %69 = ptrtoint ptr %insert_rs_byte.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %insert_rs_byte.i, align 8
  %conv138.i = zext i8 %70 to i16
  %insert_rs_byte139.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 23
  %71 = ptrtoint ptr %insert_rs_byte139.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv138.i, ptr %insert_rs_byte139.i, align 2
  %enable_parallel.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 24
  %72 = ptrtoint ptr %enable_parallel.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 1, ptr %enable_parallel.i, align 4
  %hi_cfg_timing_div.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 12
  %73 = ptrtoint ptr %hi_cfg_timing_div.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 4, ptr %hi_cfg_timing_div.i, align 2
  %74 = udiv i16 %conv136.i, 1000
  %mul153.i = mul nuw i16 %74, 750
  %75 = udiv i16 %mul153.i, 1000
  %hi_cfg_bridge_delay.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 13
  %76 = ptrtoint ptr %hi_cfg_bridge_delay.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %hi_cfg_bridge_delay.i, align 8
  %m_FeAgRegAgPwd.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 32
  %77 = ptrtoint ptr %m_FeAgRegAgPwd.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 14, ptr %m_FeAgRegAgPwd.i, align 2
  %m_FeAgRegAgAgcSio.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 33
  %78 = ptrtoint ptr %m_FeAgRegAgAgcSio.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %m_FeAgRegAgAgcSio.i, align 4
  %conv.i = zext i8 %or.i to i16
  %hi_cfg_wakeup_key.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 14
  %79 = ptrtoint ptr %hi_cfg_wakeup_key.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i, ptr %hi_cfg_wakeup_key.i, align 2
  %hi_cfg_ctrl.i = getelementptr inbounds %struct.drxd_state, ptr %call7.i.i, i32 0, i32 15
  %80 = ptrtoint ptr %hi_cfg_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 1, ptr %hi_cfg_ctrl.i, align 4
  %call.i = call fastcc i32 @HI_CfgCommand(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %Read16.exit, %Read16.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %Read16.exit.thread ], [ %call7.i.i, %Read16.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ConfigureMPEGOutput(ptr nocapture noundef readonly %state, i32 noundef %bEnableOutput) unnamed_addr #0 align 64 {
entry:
  %msg.i.i145 = alloca %struct.i2c_msg, align 4
  %mm.i146 = alloca [6 x i8], align 1
  %msg.i.i133 = alloca %struct.i2c_msg, align 4
  %mm.i134 = alloca [6 x i8], align 1
  %msg.i.i123 = alloca %struct.i2c_msg, align 4
  %mm.i124 = alloca [6 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %mm.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %operation_mode = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 25
  %0 = ptrtoint ptr %operation_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %operation_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bEnableOutput)
  %tobool.not = icmp eq i32 %bEnableOutput, 0
  %.120 = select i1 %tobool.not, i16 4095, i16 0
  %extract.t161 = select i1 %tobool.not, i8 0, i8 16
  %extract.t192 = trunc i16 %.120 to i8
  %extract197 = lshr i16 %.120, 8
  %extract.t198 = trunc i16 %extract197 to i8
  br label %if.end51

if.else9:                                         ; preds = %entry
  %m_EcOcRegOcModeLop = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 34
  %2 = ptrtoint ptr %m_EcOcRegOcModeLop to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %m_EcOcRegOcModeLop, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bEnableOutput)
  %tobool10.not = icmp eq i32 %bEnableOutput, 0
  %.121 = select i1 %tobool10.not, i16 4095, i16 0
  %insert_rs_byte = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 23
  %4 = ptrtoint ptr %insert_rs_byte to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %insert_rs_byte, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool19.not = icmp eq i16 %5, 0
  %6 = and i16 %3, 254
  %masksel = zext i1 %tobool19.not to i16
  %EcOcRegOcModeLop.0 = or i16 %6, %masksel
  %EcOcRegOcModeHip.1 = select i1 %tobool19.not, i16 0, i16 512
  %enable_parallel = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 24
  %7 = ptrtoint ptr %enable_parallel to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %enable_parallel, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool41.not = icmp eq i16 %8, 0
  %9 = trunc i16 %EcOcRegOcModeLop.0 to i8
  br i1 %tobool41.not, label %if.else46, label %if.then42

if.then42:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t = and i8 %9, 127
  %extract = lshr i16 %3, 8
  %extract.t158 = trunc i16 %extract to i8
  %extract166 = lshr exact i16 %EcOcRegOcModeHip.1, 8
  %extract.t167 = trunc i16 %extract166 to i8
  %extract.t190 = trunc i16 %.121 to i8
  %extract193 = lshr i16 %.121, 8
  %extract.t194 = trunc i16 %extract193 to i8
  br label %if.end51

if.else46:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t157 = or i8 %9, -128
  %extract159 = lshr i16 %3, 8
  %extract.t160 = trunc i16 %extract159 to i8
  %extract168 = lshr exact i16 %EcOcRegOcModeHip.1, 8
  %extract.t169 = trunc i16 %extract168 to i8
  %extract.t191 = trunc i16 %.121 to i8
  %extract195 = lshr i16 %.121, 8
  %extract.t196 = trunc i16 %extract195 to i8
  br label %if.end51

if.end51:                                         ; preds = %if.else46, %if.then42, %if.then
  %.121.sink189.off0 = phi i8 [ %extract.t190, %if.then42 ], [ %extract.t191, %if.else46 ], [ %extract.t192, %if.then ]
  %.121.sink189.off8 = phi i8 [ %extract.t194, %if.then42 ], [ %extract.t196, %if.else46 ], [ %extract.t198, %if.then ]
  %EcOcRegOcModeLop.1.off0 = phi i8 [ %extract.t, %if.then42 ], [ %extract.t157, %if.else46 ], [ 1, %if.then ]
  %EcOcRegOcModeLop.1.off8 = phi i8 [ %extract.t158, %if.then42 ], [ %extract.t160, %if.else46 ], [ 0, %if.then ]
  %EcOcRegOcModeHip.2.off0 = phi i8 [ 0, %if.then42 ], [ 0, %if.else46 ], [ %extract.t161, %if.then ]
  %EcOcRegOcModeHip.2.off8 = phi i8 [ %extract.t167, %if.then42 ], [ %extract.t169, %if.else46 ], [ 0, %if.then ]
  %demod_address.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %10 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i) #7
  %12 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 1
  %13 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 2
  %14 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 3
  %15 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 4
  %16 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 5
  %17 = ptrtoint ptr %mm.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 69, ptr %mm.i, align 1
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 21, ptr %12, align 1
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %13, align 1
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %14, align 1
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %15, align 1
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %16, align 1
  %i2c.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %23 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %25 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 458751, ptr %25, align 4
  %conv.i.i = zext i8 %11 to i16
  %27 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %mm.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.not.i.not = icmp eq i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i) #7
  br i1 %cmp.not.i.not.i.not, label %if.end70, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end70:                                         ; preds = %if.end51
  %30 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i124) #7
  %32 = getelementptr inbounds [6 x i8], ptr %mm.i124, i32 0, i32 1
  %33 = getelementptr inbounds [6 x i8], ptr %mm.i124, i32 0, i32 2
  %34 = getelementptr inbounds [6 x i8], ptr %mm.i124, i32 0, i32 3
  %35 = getelementptr inbounds [6 x i8], ptr %mm.i124, i32 0, i32 4
  %36 = getelementptr inbounds [6 x i8], ptr %mm.i124, i32 0, i32 5
  %37 = ptrtoint ptr %mm.i124 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 16, ptr %mm.i124, align 1
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 21, ptr %32, align 1
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %33, align 1
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %34, align 1
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %EcOcRegOcModeLop.1.off0, ptr %35, align 1
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %EcOcRegOcModeLop.1.off8, ptr %36, align 1
  %43 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i123) #7
  %45 = getelementptr inbounds i8, ptr %msg.i.i123, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 458751, ptr %45, align 4
  %conv.i.i127 = zext i8 %31 to i16
  %47 = ptrtoint ptr %msg.i.i123 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i.i127, ptr %msg.i.i123, align 4
  %flags.i.i128 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i123, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i.i128 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i.i128, align 2
  %buf.i.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i123, i32 0, i32 3
  %49 = ptrtoint ptr %buf.i.i129 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %mm.i124, ptr %buf.i.i129, align 4
  %call.i.i130 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i.i123, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i130)
  %cmp.not.i.not.i131.not = icmp eq i32 %call.i.i130, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i123) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i124) #7
  br i1 %cmp.not.i.not.i131.not, label %if.end75, label %if.end70.cleanup_crit_edge

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end75:                                         ; preds = %if.end70
  %50 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i134) #7
  %52 = getelementptr inbounds [6 x i8], ptr %mm.i134, i32 0, i32 1
  %53 = getelementptr inbounds [6 x i8], ptr %mm.i134, i32 0, i32 2
  %54 = getelementptr inbounds [6 x i8], ptr %mm.i134, i32 0, i32 3
  %55 = getelementptr inbounds [6 x i8], ptr %mm.i134, i32 0, i32 4
  %56 = getelementptr inbounds [6 x i8], ptr %mm.i134, i32 0, i32 5
  %57 = ptrtoint ptr %mm.i134 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 17, ptr %mm.i134, align 1
  %58 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 21, ptr %52, align 1
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %53, align 1
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %54, align 1
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %EcOcRegOcModeHip.2.off0, ptr %55, align 1
  %62 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %EcOcRegOcModeHip.2.off8, ptr %56, align 1
  %63 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i133) #7
  %65 = getelementptr inbounds i8, ptr %msg.i.i133, i32 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 458751, ptr %65, align 4
  %conv.i.i139 = zext i8 %51 to i16
  %67 = ptrtoint ptr %msg.i.i133 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i.i139, ptr %msg.i.i133, align 4
  %flags.i.i140 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i133, i32 0, i32 1
  %68 = ptrtoint ptr %flags.i.i140 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %flags.i.i140, align 2
  %buf.i.i141 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i133, i32 0, i32 3
  %69 = ptrtoint ptr %buf.i.i141 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %mm.i134, ptr %buf.i.i141, align 4
  %call.i.i142 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %msg.i.i133, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i142)
  %cmp.not.i.not.i143.not = icmp eq i32 %call.i.i142, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i133) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i134) #7
  br i1 %cmp.not.i.not.i143.not, label %if.end80, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end80:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i146) #7
  %72 = getelementptr inbounds [6 x i8], ptr %mm.i146, i32 0, i32 1
  %73 = getelementptr inbounds [6 x i8], ptr %mm.i146, i32 0, i32 2
  %74 = getelementptr inbounds [6 x i8], ptr %mm.i146, i32 0, i32 3
  %75 = getelementptr inbounds [6 x i8], ptr %mm.i146, i32 0, i32 4
  %76 = getelementptr inbounds [6 x i8], ptr %mm.i146, i32 0, i32 5
  %77 = ptrtoint ptr %mm.i146 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 18, ptr %mm.i146, align 1
  %78 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 21, ptr %72, align 1
  %79 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 2, ptr %73, align 1
  %80 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %74, align 1
  %81 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %.121.sink189.off0, ptr %75, align 1
  %82 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %.121.sink189.off8, ptr %76, align 1
  %83 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i145) #7
  %85 = getelementptr inbounds i8, ptr %msg.i.i145, i32 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 458751, ptr %85, align 4
  %conv.i.i151 = zext i8 %71 to i16
  %87 = ptrtoint ptr %msg.i.i145 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv.i.i151, ptr %msg.i.i145, align 4
  %flags.i.i152 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i145, i32 0, i32 1
  %88 = ptrtoint ptr %flags.i.i152 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %flags.i.i152, align 2
  %buf.i.i153 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i145, i32 0, i32 3
  %89 = ptrtoint ptr %buf.i.i153 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %mm.i146, ptr %buf.i.i153, align 4
  %call.i.i154 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %msg.i.i145, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i154)
  %cmp.not.i.not.i155.not = icmp ne i32 %call.i.i154, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i145) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i146) #7
  %.122 = sext i1 %cmp.not.i.not.i155.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end75.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.end51.cleanup_crit_edge
  %status.0 = phi i32 [ -1, %if.end51.cleanup_crit_edge ], [ -1, %if.end70.cleanup_crit_edge ], [ -1, %if.end75.cleanup_crit_edge ], [ %.122, %if.end80 ]
  ret i32 %status.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drxd_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drxd_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %msg.i.i11.i = alloca %struct.i2c_msg, align 4
  %mm.i12.i = alloca [6 x i8], align 1
  %msg.i.i1.i = alloca %struct.i2c_msg, align 4
  %mm.i2.i = alloca [6 x i8], align 1
  %msg.i.i.i56 = alloca %struct.i2c_msg, align 4
  %mm.i.i57 = alloca [6 x i8], align 1
  %msg.i.i.i.i43 = alloca %struct.i2c_msg, align 4
  %mm.i.i.i44 = alloca [52 x i8], align 1
  %msg.i.i61.i = alloca %struct.i2c_msg, align 4
  %mm.i62.i = alloca [6 x i8], align 1
  %msg.i.i51.i = alloca %struct.i2c_msg, align 4
  %mm.i52.i = alloca [6 x i8], align 1
  %msg.i.i41.i = alloca %struct.i2c_msg, align 4
  %mm.i42.i = alloca [6 x i8], align 1
  %msg.i.i.i31 = alloca %struct.i2c_msg, align 4
  %mm.i.i32 = alloca [6 x i8], align 1
  %msg.i.i.i24 = alloca %struct.i2c_msg, align 4
  %mm.i.i25 = alloca [6 x i8], align 1
  %msg.i.i14 = alloca %struct.i2c_msg, align 4
  %mm.i15 = alloca [6 x i8], align 1
  %msg.i.i4 = alloca %struct.i2c_msg, align 4
  %mm.i5 = alloca [6 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %mm.i = alloca [8 x i8], align 1
  %msg.i.i70.i.i = alloca %struct.i2c_msg, align 4
  %mm.i71.i.i = alloca [6 x i8], align 1
  %msg.i.i60.i.i = alloca %struct.i2c_msg, align 4
  %mm.i61.i.i = alloca [6 x i8], align 1
  %msg.i.i50.i.i = alloca %struct.i2c_msg, align 4
  %mm.i51.i.i = alloca [6 x i8], align 1
  %msg.i.i40.i.i = alloca %struct.i2c_msg, align 4
  %mm.i41.i.i = alloca [6 x i8], align 1
  %msg.i.i.i19.i = alloca %struct.i2c_msg, align 4
  %mm.i.i20.i = alloca [6 x i8], align 1
  %msg.i.i.i10.i = alloca %struct.i2c_msg, align 4
  %mm.i.i11.i = alloca [6 x i8], align 1
  %msg.i.i.i.i = alloca %struct.i2c_msg, align 4
  %mm.i.i.i = alloca [6 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %mm.i.i = alloca [6 x i8], align 1
  %msgs.i.i118.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i119.i.i = alloca [4 x i8], align 1
  %mm2.i120.i.i = alloca [2 x i8], align 1
  %msgs.i.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i.i.i = alloca [4 x i8], align 1
  %mm2.i.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %init_done.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %init_done.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.DRXD_init.exit_crit_edge

entry.DRXD_init.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end.i:                                         ; preds = %entry
  %IF.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 7, i32 9
  %4 = ptrtoint ptr %IF.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %IF.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  %clock.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 7, i32 3
  %6 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clock.i.i, align 4
  %if_agc_cfg.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 26
  %8 = ptrtoint ptr %if_agc_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %if_agc_cfg.i.i, align 4
  %outputLevel.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 26, i32 1
  %9 = ptrtoint ptr %outputLevel.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %outputLevel.i.i, align 4
  %settleLevel.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 26, i32 2
  %10 = ptrtoint ptr %settleLevel.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 140, ptr %settleLevel.i.i, align 2
  %minOutputLevel.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 26, i32 3
  %11 = ptrtoint ptr %minOutputLevel.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %minOutputLevel.i.i, align 4
  %maxOutputLevel.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 26, i32 4
  %12 = ptrtoint ptr %maxOutputLevel.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1023, ptr %maxOutputLevel.i.i, align 2
  %speed.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 26, i32 5
  %13 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 904, ptr %speed.i.i, align 4
  %R1.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 26, i32 6
  %14 = ptrtoint ptr %R1.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 820, ptr %R1.i.i, align 2
  %R2.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 26, i32 7
  %15 = ptrtoint ptr %R2.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2200, ptr %R2.i.i, align 4
  %R3.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 26, i32 8
  %16 = ptrtoint ptr %R3.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 150, ptr %R3.i.i, align 2
  %rf_agc_cfg.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 27
  %R148.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 27, i32 6
  %17 = ptrtoint ptr %R148.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 820, ptr %R148.i.i, align 2
  %R251.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 27, i32 7
  %18 = ptrtoint ptr %R251.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2200, ptr %R251.i.i, align 4
  %R354.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 27, i32 8
  %19 = ptrtoint ptr %R354.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 150, ptr %R354.i.i, align 2
  %20 = ptrtoint ptr %rf_agc_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rf_agc_cfg.i.i, align 4
  %settleLevel88.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 27, i32 2
  %21 = ptrtoint ptr %settleLevel88.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 528, ptr %settleLevel88.i.i, align 2
  %minOutputLevel91.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 27, i32 3
  %22 = ptrtoint ptr %minOutputLevel91.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %minOutputLevel91.i.i, align 4
  %maxOutputLevel94.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 27, i32 4
  %23 = ptrtoint ptr %maxOutputLevel94.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1023, ptr %maxOutputLevel94.i.i, align 2
  %speed97.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 27, i32 5
  %24 = ptrtoint ptr %speed97.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %speed97.i.i, align 4
  %app_env_default.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 60
  %25 = ptrtoint ptr %app_env_default.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %app_env_default.i.i, align 4
  %app_env_diversity.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 61
  %26 = ptrtoint ptr %app_env_diversity.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %app_env_diversity.i.i, align 4
  %noise_cal119.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 28
  %27 = ptrtoint ptr %noise_cal119.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %noise_cal119.i.i, align 4
  %cpNexpOfs122.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 28, i32 1
  %28 = ptrtoint ptr %cpNexpOfs122.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %cpNexpOfs122.i.i, align 4
  %tdCal2k124.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 28, i32 2
  %29 = ptrtoint ptr %tdCal2k124.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -21, ptr %tdCal2k124.i.i, align 2
  %tdCal8k126.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 28, i32 3
  %30 = ptrtoint ptr %tdCal8k126.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -24, ptr %tdCal8k126.i.i, align 4
  %m_EcOcRegOcModeLop.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 34
  %31 = ptrtoint ptr %m_EcOcRegOcModeLop.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 4, ptr %m_EcOcRegOcModeLop.i.i, align 2
  %demod_address.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 7, i32 5
  %32 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %demod_address.i.i, align 1
  %shl.i.i = shl i8 %33, 1
  %or.i.i = or i8 %shl.i.i, 1
  %chip_adr.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 11
  %34 = ptrtoint ptr %chip_adr.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %or.i.i, ptr %chip_adr.i.i, align 4
  %m_HiI2cPatch134.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 37
  %35 = ptrtoint ptr %m_HiI2cPatch134.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %m_HiI2cPatch134.i.i, align 4
  %.op.i = udiv i32 %5, 1000
  %36 = trunc i32 %.op.i to i16
  %conv135.i.i = select i1 %tobool1.not.i, i16 -29536, i16 %36
  %intermediate_freq.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %intermediate_freq.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv135.i.i, ptr %intermediate_freq.i.i, align 2
  %expected_sys_clock_freq.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 22
  %38 = ptrtoint ptr %expected_sys_clock_freq.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -17536, ptr %expected_sys_clock_freq.i.i, align 4
  %sys_clock_freq.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 20
  %39 = ptrtoint ptr %sys_clock_freq.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -17536, ptr %sys_clock_freq.i.i, align 4
  %conv136.i.i = trunc i32 %7 to i16
  %osc_clock_freq.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 17
  %40 = ptrtoint ptr %osc_clock_freq.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv136.i.i, ptr %osc_clock_freq.i.i, align 4
  %osc_clock_deviation.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 21
  %41 = ptrtoint ptr %osc_clock_deviation.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %osc_clock_deviation.i.i, align 2
  %cscd_state.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 18
  %42 = ptrtoint ptr %cscd_state.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %cscd_state.i.i, align 4
  %drxd_state.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 19
  %43 = ptrtoint ptr %drxd_state.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %drxd_state.i.i, align 4
  %PGA.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 57
  %44 = ptrtoint ptr %PGA.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %PGA.i.i, align 4
  %type_A.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 56
  %45 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %type_A.i.i, align 4
  %tuner_mirrors.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 59
  %46 = ptrtoint ptr %tuner_mirrors.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %tuner_mirrors.i.i, align 4
  %insert_rs_byte.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 7, i32 4
  %47 = ptrtoint ptr %insert_rs_byte.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %insert_rs_byte.i.i, align 4
  %conv138.i.i = zext i8 %48 to i16
  %insert_rs_byte139.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 23
  %49 = ptrtoint ptr %insert_rs_byte139.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv138.i.i, ptr %insert_rs_byte139.i.i, align 2
  %enable_parallel.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 24
  %50 = ptrtoint ptr %enable_parallel.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %enable_parallel.i.i, align 4
  %hi_cfg_timing_div.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 12
  %51 = ptrtoint ptr %hi_cfg_timing_div.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 4, ptr %hi_cfg_timing_div.i.i, align 2
  %52 = udiv i16 %conv136.i.i, 1000
  %mul153.i.i = mul nuw i16 %52, 750
  %53 = udiv i16 %mul153.i.i, 1000
  %hi_cfg_bridge_delay.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 13
  %54 = ptrtoint ptr %hi_cfg_bridge_delay.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %hi_cfg_bridge_delay.i.i, align 4
  %m_FeAgRegAgPwd.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 32
  %55 = ptrtoint ptr %m_FeAgRegAgPwd.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 14, ptr %m_FeAgRegAgPwd.i.i, align 2
  %m_FeAgRegAgAgcSio.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 33
  %56 = ptrtoint ptr %m_FeAgRegAgAgcSio.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %m_FeAgRegAgAgcSio.i.i, align 4
  %operation_mode.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 25
  %57 = ptrtoint ptr %operation_mode.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %operation_mode.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i.i.i) #7
  %58 = getelementptr inbounds [4 x i8], ptr %mm1.i.i.i, i32 0, i32 1
  %59 = getelementptr inbounds [4 x i8], ptr %mm1.i.i.i, i32 0, i32 2
  %60 = getelementptr inbounds [4 x i8], ptr %mm1.i.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %mm1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 25, ptr %mm1.i.i.i, align 1
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 65, ptr %58, align 1
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 2, ptr %59, align 1
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i.i.i) #7
  %65 = ptrtoint ptr %mm2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -1, ptr %mm2.i.i.i, align 1, !annotation !75
  %66 = getelementptr inbounds [2 x i8], ptr %mm2.i.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -1, ptr %66, align 1, !annotation !75
  %i2c.i.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 5
  %68 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i.i) #7
  %70 = getelementptr inbounds i8, ptr %msgs.i.i.i.i, i32 4
  %71 = call ptr @memset(ptr %70, i32 255, i32 16)
  %conv.i.i.i.i = zext i8 %33 to i16
  %72 = ptrtoint ptr %msgs.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i.i.i.i, ptr %msgs.i.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %flags.i.i.i.i, align 2
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 4, ptr %70, align 4
  %buf.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %mm1.i.i.i, ptr %buf.i.i.i.i, align 4
  %arrayinit.element.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1
  %76 = ptrtoint ptr %arrayinit.element.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i.i.i.i, ptr %arrayinit.element.i.i.i.i, align 4
  %flags5.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1, i32 1
  %77 = ptrtoint ptr %flags5.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %flags5.i.i.i.i, align 2
  %len6.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1, i32 2
  %78 = ptrtoint ptr %len6.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 2, ptr %len6.i.i.i.i, align 4
  %buf8.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1, i32 3
  %79 = ptrtoint ptr %buf8.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %mm2.i.i.i, ptr %buf8.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %msgs.i.i.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i)
  %cmp.not.i.not.i.i.i = icmp eq i32 %call.i.i.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i.i) #7
  br i1 %cmp.not.i.not.i.i.i, label %Read16.exit.i.i, label %if.end.i.DRXD_init.exit_crit_edge

if.end.i.DRXD_init.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

Read16.exit.i.i:                                  ; preds = %if.end.i
  %80 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i119.i.i) #7
  %82 = getelementptr inbounds [4 x i8], ptr %mm1.i119.i.i, i32 0, i32 1
  %83 = getelementptr inbounds [4 x i8], ptr %mm1.i119.i.i, i32 0, i32 2
  %84 = getelementptr inbounds [4 x i8], ptr %mm1.i119.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %mm1.i119.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 25, ptr %mm1.i119.i.i, align 1
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 65, ptr %82, align 1
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 2, ptr %83, align 1
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %84, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i120.i.i) #7
  %89 = ptrtoint ptr %mm2.i120.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 -1, ptr %mm2.i120.i.i, align 1, !annotation !75
  %90 = getelementptr inbounds [2 x i8], ptr %mm2.i120.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -1, ptr %90, align 1, !annotation !75
  %92 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i118.i.i) #7
  %94 = getelementptr inbounds i8, ptr %msgs.i.i118.i.i, i32 4
  %95 = call ptr @memset(ptr %94, i32 255, i32 16)
  %conv.i.i123.i.i = zext i8 %81 to i16
  %96 = ptrtoint ptr %msgs.i.i118.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i.i123.i.i, ptr %msgs.i.i118.i.i, align 4
  %flags.i.i124.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i118.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %flags.i.i124.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %flags.i.i124.i.i, align 2
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 4, ptr %94, align 4
  %buf.i.i125.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i118.i.i, i32 0, i32 3
  %99 = ptrtoint ptr %buf.i.i125.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %mm1.i119.i.i, ptr %buf.i.i125.i.i, align 4
  %arrayinit.element.i.i126.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i118.i.i, i32 1
  %100 = ptrtoint ptr %arrayinit.element.i.i126.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv.i.i123.i.i, ptr %arrayinit.element.i.i126.i.i, align 4
  %flags5.i.i127.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i118.i.i, i32 1, i32 1
  %101 = ptrtoint ptr %flags5.i.i127.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 1, ptr %flags5.i.i127.i.i, align 2
  %len6.i.i128.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i118.i.i, i32 1, i32 2
  %102 = ptrtoint ptr %len6.i.i128.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 2, ptr %len6.i.i128.i.i, align 4
  %buf8.i.i129.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i118.i.i, i32 1, i32 3
  %103 = ptrtoint ptr %buf8.i.i129.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %mm2.i120.i.i, ptr %buf8.i.i129.i.i, align 4
  %call.i.i130.i.i = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msgs.i.i118.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i130.i.i)
  %cmp.not.i.not.i131.i.i = icmp eq i32 %call.i.i130.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i118.i.i) #7
  br i1 %cmp.not.i.not.i131.i.i, label %Read16.exit142.i.i, label %Read16.exit142.thread.i.i

Read16.exit142.thread.i.i:                        ; preds = %Read16.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i120.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i119.i.i) #7
  br label %DRXD_init.exit

Read16.exit142.i.i:                               ; preds = %Read16.exit.i.i
  %104 = ptrtoint ptr %mm2.i120.i.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %mm2.i120.i.i, align 1
  %106 = ptrtoint ptr %90 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %90, align 1
  %conv17.i134.i.i = zext i8 %107 to i16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i120.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i119.i.i) #7
  %shl.i135.i.i = shl nuw i16 %conv17.i134.i.i, 8
  %conv15.i133.i.i = zext i8 %105 to i16
  %or18.i136.i.i = or i16 %shl.i135.i.i, %conv15.i133.i.i
  %conv.i.i = zext i16 %or18.i136.i.i to i32
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv.i.i) #11
  %108 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %type_A.i.i, align 4
  %109 = ptrtoint ptr %PGA.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %PGA.i.i, align 4
  %diversity.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 58
  %110 = ptrtoint ptr %diversity.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %diversity.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or18.i136.i.i)
  %cmp8.i.i = icmp eq i16 %or18.i136.i.i, 0
  br i1 %cmp8.i.i, label %if.then10.i.i, label %if.else.i.i

if.then10.i.i:                                    ; preds = %Read16.exit142.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %type_A.i.i, align 4
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %if.end38.i.i

if.else.i.i:                                      ; preds = %Read16.exit142.i.i
  %112 = lshr i16 %conv17.i134.i.i, 4
  %conv23.i.i = zext i16 %112 to i32
  %call24.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv23.i.i) #11
  %trunc.i.i = trunc i16 %112 to i4
  %113 = zext i4 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc.i.i, label %if.else.i.i.DRXD_init.exit_crit_edge [
    i4 4, label %sw.bb.i.i
    i4 3, label %if.else.i.i.sw.bb27.i.i_crit_edge
    i4 7, label %if.else.i.i.sw.bb27.i.i_crit_edge71
    i4 6, label %sw.bb29.i.i
    i4 5, label %if.else.i.i.if.end38.i.i_crit_edge
    i4 -8, label %if.else.i.i.if.end38.i.i_crit_edge72
  ]

if.else.i.i.if.end38.i.i_crit_edge72:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i.i

if.else.i.i.if.end38.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i.i

if.else.i.i.sw.bb27.i.i_crit_edge71:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27.i.i

if.else.i.i.sw.bb27.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27.i.i

if.else.i.i.DRXD_init.exit_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

sw.bb.i.i:                                        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %diversity.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %diversity.i.i, align 4
  br label %sw.bb27.i.i

sw.bb27.i.i:                                      ; preds = %sw.bb.i.i, %if.else.i.i.sw.bb27.i.i_crit_edge, %if.else.i.i.sw.bb27.i.i_crit_edge71
  %115 = ptrtoint ptr %PGA.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %PGA.i.i, align 4
  br label %if.end38.i.i

sw.bb29.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %diversity.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 1, ptr %diversity.i.i, align 4
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %sw.bb29.i.i, %sw.bb27.i.i, %if.else.i.i.if.end38.i.i_crit_edge, %if.else.i.i.if.end38.i.i_crit_edge72, %if.then10.i.i
  %m_InitAtomicRead.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 36
  %117 = ptrtoint ptr %m_InitAtomicRead.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @DRXD_InitAtomicRead, ptr %m_InitAtomicRead.i.i, align 4
  %m_InitSC.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 44
  %118 = ptrtoint ptr %m_InitSC.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @DRXD_InitSC, ptr %m_InitSC.i.i, align 4
  %m_ResetECRAM.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 46
  %119 = ptrtoint ptr %m_ResetECRAM.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @DRXD_ResetECRAM, ptr %m_ResetECRAM.i.i, align 4
  %120 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i.i = icmp eq i32 %121, 0
  %m_ResetCEFR46.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 38
  br i1 %tobool.not.i.i, label %if.else45.i.i, label %if.then40.i.i

if.then40.i.i:                                    ; preds = %if.end38.i.i
  %122 = ptrtoint ptr %m_ResetCEFR46.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @DRXD_ResetCEFR, ptr %m_ResetCEFR46.i.i, align 4
  %m_InitFE_1.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 39
  %123 = ptrtoint ptr %m_InitFE_1.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @DRXD_InitFEA2_1, ptr %m_InitFE_1.i.i, align 4
  %m_InitFE_2.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 40
  %124 = ptrtoint ptr %m_InitFE_2.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @DRXD_InitFEA2_2, ptr %m_InitFE_2.i.i, align 4
  %m_InitCP.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 41
  %125 = ptrtoint ptr %m_InitCP.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @DRXD_InitCPA2, ptr %m_InitCP.i.i, align 4
  %m_InitCE.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 42
  %126 = ptrtoint ptr %m_InitCE.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @DRXD_InitCEA2, ptr %m_InitCE.i.i, align 4
  %m_InitEQ.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 43
  %127 = ptrtoint ptr %m_InitEQ.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @DRXD_InitEQA2, ptr %m_InitEQ.i.i, align 4
  %m_InitEC.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 45
  %128 = ptrtoint ptr %m_InitEC.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @DRXD_InitECA2, ptr %m_InitEC.i.i, align 4
  %call41.i.i = call fastcc i32 @load_firmware(ptr noundef %1, ptr noundef nonnull @.str.12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %tobool42.not.i.i = icmp eq i32 %call41.i.i, 0
  br i1 %tobool42.not.i.i, label %if.then40.i.i.if.end57.i.i_crit_edge, label %if.then40.i.i.DRXD_init.exit_crit_edge

if.then40.i.i.DRXD_init.exit_crit_edge:           ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.then40.i.i.if.end57.i.i_crit_edge:             ; preds = %if.then40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i.i

if.else45.i.i:                                    ; preds = %if.end38.i.i
  %129 = ptrtoint ptr %m_ResetCEFR46.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %m_ResetCEFR46.i.i, align 4
  %m_InitFE_147.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 39
  %130 = ptrtoint ptr %m_InitFE_147.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @DRXD_InitFEB1_1, ptr %m_InitFE_147.i.i, align 4
  %m_InitFE_248.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 40
  %131 = ptrtoint ptr %m_InitFE_248.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @DRXD_InitFEB1_2, ptr %m_InitFE_248.i.i, align 4
  %m_InitCP49.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 41
  %132 = ptrtoint ptr %m_InitCP49.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @DRXD_InitCPB1, ptr %m_InitCP49.i.i, align 4
  %m_InitCE50.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 42
  %133 = ptrtoint ptr %m_InitCE50.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @DRXD_InitCEB1, ptr %m_InitCE50.i.i, align 4
  %m_InitEQ51.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 43
  %134 = ptrtoint ptr %m_InitEQ51.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @DRXD_InitEQB1, ptr %m_InitEQ51.i.i, align 4
  %m_InitEC52.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 45
  %135 = ptrtoint ptr %m_InitEC52.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @DRXD_InitECB1, ptr %m_InitEC52.i.i, align 4
  %call53.i.i = call fastcc i32 @load_firmware(ptr noundef %1, ptr noundef nonnull @.str.13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %if.else45.i.i.if.end57.i.i_crit_edge, label %if.else45.i.i.DRXD_init.exit_crit_edge

if.else45.i.i.DRXD_init.exit_crit_edge:           ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.else45.i.i.if.end57.i.i_crit_edge:             ; preds = %if.else45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.else45.i.i.if.end57.i.i_crit_edge, %if.then40.i.i.if.end57.i.i_crit_edge
  %136 = ptrtoint ptr %diversity.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %diversity.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool59.not.i.i = icmp eq i32 %137, 0
  %m_InitDiversityFront62.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 47
  br i1 %tobool59.not.i.i, label %if.else61.i.i, label %if.then60.i.i

if.then60.i.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %m_InitDiversityFront62.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @DRXD_InitDiversityFront, ptr %m_InitDiversityFront62.i.i, align 4
  %m_InitDiversityEnd.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 48
  %139 = ptrtoint ptr %m_InitDiversityEnd.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @DRXD_InitDiversityEnd, ptr %m_InitDiversityEnd.i.i, align 4
  %m_DisableDiversity.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 49
  %140 = ptrtoint ptr %m_DisableDiversity.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @DRXD_DisableDiversity, ptr %m_DisableDiversity.i.i, align 4
  %m_StartDiversityFront.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 50
  %141 = ptrtoint ptr %m_StartDiversityFront.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @DRXD_StartDiversityFront, ptr %m_StartDiversityFront.i.i, align 4
  %m_StartDiversityEnd.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 51
  %142 = ptrtoint ptr %m_StartDiversityEnd.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @DRXD_StartDiversityEnd, ptr %m_StartDiversityEnd.i.i, align 4
  %m_DiversityDelay8MHZ.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 52
  %143 = ptrtoint ptr %m_DiversityDelay8MHZ.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @DRXD_DiversityDelay8MHZ, ptr %m_DiversityDelay8MHZ.i.i, align 4
  %m_DiversityDelay6MHZ.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 53
  %144 = ptrtoint ptr %m_DiversityDelay6MHZ.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @DRXD_DiversityDelay6MHZ, ptr %m_DiversityDelay6MHZ.i.i, align 4
  br label %if.end6.i

if.else61.i.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %145 = call ptr @memset(ptr %m_InitDiversityFront62.i.i, i32 0, i32 28)
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else61.i.i, %if.then60.i.i
  %146 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool7.not.i = icmp eq i32 %147, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i, label %if.end6.i.if.then18.i_crit_edge

if.end6.i.if.then18.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %148 = ptrtoint ptr %m_HiI2cPatch134.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %m_HiI2cPatch134.i.i, align 4
  %tobool8.not.i = icmp eq ptr %149, null
  br i1 %tobool8.not.i, label %land.lhs.true.i.if.end23.i_crit_edge, label %if.then9.i

land.lhs.true.i.if.end23.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  %call11.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef nonnull %149) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.then9.i.DRXD_init.exit_crit_edge, label %if.end15.i

if.then9.i.DRXD_init.exit_crit_edge:              ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end15.i:                                       ; preds = %if.then9.i
  %150 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %.pr.i = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool17.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end23.i_crit_edge, label %if.end15.i.if.then18.i_crit_edge

if.end15.i.if.then18.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18.i

if.end15.i.if.end23.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then18.i:                                      ; preds = %if.end15.i.if.then18.i_crit_edge, %if.end6.i.if.then18.i_crit_edge
  %151 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i) #7
  %153 = getelementptr inbounds [6 x i8], ptr %mm.i.i, i32 0, i32 1
  %154 = getelementptr inbounds [6 x i8], ptr %mm.i.i, i32 0, i32 2
  %155 = getelementptr inbounds [6 x i8], ptr %mm.i.i, i32 0, i32 3
  %156 = getelementptr inbounds [6 x i8], ptr %mm.i.i, i32 0, i32 4
  %157 = getelementptr inbounds [6 x i8], ptr %mm.i.i, i32 0, i32 5
  %158 = ptrtoint ptr %mm.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 45, ptr %mm.i.i, align 1
  %159 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 67, ptr %153, align 1
  %160 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %154, align 1
  %161 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %155, align 1
  %162 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 127, ptr %156, align 1
  %163 = ptrtoint ptr %157 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 4, ptr %157, align 1
  %164 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %166 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 458751, ptr %166, align 4
  %conv.i.i.i = zext i8 %152 to i16
  %168 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %169 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %170 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %mm.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %165, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.not.i.not.i = icmp eq i32 %call.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i) #7
  br i1 %cmp.not.i.not.i.not.i, label %if.then18.i.if.end23.i_crit_edge, label %if.then18.i.DRXD_init.exit_crit_edge

if.then18.i.DRXD_init.exit_crit_edge:             ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.then18.i.if.end23.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then18.i.if.end23.i_crit_edge, %if.end15.i.if.end23.i_crit_edge, %land.lhs.true.i.if.end23.i_crit_edge
  %mutex.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #7
  %171 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i.i) #7
  %173 = getelementptr inbounds [6 x i8], ptr %mm.i.i.i, i32 0, i32 1
  %174 = getelementptr inbounds [6 x i8], ptr %mm.i.i.i, i32 0, i32 2
  %175 = getelementptr inbounds [6 x i8], ptr %mm.i.i.i, i32 0, i32 3
  %176 = getelementptr inbounds [6 x i8], ptr %mm.i.i.i, i32 0, i32 4
  %177 = getelementptr inbounds [6 x i8], ptr %mm.i.i.i, i32 0, i32 5
  %178 = ptrtoint ptr %mm.i.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 51, ptr %mm.i.i.i, align 1
  %179 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 66, ptr %173, align 1
  %180 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %174, align 1
  %181 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %175, align 1
  %182 = ptrtoint ptr %176 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 115, ptr %176, align 1
  %183 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 57, ptr %177, align 1
  %184 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i.i) #7
  %186 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 458751, ptr %186, align 4
  %conv.i.i.i6.i = zext i8 %172 to i16
  %188 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %conv.i.i.i6.i, ptr %msg.i.i.i.i, align 4
  %flags.i.i.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 1
  %189 = ptrtoint ptr %flags.i.i.i7.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 0, ptr %flags.i.i.i7.i, align 2
  %buf.i.i.i8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 3
  %190 = ptrtoint ptr %buf.i.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %mm.i.i.i, ptr %buf.i.i.i8.i, align 4
  %call.i.i.i9.i = call i32 @i2c_transfer(ptr noundef %185, ptr noundef nonnull %msg.i.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i9.i)
  %cmp.not.i.not.i.not.i.i = icmp eq i32 %call.i.i.i9.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i.i) #7
  br i1 %cmp.not.i.not.i.not.i.i, label %if.then.i.i, label %if.end23.i.HI_ResetCommand.exit.i_crit_edge

if.end23.i.HI_ResetCommand.exit.i_crit_edge:      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %HI_ResetCommand.exit.i

if.then.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i.i = call fastcc i32 @HI_Command(ptr noundef %1, i16 noundef zeroext 2) #7
  br label %HI_ResetCommand.exit.i

HI_ResetCommand.exit.i:                           ; preds = %if.then.i.i, %if.end23.i.HI_ResetCommand.exit.i_crit_edge
  %status.0.i.i = phi i32 [ %call1.i.i, %if.then.i.i ], [ -1, %if.end23.i.HI_ResetCommand.exit.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i.i) #7
  call void @msleep(i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i.i)
  %cmp25.i = icmp slt i32 %status.0.i.i, 0
  br i1 %cmp25.i, label %HI_ResetCommand.exit.i.DRXD_init.exit_crit_edge, label %if.end27.i

HI_ResetCommand.exit.i.DRXD_init.exit_crit_edge:  ; preds = %HI_ResetCommand.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end27.i:                                       ; preds = %HI_ResetCommand.exit.i
  %191 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i11.i) #7
  %193 = getelementptr inbounds [6 x i8], ptr %mm.i.i11.i, i32 0, i32 1
  %194 = getelementptr inbounds [6 x i8], ptr %mm.i.i11.i, i32 0, i32 2
  %195 = getelementptr inbounds [6 x i8], ptr %mm.i.i11.i, i32 0, i32 3
  %196 = getelementptr inbounds [6 x i8], ptr %mm.i.i11.i, i32 0, i32 4
  %197 = getelementptr inbounds [6 x i8], ptr %mm.i.i11.i, i32 0, i32 5
  %198 = ptrtoint ptr %mm.i.i11.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %mm.i.i11.i, align 1
  %199 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 64, ptr %193, align 1
  %200 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 32, ptr %194, align 1
  %201 = ptrtoint ptr %195 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %195, align 1
  %202 = ptrtoint ptr %196 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %196, align 1
  %203 = ptrtoint ptr %197 to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 0, ptr %197, align 1
  %204 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i10.i) #7
  %206 = getelementptr inbounds i8, ptr %msg.i.i.i10.i, i32 4
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 458751, ptr %206, align 4
  %conv.i.i.i14.i = zext i8 %192 to i16
  %208 = ptrtoint ptr %msg.i.i.i10.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %conv.i.i.i14.i, ptr %msg.i.i.i10.i, align 4
  %flags.i.i.i15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i10.i, i32 0, i32 1
  %209 = ptrtoint ptr %flags.i.i.i15.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 0, ptr %flags.i.i.i15.i, align 2
  %buf.i.i.i16.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i10.i, i32 0, i32 3
  %210 = ptrtoint ptr %buf.i.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %mm.i.i11.i, ptr %buf.i.i.i16.i, align 4
  %call.i.i.i17.i = call i32 @i2c_transfer(ptr noundef %205, ptr noundef nonnull %msg.i.i.i10.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i17.i)
  %cmp.not.i.not.i.i18.not.i = icmp eq i32 %call.i.i.i17.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i10.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i11.i) #7
  br i1 %cmp.not.i.not.i.i18.not.i, label %if.end31.i, label %if.end27.i.DRXD_init.exit_crit_edge

if.end27.i.DRXD_init.exit_crit_edge:              ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end31.i:                                       ; preds = %if.end27.i
  %211 = ptrtoint ptr %osc_clock_freq.i.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %osc_clock_freq.i.i, align 4
  %213 = add i16 %212, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 20000, i16 %213)
  %214 = icmp ult i16 %213, 20000
  %215 = urem i16 %212, 4000
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %215)
  %cmp9.not.i.i = icmp eq i16 %215, 0
  %or.cond39.i.i = and i1 %214, %cmp9.not.i.i
  br i1 %or.cond39.i.i, label %InitCC.exit.i, label %InitCC.exit.thread.i

InitCC.exit.thread.i:                             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv12.i.i = zext i16 %212 to i32
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv12.i.i) #11
  br label %DRXD_init.exit

InitCC.exit.i:                                    ; preds = %if.end31.i
  %216 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i20.i) #7
  %218 = getelementptr inbounds [6 x i8], ptr %mm.i.i20.i, i32 0, i32 1
  %219 = getelementptr inbounds [6 x i8], ptr %mm.i.i20.i, i32 0, i32 2
  %220 = getelementptr inbounds [6 x i8], ptr %mm.i.i20.i, i32 0, i32 3
  %221 = getelementptr inbounds [6 x i8], ptr %mm.i.i20.i, i32 0, i32 4
  %222 = getelementptr inbounds [6 x i8], ptr %mm.i.i20.i, i32 0, i32 5
  %223 = ptrtoint ptr %mm.i.i20.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 16, ptr %mm.i.i20.i, align 1
  %224 = ptrtoint ptr %218 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 65, ptr %218, align 1
  %225 = ptrtoint ptr %219 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 2, ptr %219, align 1
  %226 = ptrtoint ptr %220 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %220, align 1
  %227 = ptrtoint ptr %221 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 1, ptr %221, align 1
  %228 = ptrtoint ptr %222 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 0, ptr %222, align 1
  %229 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i19.i) #7
  %231 = getelementptr inbounds i8, ptr %msg.i.i.i19.i, i32 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 458751, ptr %231, align 4
  %conv.i.i.i24.i = zext i8 %217 to i16
  %233 = ptrtoint ptr %msg.i.i.i19.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 %conv.i.i.i24.i, ptr %msg.i.i.i19.i, align 4
  %flags.i.i.i25.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i19.i, i32 0, i32 1
  %234 = ptrtoint ptr %flags.i.i.i25.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 0, ptr %flags.i.i.i25.i, align 2
  %buf.i.i.i26.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i19.i, i32 0, i32 3
  %235 = ptrtoint ptr %buf.i.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %mm.i.i20.i, ptr %buf.i.i.i26.i, align 4
  %call.i.i.i27.i = call i32 @i2c_transfer(ptr noundef %230, ptr noundef nonnull %msg.i.i.i19.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i27.i)
  %cmp.not.i.not.i.i28.i = icmp ne i32 %call.i.i.i27.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i19.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i20.i) #7
  %236 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i41.i.i) #7
  %238 = getelementptr inbounds [6 x i8], ptr %mm.i41.i.i, i32 0, i32 1
  %239 = getelementptr inbounds [6 x i8], ptr %mm.i41.i.i, i32 0, i32 2
  %240 = getelementptr inbounds [6 x i8], ptr %mm.i41.i.i, i32 0, i32 3
  %241 = getelementptr inbounds [6 x i8], ptr %mm.i41.i.i, i32 0, i32 4
  %242 = getelementptr inbounds [6 x i8], ptr %mm.i41.i.i, i32 0, i32 5
  %243 = ptrtoint ptr %mm.i41.i.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 17, ptr %mm.i41.i.i, align 1
  %244 = ptrtoint ptr %238 to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 65, ptr %238, align 1
  %245 = ptrtoint ptr %239 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 2, ptr %239, align 1
  %246 = ptrtoint ptr %240 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 0, ptr %240, align 1
  %247 = ptrtoint ptr %241 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 21, ptr %241, align 1
  %248 = ptrtoint ptr %242 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 0, ptr %242, align 1
  %249 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i40.i.i) #7
  %251 = getelementptr inbounds i8, ptr %msg.i.i40.i.i, i32 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 458751, ptr %251, align 4
  %conv.i.i44.i.i = zext i8 %237 to i16
  %253 = ptrtoint ptr %msg.i.i40.i.i to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 %conv.i.i44.i.i, ptr %msg.i.i40.i.i, align 4
  %flags.i.i45.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i40.i.i, i32 0, i32 1
  %254 = ptrtoint ptr %flags.i.i45.i.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 0, ptr %flags.i.i45.i.i, align 2
  %buf.i.i46.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i40.i.i, i32 0, i32 3
  %255 = ptrtoint ptr %buf.i.i46.i.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store ptr %mm.i41.i.i, ptr %buf.i.i46.i.i, align 4
  %call.i.i47.i.i = call i32 @i2c_transfer(ptr noundef %250, ptr noundef nonnull %msg.i.i40.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i47.i.i)
  %cmp.not.i.not.i48.i.i = icmp ne i32 %call.i.i47.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i40.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i41.i.i) #7
  %or1580.i.i = or i1 %cmp.not.i.not.i.i28.i, %cmp.not.i.not.i48.i.i
  %256 = ptrtoint ptr %osc_clock_freq.i.i to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %osc_clock_freq.i.i, align 4
  %258 = udiv i16 %257, 4000
  %259 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i51.i.i) #7
  %261 = getelementptr inbounds [6 x i8], ptr %mm.i51.i.i, i32 0, i32 1
  %262 = getelementptr inbounds [6 x i8], ptr %mm.i51.i.i, i32 0, i32 2
  %263 = getelementptr inbounds [6 x i8], ptr %mm.i51.i.i, i32 0, i32 3
  %264 = getelementptr inbounds [6 x i8], ptr %mm.i51.i.i, i32 0, i32 4
  %265 = getelementptr inbounds [6 x i8], ptr %mm.i51.i.i, i32 0, i32 5
  %266 = ptrtoint ptr %mm.i51.i.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 18, ptr %mm.i51.i.i, align 1
  %267 = ptrtoint ptr %261 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 65, ptr %261, align 1
  %268 = ptrtoint ptr %262 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 2, ptr %262, align 1
  %269 = ptrtoint ptr %263 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 0, ptr %263, align 1
  %conv15.i.i.i = trunc i16 %258 to i8
  %270 = ptrtoint ptr %264 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 %conv15.i.i.i, ptr %264, align 1
  %271 = ptrtoint ptr %265 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 0, ptr %265, align 1
  %272 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i50.i.i) #7
  %274 = getelementptr inbounds i8, ptr %msg.i.i50.i.i, i32 4
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 458751, ptr %274, align 4
  %conv.i.i54.i.i = zext i8 %260 to i16
  %276 = ptrtoint ptr %msg.i.i50.i.i to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 %conv.i.i54.i.i, ptr %msg.i.i50.i.i, align 4
  %flags.i.i55.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i50.i.i, i32 0, i32 1
  %277 = ptrtoint ptr %flags.i.i55.i.i to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 0, ptr %flags.i.i55.i.i, align 2
  %buf.i.i56.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i50.i.i, i32 0, i32 3
  %278 = ptrtoint ptr %buf.i.i56.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr %mm.i51.i.i, ptr %buf.i.i56.i.i, align 4
  %call.i.i57.i.i = call i32 @i2c_transfer(ptr noundef %273, ptr noundef nonnull %msg.i.i50.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i57.i.i)
  %cmp.not.i.not.i58.i.i = icmp ne i32 %call.i.i57.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i50.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i51.i.i) #7
  %or2081.i.i = or i1 %or1580.i.i, %cmp.not.i.not.i58.i.i
  %279 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i61.i.i) #7
  %281 = getelementptr inbounds [6 x i8], ptr %mm.i61.i.i, i32 0, i32 1
  %282 = getelementptr inbounds [6 x i8], ptr %mm.i61.i.i, i32 0, i32 2
  %283 = getelementptr inbounds [6 x i8], ptr %mm.i61.i.i, i32 0, i32 3
  %284 = getelementptr inbounds [6 x i8], ptr %mm.i61.i.i, i32 0, i32 4
  %285 = getelementptr inbounds [6 x i8], ptr %mm.i61.i.i, i32 0, i32 5
  %286 = ptrtoint ptr %mm.i61.i.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 21, ptr %mm.i61.i.i, align 1
  %287 = ptrtoint ptr %281 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 65, ptr %281, align 1
  %288 = ptrtoint ptr %282 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 2, ptr %282, align 1
  %289 = ptrtoint ptr %283 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 0, ptr %283, align 1
  %290 = ptrtoint ptr %284 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 2, ptr %284, align 1
  %291 = ptrtoint ptr %285 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 0, ptr %285, align 1
  %292 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i60.i.i) #7
  %294 = getelementptr inbounds i8, ptr %msg.i.i60.i.i, i32 4
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 458751, ptr %294, align 4
  %conv.i.i64.i.i = zext i8 %280 to i16
  %296 = ptrtoint ptr %msg.i.i60.i.i to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 %conv.i.i64.i.i, ptr %msg.i.i60.i.i, align 4
  %flags.i.i65.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i60.i.i, i32 0, i32 1
  %297 = ptrtoint ptr %flags.i.i65.i.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 0, ptr %flags.i.i65.i.i, align 2
  %buf.i.i66.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i60.i.i, i32 0, i32 3
  %298 = ptrtoint ptr %buf.i.i66.i.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %mm.i61.i.i, ptr %buf.i.i66.i.i, align 4
  %call.i.i67.i.i = call i32 @i2c_transfer(ptr noundef %293, ptr noundef nonnull %msg.i.i60.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i67.i.i)
  %cmp.not.i.not.i68.i.i = icmp ne i32 %call.i.i67.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i60.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i61.i.i) #7
  %or2282.i.i = or i1 %or2081.i.i, %cmp.not.i.not.i68.i.i
  %299 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i71.i.i) #7
  %301 = getelementptr inbounds [6 x i8], ptr %mm.i71.i.i, i32 0, i32 1
  %302 = getelementptr inbounds [6 x i8], ptr %mm.i71.i.i, i32 0, i32 2
  %303 = getelementptr inbounds [6 x i8], ptr %mm.i71.i.i, i32 0, i32 3
  %304 = getelementptr inbounds [6 x i8], ptr %mm.i71.i.i, i32 0, i32 4
  %305 = getelementptr inbounds [6 x i8], ptr %mm.i71.i.i, i32 0, i32 5
  %306 = ptrtoint ptr %mm.i71.i.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 23, ptr %mm.i71.i.i, align 1
  %307 = ptrtoint ptr %301 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 65, ptr %301, align 1
  %308 = ptrtoint ptr %302 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 2, ptr %302, align 1
  %309 = ptrtoint ptr %303 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 0, ptr %303, align 1
  %310 = ptrtoint ptr %304 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 115, ptr %304, align 1
  %311 = ptrtoint ptr %305 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 57, ptr %305, align 1
  %312 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i70.i.i) #7
  %314 = getelementptr inbounds i8, ptr %msg.i.i70.i.i, i32 4
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 458751, ptr %314, align 4
  %conv.i.i74.i.i = zext i8 %300 to i16
  %316 = ptrtoint ptr %msg.i.i70.i.i to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 %conv.i.i74.i.i, ptr %msg.i.i70.i.i, align 4
  %flags.i.i75.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i70.i.i, i32 0, i32 1
  %317 = ptrtoint ptr %flags.i.i75.i.i to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 0, ptr %flags.i.i75.i.i, align 2
  %buf.i.i76.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i70.i.i, i32 0, i32 3
  %318 = ptrtoint ptr %buf.i.i76.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %mm.i71.i.i, ptr %buf.i.i76.i.i, align 4
  %call.i.i77.i.i = call i32 @i2c_transfer(ptr noundef %313, ptr noundef nonnull %msg.i.i70.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i77.i.i)
  %cmp.not.i.not.i78.i.i = icmp ne i32 %call.i.i77.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i70.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i71.i.i) #7
  %or2483.i.i = or i1 %or2282.i.i, %cmp.not.i.not.i78.i.i
  br i1 %or2483.i.i, label %InitCC.exit.i.DRXD_init.exit_crit_edge, label %if.end35.i

InitCC.exit.i.DRXD_init.exit_crit_edge:           ; preds = %InitCC.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end35.i:                                       ; preds = %InitCC.exit.i
  %319 = ptrtoint ptr %osc_clock_deviation.i.i to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 0, ptr %osc_clock_deviation.i.i, align 2
  %osc_deviation.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 7, i32 10
  %320 = ptrtoint ptr %osc_deviation.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %osc_deviation.i, align 4
  %tobool37.not.i = icmp eq ptr %321, null
  br i1 %tobool37.not.i, label %if.end35.i.if.end43.i_crit_edge, label %if.then38.i

if.end35.i.if.end43.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 6
  %322 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %priv.i, align 4
  %call41.i = call signext i16 %321(ptr noundef %323, i16 noundef signext 0, i32 noundef 0) #7
  %324 = ptrtoint ptr %osc_clock_deviation.i.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 %call41.i, ptr %osc_clock_deviation.i.i, align 2
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then38.i, %if.end35.i.if.end43.i_crit_edge
  %325 = ptrtoint ptr %osc_clock_deviation.i.i to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %osc_clock_deviation.i.i, align 2
  %conv.i = sext i16 %326 to i32
  %327 = ptrtoint ptr %expected_sys_clock_freq.i.i to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %expected_sys_clock_freq.i.i, align 4
  %conv45.i = zext i16 %328 to i32
  %mul.i = mul nsw i32 %conv45.i, %conv.i
  %mul.i.frozen = freeze i32 %mul.i
  %div.i = sdiv i32 %mul.i.frozen, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp46.i = icmp sgt i32 %mul.i, 0
  %..i = select i1 %cmp46.i, i32 2, i32 -2
  %329 = mul i32 %div.i, 1000000
  %rem.i.decomposed = sub i32 %mul.i.frozen, %329
  %mul50.i = mul nsw i32 %..i, %rem.i.decomposed
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %mul50.i)
  %cmp51.i = icmp sgt i32 %mul50.i, 1000000
  %div54.lhs.trunc.i = trunc i32 %..i to i8
  %div5451.i = sdiv i8 %div54.lhs.trunc.i, 2
  %div54.sext.i = sext i8 %div5451.i to i32
  %add.i = select i1 %cmp51.i, i32 %div54.sext.i, i32 0
  %deviation.0.i = add nsw i32 %add.i, %div.i
  %330 = trunc i32 %deviation.0.i to i16
  %conv59.i = add i16 %328, %330
  %331 = ptrtoint ptr %sys_clock_freq.i.i to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 %conv59.i, ptr %sys_clock_freq.i.i, align 4
  %332 = ptrtoint ptr %chip_adr.i.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %chip_adr.i.i, align 4
  %conv.i31.i = zext i8 %333 to i16
  %hi_cfg_wakeup_key.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 14
  %334 = ptrtoint ptr %hi_cfg_wakeup_key.i.i to i32
  call void @__asan_store2_noabort(i32 %334)
  store i16 %conv.i31.i, ptr %hi_cfg_wakeup_key.i.i, align 2
  %hi_cfg_ctrl.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 15
  %335 = ptrtoint ptr %hi_cfg_ctrl.i.i to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 1, ptr %hi_cfg_ctrl.i.i, align 4
  %call.i32.i = call fastcc i32 @HI_CfgCommand(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %cmp61.i = icmp slt i32 %call.i32.i, 0
  br i1 %cmp61.i, label %if.end43.i.DRXD_init.exit_crit_edge, label %if.end64.i

if.end43.i.DRXD_init.exit_crit_edge:              ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end64.i:                                       ; preds = %if.end43.i
  %336 = ptrtoint ptr %m_InitAtomicRead.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %m_InitAtomicRead.i.i, align 4
  %call.i34.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %337) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %cmp66.i = icmp slt i32 %call.i34.i, 0
  br i1 %cmp66.i, label %if.end64.i.DRXD_init.exit_crit_edge, label %if.end69.i

if.end64.i.DRXD_init.exit_crit_edge:              ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end69.i:                                       ; preds = %if.end64.i
  %338 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool.not.i59 = icmp eq i32 %339, 0
  br i1 %tobool.not.i59, label %if.end69.i.EnableAndResetMB.exit_crit_edge, label %if.then.i

if.end69.i.EnableAndResetMB.exit_crit_edge:       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %EnableAndResetMB.exit

if.then.i:                                        ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  %340 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i57) #7
  %342 = getelementptr inbounds [6 x i8], ptr %mm.i.i57, i32 0, i32 1
  %343 = getelementptr inbounds [6 x i8], ptr %mm.i.i57, i32 0, i32 2
  %344 = getelementptr inbounds [6 x i8], ptr %mm.i.i57, i32 0, i32 3
  %345 = getelementptr inbounds [6 x i8], ptr %mm.i.i57, i32 0, i32 4
  %346 = getelementptr inbounds [6 x i8], ptr %mm.i.i57, i32 0, i32 5
  %347 = ptrtoint ptr %mm.i.i57 to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 19, ptr %mm.i.i57, align 1
  %348 = ptrtoint ptr %342 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 21, ptr %342, align 1
  %349 = ptrtoint ptr %343 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 2, ptr %343, align 1
  %350 = ptrtoint ptr %344 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 0, ptr %344, align 1
  %351 = ptrtoint ptr %345 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 0, ptr %345, align 1
  %352 = ptrtoint ptr %346 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 0, ptr %346, align 1
  %353 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i56) #7
  %355 = getelementptr inbounds i8, ptr %msg.i.i.i56, i32 4
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 458751, ptr %355, align 4
  %conv.i.i.i62 = zext i8 %341 to i16
  %357 = ptrtoint ptr %msg.i.i.i56 to i32
  call void @__asan_store2_noabort(i32 %357)
  store i16 %conv.i.i.i62, ptr %msg.i.i.i56, align 4
  %flags.i.i.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i56, i32 0, i32 1
  %358 = ptrtoint ptr %flags.i.i.i63 to i32
  call void @__asan_store2_noabort(i32 %358)
  store i16 0, ptr %flags.i.i.i63, align 2
  %buf.i.i.i64 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i56, i32 0, i32 3
  %359 = ptrtoint ptr %buf.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %mm.i.i57, ptr %buf.i.i.i64, align 4
  %call.i.i.i65 = call i32 @i2c_transfer(ptr noundef %354, ptr noundef nonnull %msg.i.i.i56, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i56) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i57) #7
  br label %EnableAndResetMB.exit

EnableAndResetMB.exit:                            ; preds = %if.then.i, %if.end69.i.EnableAndResetMB.exit_crit_edge
  %360 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i2.i) #7
  %362 = getelementptr inbounds [6 x i8], ptr %mm.i2.i, i32 0, i32 1
  %363 = getelementptr inbounds [6 x i8], ptr %mm.i2.i, i32 0, i32 2
  %364 = getelementptr inbounds [6 x i8], ptr %mm.i2.i, i32 0, i32 3
  %365 = getelementptr inbounds [6 x i8], ptr %mm.i2.i, i32 0, i32 4
  %366 = getelementptr inbounds [6 x i8], ptr %mm.i2.i, i32 0, i32 5
  %367 = ptrtoint ptr %mm.i2.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 2, ptr %mm.i2.i, align 1
  %368 = ptrtoint ptr %362 to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 64, ptr %362, align 1
  %369 = ptrtoint ptr %363 to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 32, ptr %363, align 1
  %370 = ptrtoint ptr %364 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 0, ptr %364, align 1
  %371 = ptrtoint ptr %365 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 0, ptr %365, align 1
  %372 = ptrtoint ptr %366 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 0, ptr %366, align 1
  %373 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i1.i) #7
  %375 = getelementptr inbounds i8, ptr %msg.i.i1.i, i32 4
  %376 = ptrtoint ptr %375 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 458751, ptr %375, align 4
  %conv.i.i5.i = zext i8 %361 to i16
  %377 = ptrtoint ptr %msg.i.i1.i to i32
  call void @__asan_store2_noabort(i32 %377)
  store i16 %conv.i.i5.i, ptr %msg.i.i1.i, align 4
  %flags.i.i6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1.i, i32 0, i32 1
  %378 = ptrtoint ptr %flags.i.i6.i to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 0, ptr %flags.i.i6.i, align 2
  %buf.i.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1.i, i32 0, i32 3
  %379 = ptrtoint ptr %buf.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %mm.i2.i, ptr %buf.i.i7.i, align 4
  %call.i.i8.i = call i32 @i2c_transfer(ptr noundef %374, ptr noundef nonnull %msg.i.i1.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i1.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i2.i) #7
  %380 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i12.i) #7
  %382 = getelementptr inbounds [6 x i8], ptr %mm.i12.i, i32 0, i32 1
  %383 = getelementptr inbounds [6 x i8], ptr %mm.i12.i, i32 0, i32 2
  %384 = ptrtoint ptr %mm.i12.i to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 2, ptr %mm.i12.i, align 1
  %385 = ptrtoint ptr %382 to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 64, ptr %382, align 1
  %386 = ptrtoint ptr %383 to i32
  call void @__asan_storeN_noabort(i32 %386, i32 4)
  store i32 0, ptr %383, align 1
  %387 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i11.i) #7
  %389 = getelementptr inbounds i8, ptr %msg.i.i11.i, i32 4
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 458751, ptr %389, align 4
  %conv.i.i15.i = zext i8 %381 to i16
  %391 = ptrtoint ptr %msg.i.i11.i to i32
  call void @__asan_store2_noabort(i32 %391)
  store i16 %conv.i.i15.i, ptr %msg.i.i11.i, align 4
  %flags.i.i16.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i11.i, i32 0, i32 1
  %392 = ptrtoint ptr %flags.i.i16.i to i32
  call void @__asan_store2_noabort(i32 %392)
  store i16 0, ptr %flags.i.i16.i, align 2
  %buf.i.i17.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i11.i, i32 0, i32 3
  %393 = ptrtoint ptr %buf.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr %mm.i12.i, ptr %buf.i.i17.i, align 4
  %call.i.i18.i = call i32 @i2c_transfer(ptr noundef %388, ptr noundef nonnull %msg.i.i11.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i11.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i12.i) #7
  %394 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %395)
  %tobool76.not.i = icmp eq i32 %395, 0
  br i1 %tobool76.not.i, label %EnableAndResetMB.exit.if.else91.i_crit_edge, label %if.then77.i

EnableAndResetMB.exit.if.else91.i_crit_edge:      ; preds = %EnableAndResetMB.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else91.i

if.then77.i:                                      ; preds = %EnableAndResetMB.exit
  %396 = ptrtoint ptr %m_ResetCEFR46.i.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %m_ResetCEFR46.i.i, align 4
  %call.i35.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %397) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %cmp79.i = icmp slt i32 %call.i35.i, 0
  br i1 %cmp79.i, label %if.then77.i.DRXD_init.exit_crit_edge, label %if.then77.i.if.else91.i_crit_edge

if.then77.i.if.else91.i_crit_edge:                ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else91.i

if.then77.i.DRXD_init.exit_crit_edge:             ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.else91.i:                                      ; preds = %if.then77.i.if.else91.i_crit_edge, %EnableAndResetMB.exit.if.else91.i_crit_edge
  %microcode.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 54
  %398 = ptrtoint ptr %microcode.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %microcode.i, align 4
  %add.ptr.i = getelementptr i8, ptr %399, i32 2
  %400 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %400)
  %401 = load i8, ptr %add.ptr.i, align 1
  %conv.i45 = zext i8 %401 to i32
  %shl.i = shl nuw nsw i32 %conv.i45, 8
  %arrayidx1.i = getelementptr i8, ptr %399, i32 3
  %402 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %403 to i32
  %or.i = or i32 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp7.not.i = icmp eq i32 %or.i, 0
  br i1 %cmp7.not.i, label %if.else91.i.if.end97.i_crit_edge, label %for.body.lr.ph.i

if.else91.i.if.end97.i_crit_edge:                 ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97.i

for.body.lr.ph.i:                                 ; preds = %if.else91.i
  %add.ptr4.i = getelementptr i8, ptr %399, i32 4
  %404 = getelementptr inbounds i8, ptr %mm.i.i.i44, i32 4
  %arrayinit.element.i.i.i = getelementptr inbounds i8, ptr %mm.i.i.i44, i32 1
  %arrayinit.element3.i.i.i = getelementptr inbounds i8, ptr %mm.i.i.i44, i32 2
  %arrayinit.element8.i.i.i = getelementptr inbounds i8, ptr %mm.i.i.i44, i32 3
  %405 = getelementptr inbounds i8, ptr %msg.i.i.i.i43, i32 4
  %flags.i.i.i.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i43, i32 0, i32 1
  %buf.i.i.i.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i43, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i54.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i54.for.body.i_crit_edge ]
  %pSrc.08.i = phi ptr [ %add.ptr4.i, %for.body.lr.ph.i ], [ %add.ptr35.i, %if.end.i54.for.body.i_crit_edge ]
  %add.ptr21.i = getelementptr i8, ptr %pSrc.08.i, i32 4
  %406 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %add.ptr21.i, align 1
  %conv23.i = zext i8 %407 to i16
  %arrayidx25.i = getelementptr i8, ptr %pSrc.08.i, i32 5
  %408 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %409 to i16
  %410 = shl i16 %conv23.i, 9
  %411 = shl nuw nsw i16 %conv26.i, 1
  %mul.i49 = or i16 %411, %410
  %add.ptr31.i = getelementptr i8, ptr %pSrc.08.i, i32 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mul.i49)
  %cmp.not.i3.i = icmp eq i16 %mul.i49, 0
  br i1 %cmp.not.i3.i, label %for.body.i.if.end.i54_crit_edge, label %for.end.i.i.preheader.i

for.body.i.if.end.i54_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i54

for.end.i.i.preheader.i:                          ; preds = %for.body.i
  %arrayidx10.i = getelementptr i8, ptr %pSrc.08.i, i32 1
  %412 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %413 to i32
  %shl12.i = shl nuw nsw i32 %conv11.i, 16
  %414 = ptrtoint ptr %pSrc.08.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %pSrc.08.i, align 1
  %conv8.i = zext i8 %415 to i32
  %shl9.i = shl nuw i32 %conv8.i, 24
  %or13.i = or i32 %shl9.i, %shl12.i
  %arrayidx14.i = getelementptr i8, ptr %pSrc.08.i, i32 2
  %416 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %417 to i32
  %shl16.i = shl nuw nsw i32 %conv15.i, 8
  %or17.i = or i32 %or13.i, %shl16.i
  %arrayidx18.i = getelementptr i8, ptr %pSrc.08.i, i32 3
  %418 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %419 to i32
  %or20.i = or i32 %or17.i, %conv19.i
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %write_chunk.exit.i.i.for.end.i.i.i_crit_edge, %for.end.i.i.preheader.i
  %pBlock.addr.0.i6.i = phi ptr [ %add.ptr.i.i, %write_chunk.exit.i.i.for.end.i.i.i_crit_edge ], [ %add.ptr31.i, %for.end.i.i.preheader.i ]
  %BlockSize.addr.0.i5.i = phi i16 [ %sub.i.i, %write_chunk.exit.i.i.for.end.i.i.i_crit_edge ], [ %mul.i49, %for.end.i.i.preheader.i ]
  %Address.addr.0.i4.i = phi i32 [ %add.i.i, %write_chunk.exit.i.i.for.end.i.i.i_crit_edge ], [ %or20.i, %for.end.i.i.preheader.i ]
  %420 = call i16 @llvm.umin.i16(i16 %BlockSize.addr.0.i5.i, i16 48) #7
  %conv7.i.i = zext i16 %420 to i32
  %421 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %mm.i.i.i44) #7
  %conv.i.i.i50 = trunc i32 %Address.addr.0.i4.i to i8
  %423 = ptrtoint ptr %mm.i.i.i44 to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 %conv.i.i.i50, ptr %mm.i.i.i44, align 1
  %shr.i.i.i = lshr i32 %Address.addr.0.i4.i, 16
  %conv2.i.i.i = trunc i32 %shr.i.i.i to i8
  %424 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 %conv2.i.i.i, ptr %arrayinit.element.i.i.i, align 1
  %shr5.i.i.i = lshr i32 %Address.addr.0.i4.i, 24
  %425 = trunc i32 %shr5.i.i.i to i8
  %conv7.i.i.i = or i8 %425, -128
  %426 = ptrtoint ptr %arrayinit.element3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 %conv7.i.i.i, ptr %arrayinit.element3.i.i.i, align 1
  %shr9.i.i.i = lshr i32 %Address.addr.0.i4.i, 8
  %conv11.i.i.i = trunc i32 %shr9.i.i.i to i8
  %427 = ptrtoint ptr %arrayinit.element8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 %conv11.i.i.i, ptr %arrayinit.element8.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %420)
  %428 = icmp ugt i16 %420, 47
  %narrow.i.i = sub nuw nsw i16 48, %420
  %narrow26.i.i = select i1 %428, i16 0, i16 %narrow.i.i
  %429 = zext i16 %narrow26.i.i to i64
  %430 = getelementptr i8, ptr %404, i32 %conv7.i.i
  %431 = trunc i64 %429 to i32
  %432 = call ptr @memset(ptr %430, i32 0, i32 %431)
  %433 = call ptr @memcpy(ptr %404, ptr %pBlock.addr.0.i6.i, i32 %conv7.i.i)
  %434 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i.i43) #7
  %436 = ptrtoint ptr %405 to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 -1, ptr %405, align 4
  %conv.i.i.i.i51 = zext i8 %422 to i16
  %437 = ptrtoint ptr %msg.i.i.i.i43 to i32
  call void @__asan_store2_noabort(i32 %437)
  store i16 %conv.i.i.i.i51, ptr %msg.i.i.i.i43, align 4
  %438 = ptrtoint ptr %flags.i.i.i.i47 to i32
  call void @__asan_store2_noabort(i32 %438)
  store i16 0, ptr %flags.i.i.i.i47, align 2
  %conv2.i.i.i.i = add nuw nsw i16 %420, 4
  store i16 %conv2.i.i.i.i, ptr %405, align 4
  %439 = ptrtoint ptr %buf.i.i.i.i48 to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr %mm.i.i.i44, ptr %buf.i.i.i.i48, align 4
  %call.i.i.i.i52 = call i32 @i2c_transfer(ptr noundef %435, ptr noundef nonnull %msg.i.i.i.i43, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i52)
  %cmp.not.i.not.i.i.i53 = icmp eq i32 %call.i.i.i.i52, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i43) #7
  br i1 %cmp.not.i.not.i.i.i53, label %write_chunk.exit.i.i, label %DownloadMicrocode.exit

write_chunk.exit.i.i:                             ; preds = %for.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %mm.i.i.i44) #7
  %add.ptr.i.i = getelementptr i8, ptr %pBlock.addr.0.i6.i, i32 %conv7.i.i
  %440 = lshr i32 %conv7.i.i, 1
  %add.i.i = add i32 %440, %Address.addr.0.i4.i
  %sub.i.i = sub i16 %BlockSize.addr.0.i5.i, %420
  %cmp.not.i.i = icmp eq i16 %sub.i.i, 0
  br i1 %cmp.not.i.i, label %write_chunk.exit.i.i.if.end.i54_crit_edge, label %write_chunk.exit.i.i.for.end.i.i.i_crit_edge

write_chunk.exit.i.i.for.end.i.i.i_crit_edge:     ; preds = %write_chunk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i.i

write_chunk.exit.i.i.if.end.i54_crit_edge:        ; preds = %write_chunk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i54

if.end.i54:                                       ; preds = %write_chunk.exit.i.i.if.end.i54_crit_edge, %for.body.i.if.end.i54_crit_edge
  %conv34.i = zext i16 %mul.i49 to i32
  %add.ptr35.i = getelementptr i8, ptr %add.ptr31.i, i32 %conv34.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %or.i
  br i1 %exitcond.not.i, label %if.end.i54.if.end97.i_crit_edge, label %if.end.i54.for.body.i_crit_edge

if.end.i54.for.body.i_crit_edge:                  ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i54.if.end97.i_crit_edge:                  ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97.i

DownloadMicrocode.exit:                           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %mm.i.i.i44) #7
  br label %DRXD_init.exit

if.end97.i:                                       ; preds = %if.end.i54.if.end97.i_crit_edge, %if.else91.i.if.end97.i_crit_edge
  %441 = ptrtoint ptr %PGA.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %PGA.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %442)
  %tobool98.not.i = icmp eq i32 %442, 0
  br i1 %tobool98.not.i, label %if.else101.i, label %if.then99.i

if.then99.i:                                      ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #9
  %443 = ptrtoint ptr %m_FeAgRegAgPwd.i.i to i32
  call void @__asan_store2_noabort(i32 %443)
  store i16 0, ptr %m_FeAgRegAgPwd.i.i, align 2
  %444 = call fastcc i32 @SetCfgPga(ptr noundef %1) #7
  br label %if.end103.i

if.else101.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #9
  %445 = ptrtoint ptr %m_FeAgRegAgPwd.i.i to i32
  call void @__asan_store2_noabort(i32 %445)
  store i16 14, ptr %m_FeAgRegAgPwd.i.i, align 2
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.else101.i, %if.then99.i
  %446 = ptrtoint ptr %m_FeAgRegAgAgcSio.i.i to i32
  call void @__asan_store2_noabort(i32 %446)
  store i16 0, ptr %m_FeAgRegAgAgcSio.i.i, align 4
  %m_InitFE_1.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 39
  %447 = ptrtoint ptr %m_InitFE_1.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %m_InitFE_1.i, align 4
  %call.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %448) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end103.i.DRXD_init.exit_crit_edge, label %if.end.i34

if.end103.i.DRXD_init.exit_crit_edge:             ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end.i34:                                       ; preds = %if.end103.i
  %449 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %450)
  %tobool.not.i33 = icmp eq i32 %450, 0
  br i1 %tobool.not.i33, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #9
  %451 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i32) #7
  %453 = getelementptr inbounds [6 x i8], ptr %mm.i.i32, i32 0, i32 1
  %454 = getelementptr inbounds [6 x i8], ptr %mm.i.i32, i32 0, i32 2
  %455 = getelementptr inbounds [6 x i8], ptr %mm.i.i32, i32 0, i32 3
  %456 = getelementptr inbounds [6 x i8], ptr %mm.i.i32, i32 0, i32 4
  %457 = getelementptr inbounds [6 x i8], ptr %mm.i.i32, i32 0, i32 5
  %458 = ptrtoint ptr %mm.i.i32 to i32
  call void @__asan_store1_noabort(i32 %458)
  store i8 18, ptr %mm.i.i32, align 1
  %459 = ptrtoint ptr %453 to i32
  call void @__asan_store1_noabort(i32 %459)
  store i8 -62, ptr %453, align 1
  %460 = ptrtoint ptr %454 to i32
  call void @__asan_store1_noabort(i32 %460)
  store i8 0, ptr %454, align 1
  %461 = ptrtoint ptr %455 to i32
  call void @__asan_store1_noabort(i32 %461)
  store i8 0, ptr %455, align 1
  %462 = ptrtoint ptr %456 to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 1, ptr %456, align 1
  %463 = ptrtoint ptr %457 to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 0, ptr %457, align 1
  %464 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i31) #7
  %466 = getelementptr inbounds i8, ptr %msg.i.i.i31, i32 4
  %467 = ptrtoint ptr %466 to i32
  call void @__asan_store4_noabort(i32 %467)
  store i32 458751, ptr %466, align 4
  %conv.i.i.i37 = zext i8 %452 to i16
  %468 = ptrtoint ptr %msg.i.i.i31 to i32
  call void @__asan_store2_noabort(i32 %468)
  store i16 %conv.i.i.i37, ptr %msg.i.i.i31, align 4
  %flags.i.i.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i31, i32 0, i32 1
  %469 = ptrtoint ptr %flags.i.i.i38 to i32
  call void @__asan_store2_noabort(i32 %469)
  store i16 0, ptr %flags.i.i.i38, align 2
  %buf.i.i.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i31, i32 0, i32 3
  %470 = ptrtoint ptr %buf.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %470)
  store ptr %mm.i.i32, ptr %buf.i.i.i39, align 4
  %call.i.i.i40 = call i32 @i2c_transfer(ptr noundef %465, ptr noundef nonnull %msg.i.i.i31, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i40)
  %cmp.not.i.not.i.i41 = icmp ne i32 %call.i.i.i40, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i31) #7
  %..i.i42 = sext i1 %cmp.not.i.not.i.i41 to i32
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i32) #7
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i34
  %471 = ptrtoint ptr %PGA.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %PGA.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %472)
  %tobool3.not.i = icmp eq i32 %472, 0
  br i1 %tobool3.not.i, label %if.else6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call fastcc i32 @SetCfgPga(ptr noundef %1) #7
  br label %if.end9.i

if.else6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %473 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i42.i) #7
  %475 = getelementptr inbounds [6 x i8], ptr %mm.i42.i, i32 0, i32 1
  %476 = getelementptr inbounds [6 x i8], ptr %mm.i42.i, i32 0, i32 2
  %477 = getelementptr inbounds [6 x i8], ptr %mm.i42.i, i32 0, i32 3
  %478 = getelementptr inbounds [6 x i8], ptr %mm.i42.i, i32 0, i32 4
  %479 = getelementptr inbounds [6 x i8], ptr %mm.i42.i, i32 0, i32 5
  %480 = ptrtoint ptr %mm.i42.i to i32
  call void @__asan_store1_noabort(i32 %480)
  store i8 18, ptr %mm.i42.i, align 1
  %481 = ptrtoint ptr %475 to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 -62, ptr %475, align 1
  %482 = ptrtoint ptr %476 to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 0, ptr %476, align 1
  %483 = ptrtoint ptr %477 to i32
  call void @__asan_store1_noabort(i32 %483)
  store i8 0, ptr %477, align 1
  %484 = ptrtoint ptr %478 to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 1, ptr %478, align 1
  %485 = ptrtoint ptr %479 to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 0, ptr %479, align 1
  %486 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i41.i) #7
  %488 = getelementptr inbounds i8, ptr %msg.i.i41.i, i32 4
  %489 = ptrtoint ptr %488 to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 458751, ptr %488, align 4
  %conv.i.i45.i = zext i8 %474 to i16
  %490 = ptrtoint ptr %msg.i.i41.i to i32
  call void @__asan_store2_noabort(i32 %490)
  store i16 %conv.i.i45.i, ptr %msg.i.i41.i, align 4
  %flags.i.i46.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i41.i, i32 0, i32 1
  %491 = ptrtoint ptr %flags.i.i46.i to i32
  call void @__asan_store2_noabort(i32 %491)
  store i16 0, ptr %flags.i.i46.i, align 2
  %buf.i.i47.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i41.i, i32 0, i32 3
  %492 = ptrtoint ptr %buf.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %492)
  store ptr %mm.i42.i, ptr %buf.i.i47.i, align 4
  %call.i.i48.i = call i32 @i2c_transfer(ptr noundef %487, ptr noundef nonnull %msg.i.i41.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i48.i)
  %cmp.not.i.not.i49.i = icmp ne i32 %call.i.i48.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i41.i) #7
  %..i50.i = sext i1 %cmp.not.i.not.i49.i to i32
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i42.i) #7
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else6.i, %if.then4.i, %if.then1.i
  %status.0.i = phi i32 [ %..i.i42, %if.then1.i ], [ %call5.i, %if.then4.i ], [ %..i50.i, %if.else6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %cmp10.i = icmp slt i32 %status.0.i, 0
  br i1 %cmp10.i, label %if.end9.i.DRXD_init.exit_crit_edge, label %if.end12.i

if.end9.i.DRXD_init.exit_crit_edge:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end12.i:                                       ; preds = %if.end9.i
  %493 = ptrtoint ptr %m_FeAgRegAgAgcSio.i.i to i32
  call void @__asan_load2_noabort(i32 %493)
  %494 = load i16, ptr %m_FeAgRegAgAgcSio.i.i, align 4
  %495 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i52.i) #7
  %497 = getelementptr inbounds [6 x i8], ptr %mm.i52.i, i32 0, i32 1
  %498 = getelementptr inbounds [6 x i8], ptr %mm.i52.i, i32 0, i32 2
  %499 = getelementptr inbounds [6 x i8], ptr %mm.i52.i, i32 0, i32 3
  %500 = getelementptr inbounds [6 x i8], ptr %mm.i52.i, i32 0, i32 4
  %501 = getelementptr inbounds [6 x i8], ptr %mm.i52.i, i32 0, i32 5
  %502 = ptrtoint ptr %mm.i52.i to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 19, ptr %mm.i52.i, align 1
  %503 = ptrtoint ptr %497 to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 -62, ptr %497, align 1
  %504 = ptrtoint ptr %498 to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 0, ptr %498, align 1
  %505 = ptrtoint ptr %499 to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 0, ptr %499, align 1
  %conv15.i.i = trunc i16 %494 to i8
  %506 = ptrtoint ptr %500 to i32
  call void @__asan_store1_noabort(i32 %506)
  store i8 %conv15.i.i, ptr %500, align 1
  %507 = lshr i16 %494, 8
  %conv20.i.i = trunc i16 %507 to i8
  %508 = ptrtoint ptr %501 to i32
  call void @__asan_store1_noabort(i32 %508)
  store i8 %conv20.i.i, ptr %501, align 1
  %509 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i51.i) #7
  %511 = getelementptr inbounds i8, ptr %msg.i.i51.i, i32 4
  %512 = ptrtoint ptr %511 to i32
  call void @__asan_store4_noabort(i32 %512)
  store i32 458751, ptr %511, align 4
  %conv.i.i55.i = zext i8 %496 to i16
  %513 = ptrtoint ptr %msg.i.i51.i to i32
  call void @__asan_store2_noabort(i32 %513)
  store i16 %conv.i.i55.i, ptr %msg.i.i51.i, align 4
  %flags.i.i56.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i51.i, i32 0, i32 1
  %514 = ptrtoint ptr %flags.i.i56.i to i32
  call void @__asan_store2_noabort(i32 %514)
  store i16 0, ptr %flags.i.i56.i, align 2
  %buf.i.i57.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i51.i, i32 0, i32 3
  %515 = ptrtoint ptr %buf.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %515)
  store ptr %mm.i52.i, ptr %buf.i.i57.i, align 4
  %call.i.i58.i = call i32 @i2c_transfer(ptr noundef %510, ptr noundef nonnull %msg.i.i51.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i58.i)
  %cmp.not.i.not.i59.not.i = icmp eq i32 %call.i.i58.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i51.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i52.i) #7
  br i1 %cmp.not.i.not.i59.not.i, label %if.end16.i, label %if.end12.i.DRXD_init.exit_crit_edge

if.end12.i.DRXD_init.exit_crit_edge:              ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end16.i:                                       ; preds = %if.end12.i
  %516 = ptrtoint ptr %m_FeAgRegAgPwd.i.i to i32
  call void @__asan_load2_noabort(i32 %516)
  %517 = load i16, ptr %m_FeAgRegAgPwd.i.i, align 2
  %518 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %518)
  %519 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i62.i) #7
  %520 = getelementptr inbounds [6 x i8], ptr %mm.i62.i, i32 0, i32 1
  %521 = getelementptr inbounds [6 x i8], ptr %mm.i62.i, i32 0, i32 2
  %522 = getelementptr inbounds [6 x i8], ptr %mm.i62.i, i32 0, i32 3
  %523 = getelementptr inbounds [6 x i8], ptr %mm.i62.i, i32 0, i32 4
  %524 = getelementptr inbounds [6 x i8], ptr %mm.i62.i, i32 0, i32 5
  %525 = ptrtoint ptr %mm.i62.i to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 21, ptr %mm.i62.i, align 1
  %526 = ptrtoint ptr %520 to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 -62, ptr %520, align 1
  %527 = ptrtoint ptr %521 to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 0, ptr %521, align 1
  %528 = ptrtoint ptr %522 to i32
  call void @__asan_store1_noabort(i32 %528)
  store i8 0, ptr %522, align 1
  %conv15.i64.i = trunc i16 %517 to i8
  %529 = ptrtoint ptr %523 to i32
  call void @__asan_store1_noabort(i32 %529)
  store i8 %conv15.i64.i, ptr %523, align 1
  %530 = lshr i16 %517, 8
  %conv20.i65.i = trunc i16 %530 to i8
  %531 = ptrtoint ptr %524 to i32
  call void @__asan_store1_noabort(i32 %531)
  store i8 %conv20.i65.i, ptr %524, align 1
  %532 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i61.i) #7
  %534 = getelementptr inbounds i8, ptr %msg.i.i61.i, i32 4
  %535 = ptrtoint ptr %534 to i32
  call void @__asan_store4_noabort(i32 %535)
  store i32 458751, ptr %534, align 4
  %conv.i.i67.i = zext i8 %519 to i16
  %536 = ptrtoint ptr %msg.i.i61.i to i32
  call void @__asan_store2_noabort(i32 %536)
  store i16 %conv.i.i67.i, ptr %msg.i.i61.i, align 4
  %flags.i.i68.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i61.i, i32 0, i32 1
  %537 = ptrtoint ptr %flags.i.i68.i to i32
  call void @__asan_store2_noabort(i32 %537)
  store i16 0, ptr %flags.i.i68.i, align 2
  %buf.i.i69.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i61.i, i32 0, i32 3
  %538 = ptrtoint ptr %buf.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %538)
  store ptr %mm.i62.i, ptr %buf.i.i69.i, align 4
  %call.i.i70.i = call i32 @i2c_transfer(ptr noundef %533, ptr noundef nonnull %msg.i.i61.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i70.i)
  %cmp.not.i.not.i71.not.i = icmp eq i32 %call.i.i70.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i61.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i62.i) #7
  br i1 %cmp.not.i.not.i71.not.i, label %InitFE.exit, label %if.end16.i.DRXD_init.exit_crit_edge

if.end16.i.DRXD_init.exit_crit_edge:              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

InitFE.exit:                                      ; preds = %if.end16.i
  %m_InitFE_2.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 40
  %539 = ptrtoint ptr %m_InitFE_2.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %m_InitFE_2.i, align 4
  %call21.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %540) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp105.i = icmp slt i32 %call21.i, 0
  br i1 %cmp105.i, label %InitFE.exit.DRXD_init.exit_crit_edge, label %if.end108.i

InitFE.exit.DRXD_init.exit_crit_edge:             ; preds = %InitFE.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end108.i:                                      ; preds = %InitFE.exit
  %541 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %541)
  %542 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i25) #7
  %543 = getelementptr inbounds [6 x i8], ptr %mm.i.i25, i32 0, i32 1
  %544 = getelementptr inbounds [6 x i8], ptr %mm.i.i25, i32 0, i32 2
  %545 = getelementptr inbounds [6 x i8], ptr %mm.i.i25, i32 0, i32 3
  %546 = getelementptr inbounds [6 x i8], ptr %mm.i.i25, i32 0, i32 4
  %547 = getelementptr inbounds [6 x i8], ptr %mm.i.i25, i32 0, i32 5
  %548 = ptrtoint ptr %mm.i.i25 to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 0, ptr %mm.i.i25, align 1
  %549 = ptrtoint ptr %543 to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 1, ptr %543, align 1
  %550 = ptrtoint ptr %544 to i32
  call void @__asan_store1_noabort(i32 %550)
  store i8 1, ptr %544, align 1
  %551 = ptrtoint ptr %545 to i32
  call void @__asan_store1_noabort(i32 %551)
  store i8 0, ptr %545, align 1
  %552 = ptrtoint ptr %546 to i32
  call void @__asan_store1_noabort(i32 %552)
  store i8 1, ptr %546, align 1
  %553 = ptrtoint ptr %547 to i32
  call void @__asan_store1_noabort(i32 %553)
  store i8 0, ptr %547, align 1
  %554 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i24) #7
  %556 = getelementptr inbounds i8, ptr %msg.i.i.i24, i32 4
  %557 = ptrtoint ptr %556 to i32
  call void @__asan_store4_noabort(i32 %557)
  store i32 458751, ptr %556, align 4
  %conv.i.i.i27 = zext i8 %542 to i16
  %558 = ptrtoint ptr %msg.i.i.i24 to i32
  call void @__asan_store2_noabort(i32 %558)
  store i16 %conv.i.i.i27, ptr %msg.i.i.i24, align 4
  %flags.i.i.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i24, i32 0, i32 1
  %559 = ptrtoint ptr %flags.i.i.i28 to i32
  call void @__asan_store2_noabort(i32 %559)
  store i16 0, ptr %flags.i.i.i28, align 2
  %buf.i.i.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i24, i32 0, i32 3
  %560 = ptrtoint ptr %buf.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %560)
  store ptr %mm.i.i25, ptr %buf.i.i.i29, align 4
  %call.i.i.i30 = call i32 @i2c_transfer(ptr noundef %555, ptr noundef nonnull %msg.i.i.i24, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i30)
  %cmp.not.i.not.i.i.not = icmp eq i32 %call.i.i.i30, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i24) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i25) #7
  br i1 %cmp.not.i.not.i.i.not, label %if.end113.i, label %if.end108.i.DRXD_init.exit_crit_edge

if.end108.i.DRXD_init.exit_crit_edge:             ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end113.i:                                      ; preds = %if.end108.i
  %m_InitCP.i36.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 41
  %561 = ptrtoint ptr %m_InitCP.i36.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %m_InitCP.i36.i, align 4
  %call.i37.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %562) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %cmp115.i = icmp slt i32 %call.i37.i, 0
  br i1 %cmp115.i, label %if.end113.i.DRXD_init.exit_crit_edge, label %if.end118.i

if.end113.i.DRXD_init.exit_crit_edge:             ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end118.i:                                      ; preds = %if.end113.i
  %call119.i = call fastcc i32 @InitCE(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.i)
  %cmp120.i = icmp slt i32 %call119.i, 0
  br i1 %cmp120.i, label %if.end118.i.DRXD_init.exit_crit_edge, label %if.end123.i

if.end118.i.DRXD_init.exit_crit_edge:             ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end123.i:                                      ; preds = %if.end118.i
  %m_InitEQ.i38.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 43
  %563 = ptrtoint ptr %m_InitEQ.i38.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %m_InitEQ.i38.i, align 4
  %call.i39.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %564) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %cmp125.i = icmp slt i32 %call.i39.i, 0
  br i1 %cmp125.i, label %if.end123.i.DRXD_init.exit_crit_edge, label %if.end128.i

if.end123.i.DRXD_init.exit_crit_edge:             ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end128.i:                                      ; preds = %if.end123.i
  %m_InitEC.i40.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 45
  %565 = ptrtoint ptr %m_InitEC.i40.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %m_InitEC.i40.i, align 4
  %call.i41.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %566) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %cmp130.i = icmp slt i32 %call.i41.i, 0
  br i1 %cmp130.i, label %if.end128.i.DRXD_init.exit_crit_edge, label %if.end133.i

if.end128.i.DRXD_init.exit_crit_edge:             ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end133.i:                                      ; preds = %if.end128.i
  %567 = ptrtoint ptr %m_InitSC.i.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %m_InitSC.i.i, align 4
  %call.i43.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %568) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %cmp135.i = icmp slt i32 %call.i43.i, 0
  br i1 %cmp135.i, label %if.end133.i.DRXD_init.exit_crit_edge, label %if.end138.i

if.end133.i.DRXD_init.exit_crit_edge:             ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end138.i:                                      ; preds = %if.end133.i
  %call139.i = call fastcc i32 @SetCfgIfAgc(ptr noundef %1, ptr noundef %if_agc_cfg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139.i)
  %cmp140.i = icmp slt i32 %call139.i, 0
  br i1 %cmp140.i, label %if.end138.i.DRXD_init.exit_crit_edge, label %if.end143.i

if.end138.i.DRXD_init.exit_crit_edge:             ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end143.i:                                      ; preds = %if.end138.i
  %call144.i = call fastcc i32 @SetCfgRfAgc(ptr noundef %1, ptr noundef %rf_agc_cfg.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144.i)
  %cmp145.i = icmp slt i32 %call144.i, 0
  br i1 %cmp145.i, label %if.end143.i.DRXD_init.exit_crit_edge, label %if.end148.i

if.end143.i.DRXD_init.exit_crit_edge:             ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end148.i:                                      ; preds = %if.end143.i
  %569 = ptrtoint ptr %cscd_state.i.i to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 0, ptr %cscd_state.i.i, align 4
  %570 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i15) #7
  %572 = getelementptr inbounds [6 x i8], ptr %mm.i15, i32 0, i32 1
  %573 = getelementptr inbounds [6 x i8], ptr %mm.i15, i32 0, i32 2
  %574 = ptrtoint ptr %mm.i15 to i32
  call void @__asan_store1_noabort(i32 %574)
  store i8 0, ptr %mm.i15, align 1
  %575 = ptrtoint ptr %572 to i32
  call void @__asan_store1_noabort(i32 %575)
  store i8 -128, ptr %572, align 1
  %576 = ptrtoint ptr %573 to i32
  call void @__asan_storeN_noabort(i32 %576, i32 4)
  store i32 0, ptr %573, align 1
  %577 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i14) #7
  %579 = getelementptr inbounds i8, ptr %msg.i.i14, i32 4
  %580 = ptrtoint ptr %579 to i32
  call void @__asan_store4_noabort(i32 %580)
  store i32 458751, ptr %579, align 4
  %conv.i.i18 = zext i8 %571 to i16
  %581 = ptrtoint ptr %msg.i.i14 to i32
  call void @__asan_store2_noabort(i32 %581)
  store i16 %conv.i.i18, ptr %msg.i.i14, align 4
  %flags.i.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i14, i32 0, i32 1
  %582 = ptrtoint ptr %flags.i.i19 to i32
  call void @__asan_store2_noabort(i32 %582)
  store i16 0, ptr %flags.i.i19, align 2
  %buf.i.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i14, i32 0, i32 3
  %583 = ptrtoint ptr %buf.i.i20 to i32
  call void @__asan_store4_noabort(i32 %583)
  store ptr %mm.i15, ptr %buf.i.i20, align 4
  %call.i.i21 = call i32 @i2c_transfer(ptr noundef %578, ptr noundef nonnull %msg.i.i14, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i21)
  %cmp.not.i.not.i22.not = icmp eq i32 %call.i.i21, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i14) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i15) #7
  br i1 %cmp.not.i.not.i22.not, label %if.end153.i, label %if.end148.i.DRXD_init.exit_crit_edge

if.end148.i.DRXD_init.exit_crit_edge:             ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end153.i:                                      ; preds = %if.end148.i
  %584 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %584)
  %585 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i5) #7
  %586 = getelementptr inbounds [6 x i8], ptr %mm.i5, i32 0, i32 1
  %587 = getelementptr inbounds [6 x i8], ptr %mm.i5, i32 0, i32 2
  %588 = getelementptr inbounds [6 x i8], ptr %mm.i5, i32 0, i32 3
  %589 = getelementptr inbounds [6 x i8], ptr %mm.i5, i32 0, i32 4
  %590 = getelementptr inbounds [6 x i8], ptr %mm.i5, i32 0, i32 5
  %591 = ptrtoint ptr %mm.i5 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 0, ptr %mm.i5, align 1
  %592 = ptrtoint ptr %586 to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 -128, ptr %586, align 1
  %593 = ptrtoint ptr %587 to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 2, ptr %587, align 1
  %594 = ptrtoint ptr %588 to i32
  call void @__asan_store1_noabort(i32 %594)
  store i8 0, ptr %588, align 1
  %595 = ptrtoint ptr %589 to i32
  call void @__asan_store1_noabort(i32 %595)
  store i8 0, ptr %589, align 1
  %596 = ptrtoint ptr %590 to i32
  call void @__asan_store1_noabort(i32 %596)
  store i8 0, ptr %590, align 1
  %597 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i4) #7
  %599 = getelementptr inbounds i8, ptr %msg.i.i4, i32 4
  %600 = ptrtoint ptr %599 to i32
  call void @__asan_store4_noabort(i32 %600)
  store i32 458751, ptr %599, align 4
  %conv.i.i8 = zext i8 %585 to i16
  %601 = ptrtoint ptr %msg.i.i4 to i32
  call void @__asan_store2_noabort(i32 %601)
  store i16 %conv.i.i8, ptr %msg.i.i4, align 4
  %flags.i.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i4, i32 0, i32 1
  %602 = ptrtoint ptr %flags.i.i9 to i32
  call void @__asan_store2_noabort(i32 %602)
  store i16 0, ptr %flags.i.i9, align 2
  %buf.i.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i4, i32 0, i32 3
  %603 = ptrtoint ptr %buf.i.i10 to i32
  call void @__asan_store4_noabort(i32 %603)
  store ptr %mm.i5, ptr %buf.i.i10, align 4
  %call.i.i11 = call i32 @i2c_transfer(ptr noundef %598, ptr noundef nonnull %msg.i.i4, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i11)
  %cmp.not.i.not.i12.not = icmp eq i32 %call.i.i11, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i4) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i5) #7
  br i1 %cmp.not.i.not.i12.not, label %if.end158.i, label %if.end153.i.DRXD_init.exit_crit_edge

if.end153.i.DRXD_init.exit_crit_edge:             ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end158.i:                                      ; preds = %if.end153.i
  %604 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mm.i) #7
  %606 = getelementptr inbounds [8 x i8], ptr %mm.i, i32 0, i32 1
  %607 = getelementptr inbounds [8 x i8], ptr %mm.i, i32 0, i32 2
  %608 = getelementptr inbounds [8 x i8], ptr %mm.i, i32 0, i32 3
  %609 = getelementptr inbounds [8 x i8], ptr %mm.i, i32 0, i32 4
  %610 = getelementptr inbounds [8 x i8], ptr %mm.i, i32 0, i32 5
  %611 = getelementptr inbounds [8 x i8], ptr %mm.i, i32 0, i32 6
  %612 = getelementptr inbounds [8 x i8], ptr %mm.i, i32 0, i32 7
  %613 = ptrtoint ptr %mm.i to i32
  call void @__asan_store1_noabort(i32 %613)
  store i8 -2, ptr %mm.i, align 1
  %614 = ptrtoint ptr %606 to i32
  call void @__asan_store1_noabort(i32 %614)
  store i8 -126, ptr %606, align 1
  %615 = ptrtoint ptr %607 to i32
  call void @__asan_store1_noabort(i32 %615)
  store i8 0, ptr %607, align 1
  %616 = ptrtoint ptr %608 to i32
  call void @__asan_store1_noabort(i32 %616)
  store i8 1, ptr %608, align 1
  %617 = ptrtoint ptr %609 to i32
  call void @__asan_store1_noabort(i32 %617)
  store i8 35, ptr %609, align 1
  %618 = ptrtoint ptr %610 to i32
  call void @__asan_store1_noabort(i32 %618)
  store i8 0, ptr %610, align 1
  %619 = ptrtoint ptr %611 to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 4, ptr %611, align 1
  %620 = ptrtoint ptr %612 to i32
  call void @__asan_store1_noabort(i32 %620)
  store i8 1, ptr %612, align 1
  %621 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %623 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %624 = ptrtoint ptr %623 to i32
  call void @__asan_store4_noabort(i32 %624)
  store i32 589823, ptr %623, align 4
  %conv.i.i1 = zext i8 %605 to i16
  %625 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %625)
  store i16 %conv.i.i1, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %626 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %626)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %627 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %627)
  store ptr %mm.i, ptr %buf.i.i, align 4
  %call.i.i2 = call i32 @i2c_transfer(ptr noundef %622, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i2)
  %cmp.not.i.not.i.not = icmp eq i32 %call.i.i2, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mm.i) #7
  br i1 %cmp.not.i.not.i.not, label %if.end165.i, label %if.end158.i.DRXD_init.exit_crit_edge

if.end158.i.DRXD_init.exit_crit_edge:             ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end165.i:                                      ; preds = %if.end158.i
  %call166.i = call fastcc i32 @StopOC(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166.i)
  %cmp167.i = icmp slt i32 %call166.i, 0
  br i1 %cmp167.i, label %if.end165.i.DRXD_init.exit_crit_edge, label %if.end170.i

if.end165.i.DRXD_init.exit_crit_edge:             ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRXD_init.exit

if.end170.i:                                      ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #9
  %628 = ptrtoint ptr %drxd_state.i.i to i32
  call void @__asan_store4_noabort(i32 %628)
  store i32 1, ptr %drxd_state.i.i, align 4
  %629 = ptrtoint ptr %init_done.i to i32
  call void @__asan_store4_noabort(i32 %629)
  store i32 1, ptr %init_done.i, align 4
  br label %DRXD_init.exit

DRXD_init.exit:                                   ; preds = %if.end170.i, %if.end165.i.DRXD_init.exit_crit_edge, %if.end158.i.DRXD_init.exit_crit_edge, %if.end153.i.DRXD_init.exit_crit_edge, %if.end148.i.DRXD_init.exit_crit_edge, %if.end143.i.DRXD_init.exit_crit_edge, %if.end138.i.DRXD_init.exit_crit_edge, %if.end133.i.DRXD_init.exit_crit_edge, %if.end128.i.DRXD_init.exit_crit_edge, %if.end123.i.DRXD_init.exit_crit_edge, %if.end118.i.DRXD_init.exit_crit_edge, %if.end113.i.DRXD_init.exit_crit_edge, %if.end108.i.DRXD_init.exit_crit_edge, %InitFE.exit.DRXD_init.exit_crit_edge, %if.end16.i.DRXD_init.exit_crit_edge, %if.end12.i.DRXD_init.exit_crit_edge, %if.end9.i.DRXD_init.exit_crit_edge, %if.end103.i.DRXD_init.exit_crit_edge, %DownloadMicrocode.exit, %if.then77.i.DRXD_init.exit_crit_edge, %if.end64.i.DRXD_init.exit_crit_edge, %if.end43.i.DRXD_init.exit_crit_edge, %InitCC.exit.i.DRXD_init.exit_crit_edge, %InitCC.exit.thread.i, %if.end27.i.DRXD_init.exit_crit_edge, %HI_ResetCommand.exit.i.DRXD_init.exit_crit_edge, %if.then18.i.DRXD_init.exit_crit_edge, %if.then9.i.DRXD_init.exit_crit_edge, %if.else45.i.i.DRXD_init.exit_crit_edge, %if.then40.i.i.DRXD_init.exit_crit_edge, %if.else.i.i.DRXD_init.exit_crit_edge, %Read16.exit142.thread.i.i, %if.end.i.DRXD_init.exit_crit_edge, %entry.DRXD_init.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.DRXD_init.exit_crit_edge ], [ -1, %if.then18.i.DRXD_init.exit_crit_edge ], [ %status.0.i.i, %HI_ResetCommand.exit.i.DRXD_init.exit_crit_edge ], [ -1, %if.end27.i.DRXD_init.exit_crit_edge ], [ -1, %InitCC.exit.i.DRXD_init.exit_crit_edge ], [ %call.i32.i, %if.end43.i.DRXD_init.exit_crit_edge ], [ %call.i34.i, %if.end64.i.DRXD_init.exit_crit_edge ], [ %call.i35.i, %if.then77.i.DRXD_init.exit_crit_edge ], [ %call21.i, %InitFE.exit.DRXD_init.exit_crit_edge ], [ -1, %if.end108.i.DRXD_init.exit_crit_edge ], [ -1, %if.end113.i.DRXD_init.exit_crit_edge ], [ -1, %if.end118.i.DRXD_init.exit_crit_edge ], [ -1, %if.end123.i.DRXD_init.exit_crit_edge ], [ %call.i41.i, %if.end128.i.DRXD_init.exit_crit_edge ], [ -1, %if.end133.i.DRXD_init.exit_crit_edge ], [ %call139.i, %if.end138.i.DRXD_init.exit_crit_edge ], [ %call144.i, %if.end143.i.DRXD_init.exit_crit_edge ], [ -1, %if.end148.i.DRXD_init.exit_crit_edge ], [ -1, %if.end153.i.DRXD_init.exit_crit_edge ], [ -1, %if.end158.i.DRXD_init.exit_crit_edge ], [ %call166.i, %if.end165.i.DRXD_init.exit_crit_edge ], [ 0, %if.end170.i ], [ -1, %DownloadMicrocode.exit ], [ -1, %if.then9.i.DRXD_init.exit_crit_edge ], [ -1, %InitCC.exit.thread.i ], [ -1, %if.end.i.DRXD_init.exit_crit_edge ], [ -1, %if.else.i.i.DRXD_init.exit_crit_edge ], [ -1, %Read16.exit142.thread.i.i ], [ -5, %if.else45.i.i.DRXD_init.exit_crit_edge ], [ -5, %if.then40.i.i.DRXD_init.exit_crit_edge ], [ -1, %if.end16.i.DRXD_init.exit_crit_edge ], [ -1, %if.end12.i.DRXD_init.exit_crit_edge ], [ %status.0.i, %if.end9.i.DRXD_init.exit_crit_edge ], [ -1, %if.end103.i.DRXD_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drxd_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @ConfigureMPEGOutput(ptr noundef %1, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drxd_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %msg.i.i775 = alloca %struct.i2c_msg, align 4
  %mm.i776 = alloca [6 x i8], align 1
  %msg.i.i765 = alloca %struct.i2c_msg, align 4
  %mm.i766 = alloca [6 x i8], align 1
  %msg.i.i755 = alloca %struct.i2c_msg, align 4
  %mm.i756 = alloca [6 x i8], align 1
  %msg.i.i745 = alloca %struct.i2c_msg, align 4
  %mm.i746 = alloca [6 x i8], align 1
  %msg.i.i735 = alloca %struct.i2c_msg, align 4
  %mm.i736 = alloca [6 x i8], align 1
  %msg.i.i725 = alloca %struct.i2c_msg, align 4
  %mm.i726 = alloca [6 x i8], align 1
  %msg.i.i715 = alloca %struct.i2c_msg, align 4
  %mm.i716 = alloca [6 x i8], align 1
  %msg.i.i705 = alloca %struct.i2c_msg, align 4
  %mm.i706 = alloca [6 x i8], align 1
  %msg.i.i695 = alloca %struct.i2c_msg, align 4
  %mm.i696 = alloca [6 x i8], align 1
  %msg.i.i685 = alloca %struct.i2c_msg, align 4
  %mm.i686 = alloca [6 x i8], align 1
  %msg.i.i675 = alloca %struct.i2c_msg, align 4
  %mm.i676 = alloca [6 x i8], align 1
  %msg.i.i665 = alloca %struct.i2c_msg, align 4
  %mm.i666 = alloca [6 x i8], align 1
  %msg.i.i655 = alloca %struct.i2c_msg, align 4
  %mm.i656 = alloca [6 x i8], align 1
  %msg.i.i645 = alloca %struct.i2c_msg, align 4
  %mm.i646 = alloca [6 x i8], align 1
  %msg.i.i633 = alloca %struct.i2c_msg, align 4
  %mm.i634 = alloca [6 x i8], align 1
  %msg.i.i622 = alloca %struct.i2c_msg, align 4
  %mm.i623 = alloca [6 x i8], align 1
  %msg.i.i610 = alloca %struct.i2c_msg, align 4
  %mm.i611 = alloca [6 x i8], align 1
  %msg.i.i600 = alloca %struct.i2c_msg, align 4
  %mm.i601 = alloca [6 x i8], align 1
  %msg.i.i590 = alloca %struct.i2c_msg, align 4
  %mm.i591 = alloca [6 x i8], align 1
  %msg.i.i580 = alloca %struct.i2c_msg, align 4
  %mm.i581 = alloca [6 x i8], align 1
  %msg.i.i570 = alloca %struct.i2c_msg, align 4
  %mm.i571 = alloca [6 x i8], align 1
  %msg.i.i560 = alloca %struct.i2c_msg, align 4
  %mm.i561 = alloca [6 x i8], align 1
  %msg.i.i548 = alloca %struct.i2c_msg, align 4
  %mm.i549 = alloca [6 x i8], align 1
  %msg.i.i537 = alloca %struct.i2c_msg, align 4
  %mm.i538 = alloca [6 x i8], align 1
  %msg.i.i525 = alloca %struct.i2c_msg, align 4
  %mm.i526 = alloca [6 x i8], align 1
  %msg.i.i515 = alloca %struct.i2c_msg, align 4
  %mm.i516 = alloca [6 x i8], align 1
  %msg.i.i505 = alloca %struct.i2c_msg, align 4
  %mm.i506 = alloca [6 x i8], align 1
  %msg.i.i495 = alloca %struct.i2c_msg, align 4
  %mm.i496 = alloca [6 x i8], align 1
  %msg.i.i485 = alloca %struct.i2c_msg, align 4
  %mm.i486 = alloca [6 x i8], align 1
  %msg.i.i475 = alloca %struct.i2c_msg, align 4
  %mm.i476 = alloca [6 x i8], align 1
  %msg.i.i463 = alloca %struct.i2c_msg, align 4
  %mm.i464 = alloca [6 x i8], align 1
  %msg.i.i452 = alloca %struct.i2c_msg, align 4
  %mm.i453 = alloca [6 x i8], align 1
  %msg.i.i440 = alloca %struct.i2c_msg, align 4
  %mm.i441 = alloca [6 x i8], align 1
  %msg.i.i429 = alloca %struct.i2c_msg, align 4
  %mm.i430 = alloca [6 x i8], align 1
  %msg.i.i418 = alloca %struct.i2c_msg, align 4
  %mm.i419 = alloca [6 x i8], align 1
  %msg.i.i407 = alloca %struct.i2c_msg, align 4
  %mm.i408 = alloca [6 x i8], align 1
  %msg.i.i395 = alloca %struct.i2c_msg, align 4
  %mm.i396 = alloca [6 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i = alloca [4 x i8], align 1
  %mm2.i = alloca [2 x i8], align 1
  %msg.i.i372 = alloca %struct.i2c_msg, align 4
  %mm.i373 = alloca [6 x i8], align 1
  %msg.i.i73.i = alloca %struct.i2c_msg, align 4
  %mm.i74.i = alloca [6 x i8], align 1
  %msg.i.i61.i = alloca %struct.i2c_msg, align 4
  %mm.i62.i = alloca [6 x i8], align 1
  %msg.i.i49.i341 = alloca %struct.i2c_msg, align 4
  %mm.i50.i342 = alloca [6 x i8], align 1
  %msg.i.i.i343 = alloca %struct.i2c_msg, align 4
  %mm.i.i344 = alloca [6 x i8], align 1
  %msgs.i.i.i345 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i.i346 = alloca [4 x i8], align 1
  %mm2.i.i347 = alloca [2 x i8], align 1
  %msg.i.i331 = alloca %struct.i2c_msg, align 4
  %mm.i332 = alloca [6 x i8], align 1
  %msg.i.i319 = alloca %struct.i2c_msg, align 4
  %mm.i320 = alloca [6 x i8], align 1
  %msg.i.i309 = alloca %struct.i2c_msg, align 4
  %mm.i310 = alloca [6 x i8], align 1
  %msg.i.i.i191 = alloca %struct.i2c_msg, align 4
  %mm.i.i192 = alloca [8 x i8], align 1
  %msg.i.i181 = alloca %struct.i2c_msg, align 4
  %mm.i182 = alloca [6 x i8], align 1
  %msg.i.i171 = alloca %struct.i2c_msg, align 4
  %mm.i172 = alloca [6 x i8], align 1
  %msg.i.i11.i119 = alloca %struct.i2c_msg, align 4
  %mm.i12.i120 = alloca [6 x i8], align 1
  %msg.i.i1.i121 = alloca %struct.i2c_msg, align 4
  %mm.i2.i122 = alloca [6 x i8], align 1
  %msg.i.i.i123 = alloca %struct.i2c_msg, align 4
  %mm.i.i124 = alloca [6 x i8], align 1
  %msgs.i.i.i.i125 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i.i.i126 = alloca [4 x i8], align 1
  %mm2.i.i.i127 = alloca [2 x i8], align 1
  %msg.i.i18.i = alloca %struct.i2c_msg, align 4
  %mm.i19.i = alloca [6 x i8], align 1
  %msg.i.i8.i = alloca %struct.i2c_msg, align 4
  %mm.i9.i = alloca [6 x i8], align 1
  %msg.i.i.i91 = alloca %struct.i2c_msg, align 4
  %mm.i.i92 = alloca [6 x i8], align 1
  %msgs.i.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i.i.i = alloca [4 x i8], align 1
  %mm2.i.i.i = alloca [2 x i8], align 1
  %msgs.i.i.i93 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i.i94 = alloca [4 x i8], align 1
  %mm2.i.i95 = alloca [2 x i8], align 1
  %msg.i.i59.i = alloca %struct.i2c_msg, align 4
  %mm.i60.i = alloca [6 x i8], align 1
  %msg.i.i49.i = alloca %struct.i2c_msg, align 4
  %mm.i50.i = alloca [6 x i8], align 1
  %msg.i.i37.i = alloca %struct.i2c_msg, align 4
  %mm.i38.i = alloca [6 x i8], align 1
  %msg.i.i27.i = alloca %struct.i2c_msg, align 4
  %mm.i28.i = alloca [6 x i8], align 1
  %msg.i.i.i80 = alloca %struct.i2c_msg, align 4
  %mm.i.i81 = alloca [6 x i8], align 1
  %msg.i.i.i65 = alloca %struct.i2c_msg, align 4
  %mm.i.i66 = alloca [6 x i8], align 1
  %msgs.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i.i = alloca [4 x i8], align 1
  %mm2.i.i = alloca [2 x i8], align 1
  %msg.i.i55 = alloca %struct.i2c_msg, align 4
  %mm.i56 = alloca [6 x i8], align 1
  %msg.i.i45 = alloca %struct.i2c_msg, align 4
  %mm.i46 = alloca [6 x i8], align 1
  %msg.i.i35 = alloca %struct.i2c_msg, align 4
  %mm.i36 = alloca [6 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %mm.i = alloca [6 x i8], align 1
  %msg.i.i13.i = alloca %struct.i2c_msg, align 4
  %mm.i14.i = alloca [6 x i8], align 1
  %msg.i.i.i23 = alloca %struct.i2c_msg, align 4
  %mm.i.i24 = alloca [6 x i8], align 1
  %msg.i.i.i2.i = alloca %struct.i2c_msg, align 4
  %mm.i.i3.i = alloca [6 x i8], align 1
  %msg.i.i26.i.i = alloca %struct.i2c_msg, align 4
  %mm.i27.i.i = alloca [6 x i8], align 1
  %msg.i.i16.i.i = alloca %struct.i2c_msg, align 4
  %mm.i17.i.i = alloca [6 x i8], align 1
  %msg.i.i.i.i = alloca %struct.i2c_msg, align 4
  %mm.i.i.i = alloca [6 x i8], align 1
  %msg.i.i41.i = alloca %struct.i2c_msg, align 4
  %mm.i42.i = alloca [6 x i8], align 1
  %msg.i.i31.i = alloca %struct.i2c_msg, align 4
  %mm.i32.i = alloca [6 x i8], align 1
  %msg.i.i21.i = alloca %struct.i2c_msg, align 4
  %mm.i22.i = alloca [6 x i8], align 1
  %msg.i.i11.i = alloca %struct.i2c_msg, align 4
  %mm.i12.i = alloca [6 x i8], align 1
  %msg.i.i1.i = alloca %struct.i2c_msg, align 4
  %mm.i2.i = alloca [6 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %mm.i.i = alloca [6 x i8], align 1
  %lock.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %props = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %props, ptr %dtv_property_cache, i32 456)
  %drxd_state.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %drxd_state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %drxd_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 2
  br i1 %cmp.not.i, label %do.body.i, label %entry.DRX_Stop.exit_crit_edge

entry.DRX_Stop.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Stop.exit

do.body.i:                                        ; preds = %entry
  %cscd_state.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %cscd_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cscd_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp1.not.i = icmp eq i32 %6, 2
  br i1 %cmp1.not.i, label %do.body.i.if.end6.i_crit_edge, label %if.then2.i

do.body.i.if.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then2.i:                                       ; preds = %do.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lock.i) #7
  %7 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %lock.i, align 4, !annotation !75
  %call.i = call fastcc i32 @DRX_GetLockStatus(ptr noundef %1, ptr noundef nonnull %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lock.i) #7
  br i1 %cmp3.i, label %if.then2.i.DRX_Stop.exit_crit_edge, label %if.then2.i.if.end6.i_crit_edge

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then2.i.DRX_Stop.exit_crit_edge:               ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Stop.exit

if.end6.i:                                        ; preds = %if.then2.i.if.end6.i_crit_edge, %do.body.i.if.end6.i_crit_edge
  %call7.i = tail call fastcc i32 @StopOC(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end6.i.DRX_Stop.exit_crit_edge, label %if.end10.i

if.end6.i.DRX_Stop.exit_crit_edge:                ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Stop.exit

if.end10.i:                                       ; preds = %if.end6.i
  %8 = ptrtoint ptr %drxd_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %drxd_state.i, align 4
  %call12.i = tail call fastcc i32 @ConfigureMPEGOutput(ptr noundef %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end10.i.DRX_Stop.exit_crit_edge, label %if.end15.i

if.end10.i.DRX_Stop.exit_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Stop.exit

if.end15.i:                                       ; preds = %if.end10.i
  %type_A.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 56
  %9 = ptrtoint ptr %type_A.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type_A.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %demod_address.i23.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 7, i32 5
  %11 = ptrtoint ptr %demod_address.i23.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %demod_address.i23.i, align 1
  br i1 %tobool.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end15.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i) #7
  %13 = getelementptr inbounds [6 x i8], ptr %mm.i.i, i32 0, i32 1
  %14 = getelementptr inbounds [6 x i8], ptr %mm.i.i, i32 0, i32 2
  %15 = getelementptr inbounds [6 x i8], ptr %mm.i.i, i32 0, i32 3
  %16 = getelementptr inbounds [6 x i8], ptr %mm.i.i, i32 0, i32 4
  %17 = getelementptr inbounds [6 x i8], ptr %mm.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %mm.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %mm.i.i, align 1
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 17, ptr %13, align 1
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %14, align 1
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %15, align 1
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %16, align 1
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %17, align 1
  %i2c.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %26 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 458751, ptr %26, align 4
  %conv.i.i.i = zext i8 %12 to i16
  %28 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %mm.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.not.i.not.i = icmp eq i32 %call.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i) #7
  br i1 %cmp.not.i.not.i.not.i, label %if.end20.i, label %if.then16.i.DRX_Stop.exit_crit_edge

if.then16.i.DRX_Stop.exit_crit_edge:              ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Stop.exit

if.end20.i:                                       ; preds = %if.then16.i
  %31 = ptrtoint ptr %demod_address.i23.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %demod_address.i23.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i2.i) #7
  %33 = getelementptr inbounds [6 x i8], ptr %mm.i2.i, i32 0, i32 1
  %34 = getelementptr inbounds [6 x i8], ptr %mm.i2.i, i32 0, i32 2
  %35 = ptrtoint ptr %mm.i2.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %mm.i2.i, align 1
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -128, ptr %33, align 1
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 0, ptr %34, align 1
  %38 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i1.i) #7
  %40 = getelementptr inbounds i8, ptr %msg.i.i1.i, i32 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 458751, ptr %40, align 4
  %conv.i.i5.i = zext i8 %32 to i16
  %42 = ptrtoint ptr %msg.i.i1.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i.i5.i, ptr %msg.i.i1.i, align 4
  %flags.i.i6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1.i, i32 0, i32 1
  %43 = ptrtoint ptr %flags.i.i6.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %flags.i.i6.i, align 2
  %buf.i.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1.i, i32 0, i32 3
  %44 = ptrtoint ptr %buf.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %mm.i2.i, ptr %buf.i.i7.i, align 4
  %call.i.i8.i = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i.i1.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i8.i)
  %cmp.not.i.not.i9.not.i = icmp eq i32 %call.i.i8.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i1.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i2.i) #7
  br i1 %cmp.not.i.not.i9.not.i, label %if.end24.i, label %if.end20.i.DRX_Stop.exit_crit_edge

if.end20.i.DRX_Stop.exit_crit_edge:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Stop.exit

if.end24.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %demod_address.i23.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %demod_address.i23.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i12.i) #7
  %47 = getelementptr inbounds [6 x i8], ptr %mm.i12.i, i32 0, i32 1
  %48 = getelementptr inbounds [6 x i8], ptr %mm.i12.i, i32 0, i32 2
  %49 = getelementptr inbounds [6 x i8], ptr %mm.i12.i, i32 0, i32 3
  %50 = getelementptr inbounds [6 x i8], ptr %mm.i12.i, i32 0, i32 4
  %51 = getelementptr inbounds [6 x i8], ptr %mm.i12.i, i32 0, i32 5
  %52 = ptrtoint ptr %mm.i12.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %mm.i12.i, align 1
  %53 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -128, ptr %47, align 1
  %54 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %48, align 1
  %55 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %49, align 1
  %56 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %50, align 1
  %57 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %51, align 1
  %58 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i11.i) #7
  %60 = getelementptr inbounds i8, ptr %msg.i.i11.i, i32 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 458751, ptr %60, align 4
  %conv.i.i15.i = zext i8 %46 to i16
  %62 = ptrtoint ptr %msg.i.i11.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i.i15.i, ptr %msg.i.i11.i, align 4
  %flags.i.i16.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i11.i, i32 0, i32 1
  %63 = ptrtoint ptr %flags.i.i16.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %flags.i.i16.i, align 2
  %buf.i.i17.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i11.i, i32 0, i32 3
  %64 = ptrtoint ptr %buf.i.i17.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %mm.i12.i, ptr %buf.i.i17.i, align 4
  %call.i.i18.i = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i.i11.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i11.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i12.i) #7
  br label %DRX_Stop.exit

if.else.i:                                        ; preds = %if.end15.i
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i22.i) #7
  %65 = getelementptr inbounds [6 x i8], ptr %mm.i22.i, i32 0, i32 1
  %66 = getelementptr inbounds [6 x i8], ptr %mm.i22.i, i32 0, i32 2
  %67 = ptrtoint ptr %mm.i22.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %mm.i22.i, align 1
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -128, ptr %65, align 1
  %i2c.i24.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 5
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 0, ptr %66, align 1
  %70 = ptrtoint ptr %i2c.i24.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %i2c.i24.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i21.i) #7
  %72 = getelementptr inbounds i8, ptr %msg.i.i21.i, i32 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 458751, ptr %72, align 4
  %conv.i.i25.i = zext i8 %12 to i16
  %74 = ptrtoint ptr %msg.i.i21.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i.i25.i, ptr %msg.i.i21.i, align 4
  %flags.i.i26.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i21.i, i32 0, i32 1
  %75 = ptrtoint ptr %flags.i.i26.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %flags.i.i26.i, align 2
  %buf.i.i27.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i21.i, i32 0, i32 3
  %76 = ptrtoint ptr %buf.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %mm.i22.i, ptr %buf.i.i27.i, align 4
  %call.i.i28.i = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %msg.i.i21.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i28.i)
  %cmp.not.i.not.i29.not.i = icmp eq i32 %call.i.i28.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i21.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i22.i) #7
  br i1 %cmp.not.i.not.i29.not.i, label %if.end32.i, label %if.else.i.DRX_Stop.exit_crit_edge

if.else.i.DRX_Stop.exit_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Stop.exit

if.end32.i:                                       ; preds = %if.else.i
  %77 = ptrtoint ptr %demod_address.i23.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %demod_address.i23.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i32.i) #7
  %79 = getelementptr inbounds [6 x i8], ptr %mm.i32.i, i32 0, i32 1
  %80 = getelementptr inbounds [6 x i8], ptr %mm.i32.i, i32 0, i32 2
  %81 = getelementptr inbounds [6 x i8], ptr %mm.i32.i, i32 0, i32 3
  %82 = getelementptr inbounds [6 x i8], ptr %mm.i32.i, i32 0, i32 4
  %83 = getelementptr inbounds [6 x i8], ptr %mm.i32.i, i32 0, i32 5
  %84 = ptrtoint ptr %mm.i32.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %mm.i32.i, align 1
  %85 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -128, ptr %79, align 1
  %86 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 2, ptr %80, align 1
  %87 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %81, align 1
  %88 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %82, align 1
  %89 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %83, align 1
  %90 = ptrtoint ptr %i2c.i24.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i2c.i24.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i31.i) #7
  %92 = getelementptr inbounds i8, ptr %msg.i.i31.i, i32 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 458751, ptr %92, align 4
  %conv.i.i35.i = zext i8 %78 to i16
  %94 = ptrtoint ptr %msg.i.i31.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv.i.i35.i, ptr %msg.i.i31.i, align 4
  %flags.i.i36.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i31.i, i32 0, i32 1
  %95 = ptrtoint ptr %flags.i.i36.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %flags.i.i36.i, align 2
  %buf.i.i37.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i31.i, i32 0, i32 3
  %96 = ptrtoint ptr %buf.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %mm.i32.i, ptr %buf.i.i37.i, align 4
  %call.i.i38.i = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %msg.i.i31.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i38.i)
  %cmp.not.i.not.i39.not.i = icmp eq i32 %call.i.i38.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i31.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i32.i) #7
  br i1 %cmp.not.i.not.i39.not.i, label %if.end36.i, label %if.end32.i.DRX_Stop.exit_crit_edge

if.end32.i.DRX_Stop.exit_crit_edge:               ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Stop.exit

if.end36.i:                                       ; preds = %if.end32.i
  %97 = ptrtoint ptr %demod_address.i23.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %demod_address.i23.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i42.i) #7
  %99 = getelementptr inbounds [6 x i8], ptr %mm.i42.i, i32 0, i32 1
  %100 = getelementptr inbounds [6 x i8], ptr %mm.i42.i, i32 0, i32 2
  %101 = getelementptr inbounds [6 x i8], ptr %mm.i42.i, i32 0, i32 3
  %102 = getelementptr inbounds [6 x i8], ptr %mm.i42.i, i32 0, i32 4
  %103 = getelementptr inbounds [6 x i8], ptr %mm.i42.i, i32 0, i32 5
  %104 = ptrtoint ptr %mm.i42.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %mm.i42.i, align 1
  %105 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %99, align 1
  %106 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %100, align 1
  %107 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %101, align 1
  %108 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %102, align 1
  %109 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %103, align 1
  %110 = ptrtoint ptr %i2c.i24.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i2c.i24.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i41.i) #7
  %112 = getelementptr inbounds i8, ptr %msg.i.i41.i, i32 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 458751, ptr %112, align 4
  %conv.i.i45.i = zext i8 %98 to i16
  %114 = ptrtoint ptr %msg.i.i41.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv.i.i45.i, ptr %msg.i.i41.i, align 4
  %flags.i.i46.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i41.i, i32 0, i32 1
  %115 = ptrtoint ptr %flags.i.i46.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %flags.i.i46.i, align 2
  %buf.i.i47.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i41.i, i32 0, i32 3
  %116 = ptrtoint ptr %buf.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %mm.i42.i, ptr %buf.i.i47.i, align 4
  %call.i.i48.i = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %msg.i.i41.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i48.i)
  %cmp.not.i.not.i49.not.i = icmp eq i32 %call.i.i48.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i41.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i42.i) #7
  br i1 %cmp.not.i.not.i49.not.i, label %if.end40.i, label %if.end36.i.DRX_Stop.exit_crit_edge

if.end36.i.DRX_Stop.exit_crit_edge:               ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Stop.exit

if.end40.i:                                       ; preds = %if.end36.i
  %117 = ptrtoint ptr %demod_address.i23.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %demod_address.i23.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i56) #7
  %119 = getelementptr inbounds [6 x i8], ptr %mm.i56, i32 0, i32 1
  %120 = getelementptr inbounds [6 x i8], ptr %mm.i56, i32 0, i32 2
  %121 = getelementptr inbounds [6 x i8], ptr %mm.i56, i32 0, i32 3
  %122 = getelementptr inbounds [6 x i8], ptr %mm.i56, i32 0, i32 4
  %123 = getelementptr inbounds [6 x i8], ptr %mm.i56, i32 0, i32 5
  %124 = ptrtoint ptr %mm.i56 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %mm.i56, align 1
  %125 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 64, ptr %119, align 1
  %126 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %120, align 1
  %127 = ptrtoint ptr %121 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %121, align 1
  %128 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %122, align 1
  %129 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %123, align 1
  %130 = ptrtoint ptr %i2c.i24.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %i2c.i24.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i55) #7
  %132 = getelementptr inbounds i8, ptr %msg.i.i55, i32 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 458751, ptr %132, align 4
  %conv.i.i59 = zext i8 %118 to i16
  %134 = ptrtoint ptr %msg.i.i55 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv.i.i59, ptr %msg.i.i55, align 4
  %flags.i.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i55, i32 0, i32 1
  %135 = ptrtoint ptr %flags.i.i60 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 0, ptr %flags.i.i60, align 2
  %buf.i.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i55, i32 0, i32 3
  %136 = ptrtoint ptr %buf.i.i61 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %mm.i56, ptr %buf.i.i61, align 4
  %call.i.i62 = call i32 @i2c_transfer(ptr noundef %131, ptr noundef nonnull %msg.i.i55, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i62)
  %cmp.not.i.not.i63.not = icmp eq i32 %call.i.i62, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i55) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i56) #7
  br i1 %cmp.not.i.not.i63.not, label %if.end44.i, label %if.end40.i.DRX_Stop.exit_crit_edge

if.end40.i.DRX_Stop.exit_crit_edge:               ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Stop.exit

if.end44.i:                                       ; preds = %if.end40.i
  %137 = ptrtoint ptr %demod_address.i23.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %demod_address.i23.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i46) #7
  %139 = getelementptr inbounds [6 x i8], ptr %mm.i46, i32 0, i32 1
  %140 = getelementptr inbounds [6 x i8], ptr %mm.i46, i32 0, i32 2
  %141 = getelementptr inbounds [6 x i8], ptr %mm.i46, i32 0, i32 3
  %142 = getelementptr inbounds [6 x i8], ptr %mm.i46, i32 0, i32 4
  %143 = getelementptr inbounds [6 x i8], ptr %mm.i46, i32 0, i32 5
  %144 = ptrtoint ptr %mm.i46 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %mm.i46, align 1
  %145 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 -128, ptr %139, align 1
  %146 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %140, align 1
  %147 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %141, align 1
  %148 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %142, align 1
  %149 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %143, align 1
  %150 = ptrtoint ptr %i2c.i24.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %i2c.i24.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i45) #7
  %152 = getelementptr inbounds i8, ptr %msg.i.i45, i32 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 458751, ptr %152, align 4
  %conv.i.i49 = zext i8 %138 to i16
  %154 = ptrtoint ptr %msg.i.i45 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv.i.i49, ptr %msg.i.i45, align 4
  %flags.i.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i45, i32 0, i32 1
  %155 = ptrtoint ptr %flags.i.i50 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 0, ptr %flags.i.i50, align 2
  %buf.i.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i45, i32 0, i32 3
  %156 = ptrtoint ptr %buf.i.i51 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %mm.i46, ptr %buf.i.i51, align 4
  %call.i.i52 = call i32 @i2c_transfer(ptr noundef %151, ptr noundef nonnull %msg.i.i45, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i52)
  %cmp.not.i.not.i53.not = icmp eq i32 %call.i.i52, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i45) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i46) #7
  br i1 %cmp.not.i.not.i53.not, label %if.end48.i, label %if.end44.i.DRX_Stop.exit_crit_edge

if.end44.i.DRX_Stop.exit_crit_edge:               ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Stop.exit

if.end48.i:                                       ; preds = %if.end44.i
  %157 = ptrtoint ptr %demod_address.i23.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %demod_address.i23.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i36) #7
  %159 = getelementptr inbounds [6 x i8], ptr %mm.i36, i32 0, i32 1
  %160 = getelementptr inbounds [6 x i8], ptr %mm.i36, i32 0, i32 2
  %161 = getelementptr inbounds [6 x i8], ptr %mm.i36, i32 0, i32 3
  %162 = getelementptr inbounds [6 x i8], ptr %mm.i36, i32 0, i32 4
  %163 = getelementptr inbounds [6 x i8], ptr %mm.i36, i32 0, i32 5
  %164 = ptrtoint ptr %mm.i36 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %mm.i36, align 1
  %165 = ptrtoint ptr %159 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 -64, ptr %159, align 1
  %166 = ptrtoint ptr %160 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 1, ptr %160, align 1
  %167 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %161, align 1
  %168 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %162, align 1
  %169 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %163, align 1
  %170 = ptrtoint ptr %i2c.i24.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %i2c.i24.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i35) #7
  %172 = getelementptr inbounds i8, ptr %msg.i.i35, i32 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 458751, ptr %172, align 4
  %conv.i.i39 = zext i8 %158 to i16
  %174 = ptrtoint ptr %msg.i.i35 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv.i.i39, ptr %msg.i.i35, align 4
  %flags.i.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i35, i32 0, i32 1
  %175 = ptrtoint ptr %flags.i.i40 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 0, ptr %flags.i.i40, align 2
  %buf.i.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i35, i32 0, i32 3
  %176 = ptrtoint ptr %buf.i.i41 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %mm.i36, ptr %buf.i.i41, align 4
  %call.i.i42 = call i32 @i2c_transfer(ptr noundef %171, ptr noundef nonnull %msg.i.i35, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i42)
  %cmp.not.i.not.i43.not = icmp eq i32 %call.i.i42, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i35) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i36) #7
  br i1 %cmp.not.i.not.i43.not, label %if.end52.i, label %if.end48.i.DRX_Stop.exit_crit_edge

if.end48.i.DRX_Stop.exit_crit_edge:               ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Stop.exit

if.end52.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %demod_address.i23.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %demod_address.i23.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i) #7
  %179 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 1
  %180 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 2
  %181 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 3
  %182 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 4
  %183 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 5
  %184 = ptrtoint ptr %mm.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 0, ptr %mm.i, align 1
  %185 = ptrtoint ptr %179 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 17, ptr %179, align 1
  %186 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 2, ptr %180, align 1
  %187 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %181, align 1
  %188 = ptrtoint ptr %182 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %182, align 1
  %189 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 0, ptr %183, align 1
  %190 = ptrtoint ptr %i2c.i24.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %i2c.i24.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %192 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 458751, ptr %192, align 4
  %conv.i.i33 = zext i8 %178 to i16
  %194 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv.i.i33, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %195 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %196 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %mm.i, ptr %buf.i.i, align 4
  %call.i.i34 = call i32 @i2c_transfer(ptr noundef %191, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i) #7
  br label %DRX_Stop.exit

DRX_Stop.exit:                                    ; preds = %if.end52.i, %if.end48.i.DRX_Stop.exit_crit_edge, %if.end44.i.DRX_Stop.exit_crit_edge, %if.end40.i.DRX_Stop.exit_crit_edge, %if.end36.i.DRX_Stop.exit_crit_edge, %if.end32.i.DRX_Stop.exit_crit_edge, %if.else.i.DRX_Stop.exit_crit_edge, %if.end24.i, %if.end20.i.DRX_Stop.exit_crit_edge, %if.then16.i.DRX_Stop.exit_crit_edge, %if.end10.i.DRX_Stop.exit_crit_edge, %if.end6.i.DRX_Stop.exit_crit_edge, %if.then2.i.DRX_Stop.exit_crit_edge, %entry.DRX_Stop.exit_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %197 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %198, null
  br i1 %tobool.not, label %DRX_Stop.exit.if.end11_crit_edge, label %if.then

DRX_Stop.exit.if.end11_crit_edge:                 ; preds = %DRX_Stop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %DRX_Stop.exit
  %call4 = call i32 %198(ptr noundef %fe) #7
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %199 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool6.not = icmp eq ptr %200, null
  br i1 %tobool6.not, label %if.then.if.end11_crit_edge, label %if.then7

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 %200(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then.if.end11_crit_edge, %DRX_Stop.exit.if.end11_crit_edge
  call void @msleep(i32 noundef 200) #7
  %201 = ptrtoint ptr %drxd_state.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %drxd_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %202)
  %cmp2.not.i = icmp eq i32 %202, 1
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end11.DRX_Start.exit_crit_edge

if.end11.DRX_Start.exit_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end4.i:                                        ; preds = %if.end11
  %type_A.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 56
  %203 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool.not.i.i = icmp eq i32 %204, 0
  %demod_address.i18.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 7, i32 5
  %205 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %demod_address.i18.i.i, align 1
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i.i) #7
  %207 = getelementptr inbounds [6 x i8], ptr %mm.i.i.i, i32 0, i32 1
  %208 = getelementptr inbounds [6 x i8], ptr %mm.i.i.i, i32 0, i32 2
  %209 = getelementptr inbounds [6 x i8], ptr %mm.i.i.i, i32 0, i32 3
  %210 = getelementptr inbounds [6 x i8], ptr %mm.i.i.i, i32 0, i32 4
  %211 = getelementptr inbounds [6 x i8], ptr %mm.i.i.i, i32 0, i32 5
  %212 = ptrtoint ptr %mm.i.i.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 16, ptr %mm.i.i.i, align 1
  %213 = ptrtoint ptr %207 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 17, ptr %207, align 1
  %214 = ptrtoint ptr %208 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 2, ptr %208, align 1
  %215 = ptrtoint ptr %209 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %209, align 1
  %216 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 100, ptr %210, align 1
  %217 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 6, ptr %211, align 1
  %i2c.i.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 5
  %218 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i.i) #7
  %220 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 458751, ptr %220, align 4
  %conv.i.i.i.i = zext i8 %206 to i16
  %222 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %conv.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 1
  %223 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 0, ptr %flags.i.i.i.i, align 2
  %buf.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i, i32 0, i32 3
  %224 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %mm.i.i.i, ptr %buf.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @i2c_transfer(ptr noundef %219, ptr noundef nonnull %msg.i.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i.i) #7
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i17.i.i) #7
  %225 = getelementptr inbounds [6 x i8], ptr %mm.i17.i.i, i32 0, i32 1
  %226 = getelementptr inbounds [6 x i8], ptr %mm.i17.i.i, i32 0, i32 2
  %227 = getelementptr inbounds [6 x i8], ptr %mm.i17.i.i, i32 0, i32 3
  %228 = getelementptr inbounds [6 x i8], ptr %mm.i17.i.i, i32 0, i32 4
  %229 = getelementptr inbounds [6 x i8], ptr %mm.i17.i.i, i32 0, i32 5
  %230 = ptrtoint ptr %mm.i17.i.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 100, ptr %mm.i17.i.i, align 1
  %231 = ptrtoint ptr %225 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 17, ptr %225, align 1
  %232 = ptrtoint ptr %226 to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 2, ptr %226, align 1
  %233 = ptrtoint ptr %227 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 6, ptr %227, align 1
  %234 = ptrtoint ptr %228 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 100, ptr %228, align 1
  %235 = ptrtoint ptr %229 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 6, ptr %229, align 1
  %i2c.i19.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 5
  %236 = ptrtoint ptr %i2c.i19.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %i2c.i19.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i16.i.i) #7
  %238 = getelementptr inbounds i8, ptr %msg.i.i16.i.i, i32 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 458751, ptr %238, align 4
  %conv.i.i20.i.i = zext i8 %206 to i16
  %240 = ptrtoint ptr %msg.i.i16.i.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 %conv.i.i20.i.i, ptr %msg.i.i16.i.i, align 4
  %flags.i.i21.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i16.i.i, i32 0, i32 1
  %241 = ptrtoint ptr %flags.i.i21.i.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 0, ptr %flags.i.i21.i.i, align 2
  %buf.i.i22.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i16.i.i, i32 0, i32 3
  %242 = ptrtoint ptr %buf.i.i22.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %mm.i17.i.i, ptr %buf.i.i22.i.i, align 4
  %call.i.i23.i.i = call i32 @i2c_transfer(ptr noundef %237, ptr noundef nonnull %msg.i.i16.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i16.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i17.i.i) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %status.0.in.in.i.i = phi i32 [ %call.i.i.i.i, %if.then.i.i ], [ %call.i.i23.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status.0.in.in.i.i)
  %status.0.in.not.i.i = icmp eq i32 %status.0.in.in.i.i, 1
  br i1 %status.0.in.not.i.i, label %if.end4.i.i, label %if.end.i.i.DRX_Start.exit_crit_edge

if.end.i.i.DRX_Start.exit_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %m_ResetECRAM.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 46
  %243 = ptrtoint ptr %m_ResetECRAM.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %m_ResetECRAM.i.i, align 4
  %call3.i.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %244) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp5.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp5.i.i, label %if.end4.i.i.DRX_Start.exit_crit_edge, label %ResetECOD.exit.i

if.end4.i.i.DRX_Start.exit_crit_edge:             ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

ResetECOD.exit.i:                                 ; preds = %if.end4.i.i
  %245 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i27.i.i) #7
  %247 = getelementptr inbounds [6 x i8], ptr %mm.i27.i.i, i32 0, i32 1
  %248 = getelementptr inbounds [6 x i8], ptr %mm.i27.i.i, i32 0, i32 2
  %249 = getelementptr inbounds [6 x i8], ptr %mm.i27.i.i, i32 0, i32 3
  %250 = getelementptr inbounds [6 x i8], ptr %mm.i27.i.i, i32 0, i32 4
  %251 = getelementptr inbounds [6 x i8], ptr %mm.i27.i.i, i32 0, i32 5
  %252 = ptrtoint ptr %mm.i27.i.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 0, ptr %mm.i27.i.i, align 1
  %253 = ptrtoint ptr %247 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 17, ptr %247, align 1
  %254 = ptrtoint ptr %248 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 2, ptr %248, align 1
  %255 = ptrtoint ptr %249 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 0, ptr %249, align 1
  %256 = ptrtoint ptr %250 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 1, ptr %250, align 1
  %257 = ptrtoint ptr %251 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 0, ptr %251, align 1
  %i2c.i29.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 5
  %258 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i26.i.i) #7
  %260 = getelementptr inbounds i8, ptr %msg.i.i26.i.i, i32 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 458751, ptr %260, align 4
  %conv.i.i30.i.i = zext i8 %246 to i16
  %262 = ptrtoint ptr %msg.i.i26.i.i to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %conv.i.i30.i.i, ptr %msg.i.i26.i.i, align 4
  %flags.i.i31.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i26.i.i, i32 0, i32 1
  %263 = ptrtoint ptr %flags.i.i31.i.i to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 0, ptr %flags.i.i31.i.i, align 2
  %buf.i.i32.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i26.i.i, i32 0, i32 3
  %264 = ptrtoint ptr %buf.i.i32.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %mm.i27.i.i, ptr %buf.i.i32.i.i, align 4
  %call.i.i33.i.i = call i32 @i2c_transfer(ptr noundef %259, ptr noundef nonnull %msg.i.i26.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i33.i.i)
  %cmp.not.i.not.i34.i.not.i = icmp eq i32 %call.i.i33.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i26.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i27.i.i) #7
  br i1 %cmp.not.i.not.i34.i.not.i, label %if.end7.i, label %ResetECOD.exit.i.DRX_Start.exit_crit_edge

ResetECOD.exit.i.DRX_Start.exit_crit_edge:        ; preds = %ResetECOD.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end7.i:                                        ; preds = %ResetECOD.exit.i
  %265 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool.not.i26 = icmp eq i32 %266, 0
  br i1 %tobool.not.i26, label %if.else13.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end7.i
  %m_InitSC.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 44
  %267 = ptrtoint ptr %m_InitSC.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %m_InitSC.i.i, align 4
  %call.i.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %268) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp10.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp10.i, label %if.then8.i.DRX_Start.exit_crit_edge, label %if.then8.i.if.end34.i_crit_edge

if.then8.i.if.end34.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then8.i.DRX_Start.exit_crit_edge:              ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.else13.i:                                      ; preds = %if.end7.i
  %269 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i3.i) #7
  %271 = getelementptr inbounds [6 x i8], ptr %mm.i.i3.i, i32 0, i32 1
  %272 = getelementptr inbounds [6 x i8], ptr %mm.i.i3.i, i32 0, i32 2
  %273 = getelementptr inbounds [6 x i8], ptr %mm.i.i3.i, i32 0, i32 3
  %274 = getelementptr inbounds [6 x i8], ptr %mm.i.i3.i, i32 0, i32 4
  %275 = getelementptr inbounds [6 x i8], ptr %mm.i.i3.i, i32 0, i32 5
  %276 = ptrtoint ptr %mm.i.i3.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 0, ptr %mm.i.i3.i, align 1
  %277 = ptrtoint ptr %271 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 1, ptr %271, align 1
  %278 = ptrtoint ptr %272 to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 1, ptr %272, align 1
  %279 = ptrtoint ptr %273 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 0, ptr %273, align 1
  %280 = ptrtoint ptr %274 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 1, ptr %274, align 1
  %281 = ptrtoint ptr %275 to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 0, ptr %275, align 1
  %282 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i2.i) #7
  %284 = getelementptr inbounds i8, ptr %msg.i.i.i2.i, i32 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 458751, ptr %284, align 4
  %conv.i.i.i5.i = zext i8 %270 to i16
  %286 = ptrtoint ptr %msg.i.i.i2.i to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 %conv.i.i.i5.i, ptr %msg.i.i.i2.i, align 4
  %flags.i.i.i6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i2.i, i32 0, i32 1
  %287 = ptrtoint ptr %flags.i.i.i6.i to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 0, ptr %flags.i.i.i6.i, align 2
  %buf.i.i.i7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i2.i, i32 0, i32 3
  %288 = ptrtoint ptr %buf.i.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %mm.i.i3.i, ptr %buf.i.i.i7.i, align 4
  %call.i.i.i8.i = call i32 @i2c_transfer(ptr noundef %283, ptr noundef nonnull %msg.i.i.i2.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i8.i)
  %cmp.not.i.not.i.i.not.i = icmp eq i32 %call.i.i.i8.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i2.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i3.i) #7
  br i1 %cmp.not.i.not.i.i.not.i, label %if.end17.i, label %if.else13.i.DRX_Start.exit_crit_edge

if.else13.i.DRX_Start.exit_crit_edge:             ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end17.i:                                       ; preds = %if.else13.i
  %m_InitCP.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 41
  %289 = ptrtoint ptr %m_InitCP.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %m_InitCP.i.i, align 4
  %call.i9.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %290) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %cmp19.i = icmp slt i32 %call.i9.i, 0
  br i1 %cmp19.i, label %if.end17.i.DRX_Start.exit_crit_edge, label %if.end21.i

if.end17.i.DRX_Start.exit_crit_edge:              ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end21.i:                                       ; preds = %if.end17.i
  %call22.i = call fastcc i32 @InitCE(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end21.i.DRX_Start.exit_crit_edge, label %if.end25.i

if.end21.i.DRX_Start.exit_crit_edge:              ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end25.i:                                       ; preds = %if.end21.i
  %m_InitEQ.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 43
  %291 = ptrtoint ptr %m_InitEQ.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %m_InitEQ.i.i, align 4
  %call.i10.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %292) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %cmp27.i = icmp slt i32 %call.i10.i, 0
  br i1 %cmp27.i, label %if.end25.i.DRX_Start.exit_crit_edge, label %if.end29.i

if.end25.i.DRX_Start.exit_crit_edge:              ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end29.i:                                       ; preds = %if.end25.i
  %m_InitSC.i11.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 44
  %293 = ptrtoint ptr %m_InitSC.i11.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %m_InitSC.i11.i, align 4
  %call.i12.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %294) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %cmp31.i = icmp slt i32 %call.i12.i, 0
  br i1 %cmp31.i, label %if.end29.i.DRX_Start.exit_crit_edge, label %if.end29.i.if.end34.i_crit_edge

if.end29.i.if.end34.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.end29.i.DRX_Start.exit_crit_edge:              ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end34.i:                                       ; preds = %if.end29.i.if.end34.i_crit_edge, %if.then8.i.if.end34.i_crit_edge
  %if_agc_cfg.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 26
  %call35.i = call fastcc i32 @SetCfgIfAgc(ptr noundef %1, ptr noundef %if_agc_cfg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %if.end34.i.DRX_Start.exit_crit_edge, label %if.end38.i

if.end34.i.DRX_Start.exit_crit_edge:              ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end38.i:                                       ; preds = %if.end34.i
  %rf_agc_cfg.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 27
  %call39.i = call fastcc i32 @SetCfgRfAgc(ptr noundef %1, ptr noundef %rf_agc_cfg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %if.end38.i.DRX_Start.exit_crit_edge, label %if.end42.i

if.end38.i.DRX_Start.exit_crit_edge:              ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end42.i:                                       ; preds = %if.end38.i
  %inversion.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 2, i32 4
  %295 = ptrtoint ptr %inversion.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %inversion.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %296)
  %cmp44.i = icmp eq i32 %296, 1
  %conv.i = zext i1 %cmp44.i to i32
  %transmission_mode.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 2, i32 6
  %297 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %transmission_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %cond.i = icmp eq i32 %298, 0
  %299 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %tobool64.not.i = icmp eq i32 %300, 0
  br i1 %cond.i, label %sw.bb59.i, label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end42.i
  br i1 %tobool64.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %if.then52.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then52.i:                                      ; preds = %sw.bb.i
  %301 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i24) #7
  %303 = getelementptr inbounds [6 x i8], ptr %mm.i.i24, i32 0, i32 1
  %304 = getelementptr inbounds [6 x i8], ptr %mm.i.i24, i32 0, i32 2
  %305 = getelementptr inbounds [6 x i8], ptr %mm.i.i24, i32 0, i32 3
  %306 = getelementptr inbounds [6 x i8], ptr %mm.i.i24, i32 0, i32 4
  %307 = getelementptr inbounds [6 x i8], ptr %mm.i.i24, i32 0, i32 5
  %308 = ptrtoint ptr %mm.i.i24 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 16, ptr %mm.i.i24, align 1
  %309 = ptrtoint ptr %303 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 1, ptr %303, align 1
  %310 = ptrtoint ptr %304 to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 2, ptr %304, align 1
  %311 = ptrtoint ptr %305 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 0, ptr %305, align 1
  %312 = ptrtoint ptr %306 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 0, ptr %306, align 1
  %313 = ptrtoint ptr %307 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 0, ptr %307, align 1
  %314 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i23) #7
  %316 = getelementptr inbounds i8, ptr %msg.i.i.i23, i32 4
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 458751, ptr %316, align 4
  %conv.i.i.i27 = zext i8 %302 to i16
  %318 = ptrtoint ptr %msg.i.i.i23 to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 %conv.i.i.i27, ptr %msg.i.i.i23, align 4
  %flags.i.i.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i23, i32 0, i32 1
  %319 = ptrtoint ptr %flags.i.i.i28 to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 0, ptr %flags.i.i.i28, align 2
  %buf.i.i.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i23, i32 0, i32 3
  %320 = ptrtoint ptr %buf.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr %mm.i.i24, ptr %buf.i.i.i29, align 4
  %call.i.i.i30 = call i32 @i2c_transfer(ptr noundef %315, ptr noundef nonnull %msg.i.i.i23, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i30)
  %cmp.not.i.not.i.not.i31 = icmp eq i32 %call.i.i.i30, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i23) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i24) #7
  br i1 %cmp.not.i.not.i.not.i31, label %if.end57.i, label %if.then52.i.sw.epilog.i_crit_edge

if.then52.i.sw.epilog.i_crit_edge:                ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end57.i:                                       ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb59.i:                                        ; preds = %if.end42.i
  br i1 %tobool64.not.i, label %sw.bb59.i.sw.epilog.i_crit_edge, label %if.then65.i

sw.bb59.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.then65.i:                                      ; preds = %sw.bb59.i
  %321 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i776) #7
  %323 = getelementptr inbounds [6 x i8], ptr %mm.i776, i32 0, i32 1
  %324 = getelementptr inbounds [6 x i8], ptr %mm.i776, i32 0, i32 2
  %325 = getelementptr inbounds [6 x i8], ptr %mm.i776, i32 0, i32 3
  %326 = getelementptr inbounds [6 x i8], ptr %mm.i776, i32 0, i32 4
  %327 = getelementptr inbounds [6 x i8], ptr %mm.i776, i32 0, i32 5
  %328 = ptrtoint ptr %mm.i776 to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 16, ptr %mm.i776, align 1
  %329 = ptrtoint ptr %323 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 1, ptr %323, align 1
  %330 = ptrtoint ptr %324 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 2, ptr %324, align 1
  %331 = ptrtoint ptr %325 to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 0, ptr %325, align 1
  %332 = ptrtoint ptr %326 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 1, ptr %326, align 1
  %333 = ptrtoint ptr %327 to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 0, ptr %327, align 1
  %334 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i775) #7
  %336 = getelementptr inbounds i8, ptr %msg.i.i775, i32 4
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 458751, ptr %336, align 4
  %conv.i.i779 = zext i8 %322 to i16
  %338 = ptrtoint ptr %msg.i.i775 to i32
  call void @__asan_store2_noabort(i32 %338)
  store i16 %conv.i.i779, ptr %msg.i.i775, align 4
  %flags.i.i780 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i775, i32 0, i32 1
  %339 = ptrtoint ptr %flags.i.i780 to i32
  call void @__asan_store2_noabort(i32 %339)
  store i16 0, ptr %flags.i.i780, align 2
  %buf.i.i781 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i775, i32 0, i32 3
  %340 = ptrtoint ptr %buf.i.i781 to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr %mm.i776, ptr %buf.i.i781, align 4
  %call.i.i782 = call i32 @i2c_transfer(ptr noundef %335, ptr noundef nonnull %msg.i.i775, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i782)
  %cmp.not.i.not.i783.not = icmp eq i32 %call.i.i782, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i775) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i776) #7
  br i1 %cmp.not.i.not.i783.not, label %if.end70.i, label %if.then65.i.sw.epilog.i_crit_edge

if.then65.i.sw.epilog.i_crit_edge:                ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end70.i:                                       ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end70.i, %if.then65.i.sw.epilog.i_crit_edge, %sw.bb59.i.sw.epilog.i_crit_edge, %if.end57.i, %if.then52.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %status.0.i = phi i32 [ -1, %if.then52.i.sw.epilog.i_crit_edge ], [ 0, %if.end57.i ], [ %call39.i, %sw.bb.i.sw.epilog.i_crit_edge ], [ -1, %if.then65.i.sw.epilog.i_crit_edge ], [ 0, %if.end70.i ], [ %call39.i, %sw.bb59.i.sw.epilog.i_crit_edge ]
  %transmissionParams.0.i = phi i16 [ 1, %if.then52.i.sw.epilog.i_crit_edge ], [ 1, %if.end57.i ], [ 1, %sw.bb.i.sw.epilog.i_crit_edge ], [ 0, %if.then65.i.sw.epilog.i_crit_edge ], [ 0, %if.end70.i ], [ 0, %sw.bb59.i.sw.epilog.i_crit_edge ]
  %qpskSnCeGain.0.i.off0 = phi i8 [ 0, %if.then52.i.sw.epilog.i_crit_edge ], [ 99, %if.end57.i ], [ 0, %sw.bb.i.sw.epilog.i_crit_edge ], [ 0, %if.then65.i.sw.epilog.i_crit_edge ], [ 97, %if.end70.i ], [ 0, %sw.bb59.i.sw.epilog.i_crit_edge ]
  %qam16SnCeGain.0.i.off0 = phi i8 [ 0, %if.then52.i.sw.epilog.i_crit_edge ], [ 83, %if.end57.i ], [ 0, %sw.bb.i.sw.epilog.i_crit_edge ], [ 0, %if.then65.i.sw.epilog.i_crit_edge ], [ 71, %if.end70.i ], [ 0, %sw.bb59.i.sw.epilog.i_crit_edge ]
  %qam64SnCeGain.0.i.off0 = phi i8 [ 0, %if.then52.i.sw.epilog.i_crit_edge ], [ 67, %if.end57.i ], [ 0, %sw.bb.i.sw.epilog.i_crit_edge ], [ 0, %if.then65.i.sw.epilog.i_crit_edge ], [ 65, %if.end70.i ], [ 0, %sw.bb59.i.sw.epilog.i_crit_edge ]
  %guard_interval.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 2, i32 8
  %341 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %guard_interval.i, align 4
  %343 = zext i32 %342 to i64
  call void @__sanitizer_cov_trace_switch(i64 %343, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %342, label %sw.default88.i [
    i32 3, label %sw.bb72.i
    i32 2, label %sw.bb76.i
    i32 1, label %sw.bb80.i
    i32 0, label %sw.epilog.i.sw.epilog95.i_crit_edge
  ]

sw.epilog.i.sw.epilog95.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog95.i

sw.bb72.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %344 = or i16 %transmissionParams.0.i, 12
  br label %sw.epilog95.i

sw.bb76.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %345 = or i16 %transmissionParams.0.i, 8
  br label %sw.epilog95.i

sw.bb80.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %346 = or i16 %transmissionParams.0.i, 4
  br label %sw.epilog95.i

sw.default88.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %347 = or i16 %transmissionParams.0.i, 12
  br label %sw.epilog95.i

sw.epilog95.i:                                    ; preds = %sw.default88.i, %sw.bb80.i, %sw.bb76.i, %sw.bb72.i, %sw.epilog.i.sw.epilog95.i_crit_edge
  %transmissionParams.1.i = phi i16 [ %347, %sw.default88.i ], [ %346, %sw.bb80.i ], [ %345, %sw.bb76.i ], [ %344, %sw.bb72.i ], [ %transmissionParams.0.i, %sw.epilog.i.sw.epilog95.i_crit_edge ]
  %hierarchy.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 2, i32 9
  %348 = ptrtoint ptr %hierarchy.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %hierarchy.i, align 4
  %350 = zext i32 %349 to i64
  call void @__sanitizer_cov_trace_switch(i64 %350, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %349, label %sw.default151.i [
    i32 1, label %sw.bb96.i
    i32 2, label %sw.bb114.i
    i32 3, label %sw.bb132.i
  ]

sw.bb96.i:                                        ; preds = %sw.epilog95.i
  %351 = or i16 %transmissionParams.1.i, 64
  %352 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %353)
  %tobool101.not.i = icmp eq i32 %353, 0
  br i1 %tobool101.not.i, label %sw.bb96.i.sw.epilog172.i_crit_edge, label %if.then102.i

sw.bb96.i.sw.epilog172.i_crit_edge:               ; preds = %sw.bb96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog172.i

if.then102.i:                                     ; preds = %sw.bb96.i
  %354 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i766) #7
  %356 = getelementptr inbounds [6 x i8], ptr %mm.i766, i32 0, i32 1
  %357 = getelementptr inbounds [6 x i8], ptr %mm.i766, i32 0, i32 2
  %358 = getelementptr inbounds [6 x i8], ptr %mm.i766, i32 0, i32 3
  %359 = getelementptr inbounds [6 x i8], ptr %mm.i766, i32 0, i32 4
  %360 = getelementptr inbounds [6 x i8], ptr %mm.i766, i32 0, i32 5
  %361 = ptrtoint ptr %mm.i766 to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 71, ptr %mm.i766, align 1
  %362 = ptrtoint ptr %356 to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 -63, ptr %356, align 1
  %363 = ptrtoint ptr %357 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 1, ptr %357, align 1
  %364 = ptrtoint ptr %358 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 0, ptr %358, align 1
  %365 = ptrtoint ptr %359 to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 1, ptr %359, align 1
  %366 = ptrtoint ptr %360 to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 0, ptr %360, align 1
  %367 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i765) #7
  %369 = getelementptr inbounds i8, ptr %msg.i.i765, i32 4
  %370 = ptrtoint ptr %369 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 458751, ptr %369, align 4
  %conv.i.i769 = zext i8 %355 to i16
  %371 = ptrtoint ptr %msg.i.i765 to i32
  call void @__asan_store2_noabort(i32 %371)
  store i16 %conv.i.i769, ptr %msg.i.i765, align 4
  %flags.i.i770 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i765, i32 0, i32 1
  %372 = ptrtoint ptr %flags.i.i770 to i32
  call void @__asan_store2_noabort(i32 %372)
  store i16 0, ptr %flags.i.i770, align 2
  %buf.i.i771 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i765, i32 0, i32 3
  %373 = ptrtoint ptr %buf.i.i771 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %mm.i766, ptr %buf.i.i771, align 4
  %call.i.i772 = call i32 @i2c_transfer(ptr noundef %368, ptr noundef nonnull %msg.i.i765, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i772)
  %cmp.not.i.not.i773.not = icmp eq i32 %call.i.i772, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i765) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i766) #7
  br i1 %cmp.not.i.not.i773.not, label %if.end107.i, label %if.then102.i.DRX_Start.exit_crit_edge

if.then102.i.DRX_Start.exit_crit_edge:            ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end107.i:                                      ; preds = %if.then102.i
  %374 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i756) #7
  %376 = getelementptr inbounds [6 x i8], ptr %mm.i756, i32 0, i32 1
  %377 = getelementptr inbounds [6 x i8], ptr %mm.i756, i32 0, i32 2
  %378 = getelementptr inbounds [6 x i8], ptr %mm.i756, i32 0, i32 3
  %379 = getelementptr inbounds [6 x i8], ptr %mm.i756, i32 0, i32 4
  %380 = getelementptr inbounds [6 x i8], ptr %mm.i756, i32 0, i32 5
  %381 = ptrtoint ptr %mm.i756 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 18, ptr %mm.i756, align 1
  %382 = ptrtoint ptr %376 to i32
  call void @__asan_store1_noabort(i32 %382)
  store i8 1, ptr %376, align 1
  %383 = ptrtoint ptr %377 to i32
  call void @__asan_store1_noabort(i32 %383)
  store i8 2, ptr %377, align 1
  %384 = ptrtoint ptr %378 to i32
  call void @__asan_store1_noabort(i32 %384)
  store i8 0, ptr %378, align 1
  %385 = ptrtoint ptr %379 to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 1, ptr %379, align 1
  %386 = ptrtoint ptr %380 to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 0, ptr %380, align 1
  %387 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i755) #7
  %389 = getelementptr inbounds i8, ptr %msg.i.i755, i32 4
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 458751, ptr %389, align 4
  %conv.i.i759 = zext i8 %375 to i16
  %391 = ptrtoint ptr %msg.i.i755 to i32
  call void @__asan_store2_noabort(i32 %391)
  store i16 %conv.i.i759, ptr %msg.i.i755, align 4
  %flags.i.i760 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i755, i32 0, i32 1
  %392 = ptrtoint ptr %flags.i.i760 to i32
  call void @__asan_store2_noabort(i32 %392)
  store i16 0, ptr %flags.i.i760, align 2
  %buf.i.i761 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i755, i32 0, i32 3
  %393 = ptrtoint ptr %buf.i.i761 to i32
  call void @__asan_store4_noabort(i32 %393)
  store ptr %mm.i756, ptr %buf.i.i761, align 4
  %call.i.i762 = call i32 @i2c_transfer(ptr noundef %388, ptr noundef nonnull %msg.i.i755, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i762)
  %cmp.not.i.not.i763.not = icmp eq i32 %call.i.i762, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i755) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i756) #7
  br i1 %cmp.not.i.not.i763.not, label %if.end107.i.if.end176.i_crit_edge, label %if.end107.i.DRX_Start.exit_crit_edge

if.end107.i.DRX_Start.exit_crit_edge:             ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end107.i.if.end176.i_crit_edge:                ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176.i

sw.bb114.i:                                       ; preds = %sw.epilog95.i
  %394 = or i16 %transmissionParams.1.i, 128
  %395 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %396)
  %tobool119.not.i = icmp eq i32 %396, 0
  br i1 %tobool119.not.i, label %sw.bb114.i.sw.epilog172.i_crit_edge, label %if.then120.i

sw.bb114.i.sw.epilog172.i_crit_edge:              ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog172.i

if.then120.i:                                     ; preds = %sw.bb114.i
  %397 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i746) #7
  %399 = getelementptr inbounds [6 x i8], ptr %mm.i746, i32 0, i32 1
  %400 = getelementptr inbounds [6 x i8], ptr %mm.i746, i32 0, i32 2
  %401 = getelementptr inbounds [6 x i8], ptr %mm.i746, i32 0, i32 3
  %402 = getelementptr inbounds [6 x i8], ptr %mm.i746, i32 0, i32 4
  %403 = getelementptr inbounds [6 x i8], ptr %mm.i746, i32 0, i32 5
  %404 = ptrtoint ptr %mm.i746 to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 71, ptr %mm.i746, align 1
  %405 = ptrtoint ptr %399 to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 -63, ptr %399, align 1
  %406 = ptrtoint ptr %400 to i32
  call void @__asan_store1_noabort(i32 %406)
  store i8 1, ptr %400, align 1
  %407 = ptrtoint ptr %401 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 0, ptr %401, align 1
  %408 = ptrtoint ptr %402 to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 2, ptr %402, align 1
  %409 = ptrtoint ptr %403 to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 0, ptr %403, align 1
  %410 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i745) #7
  %412 = getelementptr inbounds i8, ptr %msg.i.i745, i32 4
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 458751, ptr %412, align 4
  %conv.i.i749 = zext i8 %398 to i16
  %414 = ptrtoint ptr %msg.i.i745 to i32
  call void @__asan_store2_noabort(i32 %414)
  store i16 %conv.i.i749, ptr %msg.i.i745, align 4
  %flags.i.i750 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i745, i32 0, i32 1
  %415 = ptrtoint ptr %flags.i.i750 to i32
  call void @__asan_store2_noabort(i32 %415)
  store i16 0, ptr %flags.i.i750, align 2
  %buf.i.i751 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i745, i32 0, i32 3
  %416 = ptrtoint ptr %buf.i.i751 to i32
  call void @__asan_store4_noabort(i32 %416)
  store ptr %mm.i746, ptr %buf.i.i751, align 4
  %call.i.i752 = call i32 @i2c_transfer(ptr noundef %411, ptr noundef nonnull %msg.i.i745, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i752)
  %cmp.not.i.not.i753.not = icmp eq i32 %call.i.i752, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i745) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i746) #7
  br i1 %cmp.not.i.not.i753.not, label %if.end125.i, label %if.then120.i.DRX_Start.exit_crit_edge

if.then120.i.DRX_Start.exit_crit_edge:            ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end125.i:                                      ; preds = %if.then120.i
  %417 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i736) #7
  %419 = getelementptr inbounds [6 x i8], ptr %mm.i736, i32 0, i32 1
  %420 = getelementptr inbounds [6 x i8], ptr %mm.i736, i32 0, i32 2
  %421 = getelementptr inbounds [6 x i8], ptr %mm.i736, i32 0, i32 3
  %422 = getelementptr inbounds [6 x i8], ptr %mm.i736, i32 0, i32 4
  %423 = getelementptr inbounds [6 x i8], ptr %mm.i736, i32 0, i32 5
  %424 = ptrtoint ptr %mm.i736 to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 18, ptr %mm.i736, align 1
  %425 = ptrtoint ptr %419 to i32
  call void @__asan_store1_noabort(i32 %425)
  store i8 1, ptr %419, align 1
  %426 = ptrtoint ptr %420 to i32
  call void @__asan_store1_noabort(i32 %426)
  store i8 2, ptr %420, align 1
  %427 = ptrtoint ptr %421 to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 0, ptr %421, align 1
  %428 = ptrtoint ptr %422 to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 2, ptr %422, align 1
  %429 = ptrtoint ptr %423 to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 0, ptr %423, align 1
  %430 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i735) #7
  %432 = getelementptr inbounds i8, ptr %msg.i.i735, i32 4
  %433 = ptrtoint ptr %432 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 458751, ptr %432, align 4
  %conv.i.i739 = zext i8 %418 to i16
  %434 = ptrtoint ptr %msg.i.i735 to i32
  call void @__asan_store2_noabort(i32 %434)
  store i16 %conv.i.i739, ptr %msg.i.i735, align 4
  %flags.i.i740 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i735, i32 0, i32 1
  %435 = ptrtoint ptr %flags.i.i740 to i32
  call void @__asan_store2_noabort(i32 %435)
  store i16 0, ptr %flags.i.i740, align 2
  %buf.i.i741 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i735, i32 0, i32 3
  %436 = ptrtoint ptr %buf.i.i741 to i32
  call void @__asan_store4_noabort(i32 %436)
  store ptr %mm.i736, ptr %buf.i.i741, align 4
  %call.i.i742 = call i32 @i2c_transfer(ptr noundef %431, ptr noundef nonnull %msg.i.i735, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i742)
  %cmp.not.i.not.i743.not = icmp eq i32 %call.i.i742, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i735) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i736) #7
  br i1 %cmp.not.i.not.i743.not, label %if.end125.i.if.end176.i_crit_edge, label %if.end125.i.DRX_Start.exit_crit_edge

if.end125.i.DRX_Start.exit_crit_edge:             ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end125.i.if.end176.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176.i

sw.bb132.i:                                       ; preds = %sw.epilog95.i
  %437 = or i16 %transmissionParams.1.i, 192
  %438 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %439)
  %tobool137.not.i = icmp eq i32 %439, 0
  br i1 %tobool137.not.i, label %sw.bb132.i.sw.epilog172.i_crit_edge, label %if.then138.i

sw.bb132.i.sw.epilog172.i_crit_edge:              ; preds = %sw.bb132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog172.i

if.then138.i:                                     ; preds = %sw.bb132.i
  %440 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %440)
  %441 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i726) #7
  %442 = getelementptr inbounds [6 x i8], ptr %mm.i726, i32 0, i32 1
  %443 = getelementptr inbounds [6 x i8], ptr %mm.i726, i32 0, i32 2
  %444 = getelementptr inbounds [6 x i8], ptr %mm.i726, i32 0, i32 3
  %445 = getelementptr inbounds [6 x i8], ptr %mm.i726, i32 0, i32 4
  %446 = getelementptr inbounds [6 x i8], ptr %mm.i726, i32 0, i32 5
  %447 = ptrtoint ptr %mm.i726 to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 71, ptr %mm.i726, align 1
  %448 = ptrtoint ptr %442 to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 -63, ptr %442, align 1
  %449 = ptrtoint ptr %443 to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 1, ptr %443, align 1
  %450 = ptrtoint ptr %444 to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 0, ptr %444, align 1
  %451 = ptrtoint ptr %445 to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 3, ptr %445, align 1
  %452 = ptrtoint ptr %446 to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 0, ptr %446, align 1
  %453 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i725) #7
  %455 = getelementptr inbounds i8, ptr %msg.i.i725, i32 4
  %456 = ptrtoint ptr %455 to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 458751, ptr %455, align 4
  %conv.i.i729 = zext i8 %441 to i16
  %457 = ptrtoint ptr %msg.i.i725 to i32
  call void @__asan_store2_noabort(i32 %457)
  store i16 %conv.i.i729, ptr %msg.i.i725, align 4
  %flags.i.i730 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i725, i32 0, i32 1
  %458 = ptrtoint ptr %flags.i.i730 to i32
  call void @__asan_store2_noabort(i32 %458)
  store i16 0, ptr %flags.i.i730, align 2
  %buf.i.i731 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i725, i32 0, i32 3
  %459 = ptrtoint ptr %buf.i.i731 to i32
  call void @__asan_store4_noabort(i32 %459)
  store ptr %mm.i726, ptr %buf.i.i731, align 4
  %call.i.i732 = call i32 @i2c_transfer(ptr noundef %454, ptr noundef nonnull %msg.i.i725, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i732)
  %cmp.not.i.not.i733.not = icmp eq i32 %call.i.i732, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i725) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i726) #7
  br i1 %cmp.not.i.not.i733.not, label %if.end143.i, label %if.then138.i.DRX_Start.exit_crit_edge

if.then138.i.DRX_Start.exit_crit_edge:            ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end143.i:                                      ; preds = %if.then138.i
  %460 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i716) #7
  %462 = getelementptr inbounds [6 x i8], ptr %mm.i716, i32 0, i32 1
  %463 = getelementptr inbounds [6 x i8], ptr %mm.i716, i32 0, i32 2
  %464 = getelementptr inbounds [6 x i8], ptr %mm.i716, i32 0, i32 3
  %465 = getelementptr inbounds [6 x i8], ptr %mm.i716, i32 0, i32 4
  %466 = getelementptr inbounds [6 x i8], ptr %mm.i716, i32 0, i32 5
  %467 = ptrtoint ptr %mm.i716 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 18, ptr %mm.i716, align 1
  %468 = ptrtoint ptr %462 to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 1, ptr %462, align 1
  %469 = ptrtoint ptr %463 to i32
  call void @__asan_store1_noabort(i32 %469)
  store i8 2, ptr %463, align 1
  %470 = ptrtoint ptr %464 to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 0, ptr %464, align 1
  %471 = ptrtoint ptr %465 to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 3, ptr %465, align 1
  %472 = ptrtoint ptr %466 to i32
  call void @__asan_store1_noabort(i32 %472)
  store i8 0, ptr %466, align 1
  %473 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i715) #7
  %475 = getelementptr inbounds i8, ptr %msg.i.i715, i32 4
  %476 = ptrtoint ptr %475 to i32
  call void @__asan_store4_noabort(i32 %476)
  store i32 458751, ptr %475, align 4
  %conv.i.i719 = zext i8 %461 to i16
  %477 = ptrtoint ptr %msg.i.i715 to i32
  call void @__asan_store2_noabort(i32 %477)
  store i16 %conv.i.i719, ptr %msg.i.i715, align 4
  %flags.i.i720 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i715, i32 0, i32 1
  %478 = ptrtoint ptr %flags.i.i720 to i32
  call void @__asan_store2_noabort(i32 %478)
  store i16 0, ptr %flags.i.i720, align 2
  %buf.i.i721 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i715, i32 0, i32 3
  %479 = ptrtoint ptr %buf.i.i721 to i32
  call void @__asan_store4_noabort(i32 %479)
  store ptr %mm.i716, ptr %buf.i.i721, align 4
  %call.i.i722 = call i32 @i2c_transfer(ptr noundef %474, ptr noundef nonnull %msg.i.i715, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i722)
  %cmp.not.i.not.i723.not = icmp eq i32 %call.i.i722, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i715) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i716) #7
  br i1 %cmp.not.i.not.i723.not, label %if.end143.i.if.end176.i_crit_edge, label %if.end143.i.DRX_Start.exit_crit_edge

if.end143.i.DRX_Start.exit_crit_edge:             ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end143.i.if.end176.i_crit_edge:                ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176.i

sw.default151.i:                                  ; preds = %sw.epilog95.i
  %480 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %481)
  %tobool159.not.i = icmp eq i32 %481, 0
  br i1 %tobool159.not.i, label %sw.default151.i.sw.epilog172.i_crit_edge, label %if.then160.i

sw.default151.i.sw.epilog172.i_crit_edge:         ; preds = %sw.default151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog172.i

if.then160.i:                                     ; preds = %sw.default151.i
  %482 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i706) #7
  %484 = getelementptr inbounds [6 x i8], ptr %mm.i706, i32 0, i32 1
  %485 = getelementptr inbounds [6 x i8], ptr %mm.i706, i32 0, i32 2
  %486 = getelementptr inbounds [6 x i8], ptr %mm.i706, i32 0, i32 3
  %487 = getelementptr inbounds [6 x i8], ptr %mm.i706, i32 0, i32 4
  %488 = getelementptr inbounds [6 x i8], ptr %mm.i706, i32 0, i32 5
  %489 = ptrtoint ptr %mm.i706 to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 71, ptr %mm.i706, align 1
  %490 = ptrtoint ptr %484 to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 -63, ptr %484, align 1
  %491 = ptrtoint ptr %485 to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 1, ptr %485, align 1
  %492 = ptrtoint ptr %486 to i32
  call void @__asan_store1_noabort(i32 %492)
  store i8 0, ptr %486, align 1
  %493 = ptrtoint ptr %487 to i32
  call void @__asan_store1_noabort(i32 %493)
  store i8 0, ptr %487, align 1
  %494 = ptrtoint ptr %488 to i32
  call void @__asan_store1_noabort(i32 %494)
  store i8 0, ptr %488, align 1
  %495 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i705) #7
  %497 = getelementptr inbounds i8, ptr %msg.i.i705, i32 4
  %498 = ptrtoint ptr %497 to i32
  call void @__asan_store4_noabort(i32 %498)
  store i32 458751, ptr %497, align 4
  %conv.i.i709 = zext i8 %483 to i16
  %499 = ptrtoint ptr %msg.i.i705 to i32
  call void @__asan_store2_noabort(i32 %499)
  store i16 %conv.i.i709, ptr %msg.i.i705, align 4
  %flags.i.i710 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i705, i32 0, i32 1
  %500 = ptrtoint ptr %flags.i.i710 to i32
  call void @__asan_store2_noabort(i32 %500)
  store i16 0, ptr %flags.i.i710, align 2
  %buf.i.i711 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i705, i32 0, i32 3
  %501 = ptrtoint ptr %buf.i.i711 to i32
  call void @__asan_store4_noabort(i32 %501)
  store ptr %mm.i706, ptr %buf.i.i711, align 4
  %call.i.i712 = call i32 @i2c_transfer(ptr noundef %496, ptr noundef nonnull %msg.i.i705, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i712)
  %cmp.not.i.not.i713.not = icmp eq i32 %call.i.i712, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i705) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i706) #7
  br i1 %cmp.not.i.not.i713.not, label %if.end165.i, label %if.then160.i.DRX_Start.exit_crit_edge

if.then160.i.DRX_Start.exit_crit_edge:            ; preds = %if.then160.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end165.i:                                      ; preds = %if.then160.i
  %502 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i696) #7
  %504 = getelementptr inbounds [6 x i8], ptr %mm.i696, i32 0, i32 1
  %505 = getelementptr inbounds [6 x i8], ptr %mm.i696, i32 0, i32 2
  %506 = getelementptr inbounds [6 x i8], ptr %mm.i696, i32 0, i32 3
  %507 = getelementptr inbounds [6 x i8], ptr %mm.i696, i32 0, i32 4
  %508 = getelementptr inbounds [6 x i8], ptr %mm.i696, i32 0, i32 5
  %509 = ptrtoint ptr %mm.i696 to i32
  call void @__asan_store1_noabort(i32 %509)
  store i8 18, ptr %mm.i696, align 1
  %510 = ptrtoint ptr %504 to i32
  call void @__asan_store1_noabort(i32 %510)
  store i8 1, ptr %504, align 1
  %511 = ptrtoint ptr %505 to i32
  call void @__asan_store1_noabort(i32 %511)
  store i8 2, ptr %505, align 1
  %512 = ptrtoint ptr %506 to i32
  call void @__asan_store1_noabort(i32 %512)
  store i8 0, ptr %506, align 1
  %513 = ptrtoint ptr %507 to i32
  call void @__asan_store1_noabort(i32 %513)
  store i8 0, ptr %507, align 1
  %514 = ptrtoint ptr %508 to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 0, ptr %508, align 1
  %515 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i695) #7
  %517 = getelementptr inbounds i8, ptr %msg.i.i695, i32 4
  %518 = ptrtoint ptr %517 to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 458751, ptr %517, align 4
  %conv.i.i699 = zext i8 %503 to i16
  %519 = ptrtoint ptr %msg.i.i695 to i32
  call void @__asan_store2_noabort(i32 %519)
  store i16 %conv.i.i699, ptr %msg.i.i695, align 4
  %flags.i.i700 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i695, i32 0, i32 1
  %520 = ptrtoint ptr %flags.i.i700 to i32
  call void @__asan_store2_noabort(i32 %520)
  store i16 0, ptr %flags.i.i700, align 2
  %buf.i.i701 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i695, i32 0, i32 3
  %521 = ptrtoint ptr %buf.i.i701 to i32
  call void @__asan_store4_noabort(i32 %521)
  store ptr %mm.i696, ptr %buf.i.i701, align 4
  %call.i.i702 = call i32 @i2c_transfer(ptr noundef %516, ptr noundef nonnull %msg.i.i695, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i702)
  %cmp.not.i.not.i703.not = icmp eq i32 %call.i.i702, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i695) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i696) #7
  br i1 %cmp.not.i.not.i703.not, label %if.end165.i.if.end176.i_crit_edge, label %if.end165.i.DRX_Start.exit_crit_edge

if.end165.i.DRX_Start.exit_crit_edge:             ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end165.i.if.end176.i_crit_edge:                ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176.i

sw.epilog172.i:                                   ; preds = %sw.default151.i.sw.epilog172.i_crit_edge, %sw.bb132.i.sw.epilog172.i_crit_edge, %sw.bb114.i.sw.epilog172.i_crit_edge, %sw.bb96.i.sw.epilog172.i_crit_edge
  %transmissionParams.2.i = phi i16 [ %transmissionParams.1.i, %sw.default151.i.sw.epilog172.i_crit_edge ], [ %437, %sw.bb132.i.sw.epilog172.i_crit_edge ], [ %394, %sw.bb114.i.sw.epilog172.i_crit_edge ], [ %351, %sw.bb96.i.sw.epilog172.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i)
  %cmp173.i = icmp slt i32 %status.0.i, 0
  br i1 %cmp173.i, label %sw.epilog172.i.DRX_Start.exit_crit_edge, label %sw.epilog172.i.if.end176.i_crit_edge

sw.epilog172.i.if.end176.i_crit_edge:             ; preds = %sw.epilog172.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176.i

sw.epilog172.i.DRX_Start.exit_crit_edge:          ; preds = %sw.epilog172.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end176.i:                                      ; preds = %sw.epilog172.i.if.end176.i_crit_edge, %if.end165.i.if.end176.i_crit_edge, %if.end143.i.if.end176.i_crit_edge, %if.end125.i.if.end176.i_crit_edge, %if.end107.i.if.end176.i_crit_edge
  %qam64IsGainExp.062.i.off0 = phi i8 [ 0, %sw.epilog172.i.if.end176.i_crit_edge ], [ 5, %if.end107.i.if.end176.i_crit_edge ], [ 5, %if.end125.i.if.end176.i_crit_edge ], [ 5, %if.end143.i.if.end176.i_crit_edge ], [ 5, %if.end165.i.if.end176.i_crit_edge ]
  %qam16IsGainExp.061.i.off0 = phi i8 [ 0, %sw.epilog172.i.if.end176.i_crit_edge ], [ 5, %if.end107.i.if.end176.i_crit_edge ], [ 5, %if.end125.i.if.end176.i_crit_edge ], [ 6, %if.end143.i.if.end176.i_crit_edge ], [ 5, %if.end165.i.if.end176.i_crit_edge ]
  %qpskIsGainExp.060.i.off0 = phi i8 [ 0, %sw.epilog172.i.if.end176.i_crit_edge ], [ 4, %if.end107.i.if.end176.i_crit_edge ], [ 4, %if.end125.i.if.end176.i_crit_edge ], [ 4, %if.end143.i.if.end176.i_crit_edge ], [ 5, %if.end165.i.if.end176.i_crit_edge ]
  %qam64IsGainMan.059.i.off0 = phi i8 [ 0, %sw.epilog172.i.if.end176.i_crit_edge ], [ -5, %if.end107.i.if.end176.i_crit_edge ], [ 47, %if.end125.i.if.end176.i_crit_edge ], [ -105, %if.end143.i.if.end176.i_crit_edge ], [ -5, %if.end165.i.if.end176.i_crit_edge ]
  %qam16IsGainMan.058.i.off0 = phi i8 [ 0, %sw.epilog172.i.if.end176.i_crit_edge ], [ -17, %if.end107.i.if.end176.i_crit_edge ], [ 94, %if.end125.i.if.end176.i_crit_edge ], [ 26, %if.end143.i.if.end176.i_crit_edge ], [ -17, %if.end165.i.if.end176.i_crit_edge ]
  %qpskIsGainMan.057.i.off0 = phi i8 [ 0, %sw.epilog172.i.if.end176.i_crit_edge ], [ -42, %if.end107.i.if.end176.i_crit_edge ], [ -42, %if.end125.i.if.end176.i_crit_edge ], [ -42, %if.end143.i.if.end176.i_crit_edge ], [ -69, %if.end165.i.if.end176.i_crit_edge ]
  %qam64TdTpsPwr.056.i.off0 = phi i8 [ 0, %sw.epilog172.i.if.end176.i_crit_edge ], [ -97, %if.end107.i.if.end176.i_crit_edge ], [ -8, %if.end125.i.if.end176.i_crit_edge ], [ 77, %if.end143.i.if.end176.i_crit_edge ], [ -97, %if.end165.i.if.end176.i_crit_edge ]
  %qam64TdTpsPwr.056.i.off8 = phi i8 [ 0, %sw.epilog172.i.if.end176.i_crit_edge ], [ 1, %if.end107.i.if.end176.i_crit_edge ], [ 0, %if.end125.i.if.end176.i_crit_edge ], [ 1, %if.end143.i.if.end176.i_crit_edge ], [ 1, %if.end165.i.if.end176.i_crit_edge ]
  %qam16TdTpsPwr.055.i.off0 = phi i8 [ 0, %sw.epilog172.i.if.end176.i_crit_edge ], [ -107, %if.end107.i.if.end176.i_crit_edge ], [ 30, %if.end125.i.if.end176.i_crit_edge ], [ -50, %if.end143.i.if.end176.i_crit_edge ], [ -107, %if.end165.i.if.end176.i_crit_edge ]
  %qam16TdTpsPwr.055.i.off8 = phi i8 [ 0, %sw.epilog172.i.if.end176.i_crit_edge ], [ 1, %if.end107.i.if.end176.i_crit_edge ], [ 1, %if.end125.i.if.end176.i_crit_edge ], [ 1, %if.end143.i.if.end176.i_crit_edge ], [ 1, %if.end165.i.if.end176.i_crit_edge ]
  %qpskTdTpsPwr.054.i.off0 = phi i8 [ 0, %sw.epilog172.i.if.end176.i_crit_edge ], [ -64, %if.end107.i.if.end176.i_crit_edge ], [ -64, %if.end125.i.if.end176.i_crit_edge ], [ -64, %if.end143.i.if.end176.i_crit_edge ], [ 106, %if.end165.i.if.end176.i_crit_edge ]
  %qpskTdTpsPwr.054.i.off8 = phi i8 [ 0, %sw.epilog172.i.if.end176.i_crit_edge ], [ 0, %if.end107.i.if.end176.i_crit_edge ], [ 0, %if.end125.i.if.end176.i_crit_edge ], [ 0, %if.end143.i.if.end176.i_crit_edge ], [ 1, %if.end165.i.if.end176.i_crit_edge ]
  %transmissionParams.253.i = phi i16 [ %transmissionParams.2.i, %sw.epilog172.i.if.end176.i_crit_edge ], [ %351, %if.end107.i.if.end176.i_crit_edge ], [ %394, %if.end125.i.if.end176.i_crit_edge ], [ %437, %if.end143.i.if.end176.i_crit_edge ], [ %transmissionParams.1.i, %if.end165.i.if.end176.i_crit_edge ]
  %modulation.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 2, i32 1
  %522 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %modulation.i, align 4
  %524 = zext i32 %523 to i64
  call void @__sanitizer_cov_trace_switch(i64 %524, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %523, label %sw.bb181.i [
    i32 1, label %sw.bb287.i
    i32 0, label %sw.bb234.i
  ]

sw.bb181.i:                                       ; preds = %if.end176.i
  %525 = or i16 %transmissionParams.253.i, 32
  %526 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %527)
  %tobool186.not.i = icmp eq i32 %527, 0
  %extract.t850 = trunc i16 %525 to i8
  %extract856 = lshr i16 %transmissionParams.253.i, 8
  %extract.t857 = trunc i16 %extract856 to i8
  br i1 %tobool186.not.i, label %sw.bb181.i.if.end344.i_crit_edge, label %if.then187.i

sw.bb181.i.if.end344.i_crit_edge:                 ; preds = %sw.bb181.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end344.i

if.then187.i:                                     ; preds = %sw.bb181.i
  %528 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %528)
  %529 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i686) #7
  %530 = getelementptr inbounds [6 x i8], ptr %mm.i686, i32 0, i32 1
  %531 = getelementptr inbounds [6 x i8], ptr %mm.i686, i32 0, i32 2
  %532 = getelementptr inbounds [6 x i8], ptr %mm.i686, i32 0, i32 3
  %533 = getelementptr inbounds [6 x i8], ptr %mm.i686, i32 0, i32 4
  %534 = getelementptr inbounds [6 x i8], ptr %mm.i686, i32 0, i32 5
  %535 = ptrtoint ptr %mm.i686 to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 70, ptr %mm.i686, align 1
  %536 = ptrtoint ptr %530 to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 -63, ptr %530, align 1
  %537 = ptrtoint ptr %531 to i32
  call void @__asan_store1_noabort(i32 %537)
  store i8 1, ptr %531, align 1
  %538 = ptrtoint ptr %532 to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 0, ptr %532, align 1
  %539 = ptrtoint ptr %533 to i32
  call void @__asan_store1_noabort(i32 %539)
  store i8 2, ptr %533, align 1
  %540 = ptrtoint ptr %534 to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 0, ptr %534, align 1
  %541 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i685) #7
  %543 = getelementptr inbounds i8, ptr %msg.i.i685, i32 4
  %544 = ptrtoint ptr %543 to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 458751, ptr %543, align 4
  %conv.i.i689 = zext i8 %529 to i16
  %545 = ptrtoint ptr %msg.i.i685 to i32
  call void @__asan_store2_noabort(i32 %545)
  store i16 %conv.i.i689, ptr %msg.i.i685, align 4
  %flags.i.i690 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i685, i32 0, i32 1
  %546 = ptrtoint ptr %flags.i.i690 to i32
  call void @__asan_store2_noabort(i32 %546)
  store i16 0, ptr %flags.i.i690, align 2
  %buf.i.i691 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i685, i32 0, i32 3
  %547 = ptrtoint ptr %buf.i.i691 to i32
  call void @__asan_store4_noabort(i32 %547)
  store ptr %mm.i686, ptr %buf.i.i691, align 4
  %call.i.i692 = call i32 @i2c_transfer(ptr noundef %542, ptr noundef nonnull %msg.i.i685, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i692)
  %cmp.not.i.not.i693.not = icmp eq i32 %call.i.i692, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i685) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i686) #7
  br i1 %cmp.not.i.not.i693.not, label %if.end192.i, label %if.then187.i.DRX_Start.exit_crit_edge

if.then187.i.DRX_Start.exit_crit_edge:            ; preds = %if.then187.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end192.i:                                      ; preds = %if.then187.i
  %548 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i676) #7
  %550 = getelementptr inbounds [6 x i8], ptr %mm.i676, i32 0, i32 1
  %551 = getelementptr inbounds [6 x i8], ptr %mm.i676, i32 0, i32 2
  %552 = getelementptr inbounds [6 x i8], ptr %mm.i676, i32 0, i32 3
  %553 = getelementptr inbounds [6 x i8], ptr %mm.i676, i32 0, i32 4
  %554 = getelementptr inbounds [6 x i8], ptr %mm.i676, i32 0, i32 5
  %555 = ptrtoint ptr %mm.i676 to i32
  call void @__asan_store1_noabort(i32 %555)
  store i8 17, ptr %mm.i676, align 1
  %556 = ptrtoint ptr %550 to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 1, ptr %550, align 1
  %557 = ptrtoint ptr %551 to i32
  call void @__asan_store1_noabort(i32 %557)
  store i8 2, ptr %551, align 1
  %558 = ptrtoint ptr %552 to i32
  call void @__asan_store1_noabort(i32 %558)
  store i8 0, ptr %552, align 1
  %559 = ptrtoint ptr %553 to i32
  call void @__asan_store1_noabort(i32 %559)
  store i8 2, ptr %553, align 1
  %560 = ptrtoint ptr %554 to i32
  call void @__asan_store1_noabort(i32 %560)
  store i8 0, ptr %554, align 1
  %561 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i675) #7
  %563 = getelementptr inbounds i8, ptr %msg.i.i675, i32 4
  %564 = ptrtoint ptr %563 to i32
  call void @__asan_store4_noabort(i32 %564)
  store i32 458751, ptr %563, align 4
  %conv.i.i679 = zext i8 %549 to i16
  %565 = ptrtoint ptr %msg.i.i675 to i32
  call void @__asan_store2_noabort(i32 %565)
  store i16 %conv.i.i679, ptr %msg.i.i675, align 4
  %flags.i.i680 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i675, i32 0, i32 1
  %566 = ptrtoint ptr %flags.i.i680 to i32
  call void @__asan_store2_noabort(i32 %566)
  store i16 0, ptr %flags.i.i680, align 2
  %buf.i.i681 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i675, i32 0, i32 3
  %567 = ptrtoint ptr %buf.i.i681 to i32
  call void @__asan_store4_noabort(i32 %567)
  store ptr %mm.i676, ptr %buf.i.i681, align 4
  %call.i.i682 = call i32 @i2c_transfer(ptr noundef %562, ptr noundef nonnull %msg.i.i675, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i682)
  %cmp.not.i.not.i683.not = icmp eq i32 %call.i.i682, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i675) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i676) #7
  br i1 %cmp.not.i.not.i683.not, label %if.end197.i, label %if.end192.i.DRX_Start.exit_crit_edge

if.end192.i.DRX_Start.exit_crit_edge:             ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end197.i:                                      ; preds = %if.end192.i
  %568 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %568)
  %569 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i666) #7
  %570 = getelementptr inbounds [6 x i8], ptr %mm.i666, i32 0, i32 1
  %571 = getelementptr inbounds [6 x i8], ptr %mm.i666, i32 0, i32 2
  %572 = getelementptr inbounds [6 x i8], ptr %mm.i666, i32 0, i32 3
  %573 = getelementptr inbounds [6 x i8], ptr %mm.i666, i32 0, i32 4
  %574 = getelementptr inbounds [6 x i8], ptr %mm.i666, i32 0, i32 5
  %575 = ptrtoint ptr %mm.i666 to i32
  call void @__asan_store1_noabort(i32 %575)
  store i8 26, ptr %mm.i666, align 1
  %576 = ptrtoint ptr %570 to i32
  call void @__asan_store1_noabort(i32 %576)
  store i8 1, ptr %570, align 1
  %577 = ptrtoint ptr %571 to i32
  call void @__asan_store1_noabort(i32 %577)
  store i8 2, ptr %571, align 1
  %578 = ptrtoint ptr %572 to i32
  call void @__asan_store1_noabort(i32 %578)
  store i8 0, ptr %572, align 1
  %579 = ptrtoint ptr %573 to i32
  call void @__asan_store1_noabort(i32 %579)
  store i8 32, ptr %573, align 1
  %580 = ptrtoint ptr %574 to i32
  call void @__asan_store1_noabort(i32 %580)
  store i8 0, ptr %574, align 1
  %581 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i665) #7
  %583 = getelementptr inbounds i8, ptr %msg.i.i665, i32 4
  %584 = ptrtoint ptr %583 to i32
  call void @__asan_store4_noabort(i32 %584)
  store i32 458751, ptr %583, align 4
  %conv.i.i669 = zext i8 %569 to i16
  %585 = ptrtoint ptr %msg.i.i665 to i32
  call void @__asan_store2_noabort(i32 %585)
  store i16 %conv.i.i669, ptr %msg.i.i665, align 4
  %flags.i.i670 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i665, i32 0, i32 1
  %586 = ptrtoint ptr %flags.i.i670 to i32
  call void @__asan_store2_noabort(i32 %586)
  store i16 0, ptr %flags.i.i670, align 2
  %buf.i.i671 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i665, i32 0, i32 3
  %587 = ptrtoint ptr %buf.i.i671 to i32
  call void @__asan_store4_noabort(i32 %587)
  store ptr %mm.i666, ptr %buf.i.i671, align 4
  %call.i.i672 = call i32 @i2c_transfer(ptr noundef %582, ptr noundef nonnull %msg.i.i665, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i672)
  %cmp.not.i.not.i673.not = icmp eq i32 %call.i.i672, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i665) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i666) #7
  br i1 %cmp.not.i.not.i673.not, label %if.end202.i, label %if.end197.i.DRX_Start.exit_crit_edge

if.end197.i.DRX_Start.exit_crit_edge:             ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end202.i:                                      ; preds = %if.end197.i
  %588 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %588)
  %589 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i656) #7
  %590 = getelementptr inbounds [6 x i8], ptr %mm.i656, i32 0, i32 1
  %591 = getelementptr inbounds [6 x i8], ptr %mm.i656, i32 0, i32 2
  %592 = getelementptr inbounds [6 x i8], ptr %mm.i656, i32 0, i32 3
  %593 = getelementptr inbounds [6 x i8], ptr %mm.i656, i32 0, i32 4
  %594 = getelementptr inbounds [6 x i8], ptr %mm.i656, i32 0, i32 5
  %595 = ptrtoint ptr %mm.i656 to i32
  call void @__asan_store1_noabort(i32 %595)
  store i8 27, ptr %mm.i656, align 1
  %596 = ptrtoint ptr %590 to i32
  call void @__asan_store1_noabort(i32 %596)
  store i8 1, ptr %590, align 1
  %597 = ptrtoint ptr %591 to i32
  call void @__asan_store1_noabort(i32 %597)
  store i8 2, ptr %591, align 1
  %598 = ptrtoint ptr %592 to i32
  call void @__asan_store1_noabort(i32 %598)
  store i8 0, ptr %592, align 1
  %599 = ptrtoint ptr %593 to i32
  call void @__asan_store1_noabort(i32 %599)
  store i8 8, ptr %593, align 1
  %600 = ptrtoint ptr %594 to i32
  call void @__asan_store1_noabort(i32 %600)
  store i8 0, ptr %594, align 1
  %601 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i655) #7
  %603 = getelementptr inbounds i8, ptr %msg.i.i655, i32 4
  %604 = ptrtoint ptr %603 to i32
  call void @__asan_store4_noabort(i32 %604)
  store i32 458751, ptr %603, align 4
  %conv.i.i659 = zext i8 %589 to i16
  %605 = ptrtoint ptr %msg.i.i655 to i32
  call void @__asan_store2_noabort(i32 %605)
  store i16 %conv.i.i659, ptr %msg.i.i655, align 4
  %flags.i.i660 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i655, i32 0, i32 1
  %606 = ptrtoint ptr %flags.i.i660 to i32
  call void @__asan_store2_noabort(i32 %606)
  store i16 0, ptr %flags.i.i660, align 2
  %buf.i.i661 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i655, i32 0, i32 3
  %607 = ptrtoint ptr %buf.i.i661 to i32
  call void @__asan_store4_noabort(i32 %607)
  store ptr %mm.i656, ptr %buf.i.i661, align 4
  %call.i.i662 = call i32 @i2c_transfer(ptr noundef %602, ptr noundef nonnull %msg.i.i655, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i662)
  %cmp.not.i.not.i663.not = icmp eq i32 %call.i.i662, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i655) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i656) #7
  br i1 %cmp.not.i.not.i663.not, label %if.end207.i, label %if.end202.i.DRX_Start.exit_crit_edge

if.end202.i.DRX_Start.exit_crit_edge:             ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end207.i:                                      ; preds = %if.end202.i
  %608 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %608)
  %609 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i646) #7
  %610 = getelementptr inbounds [6 x i8], ptr %mm.i646, i32 0, i32 1
  %611 = getelementptr inbounds [6 x i8], ptr %mm.i646, i32 0, i32 2
  %612 = getelementptr inbounds [6 x i8], ptr %mm.i646, i32 0, i32 3
  %613 = getelementptr inbounds [6 x i8], ptr %mm.i646, i32 0, i32 4
  %614 = getelementptr inbounds [6 x i8], ptr %mm.i646, i32 0, i32 5
  %615 = ptrtoint ptr %mm.i646 to i32
  call void @__asan_store1_noabort(i32 %615)
  store i8 28, ptr %mm.i646, align 1
  %616 = ptrtoint ptr %610 to i32
  call void @__asan_store1_noabort(i32 %616)
  store i8 1, ptr %610, align 1
  %617 = ptrtoint ptr %611 to i32
  call void @__asan_store1_noabort(i32 %617)
  store i8 2, ptr %611, align 1
  %618 = ptrtoint ptr %612 to i32
  call void @__asan_store1_noabort(i32 %618)
  store i8 0, ptr %612, align 1
  %619 = ptrtoint ptr %613 to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 2, ptr %613, align 1
  %620 = ptrtoint ptr %614 to i32
  call void @__asan_store1_noabort(i32 %620)
  store i8 0, ptr %614, align 1
  %621 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i645) #7
  %623 = getelementptr inbounds i8, ptr %msg.i.i645, i32 4
  %624 = ptrtoint ptr %623 to i32
  call void @__asan_store4_noabort(i32 %624)
  store i32 458751, ptr %623, align 4
  %conv.i.i649 = zext i8 %609 to i16
  %625 = ptrtoint ptr %msg.i.i645 to i32
  call void @__asan_store2_noabort(i32 %625)
  store i16 %conv.i.i649, ptr %msg.i.i645, align 4
  %flags.i.i650 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i645, i32 0, i32 1
  %626 = ptrtoint ptr %flags.i.i650 to i32
  call void @__asan_store2_noabort(i32 %626)
  store i16 0, ptr %flags.i.i650, align 2
  %buf.i.i651 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i645, i32 0, i32 3
  %627 = ptrtoint ptr %buf.i.i651 to i32
  call void @__asan_store4_noabort(i32 %627)
  store ptr %mm.i646, ptr %buf.i.i651, align 4
  %call.i.i652 = call i32 @i2c_transfer(ptr noundef %622, ptr noundef nonnull %msg.i.i645, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i652)
  %cmp.not.i.not.i653.not = icmp eq i32 %call.i.i652, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i645) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i646) #7
  br i1 %cmp.not.i.not.i653.not, label %if.end212.i, label %if.end207.i.DRX_Start.exit_crit_edge

if.end207.i.DRX_Start.exit_crit_edge:             ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end212.i:                                      ; preds = %if.end207.i
  %628 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %628)
  %629 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i634) #7
  %630 = getelementptr inbounds [6 x i8], ptr %mm.i634, i32 0, i32 1
  %631 = getelementptr inbounds [6 x i8], ptr %mm.i634, i32 0, i32 2
  %632 = getelementptr inbounds [6 x i8], ptr %mm.i634, i32 0, i32 3
  %633 = getelementptr inbounds [6 x i8], ptr %mm.i634, i32 0, i32 4
  %634 = getelementptr inbounds [6 x i8], ptr %mm.i634, i32 0, i32 5
  %635 = ptrtoint ptr %mm.i634 to i32
  call void @__asan_store1_noabort(i32 %635)
  store i8 98, ptr %mm.i634, align 1
  %636 = ptrtoint ptr %630 to i32
  call void @__asan_store1_noabort(i32 %636)
  store i8 -63, ptr %630, align 1
  %637 = ptrtoint ptr %631 to i32
  call void @__asan_store1_noabort(i32 %637)
  store i8 1, ptr %631, align 1
  %638 = ptrtoint ptr %632 to i32
  call void @__asan_store1_noabort(i32 %638)
  store i8 0, ptr %632, align 1
  %639 = ptrtoint ptr %633 to i32
  call void @__asan_store1_noabort(i32 %639)
  store i8 %qam64TdTpsPwr.056.i.off0, ptr %633, align 1
  %640 = ptrtoint ptr %634 to i32
  call void @__asan_store1_noabort(i32 %640)
  store i8 %qam64TdTpsPwr.056.i.off8, ptr %634, align 1
  %641 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i633) #7
  %643 = getelementptr inbounds i8, ptr %msg.i.i633, i32 4
  %644 = ptrtoint ptr %643 to i32
  call void @__asan_store4_noabort(i32 %644)
  store i32 458751, ptr %643, align 4
  %conv.i.i639 = zext i8 %629 to i16
  %645 = ptrtoint ptr %msg.i.i633 to i32
  call void @__asan_store2_noabort(i32 %645)
  store i16 %conv.i.i639, ptr %msg.i.i633, align 4
  %flags.i.i640 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i633, i32 0, i32 1
  %646 = ptrtoint ptr %flags.i.i640 to i32
  call void @__asan_store2_noabort(i32 %646)
  store i16 0, ptr %flags.i.i640, align 2
  %buf.i.i641 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i633, i32 0, i32 3
  %647 = ptrtoint ptr %buf.i.i641 to i32
  call void @__asan_store4_noabort(i32 %647)
  store ptr %mm.i634, ptr %buf.i.i641, align 4
  %call.i.i642 = call i32 @i2c_transfer(ptr noundef %642, ptr noundef nonnull %msg.i.i633, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i642)
  %cmp.not.i.not.i643.not = icmp eq i32 %call.i.i642, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i633) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i634) #7
  br i1 %cmp.not.i.not.i643.not, label %if.end217.i, label %if.end212.i.DRX_Start.exit_crit_edge

if.end212.i.DRX_Start.exit_crit_edge:             ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end217.i:                                      ; preds = %if.end212.i
  %648 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %648)
  %649 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i623) #7
  %650 = getelementptr inbounds [6 x i8], ptr %mm.i623, i32 0, i32 1
  %651 = getelementptr inbounds [6 x i8], ptr %mm.i623, i32 0, i32 2
  %652 = getelementptr inbounds [6 x i8], ptr %mm.i623, i32 0, i32 3
  %653 = getelementptr inbounds [6 x i8], ptr %mm.i623, i32 0, i32 4
  %654 = getelementptr inbounds [6 x i8], ptr %mm.i623, i32 0, i32 5
  %655 = ptrtoint ptr %mm.i623 to i32
  call void @__asan_store1_noabort(i32 %655)
  store i8 42, ptr %mm.i623, align 1
  %656 = ptrtoint ptr %650 to i32
  call void @__asan_store1_noabort(i32 %656)
  store i8 -63, ptr %650, align 1
  %657 = ptrtoint ptr %651 to i32
  call void @__asan_store1_noabort(i32 %657)
  store i8 1, ptr %651, align 1
  %658 = ptrtoint ptr %652 to i32
  call void @__asan_store1_noabort(i32 %658)
  store i8 0, ptr %652, align 1
  %659 = ptrtoint ptr %653 to i32
  call void @__asan_store1_noabort(i32 %659)
  store i8 %qam64SnCeGain.0.i.off0, ptr %653, align 1
  %660 = ptrtoint ptr %654 to i32
  call void @__asan_store1_noabort(i32 %660)
  store i8 0, ptr %654, align 1
  %661 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i622) #7
  %663 = getelementptr inbounds i8, ptr %msg.i.i622, i32 4
  %664 = ptrtoint ptr %663 to i32
  call void @__asan_store4_noabort(i32 %664)
  store i32 458751, ptr %663, align 4
  %conv.i.i627 = zext i8 %649 to i16
  %665 = ptrtoint ptr %msg.i.i622 to i32
  call void @__asan_store2_noabort(i32 %665)
  store i16 %conv.i.i627, ptr %msg.i.i622, align 4
  %flags.i.i628 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i622, i32 0, i32 1
  %666 = ptrtoint ptr %flags.i.i628 to i32
  call void @__asan_store2_noabort(i32 %666)
  store i16 0, ptr %flags.i.i628, align 2
  %buf.i.i629 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i622, i32 0, i32 3
  %667 = ptrtoint ptr %buf.i.i629 to i32
  call void @__asan_store4_noabort(i32 %667)
  store ptr %mm.i623, ptr %buf.i.i629, align 4
  %call.i.i630 = call i32 @i2c_transfer(ptr noundef %662, ptr noundef nonnull %msg.i.i622, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i630)
  %cmp.not.i.not.i631.not = icmp eq i32 %call.i.i630, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i622) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i623) #7
  br i1 %cmp.not.i.not.i631.not, label %if.end222.i, label %if.end217.i.DRX_Start.exit_crit_edge

if.end217.i.DRX_Start.exit_crit_edge:             ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end222.i:                                      ; preds = %if.end217.i
  %668 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %668)
  %669 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i611) #7
  %670 = getelementptr inbounds [6 x i8], ptr %mm.i611, i32 0, i32 1
  %671 = getelementptr inbounds [6 x i8], ptr %mm.i611, i32 0, i32 2
  %672 = getelementptr inbounds [6 x i8], ptr %mm.i611, i32 0, i32 3
  %673 = getelementptr inbounds [6 x i8], ptr %mm.i611, i32 0, i32 4
  %674 = getelementptr inbounds [6 x i8], ptr %mm.i611, i32 0, i32 5
  %675 = ptrtoint ptr %mm.i611 to i32
  call void @__asan_store1_noabort(i32 %675)
  store i8 21, ptr %mm.i611, align 1
  %676 = ptrtoint ptr %670 to i32
  call void @__asan_store1_noabort(i32 %676)
  store i8 -63, ptr %670, align 1
  %677 = ptrtoint ptr %671 to i32
  call void @__asan_store1_noabort(i32 %677)
  store i8 1, ptr %671, align 1
  %678 = ptrtoint ptr %672 to i32
  call void @__asan_store1_noabort(i32 %678)
  store i8 0, ptr %672, align 1
  %679 = ptrtoint ptr %673 to i32
  call void @__asan_store1_noabort(i32 %679)
  store i8 %qam64IsGainMan.059.i.off0, ptr %673, align 1
  %680 = ptrtoint ptr %674 to i32
  call void @__asan_store1_noabort(i32 %680)
  store i8 %qam16TdTpsPwr.055.i.off8, ptr %674, align 1
  %681 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i610) #7
  %683 = getelementptr inbounds i8, ptr %msg.i.i610, i32 4
  %684 = ptrtoint ptr %683 to i32
  call void @__asan_store4_noabort(i32 %684)
  store i32 458751, ptr %683, align 4
  %conv.i.i616 = zext i8 %669 to i16
  %685 = ptrtoint ptr %msg.i.i610 to i32
  call void @__asan_store2_noabort(i32 %685)
  store i16 %conv.i.i616, ptr %msg.i.i610, align 4
  %flags.i.i617 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i610, i32 0, i32 1
  %686 = ptrtoint ptr %flags.i.i617 to i32
  call void @__asan_store2_noabort(i32 %686)
  store i16 0, ptr %flags.i.i617, align 2
  %buf.i.i618 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i610, i32 0, i32 3
  %687 = ptrtoint ptr %buf.i.i618 to i32
  call void @__asan_store4_noabort(i32 %687)
  store ptr %mm.i611, ptr %buf.i.i618, align 4
  %call.i.i619 = call i32 @i2c_transfer(ptr noundef %682, ptr noundef nonnull %msg.i.i610, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i619)
  %cmp.not.i.not.i620.not = icmp eq i32 %call.i.i619, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i610) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i611) #7
  %extract.t858 = trunc i16 %525 to i8
  %extract861 = lshr i16 %transmissionParams.253.i, 8
  %extract.t862 = trunc i16 %extract861 to i8
  br i1 %cmp.not.i.not.i620.not, label %if.end222.i.sw.epilog340.i_crit_edge, label %if.end222.i.DRX_Start.exit_crit_edge

if.end222.i.DRX_Start.exit_crit_edge:             ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end222.i.sw.epilog340.i_crit_edge:             ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog340.i

sw.bb234.i:                                       ; preds = %if.end176.i
  %688 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %689)
  %tobool239.not.i = icmp eq i32 %689, 0
  %extract.t848 = trunc i16 %transmissionParams.253.i to i8
  %extract852 = lshr i16 %transmissionParams.253.i, 8
  %extract.t853 = trunc i16 %extract852 to i8
  br i1 %tobool239.not.i, label %sw.bb234.i.if.end344.i_crit_edge, label %if.then240.i

sw.bb234.i.if.end344.i_crit_edge:                 ; preds = %sw.bb234.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end344.i

if.then240.i:                                     ; preds = %sw.bb234.i
  %690 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %690)
  %691 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i601) #7
  %692 = getelementptr inbounds [6 x i8], ptr %mm.i601, i32 0, i32 1
  %693 = getelementptr inbounds [6 x i8], ptr %mm.i601, i32 0, i32 2
  %694 = getelementptr inbounds [6 x i8], ptr %mm.i601, i32 0, i32 3
  %695 = getelementptr inbounds [6 x i8], ptr %mm.i601, i32 0, i32 4
  %696 = getelementptr inbounds [6 x i8], ptr %mm.i601, i32 0, i32 5
  %697 = ptrtoint ptr %mm.i601 to i32
  call void @__asan_store1_noabort(i32 %697)
  store i8 70, ptr %mm.i601, align 1
  %698 = ptrtoint ptr %692 to i32
  call void @__asan_store1_noabort(i32 %698)
  store i8 -63, ptr %692, align 1
  %699 = ptrtoint ptr %693 to i32
  call void @__asan_store1_noabort(i32 %699)
  store i8 1, ptr %693, align 1
  %700 = ptrtoint ptr %694 to i32
  call void @__asan_store1_noabort(i32 %700)
  store i8 0, ptr %694, align 1
  %701 = ptrtoint ptr %695 to i32
  call void @__asan_store1_noabort(i32 %701)
  store i8 0, ptr %695, align 1
  %702 = ptrtoint ptr %696 to i32
  call void @__asan_store1_noabort(i32 %702)
  store i8 0, ptr %696, align 1
  %703 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i600) #7
  %705 = getelementptr inbounds i8, ptr %msg.i.i600, i32 4
  %706 = ptrtoint ptr %705 to i32
  call void @__asan_store4_noabort(i32 %706)
  store i32 458751, ptr %705, align 4
  %conv.i.i604 = zext i8 %691 to i16
  %707 = ptrtoint ptr %msg.i.i600 to i32
  call void @__asan_store2_noabort(i32 %707)
  store i16 %conv.i.i604, ptr %msg.i.i600, align 4
  %flags.i.i605 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i600, i32 0, i32 1
  %708 = ptrtoint ptr %flags.i.i605 to i32
  call void @__asan_store2_noabort(i32 %708)
  store i16 0, ptr %flags.i.i605, align 2
  %buf.i.i606 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i600, i32 0, i32 3
  %709 = ptrtoint ptr %buf.i.i606 to i32
  call void @__asan_store4_noabort(i32 %709)
  store ptr %mm.i601, ptr %buf.i.i606, align 4
  %call.i.i607 = call i32 @i2c_transfer(ptr noundef %704, ptr noundef nonnull %msg.i.i600, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i607)
  %cmp.not.i.not.i608.not = icmp eq i32 %call.i.i607, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i600) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i601) #7
  br i1 %cmp.not.i.not.i608.not, label %if.end245.i, label %if.then240.i.DRX_Start.exit_crit_edge

if.then240.i.DRX_Start.exit_crit_edge:            ; preds = %if.then240.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end245.i:                                      ; preds = %if.then240.i
  %710 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %710)
  %711 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i591) #7
  %712 = getelementptr inbounds [6 x i8], ptr %mm.i591, i32 0, i32 1
  %713 = getelementptr inbounds [6 x i8], ptr %mm.i591, i32 0, i32 2
  %714 = getelementptr inbounds [6 x i8], ptr %mm.i591, i32 0, i32 3
  %715 = getelementptr inbounds [6 x i8], ptr %mm.i591, i32 0, i32 4
  %716 = getelementptr inbounds [6 x i8], ptr %mm.i591, i32 0, i32 5
  %717 = ptrtoint ptr %mm.i591 to i32
  call void @__asan_store1_noabort(i32 %717)
  store i8 17, ptr %mm.i591, align 1
  %718 = ptrtoint ptr %712 to i32
  call void @__asan_store1_noabort(i32 %718)
  store i8 1, ptr %712, align 1
  %719 = ptrtoint ptr %713 to i32
  call void @__asan_store1_noabort(i32 %719)
  store i8 2, ptr %713, align 1
  %720 = ptrtoint ptr %714 to i32
  call void @__asan_store1_noabort(i32 %720)
  store i8 0, ptr %714, align 1
  %721 = ptrtoint ptr %715 to i32
  call void @__asan_store1_noabort(i32 %721)
  store i8 0, ptr %715, align 1
  %722 = ptrtoint ptr %716 to i32
  call void @__asan_store1_noabort(i32 %722)
  store i8 0, ptr %716, align 1
  %723 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i590) #7
  %725 = getelementptr inbounds i8, ptr %msg.i.i590, i32 4
  %726 = ptrtoint ptr %725 to i32
  call void @__asan_store4_noabort(i32 %726)
  store i32 458751, ptr %725, align 4
  %conv.i.i594 = zext i8 %711 to i16
  %727 = ptrtoint ptr %msg.i.i590 to i32
  call void @__asan_store2_noabort(i32 %727)
  store i16 %conv.i.i594, ptr %msg.i.i590, align 4
  %flags.i.i595 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i590, i32 0, i32 1
  %728 = ptrtoint ptr %flags.i.i595 to i32
  call void @__asan_store2_noabort(i32 %728)
  store i16 0, ptr %flags.i.i595, align 2
  %buf.i.i596 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i590, i32 0, i32 3
  %729 = ptrtoint ptr %buf.i.i596 to i32
  call void @__asan_store4_noabort(i32 %729)
  store ptr %mm.i591, ptr %buf.i.i596, align 4
  %call.i.i597 = call i32 @i2c_transfer(ptr noundef %724, ptr noundef nonnull %msg.i.i590, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i597)
  %cmp.not.i.not.i598.not = icmp eq i32 %call.i.i597, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i590) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i591) #7
  br i1 %cmp.not.i.not.i598.not, label %if.end250.i, label %if.end245.i.DRX_Start.exit_crit_edge

if.end245.i.DRX_Start.exit_crit_edge:             ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end250.i:                                      ; preds = %if.end245.i
  %730 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %730)
  %731 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i581) #7
  %732 = getelementptr inbounds [6 x i8], ptr %mm.i581, i32 0, i32 1
  %733 = getelementptr inbounds [6 x i8], ptr %mm.i581, i32 0, i32 2
  %734 = getelementptr inbounds [6 x i8], ptr %mm.i581, i32 0, i32 3
  %735 = getelementptr inbounds [6 x i8], ptr %mm.i581, i32 0, i32 4
  %736 = getelementptr inbounds [6 x i8], ptr %mm.i581, i32 0, i32 5
  %737 = ptrtoint ptr %mm.i581 to i32
  call void @__asan_store1_noabort(i32 %737)
  store i8 26, ptr %mm.i581, align 1
  %738 = ptrtoint ptr %732 to i32
  call void @__asan_store1_noabort(i32 %738)
  store i8 1, ptr %732, align 1
  %739 = ptrtoint ptr %733 to i32
  call void @__asan_store1_noabort(i32 %739)
  store i8 2, ptr %733, align 1
  %740 = ptrtoint ptr %734 to i32
  call void @__asan_store1_noabort(i32 %740)
  store i8 0, ptr %734, align 1
  %741 = ptrtoint ptr %735 to i32
  call void @__asan_store1_noabort(i32 %741)
  store i8 16, ptr %735, align 1
  %742 = ptrtoint ptr %736 to i32
  call void @__asan_store1_noabort(i32 %742)
  store i8 0, ptr %736, align 1
  %743 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i580) #7
  %745 = getelementptr inbounds i8, ptr %msg.i.i580, i32 4
  %746 = ptrtoint ptr %745 to i32
  call void @__asan_store4_noabort(i32 %746)
  store i32 458751, ptr %745, align 4
  %conv.i.i584 = zext i8 %731 to i16
  %747 = ptrtoint ptr %msg.i.i580 to i32
  call void @__asan_store2_noabort(i32 %747)
  store i16 %conv.i.i584, ptr %msg.i.i580, align 4
  %flags.i.i585 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i580, i32 0, i32 1
  %748 = ptrtoint ptr %flags.i.i585 to i32
  call void @__asan_store2_noabort(i32 %748)
  store i16 0, ptr %flags.i.i585, align 2
  %buf.i.i586 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i580, i32 0, i32 3
  %749 = ptrtoint ptr %buf.i.i586 to i32
  call void @__asan_store4_noabort(i32 %749)
  store ptr %mm.i581, ptr %buf.i.i586, align 4
  %call.i.i587 = call i32 @i2c_transfer(ptr noundef %744, ptr noundef nonnull %msg.i.i580, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i587)
  %cmp.not.i.not.i588.not = icmp eq i32 %call.i.i587, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i580) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i581) #7
  br i1 %cmp.not.i.not.i588.not, label %if.end255.i, label %if.end250.i.DRX_Start.exit_crit_edge

if.end250.i.DRX_Start.exit_crit_edge:             ; preds = %if.end250.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end255.i:                                      ; preds = %if.end250.i
  %750 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %750)
  %751 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i571) #7
  %752 = getelementptr inbounds [6 x i8], ptr %mm.i571, i32 0, i32 1
  %753 = getelementptr inbounds [6 x i8], ptr %mm.i571, i32 0, i32 2
  %754 = getelementptr inbounds [6 x i8], ptr %mm.i571, i32 0, i32 3
  %755 = getelementptr inbounds [6 x i8], ptr %mm.i571, i32 0, i32 4
  %756 = getelementptr inbounds [6 x i8], ptr %mm.i571, i32 0, i32 5
  %757 = ptrtoint ptr %mm.i571 to i32
  call void @__asan_store1_noabort(i32 %757)
  store i8 27, ptr %mm.i571, align 1
  %758 = ptrtoint ptr %752 to i32
  call void @__asan_store1_noabort(i32 %758)
  store i8 1, ptr %752, align 1
  %759 = ptrtoint ptr %753 to i32
  call void @__asan_store1_noabort(i32 %759)
  store i8 2, ptr %753, align 1
  %760 = ptrtoint ptr %754 to i32
  call void @__asan_store1_noabort(i32 %760)
  store i8 0, ptr %754, align 1
  %761 = ptrtoint ptr %755 to i32
  call void @__asan_store1_noabort(i32 %761)
  store i8 0, ptr %755, align 1
  %762 = ptrtoint ptr %756 to i32
  call void @__asan_store1_noabort(i32 %762)
  store i8 0, ptr %756, align 1
  %763 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i570) #7
  %765 = getelementptr inbounds i8, ptr %msg.i.i570, i32 4
  %766 = ptrtoint ptr %765 to i32
  call void @__asan_store4_noabort(i32 %766)
  store i32 458751, ptr %765, align 4
  %conv.i.i574 = zext i8 %751 to i16
  %767 = ptrtoint ptr %msg.i.i570 to i32
  call void @__asan_store2_noabort(i32 %767)
  store i16 %conv.i.i574, ptr %msg.i.i570, align 4
  %flags.i.i575 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i570, i32 0, i32 1
  %768 = ptrtoint ptr %flags.i.i575 to i32
  call void @__asan_store2_noabort(i32 %768)
  store i16 0, ptr %flags.i.i575, align 2
  %buf.i.i576 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i570, i32 0, i32 3
  %769 = ptrtoint ptr %buf.i.i576 to i32
  call void @__asan_store4_noabort(i32 %769)
  store ptr %mm.i571, ptr %buf.i.i576, align 4
  %call.i.i577 = call i32 @i2c_transfer(ptr noundef %764, ptr noundef nonnull %msg.i.i570, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i577)
  %cmp.not.i.not.i578.not = icmp eq i32 %call.i.i577, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i570) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i571) #7
  br i1 %cmp.not.i.not.i578.not, label %if.end260.i, label %if.end255.i.DRX_Start.exit_crit_edge

if.end255.i.DRX_Start.exit_crit_edge:             ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end260.i:                                      ; preds = %if.end255.i
  %770 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %770)
  %771 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i561) #7
  %772 = getelementptr inbounds [6 x i8], ptr %mm.i561, i32 0, i32 1
  %773 = getelementptr inbounds [6 x i8], ptr %mm.i561, i32 0, i32 2
  %774 = getelementptr inbounds [6 x i8], ptr %mm.i561, i32 0, i32 3
  %775 = getelementptr inbounds [6 x i8], ptr %mm.i561, i32 0, i32 4
  %776 = getelementptr inbounds [6 x i8], ptr %mm.i561, i32 0, i32 5
  %777 = ptrtoint ptr %mm.i561 to i32
  call void @__asan_store1_noabort(i32 %777)
  store i8 28, ptr %mm.i561, align 1
  %778 = ptrtoint ptr %772 to i32
  call void @__asan_store1_noabort(i32 %778)
  store i8 1, ptr %772, align 1
  %779 = ptrtoint ptr %773 to i32
  call void @__asan_store1_noabort(i32 %779)
  store i8 2, ptr %773, align 1
  %780 = ptrtoint ptr %774 to i32
  call void @__asan_store1_noabort(i32 %780)
  store i8 0, ptr %774, align 1
  %781 = ptrtoint ptr %775 to i32
  call void @__asan_store1_noabort(i32 %781)
  store i8 0, ptr %775, align 1
  %782 = ptrtoint ptr %776 to i32
  call void @__asan_store1_noabort(i32 %782)
  store i8 0, ptr %776, align 1
  %783 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i560) #7
  %785 = getelementptr inbounds i8, ptr %msg.i.i560, i32 4
  %786 = ptrtoint ptr %785 to i32
  call void @__asan_store4_noabort(i32 %786)
  store i32 458751, ptr %785, align 4
  %conv.i.i564 = zext i8 %771 to i16
  %787 = ptrtoint ptr %msg.i.i560 to i32
  call void @__asan_store2_noabort(i32 %787)
  store i16 %conv.i.i564, ptr %msg.i.i560, align 4
  %flags.i.i565 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i560, i32 0, i32 1
  %788 = ptrtoint ptr %flags.i.i565 to i32
  call void @__asan_store2_noabort(i32 %788)
  store i16 0, ptr %flags.i.i565, align 2
  %buf.i.i566 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i560, i32 0, i32 3
  %789 = ptrtoint ptr %buf.i.i566 to i32
  call void @__asan_store4_noabort(i32 %789)
  store ptr %mm.i561, ptr %buf.i.i566, align 4
  %call.i.i567 = call i32 @i2c_transfer(ptr noundef %784, ptr noundef nonnull %msg.i.i560, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i567)
  %cmp.not.i.not.i568.not = icmp eq i32 %call.i.i567, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i560) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i561) #7
  br i1 %cmp.not.i.not.i568.not, label %if.end265.i, label %if.end260.i.DRX_Start.exit_crit_edge

if.end260.i.DRX_Start.exit_crit_edge:             ; preds = %if.end260.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end265.i:                                      ; preds = %if.end260.i
  %790 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %790)
  %791 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i549) #7
  %792 = getelementptr inbounds [6 x i8], ptr %mm.i549, i32 0, i32 1
  %793 = getelementptr inbounds [6 x i8], ptr %mm.i549, i32 0, i32 2
  %794 = getelementptr inbounds [6 x i8], ptr %mm.i549, i32 0, i32 3
  %795 = getelementptr inbounds [6 x i8], ptr %mm.i549, i32 0, i32 4
  %796 = getelementptr inbounds [6 x i8], ptr %mm.i549, i32 0, i32 5
  %797 = ptrtoint ptr %mm.i549 to i32
  call void @__asan_store1_noabort(i32 %797)
  store i8 98, ptr %mm.i549, align 1
  %798 = ptrtoint ptr %792 to i32
  call void @__asan_store1_noabort(i32 %798)
  store i8 -63, ptr %792, align 1
  %799 = ptrtoint ptr %793 to i32
  call void @__asan_store1_noabort(i32 %799)
  store i8 1, ptr %793, align 1
  %800 = ptrtoint ptr %794 to i32
  call void @__asan_store1_noabort(i32 %800)
  store i8 0, ptr %794, align 1
  %801 = ptrtoint ptr %795 to i32
  call void @__asan_store1_noabort(i32 %801)
  store i8 %qpskTdTpsPwr.054.i.off0, ptr %795, align 1
  %802 = ptrtoint ptr %796 to i32
  call void @__asan_store1_noabort(i32 %802)
  store i8 %qpskTdTpsPwr.054.i.off8, ptr %796, align 1
  %803 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i548) #7
  %805 = getelementptr inbounds i8, ptr %msg.i.i548, i32 4
  %806 = ptrtoint ptr %805 to i32
  call void @__asan_store4_noabort(i32 %806)
  store i32 458751, ptr %805, align 4
  %conv.i.i554 = zext i8 %791 to i16
  %807 = ptrtoint ptr %msg.i.i548 to i32
  call void @__asan_store2_noabort(i32 %807)
  store i16 %conv.i.i554, ptr %msg.i.i548, align 4
  %flags.i.i555 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i548, i32 0, i32 1
  %808 = ptrtoint ptr %flags.i.i555 to i32
  call void @__asan_store2_noabort(i32 %808)
  store i16 0, ptr %flags.i.i555, align 2
  %buf.i.i556 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i548, i32 0, i32 3
  %809 = ptrtoint ptr %buf.i.i556 to i32
  call void @__asan_store4_noabort(i32 %809)
  store ptr %mm.i549, ptr %buf.i.i556, align 4
  %call.i.i557 = call i32 @i2c_transfer(ptr noundef %804, ptr noundef nonnull %msg.i.i548, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i557)
  %cmp.not.i.not.i558.not = icmp eq i32 %call.i.i557, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i548) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i549) #7
  br i1 %cmp.not.i.not.i558.not, label %if.end270.i, label %if.end265.i.DRX_Start.exit_crit_edge

if.end265.i.DRX_Start.exit_crit_edge:             ; preds = %if.end265.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end270.i:                                      ; preds = %if.end265.i
  %810 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %810)
  %811 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i538) #7
  %812 = getelementptr inbounds [6 x i8], ptr %mm.i538, i32 0, i32 1
  %813 = getelementptr inbounds [6 x i8], ptr %mm.i538, i32 0, i32 2
  %814 = getelementptr inbounds [6 x i8], ptr %mm.i538, i32 0, i32 3
  %815 = getelementptr inbounds [6 x i8], ptr %mm.i538, i32 0, i32 4
  %816 = getelementptr inbounds [6 x i8], ptr %mm.i538, i32 0, i32 5
  %817 = ptrtoint ptr %mm.i538 to i32
  call void @__asan_store1_noabort(i32 %817)
  store i8 42, ptr %mm.i538, align 1
  %818 = ptrtoint ptr %812 to i32
  call void @__asan_store1_noabort(i32 %818)
  store i8 -63, ptr %812, align 1
  %819 = ptrtoint ptr %813 to i32
  call void @__asan_store1_noabort(i32 %819)
  store i8 1, ptr %813, align 1
  %820 = ptrtoint ptr %814 to i32
  call void @__asan_store1_noabort(i32 %820)
  store i8 0, ptr %814, align 1
  %821 = ptrtoint ptr %815 to i32
  call void @__asan_store1_noabort(i32 %821)
  store i8 %qpskSnCeGain.0.i.off0, ptr %815, align 1
  %822 = ptrtoint ptr %816 to i32
  call void @__asan_store1_noabort(i32 %822)
  store i8 0, ptr %816, align 1
  %823 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i537) #7
  %825 = getelementptr inbounds i8, ptr %msg.i.i537, i32 4
  %826 = ptrtoint ptr %825 to i32
  call void @__asan_store4_noabort(i32 %826)
  store i32 458751, ptr %825, align 4
  %conv.i.i542 = zext i8 %811 to i16
  %827 = ptrtoint ptr %msg.i.i537 to i32
  call void @__asan_store2_noabort(i32 %827)
  store i16 %conv.i.i542, ptr %msg.i.i537, align 4
  %flags.i.i543 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i537, i32 0, i32 1
  %828 = ptrtoint ptr %flags.i.i543 to i32
  call void @__asan_store2_noabort(i32 %828)
  store i16 0, ptr %flags.i.i543, align 2
  %buf.i.i544 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i537, i32 0, i32 3
  %829 = ptrtoint ptr %buf.i.i544 to i32
  call void @__asan_store4_noabort(i32 %829)
  store ptr %mm.i538, ptr %buf.i.i544, align 4
  %call.i.i545 = call i32 @i2c_transfer(ptr noundef %824, ptr noundef nonnull %msg.i.i537, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i545)
  %cmp.not.i.not.i546.not = icmp eq i32 %call.i.i545, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i537) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i538) #7
  br i1 %cmp.not.i.not.i546.not, label %if.end275.i, label %if.end270.i.DRX_Start.exit_crit_edge

if.end270.i.DRX_Start.exit_crit_edge:             ; preds = %if.end270.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end275.i:                                      ; preds = %if.end270.i
  %830 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %830)
  %831 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i526) #7
  %832 = getelementptr inbounds [6 x i8], ptr %mm.i526, i32 0, i32 1
  %833 = getelementptr inbounds [6 x i8], ptr %mm.i526, i32 0, i32 2
  %834 = getelementptr inbounds [6 x i8], ptr %mm.i526, i32 0, i32 3
  %835 = getelementptr inbounds [6 x i8], ptr %mm.i526, i32 0, i32 4
  %836 = getelementptr inbounds [6 x i8], ptr %mm.i526, i32 0, i32 5
  %837 = ptrtoint ptr %mm.i526 to i32
  call void @__asan_store1_noabort(i32 %837)
  store i8 21, ptr %mm.i526, align 1
  %838 = ptrtoint ptr %832 to i32
  call void @__asan_store1_noabort(i32 %838)
  store i8 -63, ptr %832, align 1
  %839 = ptrtoint ptr %833 to i32
  call void @__asan_store1_noabort(i32 %839)
  store i8 1, ptr %833, align 1
  %840 = ptrtoint ptr %834 to i32
  call void @__asan_store1_noabort(i32 %840)
  store i8 0, ptr %834, align 1
  %841 = ptrtoint ptr %835 to i32
  call void @__asan_store1_noabort(i32 %841)
  store i8 %qpskIsGainMan.057.i.off0, ptr %835, align 1
  %842 = ptrtoint ptr %836 to i32
  call void @__asan_store1_noabort(i32 %842)
  store i8 %qam16TdTpsPwr.055.i.off8, ptr %836, align 1
  %843 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i525) #7
  %845 = getelementptr inbounds i8, ptr %msg.i.i525, i32 4
  %846 = ptrtoint ptr %845 to i32
  call void @__asan_store4_noabort(i32 %846)
  store i32 458751, ptr %845, align 4
  %conv.i.i531 = zext i8 %831 to i16
  %847 = ptrtoint ptr %msg.i.i525 to i32
  call void @__asan_store2_noabort(i32 %847)
  store i16 %conv.i.i531, ptr %msg.i.i525, align 4
  %flags.i.i532 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i525, i32 0, i32 1
  %848 = ptrtoint ptr %flags.i.i532 to i32
  call void @__asan_store2_noabort(i32 %848)
  store i16 0, ptr %flags.i.i532, align 2
  %buf.i.i533 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i525, i32 0, i32 3
  %849 = ptrtoint ptr %buf.i.i533 to i32
  call void @__asan_store4_noabort(i32 %849)
  store ptr %mm.i526, ptr %buf.i.i533, align 4
  %call.i.i534 = call i32 @i2c_transfer(ptr noundef %844, ptr noundef nonnull %msg.i.i525, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i534)
  %cmp.not.i.not.i535.not = icmp eq i32 %call.i.i534, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i525) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i526) #7
  %extract.t859 = trunc i16 %transmissionParams.253.i to i8
  %extract863 = lshr i16 %transmissionParams.253.i, 8
  %extract.t864 = trunc i16 %extract863 to i8
  br i1 %cmp.not.i.not.i535.not, label %if.end275.i.sw.epilog340.i_crit_edge, label %if.end275.i.DRX_Start.exit_crit_edge

if.end275.i.DRX_Start.exit_crit_edge:             ; preds = %if.end275.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end275.i.sw.epilog340.i_crit_edge:             ; preds = %if.end275.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog340.i

sw.bb287.i:                                       ; preds = %if.end176.i
  %850 = or i16 %transmissionParams.253.i, 16
  %851 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %852)
  %tobool292.not.i = icmp eq i32 %852, 0
  %extract.t849 = trunc i16 %850 to i8
  %extract854 = lshr i16 %transmissionParams.253.i, 8
  %extract.t855 = trunc i16 %extract854 to i8
  br i1 %tobool292.not.i, label %sw.bb287.i.if.end344.i_crit_edge, label %if.then293.i

sw.bb287.i.if.end344.i_crit_edge:                 ; preds = %sw.bb287.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end344.i

if.then293.i:                                     ; preds = %sw.bb287.i
  %853 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %853)
  %854 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i516) #7
  %855 = getelementptr inbounds [6 x i8], ptr %mm.i516, i32 0, i32 1
  %856 = getelementptr inbounds [6 x i8], ptr %mm.i516, i32 0, i32 2
  %857 = getelementptr inbounds [6 x i8], ptr %mm.i516, i32 0, i32 3
  %858 = getelementptr inbounds [6 x i8], ptr %mm.i516, i32 0, i32 4
  %859 = getelementptr inbounds [6 x i8], ptr %mm.i516, i32 0, i32 5
  %860 = ptrtoint ptr %mm.i516 to i32
  call void @__asan_store1_noabort(i32 %860)
  store i8 70, ptr %mm.i516, align 1
  %861 = ptrtoint ptr %855 to i32
  call void @__asan_store1_noabort(i32 %861)
  store i8 -63, ptr %855, align 1
  %862 = ptrtoint ptr %856 to i32
  call void @__asan_store1_noabort(i32 %862)
  store i8 1, ptr %856, align 1
  %863 = ptrtoint ptr %857 to i32
  call void @__asan_store1_noabort(i32 %863)
  store i8 0, ptr %857, align 1
  %864 = ptrtoint ptr %858 to i32
  call void @__asan_store1_noabort(i32 %864)
  store i8 1, ptr %858, align 1
  %865 = ptrtoint ptr %859 to i32
  call void @__asan_store1_noabort(i32 %865)
  store i8 0, ptr %859, align 1
  %866 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i515) #7
  %868 = getelementptr inbounds i8, ptr %msg.i.i515, i32 4
  %869 = ptrtoint ptr %868 to i32
  call void @__asan_store4_noabort(i32 %869)
  store i32 458751, ptr %868, align 4
  %conv.i.i519 = zext i8 %854 to i16
  %870 = ptrtoint ptr %msg.i.i515 to i32
  call void @__asan_store2_noabort(i32 %870)
  store i16 %conv.i.i519, ptr %msg.i.i515, align 4
  %flags.i.i520 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i515, i32 0, i32 1
  %871 = ptrtoint ptr %flags.i.i520 to i32
  call void @__asan_store2_noabort(i32 %871)
  store i16 0, ptr %flags.i.i520, align 2
  %buf.i.i521 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i515, i32 0, i32 3
  %872 = ptrtoint ptr %buf.i.i521 to i32
  call void @__asan_store4_noabort(i32 %872)
  store ptr %mm.i516, ptr %buf.i.i521, align 4
  %call.i.i522 = call i32 @i2c_transfer(ptr noundef %867, ptr noundef nonnull %msg.i.i515, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i522)
  %cmp.not.i.not.i523.not = icmp eq i32 %call.i.i522, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i515) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i516) #7
  br i1 %cmp.not.i.not.i523.not, label %if.end298.i, label %if.then293.i.DRX_Start.exit_crit_edge

if.then293.i.DRX_Start.exit_crit_edge:            ; preds = %if.then293.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end298.i:                                      ; preds = %if.then293.i
  %873 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %873)
  %874 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i506) #7
  %875 = getelementptr inbounds [6 x i8], ptr %mm.i506, i32 0, i32 1
  %876 = getelementptr inbounds [6 x i8], ptr %mm.i506, i32 0, i32 2
  %877 = getelementptr inbounds [6 x i8], ptr %mm.i506, i32 0, i32 3
  %878 = getelementptr inbounds [6 x i8], ptr %mm.i506, i32 0, i32 4
  %879 = getelementptr inbounds [6 x i8], ptr %mm.i506, i32 0, i32 5
  %880 = ptrtoint ptr %mm.i506 to i32
  call void @__asan_store1_noabort(i32 %880)
  store i8 17, ptr %mm.i506, align 1
  %881 = ptrtoint ptr %875 to i32
  call void @__asan_store1_noabort(i32 %881)
  store i8 1, ptr %875, align 1
  %882 = ptrtoint ptr %876 to i32
  call void @__asan_store1_noabort(i32 %882)
  store i8 2, ptr %876, align 1
  %883 = ptrtoint ptr %877 to i32
  call void @__asan_store1_noabort(i32 %883)
  store i8 0, ptr %877, align 1
  %884 = ptrtoint ptr %878 to i32
  call void @__asan_store1_noabort(i32 %884)
  store i8 1, ptr %878, align 1
  %885 = ptrtoint ptr %879 to i32
  call void @__asan_store1_noabort(i32 %885)
  store i8 0, ptr %879, align 1
  %886 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i505) #7
  %888 = getelementptr inbounds i8, ptr %msg.i.i505, i32 4
  %889 = ptrtoint ptr %888 to i32
  call void @__asan_store4_noabort(i32 %889)
  store i32 458751, ptr %888, align 4
  %conv.i.i509 = zext i8 %874 to i16
  %890 = ptrtoint ptr %msg.i.i505 to i32
  call void @__asan_store2_noabort(i32 %890)
  store i16 %conv.i.i509, ptr %msg.i.i505, align 4
  %flags.i.i510 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i505, i32 0, i32 1
  %891 = ptrtoint ptr %flags.i.i510 to i32
  call void @__asan_store2_noabort(i32 %891)
  store i16 0, ptr %flags.i.i510, align 2
  %buf.i.i511 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i505, i32 0, i32 3
  %892 = ptrtoint ptr %buf.i.i511 to i32
  call void @__asan_store4_noabort(i32 %892)
  store ptr %mm.i506, ptr %buf.i.i511, align 4
  %call.i.i512 = call i32 @i2c_transfer(ptr noundef %887, ptr noundef nonnull %msg.i.i505, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i512)
  %cmp.not.i.not.i513.not = icmp eq i32 %call.i.i512, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i505) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i506) #7
  br i1 %cmp.not.i.not.i513.not, label %if.end303.i, label %if.end298.i.DRX_Start.exit_crit_edge

if.end298.i.DRX_Start.exit_crit_edge:             ; preds = %if.end298.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end303.i:                                      ; preds = %if.end298.i
  %893 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %893)
  %894 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i496) #7
  %895 = getelementptr inbounds [6 x i8], ptr %mm.i496, i32 0, i32 1
  %896 = getelementptr inbounds [6 x i8], ptr %mm.i496, i32 0, i32 2
  %897 = getelementptr inbounds [6 x i8], ptr %mm.i496, i32 0, i32 3
  %898 = getelementptr inbounds [6 x i8], ptr %mm.i496, i32 0, i32 4
  %899 = getelementptr inbounds [6 x i8], ptr %mm.i496, i32 0, i32 5
  %900 = ptrtoint ptr %mm.i496 to i32
  call void @__asan_store1_noabort(i32 %900)
  store i8 26, ptr %mm.i496, align 1
  %901 = ptrtoint ptr %895 to i32
  call void @__asan_store1_noabort(i32 %901)
  store i8 1, ptr %895, align 1
  %902 = ptrtoint ptr %896 to i32
  call void @__asan_store1_noabort(i32 %902)
  store i8 2, ptr %896, align 1
  %903 = ptrtoint ptr %897 to i32
  call void @__asan_store1_noabort(i32 %903)
  store i8 0, ptr %897, align 1
  %904 = ptrtoint ptr %898 to i32
  call void @__asan_store1_noabort(i32 %904)
  store i8 16, ptr %898, align 1
  %905 = ptrtoint ptr %899 to i32
  call void @__asan_store1_noabort(i32 %905)
  store i8 0, ptr %899, align 1
  %906 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i495) #7
  %908 = getelementptr inbounds i8, ptr %msg.i.i495, i32 4
  %909 = ptrtoint ptr %908 to i32
  call void @__asan_store4_noabort(i32 %909)
  store i32 458751, ptr %908, align 4
  %conv.i.i499 = zext i8 %894 to i16
  %910 = ptrtoint ptr %msg.i.i495 to i32
  call void @__asan_store2_noabort(i32 %910)
  store i16 %conv.i.i499, ptr %msg.i.i495, align 4
  %flags.i.i500 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i495, i32 0, i32 1
  %911 = ptrtoint ptr %flags.i.i500 to i32
  call void @__asan_store2_noabort(i32 %911)
  store i16 0, ptr %flags.i.i500, align 2
  %buf.i.i501 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i495, i32 0, i32 3
  %912 = ptrtoint ptr %buf.i.i501 to i32
  call void @__asan_store4_noabort(i32 %912)
  store ptr %mm.i496, ptr %buf.i.i501, align 4
  %call.i.i502 = call i32 @i2c_transfer(ptr noundef %907, ptr noundef nonnull %msg.i.i495, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i502)
  %cmp.not.i.not.i503.not = icmp eq i32 %call.i.i502, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i495) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i496) #7
  br i1 %cmp.not.i.not.i503.not, label %if.end308.i, label %if.end303.i.DRX_Start.exit_crit_edge

if.end303.i.DRX_Start.exit_crit_edge:             ; preds = %if.end303.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end308.i:                                      ; preds = %if.end303.i
  %913 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %913)
  %914 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i486) #7
  %915 = getelementptr inbounds [6 x i8], ptr %mm.i486, i32 0, i32 1
  %916 = getelementptr inbounds [6 x i8], ptr %mm.i486, i32 0, i32 2
  %917 = getelementptr inbounds [6 x i8], ptr %mm.i486, i32 0, i32 3
  %918 = getelementptr inbounds [6 x i8], ptr %mm.i486, i32 0, i32 4
  %919 = getelementptr inbounds [6 x i8], ptr %mm.i486, i32 0, i32 5
  %920 = ptrtoint ptr %mm.i486 to i32
  call void @__asan_store1_noabort(i32 %920)
  store i8 27, ptr %mm.i486, align 1
  %921 = ptrtoint ptr %915 to i32
  call void @__asan_store1_noabort(i32 %921)
  store i8 1, ptr %915, align 1
  %922 = ptrtoint ptr %916 to i32
  call void @__asan_store1_noabort(i32 %922)
  store i8 2, ptr %916, align 1
  %923 = ptrtoint ptr %917 to i32
  call void @__asan_store1_noabort(i32 %923)
  store i8 0, ptr %917, align 1
  %924 = ptrtoint ptr %918 to i32
  call void @__asan_store1_noabort(i32 %924)
  store i8 4, ptr %918, align 1
  %925 = ptrtoint ptr %919 to i32
  call void @__asan_store1_noabort(i32 %925)
  store i8 0, ptr %919, align 1
  %926 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i485) #7
  %928 = getelementptr inbounds i8, ptr %msg.i.i485, i32 4
  %929 = ptrtoint ptr %928 to i32
  call void @__asan_store4_noabort(i32 %929)
  store i32 458751, ptr %928, align 4
  %conv.i.i489 = zext i8 %914 to i16
  %930 = ptrtoint ptr %msg.i.i485 to i32
  call void @__asan_store2_noabort(i32 %930)
  store i16 %conv.i.i489, ptr %msg.i.i485, align 4
  %flags.i.i490 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i485, i32 0, i32 1
  %931 = ptrtoint ptr %flags.i.i490 to i32
  call void @__asan_store2_noabort(i32 %931)
  store i16 0, ptr %flags.i.i490, align 2
  %buf.i.i491 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i485, i32 0, i32 3
  %932 = ptrtoint ptr %buf.i.i491 to i32
  call void @__asan_store4_noabort(i32 %932)
  store ptr %mm.i486, ptr %buf.i.i491, align 4
  %call.i.i492 = call i32 @i2c_transfer(ptr noundef %927, ptr noundef nonnull %msg.i.i485, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i492)
  %cmp.not.i.not.i493.not = icmp eq i32 %call.i.i492, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i485) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i486) #7
  br i1 %cmp.not.i.not.i493.not, label %if.end313.i, label %if.end308.i.DRX_Start.exit_crit_edge

if.end308.i.DRX_Start.exit_crit_edge:             ; preds = %if.end308.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end313.i:                                      ; preds = %if.end308.i
  %933 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %933)
  %934 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i476) #7
  %935 = getelementptr inbounds [6 x i8], ptr %mm.i476, i32 0, i32 1
  %936 = getelementptr inbounds [6 x i8], ptr %mm.i476, i32 0, i32 2
  %937 = getelementptr inbounds [6 x i8], ptr %mm.i476, i32 0, i32 3
  %938 = getelementptr inbounds [6 x i8], ptr %mm.i476, i32 0, i32 4
  %939 = getelementptr inbounds [6 x i8], ptr %mm.i476, i32 0, i32 5
  %940 = ptrtoint ptr %mm.i476 to i32
  call void @__asan_store1_noabort(i32 %940)
  store i8 28, ptr %mm.i476, align 1
  %941 = ptrtoint ptr %935 to i32
  call void @__asan_store1_noabort(i32 %941)
  store i8 1, ptr %935, align 1
  %942 = ptrtoint ptr %936 to i32
  call void @__asan_store1_noabort(i32 %942)
  store i8 2, ptr %936, align 1
  %943 = ptrtoint ptr %937 to i32
  call void @__asan_store1_noabort(i32 %943)
  store i8 0, ptr %937, align 1
  %944 = ptrtoint ptr %938 to i32
  call void @__asan_store1_noabort(i32 %944)
  store i8 0, ptr %938, align 1
  %945 = ptrtoint ptr %939 to i32
  call void @__asan_store1_noabort(i32 %945)
  store i8 0, ptr %939, align 1
  %946 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %946)
  %947 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i475) #7
  %948 = getelementptr inbounds i8, ptr %msg.i.i475, i32 4
  %949 = ptrtoint ptr %948 to i32
  call void @__asan_store4_noabort(i32 %949)
  store i32 458751, ptr %948, align 4
  %conv.i.i479 = zext i8 %934 to i16
  %950 = ptrtoint ptr %msg.i.i475 to i32
  call void @__asan_store2_noabort(i32 %950)
  store i16 %conv.i.i479, ptr %msg.i.i475, align 4
  %flags.i.i480 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i475, i32 0, i32 1
  %951 = ptrtoint ptr %flags.i.i480 to i32
  call void @__asan_store2_noabort(i32 %951)
  store i16 0, ptr %flags.i.i480, align 2
  %buf.i.i481 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i475, i32 0, i32 3
  %952 = ptrtoint ptr %buf.i.i481 to i32
  call void @__asan_store4_noabort(i32 %952)
  store ptr %mm.i476, ptr %buf.i.i481, align 4
  %call.i.i482 = call i32 @i2c_transfer(ptr noundef %947, ptr noundef nonnull %msg.i.i475, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i482)
  %cmp.not.i.not.i483.not = icmp eq i32 %call.i.i482, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i475) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i476) #7
  br i1 %cmp.not.i.not.i483.not, label %if.end318.i, label %if.end313.i.DRX_Start.exit_crit_edge

if.end313.i.DRX_Start.exit_crit_edge:             ; preds = %if.end313.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end318.i:                                      ; preds = %if.end313.i
  %953 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %953)
  %954 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i464) #7
  %955 = getelementptr inbounds [6 x i8], ptr %mm.i464, i32 0, i32 1
  %956 = getelementptr inbounds [6 x i8], ptr %mm.i464, i32 0, i32 2
  %957 = getelementptr inbounds [6 x i8], ptr %mm.i464, i32 0, i32 3
  %958 = getelementptr inbounds [6 x i8], ptr %mm.i464, i32 0, i32 4
  %959 = getelementptr inbounds [6 x i8], ptr %mm.i464, i32 0, i32 5
  %960 = ptrtoint ptr %mm.i464 to i32
  call void @__asan_store1_noabort(i32 %960)
  store i8 98, ptr %mm.i464, align 1
  %961 = ptrtoint ptr %955 to i32
  call void @__asan_store1_noabort(i32 %961)
  store i8 -63, ptr %955, align 1
  %962 = ptrtoint ptr %956 to i32
  call void @__asan_store1_noabort(i32 %962)
  store i8 1, ptr %956, align 1
  %963 = ptrtoint ptr %957 to i32
  call void @__asan_store1_noabort(i32 %963)
  store i8 0, ptr %957, align 1
  %964 = ptrtoint ptr %958 to i32
  call void @__asan_store1_noabort(i32 %964)
  store i8 %qam16TdTpsPwr.055.i.off0, ptr %958, align 1
  %965 = ptrtoint ptr %959 to i32
  call void @__asan_store1_noabort(i32 %965)
  store i8 %qam16TdTpsPwr.055.i.off8, ptr %959, align 1
  %966 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i463) #7
  %968 = getelementptr inbounds i8, ptr %msg.i.i463, i32 4
  %969 = ptrtoint ptr %968 to i32
  call void @__asan_store4_noabort(i32 %969)
  store i32 458751, ptr %968, align 4
  %conv.i.i469 = zext i8 %954 to i16
  %970 = ptrtoint ptr %msg.i.i463 to i32
  call void @__asan_store2_noabort(i32 %970)
  store i16 %conv.i.i469, ptr %msg.i.i463, align 4
  %flags.i.i470 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i463, i32 0, i32 1
  %971 = ptrtoint ptr %flags.i.i470 to i32
  call void @__asan_store2_noabort(i32 %971)
  store i16 0, ptr %flags.i.i470, align 2
  %buf.i.i471 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i463, i32 0, i32 3
  %972 = ptrtoint ptr %buf.i.i471 to i32
  call void @__asan_store4_noabort(i32 %972)
  store ptr %mm.i464, ptr %buf.i.i471, align 4
  %call.i.i472 = call i32 @i2c_transfer(ptr noundef %967, ptr noundef nonnull %msg.i.i463, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i472)
  %cmp.not.i.not.i473.not = icmp eq i32 %call.i.i472, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i463) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i464) #7
  br i1 %cmp.not.i.not.i473.not, label %if.end323.i, label %if.end318.i.DRX_Start.exit_crit_edge

if.end318.i.DRX_Start.exit_crit_edge:             ; preds = %if.end318.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end323.i:                                      ; preds = %if.end318.i
  %973 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %973)
  %974 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i453) #7
  %975 = getelementptr inbounds [6 x i8], ptr %mm.i453, i32 0, i32 1
  %976 = getelementptr inbounds [6 x i8], ptr %mm.i453, i32 0, i32 2
  %977 = getelementptr inbounds [6 x i8], ptr %mm.i453, i32 0, i32 3
  %978 = getelementptr inbounds [6 x i8], ptr %mm.i453, i32 0, i32 4
  %979 = getelementptr inbounds [6 x i8], ptr %mm.i453, i32 0, i32 5
  %980 = ptrtoint ptr %mm.i453 to i32
  call void @__asan_store1_noabort(i32 %980)
  store i8 42, ptr %mm.i453, align 1
  %981 = ptrtoint ptr %975 to i32
  call void @__asan_store1_noabort(i32 %981)
  store i8 -63, ptr %975, align 1
  %982 = ptrtoint ptr %976 to i32
  call void @__asan_store1_noabort(i32 %982)
  store i8 1, ptr %976, align 1
  %983 = ptrtoint ptr %977 to i32
  call void @__asan_store1_noabort(i32 %983)
  store i8 0, ptr %977, align 1
  %984 = ptrtoint ptr %978 to i32
  call void @__asan_store1_noabort(i32 %984)
  store i8 %qam16SnCeGain.0.i.off0, ptr %978, align 1
  %985 = ptrtoint ptr %979 to i32
  call void @__asan_store1_noabort(i32 %985)
  store i8 0, ptr %979, align 1
  %986 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %986)
  %987 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i452) #7
  %988 = getelementptr inbounds i8, ptr %msg.i.i452, i32 4
  %989 = ptrtoint ptr %988 to i32
  call void @__asan_store4_noabort(i32 %989)
  store i32 458751, ptr %988, align 4
  %conv.i.i457 = zext i8 %974 to i16
  %990 = ptrtoint ptr %msg.i.i452 to i32
  call void @__asan_store2_noabort(i32 %990)
  store i16 %conv.i.i457, ptr %msg.i.i452, align 4
  %flags.i.i458 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i452, i32 0, i32 1
  %991 = ptrtoint ptr %flags.i.i458 to i32
  call void @__asan_store2_noabort(i32 %991)
  store i16 0, ptr %flags.i.i458, align 2
  %buf.i.i459 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i452, i32 0, i32 3
  %992 = ptrtoint ptr %buf.i.i459 to i32
  call void @__asan_store4_noabort(i32 %992)
  store ptr %mm.i453, ptr %buf.i.i459, align 4
  %call.i.i460 = call i32 @i2c_transfer(ptr noundef %987, ptr noundef nonnull %msg.i.i452, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i460)
  %cmp.not.i.not.i461.not = icmp eq i32 %call.i.i460, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i452) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i453) #7
  br i1 %cmp.not.i.not.i461.not, label %if.end328.i, label %if.end323.i.DRX_Start.exit_crit_edge

if.end323.i.DRX_Start.exit_crit_edge:             ; preds = %if.end323.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end328.i:                                      ; preds = %if.end323.i
  %993 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %993)
  %994 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i441) #7
  %995 = getelementptr inbounds [6 x i8], ptr %mm.i441, i32 0, i32 1
  %996 = getelementptr inbounds [6 x i8], ptr %mm.i441, i32 0, i32 2
  %997 = getelementptr inbounds [6 x i8], ptr %mm.i441, i32 0, i32 3
  %998 = getelementptr inbounds [6 x i8], ptr %mm.i441, i32 0, i32 4
  %999 = getelementptr inbounds [6 x i8], ptr %mm.i441, i32 0, i32 5
  %1000 = ptrtoint ptr %mm.i441 to i32
  call void @__asan_store1_noabort(i32 %1000)
  store i8 21, ptr %mm.i441, align 1
  %1001 = ptrtoint ptr %995 to i32
  call void @__asan_store1_noabort(i32 %1001)
  store i8 -63, ptr %995, align 1
  %1002 = ptrtoint ptr %996 to i32
  call void @__asan_store1_noabort(i32 %1002)
  store i8 1, ptr %996, align 1
  %1003 = ptrtoint ptr %997 to i32
  call void @__asan_store1_noabort(i32 %1003)
  store i8 0, ptr %997, align 1
  %1004 = ptrtoint ptr %998 to i32
  call void @__asan_store1_noabort(i32 %1004)
  store i8 %qam16IsGainMan.058.i.off0, ptr %998, align 1
  %1005 = ptrtoint ptr %999 to i32
  call void @__asan_store1_noabort(i32 %1005)
  store i8 %qam16TdTpsPwr.055.i.off8, ptr %999, align 1
  %1006 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1006)
  %1007 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i440) #7
  %1008 = getelementptr inbounds i8, ptr %msg.i.i440, i32 4
  %1009 = ptrtoint ptr %1008 to i32
  call void @__asan_store4_noabort(i32 %1009)
  store i32 458751, ptr %1008, align 4
  %conv.i.i446 = zext i8 %994 to i16
  %1010 = ptrtoint ptr %msg.i.i440 to i32
  call void @__asan_store2_noabort(i32 %1010)
  store i16 %conv.i.i446, ptr %msg.i.i440, align 4
  %flags.i.i447 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i440, i32 0, i32 1
  %1011 = ptrtoint ptr %flags.i.i447 to i32
  call void @__asan_store2_noabort(i32 %1011)
  store i16 0, ptr %flags.i.i447, align 2
  %buf.i.i448 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i440, i32 0, i32 3
  %1012 = ptrtoint ptr %buf.i.i448 to i32
  call void @__asan_store4_noabort(i32 %1012)
  store ptr %mm.i441, ptr %buf.i.i448, align 4
  %call.i.i449 = call i32 @i2c_transfer(ptr noundef %1007, ptr noundef nonnull %msg.i.i440, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i449)
  %cmp.not.i.not.i450.not = icmp eq i32 %call.i.i449, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i440) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i441) #7
  %extract.t860 = trunc i16 %850 to i8
  %extract865 = lshr i16 %transmissionParams.253.i, 8
  %extract.t866 = trunc i16 %extract865 to i8
  br i1 %cmp.not.i.not.i450.not, label %if.end328.i.sw.epilog340.i_crit_edge, label %if.end328.i.DRX_Start.exit_crit_edge

if.end328.i.DRX_Start.exit_crit_edge:             ; preds = %if.end328.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end328.i.sw.epilog340.i_crit_edge:             ; preds = %if.end328.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog340.i

sw.epilog340.i:                                   ; preds = %if.end328.i.sw.epilog340.i_crit_edge, %if.end275.i.sw.epilog340.i_crit_edge, %if.end222.i.sw.epilog340.i_crit_edge
  %qam16IsGainExp.061.sink.i.off0 = phi i8 [ %qam64IsGainExp.062.i.off0, %if.end222.i.sw.epilog340.i_crit_edge ], [ %qpskIsGainExp.060.i.off0, %if.end275.i.sw.epilog340.i_crit_edge ], [ %qam16IsGainExp.061.i.off0, %if.end328.i.sw.epilog340.i_crit_edge ]
  %transmissionParams.3.i.off0 = phi i8 [ %extract.t858, %if.end222.i.sw.epilog340.i_crit_edge ], [ %extract.t859, %if.end275.i.sw.epilog340.i_crit_edge ], [ %extract.t860, %if.end328.i.sw.epilog340.i_crit_edge ]
  %transmissionParams.3.i.off8 = phi i8 [ %extract.t862, %if.end222.i.sw.epilog340.i_crit_edge ], [ %extract.t864, %if.end275.i.sw.epilog340.i_crit_edge ], [ %extract.t866, %if.end328.i.sw.epilog340.i_crit_edge ]
  %1013 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1013)
  %1014 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i430) #7
  %1015 = getelementptr inbounds [6 x i8], ptr %mm.i430, i32 0, i32 1
  %1016 = getelementptr inbounds [6 x i8], ptr %mm.i430, i32 0, i32 2
  %1017 = getelementptr inbounds [6 x i8], ptr %mm.i430, i32 0, i32 3
  %1018 = getelementptr inbounds [6 x i8], ptr %mm.i430, i32 0, i32 4
  %1019 = getelementptr inbounds [6 x i8], ptr %mm.i430, i32 0, i32 5
  %1020 = ptrtoint ptr %mm.i430 to i32
  call void @__asan_store1_noabort(i32 %1020)
  store i8 22, ptr %mm.i430, align 1
  %1021 = ptrtoint ptr %1015 to i32
  call void @__asan_store1_noabort(i32 %1021)
  store i8 -63, ptr %1015, align 1
  %1022 = ptrtoint ptr %1016 to i32
  call void @__asan_store1_noabort(i32 %1022)
  store i8 1, ptr %1016, align 1
  %1023 = ptrtoint ptr %1017 to i32
  call void @__asan_store1_noabort(i32 %1023)
  store i8 0, ptr %1017, align 1
  %1024 = ptrtoint ptr %1018 to i32
  call void @__asan_store1_noabort(i32 %1024)
  store i8 %qam16IsGainExp.061.sink.i.off0, ptr %1018, align 1
  %1025 = ptrtoint ptr %1019 to i32
  call void @__asan_store1_noabort(i32 %1025)
  store i8 0, ptr %1019, align 1
  %1026 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i429) #7
  %1028 = getelementptr inbounds i8, ptr %msg.i.i429, i32 4
  %1029 = ptrtoint ptr %1028 to i32
  call void @__asan_store4_noabort(i32 %1029)
  store i32 458751, ptr %1028, align 4
  %conv.i.i434 = zext i8 %1014 to i16
  %1030 = ptrtoint ptr %msg.i.i429 to i32
  call void @__asan_store2_noabort(i32 %1030)
  store i16 %conv.i.i434, ptr %msg.i.i429, align 4
  %flags.i.i435 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i429, i32 0, i32 1
  %1031 = ptrtoint ptr %flags.i.i435 to i32
  call void @__asan_store2_noabort(i32 %1031)
  store i16 0, ptr %flags.i.i435, align 2
  %buf.i.i436 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i429, i32 0, i32 3
  %1032 = ptrtoint ptr %buf.i.i436 to i32
  call void @__asan_store4_noabort(i32 %1032)
  store ptr %mm.i430, ptr %buf.i.i436, align 4
  %call.i.i437 = call i32 @i2c_transfer(ptr noundef %1027, ptr noundef nonnull %msg.i.i429, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i437)
  %cmp.not.i.not.i438.not = icmp eq i32 %call.i.i437, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i429) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i430) #7
  br i1 %cmp.not.i.not.i438.not, label %sw.epilog340.i.if.end344.i_crit_edge, label %sw.epilog340.i.DRX_Start.exit_crit_edge

sw.epilog340.i.DRX_Start.exit_crit_edge:          ; preds = %sw.epilog340.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

sw.epilog340.i.if.end344.i_crit_edge:             ; preds = %sw.epilog340.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end344.i

if.end344.i:                                      ; preds = %sw.epilog340.i.if.end344.i_crit_edge, %sw.bb287.i.if.end344.i_crit_edge, %sw.bb234.i.if.end344.i_crit_edge, %sw.bb181.i.if.end344.i_crit_edge
  %transmissionParams.371.i.off0 = phi i8 [ %transmissionParams.3.i.off0, %sw.epilog340.i.if.end344.i_crit_edge ], [ %extract.t848, %sw.bb234.i.if.end344.i_crit_edge ], [ %extract.t849, %sw.bb287.i.if.end344.i_crit_edge ], [ %extract.t850, %sw.bb181.i.if.end344.i_crit_edge ]
  %transmissionParams.371.i.off8 = phi i8 [ %transmissionParams.3.i.off8, %sw.epilog340.i.if.end344.i_crit_edge ], [ %extract.t853, %sw.bb234.i.if.end344.i_crit_edge ], [ %extract.t855, %sw.bb287.i.if.end344.i_crit_edge ], [ %extract.t857, %sw.bb181.i.if.end344.i_crit_edge ]
  %1033 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1033)
  %1034 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i14.i) #7
  %1035 = getelementptr inbounds [6 x i8], ptr %mm.i14.i, i32 0, i32 1
  %1036 = getelementptr inbounds [6 x i8], ptr %mm.i14.i, i32 0, i32 2
  %1037 = getelementptr inbounds [6 x i8], ptr %mm.i14.i, i32 0, i32 3
  %1038 = getelementptr inbounds [6 x i8], ptr %mm.i14.i, i32 0, i32 4
  %1039 = getelementptr inbounds [6 x i8], ptr %mm.i14.i, i32 0, i32 5
  %1040 = ptrtoint ptr %mm.i14.i to i32
  call void @__asan_store1_noabort(i32 %1040)
  store i8 19, ptr %mm.i14.i, align 1
  %1041 = ptrtoint ptr %1035 to i32
  call void @__asan_store1_noabort(i32 %1041)
  store i8 1, ptr %1035, align 1
  %1042 = ptrtoint ptr %1036 to i32
  call void @__asan_store1_noabort(i32 %1042)
  store i8 2, ptr %1036, align 1
  %1043 = ptrtoint ptr %1037 to i32
  call void @__asan_store1_noabort(i32 %1043)
  store i8 0, ptr %1037, align 1
  %1044 = ptrtoint ptr %1038 to i32
  call void @__asan_store1_noabort(i32 %1044)
  store i8 0, ptr %1038, align 1
  %1045 = ptrtoint ptr %1039 to i32
  call void @__asan_store1_noabort(i32 %1045)
  store i8 0, ptr %1039, align 1
  %1046 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1046)
  %1047 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i13.i) #7
  %1048 = getelementptr inbounds i8, ptr %msg.i.i13.i, i32 4
  %1049 = ptrtoint ptr %1048 to i32
  call void @__asan_store4_noabort(i32 %1049)
  store i32 458751, ptr %1048, align 4
  %conv.i.i17.i = zext i8 %1034 to i16
  %1050 = ptrtoint ptr %msg.i.i13.i to i32
  call void @__asan_store2_noabort(i32 %1050)
  store i16 %conv.i.i17.i, ptr %msg.i.i13.i, align 4
  %flags.i.i18.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i13.i, i32 0, i32 1
  %1051 = ptrtoint ptr %flags.i.i18.i to i32
  call void @__asan_store2_noabort(i32 %1051)
  store i16 0, ptr %flags.i.i18.i, align 2
  %buf.i.i19.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i13.i, i32 0, i32 3
  %1052 = ptrtoint ptr %buf.i.i19.i to i32
  call void @__asan_store4_noabort(i32 %1052)
  store ptr %mm.i14.i, ptr %buf.i.i19.i, align 4
  %call.i.i20.i = call i32 @i2c_transfer(ptr noundef %1047, ptr noundef nonnull %msg.i.i13.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i13.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i14.i) #7
  %code_rate_HP.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 2, i32 11
  %1053 = ptrtoint ptr %code_rate_HP.i to i32
  call void @__asan_load4_noabort(i32 %1053)
  %1054 = load i32, ptr %code_rate_HP.i, align 4
  %1055 = zext i32 %1054 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1055, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %1054, label %sw.bb362.i [
    i32 1, label %sw.bb349.i
    i32 7, label %sw.bb389.i
    i32 3, label %sw.bb371.i
    i32 5, label %sw.bb380.i
  ]

sw.bb349.i:                                       ; preds = %if.end344.i
  %1056 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %1056)
  %1057 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1057)
  %tobool354.not.i = icmp eq i32 %1057, 0
  br i1 %tobool354.not.i, label %sw.bb349.i.sw.epilog398.i_crit_edge, label %sw.bb349.i.sw.epilog398.sink.split.i_crit_edge

sw.bb349.i.sw.epilog398.sink.split.i_crit_edge:   ; preds = %sw.bb349.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog398.sink.split.i

sw.bb349.i.sw.epilog398.i_crit_edge:              ; preds = %sw.bb349.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog398.i

sw.bb362.i:                                       ; preds = %if.end344.i
  %1058 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %1058)
  %1059 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1059)
  %tobool367.not.i = icmp eq i32 %1059, 0
  %extract.t813 = or i8 %transmissionParams.371.i.off8, 2
  br i1 %tobool367.not.i, label %sw.bb362.i.sw.epilog398.i_crit_edge, label %sw.bb362.i.sw.epilog398.sink.split.i_crit_edge

sw.bb362.i.sw.epilog398.sink.split.i_crit_edge:   ; preds = %sw.bb362.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog398.sink.split.i

sw.bb362.i.sw.epilog398.i_crit_edge:              ; preds = %sw.bb362.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog398.i

sw.bb371.i:                                       ; preds = %if.end344.i
  %1060 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %1060)
  %1061 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1061)
  %tobool376.not.i = icmp eq i32 %1061, 0
  %extract.t819 = or i8 %transmissionParams.371.i.off8, 4
  br i1 %tobool376.not.i, label %sw.bb371.i.sw.epilog398.i_crit_edge, label %sw.bb371.i.sw.epilog398.sink.split.i_crit_edge

sw.bb371.i.sw.epilog398.sink.split.i_crit_edge:   ; preds = %sw.bb371.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog398.sink.split.i

sw.bb371.i.sw.epilog398.i_crit_edge:              ; preds = %sw.bb371.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog398.i

sw.bb380.i:                                       ; preds = %if.end344.i
  %1062 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %1062)
  %1063 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1063)
  %tobool385.not.i = icmp eq i32 %1063, 0
  %extract.t817 = or i8 %transmissionParams.371.i.off8, 6
  br i1 %tobool385.not.i, label %sw.bb380.i.sw.epilog398.i_crit_edge, label %sw.bb380.i.sw.epilog398.sink.split.i_crit_edge

sw.bb380.i.sw.epilog398.sink.split.i_crit_edge:   ; preds = %sw.bb380.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog398.sink.split.i

sw.bb380.i.sw.epilog398.i_crit_edge:              ; preds = %sw.bb380.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog398.i

sw.bb389.i:                                       ; preds = %if.end344.i
  %1064 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %1064)
  %1065 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1065)
  %tobool394.not.i = icmp eq i32 %1065, 0
  %extract.t815 = or i8 %transmissionParams.371.i.off8, 8
  br i1 %tobool394.not.i, label %sw.bb389.i.sw.epilog398.i_crit_edge, label %sw.bb389.i.sw.epilog398.sink.split.i_crit_edge

sw.bb389.i.sw.epilog398.sink.split.i_crit_edge:   ; preds = %sw.bb389.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog398.sink.split.i

sw.bb389.i.sw.epilog398.i_crit_edge:              ; preds = %sw.bb389.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog398.i

sw.epilog398.sink.split.i:                        ; preds = %sw.bb389.i.sw.epilog398.sink.split.i_crit_edge, %sw.bb380.i.sw.epilog398.sink.split.i_crit_edge, %sw.bb371.i.sw.epilog398.sink.split.i_crit_edge, %sw.bb362.i.sw.epilog398.sink.split.i_crit_edge, %sw.bb349.i.sw.epilog398.sink.split.i_crit_edge
  %.sink.i.off0 = phi i8 [ 0, %sw.bb349.i.sw.epilog398.sink.split.i_crit_edge ], [ 1, %sw.bb362.i.sw.epilog398.sink.split.i_crit_edge ], [ 2, %sw.bb371.i.sw.epilog398.sink.split.i_crit_edge ], [ 3, %sw.bb380.i.sw.epilog398.sink.split.i_crit_edge ], [ 4, %sw.bb389.i.sw.epilog398.sink.split.i_crit_edge ]
  %transmissionParams.4.ph.i.off8 = phi i8 [ %transmissionParams.371.i.off8, %sw.bb349.i.sw.epilog398.sink.split.i_crit_edge ], [ %extract.t813, %sw.bb362.i.sw.epilog398.sink.split.i_crit_edge ], [ %extract.t819, %sw.bb371.i.sw.epilog398.sink.split.i_crit_edge ], [ %extract.t817, %sw.bb380.i.sw.epilog398.sink.split.i_crit_edge ], [ %extract.t815, %sw.bb389.i.sw.epilog398.sink.split.i_crit_edge ]
  %1066 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1066)
  %1067 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i419) #7
  %1068 = getelementptr inbounds [6 x i8], ptr %mm.i419, i32 0, i32 1
  %1069 = getelementptr inbounds [6 x i8], ptr %mm.i419, i32 0, i32 2
  %1070 = getelementptr inbounds [6 x i8], ptr %mm.i419, i32 0, i32 3
  %1071 = getelementptr inbounds [6 x i8], ptr %mm.i419, i32 0, i32 4
  %1072 = getelementptr inbounds [6 x i8], ptr %mm.i419, i32 0, i32 5
  %1073 = ptrtoint ptr %mm.i419 to i32
  call void @__asan_store1_noabort(i32 %1073)
  store i8 17, ptr %mm.i419, align 1
  %1074 = ptrtoint ptr %1068 to i32
  call void @__asan_store1_noabort(i32 %1074)
  store i8 9, ptr %1068, align 1
  %1075 = ptrtoint ptr %1069 to i32
  call void @__asan_store1_noabort(i32 %1075)
  store i8 2, ptr %1069, align 1
  %1076 = ptrtoint ptr %1070 to i32
  call void @__asan_store1_noabort(i32 %1076)
  store i8 0, ptr %1070, align 1
  %1077 = ptrtoint ptr %1071 to i32
  call void @__asan_store1_noabort(i32 %1077)
  store i8 %.sink.i.off0, ptr %1071, align 1
  %1078 = ptrtoint ptr %1072 to i32
  call void @__asan_store1_noabort(i32 %1078)
  store i8 0, ptr %1072, align 1
  %1079 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1079)
  %1080 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i418) #7
  %1081 = getelementptr inbounds i8, ptr %msg.i.i418, i32 4
  %1082 = ptrtoint ptr %1081 to i32
  call void @__asan_store4_noabort(i32 %1082)
  store i32 458751, ptr %1081, align 4
  %conv.i.i423 = zext i8 %1067 to i16
  %1083 = ptrtoint ptr %msg.i.i418 to i32
  call void @__asan_store2_noabort(i32 %1083)
  store i16 %conv.i.i423, ptr %msg.i.i418, align 4
  %flags.i.i424 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i418, i32 0, i32 1
  %1084 = ptrtoint ptr %flags.i.i424 to i32
  call void @__asan_store2_noabort(i32 %1084)
  store i16 0, ptr %flags.i.i424, align 2
  %buf.i.i425 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i418, i32 0, i32 3
  %1085 = ptrtoint ptr %buf.i.i425 to i32
  call void @__asan_store4_noabort(i32 %1085)
  store ptr %mm.i419, ptr %buf.i.i425, align 4
  %call.i.i426 = call i32 @i2c_transfer(ptr noundef %1080, ptr noundef nonnull %msg.i.i418, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i418) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i419) #7
  br label %sw.epilog398.i

sw.epilog398.i:                                   ; preds = %sw.epilog398.sink.split.i, %sw.bb389.i.sw.epilog398.i_crit_edge, %sw.bb380.i.sw.epilog398.i_crit_edge, %sw.bb371.i.sw.epilog398.i_crit_edge, %sw.bb362.i.sw.epilog398.i_crit_edge, %sw.bb349.i.sw.epilog398.i_crit_edge
  %status.3.i.in.in = phi i32 [ %call.i.i20.i, %sw.bb362.i.sw.epilog398.i_crit_edge ], [ %call.i.i20.i, %sw.bb389.i.sw.epilog398.i_crit_edge ], [ %call.i.i20.i, %sw.bb380.i.sw.epilog398.i_crit_edge ], [ %call.i.i20.i, %sw.bb371.i.sw.epilog398.i_crit_edge ], [ %call.i.i20.i, %sw.bb349.i.sw.epilog398.i_crit_edge ], [ %call.i.i426, %sw.epilog398.sink.split.i ]
  %transmissionParams.4.i.off8 = phi i8 [ %extract.t813, %sw.bb362.i.sw.epilog398.i_crit_edge ], [ %extract.t815, %sw.bb389.i.sw.epilog398.i_crit_edge ], [ %extract.t817, %sw.bb380.i.sw.epilog398.i_crit_edge ], [ %extract.t819, %sw.bb371.i.sw.epilog398.i_crit_edge ], [ %transmissionParams.371.i.off8, %sw.bb349.i.sw.epilog398.i_crit_edge ], [ %transmissionParams.4.ph.i.off8, %sw.epilog398.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status.3.i.in.in)
  %status.3.i.in.not = icmp eq i32 %status.3.i.in.in, 1
  br i1 %status.3.i.in.not, label %if.end402.i, label %sw.epilog398.i.DRX_Start.exit_crit_edge

sw.epilog398.i.DRX_Start.exit_crit_edge:          ; preds = %sw.epilog398.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end402.i:                                      ; preds = %sw.epilog398.i
  %bandwidth_hz.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 2, i32 7
  %1086 = ptrtoint ptr %bandwidth_hz.i to i32
  call void @__asan_load4_noabort(i32 %1086)
  %1087 = load i32, ptr %bandwidth_hz.i, align 4
  %1088 = zext i32 %1087 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1088, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %1087, label %if.end402.i.DRX_Start.exit_crit_edge [
    i32 0, label %sw.bb403.i
    i32 8000000, label %if.end402.i.sw.epilog412.i_crit_edge
    i32 7000000, label %sw.bb407.i
    i32 6000000, label %sw.bb409.i
  ]

if.end402.i.sw.epilog412.i_crit_edge:             ; preds = %if.end402.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog412.i

if.end402.i.DRX_Start.exit_crit_edge:             ; preds = %if.end402.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

sw.bb403.i:                                       ; preds = %if.end402.i
  call void @__sanitizer_cov_trace_pc() #9
  %1089 = ptrtoint ptr %bandwidth_hz.i to i32
  call void @__asan_store4_noabort(i32 %1089)
  store i32 8000000, ptr %bandwidth_hz.i, align 4
  br label %sw.epilog412.i

sw.bb407.i:                                       ; preds = %if.end402.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog412.i

sw.bb409.i:                                       ; preds = %if.end402.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog412.i

sw.epilog412.i:                                   ; preds = %sw.bb409.i, %sw.bb407.i, %sw.bb403.i, %if.end402.i.sw.epilog412.i_crit_edge
  %.sink79.i.off0 = phi i8 [ 71, %sw.bb409.i ], [ 59, %sw.bb407.i ], [ 50, %if.end402.i.sw.epilog412.i_crit_edge ], [ 50, %sw.bb403.i ]
  %bandwidth.0.i = phi i32 [ 6857142, %sw.bb409.i ], [ 8000000, %sw.bb407.i ], [ 9142857, %if.end402.i.sw.epilog412.i_crit_edge ], [ 9142857, %sw.bb403.i ]
  %bandwidthParam.0.i.off0 = phi i8 [ 7, %sw.bb409.i ], [ 7, %sw.bb407.i ], [ 0, %if.end402.i.sw.epilog412.i_crit_edge ], [ 0, %sw.bb403.i ]
  %bandwidthParam.0.i.off8 = phi i8 [ 15, %sw.bb409.i ], [ 72, %sw.bb407.i ], [ 0, %if.end402.i.sw.epilog412.i_crit_edge ], [ 0, %sw.bb403.i ]
  %1090 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1090)
  %1091 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i408) #7
  %1092 = getelementptr inbounds [6 x i8], ptr %mm.i408, i32 0, i32 1
  %1093 = getelementptr inbounds [6 x i8], ptr %mm.i408, i32 0, i32 2
  %1094 = getelementptr inbounds [6 x i8], ptr %mm.i408, i32 0, i32 3
  %1095 = getelementptr inbounds [6 x i8], ptr %mm.i408, i32 0, i32 4
  %1096 = getelementptr inbounds [6 x i8], ptr %mm.i408, i32 0, i32 5
  %1097 = ptrtoint ptr %mm.i408 to i32
  call void @__asan_store1_noabort(i32 %1097)
  store i8 63, ptr %mm.i408, align 1
  %1098 = ptrtoint ptr %1092 to i32
  call void @__asan_store1_noabort(i32 %1098)
  store i8 -62, ptr %1092, align 1
  %1099 = ptrtoint ptr %1093 to i32
  call void @__asan_store1_noabort(i32 %1099)
  store i8 0, ptr %1093, align 1
  %1100 = ptrtoint ptr %1094 to i32
  call void @__asan_store1_noabort(i32 %1100)
  store i8 0, ptr %1094, align 1
  %1101 = ptrtoint ptr %1095 to i32
  call void @__asan_store1_noabort(i32 %1101)
  store i8 %.sink79.i.off0, ptr %1095, align 1
  %1102 = ptrtoint ptr %1096 to i32
  call void @__asan_store1_noabort(i32 %1102)
  store i8 0, ptr %1096, align 1
  %1103 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1103)
  %1104 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i407) #7
  %1105 = getelementptr inbounds i8, ptr %msg.i.i407, i32 4
  %1106 = ptrtoint ptr %1105 to i32
  call void @__asan_store4_noabort(i32 %1106)
  store i32 458751, ptr %1105, align 4
  %conv.i.i412 = zext i8 %1091 to i16
  %1107 = ptrtoint ptr %msg.i.i407 to i32
  call void @__asan_store2_noabort(i32 %1107)
  store i16 %conv.i.i412, ptr %msg.i.i407, align 4
  %flags.i.i413 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i407, i32 0, i32 1
  %1108 = ptrtoint ptr %flags.i.i413 to i32
  call void @__asan_store2_noabort(i32 %1108)
  store i16 0, ptr %flags.i.i413, align 2
  %buf.i.i414 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i407, i32 0, i32 3
  %1109 = ptrtoint ptr %buf.i.i414 to i32
  call void @__asan_store4_noabort(i32 %1109)
  store ptr %mm.i408, ptr %buf.i.i414, align 4
  %call.i.i415 = call i32 @i2c_transfer(ptr noundef %1104, ptr noundef nonnull %msg.i.i407, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i415)
  %cmp.not.i.not.i416.not = icmp eq i32 %call.i.i415, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i407) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i408) #7
  br i1 %cmp.not.i.not.i416.not, label %if.end416.i, label %sw.epilog412.i.DRX_Start.exit_crit_edge

sw.epilog412.i.DRX_Start.exit_crit_edge:          ; preds = %sw.epilog412.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end416.i:                                      ; preds = %sw.epilog412.i
  %1110 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1110)
  %1111 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i396) #7
  %1112 = getelementptr inbounds [6 x i8], ptr %mm.i396, i32 0, i32 1
  %1113 = getelementptr inbounds [6 x i8], ptr %mm.i396, i32 0, i32 2
  %1114 = getelementptr inbounds [6 x i8], ptr %mm.i396, i32 0, i32 3
  %1115 = getelementptr inbounds [6 x i8], ptr %mm.i396, i32 0, i32 4
  %1116 = getelementptr inbounds [6 x i8], ptr %mm.i396, i32 0, i32 5
  %1117 = ptrtoint ptr %mm.i396 to i32
  call void @__asan_store1_noabort(i32 %1117)
  store i8 -20, ptr %mm.i396, align 1
  %1118 = ptrtoint ptr %1112 to i32
  call void @__asan_store1_noabort(i32 %1118)
  store i8 -126, ptr %1112, align 1
  %1119 = ptrtoint ptr %1113 to i32
  call void @__asan_store1_noabort(i32 %1119)
  store i8 0, ptr %1113, align 1
  %1120 = ptrtoint ptr %1114 to i32
  call void @__asan_store1_noabort(i32 %1120)
  store i8 0, ptr %1114, align 1
  %1121 = ptrtoint ptr %1115 to i32
  call void @__asan_store1_noabort(i32 %1121)
  store i8 %bandwidthParam.0.i.off0, ptr %1115, align 1
  %1122 = ptrtoint ptr %1116 to i32
  call void @__asan_store1_noabort(i32 %1122)
  store i8 %bandwidthParam.0.i.off8, ptr %1116, align 1
  %1123 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1123)
  %1124 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i395) #7
  %1125 = getelementptr inbounds i8, ptr %msg.i.i395, i32 4
  %1126 = ptrtoint ptr %1125 to i32
  call void @__asan_store4_noabort(i32 %1126)
  store i32 458751, ptr %1125, align 4
  %conv.i.i401 = zext i8 %1111 to i16
  %1127 = ptrtoint ptr %msg.i.i395 to i32
  call void @__asan_store2_noabort(i32 %1127)
  store i16 %conv.i.i401, ptr %msg.i.i395, align 4
  %flags.i.i402 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i395, i32 0, i32 1
  %1128 = ptrtoint ptr %flags.i.i402 to i32
  call void @__asan_store2_noabort(i32 %1128)
  store i16 0, ptr %flags.i.i402, align 2
  %buf.i.i403 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i395, i32 0, i32 3
  %1129 = ptrtoint ptr %buf.i.i403 to i32
  call void @__asan_store4_noabort(i32 %1129)
  store ptr %mm.i396, ptr %buf.i.i403, align 4
  %call.i.i404 = call i32 @i2c_transfer(ptr noundef %1124, ptr noundef nonnull %msg.i.i395, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i404)
  %cmp.not.i.not.i405.not = icmp eq i32 %call.i.i404, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i395) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i396) #7
  br i1 %cmp.not.i.not.i405.not, label %if.end421.i, label %if.end416.i.DRX_Start.exit_crit_edge

if.end416.i.DRX_Start.exit_crit_edge:             ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end421.i:                                      ; preds = %if.end416.i
  %1130 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1130)
  %1131 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i) #7
  %1132 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 1
  %1133 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 2
  %1134 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 3
  %1135 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %1135)
  store i8 80, ptr %mm1.i, align 1
  %1136 = ptrtoint ptr %1132 to i32
  call void @__asan_store1_noabort(i32 %1136)
  store i8 -126, ptr %1132, align 1
  %1137 = ptrtoint ptr %1133 to i32
  call void @__asan_store1_noabort(i32 %1137)
  store i8 0, ptr %1133, align 1
  %1138 = ptrtoint ptr %1134 to i32
  call void @__asan_store1_noabort(i32 %1138)
  store i8 0, ptr %1134, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i) #7
  %1139 = ptrtoint ptr %mm2.i to i32
  call void @__asan_store1_noabort(i32 %1139)
  store i8 -1, ptr %mm2.i, align 1, !annotation !75
  %1140 = getelementptr inbounds [2 x i8], ptr %mm2.i, i32 0, i32 1
  %1141 = ptrtoint ptr %1140 to i32
  call void @__asan_store1_noabort(i32 %1141)
  store i8 -1, ptr %1140, align 1, !annotation !75
  %1142 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %1144 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %1145 = call ptr @memset(ptr %1144, i32 255, i32 16)
  %conv.i.i386 = zext i8 %1131 to i16
  %1146 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %1146)
  store i16 %conv.i.i386, ptr %msgs.i.i, align 4
  %flags.i.i387 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %1147 = ptrtoint ptr %flags.i.i387 to i32
  call void @__asan_store2_noabort(i32 %1147)
  store i16 0, ptr %flags.i.i387, align 2
  %1148 = ptrtoint ptr %1144 to i32
  call void @__asan_store2_noabort(i32 %1148)
  store i16 4, ptr %1144, align 4
  %buf.i.i388 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %1149 = ptrtoint ptr %buf.i.i388 to i32
  call void @__asan_store4_noabort(i32 %1149)
  store ptr %mm1.i, ptr %buf.i.i388, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %1150 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %1150)
  store i16 %conv.i.i386, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %1151 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %1151)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %1152 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %1152)
  store i16 2, ptr %len6.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %1153 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %1153)
  store ptr %mm2.i, ptr %buf8.i.i, align 4
  %call.i.i389 = call i32 @i2c_transfer(ptr noundef %1143, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i389)
  %cmp.not.i.not.i390 = icmp eq i32 %call.i.i389, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br i1 %cmp.not.i.not.i390, label %Read16.exit, label %Read16.exit.thread

Read16.exit.thread:                               ; preds = %if.end421.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  br label %DRX_Start.exit

Read16.exit:                                      ; preds = %if.end421.i
  %1154 = ptrtoint ptr %mm2.i to i32
  call void @__asan_load1_noabort(i32 %1154)
  %1155 = load i8, ptr %mm2.i, align 1
  %1156 = ptrtoint ptr %1140 to i32
  call void @__asan_load1_noabort(i32 %1156)
  %1157 = load i8, ptr %1140, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  %1158 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_load4_noabort(i32 %1158)
  %1159 = load i32, ptr %transmission_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1159)
  %cmp428.i = icmp eq i32 %1159, 0
  br i1 %cmp428.i, label %land.lhs.true.i, label %Read16.exit.if.else437.i_crit_edge

Read16.exit.if.else437.i_crit_edge:               ; preds = %Read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else437.i

land.lhs.true.i:                                  ; preds = %Read16.exit
  %1160 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_load4_noabort(i32 %1160)
  %1161 = load i32, ptr %guard_interval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1161)
  %cmp431.i = icmp eq i32 %1161, 0
  br i1 %cmp431.i, label %if.then433.i, label %land.lhs.true.i.if.else437.i_crit_edge

land.lhs.true.i.if.else437.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else437.i

if.then433.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %1162 = or i8 %1155, 32
  br label %if.end440.i

if.else437.i:                                     ; preds = %land.lhs.true.i.if.else437.i_crit_edge, %Read16.exit.if.else437.i_crit_edge
  %1163 = and i8 %1155, -33
  br label %if.end440.i

if.end440.i:                                      ; preds = %if.else437.i, %if.then433.i
  %storemerge.i.off0 = phi i8 [ %1163, %if.else437.i ], [ %1162, %if.then433.i ]
  %1164 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1164)
  %1165 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i373) #7
  %1166 = getelementptr inbounds [6 x i8], ptr %mm.i373, i32 0, i32 1
  %1167 = getelementptr inbounds [6 x i8], ptr %mm.i373, i32 0, i32 2
  %1168 = getelementptr inbounds [6 x i8], ptr %mm.i373, i32 0, i32 3
  %1169 = getelementptr inbounds [6 x i8], ptr %mm.i373, i32 0, i32 4
  %1170 = getelementptr inbounds [6 x i8], ptr %mm.i373, i32 0, i32 5
  %1171 = ptrtoint ptr %mm.i373 to i32
  call void @__asan_store1_noabort(i32 %1171)
  store i8 80, ptr %mm.i373, align 1
  %1172 = ptrtoint ptr %1166 to i32
  call void @__asan_store1_noabort(i32 %1172)
  store i8 -126, ptr %1166, align 1
  %1173 = ptrtoint ptr %1167 to i32
  call void @__asan_store1_noabort(i32 %1173)
  store i8 0, ptr %1167, align 1
  %1174 = ptrtoint ptr %1168 to i32
  call void @__asan_store1_noabort(i32 %1174)
  store i8 0, ptr %1168, align 1
  %1175 = ptrtoint ptr %1169 to i32
  call void @__asan_store1_noabort(i32 %1175)
  store i8 %storemerge.i.off0, ptr %1169, align 1
  %1176 = ptrtoint ptr %1170 to i32
  call void @__asan_store1_noabort(i32 %1176)
  store i8 %1157, ptr %1170, align 1
  %1177 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1177)
  %1178 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i372) #7
  %1179 = getelementptr inbounds i8, ptr %msg.i.i372, i32 4
  %1180 = ptrtoint ptr %1179 to i32
  call void @__asan_store4_noabort(i32 %1180)
  store i32 458751, ptr %1179, align 4
  %conv.i.i378 = zext i8 %1165 to i16
  %1181 = ptrtoint ptr %msg.i.i372 to i32
  call void @__asan_store2_noabort(i32 %1181)
  store i16 %conv.i.i378, ptr %msg.i.i372, align 4
  %flags.i.i379 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i372, i32 0, i32 1
  %1182 = ptrtoint ptr %flags.i.i379 to i32
  call void @__asan_store2_noabort(i32 %1182)
  store i16 0, ptr %flags.i.i379, align 2
  %buf.i.i380 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i372, i32 0, i32 3
  %1183 = ptrtoint ptr %buf.i.i380 to i32
  call void @__asan_store4_noabort(i32 %1183)
  store ptr %mm.i373, ptr %buf.i.i380, align 4
  %call.i.i381 = call i32 @i2c_transfer(ptr noundef %1178, ptr noundef nonnull %msg.i.i372, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i381)
  %cmp.not.i.not.i382.not = icmp eq i32 %call.i.i381, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i372) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i373) #7
  br i1 %cmp.not.i.not.i382.not, label %cleanup.cont.i, label %if.end440.i.DRX_Start.exit_crit_edge

if.end440.i.DRX_Start.exit_crit_edge:             ; preds = %if.end440.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

cleanup.cont.i:                                   ; preds = %if.end440.i
  %1184 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1184)
  %1185 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i.i346) #7
  %1186 = getelementptr inbounds [4 x i8], ptr %mm1.i.i346, i32 0, i32 1
  %1187 = getelementptr inbounds [4 x i8], ptr %mm1.i.i346, i32 0, i32 2
  %1188 = getelementptr inbounds [4 x i8], ptr %mm1.i.i346, i32 0, i32 3
  %1189 = ptrtoint ptr %mm1.i.i346 to i32
  call void @__asan_store1_noabort(i32 %1189)
  store i8 76, ptr %mm1.i.i346, align 1
  %1190 = ptrtoint ptr %1186 to i32
  call void @__asan_store1_noabort(i32 %1190)
  store i8 -126, ptr %1186, align 1
  %1191 = ptrtoint ptr %1187 to i32
  call void @__asan_store1_noabort(i32 %1191)
  store i8 0, ptr %1187, align 1
  %1192 = ptrtoint ptr %1188 to i32
  call void @__asan_store1_noabort(i32 %1192)
  store i8 0, ptr %1188, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i.i347) #7
  %1193 = ptrtoint ptr %mm2.i.i347 to i32
  call void @__asan_store1_noabort(i32 %1193)
  store i8 -1, ptr %mm2.i.i347, align 1, !annotation !75
  %1194 = getelementptr inbounds [2 x i8], ptr %mm2.i.i347, i32 0, i32 1
  %1195 = ptrtoint ptr %1194 to i32
  call void @__asan_store1_noabort(i32 %1195)
  store i8 -1, ptr %1194, align 1, !annotation !75
  %1196 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1196)
  %1197 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i345) #7
  %1198 = getelementptr inbounds i8, ptr %msgs.i.i.i345, i32 4
  %1199 = call ptr @memset(ptr %1198, i32 255, i32 16)
  %conv.i.i.i350 = zext i8 %1185 to i16
  %1200 = ptrtoint ptr %msgs.i.i.i345 to i32
  call void @__asan_store2_noabort(i32 %1200)
  store i16 %conv.i.i.i350, ptr %msgs.i.i.i345, align 4
  %flags.i.i.i351 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i345, i32 0, i32 1
  %1201 = ptrtoint ptr %flags.i.i.i351 to i32
  call void @__asan_store2_noabort(i32 %1201)
  store i16 0, ptr %flags.i.i.i351, align 2
  %1202 = ptrtoint ptr %1198 to i32
  call void @__asan_store2_noabort(i32 %1202)
  store i16 4, ptr %1198, align 4
  %buf.i.i.i352 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i345, i32 0, i32 3
  %1203 = ptrtoint ptr %buf.i.i.i352 to i32
  call void @__asan_store4_noabort(i32 %1203)
  store ptr %mm1.i.i346, ptr %buf.i.i.i352, align 4
  %arrayinit.element.i.i.i353 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i345, i32 1
  %1204 = ptrtoint ptr %arrayinit.element.i.i.i353 to i32
  call void @__asan_store2_noabort(i32 %1204)
  store i16 %conv.i.i.i350, ptr %arrayinit.element.i.i.i353, align 4
  %flags5.i.i.i354 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i345, i32 1, i32 1
  %1205 = ptrtoint ptr %flags5.i.i.i354 to i32
  call void @__asan_store2_noabort(i32 %1205)
  store i16 1, ptr %flags5.i.i.i354, align 2
  %len6.i.i.i355 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i345, i32 1, i32 2
  %1206 = ptrtoint ptr %len6.i.i.i355 to i32
  call void @__asan_store2_noabort(i32 %1206)
  store i16 2, ptr %len6.i.i.i355, align 4
  %buf8.i.i.i356 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i345, i32 1, i32 3
  %1207 = ptrtoint ptr %buf8.i.i.i356 to i32
  call void @__asan_store4_noabort(i32 %1207)
  store ptr %mm2.i.i347, ptr %buf8.i.i.i356, align 4
  %call.i.i.i357 = call i32 @i2c_transfer(ptr noundef %1197, ptr noundef nonnull %msgs.i.i.i345, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i357)
  %cmp.not.i.not.i.i358 = icmp eq i32 %call.i.i.i357, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i345) #7
  br i1 %cmp.not.i.not.i.i358, label %Read16.exit.i361, label %Read16.exit.thread.i359

Read16.exit.thread.i359:                          ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i.i347) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i346) #7
  br label %DRX_Start.exit

Read16.exit.i361:                                 ; preds = %cleanup.cont.i
  %noise_cal.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 28
  %1208 = ptrtoint ptr %mm2.i.i347 to i32
  call void @__asan_load1_noabort(i32 %1208)
  %1209 = load i8, ptr %mm2.i.i347, align 1
  %1210 = ptrtoint ptr %1194 to i32
  call void @__asan_load1_noabort(i32 %1210)
  %1211 = load i8, ptr %1194, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i.i347) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i346) #7
  %1212 = ptrtoint ptr %noise_cal.i to i32
  call void @__asan_load4_noabort(i32 %1212)
  %1213 = load i32, ptr %noise_cal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1213)
  %tobool.not.i360 = icmp eq i32 %1213, 0
  br i1 %tobool.not.i360, label %if.else.i363, label %if.then1.i

if.then1.i:                                       ; preds = %Read16.exit.i361
  call void @__sanitizer_cov_trace_pc() #9
  %1214 = or i8 %1209, 2
  br label %if.end10.i368

if.else.i363:                                     ; preds = %Read16.exit.i361
  %1215 = and i8 %1209, -3
  %cpNexpOfs.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 28, i32 1
  %1216 = ptrtoint ptr %cpNexpOfs.i to i32
  call void @__asan_load2_noabort(i32 %1216)
  %1217 = load i16, ptr %cpNexpOfs.i, align 4
  %1218 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1218)
  %1219 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i344) #7
  %1220 = getelementptr inbounds [6 x i8], ptr %mm.i.i344, i32 0, i32 1
  %1221 = getelementptr inbounds [6 x i8], ptr %mm.i.i344, i32 0, i32 2
  %1222 = getelementptr inbounds [6 x i8], ptr %mm.i.i344, i32 0, i32 3
  %1223 = getelementptr inbounds [6 x i8], ptr %mm.i.i344, i32 0, i32 4
  %1224 = getelementptr inbounds [6 x i8], ptr %mm.i.i344, i32 0, i32 5
  %1225 = ptrtoint ptr %mm.i.i344 to i32
  call void @__asan_store1_noabort(i32 %1225)
  store i8 64, ptr %mm.i.i344, align 1
  %1226 = ptrtoint ptr %1220 to i32
  call void @__asan_store1_noabort(i32 %1226)
  store i8 65, ptr %1220, align 1
  %1227 = ptrtoint ptr %1221 to i32
  call void @__asan_store1_noabort(i32 %1227)
  store i8 1, ptr %1221, align 1
  %1228 = ptrtoint ptr %1222 to i32
  call void @__asan_store1_noabort(i32 %1228)
  store i8 0, ptr %1222, align 1
  %conv15.i42.i = trunc i16 %1217 to i8
  %1229 = ptrtoint ptr %1223 to i32
  call void @__asan_store1_noabort(i32 %1229)
  store i8 %conv15.i42.i, ptr %1223, align 1
  %1230 = lshr i16 %1217, 8
  %conv20.i.i362 = trunc i16 %1230 to i8
  %1231 = ptrtoint ptr %1224 to i32
  call void @__asan_store1_noabort(i32 %1231)
  store i8 %conv20.i.i362, ptr %1224, align 1
  %1232 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1232)
  %1233 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i343) #7
  %1234 = getelementptr inbounds i8, ptr %msg.i.i.i343, i32 4
  %1235 = ptrtoint ptr %1234 to i32
  call void @__asan_store4_noabort(i32 %1235)
  store i32 458751, ptr %1234, align 4
  %conv.i.i44.i = zext i8 %1219 to i16
  %1236 = ptrtoint ptr %msg.i.i.i343 to i32
  call void @__asan_store2_noabort(i32 %1236)
  store i16 %conv.i.i44.i, ptr %msg.i.i.i343, align 4
  %flags.i.i45.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i343, i32 0, i32 1
  %1237 = ptrtoint ptr %flags.i.i45.i to i32
  call void @__asan_store2_noabort(i32 %1237)
  store i16 0, ptr %flags.i.i45.i, align 2
  %buf.i.i46.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i343, i32 0, i32 3
  %1238 = ptrtoint ptr %buf.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %1238)
  store ptr %mm.i.i344, ptr %buf.i.i46.i, align 4
  %call.i.i47.i = call i32 @i2c_transfer(ptr noundef %1233, ptr noundef nonnull %msg.i.i.i343, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i47.i)
  %cmp.not.i.not.i48.not.i = icmp eq i32 %call.i.i47.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i343) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i344) #7
  br i1 %cmp.not.i.not.i48.not.i, label %if.else.i363.if.end10.i368_crit_edge, label %if.else.i363.DRX_Start.exit_crit_edge

if.else.i363.DRX_Start.exit_crit_edge:            ; preds = %if.else.i363
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.else.i363.if.end10.i368_crit_edge:             ; preds = %if.else.i363
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i368

if.end10.i368:                                    ; preds = %if.else.i363.if.end10.i368_crit_edge, %if.then1.i
  %beOptEna.1.off0.i = phi i8 [ %1215, %if.else.i363.if.end10.i368_crit_edge ], [ %1214, %if.then1.i ]
  %1239 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1239)
  %1240 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i50.i342) #7
  %1241 = getelementptr inbounds [6 x i8], ptr %mm.i50.i342, i32 0, i32 1
  %1242 = getelementptr inbounds [6 x i8], ptr %mm.i50.i342, i32 0, i32 2
  %1243 = getelementptr inbounds [6 x i8], ptr %mm.i50.i342, i32 0, i32 3
  %1244 = getelementptr inbounds [6 x i8], ptr %mm.i50.i342, i32 0, i32 4
  %1245 = getelementptr inbounds [6 x i8], ptr %mm.i50.i342, i32 0, i32 5
  %1246 = ptrtoint ptr %mm.i50.i342 to i32
  call void @__asan_store1_noabort(i32 %1246)
  store i8 76, ptr %mm.i50.i342, align 1
  %1247 = ptrtoint ptr %1241 to i32
  call void @__asan_store1_noabort(i32 %1247)
  store i8 -126, ptr %1241, align 1
  %1248 = ptrtoint ptr %1242 to i32
  call void @__asan_store1_noabort(i32 %1248)
  store i8 0, ptr %1242, align 1
  %1249 = ptrtoint ptr %1243 to i32
  call void @__asan_store1_noabort(i32 %1249)
  store i8 0, ptr %1243, align 1
  %1250 = ptrtoint ptr %1244 to i32
  call void @__asan_store1_noabort(i32 %1250)
  store i8 %beOptEna.1.off0.i, ptr %1244, align 1
  %1251 = ptrtoint ptr %1245 to i32
  call void @__asan_store1_noabort(i32 %1251)
  store i8 %1211, ptr %1245, align 1
  %1252 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1252)
  %1253 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i49.i341) #7
  %1254 = getelementptr inbounds i8, ptr %msg.i.i49.i341, i32 4
  %1255 = ptrtoint ptr %1254 to i32
  call void @__asan_store4_noabort(i32 %1255)
  store i32 458751, ptr %1254, align 4
  %conv.i.i55.i364 = zext i8 %1240 to i16
  %1256 = ptrtoint ptr %msg.i.i49.i341 to i32
  call void @__asan_store2_noabort(i32 %1256)
  store i16 %conv.i.i55.i364, ptr %msg.i.i49.i341, align 4
  %flags.i.i56.i365 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i49.i341, i32 0, i32 1
  %1257 = ptrtoint ptr %flags.i.i56.i365 to i32
  call void @__asan_store2_noabort(i32 %1257)
  store i16 0, ptr %flags.i.i56.i365, align 2
  %buf.i.i57.i366 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i49.i341, i32 0, i32 3
  %1258 = ptrtoint ptr %buf.i.i57.i366 to i32
  call void @__asan_store4_noabort(i32 %1258)
  store ptr %mm.i50.i342, ptr %buf.i.i57.i366, align 4
  %call.i.i58.i367 = call i32 @i2c_transfer(ptr noundef %1253, ptr noundef nonnull %msg.i.i49.i341, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i58.i367)
  %cmp.not.i.not.i59.not.i = icmp eq i32 %call.i.i58.i367, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i49.i341) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i50.i342) #7
  br i1 %cmp.not.i.not.i59.not.i, label %if.end15.i370, label %if.end10.i368.DRX_Start.exit_crit_edge

if.end10.i368.DRX_Start.exit_crit_edge:           ; preds = %if.end10.i368
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end15.i370:                                    ; preds = %if.end10.i368
  %1259 = ptrtoint ptr %type_A.i.i to i32
  call void @__asan_load4_noabort(i32 %1259)
  %1260 = load i32, ptr %type_A.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1260)
  %tobool16.not.i = icmp eq i32 %1260, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.end15.i370.if.end450.i_crit_edge

if.end15.i370.if.end450.i_crit_edge:              ; preds = %if.end15.i370
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end450.i

if.then17.i:                                      ; preds = %if.end15.i370
  %tdCal2k.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 28, i32 2
  %1261 = ptrtoint ptr %tdCal2k.i to i32
  call void @__asan_load2_noabort(i32 %1261)
  %1262 = load i16, ptr %tdCal2k.i, align 2
  %1263 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1263)
  %1264 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i62.i) #7
  %1265 = getelementptr inbounds [6 x i8], ptr %mm.i62.i, i32 0, i32 1
  %1266 = getelementptr inbounds [6 x i8], ptr %mm.i62.i, i32 0, i32 2
  %1267 = getelementptr inbounds [6 x i8], ptr %mm.i62.i, i32 0, i32 3
  %1268 = getelementptr inbounds [6 x i8], ptr %mm.i62.i, i32 0, i32 4
  %1269 = getelementptr inbounds [6 x i8], ptr %mm.i62.i, i32 0, i32 5
  %1270 = ptrtoint ptr %mm.i62.i to i32
  call void @__asan_store1_noabort(i32 %1270)
  store i8 93, ptr %mm.i62.i, align 1
  %1271 = ptrtoint ptr %1265 to i32
  call void @__asan_store1_noabort(i32 %1271)
  store i8 -126, ptr %1265, align 1
  %1272 = ptrtoint ptr %1266 to i32
  call void @__asan_store1_noabort(i32 %1272)
  store i8 0, ptr %1266, align 1
  %1273 = ptrtoint ptr %1267 to i32
  call void @__asan_store1_noabort(i32 %1273)
  store i8 0, ptr %1267, align 1
  %conv15.i64.i = trunc i16 %1262 to i8
  %1274 = ptrtoint ptr %1268 to i32
  call void @__asan_store1_noabort(i32 %1274)
  store i8 %conv15.i64.i, ptr %1268, align 1
  %1275 = lshr i16 %1262, 8
  %conv20.i65.i = trunc i16 %1275 to i8
  %1276 = ptrtoint ptr %1269 to i32
  call void @__asan_store1_noabort(i32 %1276)
  store i8 %conv20.i65.i, ptr %1269, align 1
  %1277 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1277)
  %1278 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i61.i) #7
  %1279 = getelementptr inbounds i8, ptr %msg.i.i61.i, i32 4
  %1280 = ptrtoint ptr %1279 to i32
  call void @__asan_store4_noabort(i32 %1280)
  store i32 458751, ptr %1279, align 4
  %conv.i.i67.i = zext i8 %1264 to i16
  %1281 = ptrtoint ptr %msg.i.i61.i to i32
  call void @__asan_store2_noabort(i32 %1281)
  store i16 %conv.i.i67.i, ptr %msg.i.i61.i, align 4
  %flags.i.i68.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i61.i, i32 0, i32 1
  %1282 = ptrtoint ptr %flags.i.i68.i to i32
  call void @__asan_store2_noabort(i32 %1282)
  store i16 0, ptr %flags.i.i68.i, align 2
  %buf.i.i69.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i61.i, i32 0, i32 3
  %1283 = ptrtoint ptr %buf.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %1283)
  store ptr %mm.i62.i, ptr %buf.i.i69.i, align 4
  %call.i.i70.i = call i32 @i2c_transfer(ptr noundef %1278, ptr noundef nonnull %msg.i.i61.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i70.i)
  %cmp.not.i.not.i71.not.i = icmp eq i32 %call.i.i70.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i61.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i62.i) #7
  br i1 %cmp.not.i.not.i71.not.i, label %SetCfgNoiseCalibration.exit, label %if.then17.i.DRX_Start.exit_crit_edge

if.then17.i.DRX_Start.exit_crit_edge:             ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

SetCfgNoiseCalibration.exit:                      ; preds = %if.then17.i
  %tdCal8k.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 28, i32 3
  %1284 = ptrtoint ptr %tdCal8k.i to i32
  call void @__asan_load2_noabort(i32 %1284)
  %1285 = load i16, ptr %tdCal8k.i, align 4
  %1286 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1286)
  %1287 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i74.i) #7
  %1288 = getelementptr inbounds [6 x i8], ptr %mm.i74.i, i32 0, i32 1
  %1289 = getelementptr inbounds [6 x i8], ptr %mm.i74.i, i32 0, i32 2
  %1290 = getelementptr inbounds [6 x i8], ptr %mm.i74.i, i32 0, i32 3
  %1291 = getelementptr inbounds [6 x i8], ptr %mm.i74.i, i32 0, i32 4
  %1292 = getelementptr inbounds [6 x i8], ptr %mm.i74.i, i32 0, i32 5
  %1293 = ptrtoint ptr %mm.i74.i to i32
  call void @__asan_store1_noabort(i32 %1293)
  store i8 94, ptr %mm.i74.i, align 1
  %1294 = ptrtoint ptr %1288 to i32
  call void @__asan_store1_noabort(i32 %1294)
  store i8 -126, ptr %1288, align 1
  %1295 = ptrtoint ptr %1289 to i32
  call void @__asan_store1_noabort(i32 %1295)
  store i8 0, ptr %1289, align 1
  %1296 = ptrtoint ptr %1290 to i32
  call void @__asan_store1_noabort(i32 %1296)
  store i8 0, ptr %1290, align 1
  %conv15.i76.i = trunc i16 %1285 to i8
  %1297 = ptrtoint ptr %1291 to i32
  call void @__asan_store1_noabort(i32 %1297)
  store i8 %conv15.i76.i, ptr %1291, align 1
  %1298 = lshr i16 %1285, 8
  %conv20.i77.i = trunc i16 %1298 to i8
  %1299 = ptrtoint ptr %1292 to i32
  call void @__asan_store1_noabort(i32 %1299)
  store i8 %conv20.i77.i, ptr %1292, align 1
  %1300 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1300)
  %1301 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i73.i) #7
  %1302 = getelementptr inbounds i8, ptr %msg.i.i73.i, i32 4
  %1303 = ptrtoint ptr %1302 to i32
  call void @__asan_store4_noabort(i32 %1303)
  store i32 458751, ptr %1302, align 4
  %conv.i.i79.i = zext i8 %1287 to i16
  %1304 = ptrtoint ptr %msg.i.i73.i to i32
  call void @__asan_store2_noabort(i32 %1304)
  store i16 %conv.i.i79.i, ptr %msg.i.i73.i, align 4
  %flags.i.i80.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i73.i, i32 0, i32 1
  %1305 = ptrtoint ptr %flags.i.i80.i to i32
  call void @__asan_store2_noabort(i32 %1305)
  store i16 0, ptr %flags.i.i80.i, align 2
  %buf.i.i81.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i73.i, i32 0, i32 3
  %1306 = ptrtoint ptr %buf.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %1306)
  store ptr %mm.i74.i, ptr %buf.i.i81.i, align 4
  %call.i.i82.i = call i32 @i2c_transfer(ptr noundef %1301, ptr noundef nonnull %msg.i.i73.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i82.i)
  %cmp.not.i.not.i83.i.not = icmp eq i32 %call.i.i82.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i73.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i74.i) #7
  br i1 %cmp.not.i.not.i83.i.not, label %SetCfgNoiseCalibration.exit.if.end450.i_crit_edge, label %SetCfgNoiseCalibration.exit.DRX_Start.exit_crit_edge

SetCfgNoiseCalibration.exit.DRX_Start.exit_crit_edge: ; preds = %SetCfgNoiseCalibration.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

SetCfgNoiseCalibration.exit.if.end450.i_crit_edge: ; preds = %SetCfgNoiseCalibration.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end450.i

if.end450.i:                                      ; preds = %SetCfgNoiseCalibration.exit.if.end450.i_crit_edge, %if.end15.i370.if.end450.i_crit_edge
  %cscd_state.i32 = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 18
  %1307 = ptrtoint ptr %cscd_state.i32 to i32
  call void @__asan_load4_noabort(i32 %1307)
  %1308 = load i32, ptr %cscd_state.i32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1308)
  %cmp451.i = icmp eq i32 %1308, 0
  br i1 %cmp451.i, label %if.then453.i, label %if.end450.i.if.end460.i_crit_edge

if.end450.i.if.end460.i_crit_edge:                ; preds = %if.end450.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end460.i

if.then453.i:                                     ; preds = %if.end450.i
  %1309 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1309)
  %1310 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i332) #7
  %1311 = getelementptr inbounds [6 x i8], ptr %mm.i332, i32 0, i32 1
  %1312 = getelementptr inbounds [6 x i8], ptr %mm.i332, i32 0, i32 2
  %1313 = getelementptr inbounds [6 x i8], ptr %mm.i332, i32 0, i32 3
  %1314 = getelementptr inbounds [6 x i8], ptr %mm.i332, i32 0, i32 4
  %1315 = getelementptr inbounds [6 x i8], ptr %mm.i332, i32 0, i32 5
  %1316 = ptrtoint ptr %mm.i332 to i32
  call void @__asan_store1_noabort(i32 %1316)
  store i8 -24, ptr %mm.i332, align 1
  %1317 = ptrtoint ptr %1311 to i32
  call void @__asan_store1_noabort(i32 %1317)
  store i8 -126, ptr %1311, align 1
  %1318 = ptrtoint ptr %1312 to i32
  call void @__asan_store1_noabort(i32 %1318)
  store i8 0, ptr %1312, align 1
  %1319 = ptrtoint ptr %1313 to i32
  call void @__asan_store1_noabort(i32 %1319)
  store i8 0, ptr %1313, align 1
  %1320 = ptrtoint ptr %1314 to i32
  call void @__asan_store1_noabort(i32 %1320)
  store i8 16, ptr %1314, align 1
  %1321 = ptrtoint ptr %1315 to i32
  call void @__asan_store1_noabort(i32 %1321)
  store i8 0, ptr %1315, align 1
  %1322 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1322)
  %1323 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i331) #7
  %1324 = getelementptr inbounds i8, ptr %msg.i.i331, i32 4
  %1325 = ptrtoint ptr %1324 to i32
  call void @__asan_store4_noabort(i32 %1325)
  store i32 458751, ptr %1324, align 4
  %conv.i.i335 = zext i8 %1310 to i16
  %1326 = ptrtoint ptr %msg.i.i331 to i32
  call void @__asan_store2_noabort(i32 %1326)
  store i16 %conv.i.i335, ptr %msg.i.i331, align 4
  %flags.i.i336 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i331, i32 0, i32 1
  %1327 = ptrtoint ptr %flags.i.i336 to i32
  call void @__asan_store2_noabort(i32 %1327)
  store i16 0, ptr %flags.i.i336, align 2
  %buf.i.i337 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i331, i32 0, i32 3
  %1328 = ptrtoint ptr %buf.i.i337 to i32
  call void @__asan_store4_noabort(i32 %1328)
  store ptr %mm.i332, ptr %buf.i.i337, align 4
  %call.i.i338 = call i32 @i2c_transfer(ptr noundef %1323, ptr noundef nonnull %msg.i.i331, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i338)
  %cmp.not.i.not.i339.not = icmp eq i32 %call.i.i338, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i331) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i332) #7
  br i1 %cmp.not.i.not.i339.not, label %if.end458.i, label %if.then453.i.DRX_Start.exit_crit_edge

if.then453.i.DRX_Start.exit_crit_edge:            ; preds = %if.then453.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end458.i:                                      ; preds = %if.then453.i
  call void @__sanitizer_cov_trace_pc() #9
  %1329 = ptrtoint ptr %cscd_state.i32 to i32
  call void @__asan_store4_noabort(i32 %1329)
  store i32 1, ptr %cscd_state.i32, align 4
  br label %if.end460.i

if.end460.i:                                      ; preds = %if.end458.i, %if.end450.i.if.end460.i_crit_edge
  %sys_clock_freq.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 20
  %1330 = ptrtoint ptr %sys_clock_freq.i to i32
  call void @__asan_load2_noabort(i32 %1330)
  %1331 = load i16, ptr %sys_clock_freq.i, align 4
  %conv461.i = zext i16 %1331 to i32
  %mul.i = mul nuw nsw i32 %conv461.i, 1000
  %conv.i.i = zext i32 %mul.i to i64
  %mul.i.i = shl nuw nsw i64 %conv.i.i, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %mul.i)
  %cmp168.i.i = icmp ult i32 %mul.i, 2048
  br i1 %cmp168.i.i, label %if.then172.i.i, label %if.else178.i.i, !prof !76

if.then172.i.i:                                   ; preds = %if.end460.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv173.i.i = trunc i64 %mul.i.i to i32
  %div176.i.i = udiv i32 %conv173.i.i, %bandwidth.0.i
  br label %MulDiv32.exit.i

if.else178.i.i:                                   ; preds = %if.end460.i
  call void @__sanitizer_cov_trace_pc() #9
  %1332 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %bandwidth.0.i, i64 %mul.i.i) #12, !srcloc !77
  %asmresult1.i.i.i = extractvalue { i64, i64 } %1332, 1
  %extract.t289.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %MulDiv32.exit.i

MulDiv32.exit.i:                                  ; preds = %if.else178.i.i, %if.then172.i.i
  %tmp64.0.off0.i.i = phi i32 [ %div176.i.i, %if.then172.i.i ], [ %extract.t289.i.i, %if.else178.i.i ]
  %1333 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1333)
  %1334 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i320) #7
  %1335 = getelementptr inbounds [6 x i8], ptr %mm.i320, i32 0, i32 1
  %1336 = getelementptr inbounds [6 x i8], ptr %mm.i320, i32 0, i32 2
  %1337 = getelementptr inbounds [6 x i8], ptr %mm.i320, i32 0, i32 3
  %1338 = getelementptr inbounds [6 x i8], ptr %mm.i320, i32 0, i32 4
  %1339 = getelementptr inbounds [6 x i8], ptr %mm.i320, i32 0, i32 5
  %1340 = ptrtoint ptr %mm.i320 to i32
  call void @__asan_store1_noabort(i32 %1340)
  store i8 16, ptr %mm.i320, align 1
  %1341 = ptrtoint ptr %1335 to i32
  call void @__asan_store1_noabort(i32 %1341)
  store i8 -59, ptr %1335, align 1
  %1342 = ptrtoint ptr %1336 to i32
  call void @__asan_store1_noabort(i32 %1342)
  store i8 0, ptr %1336, align 1
  %1343 = ptrtoint ptr %1337 to i32
  call void @__asan_store1_noabort(i32 %1343)
  store i8 0, ptr %1337, align 1
  %conv15.i322 = trunc i32 %tmp64.0.off0.i.i to i8
  %1344 = ptrtoint ptr %1338 to i32
  call void @__asan_store1_noabort(i32 %1344)
  store i8 %conv15.i322, ptr %1338, align 1
  %1345 = lshr i32 %tmp64.0.off0.i.i, 8
  %conv20.i323 = trunc i32 %1345 to i8
  %1346 = ptrtoint ptr %1339 to i32
  call void @__asan_store1_noabort(i32 %1346)
  store i8 %conv20.i323, ptr %1339, align 1
  %1347 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1347)
  %1348 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i319) #7
  %1349 = getelementptr inbounds i8, ptr %msg.i.i319, i32 4
  %1350 = ptrtoint ptr %1349 to i32
  call void @__asan_store4_noabort(i32 %1350)
  store i32 458751, ptr %1349, align 4
  %conv.i.i325 = zext i8 %1334 to i16
  %1351 = ptrtoint ptr %msg.i.i319 to i32
  call void @__asan_store2_noabort(i32 %1351)
  store i16 %conv.i.i325, ptr %msg.i.i319, align 4
  %flags.i.i326 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i319, i32 0, i32 1
  %1352 = ptrtoint ptr %flags.i.i326 to i32
  call void @__asan_store2_noabort(i32 %1352)
  store i16 0, ptr %flags.i.i326, align 2
  %buf.i.i327 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i319, i32 0, i32 3
  %1353 = ptrtoint ptr %buf.i.i327 to i32
  call void @__asan_store4_noabort(i32 %1353)
  store ptr %mm.i320, ptr %buf.i.i327, align 4
  %call.i.i328 = call i32 @i2c_transfer(ptr noundef %1348, ptr noundef nonnull %msg.i.i319, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i328)
  %cmp.not.i.not.i329.not = icmp eq i32 %call.i.i328, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i319) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i320) #7
  br i1 %cmp.not.i.not.i329.not, label %if.end470.i, label %MulDiv32.exit.i.DRX_Start.exit_crit_edge

MulDiv32.exit.i.DRX_Start.exit_crit_edge:         ; preds = %MulDiv32.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end470.i:                                      ; preds = %MulDiv32.exit.i
  %sub463.i = add i32 %tmp64.0.off0.i.i, 8388608
  %shr.i = lshr i32 %sub463.i, 16
  %1354 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1354)
  %1355 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i310) #7
  %1356 = getelementptr inbounds [6 x i8], ptr %mm.i310, i32 0, i32 1
  %1357 = getelementptr inbounds [6 x i8], ptr %mm.i310, i32 0, i32 2
  %1358 = getelementptr inbounds [6 x i8], ptr %mm.i310, i32 0, i32 3
  %1359 = getelementptr inbounds [6 x i8], ptr %mm.i310, i32 0, i32 4
  %1360 = getelementptr inbounds [6 x i8], ptr %mm.i310, i32 0, i32 5
  %1361 = ptrtoint ptr %mm.i310 to i32
  call void @__asan_store1_noabort(i32 %1361)
  store i8 17, ptr %mm.i310, align 1
  %1362 = ptrtoint ptr %1356 to i32
  call void @__asan_store1_noabort(i32 %1362)
  store i8 -59, ptr %1356, align 1
  %1363 = ptrtoint ptr %1357 to i32
  call void @__asan_store1_noabort(i32 %1363)
  store i8 0, ptr %1357, align 1
  %1364 = ptrtoint ptr %1358 to i32
  call void @__asan_store1_noabort(i32 %1364)
  store i8 0, ptr %1358, align 1
  %conv15.i = trunc i32 %shr.i to i8
  %1365 = ptrtoint ptr %1359 to i32
  call void @__asan_store1_noabort(i32 %1365)
  store i8 %conv15.i, ptr %1359, align 1
  %1366 = ptrtoint ptr %1360 to i32
  call void @__asan_store1_noabort(i32 %1366)
  store i8 0, ptr %1360, align 1
  %1367 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1367)
  %1368 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i309) #7
  %1369 = getelementptr inbounds i8, ptr %msg.i.i309, i32 4
  %1370 = ptrtoint ptr %1369 to i32
  call void @__asan_store4_noabort(i32 %1370)
  store i32 458751, ptr %1369, align 4
  %conv.i.i313 = zext i8 %1355 to i16
  %1371 = ptrtoint ptr %msg.i.i309 to i32
  call void @__asan_store2_noabort(i32 %1371)
  store i16 %conv.i.i313, ptr %msg.i.i309, align 4
  %flags.i.i314 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i309, i32 0, i32 1
  %1372 = ptrtoint ptr %flags.i.i314 to i32
  call void @__asan_store2_noabort(i32 %1372)
  store i16 0, ptr %flags.i.i314, align 2
  %buf.i.i315 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i309, i32 0, i32 3
  %1373 = ptrtoint ptr %buf.i.i315 to i32
  call void @__asan_store4_noabort(i32 %1373)
  store ptr %mm.i310, ptr %buf.i.i315, align 4
  %call.i.i316 = call i32 @i2c_transfer(ptr noundef %1368, ptr noundef nonnull %msg.i.i309, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i316)
  %cmp.not.i.not.i317.not = icmp eq i32 %call.i.i316, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i309) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i310) #7
  br i1 %cmp.not.i.not.i317.not, label %if.end477.i, label %if.end470.i.DRX_Start.exit_crit_edge

if.end470.i.DRX_Start.exit_crit_edge:             ; preds = %if.end470.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end477.i:                                      ; preds = %if.end470.i
  %tuner_mirrors.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 59
  %1374 = ptrtoint ptr %tuner_mirrors.i to i32
  call void @__asan_load4_noabort(i32 %1374)
  %1375 = load i32, ptr %tuner_mirrors.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1375, i32 %conv.i)
  %cmp.i = icmp eq i32 %1375, %conv.i
  %intermediate_freq.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 16
  %1376 = ptrtoint ptr %intermediate_freq.i to i32
  call void @__asan_load2_noabort(i32 %1376)
  %1377 = load i16, ptr %intermediate_freq.i, align 2
  %1378 = ptrtoint ptr %sys_clock_freq.i to i32
  call void @__asan_load2_noabort(i32 %1378)
  %1379 = load i16, ptr %sys_clock_freq.i, align 4
  %conv2.i = zext i16 %1379 to i32
  %conv.i.i194 = zext i16 %1377 to i64
  %mul.i.i195 = shl nuw nsw i64 %conv.i.i194, 28
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %1377)
  %cmp168.i.i288 = icmp ult i16 %1377, 16
  br i1 %cmp168.i.i288, label %if.then172.i114.i, label %if.else178.i117.i, !prof !76

if.then172.i114.i:                                ; preds = %if.end477.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv173.i.i298 = trunc i64 %mul.i.i195 to i32
  %div176.i.i299 = udiv i32 %conv173.i.i298, %conv2.i
  %fe_fs_add_incr128.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 29
  %and129.i = and i32 %div176.i.i299, 268435455
  %sub130.i = sub nuw nsw i32 268435456, %and129.i
  %spec.select131.i = select i1 %cmp.i, i32 %sub130.i, i32 %and129.i
  %1380 = ptrtoint ptr %fe_fs_add_incr128.i to i32
  call void @__asan_store4_noabort(i32 %1380)
  store i32 %spec.select131.i, ptr %fe_fs_add_incr128.i, align 4
  br label %SetFrequencyShift.exit

if.else178.i117.i:                                ; preds = %if.end477.i
  call void @__sanitizer_cov_trace_pc() #9
  %1381 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv2.i, i64 %mul.i.i195) #12
  %asmresult1.i.i.i300 = extractvalue { i64, i64 } %1381, 1
  %extract.t289.i.i301 = trunc i64 %asmresult1.i.i.i300 to i32
  %fe_fs_add_incr.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 29
  %and.i = and i32 %extract.t289.i.i301, 268435455
  %sub.i = sub nuw nsw i32 268435456, %and.i
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %and.i
  %1382 = ptrtoint ptr %fe_fs_add_incr.i to i32
  call void @__asan_store4_noabort(i32 %1382)
  store i32 %spec.select.i, ptr %fe_fs_add_incr.i, align 4
  br label %SetFrequencyShift.exit

SetFrequencyShift.exit:                           ; preds = %if.else178.i117.i, %if.then172.i114.i
  %spec.select125.i = phi i32 [ %spec.select131.i, %if.then172.i114.i ], [ %spec.select.i, %if.else178.i117.i ]
  %org_fe_fs_add_incr.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 30
  %1383 = ptrtoint ptr %org_fe_fs_add_incr.i to i32
  call void @__asan_store4_noabort(i32 %1383)
  store i32 %spec.select125.i, ptr %org_fe_fs_add_incr.i, align 4
  %1384 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1384)
  %1385 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mm.i.i192) #7
  %1386 = getelementptr inbounds [8 x i8], ptr %mm.i.i192, i32 0, i32 1
  %1387 = getelementptr inbounds [8 x i8], ptr %mm.i.i192, i32 0, i32 2
  %1388 = getelementptr inbounds [8 x i8], ptr %mm.i.i192, i32 0, i32 3
  %1389 = getelementptr inbounds [8 x i8], ptr %mm.i.i192, i32 0, i32 4
  %1390 = getelementptr inbounds [8 x i8], ptr %mm.i.i192, i32 0, i32 5
  %1391 = getelementptr inbounds [8 x i8], ptr %mm.i.i192, i32 0, i32 6
  %1392 = getelementptr inbounds [8 x i8], ptr %mm.i.i192, i32 0, i32 7
  %1393 = ptrtoint ptr %mm.i.i192 to i32
  call void @__asan_store1_noabort(i32 %1393)
  store i8 16, ptr %mm.i.i192, align 1
  %1394 = ptrtoint ptr %1386 to i32
  call void @__asan_store1_noabort(i32 %1394)
  store i8 -61, ptr %1386, align 1
  %1395 = ptrtoint ptr %1387 to i32
  call void @__asan_store1_noabort(i32 %1395)
  store i8 0, ptr %1387, align 1
  %1396 = ptrtoint ptr %1388 to i32
  call void @__asan_store1_noabort(i32 %1396)
  store i8 0, ptr %1388, align 1
  %conv14.i.i = trunc i32 %spec.select125.i to i8
  %1397 = ptrtoint ptr %1389 to i32
  call void @__asan_store1_noabort(i32 %1397)
  store i8 %conv14.i.i, ptr %1389, align 1
  %shr16.i.i = lshr i32 %spec.select125.i, 8
  %conv18.i.i = trunc i32 %shr16.i.i to i8
  %1398 = ptrtoint ptr %1390 to i32
  call void @__asan_store1_noabort(i32 %1398)
  store i8 %conv18.i.i, ptr %1390, align 1
  %shr20.i.i = lshr i32 %spec.select125.i, 16
  %conv22.i.i = trunc i32 %shr20.i.i to i8
  %1399 = ptrtoint ptr %1391 to i32
  call void @__asan_store1_noabort(i32 %1399)
  store i8 %conv22.i.i, ptr %1391, align 1
  %shr24.i.i = lshr i32 %spec.select125.i, 24
  %conv26.i.i = trunc i32 %shr24.i.i to i8
  %1400 = ptrtoint ptr %1392 to i32
  call void @__asan_store1_noabort(i32 %1400)
  store i8 %conv26.i.i, ptr %1392, align 1
  %1401 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1401)
  %1402 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i191) #7
  %1403 = getelementptr inbounds i8, ptr %msg.i.i.i191, i32 4
  %1404 = ptrtoint ptr %1403 to i32
  call void @__asan_store4_noabort(i32 %1404)
  store i32 589823, ptr %1403, align 4
  %conv.i.i.i305 = zext i8 %1385 to i16
  %1405 = ptrtoint ptr %msg.i.i.i191 to i32
  call void @__asan_store2_noabort(i32 %1405)
  store i16 %conv.i.i.i305, ptr %msg.i.i.i191, align 4
  %flags.i.i.i306 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i191, i32 0, i32 1
  %1406 = ptrtoint ptr %flags.i.i.i306 to i32
  call void @__asan_store2_noabort(i32 %1406)
  store i16 0, ptr %flags.i.i.i306, align 2
  %buf.i.i.i307 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i191, i32 0, i32 3
  %1407 = ptrtoint ptr %buf.i.i.i307 to i32
  call void @__asan_store4_noabort(i32 %1407)
  store ptr %mm.i.i192, ptr %buf.i.i.i307, align 4
  %call.i.i.i308 = call i32 @i2c_transfer(ptr noundef %1402, ptr noundef nonnull %msg.i.i.i191, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i191) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mm.i.i192) #7
  %1408 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1408)
  %1409 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i182) #7
  %1410 = getelementptr inbounds [6 x i8], ptr %mm.i182, i32 0, i32 1
  %1411 = getelementptr inbounds [6 x i8], ptr %mm.i182, i32 0, i32 2
  %1412 = ptrtoint ptr %mm.i182 to i32
  call void @__asan_store1_noabort(i32 %1412)
  store i8 1, ptr %mm.i182, align 1
  %1413 = ptrtoint ptr %1410 to i32
  call void @__asan_store1_noabort(i32 %1413)
  store i8 -128, ptr %1410, align 1
  %1414 = ptrtoint ptr %1411 to i32
  call void @__asan_storeN_noabort(i32 %1414, i32 4)
  store i32 0, ptr %1411, align 1
  %1415 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1415)
  %1416 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i181) #7
  %1417 = getelementptr inbounds i8, ptr %msg.i.i181, i32 4
  %1418 = ptrtoint ptr %1417 to i32
  call void @__asan_store4_noabort(i32 %1418)
  store i32 458751, ptr %1417, align 4
  %conv.i.i185 = zext i8 %1409 to i16
  %1419 = ptrtoint ptr %msg.i.i181 to i32
  call void @__asan_store2_noabort(i32 %1419)
  store i16 %conv.i.i185, ptr %msg.i.i181, align 4
  %flags.i.i186 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i181, i32 0, i32 1
  %1420 = ptrtoint ptr %flags.i.i186 to i32
  call void @__asan_store2_noabort(i32 %1420)
  store i16 0, ptr %flags.i.i186, align 2
  %buf.i.i187 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i181, i32 0, i32 3
  %1421 = ptrtoint ptr %buf.i.i187 to i32
  call void @__asan_store4_noabort(i32 %1421)
  store ptr %mm.i182, ptr %buf.i.i187, align 4
  %call.i.i188 = call i32 @i2c_transfer(ptr noundef %1416, ptr noundef nonnull %msg.i.i181, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i188)
  %cmp.not.i.not.i189.not = icmp eq i32 %call.i.i188, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i181) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i182) #7
  br i1 %cmp.not.i.not.i189.not, label %if.end483.i, label %SetFrequencyShift.exit.DRX_Start.exit_crit_edge

SetFrequencyShift.exit.DRX_Start.exit_crit_edge:  ; preds = %SetFrequencyShift.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end483.i:                                      ; preds = %SetFrequencyShift.exit
  %1422 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1422)
  %1423 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i172) #7
  %1424 = getelementptr inbounds [6 x i8], ptr %mm.i172, i32 0, i32 1
  %1425 = getelementptr inbounds [6 x i8], ptr %mm.i172, i32 0, i32 2
  %1426 = getelementptr inbounds [6 x i8], ptr %mm.i172, i32 0, i32 3
  %1427 = getelementptr inbounds [6 x i8], ptr %mm.i172, i32 0, i32 4
  %1428 = getelementptr inbounds [6 x i8], ptr %mm.i172, i32 0, i32 5
  %1429 = ptrtoint ptr %mm.i172 to i32
  call void @__asan_store1_noabort(i32 %1429)
  store i8 0, ptr %mm.i172, align 1
  %1430 = ptrtoint ptr %1424 to i32
  call void @__asan_store1_noabort(i32 %1430)
  store i8 -128, ptr %1424, align 1
  %1431 = ptrtoint ptr %1425 to i32
  call void @__asan_store1_noabort(i32 %1431)
  store i8 0, ptr %1425, align 1
  %1432 = ptrtoint ptr %1426 to i32
  call void @__asan_store1_noabort(i32 %1432)
  store i8 0, ptr %1426, align 1
  %1433 = ptrtoint ptr %1427 to i32
  call void @__asan_store1_noabort(i32 %1433)
  store i8 1, ptr %1427, align 1
  %1434 = ptrtoint ptr %1428 to i32
  call void @__asan_store1_noabort(i32 %1434)
  store i8 0, ptr %1428, align 1
  %1435 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1435)
  %1436 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i171) #7
  %1437 = getelementptr inbounds i8, ptr %msg.i.i171, i32 4
  %1438 = ptrtoint ptr %1437 to i32
  call void @__asan_store4_noabort(i32 %1438)
  store i32 458751, ptr %1437, align 4
  %conv.i.i175 = zext i8 %1423 to i16
  %1439 = ptrtoint ptr %msg.i.i171 to i32
  call void @__asan_store2_noabort(i32 %1439)
  store i16 %conv.i.i175, ptr %msg.i.i171, align 4
  %flags.i.i176 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i171, i32 0, i32 1
  %1440 = ptrtoint ptr %flags.i.i176 to i32
  call void @__asan_store2_noabort(i32 %1440)
  store i16 0, ptr %flags.i.i176, align 2
  %buf.i.i177 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i171, i32 0, i32 3
  %1441 = ptrtoint ptr %buf.i.i177 to i32
  call void @__asan_store4_noabort(i32 %1441)
  store ptr %mm.i172, ptr %buf.i.i177, align 4
  %call.i.i178 = call i32 @i2c_transfer(ptr noundef %1436, ptr noundef nonnull %msg.i.i171, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i178)
  %cmp.not.i.not.i179.not = icmp eq i32 %call.i.i178, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i171) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i172) #7
  br i1 %cmp.not.i.not.i179.not, label %if.end488.i, label %if.end483.i.DRX_Start.exit_crit_edge

if.end483.i.DRX_Start.exit_crit_edge:             ; preds = %if.end483.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end488.i:                                      ; preds = %if.end483.i
  %mutex.i128 = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %mutex.i128, i32 noundef 0) #7
  %1442 = getelementptr inbounds [4 x i8], ptr %mm1.i.i.i126, i32 0, i32 1
  %1443 = getelementptr inbounds [4 x i8], ptr %mm1.i.i.i126, i32 0, i32 2
  %1444 = getelementptr inbounds [4 x i8], ptr %mm1.i.i.i126, i32 0, i32 3
  %1445 = getelementptr inbounds [2 x i8], ptr %mm2.i.i.i127, i32 0, i32 1
  %1446 = getelementptr inbounds i8, ptr %msgs.i.i.i.i125, i32 4
  %flags.i.i.i.i130 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i125, i32 0, i32 1
  %buf.i.i.i.i131 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i125, i32 0, i32 3
  %arrayinit.element.i.i.i.i132 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i125, i32 1
  %flags5.i.i.i.i133 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i125, i32 1, i32 1
  %len6.i.i.i.i134 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i125, i32 1, i32 2
  %buf8.i.i.i.i135 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i125, i32 1, i32 3
  br label %for.body.i.i140

for.body.i.i140:                                  ; preds = %for.inc.i.i.for.body.i.i140_crit_edge, %if.end488.i
  %i.07.i.i136 = phi i32 [ 0, %if.end488.i ], [ %add.i.i148, %for.inc.i.i.for.body.i.i140_crit_edge ]
  %1447 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1447)
  %1448 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i.i.i126) #7
  %1449 = ptrtoint ptr %mm1.i.i.i126 to i32
  call void @__asan_store1_noabort(i32 %1449)
  store i8 67, ptr %mm1.i.i.i126, align 1
  %1450 = ptrtoint ptr %1442 to i32
  call void @__asan_store1_noabort(i32 %1450)
  store i8 -126, ptr %1442, align 1
  %1451 = ptrtoint ptr %1443 to i32
  call void @__asan_store1_noabort(i32 %1451)
  store i8 0, ptr %1443, align 1
  %1452 = ptrtoint ptr %1444 to i32
  call void @__asan_store1_noabort(i32 %1452)
  store i8 0, ptr %1444, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i.i.i127) #7
  %1453 = ptrtoint ptr %mm2.i.i.i127 to i32
  call void @__asan_store1_noabort(i32 %1453)
  store i8 -1, ptr %mm2.i.i.i127, align 1, !annotation !75
  %1454 = ptrtoint ptr %1445 to i32
  call void @__asan_store1_noabort(i32 %1454)
  store i8 -1, ptr %1445, align 1, !annotation !75
  %1455 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1455)
  %1456 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i.i125) #7
  %1457 = call ptr @memset(ptr %1446, i32 255, i32 16)
  %conv.i.i.i.i137 = zext i8 %1448 to i16
  %1458 = ptrtoint ptr %msgs.i.i.i.i125 to i32
  call void @__asan_store2_noabort(i32 %1458)
  store i16 %conv.i.i.i.i137, ptr %msgs.i.i.i.i125, align 4
  %1459 = ptrtoint ptr %flags.i.i.i.i130 to i32
  call void @__asan_store2_noabort(i32 %1459)
  store i16 0, ptr %flags.i.i.i.i130, align 2
  %1460 = ptrtoint ptr %1446 to i32
  call void @__asan_store2_noabort(i32 %1460)
  store i16 4, ptr %1446, align 4
  %1461 = ptrtoint ptr %buf.i.i.i.i131 to i32
  call void @__asan_store4_noabort(i32 %1461)
  store ptr %mm1.i.i.i126, ptr %buf.i.i.i.i131, align 4
  %1462 = ptrtoint ptr %arrayinit.element.i.i.i.i132 to i32
  call void @__asan_store2_noabort(i32 %1462)
  store i16 %conv.i.i.i.i137, ptr %arrayinit.element.i.i.i.i132, align 4
  %1463 = ptrtoint ptr %flags5.i.i.i.i133 to i32
  call void @__asan_store2_noabort(i32 %1463)
  store i16 1, ptr %flags5.i.i.i.i133, align 2
  %1464 = ptrtoint ptr %len6.i.i.i.i134 to i32
  call void @__asan_store2_noabort(i32 %1464)
  store i16 2, ptr %len6.i.i.i.i134, align 4
  %1465 = ptrtoint ptr %buf8.i.i.i.i135 to i32
  call void @__asan_store4_noabort(i32 %1465)
  store ptr %mm2.i.i.i127, ptr %buf8.i.i.i.i135, align 4
  %call.i.i.i.i138 = call i32 @i2c_transfer(ptr noundef %1456, ptr noundef nonnull %msgs.i.i.i.i125, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i138)
  %cmp.not.i.not.i.i.i139 = icmp eq i32 %call.i.i.i.i138, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i.i125) #7
  br i1 %cmp.not.i.not.i.i.i139, label %Read16.exit.i.i147, label %Read16.exit.thread.i.i141

Read16.exit.thread.i.i141:                        ; preds = %for.body.i.i140
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i.i.i127) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i.i126) #7
  br label %for.inc.i.i

Read16.exit.i.i147:                               ; preds = %for.body.i.i140
  %1466 = ptrtoint ptr %mm2.i.i.i127 to i32
  call void @__asan_load1_noabort(i32 %1466)
  %1467 = load i8, ptr %mm2.i.i.i127, align 1
  %conv22.i.i.i142 = zext i8 %1467 to i32
  %1468 = ptrtoint ptr %1445 to i32
  call void @__asan_load1_noabort(i32 %1468)
  %1469 = load i8, ptr %1445, align 1
  %conv24.i.i.i143 = zext i8 %1469 to i32
  %shl25.i.i.i144 = shl nuw nsw i32 %conv24.i.i.i143, 8
  %or26.i.i.i145 = or i32 %shl25.i.i.i144, %conv22.i.i.i142
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i.i.i127) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i.i126) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or26.i.i.i145)
  %cmp1.i.i146 = icmp eq i32 %or26.i.i.i145, 0
  br i1 %cmp1.i.i146, label %if.end.i155, label %Read16.exit.i.i147.for.inc.i.i_crit_edge

Read16.exit.i.i147.for.inc.i.i_crit_edge:         ; preds = %Read16.exit.i.i147
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %Read16.exit.i.i147.for.inc.i.i_crit_edge, %Read16.exit.thread.i.i141
  %add.i.i148 = add nuw nsw i32 %i.07.i.i136, 1
  %exitcond.not.i.i149 = icmp eq i32 %add.i.i148, 1000
  br i1 %exitcond.not.i.i149, label %for.inc.i.i.SC_SetPrefParamCommand.exit.thread_crit_edge, label %for.inc.i.i.for.body.i.i140_crit_edge

for.inc.i.i.for.body.i.i140_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i140

for.inc.i.i.SC_SetPrefParamCommand.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %SC_SetPrefParamCommand.exit.thread

if.end.i155:                                      ; preds = %Read16.exit.i.i147
  %1470 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1470)
  %1471 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i124) #7
  %1472 = getelementptr inbounds [6 x i8], ptr %mm.i.i124, i32 0, i32 1
  %1473 = getelementptr inbounds [6 x i8], ptr %mm.i.i124, i32 0, i32 2
  %1474 = ptrtoint ptr %mm.i.i124 to i32
  call void @__asan_store1_noabort(i32 %1474)
  store i8 66, ptr %mm.i.i124, align 1
  %1475 = ptrtoint ptr %1472 to i32
  call void @__asan_store1_noabort(i32 %1475)
  store i8 -126, ptr %1472, align 1
  %1476 = ptrtoint ptr %1473 to i32
  call void @__asan_storeN_noabort(i32 %1476, i32 4)
  store i32 0, ptr %1473, align 1
  %1477 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1477)
  %1478 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i123) #7
  %1479 = getelementptr inbounds i8, ptr %msg.i.i.i123, i32 4
  %1480 = ptrtoint ptr %1479 to i32
  call void @__asan_store4_noabort(i32 %1480)
  store i32 458751, ptr %1479, align 4
  %conv.i.i.i150 = zext i8 %1471 to i16
  %1481 = ptrtoint ptr %msg.i.i.i123 to i32
  call void @__asan_store2_noabort(i32 %1481)
  store i16 %conv.i.i.i150, ptr %msg.i.i.i123, align 4
  %flags.i.i.i151 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i123, i32 0, i32 1
  %1482 = ptrtoint ptr %flags.i.i.i151 to i32
  call void @__asan_store2_noabort(i32 %1482)
  store i16 0, ptr %flags.i.i.i151, align 2
  %buf.i.i.i152 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i123, i32 0, i32 3
  %1483 = ptrtoint ptr %buf.i.i.i152 to i32
  call void @__asan_store4_noabort(i32 %1483)
  store ptr %mm.i.i124, ptr %buf.i.i.i152, align 4
  %call.i.i.i153 = call i32 @i2c_transfer(ptr noundef %1478, ptr noundef nonnull %msg.i.i.i123, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i153)
  %cmp.not.i.not.i.not.i154 = icmp eq i32 %call.i.i.i153, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i123) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i124) #7
  br i1 %cmp.not.i.not.i.not.i154, label %if.end4.i161, label %if.end.i155.SC_SetPrefParamCommand.exit.thread_crit_edge

if.end.i155.SC_SetPrefParamCommand.exit.thread_crit_edge: ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %SC_SetPrefParamCommand.exit.thread

if.end4.i161:                                     ; preds = %if.end.i155
  %1484 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1484)
  %1485 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i2.i122) #7
  %1486 = getelementptr inbounds [6 x i8], ptr %mm.i2.i122, i32 0, i32 1
  %1487 = getelementptr inbounds [6 x i8], ptr %mm.i2.i122, i32 0, i32 2
  %1488 = getelementptr inbounds [6 x i8], ptr %mm.i2.i122, i32 0, i32 3
  %1489 = getelementptr inbounds [6 x i8], ptr %mm.i2.i122, i32 0, i32 4
  %1490 = getelementptr inbounds [6 x i8], ptr %mm.i2.i122, i32 0, i32 5
  %1491 = ptrtoint ptr %mm.i2.i122 to i32
  call void @__asan_store1_noabort(i32 %1491)
  store i8 65, ptr %mm.i2.i122, align 1
  %1492 = ptrtoint ptr %1486 to i32
  call void @__asan_store1_noabort(i32 %1492)
  store i8 -126, ptr %1486, align 1
  %1493 = ptrtoint ptr %1487 to i32
  call void @__asan_store1_noabort(i32 %1493)
  store i8 0, ptr %1487, align 1
  %1494 = ptrtoint ptr %1488 to i32
  call void @__asan_store1_noabort(i32 %1494)
  store i8 0, ptr %1488, align 1
  %1495 = ptrtoint ptr %1489 to i32
  call void @__asan_store1_noabort(i32 %1495)
  store i8 31, ptr %1489, align 1
  %1496 = ptrtoint ptr %1490 to i32
  call void @__asan_store1_noabort(i32 %1496)
  store i8 0, ptr %1490, align 1
  %1497 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1497)
  %1498 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i1.i121) #7
  %1499 = getelementptr inbounds i8, ptr %msg.i.i1.i121, i32 4
  %1500 = ptrtoint ptr %1499 to i32
  call void @__asan_store4_noabort(i32 %1500)
  store i32 458751, ptr %1499, align 4
  %conv.i.i5.i156 = zext i8 %1485 to i16
  %1501 = ptrtoint ptr %msg.i.i1.i121 to i32
  call void @__asan_store2_noabort(i32 %1501)
  store i16 %conv.i.i5.i156, ptr %msg.i.i1.i121, align 4
  %flags.i.i6.i157 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1.i121, i32 0, i32 1
  %1502 = ptrtoint ptr %flags.i.i6.i157 to i32
  call void @__asan_store2_noabort(i32 %1502)
  store i16 0, ptr %flags.i.i6.i157, align 2
  %buf.i.i7.i158 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i1.i121, i32 0, i32 3
  %1503 = ptrtoint ptr %buf.i.i7.i158 to i32
  call void @__asan_store4_noabort(i32 %1503)
  store ptr %mm.i2.i122, ptr %buf.i.i7.i158, align 4
  %call.i.i8.i159 = call i32 @i2c_transfer(ptr noundef %1498, ptr noundef nonnull %msg.i.i1.i121, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i8.i159)
  %cmp.not.i.not.i9.not.i160 = icmp eq i32 %call.i.i8.i159, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i1.i121) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i2.i122) #7
  br i1 %cmp.not.i.not.i9.not.i160, label %if.end8.i168, label %if.end4.i161.SC_SetPrefParamCommand.exit.thread_crit_edge

if.end4.i161.SC_SetPrefParamCommand.exit.thread_crit_edge: ; preds = %if.end4.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %SC_SetPrefParamCommand.exit.thread

if.end8.i168:                                     ; preds = %if.end4.i161
  %1504 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1504)
  %1505 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i12.i120) #7
  %1506 = getelementptr inbounds [6 x i8], ptr %mm.i12.i120, i32 0, i32 1
  %1507 = getelementptr inbounds [6 x i8], ptr %mm.i12.i120, i32 0, i32 2
  %1508 = getelementptr inbounds [6 x i8], ptr %mm.i12.i120, i32 0, i32 3
  %1509 = getelementptr inbounds [6 x i8], ptr %mm.i12.i120, i32 0, i32 4
  %1510 = getelementptr inbounds [6 x i8], ptr %mm.i12.i120, i32 0, i32 5
  %1511 = ptrtoint ptr %mm.i12.i120 to i32
  call void @__asan_store1_noabort(i32 %1511)
  store i8 64, ptr %mm.i12.i120, align 1
  %1512 = ptrtoint ptr %1506 to i32
  call void @__asan_store1_noabort(i32 %1512)
  store i8 -126, ptr %1506, align 1
  %1513 = ptrtoint ptr %1507 to i32
  call void @__asan_store1_noabort(i32 %1513)
  store i8 0, ptr %1507, align 1
  %1514 = ptrtoint ptr %1508 to i32
  call void @__asan_store1_noabort(i32 %1514)
  store i8 0, ptr %1508, align 1
  %1515 = ptrtoint ptr %1509 to i32
  call void @__asan_store1_noabort(i32 %1515)
  store i8 %transmissionParams.371.i.off0, ptr %1509, align 1
  %1516 = ptrtoint ptr %1510 to i32
  call void @__asan_store1_noabort(i32 %1516)
  store i8 %transmissionParams.4.i.off8, ptr %1510, align 1
  %1517 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1517)
  %1518 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i11.i119) #7
  %1519 = getelementptr inbounds i8, ptr %msg.i.i11.i119, i32 4
  %1520 = ptrtoint ptr %1519 to i32
  call void @__asan_store4_noabort(i32 %1520)
  store i32 458751, ptr %1519, align 4
  %conv.i.i15.i164 = zext i8 %1505 to i16
  %1521 = ptrtoint ptr %msg.i.i11.i119 to i32
  call void @__asan_store2_noabort(i32 %1521)
  store i16 %conv.i.i15.i164, ptr %msg.i.i11.i119, align 4
  %flags.i.i16.i165 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i11.i119, i32 0, i32 1
  %1522 = ptrtoint ptr %flags.i.i16.i165 to i32
  call void @__asan_store2_noabort(i32 %1522)
  store i16 0, ptr %flags.i.i16.i165, align 2
  %buf.i.i17.i166 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i11.i119, i32 0, i32 3
  %1523 = ptrtoint ptr %buf.i.i17.i166 to i32
  call void @__asan_store4_noabort(i32 %1523)
  store ptr %mm.i12.i120, ptr %buf.i.i17.i166, align 4
  %call.i.i18.i167 = call i32 @i2c_transfer(ptr noundef %1518, ptr noundef nonnull %msg.i.i11.i119, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i18.i167)
  %cmp.not.i.not.i19.not.i = icmp eq i32 %call.i.i18.i167, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i11.i119) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i12.i120) #7
  br i1 %cmp.not.i.not.i19.not.i, label %SC_SetPrefParamCommand.exit, label %if.end8.i168.SC_SetPrefParamCommand.exit.thread_crit_edge

if.end8.i168.SC_SetPrefParamCommand.exit.thread_crit_edge: ; preds = %if.end8.i168
  call void @__sanitizer_cov_trace_pc() #9
  br label %SC_SetPrefParamCommand.exit.thread

SC_SetPrefParamCommand.exit.thread:               ; preds = %if.end8.i168.SC_SetPrefParamCommand.exit.thread_crit_edge, %if.end4.i161.SC_SetPrefParamCommand.exit.thread_crit_edge, %if.end.i155.SC_SetPrefParamCommand.exit.thread_crit_edge, %for.inc.i.i.SC_SetPrefParamCommand.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i128) #7
  br label %DRX_Start.exit

SC_SetPrefParamCommand.exit:                      ; preds = %if.end8.i168
  %call13.i = call fastcc i32 @SC_SendCommand(ptr noundef %1, i16 noundef zeroext 3) #7
  call void @mutex_unlock(ptr noundef %mutex.i128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp490.i = icmp slt i32 %call13.i, 0
  br i1 %cmp490.i, label %SC_SetPrefParamCommand.exit.DRX_Start.exit_crit_edge, label %if.end493.i

SC_SetPrefParamCommand.exit.DRX_Start.exit_crit_edge: ; preds = %SC_SetPrefParamCommand.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end493.i:                                      ; preds = %SC_SetPrefParamCommand.exit
  call void @mutex_lock_nested(ptr noundef %mutex.i128, i32 noundef 0) #7
  %1524 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1524)
  %1525 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i.i94) #7
  %1526 = getelementptr inbounds [4 x i8], ptr %mm1.i.i94, i32 0, i32 1
  %1527 = getelementptr inbounds [4 x i8], ptr %mm1.i.i94, i32 0, i32 2
  %1528 = getelementptr inbounds [4 x i8], ptr %mm1.i.i94, i32 0, i32 3
  %1529 = ptrtoint ptr %mm1.i.i94 to i32
  call void @__asan_store1_noabort(i32 %1529)
  store i8 0, ptr %mm1.i.i94, align 1
  %1530 = ptrtoint ptr %1526 to i32
  call void @__asan_store1_noabort(i32 %1530)
  store i8 -128, ptr %1526, align 1
  %1531 = ptrtoint ptr %1527 to i32
  call void @__asan_store1_noabort(i32 %1531)
  store i8 0, ptr %1527, align 1
  %1532 = ptrtoint ptr %1528 to i32
  call void @__asan_store1_noabort(i32 %1532)
  store i8 0, ptr %1528, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i.i95) #7
  %1533 = ptrtoint ptr %mm2.i.i95 to i32
  call void @__asan_store1_noabort(i32 %1533)
  store i8 -1, ptr %mm2.i.i95, align 1, !annotation !75
  %1534 = getelementptr inbounds [2 x i8], ptr %mm2.i.i95, i32 0, i32 1
  %1535 = ptrtoint ptr %1534 to i32
  call void @__asan_store1_noabort(i32 %1535)
  store i8 -1, ptr %1534, align 1, !annotation !75
  %1536 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1536)
  %1537 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i93) #7
  %1538 = getelementptr inbounds i8, ptr %msgs.i.i.i93, i32 4
  %1539 = call ptr @memset(ptr %1538, i32 255, i32 16)
  %conv.i.i.i98 = zext i8 %1525 to i16
  %1540 = ptrtoint ptr %msgs.i.i.i93 to i32
  call void @__asan_store2_noabort(i32 %1540)
  store i16 %conv.i.i.i98, ptr %msgs.i.i.i93, align 4
  %flags.i.i.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i93, i32 0, i32 1
  %1541 = ptrtoint ptr %flags.i.i.i99 to i32
  call void @__asan_store2_noabort(i32 %1541)
  store i16 0, ptr %flags.i.i.i99, align 2
  %1542 = ptrtoint ptr %1538 to i32
  call void @__asan_store2_noabort(i32 %1542)
  store i16 4, ptr %1538, align 4
  %buf.i.i.i100 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i93, i32 0, i32 3
  %1543 = ptrtoint ptr %buf.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %1543)
  store ptr %mm1.i.i94, ptr %buf.i.i.i100, align 4
  %arrayinit.element.i.i.i101 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i93, i32 1
  %1544 = ptrtoint ptr %arrayinit.element.i.i.i101 to i32
  call void @__asan_store2_noabort(i32 %1544)
  store i16 %conv.i.i.i98, ptr %arrayinit.element.i.i.i101, align 4
  %flags5.i.i.i102 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i93, i32 1, i32 1
  %1545 = ptrtoint ptr %flags5.i.i.i102 to i32
  call void @__asan_store2_noabort(i32 %1545)
  store i16 1, ptr %flags5.i.i.i102, align 2
  %len6.i.i.i103 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i93, i32 1, i32 2
  %1546 = ptrtoint ptr %len6.i.i.i103 to i32
  call void @__asan_store2_noabort(i32 %1546)
  store i16 2, ptr %len6.i.i.i103, align 4
  %buf8.i.i.i104 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i93, i32 1, i32 3
  %1547 = ptrtoint ptr %buf8.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %1547)
  store ptr %mm2.i.i95, ptr %buf8.i.i.i104, align 4
  %call.i.i.i105 = call i32 @i2c_transfer(ptr noundef %1537, ptr noundef nonnull %msgs.i.i.i93, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i105)
  %cmp.not.i.not.i.i106 = icmp eq i32 %call.i.i.i105, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i93) #7
  br i1 %cmp.not.i.not.i.i106, label %Read16.exit.i111, label %Read16.exit.thread.i107

Read16.exit.thread.i107:                          ; preds = %if.end493.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i.i95) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i94) #7
  br label %SC_ProcStartCommand.exit.thread

Read16.exit.i111:                                 ; preds = %if.end493.i
  %1548 = ptrtoint ptr %mm2.i.i95 to i32
  call void @__asan_load1_noabort(i32 %1548)
  %1549 = load i8, ptr %mm2.i.i95, align 1
  %conv15.i.i108 = zext i8 %1549 to i16
  %1550 = ptrtoint ptr %1534 to i32
  call void @__asan_load1_noabort(i32 %1550)
  %1551 = load i8, ptr %1534, align 1
  %conv17.i.i = zext i8 %1551 to i16
  %shl.i.i109 = shl nuw i16 %conv17.i.i, 8
  %or18.i.i = or i16 %shl.i.i109, %conv15.i.i108
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i.i95) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i94) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %or18.i.i)
  %cmp1.not.i110 = icmp eq i16 %or18.i.i, 1
  br i1 %cmp1.not.i110, label %if.end.i114, label %Read16.exit.i111.SC_ProcStartCommand.exit.thread_crit_edge

Read16.exit.i111.SC_ProcStartCommand.exit.thread_crit_edge: ; preds = %Read16.exit.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %SC_ProcStartCommand.exit.thread

if.end.i114:                                      ; preds = %Read16.exit.i111
  %1552 = getelementptr inbounds [4 x i8], ptr %mm1.i.i.i, i32 0, i32 1
  %1553 = getelementptr inbounds [4 x i8], ptr %mm1.i.i.i, i32 0, i32 2
  %1554 = getelementptr inbounds [4 x i8], ptr %mm1.i.i.i, i32 0, i32 3
  %1555 = getelementptr inbounds [2 x i8], ptr %mm2.i.i.i, i32 0, i32 1
  %1556 = getelementptr inbounds i8, ptr %msgs.i.i.i.i, i32 4
  %flags.i.i.i.i112 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 0, i32 1
  %buf.i.i.i.i113 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 0, i32 3
  %arrayinit.element.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1
  %flags5.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1, i32 1
  %len6.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1, i32 2
  %buf8.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.backedge, %if.end.i114
  %i.07.i.i = phi i32 [ 0, %if.end.i114 ], [ %i.07.i.i.be, %for.body.i.i.backedge ]
  %1557 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1557)
  %1558 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i.i.i) #7
  %1559 = ptrtoint ptr %mm1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1559)
  store i8 67, ptr %mm1.i.i.i, align 1
  %1560 = ptrtoint ptr %1552 to i32
  call void @__asan_store1_noabort(i32 %1560)
  store i8 -126, ptr %1552, align 1
  %1561 = ptrtoint ptr %1553 to i32
  call void @__asan_store1_noabort(i32 %1561)
  store i8 0, ptr %1553, align 1
  %1562 = ptrtoint ptr %1554 to i32
  call void @__asan_store1_noabort(i32 %1562)
  store i8 0, ptr %1554, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i.i.i) #7
  %1563 = ptrtoint ptr %mm2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1563)
  store i8 -1, ptr %mm2.i.i.i, align 1, !annotation !75
  %1564 = ptrtoint ptr %1555 to i32
  call void @__asan_store1_noabort(i32 %1564)
  store i8 -1, ptr %1555, align 1, !annotation !75
  %1565 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1565)
  %1566 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i.i) #7
  %1567 = call ptr @memset(ptr %1556, i32 255, i32 16)
  %conv.i.i.i.i115 = zext i8 %1558 to i16
  %1568 = ptrtoint ptr %msgs.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1568)
  store i16 %conv.i.i.i.i115, ptr %msgs.i.i.i.i, align 4
  %1569 = ptrtoint ptr %flags.i.i.i.i112 to i32
  call void @__asan_store2_noabort(i32 %1569)
  store i16 0, ptr %flags.i.i.i.i112, align 2
  %1570 = ptrtoint ptr %1556 to i32
  call void @__asan_store2_noabort(i32 %1570)
  store i16 4, ptr %1556, align 4
  %1571 = ptrtoint ptr %buf.i.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %1571)
  store ptr %mm1.i.i.i, ptr %buf.i.i.i.i113, align 4
  %1572 = ptrtoint ptr %arrayinit.element.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1572)
  store i16 %conv.i.i.i.i115, ptr %arrayinit.element.i.i.i.i, align 4
  %1573 = ptrtoint ptr %flags5.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1573)
  store i16 1, ptr %flags5.i.i.i.i, align 2
  %1574 = ptrtoint ptr %len6.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1574)
  store i16 2, ptr %len6.i.i.i.i, align 4
  %1575 = ptrtoint ptr %buf8.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1575)
  store ptr %mm2.i.i.i, ptr %buf8.i.i.i.i, align 4
  %call.i.i.i.i116 = call i32 @i2c_transfer(ptr noundef %1566, ptr noundef nonnull %msgs.i.i.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i116)
  %cmp.not.i.not.i.i.i = icmp eq i32 %call.i.i.i.i116, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i.i) #7
  br i1 %cmp.not.i.not.i.i.i, label %Read16.exit.i.i, label %Read16.exit.thread.i.i

Read16.exit.thread.i.i:                           ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i.i) #7
  %add.i.old.i = add nuw nsw i32 %i.07.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %add.i.old.i)
  %exitcond.not.i.old.i = icmp eq i32 %add.i.old.i, 1000
  br i1 %exitcond.not.i.old.i, label %Read16.exit.thread.i.i.SC_ProcStartCommand.exit_crit_edge, label %Read16.exit.thread.i.i.for.body.i.i.backedge_crit_edge

Read16.exit.thread.i.i.for.body.i.i.backedge_crit_edge: ; preds = %Read16.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.backedge

Read16.exit.thread.i.i.SC_ProcStartCommand.exit_crit_edge: ; preds = %Read16.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %SC_ProcStartCommand.exit

Read16.exit.i.i:                                  ; preds = %for.body.i.i
  %1576 = ptrtoint ptr %mm2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1576)
  %1577 = load i8, ptr %mm2.i.i.i, align 1
  %conv22.i.i.i = zext i8 %1577 to i32
  %1578 = ptrtoint ptr %1555 to i32
  call void @__asan_load1_noabort(i32 %1578)
  %1579 = load i8, ptr %1555, align 1
  %conv24.i.i.i = zext i8 %1579 to i32
  %shl25.i.i.i = shl nuw nsw i32 %conv24.i.i.i, 8
  %or26.i.i.i = or i32 %shl25.i.i.i, %conv22.i.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or26.i.i.i)
  %cmp1.i.i = icmp eq i32 %or26.i.i.i, 0
  %add.i.i117 = add nuw nsw i32 %i.07.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %add.i.i117)
  %exitcond.not.i.i = icmp eq i32 %add.i.i117, 1000
  %or.cond31.i = select i1 %cmp1.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond31.i, label %Read16.exit.i.i.SC_ProcStartCommand.exit_crit_edge, label %Read16.exit.i.i.for.body.i.i.backedge_crit_edge

Read16.exit.i.i.for.body.i.i.backedge_crit_edge:  ; preds = %Read16.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.backedge

Read16.exit.i.i.SC_ProcStartCommand.exit_crit_edge: ; preds = %Read16.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %SC_ProcStartCommand.exit

for.body.i.i.backedge:                            ; preds = %Read16.exit.i.i.for.body.i.i.backedge_crit_edge, %Read16.exit.thread.i.i.for.body.i.i.backedge_crit_edge
  %i.07.i.i.be = phi i32 [ %add.i.old.i, %Read16.exit.thread.i.i.for.body.i.i.backedge_crit_edge ], [ %add.i.i117, %Read16.exit.i.i.for.body.i.i.backedge_crit_edge ]
  br label %for.body.i.i

SC_ProcStartCommand.exit.thread:                  ; preds = %Read16.exit.i111.SC_ProcStartCommand.exit.thread_crit_edge, %Read16.exit.thread.i107
  call void @mutex_unlock(ptr noundef %mutex.i128) #7
  br label %DRX_Start.exit

SC_ProcStartCommand.exit:                         ; preds = %Read16.exit.i.i.SC_ProcStartCommand.exit_crit_edge, %Read16.exit.thread.i.i.SC_ProcStartCommand.exit_crit_edge
  %1580 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1580)
  %1581 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i92) #7
  %1582 = getelementptr inbounds [6 x i8], ptr %mm.i.i92, i32 0, i32 1
  %1583 = getelementptr inbounds [6 x i8], ptr %mm.i.i92, i32 0, i32 2
  %1584 = ptrtoint ptr %mm.i.i92 to i32
  call void @__asan_store1_noabort(i32 %1584)
  store i8 66, ptr %mm.i.i92, align 1
  %1585 = ptrtoint ptr %1582 to i32
  call void @__asan_store1_noabort(i32 %1585)
  store i8 -126, ptr %1582, align 1
  %1586 = ptrtoint ptr %1583 to i32
  call void @__asan_storeN_noabort(i32 %1586, i32 4)
  store i32 0, ptr %1583, align 1
  %1587 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1587)
  %1588 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i91) #7
  %1589 = getelementptr inbounds i8, ptr %msg.i.i.i91, i32 4
  %1590 = ptrtoint ptr %1589 to i32
  call void @__asan_store4_noabort(i32 %1590)
  store i32 458751, ptr %1589, align 4
  %conv.i.i3.i = zext i8 %1581 to i16
  %1591 = ptrtoint ptr %msg.i.i.i91 to i32
  call void @__asan_store2_noabort(i32 %1591)
  store i16 %conv.i.i3.i, ptr %msg.i.i.i91, align 4
  %flags.i.i4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i91, i32 0, i32 1
  %1592 = ptrtoint ptr %flags.i.i4.i to i32
  call void @__asan_store2_noabort(i32 %1592)
  store i16 0, ptr %flags.i.i4.i, align 2
  %buf.i.i5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i91, i32 0, i32 3
  %1593 = ptrtoint ptr %buf.i.i5.i to i32
  call void @__asan_store4_noabort(i32 %1593)
  store ptr %mm.i.i92, ptr %buf.i.i5.i, align 4
  %call.i.i6.i = call i32 @i2c_transfer(ptr noundef %1588, ptr noundef nonnull %msg.i.i.i91, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i6.i)
  %cmp.not.i.not.i7.i = icmp ne i32 %call.i.i6.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i91) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i92) #7
  %1594 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1594)
  %1595 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i9.i) #7
  %1596 = getelementptr inbounds [6 x i8], ptr %mm.i9.i, i32 0, i32 1
  %1597 = getelementptr inbounds [6 x i8], ptr %mm.i9.i, i32 0, i32 2
  %1598 = getelementptr inbounds [6 x i8], ptr %mm.i9.i, i32 0, i32 3
  %1599 = getelementptr inbounds [6 x i8], ptr %mm.i9.i, i32 0, i32 4
  %1600 = getelementptr inbounds [6 x i8], ptr %mm.i9.i, i32 0, i32 5
  %1601 = ptrtoint ptr %mm.i9.i to i32
  call void @__asan_store1_noabort(i32 %1601)
  store i8 65, ptr %mm.i9.i, align 1
  %1602 = ptrtoint ptr %1596 to i32
  call void @__asan_store1_noabort(i32 %1602)
  store i8 -126, ptr %1596, align 1
  %1603 = ptrtoint ptr %1597 to i32
  call void @__asan_store1_noabort(i32 %1603)
  store i8 0, ptr %1597, align 1
  %1604 = ptrtoint ptr %1598 to i32
  call void @__asan_store1_noabort(i32 %1604)
  store i8 0, ptr %1598, align 1
  %1605 = ptrtoint ptr %1599 to i32
  call void @__asan_store1_noabort(i32 %1605)
  store i8 1, ptr %1599, align 1
  %1606 = ptrtoint ptr %1600 to i32
  call void @__asan_store1_noabort(i32 %1606)
  store i8 0, ptr %1600, align 1
  %1607 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1607)
  %1608 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i8.i) #7
  %1609 = getelementptr inbounds i8, ptr %msg.i.i8.i, i32 4
  %1610 = ptrtoint ptr %1609 to i32
  call void @__asan_store4_noabort(i32 %1610)
  store i32 458751, ptr %1609, align 4
  %conv.i.i12.i = zext i8 %1595 to i16
  %1611 = ptrtoint ptr %msg.i.i8.i to i32
  call void @__asan_store2_noabort(i32 %1611)
  store i16 %conv.i.i12.i, ptr %msg.i.i8.i, align 4
  %flags.i.i13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i8.i, i32 0, i32 1
  %1612 = ptrtoint ptr %flags.i.i13.i to i32
  call void @__asan_store2_noabort(i32 %1612)
  store i16 0, ptr %flags.i.i13.i, align 2
  %buf.i.i14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i8.i, i32 0, i32 3
  %1613 = ptrtoint ptr %buf.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %1613)
  store ptr %mm.i9.i, ptr %buf.i.i14.i, align 4
  %call.i.i15.i = call i32 @i2c_transfer(ptr noundef %1608, ptr noundef nonnull %msg.i.i8.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i15.i)
  %cmp.not.i.not.i16.i = icmp ne i32 %call.i.i15.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i8.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i9.i) #7
  %or632.i = or i1 %cmp.not.i.not.i7.i, %cmp.not.i.not.i16.i
  %1614 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1614)
  %1615 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i19.i) #7
  %1616 = getelementptr inbounds [6 x i8], ptr %mm.i19.i, i32 0, i32 1
  %1617 = getelementptr inbounds [6 x i8], ptr %mm.i19.i, i32 0, i32 2
  %1618 = getelementptr inbounds [6 x i8], ptr %mm.i19.i, i32 0, i32 3
  %1619 = getelementptr inbounds [6 x i8], ptr %mm.i19.i, i32 0, i32 4
  %1620 = getelementptr inbounds [6 x i8], ptr %mm.i19.i, i32 0, i32 5
  %1621 = ptrtoint ptr %mm.i19.i to i32
  call void @__asan_store1_noabort(i32 %1621)
  store i8 64, ptr %mm.i19.i, align 1
  %1622 = ptrtoint ptr %1616 to i32
  call void @__asan_store1_noabort(i32 %1622)
  store i8 -126, ptr %1616, align 1
  %1623 = ptrtoint ptr %1617 to i32
  call void @__asan_store1_noabort(i32 %1623)
  store i8 0, ptr %1617, align 1
  %1624 = ptrtoint ptr %1618 to i32
  call void @__asan_store1_noabort(i32 %1624)
  store i8 0, ptr %1618, align 1
  %1625 = ptrtoint ptr %1619 to i32
  call void @__asan_store1_noabort(i32 %1625)
  store i8 1, ptr %1619, align 1
  %1626 = ptrtoint ptr %1620 to i32
  call void @__asan_store1_noabort(i32 %1626)
  store i8 0, ptr %1620, align 1
  %1627 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1627)
  %1628 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i18.i) #7
  %1629 = getelementptr inbounds i8, ptr %msg.i.i18.i, i32 4
  %1630 = ptrtoint ptr %1629 to i32
  call void @__asan_store4_noabort(i32 %1630)
  store i32 458751, ptr %1629, align 4
  %conv.i.i22.i = zext i8 %1615 to i16
  %1631 = ptrtoint ptr %msg.i.i18.i to i32
  call void @__asan_store2_noabort(i32 %1631)
  store i16 %conv.i.i22.i, ptr %msg.i.i18.i, align 4
  %flags.i.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i18.i, i32 0, i32 1
  %1632 = ptrtoint ptr %flags.i.i23.i to i32
  call void @__asan_store2_noabort(i32 %1632)
  store i16 0, ptr %flags.i.i23.i, align 2
  %buf.i.i24.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i18.i, i32 0, i32 3
  %1633 = ptrtoint ptr %buf.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %1633)
  store ptr %mm.i19.i, ptr %buf.i.i24.i, align 4
  %call.i.i25.i = call i32 @i2c_transfer(ptr noundef %1628, ptr noundef nonnull %msg.i.i18.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i25.i)
  %cmp.not.i.not.i26.i = icmp ne i32 %call.i.i25.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i18.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i19.i) #7
  %or833.i = or i1 %or632.i, %cmp.not.i.not.i26.i
  %call9.i = call fastcc i32 @SC_SendCommand(ptr noundef %1, i16 noundef zeroext 1) #7
  call void @mutex_unlock(ptr noundef %mutex.i128) #7
  br i1 %or833.i, label %SC_ProcStartCommand.exit.DRX_Start.exit_crit_edge, label %if.end498.i

SC_ProcStartCommand.exit.DRX_Start.exit_crit_edge: ; preds = %SC_ProcStartCommand.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end498.i:                                      ; preds = %SC_ProcStartCommand.exit
  %1634 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1634)
  %1635 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i81) #7
  %1636 = getelementptr inbounds [6 x i8], ptr %mm.i.i81, i32 0, i32 1
  %1637 = getelementptr inbounds [6 x i8], ptr %mm.i.i81, i32 0, i32 2
  %1638 = getelementptr inbounds [6 x i8], ptr %mm.i.i81, i32 0, i32 3
  %1639 = getelementptr inbounds [6 x i8], ptr %mm.i.i81, i32 0, i32 4
  %1640 = getelementptr inbounds [6 x i8], ptr %mm.i.i81, i32 0, i32 5
  %1641 = ptrtoint ptr %mm.i.i81 to i32
  call void @__asan_store1_noabort(i32 %1641)
  store i8 0, ptr %mm.i.i81, align 1
  %1642 = ptrtoint ptr %1636 to i32
  call void @__asan_store1_noabort(i32 %1642)
  store i8 21, ptr %1636, align 1
  %1643 = ptrtoint ptr %1637 to i32
  call void @__asan_store1_noabort(i32 %1643)
  store i8 2, ptr %1637, align 1
  %1644 = ptrtoint ptr %1638 to i32
  call void @__asan_store1_noabort(i32 %1644)
  store i8 0, ptr %1638, align 1
  %1645 = ptrtoint ptr %1639 to i32
  call void @__asan_store1_noabort(i32 %1645)
  store i8 2, ptr %1639, align 1
  %1646 = ptrtoint ptr %1640 to i32
  call void @__asan_store1_noabort(i32 %1646)
  store i8 0, ptr %1640, align 1
  %1647 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1647)
  %1648 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i80) #7
  %1649 = getelementptr inbounds i8, ptr %msg.i.i.i80, i32 4
  %1650 = ptrtoint ptr %1649 to i32
  call void @__asan_store4_noabort(i32 %1650)
  store i32 458751, ptr %1649, align 4
  %conv.i.i.i84 = zext i8 %1635 to i16
  %1651 = ptrtoint ptr %msg.i.i.i80 to i32
  call void @__asan_store2_noabort(i32 %1651)
  store i16 %conv.i.i.i84, ptr %msg.i.i.i80, align 4
  %flags.i.i.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i80, i32 0, i32 1
  %1652 = ptrtoint ptr %flags.i.i.i85 to i32
  call void @__asan_store2_noabort(i32 %1652)
  store i16 0, ptr %flags.i.i.i85, align 2
  %buf.i.i.i86 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i80, i32 0, i32 3
  %1653 = ptrtoint ptr %buf.i.i.i86 to i32
  call void @__asan_store4_noabort(i32 %1653)
  store ptr %mm.i.i81, ptr %buf.i.i.i86, align 4
  %call.i.i.i87 = call i32 @i2c_transfer(ptr noundef %1648, ptr noundef nonnull %msg.i.i.i80, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i87)
  %cmp.not.i.not.i.not.i88 = icmp eq i32 %call.i.i.i87, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i80) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i81) #7
  br i1 %cmp.not.i.not.i.not.i88, label %if.end.i, label %if.end498.i.DRX_Start.exit_crit_edge

if.end498.i.DRX_Start.exit_crit_edge:             ; preds = %if.end498.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end.i:                                         ; preds = %if.end498.i
  %m_EcOcRegSncSncLvl.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 35
  %1654 = ptrtoint ptr %m_EcOcRegSncSncLvl.i to i32
  call void @__asan_load2_noabort(i32 %1654)
  %1655 = load i16, ptr %m_EcOcRegSncSncLvl.i, align 4
  %1656 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1656)
  %1657 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i28.i) #7
  %1658 = getelementptr inbounds [6 x i8], ptr %mm.i28.i, i32 0, i32 1
  %1659 = getelementptr inbounds [6 x i8], ptr %mm.i28.i, i32 0, i32 2
  %1660 = getelementptr inbounds [6 x i8], ptr %mm.i28.i, i32 0, i32 3
  %1661 = getelementptr inbounds [6 x i8], ptr %mm.i28.i, i32 0, i32 4
  %1662 = getelementptr inbounds [6 x i8], ptr %mm.i28.i, i32 0, i32 5
  %1663 = ptrtoint ptr %mm.i28.i to i32
  call void @__asan_store1_noabort(i32 %1663)
  store i8 22, ptr %mm.i28.i, align 1
  %1664 = ptrtoint ptr %1658 to i32
  call void @__asan_store1_noabort(i32 %1664)
  store i8 21, ptr %1658, align 1
  %1665 = ptrtoint ptr %1659 to i32
  call void @__asan_store1_noabort(i32 %1665)
  store i8 2, ptr %1659, align 1
  %1666 = ptrtoint ptr %1660 to i32
  call void @__asan_store1_noabort(i32 %1666)
  store i8 0, ptr %1660, align 1
  %conv15.i.i = trunc i16 %1655 to i8
  %1667 = ptrtoint ptr %1661 to i32
  call void @__asan_store1_noabort(i32 %1667)
  store i8 %conv15.i.i, ptr %1661, align 1
  %1668 = lshr i16 %1655, 8
  %conv20.i.i = trunc i16 %1668 to i8
  %1669 = ptrtoint ptr %1662 to i32
  call void @__asan_store1_noabort(i32 %1669)
  store i8 %conv20.i.i, ptr %1662, align 1
  %1670 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1670)
  %1671 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i27.i) #7
  %1672 = getelementptr inbounds i8, ptr %msg.i.i27.i, i32 4
  %1673 = ptrtoint ptr %1672 to i32
  call void @__asan_store4_noabort(i32 %1673)
  store i32 458751, ptr %1672, align 4
  %conv.i.i31.i = zext i8 %1657 to i16
  %1674 = ptrtoint ptr %msg.i.i27.i to i32
  call void @__asan_store2_noabort(i32 %1674)
  store i16 %conv.i.i31.i, ptr %msg.i.i27.i, align 4
  %flags.i.i32.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i27.i, i32 0, i32 1
  %1675 = ptrtoint ptr %flags.i.i32.i to i32
  call void @__asan_store2_noabort(i32 %1675)
  store i16 0, ptr %flags.i.i32.i, align 2
  %buf.i.i33.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i27.i, i32 0, i32 3
  %1676 = ptrtoint ptr %buf.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %1676)
  store ptr %mm.i28.i, ptr %buf.i.i33.i, align 4
  %call.i.i34.i = call i32 @i2c_transfer(ptr noundef %1671, ptr noundef nonnull %msg.i.i27.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i34.i)
  %cmp.not.i.not.i35.not.i = icmp eq i32 %call.i.i34.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i27.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i28.i) #7
  br i1 %cmp.not.i.not.i35.not.i, label %if.end4.i89, label %if.end.i.DRX_Start.exit_crit_edge

if.end.i.DRX_Start.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end4.i89:                                      ; preds = %if.end.i
  %m_EcOcRegOcModeLop.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 34
  %1677 = ptrtoint ptr %m_EcOcRegOcModeLop.i to i32
  call void @__asan_load2_noabort(i32 %1677)
  %1678 = load i16, ptr %m_EcOcRegOcModeLop.i, align 2
  %1679 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1679)
  %1680 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i38.i) #7
  %1681 = getelementptr inbounds [6 x i8], ptr %mm.i38.i, i32 0, i32 1
  %1682 = getelementptr inbounds [6 x i8], ptr %mm.i38.i, i32 0, i32 2
  %1683 = getelementptr inbounds [6 x i8], ptr %mm.i38.i, i32 0, i32 3
  %1684 = getelementptr inbounds [6 x i8], ptr %mm.i38.i, i32 0, i32 4
  %1685 = getelementptr inbounds [6 x i8], ptr %mm.i38.i, i32 0, i32 5
  %1686 = ptrtoint ptr %mm.i38.i to i32
  call void @__asan_store1_noabort(i32 %1686)
  store i8 16, ptr %mm.i38.i, align 1
  %1687 = ptrtoint ptr %1681 to i32
  call void @__asan_store1_noabort(i32 %1687)
  store i8 21, ptr %1681, align 1
  %1688 = ptrtoint ptr %1682 to i32
  call void @__asan_store1_noabort(i32 %1688)
  store i8 2, ptr %1682, align 1
  %1689 = ptrtoint ptr %1683 to i32
  call void @__asan_store1_noabort(i32 %1689)
  store i8 0, ptr %1683, align 1
  %conv15.i40.i = trunc i16 %1678 to i8
  %1690 = ptrtoint ptr %1684 to i32
  call void @__asan_store1_noabort(i32 %1690)
  store i8 %conv15.i40.i, ptr %1684, align 1
  %1691 = lshr i16 %1678, 8
  %conv20.i41.i = trunc i16 %1691 to i8
  %1692 = ptrtoint ptr %1685 to i32
  call void @__asan_store1_noabort(i32 %1692)
  store i8 %conv20.i41.i, ptr %1685, align 1
  %1693 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1693)
  %1694 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i37.i) #7
  %1695 = getelementptr inbounds i8, ptr %msg.i.i37.i, i32 4
  %1696 = ptrtoint ptr %1695 to i32
  call void @__asan_store4_noabort(i32 %1696)
  store i32 458751, ptr %1695, align 4
  %conv.i.i43.i = zext i8 %1680 to i16
  %1697 = ptrtoint ptr %msg.i.i37.i to i32
  call void @__asan_store2_noabort(i32 %1697)
  store i16 %conv.i.i43.i, ptr %msg.i.i37.i, align 4
  %flags.i.i44.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i37.i, i32 0, i32 1
  %1698 = ptrtoint ptr %flags.i.i44.i to i32
  call void @__asan_store2_noabort(i32 %1698)
  store i16 0, ptr %flags.i.i44.i, align 2
  %buf.i.i45.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i37.i, i32 0, i32 3
  %1699 = ptrtoint ptr %buf.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %1699)
  store ptr %mm.i38.i, ptr %buf.i.i45.i, align 4
  %call.i.i46.i = call i32 @i2c_transfer(ptr noundef %1694, ptr noundef nonnull %msg.i.i37.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i46.i)
  %cmp.not.i.not.i47.not.i = icmp eq i32 %call.i.i46.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i37.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i38.i) #7
  br i1 %cmp.not.i.not.i47.not.i, label %if.end8.i, label %if.end4.i89.DRX_Start.exit_crit_edge

if.end4.i89.DRX_Start.exit_crit_edge:             ; preds = %if.end4.i89
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end8.i:                                        ; preds = %if.end4.i89
  %1700 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1700)
  %1701 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i50.i) #7
  %1702 = getelementptr inbounds [6 x i8], ptr %mm.i50.i, i32 0, i32 1
  %1703 = getelementptr inbounds [6 x i8], ptr %mm.i50.i, i32 0, i32 2
  %1704 = getelementptr inbounds [6 x i8], ptr %mm.i50.i, i32 0, i32 3
  %1705 = getelementptr inbounds [6 x i8], ptr %mm.i50.i, i32 0, i32 4
  %1706 = getelementptr inbounds [6 x i8], ptr %mm.i50.i, i32 0, i32 5
  %1707 = ptrtoint ptr %mm.i50.i to i32
  call void @__asan_store1_noabort(i32 %1707)
  store i8 54, ptr %mm.i50.i, align 1
  %1708 = ptrtoint ptr %1702 to i32
  call void @__asan_store1_noabort(i32 %1708)
  store i8 21, ptr %1702, align 1
  %1709 = ptrtoint ptr %1703 to i32
  call void @__asan_store1_noabort(i32 %1709)
  store i8 2, ptr %1703, align 1
  %1710 = ptrtoint ptr %1704 to i32
  call void @__asan_store1_noabort(i32 %1710)
  store i8 0, ptr %1704, align 1
  %1711 = ptrtoint ptr %1705 to i32
  call void @__asan_store1_noabort(i32 %1711)
  store i8 0, ptr %1705, align 1
  %1712 = ptrtoint ptr %1706 to i32
  call void @__asan_store1_noabort(i32 %1712)
  store i8 0, ptr %1706, align 1
  %1713 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1713)
  %1714 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i49.i) #7
  %1715 = getelementptr inbounds i8, ptr %msg.i.i49.i, i32 4
  %1716 = ptrtoint ptr %1715 to i32
  call void @__asan_store4_noabort(i32 %1716)
  store i32 458751, ptr %1715, align 4
  %conv.i.i53.i = zext i8 %1701 to i16
  %1717 = ptrtoint ptr %msg.i.i49.i to i32
  call void @__asan_store2_noabort(i32 %1717)
  store i16 %conv.i.i53.i, ptr %msg.i.i49.i, align 4
  %flags.i.i54.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i49.i, i32 0, i32 1
  %1718 = ptrtoint ptr %flags.i.i54.i to i32
  call void @__asan_store2_noabort(i32 %1718)
  store i16 0, ptr %flags.i.i54.i, align 2
  %buf.i.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i49.i, i32 0, i32 3
  %1719 = ptrtoint ptr %buf.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %1719)
  store ptr %mm.i50.i, ptr %buf.i.i55.i, align 4
  %call.i.i56.i = call i32 @i2c_transfer(ptr noundef %1714, ptr noundef nonnull %msg.i.i49.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i56.i)
  %cmp.not.i.not.i57.not.i = icmp eq i32 %call.i.i56.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i49.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i50.i) #7
  br i1 %cmp.not.i.not.i57.not.i, label %StartOC.exit, label %if.end8.i.DRX_Start.exit_crit_edge

if.end8.i.DRX_Start.exit_crit_edge:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

StartOC.exit:                                     ; preds = %if.end8.i
  %1720 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1720)
  %1721 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i60.i) #7
  %1722 = getelementptr inbounds [6 x i8], ptr %mm.i60.i, i32 0, i32 1
  %1723 = getelementptr inbounds [6 x i8], ptr %mm.i60.i, i32 0, i32 2
  %1724 = getelementptr inbounds [6 x i8], ptr %mm.i60.i, i32 0, i32 3
  %1725 = getelementptr inbounds [6 x i8], ptr %mm.i60.i, i32 0, i32 4
  %1726 = getelementptr inbounds [6 x i8], ptr %mm.i60.i, i32 0, i32 5
  %1727 = ptrtoint ptr %mm.i60.i to i32
  call void @__asan_store1_noabort(i32 %1727)
  store i8 0, ptr %mm.i60.i, align 1
  %1728 = ptrtoint ptr %1722 to i32
  call void @__asan_store1_noabort(i32 %1728)
  store i8 21, ptr %1722, align 1
  %1729 = ptrtoint ptr %1723 to i32
  call void @__asan_store1_noabort(i32 %1729)
  store i8 2, ptr %1723, align 1
  %1730 = ptrtoint ptr %1724 to i32
  call void @__asan_store1_noabort(i32 %1730)
  store i8 0, ptr %1724, align 1
  %1731 = ptrtoint ptr %1725 to i32
  call void @__asan_store1_noabort(i32 %1731)
  store i8 1, ptr %1725, align 1
  %1732 = ptrtoint ptr %1726 to i32
  call void @__asan_store1_noabort(i32 %1732)
  store i8 0, ptr %1726, align 1
  %1733 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1733)
  %1734 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i59.i) #7
  %1735 = getelementptr inbounds i8, ptr %msg.i.i59.i, i32 4
  %1736 = ptrtoint ptr %1735 to i32
  call void @__asan_store4_noabort(i32 %1736)
  store i32 458751, ptr %1735, align 4
  %conv.i.i63.i = zext i8 %1721 to i16
  %1737 = ptrtoint ptr %msg.i.i59.i to i32
  call void @__asan_store2_noabort(i32 %1737)
  store i16 %conv.i.i63.i, ptr %msg.i.i59.i, align 4
  %flags.i.i64.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i59.i, i32 0, i32 1
  %1738 = ptrtoint ptr %flags.i.i64.i to i32
  call void @__asan_store2_noabort(i32 %1738)
  store i16 0, ptr %flags.i.i64.i, align 2
  %buf.i.i65.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i59.i, i32 0, i32 3
  %1739 = ptrtoint ptr %buf.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %1739)
  store ptr %mm.i60.i, ptr %buf.i.i65.i, align 4
  %call.i.i66.i = call i32 @i2c_transfer(ptr noundef %1734, ptr noundef nonnull %msg.i.i59.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i66.i)
  %cmp.not.i.not.i67.i.not = icmp eq i32 %call.i.i66.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i59.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i60.i) #7
  br i1 %cmp.not.i.not.i67.i.not, label %if.end503.i, label %StartOC.exit.DRX_Start.exit_crit_edge

StartOC.exit.DRX_Start.exit_crit_edge:            ; preds = %StartOC.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end503.i:                                      ; preds = %StartOC.exit
  %operation_mode.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 25
  %1740 = ptrtoint ptr %operation_mode.i to i32
  call void @__asan_load4_noabort(i32 %1740)
  %1741 = load i32, ptr %operation_mode.i, align 4
  %1742 = zext i32 %1741 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1742, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %1741, label %if.end503.i.if.end512.i_crit_edge [
    i32 2, label %if.then5.i
    i32 1, label %if.then.i
  ]

if.end503.i.if.end512.i_crit_edge:                ; preds = %if.end503.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end512.i

if.then.i:                                        ; preds = %if.end503.i
  call void @__sanitizer_cov_trace_pc() #9
  %m_StartDiversityFront.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 50
  %1743 = ptrtoint ptr %m_StartDiversityFront.i to i32
  call void @__asan_load4_noabort(i32 %1743)
  %1744 = load ptr, ptr %m_StartDiversityFront.i, align 4
  %call.i68 = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %1744) #7
  br label %StartDiversity.exit

if.then5.i:                                       ; preds = %if.end503.i
  %m_StartDiversityEnd.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 51
  %1745 = ptrtoint ptr %m_StartDiversityEnd.i to i32
  call void @__asan_load4_noabort(i32 %1745)
  %1746 = load ptr, ptr %m_StartDiversityEnd.i, align 4
  %call6.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %1746) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then5.i.DRX_Start.exit_crit_edge, label %if.end9.i

if.then5.i.DRX_Start.exit_crit_edge:              ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end9.i:                                        ; preds = %if.then5.i
  %1747 = ptrtoint ptr %bandwidth_hz.i to i32
  call void @__asan_load4_noabort(i32 %1747)
  %1748 = load i32, ptr %bandwidth_hz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %1748)
  %cmp10.i70 = icmp eq i32 %1748, 8000000
  br i1 %cmp10.i70, label %if.then11.i, label %if.else16.i

if.then11.i:                                      ; preds = %if.end9.i
  %m_DiversityDelay8MHZ.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 52
  %1749 = ptrtoint ptr %m_DiversityDelay8MHZ.i to i32
  call void @__asan_load4_noabort(i32 %1749)
  %1750 = load ptr, ptr %m_DiversityDelay8MHZ.i, align 4
  %call12.i71 = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %1750) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i71)
  %cmp13.i72 = icmp slt i32 %call12.i71, 0
  br i1 %cmp13.i72, label %if.then11.i.DRX_Start.exit_crit_edge, label %if.then11.i.if.end21.i78_crit_edge

if.then11.i.if.end21.i78_crit_edge:               ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i78

if.then11.i.DRX_Start.exit_crit_edge:             ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.else16.i:                                      ; preds = %if.end9.i
  %m_DiversityDelay6MHZ.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 53
  %1751 = ptrtoint ptr %m_DiversityDelay6MHZ.i to i32
  call void @__asan_load4_noabort(i32 %1751)
  %1752 = load ptr, ptr %m_DiversityDelay6MHZ.i, align 4
  %call17.i = call fastcc i32 @WriteTable(ptr noundef %1, ptr noundef %1752) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.else16.i.DRX_Start.exit_crit_edge, label %if.else16.i.if.end21.i78_crit_edge

if.else16.i.if.end21.i78_crit_edge:               ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i78

if.else16.i.DRX_Start.exit_crit_edge:             ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end21.i78:                                     ; preds = %if.else16.i.if.end21.i78_crit_edge, %if.then11.i.if.end21.i78_crit_edge
  %1753 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1753)
  %1754 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i.i) #7
  %1755 = getelementptr inbounds [4 x i8], ptr %mm1.i.i, i32 0, i32 1
  %1756 = getelementptr inbounds [4 x i8], ptr %mm1.i.i, i32 0, i32 2
  %1757 = getelementptr inbounds [4 x i8], ptr %mm1.i.i, i32 0, i32 3
  %1758 = ptrtoint ptr %mm1.i.i to i32
  call void @__asan_store1_noabort(i32 %1758)
  store i8 50, ptr %mm1.i.i, align 1
  %1759 = ptrtoint ptr %1755 to i32
  call void @__asan_store1_noabort(i32 %1759)
  store i8 -63, ptr %1755, align 1
  %1760 = ptrtoint ptr %1756 to i32
  call void @__asan_store1_noabort(i32 %1760)
  store i8 1, ptr %1756, align 1
  %1761 = ptrtoint ptr %1757 to i32
  call void @__asan_store1_noabort(i32 %1761)
  store i8 0, ptr %1757, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i.i) #7
  %1762 = ptrtoint ptr %mm2.i.i to i32
  call void @__asan_store1_noabort(i32 %1762)
  store i8 -1, ptr %mm2.i.i, align 1, !annotation !75
  %1763 = getelementptr inbounds [2 x i8], ptr %mm2.i.i, i32 0, i32 1
  %1764 = ptrtoint ptr %1763 to i32
  call void @__asan_store1_noabort(i32 %1764)
  store i8 -1, ptr %1763, align 1, !annotation !75
  %1765 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1765)
  %1766 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i) #7
  %1767 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %1768 = call ptr @memset(ptr %1767, i32 255, i32 16)
  %conv.i.i.i74 = zext i8 %1754 to i16
  %1769 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1769)
  store i16 %conv.i.i.i74, ptr %msgs.i.i.i, align 4
  %flags.i.i.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %1770 = ptrtoint ptr %flags.i.i.i75 to i32
  call void @__asan_store2_noabort(i32 %1770)
  store i16 0, ptr %flags.i.i.i75, align 2
  %1771 = ptrtoint ptr %1767 to i32
  call void @__asan_store2_noabort(i32 %1771)
  store i16 4, ptr %1767, align 4
  %buf.i.i.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %1772 = ptrtoint ptr %buf.i.i.i76 to i32
  call void @__asan_store4_noabort(i32 %1772)
  store ptr %mm1.i.i, ptr %buf.i.i.i76, align 4
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1
  %1773 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1773)
  store i16 %conv.i.i.i74, ptr %arrayinit.element.i.i.i, align 4
  %flags5.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 1
  %1774 = ptrtoint ptr %flags5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1774)
  store i16 1, ptr %flags5.i.i.i, align 2
  %len6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 2
  %1775 = ptrtoint ptr %len6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1775)
  store i16 2, ptr %len6.i.i.i, align 4
  %buf8.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 3
  %1776 = ptrtoint ptr %buf8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1776)
  store ptr %mm2.i.i, ptr %buf8.i.i.i, align 4
  %call.i.i.i77 = call i32 @i2c_transfer(ptr noundef %1766, ptr noundef nonnull %msgs.i.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i77)
  %cmp.not.i.not.i.i = icmp eq i32 %call.i.i.i77, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #7
  br i1 %cmp.not.i.not.i.i, label %Read16.exit.i, label %Read16.exit.thread.i

Read16.exit.thread.i:                             ; preds = %if.end21.i78
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i) #7
  br label %DRX_Start.exit

Read16.exit.i:                                    ; preds = %if.end21.i78
  call void @__sanitizer_cov_trace_pc() #9
  %1777 = ptrtoint ptr %mm2.i.i to i32
  call void @__asan_load1_noabort(i32 %1777)
  %1778 = load i8, ptr %mm2.i.i, align 1
  %1779 = ptrtoint ptr %1763 to i32
  call void @__asan_load1_noabort(i32 %1779)
  %1780 = load i8, ptr %1763, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i) #7
  %1781 = and i8 %1778, 126
  %1782 = or i8 %1781, 1
  %1783 = ptrtoint ptr %demod_address.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %1783)
  %1784 = load i8, ptr %demod_address.i18.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i66) #7
  %1785 = getelementptr inbounds [6 x i8], ptr %mm.i.i66, i32 0, i32 1
  %1786 = getelementptr inbounds [6 x i8], ptr %mm.i.i66, i32 0, i32 2
  %1787 = getelementptr inbounds [6 x i8], ptr %mm.i.i66, i32 0, i32 3
  %1788 = getelementptr inbounds [6 x i8], ptr %mm.i.i66, i32 0, i32 4
  %1789 = getelementptr inbounds [6 x i8], ptr %mm.i.i66, i32 0, i32 5
  %1790 = ptrtoint ptr %mm.i.i66 to i32
  call void @__asan_store1_noabort(i32 %1790)
  store i8 50, ptr %mm.i.i66, align 1
  %1791 = ptrtoint ptr %1785 to i32
  call void @__asan_store1_noabort(i32 %1791)
  store i8 -63, ptr %1785, align 1
  %1792 = ptrtoint ptr %1786 to i32
  call void @__asan_store1_noabort(i32 %1792)
  store i8 1, ptr %1786, align 1
  %1793 = ptrtoint ptr %1787 to i32
  call void @__asan_store1_noabort(i32 %1793)
  store i8 0, ptr %1787, align 1
  %1794 = ptrtoint ptr %1788 to i32
  call void @__asan_store1_noabort(i32 %1794)
  store i8 %1782, ptr %1788, align 1
  %1795 = ptrtoint ptr %1789 to i32
  call void @__asan_store1_noabort(i32 %1795)
  store i8 %1780, ptr %1789, align 1
  %1796 = ptrtoint ptr %i2c.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %1796)
  %1797 = load ptr, ptr %i2c.i29.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i65) #7
  %1798 = getelementptr inbounds i8, ptr %msg.i.i.i65, i32 4
  %1799 = ptrtoint ptr %1798 to i32
  call void @__asan_store4_noabort(i32 %1799)
  store i32 458751, ptr %1798, align 4
  %conv.i.i55.i = zext i8 %1784 to i16
  %1800 = ptrtoint ptr %msg.i.i.i65 to i32
  call void @__asan_store2_noabort(i32 %1800)
  store i16 %conv.i.i55.i, ptr %msg.i.i.i65, align 4
  %flags.i.i56.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i65, i32 0, i32 1
  %1801 = ptrtoint ptr %flags.i.i56.i to i32
  call void @__asan_store2_noabort(i32 %1801)
  store i16 0, ptr %flags.i.i56.i, align 2
  %buf.i.i57.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i65, i32 0, i32 3
  %1802 = ptrtoint ptr %buf.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %1802)
  store ptr %mm.i.i66, ptr %buf.i.i57.i, align 4
  %call.i.i58.i = call i32 @i2c_transfer(ptr noundef %1797, ptr noundef nonnull %msg.i.i.i65, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i58.i)
  %cmp.not.i.not.i59.i = icmp ne i32 %call.i.i58.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i65) #7
  %..i.i = sext i1 %cmp.not.i.not.i59.i to i32
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i66) #7
  br label %StartDiversity.exit

StartDiversity.exit:                              ; preds = %Read16.exit.i, %if.then.i
  %status.0.i79 = phi i32 [ %call.i68, %if.then.i ], [ %..i.i, %Read16.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0.i79)
  %cmp508.i = icmp slt i32 %status.0.i79, 0
  br i1 %cmp508.i, label %StartDiversity.exit.DRX_Start.exit_crit_edge, label %StartDiversity.exit.if.end512.i_crit_edge

StartDiversity.exit.if.end512.i_crit_edge:        ; preds = %StartDiversity.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end512.i

StartDiversity.exit.DRX_Start.exit_crit_edge:     ; preds = %StartDiversity.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %DRX_Start.exit

if.end512.i:                                      ; preds = %StartDiversity.exit.if.end512.i_crit_edge, %if.end503.i.if.end512.i_crit_edge
  %status.6.i = phi i32 [ %status.0.i79, %StartDiversity.exit.if.end512.i_crit_edge ], [ 0, %if.end503.i.if.end512.i_crit_edge ]
  %1803 = ptrtoint ptr %drxd_state.i to i32
  call void @__asan_store4_noabort(i32 %1803)
  store i32 2, ptr %drxd_state.i, align 4
  br label %DRX_Start.exit

DRX_Start.exit:                                   ; preds = %if.end512.i, %StartDiversity.exit.DRX_Start.exit_crit_edge, %Read16.exit.thread.i, %if.else16.i.DRX_Start.exit_crit_edge, %if.then11.i.DRX_Start.exit_crit_edge, %if.then5.i.DRX_Start.exit_crit_edge, %StartOC.exit.DRX_Start.exit_crit_edge, %if.end8.i.DRX_Start.exit_crit_edge, %if.end4.i89.DRX_Start.exit_crit_edge, %if.end.i.DRX_Start.exit_crit_edge, %if.end498.i.DRX_Start.exit_crit_edge, %SC_ProcStartCommand.exit.DRX_Start.exit_crit_edge, %SC_ProcStartCommand.exit.thread, %SC_SetPrefParamCommand.exit.DRX_Start.exit_crit_edge, %SC_SetPrefParamCommand.exit.thread, %if.end483.i.DRX_Start.exit_crit_edge, %SetFrequencyShift.exit.DRX_Start.exit_crit_edge, %if.end470.i.DRX_Start.exit_crit_edge, %MulDiv32.exit.i.DRX_Start.exit_crit_edge, %if.then453.i.DRX_Start.exit_crit_edge, %SetCfgNoiseCalibration.exit.DRX_Start.exit_crit_edge, %if.then17.i.DRX_Start.exit_crit_edge, %if.end10.i368.DRX_Start.exit_crit_edge, %if.else.i363.DRX_Start.exit_crit_edge, %Read16.exit.thread.i359, %if.end440.i.DRX_Start.exit_crit_edge, %Read16.exit.thread, %if.end416.i.DRX_Start.exit_crit_edge, %sw.epilog412.i.DRX_Start.exit_crit_edge, %if.end402.i.DRX_Start.exit_crit_edge, %sw.epilog398.i.DRX_Start.exit_crit_edge, %sw.epilog340.i.DRX_Start.exit_crit_edge, %if.end328.i.DRX_Start.exit_crit_edge, %if.end323.i.DRX_Start.exit_crit_edge, %if.end318.i.DRX_Start.exit_crit_edge, %if.end313.i.DRX_Start.exit_crit_edge, %if.end308.i.DRX_Start.exit_crit_edge, %if.end303.i.DRX_Start.exit_crit_edge, %if.end298.i.DRX_Start.exit_crit_edge, %if.then293.i.DRX_Start.exit_crit_edge, %if.end275.i.DRX_Start.exit_crit_edge, %if.end270.i.DRX_Start.exit_crit_edge, %if.end265.i.DRX_Start.exit_crit_edge, %if.end260.i.DRX_Start.exit_crit_edge, %if.end255.i.DRX_Start.exit_crit_edge, %if.end250.i.DRX_Start.exit_crit_edge, %if.end245.i.DRX_Start.exit_crit_edge, %if.then240.i.DRX_Start.exit_crit_edge, %if.end222.i.DRX_Start.exit_crit_edge, %if.end217.i.DRX_Start.exit_crit_edge, %if.end212.i.DRX_Start.exit_crit_edge, %if.end207.i.DRX_Start.exit_crit_edge, %if.end202.i.DRX_Start.exit_crit_edge, %if.end197.i.DRX_Start.exit_crit_edge, %if.end192.i.DRX_Start.exit_crit_edge, %if.then187.i.DRX_Start.exit_crit_edge, %sw.epilog172.i.DRX_Start.exit_crit_edge, %if.end165.i.DRX_Start.exit_crit_edge, %if.then160.i.DRX_Start.exit_crit_edge, %if.end143.i.DRX_Start.exit_crit_edge, %if.then138.i.DRX_Start.exit_crit_edge, %if.end125.i.DRX_Start.exit_crit_edge, %if.then120.i.DRX_Start.exit_crit_edge, %if.end107.i.DRX_Start.exit_crit_edge, %if.then102.i.DRX_Start.exit_crit_edge, %if.end38.i.DRX_Start.exit_crit_edge, %if.end34.i.DRX_Start.exit_crit_edge, %if.end29.i.DRX_Start.exit_crit_edge, %if.end25.i.DRX_Start.exit_crit_edge, %if.end21.i.DRX_Start.exit_crit_edge, %if.end17.i.DRX_Start.exit_crit_edge, %if.else13.i.DRX_Start.exit_crit_edge, %if.then8.i.DRX_Start.exit_crit_edge, %ResetECOD.exit.i.DRX_Start.exit_crit_edge, %if.end4.i.i.DRX_Start.exit_crit_edge, %if.end.i.i.DRX_Start.exit_crit_edge, %if.end11.DRX_Start.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %if.end11.DRX_Start.exit_crit_edge ], [ -1, %ResetECOD.exit.i.DRX_Start.exit_crit_edge ], [ %call.i.i, %if.then8.i.DRX_Start.exit_crit_edge ], [ %call35.i, %if.end34.i.DRX_Start.exit_crit_edge ], [ %call39.i, %if.end38.i.DRX_Start.exit_crit_edge ], [ -1, %sw.epilog172.i.DRX_Start.exit_crit_edge ], [ -1, %sw.epilog340.i.DRX_Start.exit_crit_edge ], [ -1, %sw.epilog398.i.DRX_Start.exit_crit_edge ], [ -1, %sw.epilog412.i.DRX_Start.exit_crit_edge ], [ -1, %if.end416.i.DRX_Start.exit_crit_edge ], [ -1, %SetCfgNoiseCalibration.exit.DRX_Start.exit_crit_edge ], [ -1, %if.then453.i.DRX_Start.exit_crit_edge ], [ -1, %MulDiv32.exit.i.DRX_Start.exit_crit_edge ], [ -1, %if.end470.i.DRX_Start.exit_crit_edge ], [ -1, %SetFrequencyShift.exit.DRX_Start.exit_crit_edge ], [ -1, %if.end483.i.DRX_Start.exit_crit_edge ], [ %call13.i, %SC_SetPrefParamCommand.exit.DRX_Start.exit_crit_edge ], [ -1, %SC_ProcStartCommand.exit.DRX_Start.exit_crit_edge ], [ -1, %StartOC.exit.DRX_Start.exit_crit_edge ], [ %status.0.i79, %StartDiversity.exit.DRX_Start.exit_crit_edge ], [ %status.6.i, %if.end512.i ], [ -1, %if.else13.i.DRX_Start.exit_crit_edge ], [ %call.i9.i, %if.end17.i.DRX_Start.exit_crit_edge ], [ %call22.i, %if.end21.i.DRX_Start.exit_crit_edge ], [ %call.i10.i, %if.end25.i.DRX_Start.exit_crit_edge ], [ -1, %if.end29.i.DRX_Start.exit_crit_edge ], [ -1, %if.end.i.i.DRX_Start.exit_crit_edge ], [ %call3.i.i, %if.end4.i.i.DRX_Start.exit_crit_edge ], [ -1, %if.then160.i.DRX_Start.exit_crit_edge ], [ -1, %if.end165.i.DRX_Start.exit_crit_edge ], [ -1, %if.then138.i.DRX_Start.exit_crit_edge ], [ -1, %if.end143.i.DRX_Start.exit_crit_edge ], [ -1, %if.then120.i.DRX_Start.exit_crit_edge ], [ -1, %if.end125.i.DRX_Start.exit_crit_edge ], [ -1, %if.then102.i.DRX_Start.exit_crit_edge ], [ -1, %if.end107.i.DRX_Start.exit_crit_edge ], [ -1, %if.then187.i.DRX_Start.exit_crit_edge ], [ -1, %if.end192.i.DRX_Start.exit_crit_edge ], [ -1, %if.end197.i.DRX_Start.exit_crit_edge ], [ -1, %if.end202.i.DRX_Start.exit_crit_edge ], [ -1, %if.end207.i.DRX_Start.exit_crit_edge ], [ -1, %if.end212.i.DRX_Start.exit_crit_edge ], [ -1, %if.end217.i.DRX_Start.exit_crit_edge ], [ -1, %if.end222.i.DRX_Start.exit_crit_edge ], [ -1, %if.then293.i.DRX_Start.exit_crit_edge ], [ -1, %if.end298.i.DRX_Start.exit_crit_edge ], [ -1, %if.end303.i.DRX_Start.exit_crit_edge ], [ -1, %if.end308.i.DRX_Start.exit_crit_edge ], [ -1, %if.end313.i.DRX_Start.exit_crit_edge ], [ -1, %if.end318.i.DRX_Start.exit_crit_edge ], [ -1, %if.end323.i.DRX_Start.exit_crit_edge ], [ -1, %if.end328.i.DRX_Start.exit_crit_edge ], [ -1, %if.then240.i.DRX_Start.exit_crit_edge ], [ -1, %if.end245.i.DRX_Start.exit_crit_edge ], [ -1, %if.end250.i.DRX_Start.exit_crit_edge ], [ -1, %if.end255.i.DRX_Start.exit_crit_edge ], [ -1, %if.end260.i.DRX_Start.exit_crit_edge ], [ -1, %if.end265.i.DRX_Start.exit_crit_edge ], [ -1, %if.end270.i.DRX_Start.exit_crit_edge ], [ -1, %if.end275.i.DRX_Start.exit_crit_edge ], [ -22, %if.end402.i.DRX_Start.exit_crit_edge ], [ -1, %if.end440.i.DRX_Start.exit_crit_edge ], [ -1, %Read16.exit.thread ], [ -1, %SC_SetPrefParamCommand.exit.thread ], [ -1, %SC_ProcStartCommand.exit.thread ], [ -1, %if.end10.i368.DRX_Start.exit_crit_edge ], [ -1, %if.then17.i.DRX_Start.exit_crit_edge ], [ -1, %if.else.i363.DRX_Start.exit_crit_edge ], [ -1, %Read16.exit.thread.i359 ], [ -1, %if.end498.i.DRX_Start.exit_crit_edge ], [ -1, %if.end.i.DRX_Start.exit_crit_edge ], [ -1, %if.end4.i89.DRX_Start.exit_crit_edge ], [ -1, %if.end8.i.DRX_Start.exit_crit_edge ], [ -1, %if.then5.i.DRX_Start.exit_crit_edge ], [ -1, %if.then11.i.DRX_Start.exit_crit_edge ], [ -1, %if.else16.i.DRX_Start.exit_crit_edge ], [ -1, %Read16.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @drxd_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %sets) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sets to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10000, ptr %sets, align 4
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %sets, i32 0, i32 2
  %1 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %max_drift, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %sets, i32 0, i32 1
  %2 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %step_size, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drxd_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %lock = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lock) #7
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %lock, align 4, !annotation !75
  %call.i = call fastcc i32 @DRX_GetLockStatus(ptr noundef %1, ptr noundef nonnull %lock) #7
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lock, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %DRXD_status.exit.thread, label %if.then3

DRXD_status.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and14 = shl i32 %4, 4
  %5 = and i32 %and14, 16
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call fastcc i32 @ConfigureMPEGOutput(ptr noundef %1, i32 noundef 1) #7
  %and = shl i32 %4, 4
  %6 = and i32 %and, 16
  %or4 = or i32 %6, 12
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %DRXD_status.exit.thread
  %storemerge = phi i32 [ %or4, %if.then3 ], [ %5, %DRXD_status.exit.thread ]
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %status, align 4
  %and6 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %or9 = or i32 %9, 3
  store i32 %or9, ptr %status, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lock) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @drxd_read_ber(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ber) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drxd_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %msgs.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i.i = alloca [4 x i8], align 1
  %mm2.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %if_agc_cfg.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %if_agc_cfg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %if_agc_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not.i = icmp eq i32 %3, 2
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %entry
  %demod_address.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 7, i32 5
  %4 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i.i) #7
  %6 = getelementptr inbounds [4 x i8], ptr %mm1.i.i, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i8], ptr %mm1.i.i, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i8], ptr %mm1.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %mm1.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 53, ptr %mm1.i.i, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -62, ptr %6, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %7, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i.i) #7
  %13 = ptrtoint ptr %mm2.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %mm2.i.i, align 1, !annotation !75
  %14 = getelementptr inbounds [2 x i8], ptr %mm2.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %14, align 1, !annotation !75
  %i2c.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i) #7
  %18 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %19 = call ptr @memset(ptr %18, i32 255, i32 16)
  %conv.i.i.i = zext i8 %5 to i16
  %20 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i.i, ptr %msgs.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i.i.i, align 2
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 4, ptr %18, align 4
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mm1.i.i, ptr %buf.i.i.i, align 4
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1
  %24 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i.i.i, ptr %arrayinit.element.i.i.i, align 4
  %flags5.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 1
  %25 = ptrtoint ptr %flags5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %flags5.i.i.i, align 2
  %len6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 2
  %26 = ptrtoint ptr %len6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2, ptr %len6.i.i.i, align 4
  %buf8.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 3
  %27 = ptrtoint ptr %buf8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %mm2.i.i, ptr %buf8.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msgs.i.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i32 %call.i.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #7
  br i1 %cmp.not.i.not.i.i, label %Read16.exit.i, label %ReadIFAgc.exit

Read16.exit.i:                                    ; preds = %if.then.i
  %28 = ptrtoint ptr %mm2.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %mm2.i.i, align 1
  %conv15.i.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %14, align 1
  %conv17.i.i = zext i8 %31 to i32
  %shl.i.i = shl nuw nsw i32 %conv17.i.i, 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i) #7
  %shl.i.masked.i = and i32 %shl.i.i, 768
  %32 = or i32 %shl.i.masked.i, %conv15.i.i
  %R16.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 26, i32 6
  %33 = ptrtoint ptr %R16.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %R16.i, align 2
  %conv7.i = zext i16 %34 to i32
  %R29.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 26, i32 7
  %35 = ptrtoint ptr %R29.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %R29.i, align 4
  %conv10.i = zext i16 %36 to i32
  %R312.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 26, i32 8
  %37 = ptrtoint ptr %R312.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %R312.i, align 2
  %conv13.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %cmp14.i = icmp eq i16 %36, 0
  br i1 %cmp14.i, label %land.lhs.true.i, label %Read16.exit.i.if.end.i_crit_edge

Read16.exit.i.if.end.i_crit_edge:                 ; preds = %Read16.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %Read16.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp16.i = icmp eq i16 %34, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp18.i = icmp eq i16 %38, 0
  %or.cond.i = select i1 %cmp16.i, i1 true, i1 %cmp18.i
  br i1 %or.cond.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %Read16.exit.i.if.end.i_crit_edge
  %mul.i = mul nuw nsw i32 %conv10.i, 3300
  %add.i = add nuw nsw i32 %conv10.i, %conv7.i
  %div.i = udiv i32 %mul.i, %add.i
  %mul21.i = mul nuw i32 %conv13.i, %conv10.i
  %add22.i = add nuw nsw i32 %conv13.i, %conv10.i
  %div23.i = udiv i32 %mul21.i, %add22.i
  %mul24.i = mul i32 %div23.i, 3300
  %add25.i = add nuw i32 %div23.i, %conv7.i
  %div26.i = udiv i32 %mul24.i, %add25.i
  %sub.i = sub i32 %div.i, %div26.i
  %mul28.i = mul i32 %sub.i, %32
  %div2961.i = lshr i32 %mul28.i, 10
  %add30.i = add i32 %div2961.i, %div26.i
  %phi.cast = trunc i32 %add30.i to i16
  %phi.bo = mul i16 %phi.cast, -16
  %phi.bo6 = add i16 %phi.bo, -1
  br label %if.end

ReadIFAgc.exit:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i) #7
  br label %if.end

if.end:                                           ; preds = %ReadIFAgc.exit, %if.end.i, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %storemerge = phi i16 [ 0, %ReadIFAgc.exit ], [ %phi.bo6, %if.end.i ], [ -1, %land.lhs.true.i.if.end_crit_edge ], [ -1, %entry.if.end_crit_edge ]
  %39 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %storemerge, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @drxd_read_snr(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %snr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @drxd_read_ucblocks(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ucblocks) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drxd_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv.i, align 4
  %disable_i2c_gate_ctrl.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %disable_i2c_gate_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disable_i2c_gate_ctrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %entry.drxd_config_i2c.exit_crit_edge, label %if.end.i

entry.drxd_config_i2c.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %drxd_config_i2c.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hi_cfg_ctrl.i.i = getelementptr inbounds %struct.drxd_state, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %hi_cfg_ctrl.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hi_cfg_ctrl.i.i, align 4
  %6 = and i16 %5, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not.i.i = icmp eq i32 %enable, 0
  %masksel.i.i = select i1 %tobool.not.i.i, i16 0, i16 4
  %storemerge.i.i = or i16 %6, %masksel.i.i
  %7 = ptrtoint ptr %hi_cfg_ctrl.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %storemerge.i.i, ptr %hi_cfg_ctrl.i.i, align 4
  %call.i.i = tail call fastcc i32 @HI_CfgCommand(ptr noundef %1) #7
  br label %drxd_config_i2c.exit

drxd_config_i2c.exit:                             ; preds = %if.end.i, %entry.drxd_config_i2c.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.end.i ], [ 0, %entry.drxd_config_i2c.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @WriteTable(ptr nocapture noundef readonly %state, ptr noundef readonly %pTable) unnamed_addr #0 align 64 {
entry:
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %mm.i.i = alloca [52 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pTable, null
  br i1 %tobool.not, label %entry.cleanup32_crit_edge, label %while.cond.preheader

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

while.cond.preheader:                             ; preds = %entry
  %demod_address.i.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %0 = getelementptr inbounds i8, ptr %mm.i.i, i32 4
  %arrayinit.element.i.i = getelementptr inbounds i8, ptr %mm.i.i, i32 1
  %arrayinit.element3.i.i = getelementptr inbounds i8, ptr %mm.i.i, i32 2
  %arrayinit.element8.i.i = getelementptr inbounds i8, ptr %mm.i.i, i32 3
  %i2c.i.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %1 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %pTable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pTable, align 1
  %conv58 = zext i8 %3 to i32
  %arrayidx259 = getelementptr i8, ptr %pTable, i32 1
  %4 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx259, align 1
  %conv360 = zext i8 %5 to i32
  %shl61 = shl nuw nsw i32 %conv360, 8
  %or62 = or i32 %shl61, %conv58
  %arrayidx463 = getelementptr i8, ptr %pTable, i32 2
  %6 = ptrtoint ptr %arrayidx463 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx463, align 1
  %conv564 = zext i8 %7 to i32
  %shl665 = shl nuw nsw i32 %conv564, 16
  %or766 = or i32 %or62, %shl665
  %arrayidx867 = getelementptr i8, ptr %pTable, i32 3
  %8 = ptrtoint ptr %arrayidx867 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx867, align 1
  %conv968 = zext i8 %9 to i32
  %shl1069 = shl nuw i32 %conv968, 24
  %or1170 = or i32 %or766, %shl1069
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or1170)
  %cmp71 = icmp eq i32 %or1170, -1
  br i1 %cmp71, label %while.cond.preheader.cleanup32_crit_edge, label %while.cond.preheader.if.end14_crit_edge

while.cond.preheader.if.end14_crit_edge:          ; preds = %while.cond.preheader
  br label %if.end14

while.cond.preheader.cleanup32_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

if.end14:                                         ; preds = %cleanup.if.end14_crit_edge, %while.cond.preheader.if.end14_crit_edge
  %or1173 = phi i32 [ %or11, %cleanup.if.end14_crit_edge ], [ %or1170, %while.cond.preheader.if.end14_crit_edge ]
  %pTable.addr.05572 = phi ptr [ %add.ptr30, %cleanup.if.end14_crit_edge ], [ %pTable, %while.cond.preheader.if.end14_crit_edge ]
  %add.ptr = getelementptr i8, ptr %pTable.addr.05572, i32 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr, align 1
  %conv16 = zext i8 %11 to i16
  %arrayidx17 = getelementptr i8, ptr %pTable.addr.05572, i32 5
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %13 to i16
  %shl19 = shl nuw i16 %conv18, 8
  %or20 = or i16 %shl19, %conv16
  %add.ptr22 = getelementptr i8, ptr %pTable.addr.05572, i32 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or20)
  %tobool23.not = icmp eq i16 %or20, 0
  br i1 %tobool23.not, label %if.end14.cleanup32_crit_edge, label %if.end25

if.end14.cleanup32_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

if.end25:                                         ; preds = %if.end14
  %conv26 = zext i16 %or20 to i32
  %mul = shl nuw nsw i32 %conv26, 1
  %conv27 = trunc i32 %mul to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv27)
  %cmp.not.i51 = icmp eq i16 %conv27, 0
  br i1 %cmp.not.i51, label %if.end25.cleanup_crit_edge, label %if.end25.for.end.i.i_crit_edge

if.end25.for.end.i.i_crit_edge:                   ; preds = %if.end25
  br label %for.end.i.i

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end.i.i:                                      ; preds = %write_chunk.exit.i.for.end.i.i_crit_edge, %if.end25.for.end.i.i_crit_edge
  %pBlock.addr.0.i54 = phi ptr [ %add.ptr.i, %write_chunk.exit.i.for.end.i.i_crit_edge ], [ %add.ptr22, %if.end25.for.end.i.i_crit_edge ]
  %BlockSize.addr.0.i53 = phi i16 [ %sub.i, %write_chunk.exit.i.for.end.i.i_crit_edge ], [ %conv27, %if.end25.for.end.i.i_crit_edge ]
  %Address.addr.0.i52 = phi i32 [ %add.i, %write_chunk.exit.i.for.end.i.i_crit_edge ], [ %or1173, %if.end25.for.end.i.i_crit_edge ]
  %14 = call i16 @llvm.umin.i16(i16 %BlockSize.addr.0.i53, i16 48) #7
  %conv7.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %demod_address.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %demod_address.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %mm.i.i) #7
  %conv.i.i = trunc i32 %Address.addr.0.i52 to i8
  %17 = ptrtoint ptr %mm.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i.i, ptr %mm.i.i, align 1
  %shr.i.i = lshr i32 %Address.addr.0.i52, 16
  %conv2.i.i = trunc i32 %shr.i.i to i8
  %18 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv2.i.i, ptr %arrayinit.element.i.i, align 1
  %shr5.i.i = lshr i32 %Address.addr.0.i52, 24
  %19 = trunc i32 %shr5.i.i to i8
  %20 = ptrtoint ptr %arrayinit.element3.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayinit.element3.i.i, align 1
  %shr9.i.i = lshr i32 %Address.addr.0.i52, 8
  %conv11.i.i = trunc i32 %shr9.i.i to i8
  %21 = ptrtoint ptr %arrayinit.element8.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv11.i.i, ptr %arrayinit.element8.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %14)
  %22 = icmp ugt i16 %14, 47
  %narrow.i = sub nuw nsw i16 48, %14
  %narrow26.i = select i1 %22, i16 0, i16 %narrow.i
  %23 = zext i16 %narrow26.i to i64
  %24 = getelementptr i8, ptr %0, i32 %conv7.i
  %25 = trunc i64 %23 to i32
  %26 = call ptr @memset(ptr %24, i32 0, i32 %25)
  %27 = call ptr @memcpy(ptr %0, ptr %pBlock.addr.0.i54, i32 %conv7.i)
  %28 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %1, align 4
  %conv.i.i.i = zext i8 %16 to i16
  %31 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %32 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i.i.i, align 2
  %conv2.i.i.i = add nuw nsw i16 %14, 4
  store i16 %conv2.i.i.i, ptr %1, align 4
  %33 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %mm.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i32 %call.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  br i1 %cmp.not.i.not.i.i, label %write_chunk.exit.i, label %cleanup.thread

cleanup.thread:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %mm.i.i) #7
  br label %cleanup32

write_chunk.exit.i:                               ; preds = %for.end.i.i
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %mm.i.i) #7
  %add.ptr.i = getelementptr i8, ptr %pBlock.addr.0.i54, i32 %conv7.i
  %34 = lshr i32 %conv7.i, 1
  %add.i = add i32 %34, %Address.addr.0.i52
  %sub.i = sub i16 %BlockSize.addr.0.i53, %14
  %cmp.not.i = icmp eq i16 %sub.i, 0
  br i1 %cmp.not.i, label %write_chunk.exit.i.cleanup_crit_edge, label %write_chunk.exit.i.for.end.i.i_crit_edge

write_chunk.exit.i.for.end.i.i_crit_edge:         ; preds = %write_chunk.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

write_chunk.exit.i.cleanup_crit_edge:             ; preds = %write_chunk.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %write_chunk.exit.i.cleanup_crit_edge, %if.end25.cleanup_crit_edge
  %add.ptr30 = getelementptr i8, ptr %add.ptr22, i32 %mul
  %35 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr30, align 1
  %conv = zext i8 %36 to i32
  %arrayidx2 = getelementptr i8, ptr %add.ptr30, i32 1
  %37 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %38 to i32
  %shl = shl nuw nsw i32 %conv3, 8
  %or = or i32 %shl, %conv
  %arrayidx4 = getelementptr i8, ptr %add.ptr30, i32 2
  %39 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %40 to i32
  %shl6 = shl nuw nsw i32 %conv5, 16
  %or7 = or i32 %or, %shl6
  %arrayidx8 = getelementptr i8, ptr %add.ptr30, i32 3
  %41 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %42 to i32
  %shl10 = shl nuw i32 %conv9, 24
  %or11 = or i32 %or7, %shl10
  %cmp = icmp eq i32 %or11, -1
  br i1 %cmp, label %cleanup.cleanup32_crit_edge, label %cleanup.if.end14_crit_edge

cleanup.if.end14_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

cleanup.cleanup32_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup.cleanup32_crit_edge, %cleanup.thread, %if.end14.cleanup32_crit_edge, %while.cond.preheader.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup32_crit_edge ], [ -1, %cleanup.thread ], [ 0, %while.cond.preheader.cleanup32_crit_edge ], [ 0, %if.end14.cleanup32_crit_edge ], [ 0, %cleanup.cleanup32_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @Write16(ptr nocapture noundef readonly %state, i32 noundef %reg, i16 noundef zeroext %data, i8 noundef zeroext %flags) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %mm = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demod_address = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %demod_address, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm) #7
  %2 = getelementptr inbounds [6 x i8], ptr %mm, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %mm, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %mm, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %mm, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %mm, i32 0, i32 5
  %conv = trunc i32 %reg to i8
  %7 = ptrtoint ptr %mm to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %mm, align 1
  %shr = lshr i32 %reg, 16
  %conv2 = trunc i32 %shr to i8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2, ptr %2, align 1
  %shr5 = lshr i32 %reg, 24
  %9 = trunc i32 %shr5 to i8
  %conv7 = or i8 %9, %flags
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv7, ptr %3, align 1
  %shr9 = lshr i32 %reg, 8
  %conv11 = trunc i32 %shr9 to i8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11, ptr %4, align 1
  %conv15 = trunc i16 %data to i8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv15, ptr %5, align 1
  %13 = lshr i16 %data, 8
  %conv20 = trunc i16 %13 to i8
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv20, ptr %6, align 1
  %i2c = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %15 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %17 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 458751, ptr %17, align 4
  %conv.i = zext i8 %1 to i16
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mm, ptr %buf.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i.not = icmp ne i32 %call.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  %. = sext i1 %cmp.not.i.not to i32
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm) #7
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @SetCfgPga(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %msg.i.i46 = alloca %struct.i2c_msg, align 4
  %mm.i47 = alloca [6 x i8], align 1
  %msg.i.i34 = alloca %struct.i2c_msg, align 4
  %mm.i35 = alloca [6 x i8], align 1
  %msgs.i.i9 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i10 = alloca [4 x i8], align 1
  %mm2.i11 = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %mm.i = alloca [6 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i = alloca [4 x i8], align 1
  %mm2.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demod_address.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i) #7
  %2 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 3
  %5 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %mm1.i, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -62, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i) #7
  %9 = ptrtoint ptr %mm2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %mm2.i, align 1, !annotation !75
  %10 = getelementptr inbounds [2 x i8], ptr %mm2.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1, !annotation !75
  %i2c.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %12 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %14 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 255, i32 16)
  %conv.i.i = zext i8 %1 to i16
  %16 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i.i, align 2
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 4, ptr %14, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mm1.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %20 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %21 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %22 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 2, ptr %len6.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %23 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mm2.i, ptr %buf8.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br i1 %cmp.not.i.not.i, label %Read16.exit, label %Read16.exit.thread

Read16.exit.thread:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  br label %do.end

Read16.exit:                                      ; preds = %entry
  %24 = ptrtoint ptr %mm2.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mm2.i, align 1
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  %28 = and i8 %27, -17
  %29 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i) #7
  %31 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 1
  %32 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 2
  %33 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 3
  %34 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 4
  %35 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 5
  %36 = ptrtoint ptr %mm.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 16, ptr %mm.i, align 1
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -62, ptr %31, align 1
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %32, align 1
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %33, align 1
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %25, ptr %34, align 1
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %28, ptr %35, align 1
  %42 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %44 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 458751, ptr %44, align 4
  %conv.i.i4 = zext i8 %30 to i16
  %46 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i.i4, ptr %msg.i.i, align 4
  %flags.i.i5 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i.i5 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i.i5, align 2
  %buf.i.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %buf.i.i6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %mm.i, ptr %buf.i.i6, align 4
  %call.i.i7 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i7)
  %cmp.not.i.not.i8.not = icmp eq i32 %call.i.i7, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i) #7
  br i1 %cmp.not.i.not.i8.not, label %if.end46, label %Read16.exit.do.end_crit_edge

Read16.exit.do.end_crit_edge:                     ; preds = %Read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end46:                                         ; preds = %Read16.exit
  %49 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i10) #7
  %51 = getelementptr inbounds [4 x i8], ptr %mm1.i10, i32 0, i32 1
  %52 = getelementptr inbounds [4 x i8], ptr %mm1.i10, i32 0, i32 2
  %53 = getelementptr inbounds [4 x i8], ptr %mm1.i10, i32 0, i32 3
  %54 = ptrtoint ptr %mm1.i10 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 17, ptr %mm1.i10, align 1
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -62, ptr %51, align 1
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %52, align 1
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i11) #7
  %58 = ptrtoint ptr %mm2.i11 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %mm2.i11, align 1, !annotation !75
  %59 = getelementptr inbounds [2 x i8], ptr %mm2.i11, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %59, align 1, !annotation !75
  %61 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i9) #7
  %63 = getelementptr inbounds i8, ptr %msgs.i.i9, i32 4
  %64 = call ptr @memset(ptr %63, i32 255, i32 16)
  %conv.i.i14 = zext i8 %50 to i16
  %65 = ptrtoint ptr %msgs.i.i9 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i.i14, ptr %msgs.i.i9, align 4
  %flags.i.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i9, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i.i15 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i.i15, align 2
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 4, ptr %63, align 4
  %buf.i.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i9, i32 0, i32 3
  %68 = ptrtoint ptr %buf.i.i16 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %mm1.i10, ptr %buf.i.i16, align 4
  %arrayinit.element.i.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i9, i32 1
  %69 = ptrtoint ptr %arrayinit.element.i.i17 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i.i14, ptr %arrayinit.element.i.i17, align 4
  %flags5.i.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i9, i32 1, i32 1
  %70 = ptrtoint ptr %flags5.i.i18 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %flags5.i.i18, align 2
  %len6.i.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i9, i32 1, i32 2
  %71 = ptrtoint ptr %len6.i.i19 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 2, ptr %len6.i.i19, align 4
  %buf8.i.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i9, i32 1, i32 3
  %72 = ptrtoint ptr %buf8.i.i20 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %mm2.i11, ptr %buf8.i.i20, align 4
  %call.i.i21 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msgs.i.i9, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i21)
  %cmp.not.i.not.i22 = icmp eq i32 %call.i.i21, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i9) #7
  br i1 %cmp.not.i.not.i22, label %Read16.exit33, label %Read16.exit33.thread

Read16.exit33.thread:                             ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i10) #7
  br label %do.end

Read16.exit33:                                    ; preds = %if.end46
  %73 = ptrtoint ptr %mm2.i11 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %mm2.i11, align 1
  %75 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %59, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i10) #7
  %77 = and i8 %74, -9
  %78 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i35) #7
  %80 = getelementptr inbounds [6 x i8], ptr %mm.i35, i32 0, i32 1
  %81 = getelementptr inbounds [6 x i8], ptr %mm.i35, i32 0, i32 2
  %82 = getelementptr inbounds [6 x i8], ptr %mm.i35, i32 0, i32 3
  %83 = getelementptr inbounds [6 x i8], ptr %mm.i35, i32 0, i32 4
  %84 = getelementptr inbounds [6 x i8], ptr %mm.i35, i32 0, i32 5
  %85 = ptrtoint ptr %mm.i35 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 17, ptr %mm.i35, align 1
  %86 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -62, ptr %80, align 1
  %87 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %81, align 1
  %88 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %82, align 1
  %89 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %77, ptr %83, align 1
  %90 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %76, ptr %84, align 1
  %91 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i34) #7
  %93 = getelementptr inbounds i8, ptr %msg.i.i34, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 458751, ptr %93, align 4
  %conv.i.i40 = zext i8 %79 to i16
  %95 = ptrtoint ptr %msg.i.i34 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv.i.i40, ptr %msg.i.i34, align 4
  %flags.i.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i34, i32 0, i32 1
  %96 = ptrtoint ptr %flags.i.i41 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags.i.i41, align 2
  %buf.i.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i34, i32 0, i32 3
  %97 = ptrtoint ptr %buf.i.i42 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %mm.i35, ptr %buf.i.i42, align 4
  %call.i.i43 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %msg.i.i34, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i43)
  %cmp.not.i.not.i44.not = icmp eq i32 %call.i.i43, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i34) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i35) #7
  br i1 %cmp.not.i.not.i44.not, label %if.end62, label %Read16.exit33.do.end_crit_edge

Read16.exit33.do.end_crit_edge:                   ; preds = %Read16.exit33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end62:                                         ; preds = %Read16.exit33
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i47) #7
  %100 = getelementptr inbounds [6 x i8], ptr %mm.i47, i32 0, i32 1
  %101 = getelementptr inbounds [6 x i8], ptr %mm.i47, i32 0, i32 2
  %102 = getelementptr inbounds [6 x i8], ptr %mm.i47, i32 0, i32 3
  %103 = getelementptr inbounds [6 x i8], ptr %mm.i47, i32 0, i32 4
  %104 = getelementptr inbounds [6 x i8], ptr %mm.i47, i32 0, i32 5
  %105 = ptrtoint ptr %mm.i47 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 18, ptr %mm.i47, align 1
  %106 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -62, ptr %100, align 1
  %107 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %101, align 1
  %108 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %102, align 1
  %109 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %103, align 1
  %110 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %104, align 1
  %111 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i46) #7
  %113 = getelementptr inbounds i8, ptr %msg.i.i46, i32 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 458751, ptr %113, align 4
  %conv.i.i50 = zext i8 %99 to i16
  %115 = ptrtoint ptr %msg.i.i46 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv.i.i50, ptr %msg.i.i46, align 4
  %flags.i.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i46, i32 0, i32 1
  %116 = ptrtoint ptr %flags.i.i51 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %flags.i.i51, align 2
  %buf.i.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i46, i32 0, i32 3
  %117 = ptrtoint ptr %buf.i.i52 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %mm.i47, ptr %buf.i.i52, align 4
  %call.i.i53 = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %msg.i.i46, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i53)
  %cmp.not.i.not.i54 = icmp ne i32 %call.i.i53, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i46) #7
  %..i55 = sext i1 %cmp.not.i.not.i54 to i32
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i47) #7
  br label %do.end

do.end:                                           ; preds = %if.end62, %Read16.exit33.do.end_crit_edge, %Read16.exit33.thread, %Read16.exit.do.end_crit_edge, %Read16.exit.thread
  %status.0 = phi i32 [ -1, %Read16.exit.do.end_crit_edge ], [ -1, %Read16.exit33.do.end_crit_edge ], [ %..i55, %if.end62 ], [ -1, %Read16.exit.thread ], [ -1, %Read16.exit33.thread ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @InitCE(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %msg.i.i93 = alloca %struct.i2c_msg, align 4
  %mm.i94 = alloca [6 x i8], align 1
  %msg.i.i83 = alloca %struct.i2c_msg, align 4
  %mm.i84 = alloca [6 x i8], align 1
  %msg.i.i73 = alloca %struct.i2c_msg, align 4
  %mm.i74 = alloca [6 x i8], align 1
  %msg.i.i63 = alloca %struct.i2c_msg, align 4
  %mm.i64 = alloca [6 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %mm.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %app_env_default = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 60
  %0 = ptrtoint ptr %app_env_default to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %app_env_default, align 4
  %m_InitCE = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 42
  %2 = ptrtoint ptr %m_InitCE to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m_InitCE, align 4
  %call = tail call fastcc i32 @WriteTable(ptr noundef %state, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end:                                           ; preds = %entry
  %operation_mode = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 25
  %4 = ptrtoint ptr %operation_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %operation_mode, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %app_env_diversity = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 61
  %6 = ptrtoint ptr %app_env_diversity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %app_env_diversity, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %AppEnv.0 = phi i32 [ %7, %if.then4 ], [ %1, %if.end.if.end5_crit_edge ]
  %8 = zext i32 %AppEnv.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %AppEnv.0, label %if.end5.if.end38_crit_edge [
    i32 0, label %if.then7
    i32 1, label %if.then13
    i32 2, label %land.lhs.true
  ]

if.end5.if.end38_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then7:                                         ; preds = %if.end5
  %demod_address.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %9 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i) #7
  %11 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 1
  %12 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 2
  %13 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 3
  %14 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 4
  %15 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 5
  %16 = ptrtoint ptr %mm.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 17, ptr %mm.i, align 1
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -127, ptr %11, align 1
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %12, align 1
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %13, align 1
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %14, align 1
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %15, align 1
  %i2c.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %22 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %24 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 458751, ptr %24, align 4
  %conv.i.i = zext i8 %10 to i16
  %26 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %mm.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.not.i.not = icmp eq i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i) #7
  br i1 %cmp.not.i.not.i.not, label %if.then7.if.end38_crit_edge, label %if.then7.do.end_crit_edge

if.then7.do.end_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then7.if.end38_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then13:                                        ; preds = %if.end5
  %demod_address.i65 = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %29 = ptrtoint ptr %demod_address.i65 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %demod_address.i65, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i64) #7
  %31 = getelementptr inbounds [6 x i8], ptr %mm.i64, i32 0, i32 1
  %32 = getelementptr inbounds [6 x i8], ptr %mm.i64, i32 0, i32 2
  %33 = getelementptr inbounds [6 x i8], ptr %mm.i64, i32 0, i32 3
  %34 = getelementptr inbounds [6 x i8], ptr %mm.i64, i32 0, i32 4
  %35 = getelementptr inbounds [6 x i8], ptr %mm.i64, i32 0, i32 5
  %36 = ptrtoint ptr %mm.i64 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 17, ptr %mm.i64, align 1
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -127, ptr %31, align 1
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %32, align 1
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %33, align 1
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %34, align 1
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %35, align 1
  %i2c.i66 = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %42 = ptrtoint ptr %i2c.i66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c.i66, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i63) #7
  %44 = getelementptr inbounds i8, ptr %msg.i.i63, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 458751, ptr %44, align 4
  %conv.i.i67 = zext i8 %30 to i16
  %46 = ptrtoint ptr %msg.i.i63 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i.i67, ptr %msg.i.i63, align 4
  %flags.i.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i63, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i.i68 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i.i68, align 2
  %buf.i.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i63, i32 0, i32 3
  %48 = ptrtoint ptr %buf.i.i69 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %mm.i64, ptr %buf.i.i69, align 4
  %call.i.i70 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i.i63, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i70)
  %cmp.not.i.not.i71.not = icmp eq i32 %call.i.i70, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i63) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i64) #7
  br i1 %cmp.not.i.not.i71.not, label %if.then13.if.end38_crit_edge, label %if.then13.do.end_crit_edge

if.then13.do.end_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then13.if.end38_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end5
  %type_A = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 56
  %49 = ptrtoint ptr %type_A to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type_A, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not = icmp eq i32 %50, 0
  %demod_address.i85 = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %51 = ptrtoint ptr %demod_address.i85 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %demod_address.i85, align 1
  br i1 %tobool.not, label %if.then30, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i74) #7
  %53 = getelementptr inbounds [6 x i8], ptr %mm.i74, i32 0, i32 1
  %54 = getelementptr inbounds [6 x i8], ptr %mm.i74, i32 0, i32 2
  %55 = getelementptr inbounds [6 x i8], ptr %mm.i74, i32 0, i32 3
  %56 = getelementptr inbounds [6 x i8], ptr %mm.i74, i32 0, i32 4
  %57 = getelementptr inbounds [6 x i8], ptr %mm.i74, i32 0, i32 5
  %58 = ptrtoint ptr %mm.i74 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 17, ptr %mm.i74, align 1
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -127, ptr %53, align 1
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %54, align 1
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %55, align 1
  %62 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 2, ptr %56, align 1
  %63 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %57, align 1
  %i2c.i76 = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %64 = ptrtoint ptr %i2c.i76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c.i76, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i73) #7
  %66 = getelementptr inbounds i8, ptr %msg.i.i73, i32 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 458751, ptr %66, align 4
  %conv.i.i77 = zext i8 %52 to i16
  %68 = ptrtoint ptr %msg.i.i73 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i.i77, ptr %msg.i.i73, align 4
  %flags.i.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i73, i32 0, i32 1
  %69 = ptrtoint ptr %flags.i.i78 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags.i.i78, align 2
  %buf.i.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i73, i32 0, i32 3
  %70 = ptrtoint ptr %buf.i.i79 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %mm.i74, ptr %buf.i.i79, align 4
  %call.i.i80 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i.i73, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i80)
  %cmp.not.i.not.i81.not = icmp eq i32 %call.i.i80, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i73) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i74) #7
  br i1 %cmp.not.i.not.i81.not, label %if.then20.if.end38_crit_edge, label %if.then20.do.end_crit_edge

if.then20.do.end_crit_edge:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then20.if.end38_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then30:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i84) #7
  %71 = getelementptr inbounds [6 x i8], ptr %mm.i84, i32 0, i32 1
  %72 = getelementptr inbounds [6 x i8], ptr %mm.i84, i32 0, i32 2
  %73 = getelementptr inbounds [6 x i8], ptr %mm.i84, i32 0, i32 3
  %74 = getelementptr inbounds [6 x i8], ptr %mm.i84, i32 0, i32 4
  %75 = getelementptr inbounds [6 x i8], ptr %mm.i84, i32 0, i32 5
  %76 = ptrtoint ptr %mm.i84 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 17, ptr %mm.i84, align 1
  %77 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -127, ptr %71, align 1
  %78 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %72, align 1
  %79 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %73, align 1
  %80 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 6, ptr %74, align 1
  %81 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %75, align 1
  %i2c.i86 = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %82 = ptrtoint ptr %i2c.i86 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i2c.i86, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i83) #7
  %84 = getelementptr inbounds i8, ptr %msg.i.i83, i32 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 458751, ptr %84, align 4
  %conv.i.i87 = zext i8 %52 to i16
  %86 = ptrtoint ptr %msg.i.i83 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i.i87, ptr %msg.i.i83, align 4
  %flags.i.i88 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i83, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i.i88 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i.i88, align 2
  %buf.i.i89 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i83, i32 0, i32 3
  %88 = ptrtoint ptr %buf.i.i89 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %mm.i84, ptr %buf.i.i89, align 4
  %call.i.i90 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msg.i.i83, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i90)
  %cmp.not.i.not.i91.not = icmp eq i32 %call.i.i90, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i83) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i84) #7
  br i1 %cmp.not.i.not.i91.not, label %if.then30.if.end38_crit_edge, label %if.then30.do.end_crit_edge

if.then30.do.end_crit_edge:                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then30.if.end38_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end38:                                         ; preds = %if.then30.if.end38_crit_edge, %if.then20.if.end38_crit_edge, %if.then13.if.end38_crit_edge, %if.then7.if.end38_crit_edge, %if.end5.if.end38_crit_edge
  %demod_address.i95 = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %89 = ptrtoint ptr %demod_address.i95 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %demod_address.i95, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i94) #7
  %91 = getelementptr inbounds [6 x i8], ptr %mm.i94, i32 0, i32 1
  %92 = getelementptr inbounds [6 x i8], ptr %mm.i94, i32 0, i32 2
  %93 = getelementptr inbounds [6 x i8], ptr %mm.i94, i32 0, i32 3
  %94 = getelementptr inbounds [6 x i8], ptr %mm.i94, i32 0, i32 4
  %95 = getelementptr inbounds [6 x i8], ptr %mm.i94, i32 0, i32 5
  %96 = ptrtoint ptr %mm.i94 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %mm.i94, align 1
  %97 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -127, ptr %91, align 1
  %98 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %92, align 1
  %99 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %93, align 1
  %100 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %94, align 1
  %101 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %95, align 1
  %i2c.i96 = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %102 = ptrtoint ptr %i2c.i96 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %i2c.i96, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i93) #7
  %104 = getelementptr inbounds i8, ptr %msg.i.i93, i32 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 458751, ptr %104, align 4
  %conv.i.i97 = zext i8 %90 to i16
  %106 = ptrtoint ptr %msg.i.i93 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i.i97, ptr %msg.i.i93, align 4
  %flags.i.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i93, i32 0, i32 1
  %107 = ptrtoint ptr %flags.i.i98 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %flags.i.i98, align 2
  %buf.i.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i93, i32 0, i32 3
  %108 = ptrtoint ptr %buf.i.i99 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %mm.i94, ptr %buf.i.i99, align 4
  %call.i.i100 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %msg.i.i93, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i100)
  %cmp.not.i.not.i101 = icmp ne i32 %call.i.i100, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i93) #7
  %..i102 = sext i1 %cmp.not.i.not.i101 to i32
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i94) #7
  br label %do.end

do.end:                                           ; preds = %if.end38, %if.then30.do.end_crit_edge, %if.then20.do.end_crit_edge, %if.then13.do.end_crit_edge, %if.then7.do.end_crit_edge, %entry.do.end_crit_edge
  %status.0 = phi i32 [ -1, %entry.do.end_crit_edge ], [ -1, %if.then7.do.end_crit_edge ], [ %..i102, %if.end38 ], [ -1, %if.then13.do.end_crit_edge ], [ -1, %if.then20.do.end_crit_edge ], [ -1, %if.then30.do.end_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @SetCfgIfAgc(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %cfg) unnamed_addr #0 align 64 {
entry:
  %msgs.i.i262 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i263 = alloca [4 x i8], align 1
  %mm2.i264 = alloca [2 x i8], align 1
  %msg.i.i250 = alloca %struct.i2c_msg, align 4
  %mm.i251 = alloca [6 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %mm.i = alloca [6 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i = alloca [4 x i8], align 1
  %mm2.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %outputLevel = getelementptr inbounds %struct.SCfgAgc, ptr %cfg, i32 0, i32 1
  %0 = ptrtoint ptr %outputLevel to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %outputLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %1)
  %cmp = icmp ugt i16 %1, 1023
  br i1 %cmp, label %entry.cleanup183_crit_edge, label %if.end

entry.cleanup183_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %3, label %if.end.cleanup183_crit_edge [
    i32 1, label %do.body
    i32 0, label %if.then31
  ]

if.end.cleanup183_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

do.body:                                          ; preds = %if.end
  %demod_address.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %5 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i) #7
  %7 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 1
  %8 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 2
  %9 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 3
  %10 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 16, ptr %mm1.i, align 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -62, ptr %7, align 1
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %8, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i) #7
  %14 = ptrtoint ptr %mm2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %mm2.i, align 1, !annotation !75
  %15 = getelementptr inbounds [2 x i8], ptr %mm2.i, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %15, align 1, !annotation !75
  %i2c.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %17 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %19 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %20 = call ptr @memset(ptr %19, i32 255, i32 16)
  %conv.i.i = zext i8 %6 to i16
  %21 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i.i, align 2
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 4, ptr %19, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %mm1.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %25 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %26 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %27 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2, ptr %len6.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %28 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %mm2.i, ptr %buf8.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br i1 %cmp.not.i.not.i, label %Read16.exit, label %Read16.exit.thread

Read16.exit.thread:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  br label %cleanup183

Read16.exit:                                      ; preds = %do.body
  %29 = ptrtoint ptr %mm2.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mm2.i, align 1
  %31 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %15, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  %33 = and i8 %30, -17
  %34 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i) #7
  %36 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 1
  %37 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 2
  %38 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 3
  %39 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 4
  %40 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 5
  %41 = ptrtoint ptr %mm.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 16, ptr %mm.i, align 1
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -62, ptr %36, align 1
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %37, align 1
  %44 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %38, align 1
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %33, ptr %39, align 1
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %32, ptr %40, align 1
  %47 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %49 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 458751, ptr %49, align 4
  %conv.i.i245 = zext i8 %35 to i16
  %51 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i.i245, ptr %msg.i.i, align 4
  %flags.i.i246 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i.i246 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %flags.i.i246, align 2
  %buf.i.i247 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %buf.i.i247 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %mm.i, ptr %buf.i.i247, align 4
  %call.i.i248 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i248)
  %cmp.not.i.not.i249.not = icmp eq i32 %call.i.i248, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i) #7
  br i1 %cmp.not.i.not.i249.not, label %if.end17, label %Read16.exit.cleanup183_crit_edge

Read16.exit.cleanup183_crit_edge:                 ; preds = %Read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end17:                                         ; preds = %Read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %outputLevel to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %outputLevel, align 4
  %56 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i251) #7
  %58 = getelementptr inbounds [6 x i8], ptr %mm.i251, i32 0, i32 1
  %59 = getelementptr inbounds [6 x i8], ptr %mm.i251, i32 0, i32 2
  %60 = getelementptr inbounds [6 x i8], ptr %mm.i251, i32 0, i32 3
  %61 = getelementptr inbounds [6 x i8], ptr %mm.i251, i32 0, i32 4
  %62 = getelementptr inbounds [6 x i8], ptr %mm.i251, i32 0, i32 5
  %63 = ptrtoint ptr %mm.i251 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 48, ptr %mm.i251, align 1
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -62, ptr %58, align 1
  %65 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %59, align 1
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %60, align 1
  %conv15.i253 = trunc i16 %55 to i8
  %67 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv15.i253, ptr %61, align 1
  %68 = lshr i16 %55, 8
  %69 = trunc i16 %68 to i8
  %conv20.i254 = and i8 %69, 7
  %70 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv20.i254, ptr %62, align 1
  %71 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i250) #7
  %73 = getelementptr inbounds i8, ptr %msg.i.i250, i32 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 458751, ptr %73, align 4
  %conv.i.i256 = zext i8 %57 to i16
  %75 = ptrtoint ptr %msg.i.i250 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i.i256, ptr %msg.i.i250, align 4
  %flags.i.i257 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i250, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i.i257 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i.i257, align 2
  %buf.i.i258 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i250, i32 0, i32 3
  %77 = ptrtoint ptr %buf.i.i258 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %mm.i251, ptr %buf.i.i258, align 4
  %call.i.i259 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msg.i.i250, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i259)
  %cmp.not.i.not.i260.not = icmp ne i32 %call.i.i259, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i250) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i251) #7
  %. = sext i1 %cmp.not.i.not.i260.not to i32
  br label %cleanup183

if.then31:                                        ; preds = %if.end
  %maxOutputLevel = getelementptr inbounds %struct.SCfgAgc, ptr %cfg, i32 0, i32 4
  %78 = ptrtoint ptr %maxOutputLevel to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %maxOutputLevel, align 2
  %minOutputLevel = getelementptr inbounds %struct.SCfgAgc, ptr %cfg, i32 0, i32 3
  %80 = ptrtoint ptr %minOutputLevel to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %minOutputLevel, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %79, i16 %81)
  %cmp34 = icmp ult i16 %79, %81
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %79)
  %cmp38 = icmp ugt i16 %79, 1023
  %or.cond = or i1 %cmp38, %cmp34
  br i1 %or.cond, label %if.then31.cleanup183_crit_edge, label %lor.lhs.false40

if.then31.cleanup183_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

lor.lhs.false40:                                  ; preds = %if.then31
  %speed = getelementptr inbounds %struct.SCfgAgc, ptr %cfg, i32 0, i32 5
  %82 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %83)
  %cmp42 = icmp ugt i16 %83, 1023
  br i1 %cmp42, label %lor.lhs.false40.cleanup183_crit_edge, label %lor.lhs.false44

lor.lhs.false40.cleanup183_crit_edge:             ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

lor.lhs.false44:                                  ; preds = %lor.lhs.false40
  %settleLevel = getelementptr inbounds %struct.SCfgAgc, ptr %cfg, i32 0, i32 2
  %84 = ptrtoint ptr %settleLevel to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %settleLevel, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %85)
  %cmp46 = icmp ugt i16 %85, 1023
  br i1 %cmp46, label %lor.lhs.false44.cleanup183_crit_edge, label %do.body50

lor.lhs.false44.cleanup183_crit_edge:             ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

do.body50:                                        ; preds = %lor.lhs.false44
  %demod_address.i265 = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %86 = ptrtoint ptr %demod_address.i265 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %demod_address.i265, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i263) #7
  %88 = getelementptr inbounds [4 x i8], ptr %mm1.i263, i32 0, i32 1
  %89 = getelementptr inbounds [4 x i8], ptr %mm1.i263, i32 0, i32 2
  %90 = getelementptr inbounds [4 x i8], ptr %mm1.i263, i32 0, i32 3
  %91 = ptrtoint ptr %mm1.i263 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 16, ptr %mm1.i263, align 1
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 -62, ptr %88, align 1
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %89, align 1
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i264) #7
  %95 = ptrtoint ptr %mm2.i264 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -1, ptr %mm2.i264, align 1, !annotation !75
  %96 = getelementptr inbounds [2 x i8], ptr %mm2.i264, i32 0, i32 1
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -1, ptr %96, align 1, !annotation !75
  %i2c.i266 = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %98 = ptrtoint ptr %i2c.i266 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i2c.i266, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i262) #7
  %100 = getelementptr inbounds i8, ptr %msgs.i.i262, i32 4
  %101 = call ptr @memset(ptr %100, i32 255, i32 16)
  %conv.i.i267 = zext i8 %87 to i16
  %102 = ptrtoint ptr %msgs.i.i262 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv.i.i267, ptr %msgs.i.i262, align 4
  %flags.i.i268 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i262, i32 0, i32 1
  %103 = ptrtoint ptr %flags.i.i268 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 0, ptr %flags.i.i268, align 2
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 4, ptr %100, align 4
  %buf.i.i269 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i262, i32 0, i32 3
  %105 = ptrtoint ptr %buf.i.i269 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %mm1.i263, ptr %buf.i.i269, align 4
  %arrayinit.element.i.i270 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i262, i32 1
  %106 = ptrtoint ptr %arrayinit.element.i.i270 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i.i267, ptr %arrayinit.element.i.i270, align 4
  %flags5.i.i271 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i262, i32 1, i32 1
  %107 = ptrtoint ptr %flags5.i.i271 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 1, ptr %flags5.i.i271, align 2
  %len6.i.i272 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i262, i32 1, i32 2
  %108 = ptrtoint ptr %len6.i.i272 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 2, ptr %len6.i.i272, align 4
  %buf8.i.i273 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i262, i32 1, i32 3
  %109 = ptrtoint ptr %buf8.i.i273 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %mm2.i264, ptr %buf8.i.i273, align 4
  %call.i.i274 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msgs.i.i262, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i274)
  %cmp.not.i.not.i275 = icmp eq i32 %call.i.i274, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i262) #7
  br i1 %cmp.not.i.not.i275, label %Read16.exit286, label %Read16.exit286.thread

Read16.exit286.thread:                            ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i264) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i263) #7
  br label %cleanup183

Read16.exit286:                                   ; preds = %do.body50
  %110 = ptrtoint ptr %mm2.i264 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %mm2.i264, align 1
  %112 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %96, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i264) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i263) #7
  %conv17.i278 = zext i8 %113 to i16
  %shl.i279 = shl nuw i16 %conv17.i278, 8
  %114 = or i8 %111, 16
  %or18.i280 = zext i8 %114 to i16
  %115 = or i16 %shl.i279, %or18.i280
  %call63 = call fastcc i32 @Write16(ptr noundef %state, i32 noundef 12714000, i16 noundef zeroext %115, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %Read16.exit286.cleanup183_crit_edge, label %if.end67

Read16.exit286.cleanup183_crit_edge:              ; preds = %Read16.exit286
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end67:                                         ; preds = %Read16.exit286
  %116 = ptrtoint ptr %settleLevel to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %settleLevel, align 2
  %118 = lshr i16 %117, 1
  %119 = and i16 %118, 511
  %call72 = call fastcc i32 @Write16(ptr noundef %state, i32 noundef 12714021, i16 noundef zeroext %119, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.end67.cleanup183_crit_edge, label %if.end76

if.end67.cleanup183_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end76:                                         ; preds = %if.end67
  %120 = ptrtoint ptr %maxOutputLevel to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %maxOutputLevel, align 2
  %conv78 = zext i16 %121 to i32
  %122 = ptrtoint ptr %minOutputLevel to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %minOutputLevel, align 4
  %conv80 = zext i16 %123 to i32
  %sub = sub nsw i32 %conv78, %conv80
  %div = sdiv i32 %sub, 2
  %conv81 = trunc i32 %div to i16
  %call89 = call fastcc i32 @Write16(ptr noundef %state, i32 noundef 12714033, i16 noundef zeroext %conv81, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.end76.cleanup183_crit_edge, label %if.end93

if.end76.cleanup183_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end93:                                         ; preds = %if.end76
  %add = add nuw nsw i32 %conv80, %conv78
  %div86237 = lshr i32 %add, 1
  %124 = trunc i32 %div86237 to i16
  %conv88 = add i16 %124, -511
  %call94 = call fastcc i32 @Write16(ptr noundef %state, i32 noundef 12714034, i16 noundef zeroext %conv88, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95 = icmp slt i32 %call94, 0
  br i1 %cmp95, label %if.end93.cleanup183_crit_edge, label %if.end98

if.end93.cleanup183_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end98:                                         ; preds = %if.end93
  %125 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %speed, align 4
  %127 = udiv i16 %126, 113
  %128 = mul i16 %127, -113
  %conv107 = add i16 %128, %126
  call void @__sanitizer_cov_trace_const_cmp2(i16 1016, i16 %126)
  %cmp114 = icmp ugt i16 %126, 1016
  %add119 = add i16 %conv107, 113
  %sub123 = sub nsw i16 8, %127
  %fineSpeed.0 = select i1 %cmp114, i16 %add119, i16 %conv107
  %rurCount.0 = select i1 %cmp114, i16 0, i16 %sub123
  %129 = lshr i16 %fineSpeed.0, 3
  %div130238 = zext i16 %129 to i32
  %arrayidx = getelementptr [18 x i16], ptr @SetCfgIfAgc.fastIncrDecLUT, i32 0, i32 %div130238
  %130 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx, align 2
  %div134293 = udiv i16 %fineSpeed.0, 28
  %div134.zext = zext i16 %div134293 to i32
  %arrayidx135 = getelementptr [5 x i16], ptr @SetCfgIfAgc.slowIncrDecLUT, i32 0, i32 %div134.zext
  %132 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %arrayidx135, align 2
  %call136 = call fastcc i32 @Write16(ptr noundef %state, i32 noundef 12714020, i16 noundef zeroext %rurCount.0, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %if.end98.cleanup183_crit_edge, label %if.end140

if.end98.cleanup183_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end140:                                        ; preds = %if.end98
  %call141 = call fastcc i32 @Write16(ptr noundef %state, i32 noundef 12714029, i16 noundef zeroext %131, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %if.end140.cleanup183_crit_edge, label %if.end145

if.end140.cleanup183_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end145:                                        ; preds = %if.end140
  %call146 = call fastcc i32 @Write16(ptr noundef %state, i32 noundef 12714030, i16 noundef zeroext %131, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %if.end145.cleanup183_crit_edge, label %if.end150

if.end145.cleanup183_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end150:                                        ; preds = %if.end145
  %call151 = call fastcc i32 @Write16(ptr noundef %state, i32 noundef 12714027, i16 noundef zeroext %133, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %if.end150.cleanup183_crit_edge, label %if.end155

if.end150.cleanup183_crit_edge:                   ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup183

if.end155:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  %call156 = call fastcc i32 @Write16(ptr noundef %state, i32 noundef 12714028, i16 noundef zeroext %133, i8 noundef zeroext 0)
  %call156.lobit = ashr i32 %call156, 31
  br label %cleanup183

cleanup183:                                       ; preds = %if.end155, %if.end150.cleanup183_crit_edge, %if.end145.cleanup183_crit_edge, %if.end140.cleanup183_crit_edge, %if.end98.cleanup183_crit_edge, %if.end93.cleanup183_crit_edge, %if.end76.cleanup183_crit_edge, %if.end67.cleanup183_crit_edge, %Read16.exit286.cleanup183_crit_edge, %Read16.exit286.thread, %lor.lhs.false44.cleanup183_crit_edge, %lor.lhs.false40.cleanup183_crit_edge, %if.then31.cleanup183_crit_edge, %if.end17, %Read16.exit.cleanup183_crit_edge, %Read16.exit.thread, %if.end.cleanup183_crit_edge, %entry.cleanup183_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup183_crit_edge ], [ -1, %lor.lhs.false44.cleanup183_crit_edge ], [ -1, %lor.lhs.false40.cleanup183_crit_edge ], [ -1, %if.then31.cleanup183_crit_edge ], [ -1, %if.end.cleanup183_crit_edge ], [ -1, %Read16.exit.cleanup183_crit_edge ], [ %., %if.end17 ], [ -1, %Read16.exit.thread ], [ -1, %Read16.exit286.cleanup183_crit_edge ], [ -1, %if.end67.cleanup183_crit_edge ], [ -1, %if.end76.cleanup183_crit_edge ], [ -1, %if.end93.cleanup183_crit_edge ], [ -1, %if.end98.cleanup183_crit_edge ], [ -1, %if.end140.cleanup183_crit_edge ], [ -1, %if.end145.cleanup183_crit_edge ], [ -1, %if.end150.cleanup183_crit_edge ], [ %call156.lobit, %if.end155 ], [ -1, %Read16.exit286.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @SetCfgRfAgc(ptr noundef %state, ptr nocapture noundef readonly %cfg) unnamed_addr #0 align 64 {
entry:
  %msg.i.i461 = alloca %struct.i2c_msg, align 4
  %mm.i462 = alloca [6 x i8], align 1
  %msgs.i.i436 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i437 = alloca [4 x i8], align 1
  %mm2.i438 = alloca [2 x i8], align 1
  %msg.i.i424 = alloca %struct.i2c_msg, align 4
  %mm.i425 = alloca [6 x i8], align 1
  %msgs.i.i399 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i400 = alloca [4 x i8], align 1
  %mm2.i401 = alloca [2 x i8], align 1
  %msg.i.i387 = alloca %struct.i2c_msg, align 4
  %mm.i388 = alloca [6 x i8], align 1
  %msgs.i.i362 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i363 = alloca [4 x i8], align 1
  %mm2.i364 = alloca [2 x i8], align 1
  %msg.i.i350 = alloca %struct.i2c_msg, align 4
  %mm.i351 = alloca [6 x i8], align 1
  %msg.i.i338 = alloca %struct.i2c_msg, align 4
  %mm.i339 = alloca [6 x i8], align 1
  %msgs.i.i313 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i314 = alloca [4 x i8], align 1
  %mm2.i315 = alloca [2 x i8], align 1
  %msg.i.i301 = alloca %struct.i2c_msg, align 4
  %mm.i302 = alloca [6 x i8], align 1
  %msgs.i.i276 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i277 = alloca [4 x i8], align 1
  %mm2.i278 = alloca [2 x i8], align 1
  %msg.i.i264 = alloca %struct.i2c_msg, align 4
  %mm.i265 = alloca [6 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i = alloca [4 x i8], align 1
  %mm2.i = alloca [2 x i8], align 1
  %msg.i.i244 = alloca %struct.i2c_msg, align 4
  %mm.i245 = alloca [6 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %mm.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %outputLevel = getelementptr inbounds %struct.SCfgAgc, ptr %cfg, i32 0, i32 1
  %0 = ptrtoint ptr %outputLevel to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %outputLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %1)
  %cmp = icmp ugt i16 %1, 1023
  br i1 %cmp, label %entry.cleanup189_crit_edge, label %if.end

entry.cleanup189_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup189

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %3, label %if.else132 [
    i32 1, label %do.body
    i32 0, label %if.then65
  ]

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 1023, i16 %1)
  %cmp7 = icmp eq i16 %1, 1023
  %spec.select = select i1 %cmp7, i16 1024, i16 %1
  %demod_address.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %5 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i) #7
  %7 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 1
  %8 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 2
  %9 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 3
  %10 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 4
  %11 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 5
  %12 = ptrtoint ptr %mm.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 54, ptr %mm.i, align 1
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -62, ptr %7, align 1
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %8, align 1
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %9, align 1
  %conv15.i = trunc i16 %spec.select to i8
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv15.i, ptr %10, align 1
  %17 = lshr i16 %spec.select, 8
  %conv20.i = trunc i16 %17 to i8
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv20.i, ptr %11, align 1
  %i2c.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %19 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %21 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 458751, ptr %21, align 4
  %conv.i.i = zext i8 %6 to i16
  %23 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mm.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.not.i.not = icmp eq i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i) #7
  br i1 %cmp.not.i.not.i.not, label %if.end14, label %do.body.cleanup189_crit_edge

do.body.cleanup189_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup189

if.end14:                                         ; preds = %do.body
  %m_FeAgRegAgPwd = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 32
  %26 = ptrtoint ptr %m_FeAgRegAgPwd to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %m_FeAgRegAgPwd, align 2
  %28 = and i16 %27, -3
  store i16 %28, ptr %m_FeAgRegAgPwd, align 2
  %29 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i245) #7
  %31 = getelementptr inbounds [6 x i8], ptr %mm.i245, i32 0, i32 1
  %32 = getelementptr inbounds [6 x i8], ptr %mm.i245, i32 0, i32 2
  %33 = getelementptr inbounds [6 x i8], ptr %mm.i245, i32 0, i32 3
  %34 = getelementptr inbounds [6 x i8], ptr %mm.i245, i32 0, i32 4
  %35 = getelementptr inbounds [6 x i8], ptr %mm.i245, i32 0, i32 5
  %36 = ptrtoint ptr %mm.i245 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 21, ptr %mm.i245, align 1
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -62, ptr %31, align 1
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %32, align 1
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %33, align 1
  %conv15.i247 = trunc i16 %28 to i8
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv15.i247, ptr %34, align 1
  %41 = lshr i16 %27, 8
  %conv20.i248 = trunc i16 %41 to i8
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv20.i248, ptr %35, align 1
  %43 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i244) #7
  %45 = getelementptr inbounds i8, ptr %msg.i.i244, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 458751, ptr %45, align 4
  %conv.i.i250 = zext i8 %30 to i16
  %47 = ptrtoint ptr %msg.i.i244 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i.i250, ptr %msg.i.i244, align 4
  %flags.i.i251 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i244, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i.i251 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i.i251, align 2
  %buf.i.i252 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i244, i32 0, i32 3
  %49 = ptrtoint ptr %buf.i.i252 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %mm.i245, ptr %buf.i.i252, align 4
  %call.i.i253 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i.i244, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i253)
  %cmp.not.i.not.i254.not = icmp eq i32 %call.i.i253, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i244) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i245) #7
  br i1 %cmp.not.i.not.i254.not, label %if.end25, label %if.end14.cleanup189_crit_edge

if.end14.cleanup189_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup189

if.end25:                                         ; preds = %if.end14
  %50 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i) #7
  %52 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 1
  %53 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 2
  %54 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 3
  %55 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 16, ptr %mm1.i, align 1
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -62, ptr %52, align 1
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %53, align 1
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i) #7
  %59 = ptrtoint ptr %mm2.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -1, ptr %mm2.i, align 1, !annotation !75
  %60 = getelementptr inbounds [2 x i8], ptr %mm2.i, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -1, ptr %60, align 1, !annotation !75
  %62 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %64 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %65 = call ptr @memset(ptr %64, i32 255, i32 16)
  %conv.i.i258 = zext i8 %51 to i16
  %66 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i.i258, ptr %msgs.i.i, align 4
  %flags.i.i259 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i.i259 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %flags.i.i259, align 2
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 4, ptr %64, align 4
  %buf.i.i260 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %69 = ptrtoint ptr %buf.i.i260 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %mm1.i, ptr %buf.i.i260, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %70 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i.i258, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %71 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %72 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 2, ptr %len6.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %73 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %mm2.i, ptr %buf8.i.i, align 4
  %call.i.i261 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i261)
  %cmp.not.i.not.i262 = icmp eq i32 %call.i.i261, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br i1 %cmp.not.i.not.i262, label %Read16.exit, label %Read16.exit.thread

Read16.exit.thread:                               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  br label %cleanup189

Read16.exit:                                      ; preds = %if.end25
  %74 = ptrtoint ptr %mm2.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %mm2.i, align 1
  %76 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %60, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  %conv17.i = zext i8 %77 to i16
  %shl.i = shl nuw i16 %conv17.i, 8
  %conv15.i263 = zext i8 %75 to i16
  %or18.i = or i16 %shl.i, %conv15.i263
  %78 = and i16 %or18.i, -16417
  %79 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i265) #7
  %81 = getelementptr inbounds [6 x i8], ptr %mm.i265, i32 0, i32 1
  %82 = getelementptr inbounds [6 x i8], ptr %mm.i265, i32 0, i32 2
  %83 = getelementptr inbounds [6 x i8], ptr %mm.i265, i32 0, i32 3
  %84 = getelementptr inbounds [6 x i8], ptr %mm.i265, i32 0, i32 4
  %85 = getelementptr inbounds [6 x i8], ptr %mm.i265, i32 0, i32 5
  %86 = ptrtoint ptr %mm.i265 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 16, ptr %mm.i265, align 1
  %87 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -62, ptr %81, align 1
  %88 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %82, align 1
  %89 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %83, align 1
  %conv15.i267 = trunc i16 %78 to i8
  %90 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv15.i267, ptr %84, align 1
  %91 = lshr i16 %78, 8
  %conv20.i268 = trunc i16 %91 to i8
  %92 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv20.i268, ptr %85, align 1
  %93 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i264) #7
  %95 = getelementptr inbounds i8, ptr %msg.i.i264, i32 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 458751, ptr %95, align 4
  %conv.i.i270 = zext i8 %80 to i16
  %97 = ptrtoint ptr %msg.i.i264 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv.i.i270, ptr %msg.i.i264, align 4
  %flags.i.i271 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i264, i32 0, i32 1
  %98 = ptrtoint ptr %flags.i.i271 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %flags.i.i271, align 2
  %buf.i.i272 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i264, i32 0, i32 3
  %99 = ptrtoint ptr %buf.i.i272 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %mm.i265, ptr %buf.i.i272, align 4
  %call.i.i273 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %msg.i.i264, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i273)
  %cmp.not.i.not.i274.not = icmp eq i32 %call.i.i273, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i264) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i265) #7
  br i1 %cmp.not.i.not.i274.not, label %if.end41, label %Read16.exit.cleanup189_crit_edge

Read16.exit.cleanup189_crit_edge:                 ; preds = %Read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup189

if.end41:                                         ; preds = %Read16.exit
  %100 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i277) #7
  %102 = getelementptr inbounds [4 x i8], ptr %mm1.i277, i32 0, i32 1
  %103 = getelementptr inbounds [4 x i8], ptr %mm1.i277, i32 0, i32 2
  %104 = getelementptr inbounds [4 x i8], ptr %mm1.i277, i32 0, i32 3
  %105 = ptrtoint ptr %mm1.i277 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 19, ptr %mm1.i277, align 1
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -62, ptr %102, align 1
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %103, align 1
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %104, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i278) #7
  %109 = ptrtoint ptr %mm2.i278 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -1, ptr %mm2.i278, align 1, !annotation !75
  %110 = getelementptr inbounds [2 x i8], ptr %mm2.i278, i32 0, i32 1
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -1, ptr %110, align 1, !annotation !75
  %112 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i276) #7
  %114 = getelementptr inbounds i8, ptr %msgs.i.i276, i32 4
  %115 = call ptr @memset(ptr %114, i32 255, i32 16)
  %conv.i.i281 = zext i8 %101 to i16
  %116 = ptrtoint ptr %msgs.i.i276 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv.i.i281, ptr %msgs.i.i276, align 4
  %flags.i.i282 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i276, i32 0, i32 1
  %117 = ptrtoint ptr %flags.i.i282 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %flags.i.i282, align 2
  %118 = ptrtoint ptr %114 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 4, ptr %114, align 4
  %buf.i.i283 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i276, i32 0, i32 3
  %119 = ptrtoint ptr %buf.i.i283 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %mm1.i277, ptr %buf.i.i283, align 4
  %arrayinit.element.i.i284 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i276, i32 1
  %120 = ptrtoint ptr %arrayinit.element.i.i284 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv.i.i281, ptr %arrayinit.element.i.i284, align 4
  %flags5.i.i285 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i276, i32 1, i32 1
  %121 = ptrtoint ptr %flags5.i.i285 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 1, ptr %flags5.i.i285, align 2
  %len6.i.i286 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i276, i32 1, i32 2
  %122 = ptrtoint ptr %len6.i.i286 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 2, ptr %len6.i.i286, align 4
  %buf8.i.i287 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i276, i32 1, i32 3
  %123 = ptrtoint ptr %buf8.i.i287 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %mm2.i278, ptr %buf8.i.i287, align 4
  %call.i.i288 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %msgs.i.i276, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i288)
  %cmp.not.i.not.i289 = icmp eq i32 %call.i.i288, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i276) #7
  br i1 %cmp.not.i.not.i289, label %Read16.exit300, label %Read16.exit300.thread

Read16.exit300.thread:                            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i278) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i277) #7
  br label %cleanup189

Read16.exit300:                                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %mm2.i278 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %mm2.i278, align 1
  %126 = ptrtoint ptr %110 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %110, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i278) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i277) #7
  %conv17.i292 = zext i8 %127 to i16
  %shl.i293 = shl nuw i16 %conv17.i292, 8
  %128 = and i8 %125, -3
  %conv15.i291.masked = zext i8 %128 to i16
  %129 = or i16 %shl.i293, %conv15.i291.masked
  %call53 = call fastcc i32 @Write16(ptr noundef %state, i32 noundef 12714003, i16 noundef zeroext %129, i8 noundef zeroext 0)
  %call53.lobit = ashr i32 %call53, 31
  br label %cleanup189

if.then65:                                        ; preds = %if.end
  %m_FeAgRegAgPwd69 = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 32
  %130 = ptrtoint ptr %m_FeAgRegAgPwd69 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %m_FeAgRegAgPwd69, align 2
  %132 = and i16 %131, -3
  store i16 %132, ptr %m_FeAgRegAgPwd69, align 2
  %demod_address.i303 = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %133 = ptrtoint ptr %demod_address.i303 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %demod_address.i303, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i302) #7
  %135 = getelementptr inbounds [6 x i8], ptr %mm.i302, i32 0, i32 1
  %136 = getelementptr inbounds [6 x i8], ptr %mm.i302, i32 0, i32 2
  %137 = getelementptr inbounds [6 x i8], ptr %mm.i302, i32 0, i32 3
  %138 = getelementptr inbounds [6 x i8], ptr %mm.i302, i32 0, i32 4
  %139 = getelementptr inbounds [6 x i8], ptr %mm.i302, i32 0, i32 5
  %140 = ptrtoint ptr %mm.i302 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 21, ptr %mm.i302, align 1
  %141 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -62, ptr %135, align 1
  %142 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %136, align 1
  %143 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %137, align 1
  %conv15.i304 = trunc i16 %132 to i8
  %144 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %conv15.i304, ptr %138, align 1
  %145 = lshr i16 %131, 8
  %conv20.i305 = trunc i16 %145 to i8
  %146 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv20.i305, ptr %139, align 1
  %i2c.i306 = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %147 = ptrtoint ptr %i2c.i306 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %i2c.i306, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i301) #7
  %149 = getelementptr inbounds i8, ptr %msg.i.i301, i32 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 458751, ptr %149, align 4
  %conv.i.i307 = zext i8 %134 to i16
  %151 = ptrtoint ptr %msg.i.i301 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv.i.i307, ptr %msg.i.i301, align 4
  %flags.i.i308 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i301, i32 0, i32 1
  %152 = ptrtoint ptr %flags.i.i308 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 0, ptr %flags.i.i308, align 2
  %buf.i.i309 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i301, i32 0, i32 3
  %153 = ptrtoint ptr %buf.i.i309 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %mm.i302, ptr %buf.i.i309, align 4
  %call.i.i310 = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %msg.i.i301, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i310)
  %cmp.not.i.not.i311.not = icmp eq i32 %call.i.i310, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i301) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i302) #7
  br i1 %cmp.not.i.not.i311.not, label %if.end82, label %if.then65.cleanup189_crit_edge

if.then65.cleanup189_crit_edge:                   ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup189

if.end82:                                         ; preds = %if.then65
  %154 = ptrtoint ptr %demod_address.i303 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %demod_address.i303, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i314) #7
  %156 = getelementptr inbounds [4 x i8], ptr %mm1.i314, i32 0, i32 1
  %157 = getelementptr inbounds [4 x i8], ptr %mm1.i314, i32 0, i32 2
  %158 = getelementptr inbounds [4 x i8], ptr %mm1.i314, i32 0, i32 3
  %159 = ptrtoint ptr %mm1.i314 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 16, ptr %mm1.i314, align 1
  %160 = ptrtoint ptr %156 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 -62, ptr %156, align 1
  %161 = ptrtoint ptr %157 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %157, align 1
  %162 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %158, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i315) #7
  %163 = ptrtoint ptr %mm2.i315 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 -1, ptr %mm2.i315, align 1, !annotation !75
  %164 = getelementptr inbounds [2 x i8], ptr %mm2.i315, i32 0, i32 1
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 -1, ptr %164, align 1, !annotation !75
  %166 = ptrtoint ptr %i2c.i306 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %i2c.i306, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i313) #7
  %168 = getelementptr inbounds i8, ptr %msgs.i.i313, i32 4
  %169 = call ptr @memset(ptr %168, i32 255, i32 16)
  %conv.i.i318 = zext i8 %155 to i16
  %170 = ptrtoint ptr %msgs.i.i313 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv.i.i318, ptr %msgs.i.i313, align 4
  %flags.i.i319 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i313, i32 0, i32 1
  %171 = ptrtoint ptr %flags.i.i319 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 0, ptr %flags.i.i319, align 2
  %172 = ptrtoint ptr %168 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 4, ptr %168, align 4
  %buf.i.i320 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i313, i32 0, i32 3
  %173 = ptrtoint ptr %buf.i.i320 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %mm1.i314, ptr %buf.i.i320, align 4
  %arrayinit.element.i.i321 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i313, i32 1
  %174 = ptrtoint ptr %arrayinit.element.i.i321 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv.i.i318, ptr %arrayinit.element.i.i321, align 4
  %flags5.i.i322 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i313, i32 1, i32 1
  %175 = ptrtoint ptr %flags5.i.i322 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 1, ptr %flags5.i.i322, align 2
  %len6.i.i323 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i313, i32 1, i32 2
  %176 = ptrtoint ptr %len6.i.i323 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 2, ptr %len6.i.i323, align 4
  %buf8.i.i324 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i313, i32 1, i32 3
  %177 = ptrtoint ptr %buf8.i.i324 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %mm2.i315, ptr %buf8.i.i324, align 4
  %call.i.i325 = call i32 @i2c_transfer(ptr noundef %167, ptr noundef nonnull %msgs.i.i313, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i325)
  %cmp.not.i.not.i326 = icmp eq i32 %call.i.i325, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i313) #7
  br i1 %cmp.not.i.not.i326, label %Read16.exit337, label %Read16.exit337.thread

Read16.exit337.thread:                            ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i315) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i314) #7
  br label %cleanup189

Read16.exit337:                                   ; preds = %if.end82
  %178 = ptrtoint ptr %mm2.i315 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %mm2.i315, align 1
  %180 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %164, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i315) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i314) #7
  %182 = and i8 %179, -33
  %183 = ptrtoint ptr %demod_address.i303 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %demod_address.i303, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i339) #7
  %185 = getelementptr inbounds [6 x i8], ptr %mm.i339, i32 0, i32 1
  %186 = getelementptr inbounds [6 x i8], ptr %mm.i339, i32 0, i32 2
  %187 = getelementptr inbounds [6 x i8], ptr %mm.i339, i32 0, i32 3
  %188 = getelementptr inbounds [6 x i8], ptr %mm.i339, i32 0, i32 4
  %189 = getelementptr inbounds [6 x i8], ptr %mm.i339, i32 0, i32 5
  %190 = ptrtoint ptr %mm.i339 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 16, ptr %mm.i339, align 1
  %191 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 -62, ptr %185, align 1
  %192 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 0, ptr %186, align 1
  %193 = ptrtoint ptr %187 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 0, ptr %187, align 1
  %194 = ptrtoint ptr %188 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %182, ptr %188, align 1
  %195 = or i8 %181, 64
  %196 = ptrtoint ptr %189 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %189, align 1
  %197 = ptrtoint ptr %i2c.i306 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %i2c.i306, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i338) #7
  %199 = getelementptr inbounds i8, ptr %msg.i.i338, i32 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 458751, ptr %199, align 4
  %conv.i.i344 = zext i8 %184 to i16
  %201 = ptrtoint ptr %msg.i.i338 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %conv.i.i344, ptr %msg.i.i338, align 4
  %flags.i.i345 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i338, i32 0, i32 1
  %202 = ptrtoint ptr %flags.i.i345 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 0, ptr %flags.i.i345, align 2
  %buf.i.i346 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i338, i32 0, i32 3
  %203 = ptrtoint ptr %buf.i.i346 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %mm.i339, ptr %buf.i.i346, align 4
  %call.i.i347 = call i32 @i2c_transfer(ptr noundef %198, ptr noundef nonnull %msg.i.i338, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i347)
  %cmp.not.i.not.i348.not = icmp eq i32 %call.i.i347, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i338) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i339) #7
  br i1 %cmp.not.i.not.i348.not, label %if.end98, label %Read16.exit337.cleanup189_crit_edge

Read16.exit337.cleanup189_crit_edge:              ; preds = %Read16.exit337
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup189

if.end98:                                         ; preds = %Read16.exit337
  %settleLevel = getelementptr inbounds %struct.SCfgAgc, ptr %cfg, i32 0, i32 2
  %204 = ptrtoint ptr %settleLevel to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %settleLevel, align 2
  %206 = lshr i16 %205, 4
  %207 = ptrtoint ptr %demod_address.i303 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %demod_address.i303, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i351) #7
  %209 = getelementptr inbounds [6 x i8], ptr %mm.i351, i32 0, i32 1
  %210 = getelementptr inbounds [6 x i8], ptr %mm.i351, i32 0, i32 2
  %211 = getelementptr inbounds [6 x i8], ptr %mm.i351, i32 0, i32 3
  %212 = getelementptr inbounds [6 x i8], ptr %mm.i351, i32 0, i32 4
  %213 = getelementptr inbounds [6 x i8], ptr %mm.i351, i32 0, i32 5
  %214 = ptrtoint ptr %mm.i351 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 81, ptr %mm.i351, align 1
  %215 = ptrtoint ptr %209 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 -62, ptr %209, align 1
  %216 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %210, align 1
  %217 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %211, align 1
  %218 = trunc i16 %206 to i8
  %conv15.i353 = and i8 %218, 63
  %219 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv15.i353, ptr %212, align 1
  %220 = ptrtoint ptr %213 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %213, align 1
  %221 = ptrtoint ptr %i2c.i306 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %i2c.i306, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i350) #7
  %223 = getelementptr inbounds i8, ptr %msg.i.i350, i32 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 458751, ptr %223, align 4
  %conv.i.i356 = zext i8 %208 to i16
  %225 = ptrtoint ptr %msg.i.i350 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 %conv.i.i356, ptr %msg.i.i350, align 4
  %flags.i.i357 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i350, i32 0, i32 1
  %226 = ptrtoint ptr %flags.i.i357 to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 0, ptr %flags.i.i357, align 2
  %buf.i.i358 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i350, i32 0, i32 3
  %227 = ptrtoint ptr %buf.i.i358 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %mm.i351, ptr %buf.i.i358, align 4
  %call.i.i359 = call i32 @i2c_transfer(ptr noundef %222, ptr noundef nonnull %msg.i.i350, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i359)
  %cmp.not.i.not.i360.not = icmp eq i32 %call.i.i359, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i350) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i351) #7
  br i1 %cmp.not.i.not.i360.not, label %if.end106, label %if.end98.cleanup189_crit_edge

if.end98.cleanup189_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup189

if.end106:                                        ; preds = %if.end98
  %228 = ptrtoint ptr %demod_address.i303 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %demod_address.i303, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i363) #7
  %230 = getelementptr inbounds [4 x i8], ptr %mm1.i363, i32 0, i32 1
  %231 = getelementptr inbounds [4 x i8], ptr %mm1.i363, i32 0, i32 2
  %232 = getelementptr inbounds [4 x i8], ptr %mm1.i363, i32 0, i32 3
  %233 = ptrtoint ptr %mm1.i363 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 19, ptr %mm1.i363, align 1
  %234 = ptrtoint ptr %230 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 -62, ptr %230, align 1
  %235 = ptrtoint ptr %231 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 0, ptr %231, align 1
  %236 = ptrtoint ptr %232 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 0, ptr %232, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i364) #7
  %237 = ptrtoint ptr %mm2.i364 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 -1, ptr %mm2.i364, align 1, !annotation !75
  %238 = getelementptr inbounds [2 x i8], ptr %mm2.i364, i32 0, i32 1
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 -1, ptr %238, align 1, !annotation !75
  %240 = ptrtoint ptr %i2c.i306 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %i2c.i306, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i362) #7
  %242 = getelementptr inbounds i8, ptr %msgs.i.i362, i32 4
  %243 = call ptr @memset(ptr %242, i32 255, i32 16)
  %conv.i.i367 = zext i8 %229 to i16
  %244 = ptrtoint ptr %msgs.i.i362 to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %conv.i.i367, ptr %msgs.i.i362, align 4
  %flags.i.i368 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i362, i32 0, i32 1
  %245 = ptrtoint ptr %flags.i.i368 to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 0, ptr %flags.i.i368, align 2
  %246 = ptrtoint ptr %242 to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 4, ptr %242, align 4
  %buf.i.i369 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i362, i32 0, i32 3
  %247 = ptrtoint ptr %buf.i.i369 to i32
  call void @__asan_store4_noabort(i32 %247)
  store ptr %mm1.i363, ptr %buf.i.i369, align 4
  %arrayinit.element.i.i370 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i362, i32 1
  %248 = ptrtoint ptr %arrayinit.element.i.i370 to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 %conv.i.i367, ptr %arrayinit.element.i.i370, align 4
  %flags5.i.i371 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i362, i32 1, i32 1
  %249 = ptrtoint ptr %flags5.i.i371 to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 1, ptr %flags5.i.i371, align 2
  %len6.i.i372 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i362, i32 1, i32 2
  %250 = ptrtoint ptr %len6.i.i372 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 2, ptr %len6.i.i372, align 4
  %buf8.i.i373 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i362, i32 1, i32 3
  %251 = ptrtoint ptr %buf8.i.i373 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %mm2.i364, ptr %buf8.i.i373, align 4
  %call.i.i374 = call i32 @i2c_transfer(ptr noundef %241, ptr noundef nonnull %msgs.i.i362, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i374)
  %cmp.not.i.not.i375 = icmp eq i32 %call.i.i374, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i362) #7
  br i1 %cmp.not.i.not.i375, label %Read16.exit386, label %Read16.exit386.thread

Read16.exit386.thread:                            ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i364) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i363) #7
  br label %cleanup189

Read16.exit386:                                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %252 = ptrtoint ptr %mm2.i364 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %mm2.i364, align 1
  %254 = ptrtoint ptr %238 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %238, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i364) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i363) #7
  %conv17.i378 = zext i8 %255 to i16
  %shl.i379 = shl nuw i16 %conv17.i378, 8
  %256 = and i8 %253, -3
  %conv15.i377.masked = zext i8 %256 to i16
  %257 = or i16 %shl.i379, %conv15.i377.masked
  %call119 = call fastcc i32 @Write16(ptr noundef %state, i32 noundef 12714003, i16 noundef zeroext %257, i8 noundef zeroext 0)
  %call119.lobit = ashr i32 %call119, 31
  br label %cleanup189

if.else132:                                       ; preds = %if.end
  %m_FeAgRegAgPwd135 = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 32
  %258 = ptrtoint ptr %m_FeAgRegAgPwd135 to i32
  call void @__asan_load2_noabort(i32 %258)
  %259 = load i16, ptr %m_FeAgRegAgPwd135, align 2
  %260 = or i16 %259, 2
  store i16 %260, ptr %m_FeAgRegAgPwd135, align 2
  %demod_address.i389 = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %261 = ptrtoint ptr %demod_address.i389 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %demod_address.i389, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i388) #7
  %263 = getelementptr inbounds [6 x i8], ptr %mm.i388, i32 0, i32 1
  %264 = getelementptr inbounds [6 x i8], ptr %mm.i388, i32 0, i32 2
  %265 = getelementptr inbounds [6 x i8], ptr %mm.i388, i32 0, i32 3
  %266 = getelementptr inbounds [6 x i8], ptr %mm.i388, i32 0, i32 4
  %267 = getelementptr inbounds [6 x i8], ptr %mm.i388, i32 0, i32 5
  %268 = ptrtoint ptr %mm.i388 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 21, ptr %mm.i388, align 1
  %269 = ptrtoint ptr %263 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 -62, ptr %263, align 1
  %270 = ptrtoint ptr %264 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 0, ptr %264, align 1
  %271 = ptrtoint ptr %265 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 0, ptr %265, align 1
  %conv15.i390 = trunc i16 %260 to i8
  %272 = ptrtoint ptr %266 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %conv15.i390, ptr %266, align 1
  %273 = lshr i16 %259, 8
  %conv20.i391 = trunc i16 %273 to i8
  %274 = ptrtoint ptr %267 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %conv20.i391, ptr %267, align 1
  %i2c.i392 = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %275 = ptrtoint ptr %i2c.i392 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %i2c.i392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i387) #7
  %277 = getelementptr inbounds i8, ptr %msg.i.i387, i32 4
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 458751, ptr %277, align 4
  %conv.i.i393 = zext i8 %262 to i16
  %279 = ptrtoint ptr %msg.i.i387 to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 %conv.i.i393, ptr %msg.i.i387, align 4
  %flags.i.i394 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i387, i32 0, i32 1
  %280 = ptrtoint ptr %flags.i.i394 to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 0, ptr %flags.i.i394, align 2
  %buf.i.i395 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i387, i32 0, i32 3
  %281 = ptrtoint ptr %buf.i.i395 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %mm.i388, ptr %buf.i.i395, align 4
  %call.i.i396 = call i32 @i2c_transfer(ptr noundef %276, ptr noundef nonnull %msg.i.i387, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i396)
  %cmp.not.i.not.i397.not = icmp eq i32 %call.i.i396, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i387) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i388) #7
  br i1 %cmp.not.i.not.i397.not, label %if.end148, label %if.else132.cleanup189_crit_edge

if.else132.cleanup189_crit_edge:                  ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup189

if.end148:                                        ; preds = %if.else132
  %282 = ptrtoint ptr %demod_address.i389 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %demod_address.i389, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i400) #7
  %284 = getelementptr inbounds [4 x i8], ptr %mm1.i400, i32 0, i32 1
  %285 = getelementptr inbounds [4 x i8], ptr %mm1.i400, i32 0, i32 2
  %286 = getelementptr inbounds [4 x i8], ptr %mm1.i400, i32 0, i32 3
  %287 = ptrtoint ptr %mm1.i400 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 16, ptr %mm1.i400, align 1
  %288 = ptrtoint ptr %284 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 -62, ptr %284, align 1
  %289 = ptrtoint ptr %285 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 0, ptr %285, align 1
  %290 = ptrtoint ptr %286 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 0, ptr %286, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i401) #7
  %291 = ptrtoint ptr %mm2.i401 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 -1, ptr %mm2.i401, align 1, !annotation !75
  %292 = getelementptr inbounds [2 x i8], ptr %mm2.i401, i32 0, i32 1
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 -1, ptr %292, align 1, !annotation !75
  %294 = ptrtoint ptr %i2c.i392 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %i2c.i392, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i399) #7
  %296 = getelementptr inbounds i8, ptr %msgs.i.i399, i32 4
  %297 = call ptr @memset(ptr %296, i32 255, i32 16)
  %conv.i.i404 = zext i8 %283 to i16
  %298 = ptrtoint ptr %msgs.i.i399 to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %conv.i.i404, ptr %msgs.i.i399, align 4
  %flags.i.i405 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i399, i32 0, i32 1
  %299 = ptrtoint ptr %flags.i.i405 to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 0, ptr %flags.i.i405, align 2
  %300 = ptrtoint ptr %296 to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 4, ptr %296, align 4
  %buf.i.i406 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i399, i32 0, i32 3
  %301 = ptrtoint ptr %buf.i.i406 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %mm1.i400, ptr %buf.i.i406, align 4
  %arrayinit.element.i.i407 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i399, i32 1
  %302 = ptrtoint ptr %arrayinit.element.i.i407 to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 %conv.i.i404, ptr %arrayinit.element.i.i407, align 4
  %flags5.i.i408 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i399, i32 1, i32 1
  %303 = ptrtoint ptr %flags5.i.i408 to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 1, ptr %flags5.i.i408, align 2
  %len6.i.i409 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i399, i32 1, i32 2
  %304 = ptrtoint ptr %len6.i.i409 to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 2, ptr %len6.i.i409, align 4
  %buf8.i.i410 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i399, i32 1, i32 3
  %305 = ptrtoint ptr %buf8.i.i410 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %mm2.i401, ptr %buf8.i.i410, align 4
  %call.i.i411 = call i32 @i2c_transfer(ptr noundef %295, ptr noundef nonnull %msgs.i.i399, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i411)
  %cmp.not.i.not.i412 = icmp eq i32 %call.i.i411, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i399) #7
  br i1 %cmp.not.i.not.i412, label %Read16.exit423, label %Read16.exit423.thread

Read16.exit423.thread:                            ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i401) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i400) #7
  br label %cleanup189

Read16.exit423:                                   ; preds = %if.end148
  %306 = ptrtoint ptr %mm2.i401 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %mm2.i401, align 1
  %308 = ptrtoint ptr %292 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %292, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i401) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i400) #7
  %conv17.i415 = zext i8 %309 to i16
  %shl.i416 = shl nuw i16 %conv17.i415, 8
  %conv15.i414 = zext i8 %307 to i16
  %or18.i417 = or i16 %shl.i416, %conv15.i414
  %310 = and i16 %or18.i417, -16417
  %311 = ptrtoint ptr %demod_address.i389 to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %demod_address.i389, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i425) #7
  %313 = getelementptr inbounds [6 x i8], ptr %mm.i425, i32 0, i32 1
  %314 = getelementptr inbounds [6 x i8], ptr %mm.i425, i32 0, i32 2
  %315 = getelementptr inbounds [6 x i8], ptr %mm.i425, i32 0, i32 3
  %316 = getelementptr inbounds [6 x i8], ptr %mm.i425, i32 0, i32 4
  %317 = getelementptr inbounds [6 x i8], ptr %mm.i425, i32 0, i32 5
  %318 = ptrtoint ptr %mm.i425 to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 16, ptr %mm.i425, align 1
  %319 = ptrtoint ptr %313 to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 -62, ptr %313, align 1
  %320 = ptrtoint ptr %314 to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 0, ptr %314, align 1
  %321 = ptrtoint ptr %315 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 0, ptr %315, align 1
  %conv15.i427 = trunc i16 %310 to i8
  %322 = ptrtoint ptr %316 to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 %conv15.i427, ptr %316, align 1
  %323 = lshr i16 %310, 8
  %conv20.i428 = trunc i16 %323 to i8
  %324 = ptrtoint ptr %317 to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 %conv20.i428, ptr %317, align 1
  %325 = ptrtoint ptr %i2c.i392 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %i2c.i392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i424) #7
  %327 = getelementptr inbounds i8, ptr %msg.i.i424, i32 4
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 458751, ptr %327, align 4
  %conv.i.i430 = zext i8 %312 to i16
  %329 = ptrtoint ptr %msg.i.i424 to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 %conv.i.i430, ptr %msg.i.i424, align 4
  %flags.i.i431 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i424, i32 0, i32 1
  %330 = ptrtoint ptr %flags.i.i431 to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 0, ptr %flags.i.i431, align 2
  %buf.i.i432 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i424, i32 0, i32 3
  %331 = ptrtoint ptr %buf.i.i432 to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr %mm.i425, ptr %buf.i.i432, align 4
  %call.i.i433 = call i32 @i2c_transfer(ptr noundef %326, ptr noundef nonnull %msg.i.i424, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i433)
  %cmp.not.i.not.i434.not = icmp eq i32 %call.i.i433, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i424) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i425) #7
  br i1 %cmp.not.i.not.i434.not, label %if.end164, label %Read16.exit423.cleanup189_crit_edge

Read16.exit423.cleanup189_crit_edge:              ; preds = %Read16.exit423
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup189

if.end164:                                        ; preds = %Read16.exit423
  %332 = ptrtoint ptr %demod_address.i389 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %demod_address.i389, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i437) #7
  %334 = getelementptr inbounds [4 x i8], ptr %mm1.i437, i32 0, i32 1
  %335 = getelementptr inbounds [4 x i8], ptr %mm1.i437, i32 0, i32 2
  %336 = getelementptr inbounds [4 x i8], ptr %mm1.i437, i32 0, i32 3
  %337 = ptrtoint ptr %mm1.i437 to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 19, ptr %mm1.i437, align 1
  %338 = ptrtoint ptr %334 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 -62, ptr %334, align 1
  %339 = ptrtoint ptr %335 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 0, ptr %335, align 1
  %340 = ptrtoint ptr %336 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 0, ptr %336, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i438) #7
  %341 = ptrtoint ptr %mm2.i438 to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 -1, ptr %mm2.i438, align 1, !annotation !75
  %342 = getelementptr inbounds [2 x i8], ptr %mm2.i438, i32 0, i32 1
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 -1, ptr %342, align 1, !annotation !75
  %344 = ptrtoint ptr %i2c.i392 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %i2c.i392, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i436) #7
  %346 = getelementptr inbounds i8, ptr %msgs.i.i436, i32 4
  %347 = call ptr @memset(ptr %346, i32 255, i32 16)
  %conv.i.i441 = zext i8 %333 to i16
  %348 = ptrtoint ptr %msgs.i.i436 to i32
  call void @__asan_store2_noabort(i32 %348)
  store i16 %conv.i.i441, ptr %msgs.i.i436, align 4
  %flags.i.i442 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i436, i32 0, i32 1
  %349 = ptrtoint ptr %flags.i.i442 to i32
  call void @__asan_store2_noabort(i32 %349)
  store i16 0, ptr %flags.i.i442, align 2
  %350 = ptrtoint ptr %346 to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 4, ptr %346, align 4
  %buf.i.i443 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i436, i32 0, i32 3
  %351 = ptrtoint ptr %buf.i.i443 to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr %mm1.i437, ptr %buf.i.i443, align 4
  %arrayinit.element.i.i444 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i436, i32 1
  %352 = ptrtoint ptr %arrayinit.element.i.i444 to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 %conv.i.i441, ptr %arrayinit.element.i.i444, align 4
  %flags5.i.i445 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i436, i32 1, i32 1
  %353 = ptrtoint ptr %flags5.i.i445 to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 1, ptr %flags5.i.i445, align 2
  %len6.i.i446 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i436, i32 1, i32 2
  %354 = ptrtoint ptr %len6.i.i446 to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 2, ptr %len6.i.i446, align 4
  %buf8.i.i447 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i436, i32 1, i32 3
  %355 = ptrtoint ptr %buf8.i.i447 to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr %mm2.i438, ptr %buf8.i.i447, align 4
  %call.i.i448 = call i32 @i2c_transfer(ptr noundef %345, ptr noundef nonnull %msgs.i.i436, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i448)
  %cmp.not.i.not.i449 = icmp eq i32 %call.i.i448, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i436) #7
  br i1 %cmp.not.i.not.i449, label %Read16.exit460, label %Read16.exit460.thread

Read16.exit460.thread:                            ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i438) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i437) #7
  br label %cleanup189

Read16.exit460:                                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  %356 = ptrtoint ptr %mm2.i438 to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %mm2.i438, align 1
  %358 = ptrtoint ptr %342 to i32
  call void @__asan_load1_noabort(i32 %358)
  %359 = load i8, ptr %342, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i438) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i437) #7
  %360 = or i8 %357, 2
  %361 = ptrtoint ptr %demod_address.i389 to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %demod_address.i389, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i462) #7
  %363 = getelementptr inbounds [6 x i8], ptr %mm.i462, i32 0, i32 1
  %364 = getelementptr inbounds [6 x i8], ptr %mm.i462, i32 0, i32 2
  %365 = getelementptr inbounds [6 x i8], ptr %mm.i462, i32 0, i32 3
  %366 = getelementptr inbounds [6 x i8], ptr %mm.i462, i32 0, i32 4
  %367 = getelementptr inbounds [6 x i8], ptr %mm.i462, i32 0, i32 5
  %368 = ptrtoint ptr %mm.i462 to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 19, ptr %mm.i462, align 1
  %369 = ptrtoint ptr %363 to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 -62, ptr %363, align 1
  %370 = ptrtoint ptr %364 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 0, ptr %364, align 1
  %371 = ptrtoint ptr %365 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 0, ptr %365, align 1
  %372 = ptrtoint ptr %366 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 %360, ptr %366, align 1
  %373 = ptrtoint ptr %367 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 %359, ptr %367, align 1
  %374 = ptrtoint ptr %i2c.i392 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %i2c.i392, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i461) #7
  %376 = getelementptr inbounds i8, ptr %msg.i.i461, i32 4
  %377 = ptrtoint ptr %376 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 458751, ptr %376, align 4
  %conv.i.i467 = zext i8 %362 to i16
  %378 = ptrtoint ptr %msg.i.i461 to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 %conv.i.i467, ptr %msg.i.i461, align 4
  %flags.i.i468 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i461, i32 0, i32 1
  %379 = ptrtoint ptr %flags.i.i468 to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 0, ptr %flags.i.i468, align 2
  %buf.i.i469 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i461, i32 0, i32 3
  %380 = ptrtoint ptr %buf.i.i469 to i32
  call void @__asan_store4_noabort(i32 %380)
  store ptr %mm.i462, ptr %buf.i.i469, align 4
  %call.i.i470 = call i32 @i2c_transfer(ptr noundef %375, ptr noundef nonnull %msg.i.i461, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i470)
  %cmp.not.i.not.i471.not = icmp ne i32 %call.i.i470, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i461) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i462) #7
  %.243 = sext i1 %cmp.not.i.not.i471.not to i32
  br label %cleanup189

cleanup189:                                       ; preds = %Read16.exit460, %Read16.exit460.thread, %Read16.exit423.cleanup189_crit_edge, %Read16.exit423.thread, %if.else132.cleanup189_crit_edge, %Read16.exit386, %Read16.exit386.thread, %if.end98.cleanup189_crit_edge, %Read16.exit337.cleanup189_crit_edge, %Read16.exit337.thread, %if.then65.cleanup189_crit_edge, %Read16.exit300, %Read16.exit300.thread, %Read16.exit.cleanup189_crit_edge, %Read16.exit.thread, %if.end14.cleanup189_crit_edge, %do.body.cleanup189_crit_edge, %entry.cleanup189_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup189_crit_edge ], [ -1, %do.body.cleanup189_crit_edge ], [ -1, %if.end14.cleanup189_crit_edge ], [ -1, %Read16.exit.cleanup189_crit_edge ], [ -1, %Read16.exit.thread ], [ %call53.lobit, %Read16.exit300 ], [ -1, %Read16.exit300.thread ], [ -1, %if.then65.cleanup189_crit_edge ], [ -1, %Read16.exit337.cleanup189_crit_edge ], [ -1, %if.end98.cleanup189_crit_edge ], [ -1, %Read16.exit337.thread ], [ %call119.lobit, %Read16.exit386 ], [ -1, %Read16.exit386.thread ], [ -1, %if.else132.cleanup189_crit_edge ], [ -1, %Read16.exit423.cleanup189_crit_edge ], [ -1, %Read16.exit423.thread ], [ %.243, %Read16.exit460 ], [ -1, %Read16.exit460.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @StopOC(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  %msg.i.i199 = alloca %struct.i2c_msg, align 4
  %mm.i200 = alloca [6 x i8], align 1
  %msg.i.i189 = alloca %struct.i2c_msg, align 4
  %mm.i190 = alloca [6 x i8], align 1
  %msg.i.i179 = alloca %struct.i2c_msg, align 4
  %mm.i180 = alloca [6 x i8], align 1
  %msg.i.i167 = alloca %struct.i2c_msg, align 4
  %mm.i168 = alloca [6 x i8], align 1
  %msg.i.i155 = alloca %struct.i2c_msg, align 4
  %mm.i156 = alloca [6 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %mm.i = alloca [6 x i8], align 1
  %msgs.i.i122 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i123 = alloca [4 x i8], align 1
  %mm2.i124 = alloca [2 x i8], align 1
  %msgs.i.i97 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i98 = alloca [4 x i8], align 1
  %mm2.i99 = alloca [2 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i = alloca [4 x i8], align 1
  %mm2.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %m_EcOcRegOcModeLop = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 34
  %0 = ptrtoint ptr %m_EcOcRegOcModeLop to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %m_EcOcRegOcModeLop, align 2
  %demod_address.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %2 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i) #7
  %4 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 3
  %7 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 22, ptr %mm1.i, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 21, ptr %4, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %5, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i) #7
  %11 = ptrtoint ptr %mm2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %mm2.i, align 1, !annotation !75
  %12 = getelementptr inbounds [2 x i8], ptr %mm2.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %12, align 1, !annotation !75
  %i2c.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %14 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %16 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 255, i32 16)
  %conv.i.i = zext i8 %3 to i16
  %18 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i.i, align 2
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 4, ptr %16, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mm1.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %22 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %23 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %24 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %len6.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %25 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mm2.i, ptr %buf8.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br i1 %cmp.not.i.not.i, label %Read16.exit, label %Read16.exit.thread

Read16.exit.thread:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  br label %do.end

Read16.exit:                                      ; preds = %entry
  %26 = ptrtoint ptr %mm2.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mm2.i, align 1
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %12, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  %conv15.i = zext i8 %27 to i16
  %conv17.i = zext i8 %29 to i16
  %shl.i = shl nuw i16 %conv17.i, 8
  %or18.i = or i16 %shl.i, %conv15.i
  %m_EcOcRegSncSncLvl = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 35
  %30 = ptrtoint ptr %m_EcOcRegSncSncLvl to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %or18.i, ptr %m_EcOcRegSncSncLvl, align 4
  %31 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i98) #7
  %33 = getelementptr inbounds [4 x i8], ptr %mm1.i98, i32 0, i32 1
  %34 = getelementptr inbounds [4 x i8], ptr %mm1.i98, i32 0, i32 2
  %35 = getelementptr inbounds [4 x i8], ptr %mm1.i98, i32 0, i32 3
  %36 = ptrtoint ptr %mm1.i98 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 52, ptr %mm1.i98, align 1
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 21, ptr %33, align 1
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %34, align 1
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i99) #7
  %40 = ptrtoint ptr %mm2.i99 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %mm2.i99, align 1, !annotation !75
  %41 = getelementptr inbounds [2 x i8], ptr %mm2.i99, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %41, align 1, !annotation !75
  %43 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i97) #7
  %45 = getelementptr inbounds i8, ptr %msgs.i.i97, i32 4
  %46 = call ptr @memset(ptr %45, i32 255, i32 16)
  %conv.i.i102 = zext i8 %32 to i16
  %47 = ptrtoint ptr %msgs.i.i97 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i.i102, ptr %msgs.i.i97, align 4
  %flags.i.i103 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i97, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i.i103 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i.i103, align 2
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 4, ptr %45, align 4
  %buf.i.i104 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i97, i32 0, i32 3
  %50 = ptrtoint ptr %buf.i.i104 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %mm1.i98, ptr %buf.i.i104, align 4
  %arrayinit.element.i.i105 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i97, i32 1
  %51 = ptrtoint ptr %arrayinit.element.i.i105 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i.i102, ptr %arrayinit.element.i.i105, align 4
  %flags5.i.i106 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i97, i32 1, i32 1
  %52 = ptrtoint ptr %flags5.i.i106 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %flags5.i.i106, align 2
  %len6.i.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i97, i32 1, i32 2
  %53 = ptrtoint ptr %len6.i.i107 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 2, ptr %len6.i.i107, align 4
  %buf8.i.i108 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i97, i32 1, i32 3
  %54 = ptrtoint ptr %buf8.i.i108 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %mm2.i99, ptr %buf8.i.i108, align 4
  %call.i.i109 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msgs.i.i97, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i109)
  %cmp.not.i.not.i110 = icmp eq i32 %call.i.i109, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i97) #7
  br i1 %cmp.not.i.not.i110, label %Read16.exit121, label %Read16.exit121.thread

Read16.exit121.thread:                            ; preds = %Read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i99) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i98) #7
  br label %do.end

Read16.exit121:                                   ; preds = %Read16.exit
  %55 = ptrtoint ptr %mm2.i99 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %mm2.i99, align 1
  %57 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %41, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i99) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i98) #7
  %59 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i123) #7
  %61 = getelementptr inbounds [4 x i8], ptr %mm1.i123, i32 0, i32 1
  %62 = getelementptr inbounds [4 x i8], ptr %mm1.i123, i32 0, i32 2
  %63 = getelementptr inbounds [4 x i8], ptr %mm1.i123, i32 0, i32 3
  %64 = ptrtoint ptr %mm1.i123 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 53, ptr %mm1.i123, align 1
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 21, ptr %61, align 1
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 2, ptr %62, align 1
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i124) #7
  %68 = ptrtoint ptr %mm2.i124 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %mm2.i124, align 1, !annotation !75
  %69 = getelementptr inbounds [2 x i8], ptr %mm2.i124, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -1, ptr %69, align 1, !annotation !75
  %71 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i122) #7
  %73 = getelementptr inbounds i8, ptr %msgs.i.i122, i32 4
  %74 = call ptr @memset(ptr %73, i32 255, i32 16)
  %conv.i.i127 = zext i8 %60 to i16
  %75 = ptrtoint ptr %msgs.i.i122 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i.i127, ptr %msgs.i.i122, align 4
  %flags.i.i128 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i122, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i.i128 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i.i128, align 2
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 4, ptr %73, align 4
  %buf.i.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i122, i32 0, i32 3
  %78 = ptrtoint ptr %buf.i.i129 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %mm1.i123, ptr %buf.i.i129, align 4
  %arrayinit.element.i.i130 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i122, i32 1
  %79 = ptrtoint ptr %arrayinit.element.i.i130 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i.i127, ptr %arrayinit.element.i.i130, align 4
  %flags5.i.i131 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i122, i32 1, i32 1
  %80 = ptrtoint ptr %flags5.i.i131 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 1, ptr %flags5.i.i131, align 2
  %len6.i.i132 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i122, i32 1, i32 2
  %81 = ptrtoint ptr %len6.i.i132 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 2, ptr %len6.i.i132, align 4
  %buf8.i.i133 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i122, i32 1, i32 3
  %82 = ptrtoint ptr %buf8.i.i133 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %mm2.i124, ptr %buf8.i.i133, align 4
  %call.i.i134 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msgs.i.i122, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i134)
  %cmp.not.i.not.i135 = icmp eq i32 %call.i.i134, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i122) #7
  br i1 %cmp.not.i.not.i135, label %Read16.exit146, label %Read16.exit146.thread

Read16.exit146.thread:                            ; preds = %Read16.exit121
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i124) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i123) #7
  br label %do.end

Read16.exit146:                                   ; preds = %Read16.exit121
  %83 = ptrtoint ptr %mm2.i124 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %mm2.i124, align 1
  %85 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %69, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i124) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i123) #7
  %87 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i) #7
  %89 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 1
  %90 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 2
  %91 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 3
  %92 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 4
  %93 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 5
  %94 = ptrtoint ptr %mm.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 20, ptr %mm.i, align 1
  %95 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 21, ptr %89, align 1
  %96 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 2, ptr %90, align 1
  %97 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %91, align 1
  %98 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %56, ptr %92, align 1
  %99 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %58, ptr %93, align 1
  %100 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %102 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 458751, ptr %102, align 4
  %conv.i.i150 = zext i8 %88 to i16
  %104 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv.i.i150, ptr %msg.i.i, align 4
  %flags.i.i151 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %105 = ptrtoint ptr %flags.i.i151 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %flags.i.i151, align 2
  %buf.i.i152 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %106 = ptrtoint ptr %buf.i.i152 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %mm.i, ptr %buf.i.i152, align 4
  %call.i.i153 = call i32 @i2c_transfer(ptr noundef %101, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i153)
  %cmp.not.i.not.i154.not = icmp eq i32 %call.i.i153, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i) #7
  br i1 %cmp.not.i.not.i154.not, label %if.end12, label %Read16.exit146.do.end_crit_edge

Read16.exit146.do.end_crit_edge:                  ; preds = %Read16.exit146
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end12:                                         ; preds = %Read16.exit146
  %107 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i156) #7
  %109 = getelementptr inbounds [6 x i8], ptr %mm.i156, i32 0, i32 1
  %110 = getelementptr inbounds [6 x i8], ptr %mm.i156, i32 0, i32 2
  %111 = getelementptr inbounds [6 x i8], ptr %mm.i156, i32 0, i32 3
  %112 = getelementptr inbounds [6 x i8], ptr %mm.i156, i32 0, i32 4
  %113 = getelementptr inbounds [6 x i8], ptr %mm.i156, i32 0, i32 5
  %114 = ptrtoint ptr %mm.i156 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 21, ptr %mm.i156, align 1
  %115 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 21, ptr %109, align 1
  %116 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 2, ptr %110, align 1
  %117 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %111, align 1
  %118 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %84, ptr %112, align 1
  %119 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %86, ptr %113, align 1
  %120 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i155) #7
  %122 = getelementptr inbounds i8, ptr %msg.i.i155, i32 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 458751, ptr %122, align 4
  %conv.i.i161 = zext i8 %108 to i16
  %124 = ptrtoint ptr %msg.i.i155 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv.i.i161, ptr %msg.i.i155, align 4
  %flags.i.i162 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i155, i32 0, i32 1
  %125 = ptrtoint ptr %flags.i.i162 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %flags.i.i162, align 2
  %buf.i.i163 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i155, i32 0, i32 3
  %126 = ptrtoint ptr %buf.i.i163 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %mm.i156, ptr %buf.i.i163, align 4
  %call.i.i164 = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %msg.i.i155, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i164)
  %cmp.not.i.not.i165.not = icmp eq i32 %call.i.i164, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i155) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i156) #7
  br i1 %cmp.not.i.not.i165.not, label %if.end16, label %if.end12.do.end_crit_edge

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end16:                                         ; preds = %if.end12
  %127 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i168) #7
  %129 = getelementptr inbounds [6 x i8], ptr %mm.i168, i32 0, i32 1
  %130 = getelementptr inbounds [6 x i8], ptr %mm.i168, i32 0, i32 2
  %131 = getelementptr inbounds [6 x i8], ptr %mm.i168, i32 0, i32 3
  %132 = getelementptr inbounds [6 x i8], ptr %mm.i168, i32 0, i32 4
  %133 = getelementptr inbounds [6 x i8], ptr %mm.i168, i32 0, i32 5
  %134 = ptrtoint ptr %mm.i168 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 16, ptr %mm.i168, align 1
  %135 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 21, ptr %129, align 1
  %136 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 2, ptr %130, align 1
  %137 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 0, ptr %131, align 1
  %138 = trunc i16 %1 to i8
  %conv15.i170 = and i8 %138, -5
  %139 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv15.i170, ptr %132, align 1
  %140 = lshr i16 %1, 8
  %conv20.i171 = trunc i16 %140 to i8
  %141 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv20.i171, ptr %133, align 1
  %142 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i167) #7
  %144 = getelementptr inbounds i8, ptr %msg.i.i167, i32 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 458751, ptr %144, align 4
  %conv.i.i173 = zext i8 %128 to i16
  %146 = ptrtoint ptr %msg.i.i167 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %conv.i.i173, ptr %msg.i.i167, align 4
  %flags.i.i174 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i167, i32 0, i32 1
  %147 = ptrtoint ptr %flags.i.i174 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %flags.i.i174, align 2
  %buf.i.i175 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i167, i32 0, i32 3
  %148 = ptrtoint ptr %buf.i.i175 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %mm.i168, ptr %buf.i.i175, align 4
  %call.i.i176 = call i32 @i2c_transfer(ptr noundef %143, ptr noundef nonnull %msg.i.i167, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i176)
  %cmp.not.i.not.i177.not = icmp eq i32 %call.i.i176, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i167) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i168) #7
  br i1 %cmp.not.i.not.i177.not, label %if.end24, label %if.end16.do.end_crit_edge

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end24:                                         ; preds = %if.end16
  %149 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i180) #7
  %151 = getelementptr inbounds [6 x i8], ptr %mm.i180, i32 0, i32 1
  %152 = getelementptr inbounds [6 x i8], ptr %mm.i180, i32 0, i32 2
  %153 = getelementptr inbounds [6 x i8], ptr %mm.i180, i32 0, i32 3
  %154 = getelementptr inbounds [6 x i8], ptr %mm.i180, i32 0, i32 4
  %155 = getelementptr inbounds [6 x i8], ptr %mm.i180, i32 0, i32 5
  %156 = ptrtoint ptr %mm.i180 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 0, ptr %mm.i180, align 1
  %157 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 21, ptr %151, align 1
  %158 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 2, ptr %152, align 1
  %159 = ptrtoint ptr %153 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %153, align 1
  %160 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 2, ptr %154, align 1
  %161 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %155, align 1
  %162 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i179) #7
  %164 = getelementptr inbounds i8, ptr %msg.i.i179, i32 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 458751, ptr %164, align 4
  %conv.i.i183 = zext i8 %150 to i16
  %166 = ptrtoint ptr %msg.i.i179 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv.i.i183, ptr %msg.i.i179, align 4
  %flags.i.i184 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i179, i32 0, i32 1
  %167 = ptrtoint ptr %flags.i.i184 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 0, ptr %flags.i.i184, align 2
  %buf.i.i185 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i179, i32 0, i32 3
  %168 = ptrtoint ptr %buf.i.i185 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %mm.i180, ptr %buf.i.i185, align 4
  %call.i.i186 = call i32 @i2c_transfer(ptr noundef %163, ptr noundef nonnull %msg.i.i179, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i186)
  %cmp.not.i.not.i187.not = icmp eq i32 %call.i.i186, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i179) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i180) #7
  br i1 %cmp.not.i.not.i187.not, label %if.end29, label %if.end24.do.end_crit_edge

if.end24.do.end_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end29:                                         ; preds = %if.end24
  call void @msleep(i32 noundef 1) #7
  %169 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i190) #7
  %171 = getelementptr inbounds [6 x i8], ptr %mm.i190, i32 0, i32 1
  %172 = getelementptr inbounds [6 x i8], ptr %mm.i190, i32 0, i32 2
  %173 = getelementptr inbounds [6 x i8], ptr %mm.i190, i32 0, i32 3
  %174 = getelementptr inbounds [6 x i8], ptr %mm.i190, i32 0, i32 4
  %175 = getelementptr inbounds [6 x i8], ptr %mm.i190, i32 0, i32 5
  %176 = ptrtoint ptr %mm.i190 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 54, ptr %mm.i190, align 1
  %177 = ptrtoint ptr %171 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 21, ptr %171, align 1
  %178 = ptrtoint ptr %172 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 2, ptr %172, align 1
  %179 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %173, align 1
  %180 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 -1, ptr %174, align 1
  %181 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 15, ptr %175, align 1
  %182 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i189) #7
  %184 = getelementptr inbounds i8, ptr %msg.i.i189, i32 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 458751, ptr %184, align 4
  %conv.i.i193 = zext i8 %170 to i16
  %186 = ptrtoint ptr %msg.i.i189 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %conv.i.i193, ptr %msg.i.i189, align 4
  %flags.i.i194 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i189, i32 0, i32 1
  %187 = ptrtoint ptr %flags.i.i194 to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 0, ptr %flags.i.i194, align 2
  %buf.i.i195 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i189, i32 0, i32 3
  %188 = ptrtoint ptr %buf.i.i195 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %mm.i190, ptr %buf.i.i195, align 4
  %call.i.i196 = call i32 @i2c_transfer(ptr noundef %183, ptr noundef nonnull %msg.i.i189, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i196)
  %cmp.not.i.not.i197.not = icmp eq i32 %call.i.i196, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i189) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i190) #7
  br i1 %cmp.not.i.not.i197.not, label %if.end34, label %if.end29.do.end_crit_edge

if.end29.do.end_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end34:                                         ; preds = %if.end29
  %189 = and i8 %27, 15
  %190 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i200) #7
  %192 = getelementptr inbounds [6 x i8], ptr %mm.i200, i32 0, i32 1
  %193 = getelementptr inbounds [6 x i8], ptr %mm.i200, i32 0, i32 2
  %194 = getelementptr inbounds [6 x i8], ptr %mm.i200, i32 0, i32 3
  %195 = getelementptr inbounds [6 x i8], ptr %mm.i200, i32 0, i32 4
  %196 = getelementptr inbounds [6 x i8], ptr %mm.i200, i32 0, i32 5
  %197 = ptrtoint ptr %mm.i200 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 22, ptr %mm.i200, align 1
  %198 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 21, ptr %192, align 1
  %199 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 2, ptr %193, align 1
  %200 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %194, align 1
  %201 = ptrtoint ptr %195 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %189, ptr %195, align 1
  %202 = ptrtoint ptr %196 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %29, ptr %196, align 1
  %203 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i199) #7
  %205 = getelementptr inbounds i8, ptr %msg.i.i199, i32 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 458751, ptr %205, align 4
  %conv.i.i205 = zext i8 %191 to i16
  %207 = ptrtoint ptr %msg.i.i199 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %conv.i.i205, ptr %msg.i.i199, align 4
  %flags.i.i206 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i199, i32 0, i32 1
  %208 = ptrtoint ptr %flags.i.i206 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 0, ptr %flags.i.i206, align 2
  %buf.i.i207 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i199, i32 0, i32 3
  %209 = ptrtoint ptr %buf.i.i207 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %mm.i200, ptr %buf.i.i207, align 4
  %call.i.i208 = call i32 @i2c_transfer(ptr noundef %204, ptr noundef nonnull %msg.i.i199, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i208)
  %cmp.not.i.not.i209.not = icmp eq i32 %call.i.i208, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i199) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i200) #7
  br i1 %cmp.not.i.not.i209.not, label %if.end42, label %if.end34.do.end_crit_edge

if.end34.do.end_crit_edge:                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end42:                                         ; preds = %if.end34
  %210 = and i16 %1, -8
  %211 = or i16 %210, 2
  %call52 = call fastcc i32 @Write16(ptr noundef %state, i32 noundef 34930704, i16 noundef zeroext %211, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end42.do.end_crit_edge, label %if.end56

if.end42.do.end_crit_edge:                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end56:                                         ; preds = %if.end42
  %call57 = call fastcc i32 @Write16(ptr noundef %state, i32 noundef 34930695, i16 noundef zeroext 0, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.do.end_crit_edge, label %if.end61

if.end56.do.end_crit_edge:                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end61:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = call fastcc i32 @Write16(ptr noundef %state, i32 noundef 34930688, i16 noundef zeroext 1, i8 noundef zeroext 0)
  br label %do.end

do.end:                                           ; preds = %if.end61, %if.end56.do.end_crit_edge, %if.end42.do.end_crit_edge, %if.end34.do.end_crit_edge, %if.end29.do.end_crit_edge, %if.end24.do.end_crit_edge, %if.end16.do.end_crit_edge, %if.end12.do.end_crit_edge, %Read16.exit146.do.end_crit_edge, %Read16.exit146.thread, %Read16.exit121.thread, %Read16.exit.thread
  %status.0 = phi i32 [ -1, %Read16.exit146.do.end_crit_edge ], [ -1, %if.end12.do.end_crit_edge ], [ -1, %if.end16.do.end_crit_edge ], [ -1, %if.end24.do.end_crit_edge ], [ -1, %if.end29.do.end_crit_edge ], [ -1, %if.end34.do.end_crit_edge ], [ -1, %if.end42.do.end_crit_edge ], [ -1, %if.end56.do.end_crit_edge ], [ %call62, %if.end61 ], [ -1, %Read16.exit.thread ], [ -1, %Read16.exit121.thread ], [ -1, %Read16.exit146.thread ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_firmware(ptr nocapture noundef %state, ptr noundef %fw_name) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !75
  %dev = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 4
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %fw_name, ptr noundef %2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %fw_name) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %call2 = call ptr @kmemdup(ptr noundef %6, i32 noundef %8, i32 noundef 3264) #7
  %microcode = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 54
  %9 = ptrtoint ptr %microcode to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %microcode, align 4
  %tobool.not = icmp eq ptr %call2, null
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 4
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @release_firmware(ptr noundef %11) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %microcode_length = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 55
  %14 = ptrtoint ptr %microcode_length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %microcode_length, align 4
  call void @release_firmware(ptr noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end5 ], [ -12, %if.then4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @HI_Command(ptr nocapture noundef readonly %state, i16 noundef zeroext %cmd) unnamed_addr #0 align 64 {
entry:
  %msgs.i.i8 = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i9 = alloca [4 x i8], align 1
  %mm2.i10 = alloca [2 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i = alloca [4 x i8], align 1
  %mm2.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %mm.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demod_address.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i) #7
  %2 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 5
  %7 = ptrtoint ptr %mm.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 50, ptr %mm.i, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 66, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %4, align 1
  %conv15.i = trunc i16 %cmd to i8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv15.i, ptr %5, align 1
  %12 = lshr i16 %cmd, 8
  %conv20.i = trunc i16 %12 to i8
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv20.i, ptr %6, align 1
  %i2c.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %14 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %16 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 458751, ptr %16, align 4
  %conv.i.i = zext i8 %1 to i16
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mm.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.not.i.not = icmp eq i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i) #7
  br i1 %cmp.not.i.not.i.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %21 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 1
  %22 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 2
  %23 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 3
  %24 = getelementptr inbounds [2 x i8], ptr %mm2.i, i32 0, i32 1
  %25 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %flags.i.i4 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %buf.i.i5 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  br label %do.body

do.body:                                          ; preds = %Read16.exit.do.body_crit_edge, %do.body.preheader
  %nrRetries.0 = phi i32 [ %add, %Read16.exit.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %add = add nuw nsw i32 %nrRetries.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %nrRetries.0)
  %exitcond = icmp eq i32 %nrRetries.0, 1000
  br i1 %exitcond, label %do.body.cleanup_crit_edge, label %if.end3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %do.body
  %26 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i) #7
  %28 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 50, ptr %mm1.i, align 1
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 66, ptr %21, align 1
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %22, align 1
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i) #7
  %32 = ptrtoint ptr %mm2.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %mm2.i, align 1, !annotation !75
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %24, align 1, !annotation !75
  %34 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %36 = call ptr @memset(ptr %25, i32 255, i32 16)
  %conv.i.i3 = zext i8 %27 to i16
  %37 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i.i3, ptr %msgs.i.i, align 4
  %38 = ptrtoint ptr %flags.i.i4 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i.i4, align 2
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 4, ptr %25, align 4
  %40 = ptrtoint ptr %buf.i.i5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %mm1.i, ptr %buf.i.i5, align 4
  %41 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i.i3, ptr %arrayinit.element.i.i, align 4
  %42 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %flags5.i.i, align 2
  %43 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 2, ptr %len6.i.i, align 4
  %44 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %mm2.i, ptr %buf8.i.i, align 4
  %call.i.i6 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i6)
  %cmp.not.i.not.i7 = icmp eq i32 %call.i.i6, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br i1 %cmp.not.i.not.i7, label %if.end.i, label %if.end3.Read16.exit_crit_edge

if.end3.Read16.exit_crit_edge:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %Read16.exit

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %mm2.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mm2.i, align 1
  %conv22.i = zext i8 %46 to i32
  %47 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %24, align 1
  %conv24.i = zext i8 %48 to i32
  %shl25.i = shl nuw nsw i32 %conv24.i, 8
  %or26.i = or i32 %shl25.i, %conv22.i
  br label %Read16.exit

Read16.exit:                                      ; preds = %if.end.i, %if.end3.Read16.exit_crit_edge
  %retval.0.i = phi i32 [ %or26.i, %if.end.i ], [ -1, %if.end3.Read16.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  %cmp5.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp5.not, label %if.then7.critedge, label %Read16.exit.do.body_crit_edge

Read16.exit.do.body_crit_edge:                    ; preds = %Read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then7.critedge:                                ; preds = %Read16.exit
  %49 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i9) #7
  %51 = getelementptr inbounds [4 x i8], ptr %mm1.i9, i32 0, i32 1
  %52 = getelementptr inbounds [4 x i8], ptr %mm1.i9, i32 0, i32 2
  %53 = getelementptr inbounds [4 x i8], ptr %mm1.i9, i32 0, i32 3
  %54 = ptrtoint ptr %mm1.i9 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 49, ptr %mm1.i9, align 1
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 66, ptr %51, align 1
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %52, align 1
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i10) #7
  %58 = ptrtoint ptr %mm2.i10 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %mm2.i10, align 1, !annotation !75
  %59 = getelementptr inbounds [2 x i8], ptr %mm2.i10, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %59, align 1, !annotation !75
  %61 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i8) #7
  %63 = getelementptr inbounds i8, ptr %msgs.i.i8, i32 4
  %64 = call ptr @memset(ptr %63, i32 255, i32 16)
  %conv.i.i13 = zext i8 %50 to i16
  %65 = ptrtoint ptr %msgs.i.i8 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i.i13, ptr %msgs.i.i8, align 4
  %flags.i.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i8, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i.i14 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i.i14, align 2
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 4, ptr %63, align 4
  %buf.i.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i8, i32 0, i32 3
  %68 = ptrtoint ptr %buf.i.i15 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %mm1.i9, ptr %buf.i.i15, align 4
  %arrayinit.element.i.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i8, i32 1
  %69 = ptrtoint ptr %arrayinit.element.i.i16 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i.i13, ptr %arrayinit.element.i.i16, align 4
  %flags5.i.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i8, i32 1, i32 1
  %70 = ptrtoint ptr %flags5.i.i17 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %flags5.i.i17, align 2
  %len6.i.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i8, i32 1, i32 2
  %71 = ptrtoint ptr %len6.i.i18 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 2, ptr %len6.i.i18, align 4
  %buf8.i.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i8, i32 1, i32 3
  %72 = ptrtoint ptr %buf8.i.i19 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %mm2.i10, ptr %buf8.i.i19, align 4
  %call.i.i20 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msgs.i.i8, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i20)
  %cmp.not.i.not.i21 = icmp eq i32 %call.i.i20, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i8) #7
  br i1 %cmp.not.i.not.i21, label %if.end.i22, label %if.then7.critedge.Read16.exit28_crit_edge

if.then7.critedge.Read16.exit28_crit_edge:        ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %Read16.exit28

if.end.i22:                                       ; preds = %if.then7.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %mm2.i10 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %mm2.i10, align 1
  %conv22.i23 = zext i8 %74 to i32
  %75 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %59, align 1
  %conv24.i24 = zext i8 %76 to i32
  %shl25.i25 = shl nuw nsw i32 %conv24.i24, 8
  %or26.i26 = or i32 %shl25.i25, %conv22.i23
  br label %Read16.exit28

Read16.exit28:                                    ; preds = %if.end.i22, %if.then7.critedge.Read16.exit28_crit_edge
  %retval.0.i27 = phi i32 [ %or26.i26, %if.end.i22 ], [ -1, %if.then7.critedge.Read16.exit28_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i9) #7
  br label %cleanup

cleanup:                                          ; preds = %Read16.exit28, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %retval.0.i27, %Read16.exit28 ], [ -1, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @DRX_GetLockStatus(ptr nocapture noundef %state, ptr nocapture noundef %pLockStatus) unnamed_addr #0 align 64 {
entry:
  %msg.i.i38.i = alloca %struct.i2c_msg, align 4
  %mm.i39.i = alloca [6 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %mm.i.i = alloca [6 x i8], align 1
  %msgs.i.i4.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i5.i = alloca [4 x i8], align 1
  %mm2.i6.i = alloca [4 x i8], align 4
  %msgs.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i.i = alloca [4 x i8], align 1
  %mm2.i.i = alloca [4 x i8], align 4
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i = alloca [4 x i8], align 1
  %mm2.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pLockStatus to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pLockStatus, align 4
  %demod_address.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %1 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i) #7
  %3 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 3
  %6 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 75, ptr %mm1.i, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -126, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i) #7
  %10 = ptrtoint ptr %mm2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %mm2.i, align 1, !annotation !75
  %11 = getelementptr inbounds [2 x i8], ptr %mm2.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 1, !annotation !75
  %i2c.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %13 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %15 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 255, i32 16)
  %conv.i.i = zext i8 %2 to i16
  %17 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i.i, align 2
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 4, ptr %15, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mm1.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %21 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i.i, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %22 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %23 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2, ptr %len6.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %24 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %mm2.i, ptr %buf8.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br i1 %cmp.not.i.not.i, label %Read16.exit, label %Read16.exit.thread

Read16.exit.thread:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef -1) #11
  br label %cleanup

Read16.exit:                                      ; preds = %entry
  %25 = ptrtoint ptr %mm2.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mm2.i, align 1
  %conv15.i = zext i8 %26 to i16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  %drxd_state = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 19
  %27 = ptrtoint ptr %drxd_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %drxd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp2.not = icmp eq i32 %28, 2
  br i1 %cmp2.not, label %if.end4, label %Read16.exit.cleanup_crit_edge

Read16.exit.cleanup_crit_edge:                    ; preds = %Read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %Read16.exit
  %29 = and i16 %conv15.i, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %29)
  %cmp5 = icmp eq i16 %29, 7
  br i1 %cmp5, label %if.then7, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.end4
  %30 = ptrtoint ptr %pLockStatus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pLockStatus, align 4
  %or = or i32 %31, 1
  store i32 %or, ptr %pLockStatus, align 4
  %32 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i.i) #7
  %34 = getelementptr inbounds [4 x i8], ptr %mm1.i.i, i32 0, i32 1
  %35 = getelementptr inbounds [4 x i8], ptr %mm1.i.i, i32 0, i32 2
  %36 = getelementptr inbounds [4 x i8], ptr %mm1.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %mm1.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 12, ptr %mm1.i.i, align 1
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -126, ptr %34, align 1
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 2, ptr %35, align 1
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm2.i.i) #7
  %41 = ptrtoint ptr %mm2.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %mm2.i.i, align 4
  %42 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i) #7
  %44 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %45 = call ptr @memset(ptr %44, i32 255, i32 16)
  %conv.i.i.i = zext i8 %33 to i16
  %46 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i.i.i, ptr %msgs.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %flags.i.i.i, align 2
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 4, ptr %44, align 4
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %mm1.i.i, ptr %buf.i.i.i, align 4
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1
  %50 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i.i.i, ptr %arrayinit.element.i.i.i, align 4
  %flags5.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 1
  %51 = ptrtoint ptr %flags5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 1, ptr %flags5.i.i.i, align 2
  %len6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 2
  %52 = ptrtoint ptr %len6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 4, ptr %len6.i.i.i, align 4
  %buf8.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 3
  %53 = ptrtoint ptr %buf8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %mm2.i.i, ptr %buf8.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msgs.i.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i32 %call.i.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #7
  br i1 %cmp.not.i.not.i.i, label %if.end.i35, label %Read32.exit.thread.i

Read32.exit.thread.i:                             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm2.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i) #7
  br label %if.end9

if.end.i35:                                       ; preds = %if.then7
  %54 = getelementptr inbounds [4 x i8], ptr %mm2.i.i, i32 0, i32 3
  %55 = getelementptr inbounds [4 x i8], ptr %mm2.i.i, i32 0, i32 2
  %56 = getelementptr inbounds [4 x i8], ptr %mm2.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %mm2.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %mm2.i.i, align 4
  %conv15.i.i = zext i8 %58 to i32
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %56, align 1
  %conv17.i.i = zext i8 %60 to i32
  %shl.i.i = shl nuw nsw i32 %conv17.i.i, 8
  %or18.i.i = or i32 %shl.i.i, %conv15.i.i
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %55, align 2
  %conv20.i.i = zext i8 %62 to i32
  %shl21.i.i = shl nuw nsw i32 %conv20.i.i, 16
  %or22.i.i = or i32 %or18.i.i, %shl21.i.i
  %63 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %54, align 1
  %conv24.i.i = zext i8 %64 to i32
  %shl25.i.i = shl nuw i32 %conv24.i.i, 24
  %or26.i.i = or i32 %or22.i.i, %shl25.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm2.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i) #7
  %65 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i5.i) #7
  %67 = getelementptr inbounds [4 x i8], ptr %mm1.i5.i, i32 0, i32 1
  %68 = getelementptr inbounds [4 x i8], ptr %mm1.i5.i, i32 0, i32 2
  %69 = getelementptr inbounds [4 x i8], ptr %mm1.i5.i, i32 0, i32 3
  %70 = ptrtoint ptr %mm1.i5.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 16, ptr %mm1.i5.i, align 1
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -59, ptr %67, align 1
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %68, align 1
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %69, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm2.i6.i) #7
  %74 = ptrtoint ptr %mm2.i6.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %mm2.i6.i, align 4
  %75 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i4.i) #7
  %77 = getelementptr inbounds i8, ptr %msgs.i.i4.i, i32 4
  %78 = call ptr @memset(ptr %77, i32 255, i32 16)
  %conv.i.i9.i = zext i8 %66 to i16
  %79 = ptrtoint ptr %msgs.i.i4.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i.i9.i, ptr %msgs.i.i4.i, align 4
  %flags.i.i10.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i4.i, i32 0, i32 1
  %80 = ptrtoint ptr %flags.i.i10.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %flags.i.i10.i, align 2
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 4, ptr %77, align 4
  %buf.i.i11.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i4.i, i32 0, i32 3
  %82 = ptrtoint ptr %buf.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %mm1.i5.i, ptr %buf.i.i11.i, align 4
  %arrayinit.element.i.i12.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i4.i, i32 1
  %83 = ptrtoint ptr %arrayinit.element.i.i12.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.i.i9.i, ptr %arrayinit.element.i.i12.i, align 4
  %flags5.i.i13.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i4.i, i32 1, i32 1
  %84 = ptrtoint ptr %flags5.i.i13.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %flags5.i.i13.i, align 2
  %len6.i.i14.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i4.i, i32 1, i32 2
  %85 = ptrtoint ptr %len6.i.i14.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 4, ptr %len6.i.i14.i, align 4
  %buf8.i.i15.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i4.i, i32 1, i32 3
  %86 = ptrtoint ptr %buf8.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %mm2.i6.i, ptr %buf8.i.i15.i, align 4
  %call.i.i16.i = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %msgs.i.i4.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i16.i)
  %cmp.not.i.not.i17.i = icmp eq i32 %call.i.i16.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i4.i) #7
  br i1 %cmp.not.i.not.i17.i, label %if.end4.i, label %Read32.exit30.thread.i

Read32.exit30.thread.i:                           ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm2.i6.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i5.i) #7
  br label %if.end9

if.end4.i:                                        ; preds = %if.end.i35
  %87 = getelementptr inbounds [4 x i8], ptr %mm2.i6.i, i32 0, i32 3
  %88 = getelementptr inbounds [4 x i8], ptr %mm2.i6.i, i32 0, i32 2
  %89 = getelementptr inbounds [4 x i8], ptr %mm2.i6.i, i32 0, i32 1
  %90 = ptrtoint ptr %mm2.i6.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %mm2.i6.i, align 4
  %conv15.i19.i = zext i8 %91 to i32
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %89, align 1
  %conv17.i20.i = zext i8 %93 to i32
  %shl.i21.i = shl nuw nsw i32 %conv17.i20.i, 8
  %or18.i22.i = or i32 %shl.i21.i, %conv15.i19.i
  %94 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %88, align 2
  %conv20.i23.i = zext i8 %95 to i32
  %shl21.i24.i = shl nuw nsw i32 %conv20.i23.i, 16
  %or22.i25.i = or i32 %or18.i22.i, %shl21.i24.i
  %96 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %87, align 1
  %conv24.i26.i = zext i8 %97 to i32
  %shl25.i27.i = shl nuw i32 %conv24.i26.i, 24
  %or26.i28.i = or i32 %or22.i25.i, %shl25.i27.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm2.i6.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i5.i) #7
  %type_A.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 56
  %98 = ptrtoint ptr %type_A.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %type_A.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool.not.i = icmp eq i32 %99, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end4.i
  %sub.i = add i32 %or26.i.i, -501
  %100 = sub i32 %sub.i, %or26.i28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1001, i32 %100)
  %101 = icmp ult i32 %100, -1001
  br i1 %101, label %if.then5.i.if.end9_crit_edge, label %if.then5.i.if.end18.i_crit_edge

if.then5.i.if.end18.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then5.i.if.end9_crit_edge:                     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.else.i:                                        ; preds = %if.end4.i
  %sub11.i = add i32 %or26.i.i, -2001
  %102 = sub i32 %sub11.i, %or26.i28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4001, i32 %102)
  %103 = icmp ult i32 %102, -4001
  br i1 %103, label %if.else.i.if.end9_crit_edge, label %if.else.i.if.end18.i_crit_edge

if.else.i.if.end18.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.else.i.if.end9_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end18.i:                                       ; preds = %if.else.i.if.end18.i_crit_edge, %if.then5.i.if.end18.i_crit_edge
  %bandwidth_hz.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 2, i32 7
  %104 = ptrtoint ptr %bandwidth_hz.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bandwidth_hz.i, align 4
  %106 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %105, label %if.end18.i.if.end9_crit_edge [
    i32 8000000, label %if.end18.i.sw.epilog.i_crit_edge
    i32 7000000, label %sw.bb19.i
    i32 6000000, label %sw.bb20.i
  ]

if.end18.i.sw.epilog.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end18.i.if.end9_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

sw.bb19.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb20.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb20.i, %sw.bb19.i, %if.end18.i.sw.epilog.i_crit_edge
  %bandwidth.0.i = phi i32 [ 6857142, %sw.bb20.i ], [ 8000000, %sw.bb19.i ], [ 9142857, %if.end18.i.sw.epilog.i_crit_edge ]
  %add.i = add i32 %or26.i28.i, 8388608
  %conv.i.i36 = zext i32 %add.i to i64
  %conv1.i.i = zext i32 %bandwidth.0.i to i64
  %mul.i.i = mul nuw nsw i64 %conv1.i.i, %conv.i.i36
  %shr.i.i = lshr i64 %mul.i.i, 21
  %extract.t.i.i = trunc i64 %shr.i.i to i32
  %extract.t.i.i.frozen = freeze i32 %extract.t.i.i
  %div.i = udiv i32 %extract.t.i.i.frozen, 1000
  %107 = mul i32 %div.i, 1000
  %rem.i.decomposed = sub i32 %extract.t.i.i.frozen, %107
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %rem.i.decomposed)
  %cmp22.i = icmp ugt i32 %rem.i.decomposed, 500
  %inc.i = zext i1 %cmp22.i to i32
  %spec.select.i = add nuw nsw i32 %div.i, %inc.i
  %expected_sys_clock_freq.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 22
  %108 = ptrtoint ptr %expected_sys_clock_freq.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %expected_sys_clock_freq.i, align 4
  %conv.i = zext i16 %109 to i32
  %sub25.i = sub nsw i32 %spec.select.i, %conv.i
  %mul.i = mul i32 %sub25.i, 1000000
  %div28.i = sdiv i32 %mul.i, %conv.i
  %conv29.i = trunc i32 %div28.i to i16
  %osc_clock_deviation.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 21
  %110 = ptrtoint ptr %osc_clock_deviation.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %osc_clock_deviation.i, align 2
  %conv33.i = sub i16 200, %111
  %112 = add i16 %conv33.i, %conv29.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 401, i16 %112)
  %113 = icmp ult i16 %112, 401
  br i1 %113, label %if.then40.i, label %sw.epilog.i.if.end9_crit_edge

sw.epilog.i.if.end9_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then40.i:                                      ; preds = %sw.epilog.i
  %sext.i = shl i32 %div28.i, 16
  %conv30.i = ashr exact i32 %sext.i, 16
  %conv41.i = trunc i32 %spec.select.i to i16
  %sys_clock_freq.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 20
  %114 = ptrtoint ptr %sys_clock_freq.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv41.i, ptr %sys_clock_freq.i, align 4
  %conv44.i = sext i16 %111 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv30.i, i32 %conv44.i)
  %cmp45.not.i = icmp eq i32 %conv30.i, %conv44.i
  br i1 %cmp45.not.i, label %if.then40.i.if.end55.i_crit_edge, label %if.then47.i

if.then40.i.if.end55.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.then47.i:                                      ; preds = %if.then40.i
  %osc_deviation.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 10
  %115 = ptrtoint ptr %osc_deviation.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %osc_deviation.i, align 4
  %tobool48.not.i = icmp eq ptr %116, null
  br i1 %tobool48.not.i, label %if.then47.i.if.end55.i_crit_edge, label %if.then49.i

if.then47.i.if.end55.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.i

if.then49.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 6
  %117 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %priv.i, align 4
  %call52.i = call signext i16 %116(ptr noundef %118, i16 noundef signext %conv29.i, i32 noundef 1) #7
  %119 = ptrtoint ptr %osc_clock_deviation.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv29.i, ptr %osc_clock_deviation.i, align 2
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then49.i, %if.then47.i.if.end55.i_crit_edge, %if.then40.i.if.end55.i_crit_edge
  %120 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i.i) #7
  %122 = getelementptr inbounds [6 x i8], ptr %mm.i.i, i32 0, i32 1
  %123 = getelementptr inbounds [6 x i8], ptr %mm.i.i, i32 0, i32 2
  %124 = ptrtoint ptr %mm.i.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -24, ptr %mm.i.i, align 1
  %125 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 -126, ptr %122, align 1
  %126 = ptrtoint ptr %123 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 0, ptr %123, align 1
  %127 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %129 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 458751, ptr %129, align 4
  %conv.i.i33.i = zext i8 %121 to i16
  %131 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv.i.i33.i, ptr %msg.i.i.i, align 4
  %flags.i.i34.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %flags.i.i34.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 0, ptr %flags.i.i34.i, align 2
  %buf.i.i35.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %133 = ptrtoint ptr %buf.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %mm.i.i, ptr %buf.i.i35.i, align 4
  %call.i.i36.i = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i36.i)
  %cmp.not.i.not.i37.not.i = icmp eq i32 %call.i.i36.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i.i) #7
  br i1 %cmp.not.i.not.i37.not.i, label %if.end60.i, label %if.end55.i.if.end9_crit_edge

if.end55.i.if.end9_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end60.i:                                       ; preds = %if.end55.i
  %current_fe_if_incr.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 31
  %134 = ptrtoint ptr %current_fe_if_incr.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %current_fe_if_incr.i, align 4
  %136 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i39.i) #7
  %138 = getelementptr inbounds [6 x i8], ptr %mm.i39.i, i32 0, i32 1
  %139 = getelementptr inbounds [6 x i8], ptr %mm.i39.i, i32 0, i32 2
  %140 = getelementptr inbounds [6 x i8], ptr %mm.i39.i, i32 0, i32 3
  %141 = getelementptr inbounds [6 x i8], ptr %mm.i39.i, i32 0, i32 4
  %142 = getelementptr inbounds [6 x i8], ptr %mm.i39.i, i32 0, i32 5
  %143 = ptrtoint ptr %mm.i39.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -114, ptr %mm.i39.i, align 1
  %144 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -126, ptr %138, align 1
  %145 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %139, align 1
  %146 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %140, align 1
  %conv15.i41.i = trunc i16 %135 to i8
  %147 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv15.i41.i, ptr %141, align 1
  %148 = lshr i16 %135, 8
  %conv20.i42.i = trunc i16 %148 to i8
  %149 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv20.i42.i, ptr %142, align 1
  %150 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i38.i) #7
  %152 = getelementptr inbounds i8, ptr %msg.i.i38.i, i32 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 458751, ptr %152, align 4
  %conv.i.i44.i = zext i8 %137 to i16
  %154 = ptrtoint ptr %msg.i.i38.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv.i.i44.i, ptr %msg.i.i38.i, align 4
  %flags.i.i45.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i38.i, i32 0, i32 1
  %155 = ptrtoint ptr %flags.i.i45.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 0, ptr %flags.i.i45.i, align 2
  %buf.i.i46.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i38.i, i32 0, i32 3
  %156 = ptrtoint ptr %buf.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %mm.i39.i, ptr %buf.i.i46.i, align 4
  %call.i.i47.i = call i32 @i2c_transfer(ptr noundef %151, ptr noundef nonnull %msg.i.i38.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i47.i)
  %cmp.not.i.not.i48.not.i = icmp eq i32 %call.i.i47.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i38.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i39.i) #7
  br i1 %cmp.not.i.not.i48.not.i, label %if.end65.i, label %if.end60.i.if.end9_crit_edge

if.end60.i.if.end9_crit_edge:                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end65.i:                                       ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  %cscd_state.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 18
  %157 = ptrtoint ptr %cscd_state.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 2, ptr %cscd_state.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end65.i, %if.end60.i.if.end9_crit_edge, %if.end55.i.if.end9_crit_edge, %sw.epilog.i.if.end9_crit_edge, %if.end18.i.if.end9_crit_edge, %if.else.i.if.end9_crit_edge, %if.then5.i.if.end9_crit_edge, %Read32.exit30.thread.i, %Read32.exit.thread.i, %if.end4.if.end9_crit_edge
  %158 = and i16 %conv15.i, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %158)
  %cmp12 = icmp eq i16 %158, 3
  br i1 %cmp12, label %if.then14, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %pLockStatus to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %pLockStatus, align 4
  %or15 = or i32 %160, 2
  store i32 %or15, ptr %pLockStatus, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end9.if.end16_crit_edge
  %161 = and i16 %conv15.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %161)
  %cmp19.not = icmp eq i16 %161, 0
  br i1 %cmp19.not, label %if.end16.cleanup_crit_edge, label %if.then21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %162 = ptrtoint ptr %pLockStatus to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %pLockStatus, align 4
  %or22 = or i32 %163, 4
  store i32 %or22, ptr %pLockStatus, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end16.cleanup_crit_edge, %Read16.exit.cleanup_crit_edge, %Read16.exit.thread
  %retval.0 = phi i32 [ -1, %Read16.exit.thread ], [ 0, %Read16.exit.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @SC_SendCommand(ptr nocapture noundef readonly %state, i16 noundef zeroext %cmd) unnamed_addr #0 align 64 {
entry:
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i = alloca [4 x i8], align 1
  %mm2.i = alloca [2 x i8], align 1
  %msgs.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %mm1.i.i = alloca [4 x i8], align 1
  %mm2.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %mm.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demod_address.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i) #7
  %2 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 5
  %7 = ptrtoint ptr %mm.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 67, ptr %mm.i, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -126, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %4, align 1
  %conv15.i = trunc i16 %cmd to i8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv15.i, ptr %5, align 1
  %12 = lshr i16 %cmd, 8
  %conv20.i = trunc i16 %12 to i8
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv20.i, ptr %6, align 1
  %i2c.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %14 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %16 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 458751, ptr %16, align 4
  %conv.i.i = zext i8 %1 to i16
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mm.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.not.i.not = icmp eq i32 %call.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i) #7
  br i1 %cmp.not.i.not.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = getelementptr inbounds [4 x i8], ptr %mm1.i.i, i32 0, i32 1
  %22 = getelementptr inbounds [4 x i8], ptr %mm1.i.i, i32 0, i32 2
  %23 = getelementptr inbounds [4 x i8], ptr %mm1.i.i, i32 0, i32 3
  %24 = getelementptr inbounds [2 x i8], ptr %mm2.i.i, i32 0, i32 1
  %25 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1
  %flags5.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 1
  %len6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 2
  %buf8.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %if.end
  %i.07.i = phi i32 [ 0, %if.end ], [ %i.07.i.be, %for.body.i.backedge ]
  %26 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i.i) #7
  %28 = ptrtoint ptr %mm1.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 67, ptr %mm1.i.i, align 1
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -126, ptr %21, align 1
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %22, align 1
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i.i) #7
  %32 = ptrtoint ptr %mm2.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %mm2.i.i, align 1, !annotation !75
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %24, align 1, !annotation !75
  %34 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i) #7
  %36 = call ptr @memset(ptr %25, i32 255, i32 16)
  %conv.i.i.i = zext i8 %27 to i16
  %37 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i.i.i, ptr %msgs.i.i.i, align 4
  %38 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i.i.i, align 2
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 4, ptr %25, align 4
  %40 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %mm1.i.i, ptr %buf.i.i.i, align 4
  %41 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i.i.i, ptr %arrayinit.element.i.i.i, align 4
  %42 = ptrtoint ptr %flags5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %flags5.i.i.i, align 2
  %43 = ptrtoint ptr %len6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 2, ptr %len6.i.i.i, align 4
  %44 = ptrtoint ptr %buf8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %mm2.i.i, ptr %buf8.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msgs.i.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i32 %call.i.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #7
  br i1 %cmp.not.i.not.i.i, label %Read16.exit.i, label %Read16.exit.thread.i

Read16.exit.thread.i:                             ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i) #7
  %add.i.old = add nuw nsw i32 %i.07.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %add.i.old)
  %exitcond.not.i.old = icmp eq i32 %add.i.old, 1000
  br i1 %exitcond.not.i.old, label %Read16.exit.thread.i.SC_WaitForReady.exit_crit_edge, label %Read16.exit.thread.i.for.body.i.backedge_crit_edge

Read16.exit.thread.i.for.body.i.backedge_crit_edge: ; preds = %Read16.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.backedge

Read16.exit.thread.i.SC_WaitForReady.exit_crit_edge: ; preds = %Read16.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %SC_WaitForReady.exit

for.body.i.backedge:                              ; preds = %Read16.exit.i.for.body.i.backedge_crit_edge, %Read16.exit.thread.i.for.body.i.backedge_crit_edge
  %i.07.i.be = phi i32 [ %add.i.old, %Read16.exit.thread.i.for.body.i.backedge_crit_edge ], [ %add.i, %Read16.exit.i.for.body.i.backedge_crit_edge ]
  br label %for.body.i

Read16.exit.i:                                    ; preds = %for.body.i
  %45 = ptrtoint ptr %mm2.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mm2.i.i, align 1
  %conv22.i.i = zext i8 %46 to i32
  %47 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %24, align 1
  %conv24.i.i = zext i8 %48 to i32
  %shl25.i.i = shl nuw nsw i32 %conv24.i.i, 8
  %or26.i.i = or i32 %shl25.i.i, %conv22.i.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or26.i.i)
  %cmp1.i = icmp eq i32 %or26.i.i, 0
  %add.i = add nuw nsw i32 %i.07.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %add.i)
  %exitcond.not.i = icmp eq i32 %add.i, 1000
  %or.cond = select i1 %cmp1.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %Read16.exit.i.SC_WaitForReady.exit_crit_edge, label %Read16.exit.i.for.body.i.backedge_crit_edge

Read16.exit.i.for.body.i.backedge_crit_edge:      ; preds = %Read16.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.backedge

Read16.exit.i.SC_WaitForReady.exit_crit_edge:     ; preds = %Read16.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %SC_WaitForReady.exit

SC_WaitForReady.exit:                             ; preds = %Read16.exit.i.SC_WaitForReady.exit_crit_edge, %Read16.exit.thread.i.SC_WaitForReady.exit_crit_edge
  %49 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mm1.i) #7
  %51 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 1
  %52 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 2
  %53 = getelementptr inbounds [4 x i8], ptr %mm1.i, i32 0, i32 3
  %54 = ptrtoint ptr %mm1.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 66, ptr %mm1.i, align 1
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -126, ptr %51, align 1
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %52, align 1
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mm2.i) #7
  %58 = ptrtoint ptr %mm2.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %mm2.i, align 1, !annotation !75
  %59 = getelementptr inbounds [2 x i8], ptr %mm2.i, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %59, align 1, !annotation !75
  %61 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %63 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %64 = call ptr @memset(ptr %63, i32 255, i32 16)
  %conv.i.i17 = zext i8 %50 to i16
  %65 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i.i17, ptr %msgs.i.i, align 4
  %flags.i.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i.i18 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i.i18, align 2
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 4, ptr %63, align 4
  %buf.i.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %buf.i.i19 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %mm1.i, ptr %buf.i.i19, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %69 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i.i17, ptr %arrayinit.element.i.i, align 4
  %flags5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %70 = ptrtoint ptr %flags5.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %flags5.i.i, align 2
  %len6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %71 = ptrtoint ptr %len6.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 2, ptr %len6.i.i, align 4
  %buf8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %72 = ptrtoint ptr %buf8.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %mm2.i, ptr %buf8.i.i, align 4
  %call.i.i20 = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i20)
  %cmp.not.i.not.i21 = icmp eq i32 %call.i.i20, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  br i1 %cmp.not.i.not.i21, label %Read16.exit, label %Read16.exit.thread

Read16.exit.thread:                               ; preds = %SC_WaitForReady.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  br label %do.end

Read16.exit:                                      ; preds = %SC_WaitForReady.exit
  %73 = ptrtoint ptr %mm2.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %mm2.i, align 1
  %conv15.i22 = zext i8 %74 to i16
  %75 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %59, align 1
  %conv17.i = zext i8 %76 to i16
  %shl.i = shl nuw i16 %conv17.i, 8
  %or18.i = or i16 %shl.i, %conv15.i22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mm2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mm1.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %or18.i)
  %cmp4 = icmp eq i16 %or18.i, -1
  br i1 %cmp4, label %Read16.exit.do.end_crit_edge, label %Read16.exit.cleanup_crit_edge

Read16.exit.cleanup_crit_edge:                    ; preds = %Read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

Read16.exit.do.end_crit_edge:                     ; preds = %Read16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %Read16.exit.do.end_crit_edge, %Read16.exit.thread
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %Read16.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %do.end ], [ 0, %Read16.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @HI_CfgCommand(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  %msg.i.i81 = alloca %struct.i2c_msg, align 4
  %mm.i82 = alloca [6 x i8], align 1
  %msg.i.i71 = alloca %struct.i2c_msg, align 4
  %mm.i72 = alloca [6 x i8], align 1
  %msg.i.i59 = alloca %struct.i2c_msg, align 4
  %mm.i60 = alloca [6 x i8], align 1
  %msg.i.i47 = alloca %struct.i2c_msg, align 4
  %mm.i48 = alloca [6 x i8], align 1
  %msg.i.i35 = alloca %struct.i2c_msg, align 4
  %mm.i36 = alloca [6 x i8], align 1
  %msg.i.i25 = alloca %struct.i2c_msg, align 4
  %mm.i26 = alloca [6 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %mm.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %demod_address.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i) #7
  %2 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %mm.i, i32 0, i32 5
  %7 = ptrtoint ptr %mm.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 51, ptr %mm.i, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 66, ptr %2, align 1
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %3, align 1
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %4, align 1
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 115, ptr %5, align 1
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 57, ptr %6, align 1
  %i2c.i = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 5
  %13 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %15 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 458751, ptr %15, align 4
  %conv.i.i = zext i8 %1 to i16
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mm.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i) #7
  %hi_cfg_timing_div = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 12
  %20 = ptrtoint ptr %hi_cfg_timing_div to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hi_cfg_timing_div, align 2
  %22 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i26) #7
  %24 = getelementptr inbounds [6 x i8], ptr %mm.i26, i32 0, i32 1
  %25 = getelementptr inbounds [6 x i8], ptr %mm.i26, i32 0, i32 2
  %26 = getelementptr inbounds [6 x i8], ptr %mm.i26, i32 0, i32 3
  %27 = getelementptr inbounds [6 x i8], ptr %mm.i26, i32 0, i32 4
  %28 = getelementptr inbounds [6 x i8], ptr %mm.i26, i32 0, i32 5
  %29 = ptrtoint ptr %mm.i26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 52, ptr %mm.i26, align 1
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 66, ptr %24, align 1
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %25, align 1
  %32 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %26, align 1
  %conv15.i = trunc i16 %21 to i8
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv15.i, ptr %27, align 1
  %34 = lshr i16 %21, 8
  %conv20.i = trunc i16 %34 to i8
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv20.i, ptr %28, align 1
  %36 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i25) #7
  %38 = getelementptr inbounds i8, ptr %msg.i.i25, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 458751, ptr %38, align 4
  %conv.i.i29 = zext i8 %23 to i16
  %40 = ptrtoint ptr %msg.i.i25 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i.i29, ptr %msg.i.i25, align 4
  %flags.i.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i25, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i.i30 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i.i30, align 2
  %buf.i.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i25, i32 0, i32 3
  %42 = ptrtoint ptr %buf.i.i31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %mm.i26, ptr %buf.i.i31, align 4
  %call.i.i32 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i.i25, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i25) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i26) #7
  %hi_cfg_bridge_delay = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 13
  %43 = ptrtoint ptr %hi_cfg_bridge_delay to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %hi_cfg_bridge_delay, align 4
  %45 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i36) #7
  %47 = getelementptr inbounds [6 x i8], ptr %mm.i36, i32 0, i32 1
  %48 = getelementptr inbounds [6 x i8], ptr %mm.i36, i32 0, i32 2
  %49 = getelementptr inbounds [6 x i8], ptr %mm.i36, i32 0, i32 3
  %50 = getelementptr inbounds [6 x i8], ptr %mm.i36, i32 0, i32 4
  %51 = getelementptr inbounds [6 x i8], ptr %mm.i36, i32 0, i32 5
  %52 = ptrtoint ptr %mm.i36 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 53, ptr %mm.i36, align 1
  %53 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 66, ptr %47, align 1
  %54 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %48, align 1
  %55 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %49, align 1
  %conv15.i38 = trunc i16 %44 to i8
  %56 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv15.i38, ptr %50, align 1
  %57 = lshr i16 %44, 8
  %conv20.i39 = trunc i16 %57 to i8
  %58 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv20.i39, ptr %51, align 1
  %59 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i35) #7
  %61 = getelementptr inbounds i8, ptr %msg.i.i35, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 458751, ptr %61, align 4
  %conv.i.i41 = zext i8 %46 to i16
  %63 = ptrtoint ptr %msg.i.i35 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i.i41, ptr %msg.i.i35, align 4
  %flags.i.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i35, i32 0, i32 1
  %64 = ptrtoint ptr %flags.i.i42 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %flags.i.i42, align 2
  %buf.i.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i35, i32 0, i32 3
  %65 = ptrtoint ptr %buf.i.i43 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %mm.i36, ptr %buf.i.i43, align 4
  %call.i.i44 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %msg.i.i35, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i35) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i36) #7
  %hi_cfg_wakeup_key = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 14
  %66 = ptrtoint ptr %hi_cfg_wakeup_key to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %hi_cfg_wakeup_key, align 2
  %68 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i48) #7
  %70 = getelementptr inbounds [6 x i8], ptr %mm.i48, i32 0, i32 1
  %71 = getelementptr inbounds [6 x i8], ptr %mm.i48, i32 0, i32 2
  %72 = getelementptr inbounds [6 x i8], ptr %mm.i48, i32 0, i32 3
  %73 = getelementptr inbounds [6 x i8], ptr %mm.i48, i32 0, i32 4
  %74 = getelementptr inbounds [6 x i8], ptr %mm.i48, i32 0, i32 5
  %75 = ptrtoint ptr %mm.i48 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 54, ptr %mm.i48, align 1
  %76 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 66, ptr %70, align 1
  %77 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %71, align 1
  %78 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %72, align 1
  %conv15.i50 = trunc i16 %67 to i8
  %79 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv15.i50, ptr %73, align 1
  %80 = lshr i16 %67, 8
  %conv20.i51 = trunc i16 %80 to i8
  %81 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv20.i51, ptr %74, align 1
  %82 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i47) #7
  %84 = getelementptr inbounds i8, ptr %msg.i.i47, i32 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 458751, ptr %84, align 4
  %conv.i.i53 = zext i8 %69 to i16
  %86 = ptrtoint ptr %msg.i.i47 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i.i53, ptr %msg.i.i47, align 4
  %flags.i.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i47, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i.i54 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i.i54, align 2
  %buf.i.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i47, i32 0, i32 3
  %88 = ptrtoint ptr %buf.i.i55 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %mm.i48, ptr %buf.i.i55, align 4
  %call.i.i56 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msg.i.i47, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i47) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i48) #7
  %hi_cfg_ctrl = getelementptr inbounds %struct.drxd_state, ptr %state, i32 0, i32 15
  %89 = ptrtoint ptr %hi_cfg_ctrl to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %hi_cfg_ctrl, align 4
  %91 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i60) #7
  %93 = getelementptr inbounds [6 x i8], ptr %mm.i60, i32 0, i32 1
  %94 = getelementptr inbounds [6 x i8], ptr %mm.i60, i32 0, i32 2
  %95 = getelementptr inbounds [6 x i8], ptr %mm.i60, i32 0, i32 3
  %96 = getelementptr inbounds [6 x i8], ptr %mm.i60, i32 0, i32 4
  %97 = getelementptr inbounds [6 x i8], ptr %mm.i60, i32 0, i32 5
  %98 = ptrtoint ptr %mm.i60 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 55, ptr %mm.i60, align 1
  %99 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 66, ptr %93, align 1
  %100 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %94, align 1
  %101 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %95, align 1
  %conv15.i62 = trunc i16 %90 to i8
  %102 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv15.i62, ptr %96, align 1
  %103 = lshr i16 %90, 8
  %conv20.i63 = trunc i16 %103 to i8
  %104 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv20.i63, ptr %97, align 1
  %105 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i59) #7
  %107 = getelementptr inbounds i8, ptr %msg.i.i59, i32 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 458751, ptr %107, align 4
  %conv.i.i65 = zext i8 %92 to i16
  %109 = ptrtoint ptr %msg.i.i59 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv.i.i65, ptr %msg.i.i59, align 4
  %flags.i.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i59, i32 0, i32 1
  %110 = ptrtoint ptr %flags.i.i66 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %flags.i.i66, align 2
  %buf.i.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i59, i32 0, i32 3
  %111 = ptrtoint ptr %buf.i.i67 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %mm.i60, ptr %buf.i.i67, align 4
  %call.i.i68 = call i32 @i2c_transfer(ptr noundef %106, ptr noundef nonnull %msg.i.i59, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i59) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i60) #7
  %112 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i72) #7
  %114 = getelementptr inbounds [6 x i8], ptr %mm.i72, i32 0, i32 1
  %115 = getelementptr inbounds [6 x i8], ptr %mm.i72, i32 0, i32 2
  %116 = getelementptr inbounds [6 x i8], ptr %mm.i72, i32 0, i32 3
  %117 = getelementptr inbounds [6 x i8], ptr %mm.i72, i32 0, i32 4
  %118 = getelementptr inbounds [6 x i8], ptr %mm.i72, i32 0, i32 5
  %119 = ptrtoint ptr %mm.i72 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 51, ptr %mm.i72, align 1
  %120 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 66, ptr %114, align 1
  %121 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %115, align 1
  %122 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %116, align 1
  %123 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 115, ptr %117, align 1
  %124 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 57, ptr %118, align 1
  %125 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i71) #7
  %127 = getelementptr inbounds i8, ptr %msg.i.i71, i32 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 458751, ptr %127, align 4
  %conv.i.i75 = zext i8 %113 to i16
  %129 = ptrtoint ptr %msg.i.i71 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv.i.i75, ptr %msg.i.i71, align 4
  %flags.i.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i71, i32 0, i32 1
  %130 = ptrtoint ptr %flags.i.i76 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %flags.i.i76, align 2
  %buf.i.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i71, i32 0, i32 3
  %131 = ptrtoint ptr %buf.i.i77 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %mm.i72, ptr %buf.i.i77, align 4
  %call.i.i78 = call i32 @i2c_transfer(ptr noundef %126, ptr noundef nonnull %msg.i.i71, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i71) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i72) #7
  %132 = ptrtoint ptr %hi_cfg_ctrl to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %hi_cfg_ctrl, align 4
  %134 = and i16 %133, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %134)
  %cmp.not = icmp eq i16 %134, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %demod_address.i, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mm.i82) #7
  %137 = getelementptr inbounds [6 x i8], ptr %mm.i82, i32 0, i32 1
  %138 = getelementptr inbounds [6 x i8], ptr %mm.i82, i32 0, i32 2
  %139 = getelementptr inbounds [6 x i8], ptr %mm.i82, i32 0, i32 3
  %140 = getelementptr inbounds [6 x i8], ptr %mm.i82, i32 0, i32 4
  %141 = getelementptr inbounds [6 x i8], ptr %mm.i82, i32 0, i32 5
  %142 = ptrtoint ptr %mm.i82 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 50, ptr %mm.i82, align 1
  %143 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 66, ptr %137, align 1
  %144 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %138, align 1
  %145 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %139, align 1
  %146 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 3, ptr %140, align 1
  %147 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %141, align 1
  %148 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i81) #7
  %150 = getelementptr inbounds i8, ptr %msg.i.i81, i32 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 458751, ptr %150, align 4
  %conv.i.i85 = zext i8 %136 to i16
  %152 = ptrtoint ptr %msg.i.i81 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv.i.i85, ptr %msg.i.i81, align 4
  %flags.i.i86 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i81, i32 0, i32 1
  %153 = ptrtoint ptr %flags.i.i86 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 0, ptr %flags.i.i86, align 2
  %buf.i.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i81, i32 0, i32 3
  %154 = ptrtoint ptr %buf.i.i87 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %mm.i82, ptr %buf.i.i87, align 4
  %call.i.i88 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %msg.i.i81, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i88)
  %cmp.not.i.not.i89 = icmp ne i32 %call.i.i88, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i81) #7
  %..i90 = sext i1 %cmp.not.i.not.i89 to i32
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mm.i82) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call fastcc i32 @HI_Command(ptr noundef %state, i16 noundef zeroext 3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %status.0 = phi i32 [ %..i90, %if.then ], [ %call9, %if.else ]
  call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 %status.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !17, !18, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !59, !60, !61, !63, !64, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @drxd_attach.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 2923, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 2938, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @drxd_attach._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @drxd_attach._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__ksymtab_drxd_attach, !10, !"__ksymtab_drxd_attach", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 2942, i32 1}
!11 = !{ptr @__UNIQUE_ID_description290, !12, !"__UNIQUE_ID_description290", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 2944, i32 1}
!13 = !{ptr @__UNIQUE_ID_author291, !14, !"__UNIQUE_ID_author291", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 2945, i32 1}
!15 = !{ptr @__UNIQUE_ID_file292, !16, !"__UNIQUE_ID_file292", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 2946, i32 1}
!17 = !{ptr @__UNIQUE_ID_license293, !16, !"__UNIQUE_ID_license293", i1 false, i1 false}
!18 = !{ptr @drxd_ops, !19, !"drxd_ops", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 2876, i32 38}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 1493, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @SetDeviceTypeId._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @SetDeviceTypeId._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 1500, i32 4}
!27 = !{ptr @SetDeviceTypeId._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @SetDeviceTypeId._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 1503, i32 4}
!31 = !{ptr @SetDeviceTypeId._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @SetDeviceTypeId._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 1540, i32 28}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 1550, i32 28}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 895, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @load_firmware._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @load_firmware._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 294, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @write_chunk._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @write_chunk._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 1132, i32 3}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @InitCC._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @InitCC._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @SetCfgIfAgc.slowIncrDecLUT, !53, !"slowIncrDecLUT", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 629, i32 22}
!54 = !{ptr @SetCfgIfAgc.fastIncrDecLUT, !55, !"fastIncrDecLUT", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 631, i32 22}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 531, i32 3}
!58 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @DRX_GetLockStatus._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @DRX_GetLockStatus._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/drxd_hard.c", i32 1309, i32 3}
!63 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @SC_SendCommand._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @SC_SendCommand._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2148673803, i64 2148674083, i64 2148674417, i64 2148674751}
