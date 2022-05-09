; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/bcm3510.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/bcm3510.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bcm3510_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_bcm3510_attach\09\09\09\09"
module asm "\09.long\09__crc_bcm3510_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcm3510_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22bcm3510_attach\22\09\09\09\09\09"
module asm "__kstrtabns_bcm3510_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%union.bcm3510_register_value = type { i8 }
%struct.bcm3510_state = type { ptr, ptr, %struct.dvb_frontend, %struct.mutex, i8, i32, i32, %struct.bcm3510_hab_cmd_status1, %struct.bcm3510_hab_cmd_status2 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bcm3510_hab_cmd_status1 = type { %struct.anon.91, %struct.anon.92, %struct.anon.93, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.91 = type { i8 }
%struct.anon.92 = type { i8 }
%struct.anon.93 = type { i8 }
%struct.bcm3510_hab_cmd_status2 = type { %struct.anon.94, %struct.anon.95, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.anon.96, i8, i8, i8 }
%struct.anon.94 = type { i8 }
%struct.anon.95 = type { i8 }
%struct.anon.96 = type { i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.bcm3510_hab_cmd_get_version_info = type { i8, i8, i8, i8 }
%struct.bcm3510_hab_cmd_set_agc = type { i8 }
%struct.bcm3510_config = type { i8, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.bcm3510_hab_cmd_tune = type { i8, i8, i8, i8, [16 x %struct.bcm3510_hab_cmd_tune_ctrl_data_pair] }
%struct.bcm3510_hab_cmd_tune_ctrl_data_pair = type { %struct.anon.111, i8 }
%struct.anon.111 = type { i8 }
%struct.bcm3510_hab_cmd_ext_acquire = type { %struct.anon.109, %struct.anon.110, i8, i8, i8, i8, i8, i8 }
%struct.anon.109 = type { i8 }
%struct.anon.110 = type { i8 }
%struct.bcm3510_hab_cmd_bert_control = type { i8 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__param_str_debug = internal constant [14 x i8] c"bcm3510.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"bcm3510.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [64 x i8] c"bcm3510.parm=debug:set debugging level (1=info,2=i2c (|-able)).\00", section ".modinfo", align 1
@bcm3510_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Broadcom BCM3510 VSB/QAM frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 803000000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6351534 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @bcm3510_release, ptr null, ptr @bcm3510_init, ptr @bcm3510_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm3510_set_frontend, ptr @bcm3510_get_tune_settings, ptr null, ptr @bcm3510_read_status, ptr @bcm3510_read_ber, ptr @bcm3510_read_signal_strength, ptr @bcm3510_read_snr, ptr @bcm3510_read_unc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@bcm3510_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&state->hab_mutex\00", [46 x i8] zeroinitializer }, align 32
@bcm3510_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Revision: 0x%1x, Layer: 0x%1x.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm3510_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/bcm3510.c\00", [58 x i8] zeroinitializer }, align 32
@bcm3510_attach._entry_ptr = internal global ptr @bcm3510_attach._entry, section ".printk_index", align 4
@bcm3510_attach._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016bcm3510: Revision: 0x%1x, Layer: 0x%1x.\0A\00", [53 x i8] zeroinitializer }, align 32
@bcm3510_attach._entry_ptr.6 = internal global ptr @bcm3510_attach._entry.4, section ".printk_index", align 4
@__kstrtab_bcm3510_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcm3510_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_bcm3510_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcm3510_attach to i32), ptr @__kstrtab_bcm3510_attach, ptr @__kstrtabns_bcm3510_attach }, section "___ksymtab+bcm3510_attach", align 4
@__UNIQUE_ID_description292 = internal constant [105 x i8] c"bcm3510.description=Broadcom BCM3510 ATSC (8VSB/16VSB & ITU J83 AnnexB FEC QAM64/256) demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [63 x i8] c"bcm3510.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"bcm3510.file=drivers/media/dvb-frontends/bcm3510\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"bcm3510.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bcm3510_readbytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: i2c read error (addr %02x, reg %02x, err == %i)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm3510_readbytes\00", [46 x i8] zeroinitializer }, align 32
@bcm3510_readbytes._entry_ptr = internal global ptr @bcm3510_readbytes._entry, section ".printk_index", align 4
@bcm3510_readbytes._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c rd %02x: \00", [18 x i8] zeroinitializer }, align 32
@bcm3510_readbytes._entry_ptr.11 = internal global ptr @bcm3510_readbytes._entry.9, section ".printk_index", align 4
@bcm3510_readbytes._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.3, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@bcm3510_readbytes._entry_ptr.14 = internal global ptr @bcm3510_readbytes._entry.12, section ".printk_index", align 4
@bcm3510_readbytes._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.3, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@bcm3510_readbytes._entry_ptr.17 = internal global ptr @bcm3510_readbytes._entry.15, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcm3510_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reset timed out\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm3510_reset\00", [18 x i8] zeroinitializer }, align 32
@bcm3510_reset._entry_ptr = internal global ptr @bcm3510_reset._entry, section ".printk_index", align 4
@bcm3510_writebytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c wr %02x: \00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm3510_writebytes\00", [45 x i8] zeroinitializer }, align 32
@bcm3510_writebytes._entry_ptr = internal global ptr @bcm3510_writebytes._entry, section ".printk_index", align 4
@bcm3510_writebytes._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.21, ptr @.str.3, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bcm3510_writebytes._entry_ptr.23 = internal global ptr @bcm3510_writebytes._entry.22, section ".printk_index", align 4
@bcm3510_writebytes._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.21, ptr @.str.3, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bcm3510_writebytes._entry_ptr.25 = internal global ptr @bcm3510_writebytes._entry.24, section ".printk_index", align 4
@bcm3510_writebytes._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.3, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: i2c write error (addr %02x, reg %02x, err == %i)\0A\00", [42 x i8] zeroinitializer }, align 32
@bcm3510_writebytes._entry_ptr.28 = internal global ptr @bcm3510_writebytes._entry.26, section ".printk_index", align 4
@bcm3510_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"JDEC: %02x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm3510_init\00", [19 x i8] zeroinitializer }, align 32
@bcm3510_init._entry_ptr = internal global ptr @bcm3510_init._entry, section ".printk_index", align 4
@bcm3510_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 773, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"attempting to download firmware\0A\00", [63 x i8] zeroinitializer }, align 32
@bcm3510_init._entry_ptr.33 = internal global ptr @bcm3510_init._entry.31, section ".printk_index", align 4
@bcm3510_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.3, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"firmware is loaded\0A\00", [44 x i8] zeroinitializer }, align 32
@bcm3510_init._entry_ptr.36 = internal global ptr @bcm3510_init._entry.34, section ".printk_index", align 4
@bcm3510_init_cold._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"AP is already running - firmware already loaded.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm3510_init_cold\00", [46 x i8] zeroinitializer }, align 32
@bcm3510_init_cold._entry_ptr = internal global ptr @bcm3510_init_cold._entry, section ".printk_index", align 4
@bcm3510_init_cold._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reset?\0A\00", [24 x i8] zeroinitializer }, align 32
@bcm3510_init_cold._entry_ptr.41 = internal global ptr @bcm3510_init_cold._entry.39, section ".printk_index", align 4
@bcm3510_init_cold._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.3, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tristate?\0A\00", [21 x i8] zeroinitializer }, align 32
@bcm3510_init_cold._entry_ptr.44 = internal global ptr @bcm3510_init_cold._entry.42, section ".printk_index", align 4
@bcm3510_init_cold._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.3, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"firmware?\0A\00", [21 x i8] zeroinitializer }, align 32
@bcm3510_init_cold._entry_ptr.47 = internal global ptr @bcm3510_init_cold._entry.45, section ".printk_index", align 4
@bcm3510_download_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 638, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"requesting firmware\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcm3510_download_firmware\00", [38 x i8] zeroinitializer }, align 32
@bcm3510_download_firmware._entry_ptr = internal global ptr @bcm3510_download_firmware._entry, section ".printk_index", align 4
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb-fe-bcm3510-01.fw\00", [43 x i8] zeroinitializer }, align 32
@bcm3510_download_firmware._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.49, ptr @.str.3, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013bcm3510: could not load firmware (%s): %d\0A\00", [51 x i8] zeroinitializer }, align 32
@bcm3510_download_firmware._entry_ptr.53 = internal global ptr @bcm3510_download_firmware._entry.51, section ".printk_index", align 4
@bcm3510_download_firmware._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.49, ptr @.str.3, i32 643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"got firmware: %zu\0A\00", [45 x i8] zeroinitializer }, align 32
@bcm3510_download_firmware._entry_ptr.56 = internal global ptr @bcm3510_download_firmware._entry.54, section ".printk_index", align 4
@bcm3510_download_firmware._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.49, ptr @.str.3, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"firmware chunk, addr: 0x%04x, len: 0x%04x, total length: 0x%04zx\0A\00", [62 x i8] zeroinitializer }, align 32
@bcm3510_download_firmware._entry_ptr.59 = internal global ptr @bcm3510_download_firmware._entry.57, section ".printk_index", align 4
@bcm3510_download_firmware._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.49, ptr @.str.3, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013bcm3510: firmware download failed: %d\0A\0A\00", [54 x i8] zeroinitializer }, align 32
@bcm3510_download_firmware._entry_ptr.62 = internal global ptr @bcm3510_download_firmware._entry.60, section ".printk_index", align 4
@bcm3510_download_firmware._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.49, ptr @.str.3, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"firmware download successfully completed\0A\00", [54 x i8] zeroinitializer }, align 32
@bcm3510_download_firmware._entry_ptr.65 = internal global ptr @bcm3510_download_firmware._entry.63, section ".printk_index", align 4
@bcm3510_clear_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reset clear timed out\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm3510_clear_reset\00", [44 x i8] zeroinitializer }, align 32
@bcm3510_clear_reset._entry_ptr = internal global ptr @bcm3510_clear_reset._entry, section ".printk_index", align 4
@bcm3510_check_firmware_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Version information: 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bcm3510_check_firmware_version\00", [33 x i8] zeroinitializer }, align 32
@bcm3510_check_firmware_version._entry_ptr = internal global ptr @bcm3510_check_firmware_version._entry, section ".printk_index", align 4
@bcm3510_check_firmware_version._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.3, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"version check failed\0A\00", [42 x i8] zeroinitializer }, align 32
@bcm3510_check_firmware_version._entry_ptr.72 = internal global ptr @bcm3510_check_firmware_version._entry.70, section ".printk_index", align 4
@bcm3510_do_hab_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"do_hab_cmd: ilen=%d is too big!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm3510_do_hab_cmd\00", [45 x i8] zeroinitializer }, align 32
@bcm3510_do_hab_cmd._entry_ptr = internal global ptr @bcm3510_do_hab_cmd._entry, section ".printk_index", align 4
@bcm3510_do_hab_cmd._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.3, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"do_hab_cmd: olen=%d is too big!\0A\00", [63 x i8] zeroinitializer }, align 32
@bcm3510_do_hab_cmd._entry_ptr.77 = internal global ptr @bcm3510_do_hab_cmd._entry.75, section ".printk_index", align 4
@bcm3510_do_hab_cmd._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.74, ptr @.str.3, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hab snd: \00", [22 x i8] zeroinitializer }, align 32
@bcm3510_do_hab_cmd._entry_ptr.80 = internal global ptr @bcm3510_do_hab_cmd._entry.78, section ".printk_index", align 4
@bcm3510_do_hab_cmd._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.74, ptr @.str.3, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bcm3510_do_hab_cmd._entry_ptr.82 = internal global ptr @bcm3510_do_hab_cmd._entry.81, section ".printk_index", align 4
@bcm3510_do_hab_cmd._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.74, ptr @.str.3, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bcm3510_do_hab_cmd._entry_ptr.84 = internal global ptr @bcm3510_do_hab_cmd._entry.83, section ".printk_index", align 4
@bcm3510_do_hab_cmd._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.74, ptr @.str.3, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hab get: \00", [22 x i8] zeroinitializer }, align 32
@bcm3510_do_hab_cmd._entry_ptr.87 = internal global ptr @bcm3510_do_hab_cmd._entry.85, section ".printk_index", align 4
@bcm3510_do_hab_cmd._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.74, ptr @.str.3, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bcm3510_do_hab_cmd._entry_ptr.89 = internal global ptr @bcm3510_do_hab_cmd._entry.88, section ".printk_index", align 4
@bcm3510_do_hab_cmd._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.74, ptr @.str.3, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bcm3510_do_hab_cmd._entry_ptr.91 = internal global ptr @bcm3510_do_hab_cmd._entry.90, section ".printk_index", align 4
@bcm3510_hab_send_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"HAB is running already - clearing it.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm3510_hab_send_request\00", [39 x i8] zeroinitializer }, align 32
@bcm3510_hab_send_request._entry_ptr = internal global ptr @bcm3510_hab_send_request._entry, section ".printk_index", align 4
@bcm3510_hab_send_request._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.3, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"waiting for HAB to complete\0A\00", [35 x i8] zeroinitializer }, align 32
@bcm3510_hab_send_request._entry_ptr.96 = internal global ptr @bcm3510_hab_send_request._entry.94, section ".printk_index", align 4
@bcm3510_hab_send_request._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.3, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"send_request execution timed out.\0A\00", [61 x i8] zeroinitializer }, align 32
@bcm3510_hab_send_request._entry_ptr.99 = internal global ptr @bcm3510_hab_send_request._entry.97, section ".printk_index", align 4
@bcm3510_set_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%dkHz:\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm3510_set_freq\00", [47 x i8] zeroinitializer }, align 32
@bcm3510_set_freq._entry_ptr = internal global ptr @bcm3510_set_freq._entry, section ".printk_index", align 4
@bcm3510_set_freq._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.3, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" BC1_2_3_4: %x, N: %x A: %x\0A\00", [35 x i8] zeroinitializer }, align 32
@bcm3510_set_freq._entry_ptr.104 = internal global ptr @bcm3510_set_freq._entry.102, section ".printk_index", align 4
@bcm3510_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.3, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"real_status: %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm3510_read_status\00", [44 x i8] zeroinitializer }, align 32
@bcm3510_read_status._entry_ptr = internal global ptr @bcm3510_read_status._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 11]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@__sancov_gen_cov_switch_values.108 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 7, i64 8]
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 66, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"bcm3510_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 839, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 816, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 821, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 827, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 115, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 119, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 120, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 121, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 698, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 90, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 91, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 92, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 96, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 769, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 773, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 778, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 735, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 739, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 743, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 749, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 638, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 639, i32 51 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 640, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 643, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 649, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 651, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 657, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 722, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 666, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 674, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 211, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 216, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 224, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 225, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 226, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 235, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 236, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 237, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 165, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 192, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 201, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 460, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 488, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.392 = private constant [41 x i8] c"../drivers/media/dvb-frontends/bcm3510.c\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 312, i32 2 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_bcm3510_attach, ptr @__param_debug, ptr @bcm3510_attach._entry, ptr @bcm3510_attach._entry.4, ptr @bcm3510_attach._entry_ptr, ptr @bcm3510_attach._entry_ptr.6, ptr @bcm3510_check_firmware_version._entry, ptr @bcm3510_check_firmware_version._entry.70, ptr @bcm3510_check_firmware_version._entry_ptr, ptr @bcm3510_check_firmware_version._entry_ptr.72, ptr @bcm3510_clear_reset._entry, ptr @bcm3510_clear_reset._entry_ptr, ptr @bcm3510_do_hab_cmd._entry, ptr @bcm3510_do_hab_cmd._entry.75, ptr @bcm3510_do_hab_cmd._entry.78, ptr @bcm3510_do_hab_cmd._entry.81, ptr @bcm3510_do_hab_cmd._entry.83, ptr @bcm3510_do_hab_cmd._entry.85, ptr @bcm3510_do_hab_cmd._entry.88, ptr @bcm3510_do_hab_cmd._entry.90, ptr @bcm3510_do_hab_cmd._entry_ptr, ptr @bcm3510_do_hab_cmd._entry_ptr.77, ptr @bcm3510_do_hab_cmd._entry_ptr.80, ptr @bcm3510_do_hab_cmd._entry_ptr.82, ptr @bcm3510_do_hab_cmd._entry_ptr.84, ptr @bcm3510_do_hab_cmd._entry_ptr.87, ptr @bcm3510_do_hab_cmd._entry_ptr.89, ptr @bcm3510_do_hab_cmd._entry_ptr.91, ptr @bcm3510_download_firmware._entry, ptr @bcm3510_download_firmware._entry.51, ptr @bcm3510_download_firmware._entry.54, ptr @bcm3510_download_firmware._entry.57, ptr @bcm3510_download_firmware._entry.60, ptr @bcm3510_download_firmware._entry.63, ptr @bcm3510_download_firmware._entry_ptr, ptr @bcm3510_download_firmware._entry_ptr.53, ptr @bcm3510_download_firmware._entry_ptr.56, ptr @bcm3510_download_firmware._entry_ptr.59, ptr @bcm3510_download_firmware._entry_ptr.62, ptr @bcm3510_download_firmware._entry_ptr.65, ptr @bcm3510_hab_send_request._entry, ptr @bcm3510_hab_send_request._entry.94, ptr @bcm3510_hab_send_request._entry.97, ptr @bcm3510_hab_send_request._entry_ptr, ptr @bcm3510_hab_send_request._entry_ptr.96, ptr @bcm3510_hab_send_request._entry_ptr.99, ptr @bcm3510_init._entry, ptr @bcm3510_init._entry.31, ptr @bcm3510_init._entry.34, ptr @bcm3510_init._entry_ptr, ptr @bcm3510_init._entry_ptr.33, ptr @bcm3510_init._entry_ptr.36, ptr @bcm3510_init_cold._entry, ptr @bcm3510_init_cold._entry.39, ptr @bcm3510_init_cold._entry.42, ptr @bcm3510_init_cold._entry.45, ptr @bcm3510_init_cold._entry_ptr, ptr @bcm3510_init_cold._entry_ptr.41, ptr @bcm3510_init_cold._entry_ptr.44, ptr @bcm3510_init_cold._entry_ptr.47, ptr @bcm3510_read_status._entry, ptr @bcm3510_read_status._entry_ptr, ptr @bcm3510_readbytes._entry, ptr @bcm3510_readbytes._entry.12, ptr @bcm3510_readbytes._entry.15, ptr @bcm3510_readbytes._entry.9, ptr @bcm3510_readbytes._entry_ptr, ptr @bcm3510_readbytes._entry_ptr.11, ptr @bcm3510_readbytes._entry_ptr.14, ptr @bcm3510_readbytes._entry_ptr.17, ptr @bcm3510_reset._entry, ptr @bcm3510_reset._entry_ptr, ptr @bcm3510_set_freq._entry, ptr @bcm3510_set_freq._entry.102, ptr @bcm3510_set_freq._entry_ptr, ptr @bcm3510_set_freq._entry_ptr.104, ptr @bcm3510_writebytes._entry, ptr @bcm3510_writebytes._entry.22, ptr @bcm3510_writebytes._entry.24, ptr @bcm3510_writebytes._entry.26, ptr @bcm3510_writebytes._entry_ptr, ptr @bcm3510_writebytes._entry_ptr.23, ptr @bcm3510_writebytes._entry_ptr.25, ptr @bcm3510_writebytes._entry_ptr.28, ptr @debug, ptr @bcm3510_ops, ptr @bcm3510_attach.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.86, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_attach._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_readbytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_readbytes._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_readbytes._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_readbytes._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_writebytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_writebytes._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_writebytes._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_writebytes._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_init_cold._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_init_cold._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_init_cold._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_init_cold._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_download_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_download_firmware._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_download_firmware._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_download_firmware._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_download_firmware._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_download_firmware._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_clear_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_check_firmware_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_check_firmware_version._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_do_hab_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_do_hab_cmd._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_do_hab_cmd._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_do_hab_cmd._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_do_hab_cmd._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_do_hab_cmd._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_do_hab_cmd._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_do_hab_cmd._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_hab_send_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_hab_send_request._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_hab_send_request._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_set_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_set_freq._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm3510_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bcm3510_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %v = alloca %union.bcm3510_register_value, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v) #8
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %v, align 1, !annotation !205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1212) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.bcm3510_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %config, ptr %config1, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  %frontend = getelementptr inbounds %struct.bcm3510_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.bcm3510_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = call ptr @memcpy(ptr %ops, ptr @bcm3510_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.bcm3510_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %hab_mutex = getelementptr inbounds %struct.bcm3510_state, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %hab_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @bcm3510_attach.__key) #8
  %call4 = call fastcc i32 @bcm3510_readB(ptr noundef nonnull %call7.i.i, i8 noundef zeroext -32, ptr noundef nonnull %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.error_crit_edge, label %if.end7

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end7:                                          ; preds = %if.end
  %6 = load i32, ptr @debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7.if.end15_crit_edge, label %do.end11

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %v, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %conv = zext i8 %bf.lshr to i32
  %bf.clear = and i8 %bf.load, 15
  %conv13 = zext i8 %bf.clear to i32
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv13) #12
  br label %if.end15

if.end15:                                         ; preds = %do.end11, %if.end7.if.end15_crit_edge
  %8 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load16 = load i8, ptr %v, align 1
  %bf.lshr17 = lshr i8 %bf.load16, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.lshr17)
  %cmp19.not = icmp eq i8 %bf.lshr17, 1
  %bf.lshr17.fr = freeze i8 %bf.lshr17
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bf.lshr17.fr)
  %cmp30.not = icmp eq i8 %bf.lshr17.fr, 8
  %or.cond = or i1 %cmp19.not, %cmp30.not
  br i1 %or.cond, label %if.end15.do.end42_crit_edge, label %switch.early.test

if.end15.do.end42_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

switch.early.test:                                ; preds = %if.end15
  %trunc = trunc i8 %bf.load16 to i4
  %9 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i4 %trunc, label %switch.early.test.error_crit_edge [
    i4 -5, label %switch.early.test.do.end42_crit_edge
    i4 0, label %switch.early.test.do.end42_crit_edge66
  ]

switch.early.test.do.end42_crit_edge66:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

switch.early.test.do.end42_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

switch.early.test.error_crit_edge:                ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.end42:                                         ; preds = %switch.early.test.do.end42_crit_edge, %switch.early.test.do.end42_crit_edge66, %if.end15.do.end42_crit_edge
  %conv46 = zext i8 %bf.lshr17.fr to i32
  %bf.clear48 = and i8 %bf.load16, 15
  %conv49 = zext i8 %bf.clear48 to i32
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv46, i32 noundef %conv49) #12
  %call51 = call fastcc i32 @bcm3510_reset(ptr noundef nonnull %call7.i.i)
  br label %cleanup

error:                                            ; preds = %switch.early.test.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end42
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %do.end42 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm3510_readB(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg, ptr noundef %v) unnamed_addr #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %0 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.bcm3510_state, ptr %state, i32 0, i32 1
  %3 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  %conv.i = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i, align 2
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %1, align 4
  %buf2.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %reg.addr.i, ptr %buf2.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %11 = load i8, ptr %4, align 4
  %conv6.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv6.i, ptr %arrayinit.element.i, align 4
  %flags7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags7.i, align 2
  %len8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %14 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len8.i, align 4
  %buf10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf10.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %v, ptr %buf10.i, align 4
  %16 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %v, align 1
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  %19 = load i32, ptr @debug, align 4
  br i1 %cmp.not.i, label %if.end19.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.bcm3510_readbytes.exit_crit_edge, label %do.end.i

if.then.i.bcm3510_readbytes.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_readbytes.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4
  %conv16.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg.addr.i, align 1
  %conv17.i = zext i8 %25 to i32
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %conv16.i, i32 noundef %conv17.i, i32 noundef %call.i) #12
  br label %bcm3510_readbytes.exit

if.end19.i:                                       ; preds = %entry
  %and20.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end29.i_crit_edge, label %do.end25.i

if.end19.i.if.end29.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg.addr.i, align 1
  %conv27.i = zext i8 %27 to i32
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv27.i) #12
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end25.i, %if.end19.i.if.end29.i_crit_edge
  %28 = load i32, ptr @debug, align 4
  %and33.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end29.i.for.end.i_crit_edge, label %do.end38.i

if.end29.i.for.end.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

do.end38.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %v, align 1
  %conv40.i = zext i8 %30 to i32
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv40.i) #12
  br label %for.end.i

for.end.i:                                        ; preds = %do.end38.i, %if.end29.i.for.end.i_crit_edge
  %31 = load i32, ptr @debug, align 4
  %and43.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %for.end.i.bcm3510_readbytes.exit_crit_edge, label %do.end48.i

for.end.i.bcm3510_readbytes.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_readbytes.exit

do.end48.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call50.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %bcm3510_readbytes.exit

bcm3510_readbytes.exit:                           ; preds = %do.end48.i, %for.end.i.bcm3510_readbytes.exit_crit_edge, %do.end.i, %if.then.i.bcm3510_readbytes.exit_crit_edge
  %retval.0.i = phi i32 [ -121, %do.end.i ], [ -121, %if.then.i.bcm3510_readbytes.exit_crit_edge ], [ 0, %do.end48.i ], [ 0, %for.end.i.bcm3510_readbytes.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  ret i32 %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm3510_reset(ptr nocapture noundef readonly %st) unnamed_addr #0 align 64 {
entry:
  %v = alloca %union.bcm3510_register_value, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v) #8
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %v, align 1, !annotation !205
  %call = call fastcc i32 @bcm3510_readB(ptr noundef %st, i8 noundef zeroext -96, ptr noundef nonnull %v)
  %1 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %v, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %v, align 1
  %coerce.dive.coerce.sroa.0.0.insert.ext = zext i8 %bf.set to i32
  %coerce.dive.coerce.sroa.0.0.insert.shift = shl nuw i32 %coerce.dive.coerce.sroa.0.0.insert.ext, 24
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %coerce.dive.coerce.sroa.0.0.insert.shift, 0
  %call1 = call fastcc i32 @bcm3510_writeB(ptr noundef %st, i8 noundef zeroext -96, [1 x i32] %.fca.0.insert)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -300, %2
  br label %while.cond

while.cond:                                       ; preds = %if.end6.while.cond_crit_edge, %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp2 = icmp slt i32 %sub, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @msleep(i32 noundef 10) #8
  %call3 = call fastcc i32 @bcm3510_readB(ptr noundef %st, i8 noundef zeroext -94, ptr noundef nonnull %v)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %while.body.cleanup_crit_edge, label %if.end6

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %while.body
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load7 = load i8, ptr %v, align 1
  %tobool.not = icmp sgt i8 %bf.load7, -1
  br i1 %tobool.not, label %if.end6.while.cond_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.while.cond_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr @debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %while.end.cleanup_crit_edge, label %do.end

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.end.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -110, %do.end ], [ -110, %while.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %call3, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm3510_writeB(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg, [1 x i32] %v.coerce) unnamed_addr #0 align 64 {
entry:
  %b.i = alloca [256 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %v.coerce.fca.0.extract = extractvalue [1 x i32] %v.coerce, 0
  %tmp.coerce.sroa.0.0.extract.shift = lshr i32 %v.coerce.fca.0.extract, 24
  %tmp.coerce.sroa.0.0.extract.trunc = trunc i32 %tmp.coerce.sroa.0.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %b.i) #8
  %0 = getelementptr inbounds i8, ptr %b.i, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 196607, ptr %2, align 4
  %config.i = getelementptr inbounds %struct.bcm3510_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %conv.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %b.i, ptr %buf4.i, align 4
  %11 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %reg, ptr %b.i, align 1
  %arrayidx5.i = getelementptr inbounds [256 x i8], ptr %b.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %tmp.coerce.sroa.0.0.extract.trunc, ptr %arrayidx5.i, align 1
  %13 = load i32, ptr @debug, align 4
  %and.i = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i8 %reg to i32
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv7.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %14 = load i32, ptr @debug, align 4
  %and10.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end.i.for.end.i_crit_edge, label %do.end15.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %tmp.coerce.sroa.0.0.extract.shift) #12
  br label %for.end.i

for.end.i:                                        ; preds = %do.end15.i, %if.end.i.for.end.i_crit_edge
  %15 = load i32, ptr @debug, align 4
  %and21.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %for.end.i.if.end29.i_crit_edge, label %do.end26.i

for.end.i.if.end29.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

do.end26.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end26.i, %for.end.i.if.end29.i_crit_edge
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %call30.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30.i)
  %cmp31.not.i = icmp eq i32 %call30.i, 1
  br i1 %cmp31.not.i, label %if.end29.i.bcm3510_writebytes.exit_crit_edge, label %if.then33.i

if.end29.i.bcm3510_writebytes.exit_crit_edge:     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_writebytes.exit

if.then33.i:                                      ; preds = %if.end29.i
  %18 = load i32, ptr @debug, align 4
  %and34.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.then33.i.bcm3510_writebytes.exit_crit_edge, label %do.end39.i

if.then33.i.bcm3510_writebytes.exit_crit_edge:    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_writebytes.exit

do.end39.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 4
  %conv43.i = zext i8 %22 to i32
  %conv44.i = zext i8 %reg to i32
  %call45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.21, i32 noundef %conv43.i, i32 noundef %conv44.i, i32 noundef %call30.i) #12
  br label %bcm3510_writebytes.exit

bcm3510_writebytes.exit:                          ; preds = %do.end39.i, %if.then33.i.bcm3510_writebytes.exit_crit_edge, %if.end29.i.bcm3510_writebytes.exit_crit_edge
  %retval.0.i = phi i32 [ -121, %do.end39.i ], [ -121, %if.then33.i.bcm3510_writebytes.exit_crit_edge ], [ 0, %if.end29.i.bcm3510_writebytes.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %b.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm3510_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm3510_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %ver.i = alloca %struct.bcm3510_hab_cmd_get_version_info, align 4
  %v.i.i = alloca %union.bcm3510_register_value, align 1
  %fw.i.i = alloca ptr, align 4
  %v.i = alloca %union.bcm3510_register_value, align 1
  %j = alloca %union.bcm3510_register_value, align 1
  %c = alloca %struct.bcm3510_hab_cmd_set_agc, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %j) #8
  %2 = ptrtoint ptr %j to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %j, align 1, !annotation !205
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c) #8
  %call = call fastcc i32 @bcm3510_readB(ptr noundef %1, i8 noundef zeroext -54, ptr noundef nonnull %j)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr @debug, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %do.end

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %j to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %j, align 1
  %conv = zext i8 %5 to i32
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv) #12
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  %6 = ptrtoint ptr %j to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %j, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %conv4 = zext i8 %bf.lshr to i32
  %7 = zext i32 %conv4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %conv4, label %if.end3.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 4, label %if.end3.sw.bb19_crit_edge
  ]

if.end3.sw.bb19_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb19

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end3
  %8 = load i32, ptr @debug, align 4
  %and5 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %sw.bb.if.end13_crit_edge, label %do.end10

sw.bb.if.end13_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end10:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #12
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %sw.bb.if.end13_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v.i) #8
  %9 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %v.i, align 1, !annotation !205
  %call.i = call fastcc i32 @bcm3510_readB(ptr noundef %1, i8 noundef zeroext -94, ptr noundef nonnull %v.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end13.bcm3510_init_cold.exit.thread_crit_edge, label %if.end.i

if.end13.bcm3510_init_cold.exit.thread_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_init_cold.exit.thread

if.end.i:                                         ; preds = %if.end13
  %10 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %v.i, align 1
  %11 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  %12 = load i32, ptr @debug, align 4
  %and7.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  br i1 %tobool8.not.i, label %if.then1.i.bcm3510_init_cold.exit_crit_edge, label %do.end.i

if.then1.i.bcm3510_init_cold.exit_crit_edge:      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_init_cold.exit

do.end.i:                                         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  br label %bcm3510_init_cold.exit

if.end6.i:                                        ; preds = %if.end.i
  br i1 %tobool8.not.i, label %if.end6.i.if.end15.i_crit_edge, label %do.end12.i

if.end6.i.if.end15.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

do.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end12.i, %if.end6.i.if.end15.i_crit_edge
  %call16.i = call fastcc i32 @bcm3510_reset(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end15.i.bcm3510_init_cold.exit.thread_crit_edge, label %if.end19.i

if.end15.i.bcm3510_init_cold.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_init_cold.exit.thread

if.end19.i:                                       ; preds = %if.end15.i
  %13 = load i32, ptr @debug, align 4
  %and20.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end28.i_crit_edge, label %do.end25.i

if.end19.i.if.end28.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #12
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end25.i, %if.end19.i.if.end28.i_crit_edge
  %14 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %v.i, align 1
  %call29.i = call fastcc i32 @bcm3510_writeB(ptr noundef %1, i8 noundef zeroext 46, [1 x i32] zeroinitializer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end28.i.bcm3510_init_cold.exit.thread_crit_edge, label %if.end32.i

if.end28.i.bcm3510_init_cold.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_init_cold.exit.thread

if.end32.i:                                       ; preds = %if.end28.i
  %15 = load i32, ptr @debug, align 4
  %and33.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end41.i_crit_edge, label %do.end38.i

if.end32.i.if.end41.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

do.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #12
  br label %if.end41.i

if.end41.i:                                       ; preds = %do.end38.i, %if.end32.i.if.end41.i_crit_edge
  %frontend.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 2
  %demodulator_priv.i.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %demodulator_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %demodulator_priv.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i.i) #8
  %18 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i.i, align 4, !annotation !205
  %19 = load i32, ptr @debug, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end41.i.if.end.i.i_crit_edge, label %do.end.i.i

if.end41.i.if.end.i.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end41.i.if.end.i.i_crit_edge
  %config.i.i = getelementptr inbounds %struct.bcm3510_state, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config.i.i, align 4
  %request_firmware.i.i = getelementptr inbounds %struct.bcm3510_config, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %request_firmware.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %request_firmware.i.i, align 4
  %call1.i.i = call i32 %23(ptr noundef %frontend.i, ptr noundef nonnull %fw.i.i, ptr noundef nonnull @.str.50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %do.end5.i.i, label %if.end8.i.i

do.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50, i32 noundef %call1.i.i) #12
  br label %bcm3510_download_firmware.exit.thread.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %24 = load i32, ptr @debug, align 4
  %and9.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end8.i.i.if.end17.i.i_crit_edge, label %do.end14.i.i

if.end8.i.i.if.end17.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

do.end14.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %28) #12
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %do.end14.i.i, %if.end8.i.i.if.end17.i.i_crit_edge
  %29 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1983.not.i.i = icmp eq i32 %34, 0
  br i1 %cmp1983.not.i.i, label %if.end17.i.i.for.end.i.i_crit_edge, label %if.end17.i.i.for.body.i.i_crit_edge

if.end17.i.i.for.body.i.i_crit_edge:              ; preds = %if.end17.i.i
  br label %for.body.i.i

if.end17.i.i.for.end.i.i_crit_edge:               ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %if.end43.i.i.for.body.i.i_crit_edge, %if.end17.i.i.for.body.i.i_crit_edge
  %35 = phi i32 [ %49, %if.end43.i.i.for.body.i.i_crit_edge ], [ %34, %if.end17.i.i.for.body.i.i_crit_edge ]
  %i.084.i.i = phi i32 [ %add46.i.i, %if.end43.i.i.for.body.i.i_crit_edge ], [ 0, %if.end17.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %32, i32 %i.084.i.i
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx.i.i, align 2
  %38 = call i16 @llvm.bswap.i16(i16 %37) #8
  %add.i.i = add i32 %i.084.i.i, 2
  %arrayidx20.i.i = getelementptr i8, ptr %32, i32 %add.i.i
  %39 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx20.i.i, align 2
  %41 = call i16 @llvm.bswap.i16(i16 %40) #8
  %42 = load i32, ptr @debug, align 4
  %and21.i.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %for.body.i.i.if.end31.i.i_crit_edge, label %do.end26.i.i

for.body.i.i.if.end31.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i.i

do.end26.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i16 %38 to i32
  %conv28.i.i = zext i16 %41 to i32
  %call30.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %conv.i.i, i32 noundef %conv28.i.i, i32 noundef %35) #12
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %do.end26.i.i, %for.body.i.i.if.end31.i.i_crit_edge
  %add32.i.i = add i32 %i.084.i.i, 4
  %arrayidx33.i.i = getelementptr i8, ptr %32, i32 %add32.i.i
  %43 = lshr i16 %38, 8
  %conv1.i.i.i = zext i16 %43 to i32
  %coerce.dive.coerce.sroa.0.0.insert.shift.i.i.i = shl nuw i32 %conv1.i.i.i, 24
  %.fca.0.insert24.i.i.i = insertvalue [1 x i32] poison, i32 %coerce.dive.coerce.sroa.0.0.insert.shift.i.i.i, 0
  %call.i.i.i = call fastcc i32 @bcm3510_writeB(ptr noundef %17, i8 noundef zeroext -87, [1 x i32] %.fca.0.insert24.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end31.i.i.do.end40.i.i_crit_edge, label %if.end.i.i.i

if.end31.i.i.do.end40.i.i_crit_edge:              ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i.i

if.end.i.i.i:                                     ; preds = %if.end31.i.i
  %coerce.dive4.coerce.sroa.0.0.insert.ext.i.i.i = zext i16 %38 to i32
  %coerce.dive4.coerce.sroa.0.0.insert.shift.i.i.i = shl i32 %coerce.dive4.coerce.sroa.0.0.insert.ext.i.i.i, 24
  %.fca.0.insert23.i.i.i = insertvalue [1 x i32] poison, i32 %coerce.dive4.coerce.sroa.0.0.insert.shift.i.i.i, 0
  %call5.i.i.i = call fastcc i32 @bcm3510_writeB(ptr noundef %17, i8 noundef zeroext -86, [1 x i32] %.fca.0.insert23.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %cmp6.i.i.i = icmp slt i32 %call5.i.i.i, 0
  br i1 %cmp6.i.i.i, label %if.end.i.i.i.do.end40.i.i_crit_edge, label %for.cond.preheader.i.i.i

if.end.i.i.i.do.end40.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end.i.i.i
  %conv10.i.i.i = zext i16 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp1132.not.i.i.i = icmp eq i16 %40, 0
  br i1 %cmp1132.not.i.i.i, label %for.cond.preheader.i.i.i.if.end43.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.if.end43.i.i_crit_edge:  ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.033.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv10.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.end43.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.cond.i.i.i.if.end43.i.i_crit_edge:            ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %coerce.dive13.coerce.sroa.0.034.i.i.i = phi i32 [ %coerce.dive13.coerce.sroa.0.0.insert.insert.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ undef, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %i.033.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i8, ptr %arrayidx33.i.i, i32 %i.033.i.i.i
  %44 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i.i.i, align 1
  %coerce.dive13.coerce.sroa.0.0.insert.ext.i.i.i = zext i8 %45 to i32
  %coerce.dive13.coerce.sroa.0.0.insert.shift.i.i.i = shl nuw i32 %coerce.dive13.coerce.sroa.0.0.insert.ext.i.i.i, 24
  %coerce.dive13.coerce.sroa.0.0.insert.mask.i.i.i = and i32 %coerce.dive13.coerce.sroa.0.034.i.i.i, 16777215
  %coerce.dive13.coerce.sroa.0.0.insert.insert.i.i.i = or i32 %coerce.dive13.coerce.sroa.0.0.insert.shift.i.i.i, %coerce.dive13.coerce.sroa.0.0.insert.mask.i.i.i
  %.fca.0.insert.i.i.i = insertvalue [1 x i32] poison, i32 %coerce.dive13.coerce.sroa.0.0.insert.insert.i.i.i, 0
  %call14.i.i.i = call fastcc i32 @bcm3510_writeB(ptr noundef %17, i8 noundef zeroext -85, [1 x i32] %.fca.0.insert.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i.i)
  %cmp15.i.i.i = icmp slt i32 %call14.i.i.i, 0
  br i1 %cmp15.i.i.i, label %for.body.i.i.i.do.end40.i.i_crit_edge, label %for.cond.i.i.i

for.body.i.i.i.do.end40.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i.i

do.end40.i.i:                                     ; preds = %for.body.i.i.i.do.end40.i.i_crit_edge, %if.end.i.i.i.do.end40.i.i_crit_edge, %if.end31.i.i.do.end40.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call14.i.i.i, %for.body.i.i.i.do.end40.i.i_crit_edge ], [ %call.i.i.i, %if.end31.i.i.do.end40.i.i_crit_edge ], [ %call5.i.i.i, %if.end.i.i.i.do.end40.i.i_crit_edge ]
  %call42.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %retval.0.i.ph.i.i) #12
  br label %bcm3510_download_firmware.exit.thread.i

if.end43.i.i:                                     ; preds = %for.cond.i.i.i.if.end43.i.i_crit_edge, %for.cond.preheader.i.i.i.if.end43.i.i_crit_edge
  %add46.i.i = add i32 %add32.i.i, %conv10.i.i.i
  %46 = ptrtoint ptr %fw.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fw.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %cmp19.i.i = icmp ult i32 %add46.i.i, %49
  br i1 %cmp19.i.i, label %if.end43.i.i.for.body.i.i_crit_edge, label %if.end43.i.i.for.end.i.i_crit_edge

if.end43.i.i.for.end.i.i_crit_edge:               ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.end43.i.i.for.body.i.i_crit_edge:              ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end43.i.i.for.end.i.i_crit_edge, %if.end17.i.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi ptr [ %30, %if.end17.i.i.for.end.i.i_crit_edge ], [ %47, %if.end43.i.i.for.end.i.i_crit_edge ]
  call void @release_firmware(ptr noundef %.lcssa.i.i) #8
  %50 = load i32, ptr @debug, align 4
  %and47.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i.i)
  %tobool48.not.i.i = icmp eq i32 %and47.i.i, 0
  br i1 %tobool48.not.i.i, label %for.end.i.i.lor.lhs.false.i_crit_edge, label %do.end52.i.i

for.end.i.i.lor.lhs.false.i_crit_edge:            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

do.end52.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call54.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #12
  br label %lor.lhs.false.i

bcm3510_download_firmware.exit.thread.i:          ; preds = %do.end40.i.i, %do.end5.i.i
  %retval.0.i.ph.i = phi i32 [ %retval.0.i.ph.i.i, %do.end40.i.i ], [ %call1.i.i, %do.end5.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #8
  br label %bcm3510_init_cold.exit.thread

lor.lhs.false.i:                                  ; preds = %do.end52.i.i, %for.end.i.i.lor.lhs.false.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v.i.i) #8
  %51 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %v.i.i, align 1
  %call.i56.i = call fastcc i32 @bcm3510_writeB(ptr noundef %1, i8 noundef zeroext -96, [1 x i32] zeroinitializer) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %cmp.i57.i = icmp slt i32 %call.i56.i, 0
  br i1 %cmp.i57.i, label %lor.lhs.false.i..loopexit.i_crit_edge, label %if.end.i58.i

lor.lhs.false.i..loopexit.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %.loopexit.i

if.end.i58.i:                                     ; preds = %lor.lhs.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -300, %52
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end5.i.i.while.cond.i.i_crit_edge, %if.end.i58.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = add i32 %add.neg.i.i, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp1.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @msleep(i32 noundef 10) #8
  %call2.i.i = call fastcc i32 @bcm3510_readB(ptr noundef %1, i8 noundef zeroext -94, ptr noundef nonnull %v.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %while.body.i.i..loopexit.i_crit_edge, label %if.end5.i.i

while.body.i.i..loopexit.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %.loopexit.i

if.end5.i.i:                                      ; preds = %while.body.i.i
  %54 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i.i = load i8, ptr %v.i.i, align 1
  %tobool.not.i59.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i59.i, label %bcm3510_clear_reset.exit.i, label %if.end5.i.i.while.cond.i.i_crit_edge

if.end5.i.i.while.cond.i.i_crit_edge:             ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %55 = load i32, ptr @debug, align 4
  %and.i60.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60.i)
  %tobool8.not.i.i = icmp eq i32 %and.i60.i, 0
  br i1 %tobool8.not.i.i, label %while.end.i.i..loopexit.i_crit_edge, label %do.end.i61.i

while.end.i.i..loopexit.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %.loopexit.i

do.end.i61.i:                                     ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #12
  br label %.loopexit.i

bcm3510_clear_reset.exit.i:                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i.i) #8
  br label %bcm3510_init_cold.exit

.loopexit.i:                                      ; preds = %do.end.i61.i, %while.end.i.i..loopexit.i_crit_edge, %while.body.i.i..loopexit.i_crit_edge, %lor.lhs.false.i..loopexit.i_crit_edge
  %retval.0.i62.ph.i = phi i32 [ -110, %while.end.i.i..loopexit.i_crit_edge ], [ -110, %do.end.i61.i ], [ %call.i56.i, %lor.lhs.false.i..loopexit.i_crit_edge ], [ %call2.i.i, %while.body.i.i..loopexit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i.i) #8
  br label %bcm3510_init_cold.exit.thread

bcm3510_init_cold.exit.thread:                    ; preds = %.loopexit.i, %bcm3510_download_firmware.exit.thread.i, %if.end28.i.bcm3510_init_cold.exit.thread_crit_edge, %if.end15.i.bcm3510_init_cold.exit.thread_crit_edge, %if.end13.bcm3510_init_cold.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.i62.ph.i, %.loopexit.i ], [ %retval.0.i.ph.i, %bcm3510_download_firmware.exit.thread.i ], [ %call29.i, %if.end28.i.bcm3510_init_cold.exit.thread_crit_edge ], [ %call16.i, %if.end15.i.bcm3510_init_cold.exit.thread_crit_edge ], [ %call.i, %if.end13.bcm3510_init_cold.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i) #8
  br label %cleanup

bcm3510_init_cold.exit:                           ; preds = %bcm3510_clear_reset.exit.i, %do.end.i, %if.then1.i.bcm3510_init_cold.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i) #8
  br label %sw.bb19

sw.bb19:                                          ; preds = %bcm3510_init_cold.exit, %if.end3.sw.bb19_crit_edge
  %56 = load i32, ptr @debug, align 4
  %and20 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %sw.bb19.if.end28_crit_edge, label %do.end25

sw.bb19.if.end28_crit_edge:                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

do.end25:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %sw.bb19.if.end28_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver.i) #8
  %57 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, ptr %ver.i, i32 0, i32 1
  %58 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, ptr %ver.i, i32 0, i32 2
  %59 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, ptr %ver.i, i32 0, i32 3
  %60 = ptrtoint ptr %ver.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %ver.i, align 4
  %call.i39 = call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 61, i8 noundef zeroext 21, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull %ver.i, i8 noundef zeroext 4) #8
  %61 = load i32, ptr @debug, align 4
  %and.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i40 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i40, label %if.end28.if.end.i44_crit_edge, label %do.end.i42

if.end28.if.end.i44_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i44

do.end.i42:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %ver.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %ver.i, align 4
  %conv.i = zext i8 %63 to i32
  %64 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %57, align 1
  %conv1.i = zext i8 %65 to i32
  %66 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %58, align 2
  %conv2.i = zext i8 %67 to i32
  %68 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %59, align 1
  %conv3.i = zext i8 %69 to i32
  %call4.i41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %conv.i, i32 noundef %conv1.i, i32 noundef %conv2.i, i32 noundef %conv3.i) #12
  br label %if.end.i44

if.end.i44:                                       ; preds = %do.end.i42, %if.end28.if.end.i44_crit_edge
  %70 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %57, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %71)
  %cmp.i43 = icmp eq i8 %71, 6
  br i1 %cmp.i43, label %land.lhs.true.i, label %if.end.i44.if.end18.i_crit_edge

if.end.i44.if.end18.i_crit_edge:                  ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.end.i44
  %72 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %58, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp10.i = icmp eq i8 %73, 1
  br i1 %cmp10.i, label %land.lhs.true12.i, label %land.lhs.true.i.if.end18.i_crit_edge

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %74 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -79, i8 %75)
  %cmp15.i = icmp eq i8 %75, -79
  br i1 %cmp15.i, label %land.lhs.true12.i.bcm3510_check_firmware_version.exit_crit_edge, label %land.lhs.true12.i.if.end18.i_crit_edge

land.lhs.true12.i.if.end18.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

land.lhs.true12.i.bcm3510_check_firmware_version.exit_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_check_firmware_version.exit

if.end18.i:                                       ; preds = %land.lhs.true12.i.if.end18.i_crit_edge, %land.lhs.true.i.if.end18.i_crit_edge, %if.end.i44.if.end18.i_crit_edge
  %76 = load i32, ptr @debug, align 4
  %and19.i = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.bcm3510_check_firmware_version.exit_crit_edge, label %do.end24.i

if.end18.i.bcm3510_check_firmware_version.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_check_firmware_version.exit

do.end24.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #12
  br label %bcm3510_check_firmware_version.exit

bcm3510_check_firmware_version.exit:              ; preds = %do.end24.i, %if.end18.i.bcm3510_check_firmware_version.exit_crit_edge, %land.lhs.true12.i.bcm3510_check_firmware_version.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver.i) #8
  %77 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %c, align 1
  %call31 = call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 42, i8 noundef zeroext 18, ptr noundef nonnull %c, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %bcm3510_check_firmware_version.exit, %bcm3510_init_cold.exit.thread, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %bcm3510_check_firmware_version.exit ], [ %call, %entry.cleanup_crit_edge ], [ -19, %if.end3.cleanup_crit_edge ], [ %retval.0.i.ph, %bcm3510_init_cold.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %j) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm3510_sleep(ptr nocapture noundef readnone %fe) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm3510_set_frontend(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %c.i.i = alloca %struct.bcm3510_hab_cmd_tune, align 1
  %b.i = alloca %union.bcm3510_register_value, align 1
  %cmd = alloca %struct.bcm3510_hab_cmd_ext_acquire, align 8
  %bert = alloca %struct.bcm3510_hab_cmd_bert_control, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #8
  %2 = getelementptr inbounds %struct.bcm3510_hab_cmd_ext_acquire, ptr %cmd, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bert) #8
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %cmd, align 8
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %modulation, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 3, label %sw.bb8
    i32 7, label %sw.bb21
    i32 8, label %sw.bb34
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %cmd, align 8
  %bf.clear = and i8 %bf.load, 15
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, ptr %cmd, align 8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load1 = load i8, ptr %2, align 1
  %bf.clear2 = and i8 %bf.load1, 17
  %bf.set7 = or i8 %bf.clear2, 34
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load10 = load i8, ptr %cmd, align 8
  %bf.clear11 = and i8 %bf.load10, 15
  %bf.set12 = or i8 %bf.clear11, 32
  store i8 %bf.set12, ptr %cmd, align 8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load14 = load i8, ptr %2, align 1
  %bf.clear15 = and i8 %bf.load14, 17
  %bf.set20 = or i8 %bf.clear15, 36
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load23 = load i8, ptr %cmd, align 8
  %bf.clear24 = and i8 %bf.load23, 15
  %bf.set25 = or i8 %bf.clear24, -128
  store i8 %bf.set25, ptr %cmd, align 8
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load27 = load i8, ptr %2, align 1
  %bf.clear32 = and i8 %bf.load27, 17
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load36 = load i8, ptr %cmd, align 8
  %bf.clear37 = and i8 %bf.load36, 15
  %bf.set38 = or i8 %bf.clear37, -112
  store i8 %bf.set38, ptr %cmd, align 8
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load40 = load i8, ptr %2, align 1
  %bf.clear45 = and i8 %bf.load40, 17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb34, %sw.bb21, %sw.bb8, %sw.bb
  %bf.clear45.sink = phi i8 [ %bf.clear45, %sw.bb34 ], [ %bf.clear32, %sw.bb21 ], [ %bf.set20, %sw.bb8 ], [ %bf.set7, %sw.bb ]
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %bf.clear45.sink, ptr %2, align 1
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load48 = load i8, ptr %cmd, align 8
  %bf.clear53 = and i8 %bf.load48, -16
  %bf.set58 = or i8 %bf.clear53, 6
  store i8 %bf.set58, ptr %cmd, align 8
  %call = call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 56, i8 noundef zeroext 10, ptr noundef nonnull %cmd, i8 noundef zeroext 8, ptr noundef null, i8 noundef zeroext 0)
  %17 = ptrtoint ptr %bert to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %bert, align 1
  %call69 = call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 18, i8 noundef zeroext 14, ptr noundef nonnull %bert, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0)
  %call70 = call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 18, i8 noundef zeroext -6, ptr noundef nonnull %bert, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b.i) #8
  %18 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %b.i, align 1, !annotation !205
  %call.i = call fastcc i32 @bcm3510_readB(ptr noundef %1, i8 noundef zeroext -6, ptr noundef nonnull %b.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.epilog.bcm3510_bert_reset.exit_crit_edge, label %if.end.i

sw.epilog.bcm3510_bert_reset.exit_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_bert_reset.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %b.i, align 1
  %bf.clear.i = and i8 %bf.load.i, -9
  store i8 %bf.clear.i, ptr %b.i, align 1
  %coerce.dive.coerce.sroa.0.0.insert.ext.i = zext i8 %bf.clear.i to i32
  %coerce.dive.coerce.sroa.0.0.insert.shift.i = shl nuw i32 %coerce.dive.coerce.sroa.0.0.insert.ext.i, 24
  %.fca.0.insert23.i = insertvalue [1 x i32] poison, i32 %coerce.dive.coerce.sroa.0.0.insert.shift.i, 0
  %call1.i = call fastcc i32 @bcm3510_writeB(ptr noundef %1, i8 noundef zeroext -6, [1 x i32] %.fca.0.insert23.i) #8
  %20 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load2.i = load i8, ptr %b.i, align 1
  %bf.set4.i = or i8 %bf.load2.i, 8
  store i8 %bf.set4.i, ptr %b.i, align 1
  %coerce.dive5.coerce.sroa.0.0.insert.ext.i = zext i8 %bf.set4.i to i32
  %coerce.dive5.coerce.sroa.0.0.insert.shift.i = shl nuw i32 %coerce.dive5.coerce.sroa.0.0.insert.ext.i, 24
  %.fca.0.insert22.i = insertvalue [1 x i32] poison, i32 %coerce.dive5.coerce.sroa.0.0.insert.shift.i, 0
  %call6.i = call fastcc i32 @bcm3510_writeB(ptr noundef %1, i8 noundef zeroext -6, [1 x i32] %.fca.0.insert22.i) #8
  %21 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load7.i = load i8, ptr %b.i, align 1
  %bf.clear8.i = and i8 %bf.load7.i, -9
  store i8 %bf.clear8.i, ptr %b.i, align 1
  %coerce.dive10.coerce.sroa.0.0.insert.ext.i = zext i8 %bf.clear8.i to i32
  %coerce.dive10.coerce.sroa.0.0.insert.shift.i = shl nuw i32 %coerce.dive10.coerce.sroa.0.0.insert.ext.i, 24
  %.fca.0.insert21.i = insertvalue [1 x i32] poison, i32 %coerce.dive10.coerce.sroa.0.0.insert.shift.i, 0
  %call11.i = call fastcc i32 @bcm3510_writeB(ptr noundef %1, i8 noundef zeroext -6, [1 x i32] %.fca.0.insert21.i) #8
  %22 = ptrtoint ptr %b.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load12.i = load i8, ptr %b.i, align 1
  %bf.set17.i = or i8 %bf.load12.i, 96
  store i8 %bf.set17.i, ptr %b.i, align 1
  %coerce.dive18.coerce.sroa.0.0.insert.ext.i = zext i8 %bf.set17.i to i32
  %coerce.dive18.coerce.sroa.0.0.insert.shift.i = shl nuw i32 %coerce.dive18.coerce.sroa.0.0.insert.ext.i, 24
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %coerce.dive18.coerce.sroa.0.0.insert.shift.i, 0
  %call19.i = call fastcc i32 @bcm3510_writeB(ptr noundef %1, i8 noundef zeroext -6, [1 x i32] %.fca.0.insert.i) #8
  br label %bcm3510_bert_reset.exit

bcm3510_bert_reset.exit:                          ; preds = %if.end.i, %sw.epilog.bcm3510_bert_reset.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b.i) #8
  %23 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dtv_property_cache, align 4
  %div.i = udiv i32 %24, 1000
  %25 = load i32, ptr @debug, align 4
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %bcm3510_bert_reset.exit.if.end.i89_crit_edge, label %do.end.i

bcm3510_bert_reset.exit.if.end.i89_crit_edge:     ; preds = %bcm3510_bert_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i89

do.end.i:                                         ; preds = %bcm3510_bert_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, i32 noundef %div.i) #12
  br label %if.end.i89

if.end.i89:                                       ; preds = %do.end.i, %bcm3510_bert_reset.exit.if.end.i89_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 168001000, i32 %24)
  %cmp.i88 = icmp ult i32 %24, 168001000
  call void @__sanitizer_cov_trace_const_cmp4(i32 378001000, i32 %24)
  %cmp2.i = icmp ult i32 %24, 378001000
  %..i = select i1 %cmp2.i, i8 44, i8 48
  %bc.0.i = select i1 %cmp.i88, i8 28, i8 %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 469999999, i32 %24)
  %cmp7.i = icmp ugt i32 %24, 469999999
  br i1 %cmp7.i, label %if.end.i89.if.end21.i_crit_edge, label %if.else9.i

if.end.i89.if.end21.i_crit_edge:                  ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.else9.i:                                       ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_const_cmp4(i32 89999999, i32 %24)
  %cmp10.i = icmp ugt i32 %24, 89999999
  br i1 %cmp10.i, label %if.else9.i.if.end21.i_crit_edge, label %if.else13.i

if.else9.i.if.end21.i_crit_edge:                  ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.else13.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 75999999, i32 %24)
  %cmp14.i = icmp ugt i32 %24, 75999999
  %.69.i = select i1 %cmp14.i, i32 -76001, i32 -54001
  %.70.i = select i1 %cmp14.i, i32 14865, i32 14645
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else13.i, %if.else9.i.if.end21.i_crit_edge, %if.end.i89.if.end21.i_crit_edge
  %.sink.i = phi i32 [ -470001, %if.end.i89.if.end21.i_crit_edge ], [ -90001, %if.else9.i.if.end21.i_crit_edge ], [ %.69.i, %if.else13.i ]
  %YIntercept.0.i = phi i32 [ 18805, %if.end.i89.if.end21.i_crit_edge ], [ 15005, %if.else9.i.if.end21.i_crit_edge ], [ %.70.i, %if.else13.i ]
  %sub12.i = add nsw i32 %.sink.i, %div.i
  %div22.i = udiv i32 %sub12.i, 6000
  %mul.i = mul nuw nsw i32 %div22.i, 60
  %add.i = add nuw nsw i32 %mul.i, %YIntercept.0.i
  %mul23.i = shl nuw nsw i32 %add.i, 2
  %div24.i = udiv i32 %mul23.i, 10
  %26 = lshr i32 %div24.i, 6
  %27 = trunc i32 %div24.i to i8
  %conv26.i = and i8 %27, 63
  %28 = load i32, ptr @debug, align 4
  %and27.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end21.if.end38_crit_edge.i, label %do.end32.i

if.end21.if.end38_crit_edge.i:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %.pre.i = and i32 %26, 65535
  br label %if.end38.i

do.end32.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv34.i = zext i8 %bc.0.i to i32
  %conv35.i = and i32 %26, 65535
  %conv36.i = zext i8 %conv26.i to i32
  %call37.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %conv34.i, i32 noundef %conv35.i, i32 noundef %conv36.i) #12
  br label %if.end38.i

if.end38.i:                                       ; preds = %do.end32.i, %if.end21.if.end38_crit_edge.i
  %conv39.pre-phi.i = phi i32 [ %.pre.i, %if.end21.if.end38_crit_edge.i ], [ %conv35.i, %do.end32.i ]
  %29 = add nsw i32 %conv39.pre-phi.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2032, i32 %29)
  %30 = icmp ult i32 %29, 2032
  br i1 %30, label %bcm3510_set_freq.exit, label %if.end38.i.cleanup_crit_edge

if.end38.i.cleanup_crit_edge:                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bcm3510_set_freq.exit:                            ; preds = %if.end38.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %c.i.i) #8
  %31 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 16, ptr %c.i.i, align 1
  %clock_width.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %clock_width.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %clock_width.i.i, align 1
  %misc.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %misc.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 16, ptr %misc.i.i, align 1
  %TUNCTL_state.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %TUNCTL_state.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 64, ptr %TUNCTL_state.i.i, align 1
  %ctl_dat.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %ctl_dat.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -32, ptr %ctl_dat.i.i, align 1
  %36 = or i8 %bc.0.i, -128
  %data.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 0, i32 1
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %data.i.i, align 1
  %arrayidx5.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 1
  %38 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -32, ptr %arrayidx5.i.i, align 1
  %data12.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 1, i32 1
  %39 = ptrtoint ptr %data12.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 4, ptr %data12.i.i, align 1
  %arrayidx14.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 2
  %40 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 64, ptr %arrayidx14.i.i, align 1
  %data21.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 2, i32 1
  %41 = ptrtoint ptr %data21.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 32, ptr %data21.i.i, align 1
  %arrayidx23.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 3
  %42 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 70, ptr %arrayidx23.i.i, align 1
  %data42.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 3, i32 1
  %43 = ptrtoint ptr %data42.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 64, ptr %data42.i.i, align 1
  %arrayidx44.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 4
  %44 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -32, ptr %arrayidx44.i.i, align 1
  %45 = lshr i32 %div24.i, 9
  %conv50.i.i = trunc i32 %45 to i8
  %data53.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 4, i32 1
  %46 = ptrtoint ptr %data53.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv50.i.i, ptr %data53.i.i, align 1
  %arrayidx55.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 5
  %47 = ptrtoint ptr %arrayidx55.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -32, ptr %arrayidx55.i.i, align 1
  %n.tr.i.i = trunc i32 %26 to i8
  %shl.i.i = shl i8 %n.tr.i.i, 5
  %48 = lshr i8 %conv26.i, 2
  %or63.i.i = or i8 %48, %shl.i.i
  %data67.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 5, i32 1
  %49 = ptrtoint ptr %data67.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %or63.i.i, ptr %data67.i.i, align 1
  %arrayidx69.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 6
  %50 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 64, ptr %arrayidx69.i.i, align 1
  %shl75.i.i = shl i8 %27, 6
  %data80.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 6, i32 1
  %51 = ptrtoint ptr %data80.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %shl75.i.i, ptr %data80.i.i, align 1
  %arrayidx82.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 7
  %52 = ptrtoint ptr %arrayidx82.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 70, ptr %arrayidx82.i.i, align 1
  %data101.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 7, i32 1
  %53 = ptrtoint ptr %data101.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 64, ptr %data101.i.i, align 1
  %arrayidx103.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 8
  %54 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -32, ptr %arrayidx103.i.i, align 1
  %data110.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 8, i32 1
  %55 = ptrtoint ptr %data110.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -128, ptr %data110.i.i, align 1
  %arrayidx112.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 9
  %56 = ptrtoint ptr %arrayidx112.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -32, ptr %arrayidx112.i.i, align 1
  %data119.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 9, i32 1
  %57 = ptrtoint ptr %data119.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 16, ptr %data119.i.i, align 1
  %arrayidx121.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 10
  %58 = ptrtoint ptr %arrayidx121.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 64, ptr %arrayidx121.i.i, align 1
  %data128.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 10, i32 1
  %59 = ptrtoint ptr %data128.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 32, ptr %data128.i.i, align 1
  %arrayidx130.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 11
  %60 = ptrtoint ptr %arrayidx130.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 69, ptr %arrayidx130.i.i, align 1
  %data149.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 11, i32 1
  %61 = ptrtoint ptr %data149.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 64, ptr %data149.i.i, align 1
  %arrayidx151.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 12
  %62 = ptrtoint ptr %arrayidx151.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -32, ptr %arrayidx151.i.i, align 1
  %data158.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 12, i32 1
  %63 = ptrtoint ptr %data158.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 42, ptr %data158.i.i, align 1
  %arrayidx160.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 13
  %64 = ptrtoint ptr %arrayidx160.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -32, ptr %arrayidx160.i.i, align 1
  %data167.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 13, i32 1
  %65 = ptrtoint ptr %data167.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -114, ptr %data167.i.i, align 1
  %arrayidx169.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 14
  %66 = ptrtoint ptr %arrayidx169.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 64, ptr %arrayidx169.i.i, align 1
  %data176.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 14, i32 1
  %67 = ptrtoint ptr %data176.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %data176.i.i, align 1
  %arrayidx178.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 15
  %68 = ptrtoint ptr %arrayidx178.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 69, ptr %arrayidx178.i.i, align 1
  %data197.i.i = getelementptr inbounds %struct.bcm3510_hab_cmd_tune, ptr %c.i.i, i32 0, i32 4, i32 15, i32 1
  %69 = ptrtoint ptr %data197.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 64, ptr %data197.i.i, align 1
  %call.i.i = call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 56, i8 noundef zeroext 22, ptr noundef nonnull %c.i.i, i8 noundef zeroext 36, ptr noundef null, i8 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %c.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %bcm3510_set_freq.exit.cleanup_crit_edge, label %if.end

bcm3510_set_freq.exit.cleanup_crit_edge:          ; preds = %bcm3510_set_freq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %bcm3510_set_freq.exit
  call void @__sanitizer_cov_trace_pc() #10
  %status1 = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 7
  %status_check_interval = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 6
  %70 = call ptr @memset(ptr %status1, i32 0, i32 60)
  %71 = ptrtoint ptr %status_check_interval to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 500, ptr %status_check_interval, align 4
  call void @msleep(i32 noundef 200) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %bcm3510_set_freq.exit.cleanup_crit_edge, %if.end38.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %bcm3510_set_freq.exit.cleanup_crit_edge ], [ -22, %if.end38.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bert) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @bcm3510_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %s) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1000, ptr %s, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %s, i32 0, i32 1
  %1 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %step_size, align 4
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm3510_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %next_status_check.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_status_check.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.bcm3510_refresh_state.exit_crit_edge

entry.bcm3510_refresh_state.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_refresh_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %status1.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 7
  %call.i = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 56, i8 noundef zeroext 8, ptr noundef null, i8 noundef zeroext 0, ptr noundef %status1.i, i8 noundef zeroext 38) #8
  %status2.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 8
  %call1.i = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 56, i8 noundef zeroext 20, ptr noundef null, i8 noundef zeroext 0, ptr noundef %status2.i, i8 noundef zeroext 22) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %status_check_interval.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %status_check_interval.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status_check_interval.i, align 4
  %mul.i = mul i32 %7, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %5
  %8 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %next_status_check.i, align 4
  br label %bcm3510_refresh_state.exit

bcm3510_refresh_state.exit:                       ; preds = %if.then.i, %entry.bcm3510_refresh_state.exit_crit_edge
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %status, align 4
  %STATUS1 = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %STATUS1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %STATUS1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %spec.store.select = select i1 %tobool.not, i32 0, i32 24
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select, ptr %status, align 4
  %12 = ptrtoint ptr %STATUS1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load3 = load i8, ptr %STATUS1, align 1
  %13 = and i8 %bf.load3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %bcm3510_refresh_state.exit.if.end8_crit_edge, label %if.then6

bcm3510_refresh_state.exit.if.end8_crit_edge:     ; preds = %bcm3510_refresh_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %bcm3510_refresh_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or7 = or i32 %spec.store.select, 4
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or7, ptr %status, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %bcm3510_refresh_state.exit.if.end8_crit_edge
  %15 = ptrtoint ptr %STATUS1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load11 = load i8, ptr %STATUS1, align 1
  %16 = and i8 %bf.load11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool14.not = icmp eq i8 %16, 0
  br i1 %tobool14.not, label %if.end8.if.end17_crit_edge, label %if.then15

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 4
  %or16 = or i32 %18, 3
  store i32 %or16, ptr %status, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end8.if.end17_crit_edge
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  %and = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool18.not, i32 500, i32 1500
  %21 = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %21, align 4
  %23 = load i32, ptr @debug, align 4
  %and22 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end17.if.end26_crit_edge, label %do.end

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.end:                                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %25) #12
  br label %if.end26

if.end26:                                         ; preds = %do.end, %if.end17.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm3510_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %next_status_check.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_status_check.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.bcm3510_refresh_state.exit_crit_edge

entry.bcm3510_refresh_state.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_refresh_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %status1.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 7
  %call.i = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 56, i8 noundef zeroext 8, ptr noundef null, i8 noundef zeroext 0, ptr noundef %status1.i, i8 noundef zeroext 38) #8
  %status2.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 8
  %call1.i = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 56, i8 noundef zeroext 20, ptr noundef null, i8 noundef zeroext 0, ptr noundef %status2.i, i8 noundef zeroext 22) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %status_check_interval.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %status_check_interval.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status_check_interval.i, align 4
  %mul.i = mul i32 %7, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %5
  %8 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %next_status_check.i, align 4
  br label %bcm3510_refresh_state.exit

bcm3510_refresh_state.exit:                       ; preds = %if.then.i, %entry.bcm3510_refresh_state.exit_crit_edge
  %LDBER0 = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 8, i32 14
  %9 = ptrtoint ptr %LDBER0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %LDBER0, align 2
  %conv = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %LDBER1 = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 8, i32 15
  %11 = ptrtoint ptr %LDBER1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %LDBER1, align 1
  %conv2 = zext i8 %12 to i32
  %shl3 = shl nuw nsw i32 %conv2, 8
  %or = or i32 %shl3, %shl
  %LDBER2 = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 8, i32 16
  %13 = ptrtoint ptr %LDBER2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %LDBER2, align 2
  %conv5 = zext i8 %14 to i32
  %or6 = or i32 %or, %conv5
  %15 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or6, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm3510_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %next_status_check.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_status_check.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.bcm3510_refresh_state.exit_crit_edge

entry.bcm3510_refresh_state.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_refresh_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %status1.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 7
  %call.i = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 56, i8 noundef zeroext 8, ptr noundef null, i8 noundef zeroext 0, ptr noundef %status1.i, i8 noundef zeroext 38) #8
  %status2.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 8
  %call1.i = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 56, i8 noundef zeroext 20, ptr noundef null, i8 noundef zeroext 0, ptr noundef %status2.i, i8 noundef zeroext 22) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %status_check_interval.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %status_check_interval.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status_check_interval.i, align 4
  %mul.i = mul i32 %7, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %5
  %8 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %next_status_check.i, align 4
  br label %bcm3510_refresh_state.exit

bcm3510_refresh_state.exit:                       ; preds = %if.then.i, %entry.bcm3510_refresh_state.exit_crit_edge
  %SIGNAL = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 8, i32 21
  %9 = ptrtoint ptr %SIGNAL to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %SIGNAL, align 1
  %11 = tail call i8 @llvm.umin.i8(i8 %10, i8 -66)
  %12 = tail call i8 @llvm.umax.i8(i8 %11, i8 90)
  %13 = zext i8 %12 to i16
  %14 = mul nuw i16 %13, 255
  %mul = add i16 %14, -22950
  %div1415 = udiv i16 %mul, 100
  %shl = shl nuw i16 %div1415, 8
  %or = or i16 %shl, %div1415
  %15 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %or, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm3510_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %next_status_check.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_status_check.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.bcm3510_refresh_state.exit_crit_edge

entry.bcm3510_refresh_state.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_refresh_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %status1.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 7
  %call.i = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 56, i8 noundef zeroext 8, ptr noundef null, i8 noundef zeroext 0, ptr noundef %status1.i, i8 noundef zeroext 38) #8
  %status2.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 8
  %call1.i = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 56, i8 noundef zeroext 20, ptr noundef null, i8 noundef zeroext 0, ptr noundef %status2.i, i8 noundef zeroext 22) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %status_check_interval.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %status_check_interval.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status_check_interval.i, align 4
  %mul.i = mul i32 %7, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %5
  %8 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %next_status_check.i, align 4
  br label %bcm3510_refresh_state.exit

bcm3510_refresh_state.exit:                       ; preds = %if.then.i, %entry.bcm3510_refresh_state.exit_crit_edge
  %SNR_EST0 = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 7, i32 4
  %9 = ptrtoint ptr %SNR_EST0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %SNR_EST0, align 4
  %conv = zext i8 %10 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %SNR_EST1 = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 7, i32 5
  %11 = ptrtoint ptr %SNR_EST1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %SNR_EST1, align 1
  %conv2 = zext i8 %12 to i32
  %mul3 = mul nuw nsw i32 %conv2, 1000
  %13 = lshr i32 %mul3, 8
  %add = add nuw nsw i32 %13, %mul
  %conv4 = trunc i32 %add to i16
  %14 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv4, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm3510_read_unc(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %unc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %next_status_check.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_status_check.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.bcm3510_refresh_state.exit_crit_edge

entry.bcm3510_refresh_state.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_refresh_state.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %status1.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 7
  %call.i = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 56, i8 noundef zeroext 8, ptr noundef null, i8 noundef zeroext 0, ptr noundef %status1.i, i8 noundef zeroext 38) #8
  %status2.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 8
  %call1.i = tail call fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %1, i8 noundef zeroext 56, i8 noundef zeroext 20, ptr noundef null, i8 noundef zeroext 0, ptr noundef %status2.i, i8 noundef zeroext 22) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %status_check_interval.i = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %status_check_interval.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status_check_interval.i, align 4
  %mul.i = mul i32 %7, 100
  %div.i = udiv i32 %mul.i, 1000
  %add.i = add i32 %div.i, %5
  %8 = ptrtoint ptr %next_status_check.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add.i, ptr %next_status_check.i, align 4
  br label %bcm3510_refresh_state.exit

bcm3510_refresh_state.exit:                       ; preds = %if.then.i, %entry.bcm3510_refresh_state.exit_crit_edge
  %LDUERC0 = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 8, i32 10
  %9 = ptrtoint ptr %LDUERC0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %LDUERC0, align 2
  %conv = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %LDUERC1 = getelementptr inbounds %struct.bcm3510_state, ptr %1, i32 0, i32 8, i32 11
  %11 = ptrtoint ptr %LDUERC1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %LDUERC1, align 1
  %conv2 = zext i8 %12 to i32
  %or = or i32 %shl, %conv2
  %13 = ptrtoint ptr %unc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %unc, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm3510_do_hab_cmd(ptr noundef %st, i8 noundef zeroext %cmd, i8 noundef zeroext %msgid, ptr nocapture noundef readonly %obuf, i8 noundef zeroext %olen, ptr nocapture noundef writeonly %ibuf, i8 noundef zeroext %ilen) unnamed_addr #0 align 64 {
entry:
  %v.i134 = alloca %union.bcm3510_register_value, align 1
  %v.i = alloca %union.bcm3510_register_value, align 1
  %ob = alloca [128 x i8], align 1
  %ib = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ob) #8
  %0 = getelementptr inbounds i8, ptr %ob, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 126)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ib) #8
  %2 = call ptr @memset(ptr %ib, i32 255, i32 128)
  %conv = zext i8 %ilen to i32
  %add = add nuw nsw i32 %conv, 2
  %conv5 = zext i8 %olen to i32
  %add6 = add nuw nsw i32 %conv5, 2
  %3 = ptrtoint ptr %ob to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %cmd, ptr %ob, align 1
  %arrayidx21 = getelementptr inbounds [128 x i8], ptr %ob, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %msgid, ptr %arrayidx21, align 1
  %arrayidx22 = getelementptr inbounds [128 x i8], ptr %ob, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %arrayidx22, ptr %obuf, i32 %conv5)
  %6 = load i32, ptr @debug, align 4
  %and24 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %entry.for.body.preheader_crit_edge, label %do.end29

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

do.end29:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #12
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end29, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0154 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %7 = load i32, ptr @debug, align 4
  %and37 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %for.body.for.inc_crit_edge, label %do.end42

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end42:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx44 = getelementptr [128 x i8], ptr %ob, i32 0, i32 %i.0154
  %8 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %9 to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv45) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end42, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0154, 1
  %exitcond.not = icmp eq i32 %inc, %add6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %10 = load i32, ptr @debug, align 4
  %and48 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %for.end.if.end56_crit_edge, label %do.end53

for.end.if.end56_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.end53:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %if.end56

if.end56:                                         ; preds = %do.end53, %for.end.if.end56_crit_edge
  %hab_mutex = getelementptr inbounds %struct.bcm3510_state, ptr %st, i32 0, i32 3
  %call57 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %hab_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.cleanup_crit_edge, label %if.end61

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v.i) #8
  %11 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %v.i, align 1, !annotation !205
  %call.i = call fastcc i32 @bcm3510_readB(ptr noundef %st, i8 noundef zeroext -88, ptr noundef nonnull %v.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end61.bcm3510_hab_send_request.exit.thread_crit_edge, label %if.end.i

if.end61.bcm3510_hab_send_request.exit.thread_crit_edge: ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_hab_send_request.exit.thread

if.end.i:                                         ; preds = %if.end61
  %12 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %v.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then1.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i

if.then1.i:                                       ; preds = %if.end.i
  %13 = load i32, ptr @debug, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then1.i.if.end5.i_crit_edge, label %do.end.i

if.then1.i.if.end5.i_crit_edge:                   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

do.end.i:                                         ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end.i, %if.then1.i.if.end5.i_crit_edge
  %14 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load6.i = load i8, ptr %v.i, align 1
  %bf.clear.i = and i8 %bf.load6.i, 127
  store i8 %bf.clear.i, ptr %v.i, align 1
  %coerce.dive.coerce.sroa.0.0.insert.ext.i = zext i8 %bf.clear.i to i32
  %coerce.dive.coerce.sroa.0.0.insert.shift.i = shl nuw nsw i32 %coerce.dive.coerce.sroa.0.0.insert.ext.i, 24
  %.fca.0.insert68.i = insertvalue [1 x i32] poison, i32 %coerce.dive.coerce.sroa.0.0.insert.shift.i, 0
  %call7.i = call fastcc i32 @bcm3510_writeB(ptr noundef %st, i8 noundef zeroext -88, [1 x i32] %.fca.0.insert68.i) #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end5.i, %if.end.i.if.end8.i_crit_edge
  %call13.i = call fastcc i32 @bcm3510_writeB(ptr noundef %st, i8 noundef zeroext -90, [1 x i32] [i32 16777216]) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end8.i.bcm3510_hab_send_request.exit.thread_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  br label %for.body.i

if.end8.i.bcm3510_hab_send_request.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_hab_send_request.exit.thread

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.084.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add6
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end8.i.for.body.i_crit_edge
  %coerce.dive18.coerce.sroa.0.085.i = phi i32 [ %coerce.dive18.coerce.sroa.0.0.insert.insert.i, %for.cond.i.for.body.i_crit_edge ], [ undef, %if.end8.i.for.body.i_crit_edge ]
  %i.084.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end8.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %ob, i32 %i.084.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %coerce.dive18.coerce.sroa.0.0.insert.ext.i = zext i8 %16 to i32
  %coerce.dive18.coerce.sroa.0.0.insert.shift.i = shl nuw i32 %coerce.dive18.coerce.sroa.0.0.insert.ext.i, 24
  %coerce.dive18.coerce.sroa.0.0.insert.mask.i = and i32 %coerce.dive18.coerce.sroa.0.085.i, 16777215
  %coerce.dive18.coerce.sroa.0.0.insert.insert.i = or i32 %coerce.dive18.coerce.sroa.0.0.insert.shift.i, %coerce.dive18.coerce.sroa.0.0.insert.mask.i
  %.fca.0.insert66.i = insertvalue [1 x i32] poison, i32 %coerce.dive18.coerce.sroa.0.0.insert.insert.i, 0
  %call19.i = call fastcc i32 @bcm3510_writeB(ptr noundef %st, i8 noundef zeroext -89, [1 x i32] %.fca.0.insert66.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %for.body.i.bcm3510_hab_send_request.exit.thread_crit_edge, label %for.cond.i

for.body.i.bcm3510_hab_send_request.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_hab_send_request.exit.thread

for.end.i:                                        ; preds = %for.cond.i
  %17 = ptrtoint ptr %v.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -64, ptr %v.i, align 1
  %call30.i = call fastcc i32 @bcm3510_writeB(ptr noundef %st, i8 noundef zeroext -88, [1 x i32] [i32 -1073741824]) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %for.end.i.bcm3510_hab_send_request.exit.thread_crit_edge, label %if.end33.i

for.end.i.bcm3510_hab_send_request.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_hab_send_request.exit.thread

if.end33.i:                                       ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -100, %18
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end47.i.while.cond.i_crit_edge, %if.end33.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp34.i = icmp slt i32 %sub.i, 0
  %20 = load i32, ptr @debug, align 4
  %and35.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %cmp34.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  br i1 %tobool36.not.i, label %while.body.i.if.end43.i_crit_edge, label %do.end40.i

while.body.i.if.end43.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

do.end40.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #12
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end40.i, %while.body.i.if.end43.i_crit_edge
  call void @msleep(i32 noundef 10) #8
  %call44.i = call fastcc i32 @bcm3510_readB(ptr noundef %st, i8 noundef zeroext -88, ptr noundef nonnull %v.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp slt i32 %call44.i, 0
  br i1 %cmp45.i, label %if.end43.i.bcm3510_hab_send_request.exit.thread_crit_edge, label %if.end47.i

if.end43.i.bcm3510_hab_send_request.exit.thread_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_hab_send_request.exit.thread

if.end47.i:                                       ; preds = %if.end43.i
  %21 = ptrtoint ptr %v.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load48.i = load i8, ptr %v.i, align 1
  %tobool50.not.i = icmp sgt i8 %bf.load48.i, -1
  br i1 %tobool50.not.i, label %lor.lhs.false, label %if.end47.i.while.cond.i_crit_edge

if.end47.i.while.cond.i_crit_edge:                ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  br i1 %tobool36.not.i, label %while.end.i.bcm3510_hab_send_request.exit.thread_crit_edge, label %do.end58.i

while.end.i.bcm3510_hab_send_request.exit.thread_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_hab_send_request.exit.thread

do.end58.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #12
  br label %bcm3510_hab_send_request.exit.thread

bcm3510_hab_send_request.exit.thread:             ; preds = %do.end58.i, %while.end.i.bcm3510_hab_send_request.exit.thread_crit_edge, %if.end43.i.bcm3510_hab_send_request.exit.thread_crit_edge, %for.end.i.bcm3510_hab_send_request.exit.thread_crit_edge, %for.body.i.bcm3510_hab_send_request.exit.thread_crit_edge, %if.end8.i.bcm3510_hab_send_request.exit.thread_crit_edge, %if.end61.bcm3510_hab_send_request.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -110, %while.end.i.bcm3510_hab_send_request.exit.thread_crit_edge ], [ -110, %do.end58.i ], [ %call30.i, %for.end.i.bcm3510_hab_send_request.exit.thread_crit_edge ], [ %call13.i, %if.end8.i.bcm3510_hab_send_request.exit.thread_crit_edge ], [ %call.i, %if.end61.bcm3510_hab_send_request.exit.thread_crit_edge ], [ %call44.i, %if.end43.i.bcm3510_hab_send_request.exit.thread_crit_edge ], [ %call19.i, %for.body.i.bcm3510_hab_send_request.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i) #8
  br label %error

lor.lhs.false:                                    ; preds = %if.end47.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %v.i134) #8
  %22 = ptrtoint ptr %v.i134 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %v.i134, align 1
  %call.i135 = call fastcc i32 @bcm3510_writeB(ptr noundef %st, i8 noundef zeroext -90, [1 x i32] [i32 16777216]) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %cmp.i136 = icmp slt i32 %call.i135, 0
  br i1 %cmp.i136, label %lor.lhs.false.bcm3510_hab_get_response.exit.thread_crit_edge, label %lor.lhs.false.for.body.i138_crit_edge

lor.lhs.false.for.body.i138_crit_edge:            ; preds = %lor.lhs.false
  br label %for.body.i138

lor.lhs.false.bcm3510_hab_get_response.exit.thread_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_hab_get_response.exit.thread

for.body.i138:                                    ; preds = %if.end5.i142.for.body.i138_crit_edge, %lor.lhs.false.for.body.i138_crit_edge
  %i.013.i = phi i32 [ %inc.i140, %if.end5.i142.for.body.i138_crit_edge ], [ 0, %lor.lhs.false.for.body.i138_crit_edge ]
  %call2.i = call fastcc i32 @bcm3510_readB(ptr noundef %st, i8 noundef zeroext -89, ptr noundef nonnull %v.i134) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %for.body.i138.bcm3510_hab_get_response.exit.thread_crit_edge, label %if.end5.i142

for.body.i138.bcm3510_hab_get_response.exit.thread_crit_edge: ; preds = %for.body.i138
  call void @__sanitizer_cov_trace_pc() #10
  br label %bcm3510_hab_get_response.exit.thread

if.end5.i142:                                     ; preds = %for.body.i138
  %23 = ptrtoint ptr %v.i134 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %v.i134, align 1
  %arrayidx.i139 = getelementptr i8, ptr %ib, i32 %i.013.i
  %25 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx.i139, align 1
  %inc.i140 = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i141 = icmp eq i32 %inc.i140, %add
  br i1 %exitcond.not.i141, label %if.end74, label %if.end5.i142.for.body.i138_crit_edge

if.end5.i142.for.body.i138_crit_edge:             ; preds = %if.end5.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i138

bcm3510_hab_get_response.exit.thread:             ; preds = %for.body.i138.bcm3510_hab_get_response.exit.thread_crit_edge, %lor.lhs.false.bcm3510_hab_get_response.exit.thread_crit_edge
  %retval.0.i143.ph = phi i32 [ %call.i135, %lor.lhs.false.bcm3510_hab_get_response.exit.thread_crit_edge ], [ %call2.i, %for.body.i138.bcm3510_hab_get_response.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i134) #8
  br label %error

if.end74:                                         ; preds = %if.end5.i142
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %v.i134) #8
  %26 = load i32, ptr @debug, align 4
  %and75 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.for.body90.preheader_crit_edge, label %do.end80

if.end74.for.body90.preheader_crit_edge:          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body90.preheader

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86) #12
  br label %for.body90.preheader

for.body90.preheader:                             ; preds = %do.end80, %if.end74.for.body90.preheader_crit_edge
  br label %for.body90

for.body90:                                       ; preds = %for.inc102.for.body90_crit_edge, %for.body90.preheader
  %i84.0156 = phi i32 [ %inc103, %for.inc102.for.body90_crit_edge ], [ 0, %for.body90.preheader ]
  %27 = load i32, ptr @debug, align 4
  %and91 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %for.body90.for.inc102_crit_edge, label %do.end96

for.body90.for.inc102_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc102

do.end96:                                         ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx98 = getelementptr [128 x i8], ptr %ib, i32 0, i32 %i84.0156
  %28 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx98, align 1
  %conv99 = zext i8 %29 to i32
  %call100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv99) #12
  br label %for.inc102

for.inc102:                                       ; preds = %do.end96, %for.body90.for.inc102_crit_edge
  %inc103 = add nuw nsw i32 %i84.0156, 1
  %exitcond164.not = icmp eq i32 %inc103, %add
  br i1 %exitcond164.not, label %for.end104, label %for.inc102.for.body90_crit_edge

for.inc102.for.body90_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body90

for.end104:                                       ; preds = %for.inc102
  %30 = load i32, ptr @debug, align 4
  %and105 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %for.end104.if.end113_crit_edge, label %do.end110

for.end104.if.end113_crit_edge:                   ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

do.end110:                                        ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #10
  %call112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #12
  br label %if.end113

if.end113:                                        ; preds = %do.end110, %for.end104.if.end113_crit_edge
  %arrayidx114 = getelementptr inbounds [128 x i8], ptr %ib, i32 0, i32 2
  %31 = call ptr @memcpy(ptr %ibuf, ptr %arrayidx114, i32 %conv)
  br label %error

error:                                            ; preds = %if.end113, %bcm3510_hab_get_response.exit.thread, %bcm3510_hab_send_request.exit.thread
  %ret.0 = phi i32 [ 0, %if.end113 ], [ %retval.0.i.ph, %bcm3510_hab_send_request.exit.thread ], [ %retval.0.i143.ph, %bcm3510_hab_get_response.exit.thread ]
  call void @mutex_unlock(ptr noundef %hab_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end56.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ -11, %if.end56.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ib) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ob) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !158, !159, !161, !162, !163, !165, !166, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !193, !194, !195}
!llvm.module.flags = !{!196, !197, !198, !199, !200, !201, !202, !203}
!llvm.ident = !{!204}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 67, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 68, i32 1}
!5 = !{ptr @bcm3510_attach.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 816, i32 2}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 821, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @bcm3510_attach._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @bcm3510_attach._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 827, i32 2}
!16 = !{ptr @bcm3510_attach._entry.4, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @bcm3510_attach._entry_ptr.6, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_bcm3510_attach, !19, !"__ksymtab_bcm3510_attach", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 837, i32 1}
!20 = !{ptr @__UNIQUE_ID_description292, !21, !"__UNIQUE_ID_description292", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 867, i32 1}
!22 = !{ptr @__UNIQUE_ID_author293, !23, !"__UNIQUE_ID_author293", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 868, i32 1}
!24 = !{ptr @__UNIQUE_ID_file294, !25, !"__UNIQUE_ID_file294", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 869, i32 1}
!26 = !{ptr @__UNIQUE_ID_license295, !25, !"__UNIQUE_ID_license295", i1 false, i1 false}
!27 = !{ptr @debug, !28, !"debug", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 66, i32 12}
!29 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 115, i32 3}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @bcm3510_readbytes._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @bcm3510_readbytes._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 119, i32 2}
!37 = !{ptr @bcm3510_readbytes._entry.9, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @bcm3510_readbytes._entry_ptr.11, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 120, i32 2}
!41 = !{ptr @bcm3510_readbytes._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bcm3510_readbytes._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 121, i32 2}
!45 = !{ptr @bcm3510_readbytes._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @bcm3510_readbytes._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 698, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @bcm3510_reset._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @bcm3510_reset._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 90, i32 2}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @bcm3510_writebytes._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @bcm3510_writebytes._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @bcm3510_writebytes._entry.22, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 91, i32 2}
!59 = !{ptr @bcm3510_writebytes._entry_ptr.23, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @bcm3510_writebytes._entry.24, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 92, i32 2}
!62 = !{ptr @bcm3510_writebytes._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 96, i32 3}
!65 = !{ptr @bcm3510_writebytes._entry.26, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @bcm3510_writebytes._entry_ptr.28, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @bcm3510_ops, !68, !"bcm3510_ops", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 839, i32 38}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 769, i32 2}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @bcm3510_init._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @bcm3510_init._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 773, i32 4}
!76 = !{ptr @bcm3510_init._entry.31, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @bcm3510_init._entry_ptr.33, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 778, i32 4}
!80 = !{ptr @bcm3510_init._entry.34, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @bcm3510_init._entry_ptr.36, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 735, i32 3}
!84 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @bcm3510_init_cold._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @bcm3510_init_cold._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 739, i32 2}
!89 = !{ptr @bcm3510_init_cold._entry.39, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @bcm3510_init_cold._entry_ptr.41, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 743, i32 2}
!93 = !{ptr @bcm3510_init_cold._entry.42, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @bcm3510_init_cold._entry_ptr.44, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 749, i32 2}
!97 = !{ptr @bcm3510_init_cold._entry.45, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @bcm3510_init_cold._entry_ptr.47, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 638, i32 2}
!101 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @bcm3510_download_firmware._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @bcm3510_download_firmware._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 639, i32 51}
!106 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 640, i32 3}
!108 = !{ptr @bcm3510_download_firmware._entry.51, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @bcm3510_download_firmware._entry_ptr.53, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 643, i32 2}
!112 = !{ptr @bcm3510_download_firmware._entry.54, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @bcm3510_download_firmware._entry_ptr.56, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 649, i32 3}
!116 = !{ptr @bcm3510_download_firmware._entry.57, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @bcm3510_download_firmware._entry_ptr.59, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 651, i32 4}
!120 = !{ptr @bcm3510_download_firmware._entry.60, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @bcm3510_download_firmware._entry_ptr.62, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 657, i32 2}
!124 = !{ptr @bcm3510_download_firmware._entry.63, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @bcm3510_download_firmware._entry_ptr.65, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 722, i32 2}
!128 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @bcm3510_clear_reset._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @bcm3510_clear_reset._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 666, i32 2}
!133 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @bcm3510_check_firmware_version._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @bcm3510_check_firmware_version._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 674, i32 2}
!138 = !{ptr @bcm3510_check_firmware_version._entry.70, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @bcm3510_check_firmware_version._entry_ptr.72, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 211, i32 3}
!142 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @bcm3510_do_hab_cmd._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @bcm3510_do_hab_cmd._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 216, i32 3}
!147 = !{ptr @bcm3510_do_hab_cmd._entry.75, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @bcm3510_do_hab_cmd._entry_ptr.77, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 224, i32 2}
!151 = !{ptr @bcm3510_do_hab_cmd._entry.78, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @bcm3510_do_hab_cmd._entry_ptr.80, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @bcm3510_do_hab_cmd._entry.81, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 225, i32 2}
!155 = !{ptr @bcm3510_do_hab_cmd._entry_ptr.82, !154, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @bcm3510_do_hab_cmd._entry.83, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 226, i32 2}
!158 = !{ptr @bcm3510_do_hab_cmd._entry_ptr.84, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.86, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 235, i32 2}
!161 = !{ptr @bcm3510_do_hab_cmd._entry.85, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @bcm3510_do_hab_cmd._entry_ptr.87, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @bcm3510_do_hab_cmd._entry.88, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 236, i32 2}
!165 = !{ptr @bcm3510_do_hab_cmd._entry_ptr.89, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @bcm3510_do_hab_cmd._entry.90, !167, !"_entry", i1 false, i1 false}
!167 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 237, i32 2}
!168 = !{ptr @bcm3510_do_hab_cmd._entry_ptr.91, !167, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.92, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 165, i32 3}
!171 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @bcm3510_hab_send_request._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @bcm3510_hab_send_request._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.95, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 192, i32 3}
!176 = !{ptr @bcm3510_hab_send_request._entry.94, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @bcm3510_hab_send_request._entry_ptr.96, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.98, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 201, i32 2}
!180 = !{ptr @bcm3510_hab_send_request._entry.97, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @bcm3510_hab_send_request._entry_ptr.99, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.100, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 460, i32 2}
!184 = !{ptr @.str.101, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @bcm3510_set_freq._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @bcm3510_set_freq._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.103, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 488, i32 2}
!189 = !{ptr @bcm3510_set_freq._entry.102, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @bcm3510_set_freq._entry_ptr.104, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.105, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/dvb-frontends/bcm3510.c", i32 312, i32 2}
!193 = !{ptr @.str.106, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @bcm3510_read_status._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @bcm3510_read_status._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{i32 1, !"wchar_size", i32 2}
!197 = !{i32 1, !"min_enum_size", i32 4}
!198 = !{i32 8, !"branch-target-enforcement", i32 0}
!199 = !{i32 8, !"sign-return-address", i32 0}
!200 = !{i32 8, !"sign-return-address-all", i32 0}
!201 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!202 = !{i32 7, !"uwtable", i32 1}
!203 = !{i32 7, !"frame-pointer", i32 2}
!204 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!205 = !{!"auto-init"}
