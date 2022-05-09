; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/si21xx.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/si21xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+si21xx_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_si21xx_attach\09\09\09\09"
module asm "\09.long\09__crc_si21xx_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_si21xx_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22si21xx_attach\22\09\09\09\09\09"
module asm "__kstrtabns_si21xx_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.si21xx_state = type { ptr, ptr, %struct.dvb_frontend, i8, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@si21xx_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017si21xx: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"si21xx_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/dvb-frontends/si21xx.c\00", [59 x i8] zeroinitializer }, align 32
@si21xx_attach._entry_ptr = internal global ptr @si21xx_attach._entry, section ".printk_index", align 4
@si21xx_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"SL SI21XX DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 0, i32 1000000, i32 45000000, i32 500, i32 1710 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @si21xx_release, ptr null, ptr @si21xx_init, ptr @si21xx_sleep, ptr null, ptr null, ptr @si21_write, ptr null, ptr null, ptr @si21xx_set_frontend, ptr null, ptr null, ptr @si21_read_status, ptr @si21_read_ber, ptr @si21_read_signal_strength, ptr @si21_read_snr, ptr @si21_read_ucblocks, ptr null, ptr @si21xx_send_diseqc_msg, ptr null, ptr @si21xx_send_diseqc_burst, ptr @si21xx_set_tone, ptr @si21xx_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__kstrtab_si21xx_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_si21xx_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_si21xx_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @si21xx_attach to i32), ptr @__kstrtab_si21xx_attach, ptr @__kstrtabns_si21xx_attach }, section "___ksymtab+si21xx_attach", align 4
@__param_str_debug = internal constant [13 x i8] c"si21xx.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [26 x i8] c"si21xx.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [64 x i8] c"si21xx.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [52 x i8] c"si21xx.description=SL SI21XX DVB Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [32 x i8] c"si21xx.author=Igor M. Liplianin\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [47 x i8] c"si21xx.file=drivers/media/dvb-frontends/si21xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [19 x i8] c"si21xx.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@si21_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017si21xx: %s: readreg error (reg == 0x%02x, ret == %i)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si21_readreg\00", [19 x i8] zeroinitializer }, align 32
@si21_readreg._entry_ptr = internal global ptr @si21_readreg._entry, section ".printk_index", align 4
@si21_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017si21xx: %s: writereg error (reg == 0x%02x, data == 0x%02x, ret == %i)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"si21_writereg\00", [18 x i8] zeroinitializer }, align 32
@si21_writereg._entry_ptr = internal global ptr @si21_writereg._entry, section ".printk_index", align 4
@si21xx_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"si21xx_release\00", [17 x i8] zeroinitializer }, align 32
@si21xx_release._entry_ptr = internal global ptr @si21xx_release._entry, section ".printk_index", align 4
@si21xx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"si21xx_init\00", [20 x i8] zeroinitializer }, align 32
@si21xx_init._entry_ptr = internal global ptr @si21xx_init._entry, section ".printk_index", align 4
@serit_sp1511lhb_inittab = internal constant { [148 x i8], [44 x i8] } { [148 x i8] c"\01( \03' \E0E\E1\08\FE\01\01(\89\09\04\80\05\01\06\00 \03$\88)\09*\0F,\10-\19.\08/\100\194 5\03E\02FEG\D0H\00I@J\03L\FDO.P.Q\10R\10V\92Y\00Z-[3\\\1F_vb\C0c\C0d\F3e\F3y@j@k\0Al\80m'q\06u`x\00y\B5|\05}\1A\87U\88r\8F\08\90\E0\94@\A0?\A1\C0\A4\CC\A5f\A6f\A7{\A8{\A9{\AA\9A\ED\04\AD\00\AE\03\CC\AB\01\08\FF\FF", [44 x i8] zeroinitializer }, align 32
@si21xx_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017si21xx:  %s : TS Set Error\0A\00", [34 x i8] zeroinitializer }, align 32
@si21xx_init._entry_ptr.11 = internal global ptr @si21xx_init._entry.9, section ".printk_index", align 4
@si21_writeregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017si21xx: %s: writereg error (reg1 == 0x%02x, data == 0x%02x, ret == %i)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"si21_writeregs\00", [17 x i8] zeroinitializer }, align 32
@si21_writeregs._entry_ptr = internal global ptr @si21_writeregs._entry, section ".printk_index", align 4
@si21xx_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.14, ptr @.str.2, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"si21xx_sleep\00", [19 x i8] zeroinitializer }, align 32
@si21xx_sleep._entry_ptr = internal global ptr @si21xx_sleep._entry, section ".printk_index", align 4
@si21_readregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017si21xx: %s: readreg error (ret == %i)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"si21_readregs\00", [18 x i8] zeroinitializer }, align 32
@si21_readregs._entry_ptr = internal global ptr @si21_readregs._entry, section ".printk_index", align 4
@__const.si21xx_set_frontend.afs = private unnamed_addr constant [10 x i32] [i32 200, i32 192, i32 193, i32 194, i32 195, i32 196, i32 204, i32 205, i32 206, i32 207], align 4
@si21xx_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017si21xx: %s : FE_SET_FRONTEND\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"si21xx_set_frontend\00", [44 x i8] zeroinitializer }, align 32
@si21xx_set_frontend._entry_ptr = internal global ptr @si21xx_set_frontend._entry, section ".printk_index", align 4
@si21xx_set_frontend._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017si21xx: %s: unsupported delivery system selected (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@si21xx_set_frontend._entry_ptr.21 = internal global ptr @si21xx_set_frontend._entry.19, section ".printk_index", align 4
@__const.si21xx_setacquire.coderates = private unnamed_addr constant [10 x i8] c"\00\01\02\04\00\08\10 \00?", align 1
@si21xx_setacquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.22, ptr @.str.2, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"si21xx_setacquire\00", [46 x i8] zeroinitializer }, align 32
@si21xx_setacquire._entry_ptr = internal global ptr @si21xx_setacquire._entry, section ".printk_index", align 4
@si21xx_set_symbolrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017si21xx: %s : srate = %i\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"si21xx_set_symbolrate\00", [42 x i8] zeroinitializer }, align 32
@si21xx_set_symbolrate._entry_ptr = internal global ptr @si21xx_set_symbolrate._entry, section ".printk_index", align 4
@si21_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017si21xx: %s : FE_READ_STATUS : VSTATUS: 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si21_read_status\00", [47 x i8] zeroinitializer }, align 32
@si21_read_status._entry_ptr = internal global ptr @si21_read_status._entry, section ".printk_index", align 4
@si21_read_ber._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.27, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"si21_read_ber\00", [18 x i8] zeroinitializer }, align 32
@si21_read_ber._entry_ptr = internal global ptr @si21_read_ber._entry, section ".printk_index", align 4
@si21_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017si21xx: %s : AGCPWR: 0x%02x%02x, signal=0x%04x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"si21_read_signal_strength\00", [38 x i8] zeroinitializer }, align 32
@si21_read_signal_strength._entry_ptr = internal global ptr @si21_read_signal_strength._entry, section ".printk_index", align 4
@si21_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.30, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"si21_read_snr\00", [18 x i8] zeroinitializer }, align 32
@si21_read_snr._entry_ptr = internal global ptr @si21_read_snr._entry, section ".printk_index", align 4
@si21_read_ucblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.31, ptr @.str.2, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"si21_read_ucblocks\00", [45 x i8] zeroinitializer }, align 32
@si21_read_ucblocks._entry_ptr = internal global ptr @si21_read_ucblocks._entry, section ".printk_index", align 4
@si21xx_send_diseqc_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.32, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"si21xx_send_diseqc_msg\00", [41 x i8] zeroinitializer }, align 32
@si21xx_send_diseqc_msg._entry_ptr = internal global ptr @si21xx_send_diseqc_msg._entry, section ".printk_index", align 4
@si21xx_send_diseqc_burst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.33, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"si21xx_send_diseqc_burst\00", [39 x i8] zeroinitializer }, align 32
@si21xx_send_diseqc_burst._entry_ptr = internal global ptr @si21xx_send_diseqc_burst._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@si21xx_wait_diseqc_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.34, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"si21xx_wait_diseqc_idle\00", [40 x i8] zeroinitializer }, align 32
@si21xx_wait_diseqc_idle._entry_ptr = internal global ptr @si21xx_wait_diseqc_idle._entry, section ".printk_index", align 4
@si21xx_wait_diseqc_idle._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017si21xx: %s: timeout!!\0A\00", [39 x i8] zeroinitializer }, align 32
@si21xx_wait_diseqc_idle._entry_ptr.37 = internal global ptr @si21xx_wait_diseqc_idle._entry.35, section ".printk_index", align 4
@si21xx_set_tone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.38, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"si21xx_set_tone\00", [16 x i8] zeroinitializer }, align 32
@si21xx_set_tone._entry_ptr = internal global ptr @si21xx_set_tone._entry, section ".printk_index", align 4
@si21xx_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017si21xx: %s: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"si21xx_set_voltage\00", [45 x i8] zeroinitializer }, align 32
@si21xx_set_voltage._entry_ptr = internal global ptr @si21xx_set_voltage._entry, section ".printk_index", align 4
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SEC_VOLTAGE_13\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SEC_VOLTAGE_18\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"??\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 20]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 102, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 902, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [11 x i8] c"si21xx_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 863, i32 38 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 301, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 263, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 858, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 483, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [24 x i8] c"serit_sp1511lhb_inittab\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 144, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 526, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 243, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 844, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 327, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 730, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 733, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 651, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 356, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 549, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 594, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 580, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 614, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 623, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 386, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 413, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 336, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 340, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 437, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.239 = private constant [40 x i8] c"../drivers/media/dvb-frontends/si21xx.c\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.239, i32 457, i32 2 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_si21xx_attach, ptr @__param_debug, ptr @si21_read_ber._entry, ptr @si21_read_ber._entry_ptr, ptr @si21_read_signal_strength._entry, ptr @si21_read_signal_strength._entry_ptr, ptr @si21_read_snr._entry, ptr @si21_read_snr._entry_ptr, ptr @si21_read_status._entry, ptr @si21_read_status._entry_ptr, ptr @si21_read_ucblocks._entry, ptr @si21_read_ucblocks._entry_ptr, ptr @si21_readreg._entry, ptr @si21_readreg._entry_ptr, ptr @si21_readregs._entry, ptr @si21_readregs._entry_ptr, ptr @si21_writereg._entry, ptr @si21_writereg._entry_ptr, ptr @si21_writeregs._entry, ptr @si21_writeregs._entry_ptr, ptr @si21xx_attach._entry, ptr @si21xx_attach._entry_ptr, ptr @si21xx_init._entry, ptr @si21xx_init._entry.9, ptr @si21xx_init._entry_ptr, ptr @si21xx_init._entry_ptr.11, ptr @si21xx_release._entry, ptr @si21xx_release._entry_ptr, ptr @si21xx_send_diseqc_burst._entry, ptr @si21xx_send_diseqc_burst._entry_ptr, ptr @si21xx_send_diseqc_msg._entry, ptr @si21xx_send_diseqc_msg._entry_ptr, ptr @si21xx_set_frontend._entry, ptr @si21xx_set_frontend._entry.19, ptr @si21xx_set_frontend._entry_ptr, ptr @si21xx_set_frontend._entry_ptr.21, ptr @si21xx_set_symbolrate._entry, ptr @si21xx_set_symbolrate._entry_ptr, ptr @si21xx_set_tone._entry, ptr @si21xx_set_tone._entry_ptr, ptr @si21xx_set_voltage._entry, ptr @si21xx_set_voltage._entry_ptr, ptr @si21xx_setacquire._entry, ptr @si21xx_setacquire._entry_ptr, ptr @si21xx_sleep._entry, ptr @si21xx_sleep._entry_ptr, ptr @si21xx_wait_diseqc_idle._entry, ptr @si21xx_wait_diseqc_idle._entry.35, ptr @si21xx_wait_diseqc_idle._entry_ptr, ptr @si21xx_wait_diseqc_idle._entry_ptr.37, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @si21xx_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @serit_sp1511lhb_inittab, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serit_sp1511lhb_inittab to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21_writeregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21_readregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_set_frontend._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_setacquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_set_symbolrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21_read_ber._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21_read_ucblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_send_diseqc_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_send_diseqc_burst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_wait_diseqc_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_wait_diseqc_idle._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_set_tone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si21xx_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @si21xx_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %b0.i48 = alloca [1 x i8], align 1
  %b1.i49 = alloca [1 x i8], align 1
  %msg.i50 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i37 = alloca [2 x i8], align 1
  %msg.i38 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1060) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end3.error_crit_edge, label %if.end6

do.end3.error_crit_edge:                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end6:                                          ; preds = %do.end3
  %config7 = getelementptr inbounds %struct.si21xx_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %config7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %config, ptr %config7, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  %initialised = getelementptr inbounds %struct.si21xx_state, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %initialised to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %initialised, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %initialised, align 8
  %errmode = getelementptr inbounds %struct.si21xx_state, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %errmode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %errmode, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %6 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %7 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config, align 4
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %18 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %b1.i, ptr %buf8.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end6.si21_readreg.exit_crit_edge, label %do.body.i

if.end6.si21_readreg.exit_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.body.i:                                        ; preds = %if.end6
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i.si21_readreg.exit_crit_edge, label %do.end.i

do.body.i.si21_readreg.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 1, i32 noundef %call.i) #9
  br label %si21_readreg.exit

si21_readreg.exit:                                ; preds = %do.end.i, %do.body.i.si21_readreg.exit_crit_edge, %if.end6.si21_readreg.exit_crit_edge
  %21 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %23 = or i8 %22, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i37) #6
  %24 = getelementptr inbounds [2 x i8], ptr %buf.i37, i32 0, i32 1
  %25 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %buf.i37, align 1
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %23, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i38) #6
  %27 = getelementptr inbounds i8, ptr %msg.i38, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 196607, ptr %27, align 4
  %29 = ptrtoint ptr %config7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config7, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 4
  %conv.i40 = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i38 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i40, ptr %msg.i38, align 4
  %flags.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i41 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i41, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 3
  %35 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i37, ptr %buf1.i, align 4
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i, align 8
  %call.i43 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i38, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i43)
  %cmp.not.i44 = icmp eq i32 %call.i43, 1
  br i1 %cmp.not.i44, label %si21_readreg.exit.si21_writereg.exit_crit_edge, label %do.body.i46

si21_readreg.exit.si21_writereg.exit_crit_edge:   ; preds = %si21_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writereg.exit

do.body.i46:                                      ; preds = %si21_readreg.exit
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i45 = icmp eq i32 %38, 0
  br i1 %tobool.not.i45, label %do.body.i46.si21_writereg.exit_crit_edge, label %do.end.i47

do.body.i46.si21_writereg.exit_crit_edge:         ; preds = %do.body.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writereg.exit

do.end.i47:                                       ; preds = %do.body.i46
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = zext i8 %23 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 1, i32 noundef %conv6.i, i32 noundef %call.i43) #9
  br label %si21_writereg.exit

si21_writereg.exit:                               ; preds = %do.end.i47, %do.body.i46.si21_writereg.exit_crit_edge, %si21_readreg.exit.si21_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i38) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i37) #6
  call void @msleep(i32 noundef 200) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i48) #6
  %39 = ptrtoint ptr %b0.i48 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %b0.i48, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i49) #6
  %40 = ptrtoint ptr %b1.i49 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %b1.i49, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i50) #6
  %41 = getelementptr inbounds i8, ptr %msg.i50, i32 4
  %42 = call ptr @memset(ptr %41, i32 255, i32 16)
  %43 = ptrtoint ptr %config7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %config7, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 4
  %conv.i52 = zext i8 %46 to i16
  %47 = ptrtoint ptr %msg.i50 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i52, ptr %msg.i50, align 4
  %flags.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i53 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i53, align 2
  %49 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %41, align 4
  %buf.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 0, i32 3
  %50 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %b0.i48, ptr %buf.i55, align 4
  %arrayinit.element.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1
  %51 = load i8, ptr %44, align 4
  %conv5.i57 = zext i8 %51 to i16
  %52 = ptrtoint ptr %arrayinit.element.i56 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv5.i57, ptr %arrayinit.element.i56, align 4
  %flags6.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1, i32 1
  %53 = ptrtoint ptr %flags6.i58 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %flags6.i58, align 2
  %len7.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1, i32 2
  %54 = ptrtoint ptr %len7.i59 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %len7.i59, align 4
  %buf8.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1, i32 3
  %55 = ptrtoint ptr %buf8.i60 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %b1.i49, ptr %buf8.i60, align 4
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call7.i.i, align 8
  %call.i61 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i50, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i61)
  %cmp.not.i62 = icmp eq i32 %call.i61, 2
  br i1 %cmp.not.i62, label %si21_writereg.exit.si21_readreg.exit67_crit_edge, label %do.body.i64

si21_writereg.exit.si21_readreg.exit67_crit_edge: ; preds = %si21_writereg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit67

do.body.i64:                                      ; preds = %si21_writereg.exit
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i63 = icmp eq i32 %58, 0
  br i1 %tobool.not.i63, label %do.body.i64.si21_readreg.exit67_crit_edge, label %do.end.i66

do.body.i64.si21_readreg.exit67_crit_edge:        ; preds = %do.body.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit67

do.end.i66:                                       ; preds = %do.body.i64
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %call.i61) #9
  br label %si21_readreg.exit67

si21_readreg.exit67:                              ; preds = %do.end.i66, %do.body.i64.si21_readreg.exit67_crit_edge, %si21_writereg.exit.si21_readreg.exit67_crit_edge
  %59 = ptrtoint ptr %b1.i49 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %b1.i49, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i50) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i49) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i48) #6
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values)
  switch i8 %60, label %si21_readreg.exit67.error_crit_edge [
    i8 4, label %si21_readreg.exit67.if.end19_crit_edge
    i8 20, label %si21_readreg.exit67.if.end19_crit_edge68
  ]

si21_readreg.exit67.if.end19_crit_edge68:         ; preds = %si21_readreg.exit67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

si21_readreg.exit67.if.end19_crit_edge:           ; preds = %si21_readreg.exit67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

si21_readreg.exit67.error_crit_edge:              ; preds = %si21_readreg.exit67
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end19:                                         ; preds = %si21_readreg.exit67.if.end19_crit_edge, %si21_readreg.exit67.if.end19_crit_edge68
  %frontend = getelementptr inbounds %struct.si21xx_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.si21xx_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %62 = call ptr @memcpy(ptr %ops, ptr @si21xx_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.si21xx_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %63 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %si21_readreg.exit67.error_crit_edge, %do.end3.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end19
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end19 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si21xx_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si21xx_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i54 = alloca [60 x i8], align 1
  %msg.i55 = alloca %struct.i2c_msg, align 4
  %buf.i37 = alloca [60 x i8], align 1
  %msg.i38 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [60 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = getelementptr inbounds i8, ptr %buf.i, i32 1
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %config.i = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %if.end10

if.end10:                                         ; preds = %si21_writeregs.exit.if.end10_crit_edge, %do.end3
  %5 = phi i8 [ 40, %do.end3 ], [ %24, %si21_writeregs.exit.if.end10_crit_edge ]
  %6 = phi i8 [ 1, %do.end3 ], [ %22, %si21_writeregs.exit.if.end10_crit_edge ]
  %i.075 = phi i32 [ 0, %do.end3 ], [ %add12, %si21_writeregs.exit.if.end10_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf.i) #6
  %7 = call ptr @memset(ptr %3, i32 255, i32 59)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %4, align 4
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %4, align 4
  %15 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf3.i, align 4
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %6, ptr %buf.i, align 1
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %5, ptr %3, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp7.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp7.not.i, label %if.end10.si21_writeregs.exit_crit_edge, label %do.body.i

if.end10.si21_writeregs.exit_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit

do.body.i:                                        ; preds = %if.end10
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i.si21_writeregs.exit_crit_edge, label %do.end.i

do.body.i.si21_writeregs.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv12.i = zext i8 %6 to i32
  %conv14.i = zext i8 %5 to i32
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv12.i, i32 noundef %conv14.i, i32 noundef %call.i) #9
  br label %si21_writeregs.exit

si21_writeregs.exit:                              ; preds = %do.end.i, %do.body.i.si21_writeregs.exit_crit_edge, %if.end10.si21_writeregs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i) #6
  %add12 = add nuw nsw i32 %i.075, 2
  %arrayidx = getelementptr [148 x i8], ptr @serit_sp1511lhb_inittab, i32 0, i32 %add12
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %add = or i32 %add12, 1
  %arrayidx4 = getelementptr [148 x i8], ptr @serit_sp1511lhb_inittab, i32 0, i32 %add
  %23 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 146, i32 %add12)
  %25 = icmp eq i32 %add12, 146
  call void @__sanitizer_cov_trace_const_cmp4(i32 147, i32 %add)
  %26 = icmp eq i32 %add, 147
  %or.cond = and i1 %25, %26
  br i1 %or.cond, label %for.end, label %si21_writeregs.exit.if.end10_crit_edge

si21_writeregs.exit.if.end10_crit_edge:           ; preds = %si21_writeregs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.end:                                          ; preds = %si21_writeregs.exit
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf.i37) #6
  %27 = getelementptr inbounds i8, ptr %buf.i37, i32 1
  %28 = getelementptr inbounds i8, ptr %buf.i37, i32 2
  %29 = call ptr @memset(ptr %28, i32 255, i32 58)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i38) #6
  %30 = getelementptr inbounds i8, ptr %msg.i38, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 196607, ptr %30, align 4
  %32 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %conv.i40 = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i38 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i40, ptr %msg.i38, align 4
  %flags.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i41 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i41, align 2
  %buf3.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 3
  %38 = ptrtoint ptr %buf3.i43 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf.i37, ptr %buf3.i43, align 4
  %39 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %buf.i37, align 1
  %40 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 8, ptr %27, align 1
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i45 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i38, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i45)
  %cmp7.not.i46 = icmp eq i32 %call.i45, 1
  br i1 %cmp7.not.i46, label %for.end.si21_writeregs.exit53_crit_edge, label %do.body.i48

for.end.si21_writeregs.exit53_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit53

do.body.i48:                                      ; preds = %for.end
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i47 = icmp eq i32 %43, 0
  br i1 %tobool.not.i47, label %do.body.i48.si21_writeregs.exit53_crit_edge, label %do.end.i51

do.body.i48.si21_writeregs.exit53_crit_edge:      ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit53

do.end.i51:                                       ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef 8, i32 noundef %call.i45) #9
  br label %si21_writeregs.exit53

si21_writeregs.exit53:                            ; preds = %do.end.i51, %do.body.i48.si21_writeregs.exit53_crit_edge, %for.end.si21_writeregs.exit53_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i38) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i37) #6
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf.i54) #6
  %44 = getelementptr inbounds i8, ptr %buf.i54, i32 1
  %45 = getelementptr inbounds i8, ptr %buf.i54, i32 3
  %46 = call ptr @memset(ptr %45, i32 255, i32 57)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i55) #6
  %47 = getelementptr inbounds i8, ptr %msg.i55, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 262143, ptr %47, align 4
  %49 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %config.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 4
  %conv.i57 = zext i8 %52 to i16
  %53 = ptrtoint ptr %msg.i55 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i57, ptr %msg.i55, align 4
  %flags.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i55, i32 0, i32 1
  %54 = ptrtoint ptr %flags.i58 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %flags.i58, align 2
  %buf3.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i55, i32 0, i32 3
  %55 = ptrtoint ptr %buf3.i60 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %buf.i54, ptr %buf3.i60, align 4
  %56 = ptrtoint ptr %buf.i54 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 2, ptr %buf.i54, align 1
  %57 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 7, ptr %44, align 1
  %reg2.sroa.6.0.add.ptr.i61.sroa_idx = getelementptr inbounds i8, ptr %buf.i54, i32 2
  %58 = ptrtoint ptr %reg2.sroa.6.0.add.ptr.i61.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %reg2.sroa.6.0.add.ptr.i61.sroa_idx, align 1
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %call.i62 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %msg.i55, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i62)
  %cmp7.not.i63 = icmp eq i32 %call.i62, 1
  br i1 %cmp7.not.i63, label %si21_writeregs.exit70, label %do.body.i65

do.body.i65:                                      ; preds = %si21_writeregs.exit53
  %61 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i64 = icmp eq i32 %61, 0
  br i1 %tobool.not.i64, label %do.body20.thread, label %do.body20

do.body20.thread:                                 ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i55) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i54) #6
  br label %if.end31

si21_writeregs.exit70:                            ; preds = %si21_writeregs.exit53
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i55) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i54) #6
  br label %if.end31

do.body20:                                        ; preds = %do.body.i65
  %call15.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 2, i32 noundef 7, i32 noundef %call.i62) #9
  %.pr = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i55) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool21.not = icmp eq i32 %.pr, 0
  br i1 %tobool21.not, label %do.body20.if.end31_crit_edge, label %do.end25

do.body20.if.end31_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.end25:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #9
  br label %if.end31

if.end31:                                         ; preds = %do.end25, %do.body20.if.end31_crit_edge, %si21_writeregs.exit70, %do.body20.thread
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si21xx_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i9 = alloca [60 x i8], align 1
  %msg.i10 = alloca %struct.i2c_msg, align 4
  %reg1.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %regdata = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regdata) #6
  %2 = ptrtoint ptr %regdata to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %regdata, align 1, !annotation !140
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i)
  %4 = ptrtoint ptr %reg1.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %reg1.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reg1.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = load i8, ptr %8, align 4
  %conv5.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %18 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len7.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %regdata, ptr %buf9.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %do.end3.si21_readregs.exit_crit_edge, label %do.body.i

do.end3.si21_readregs.exit_crit_edge:             ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readregs.exit

do.body.i:                                        ; preds = %do.end3
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i.si21_readregs.exit_crit_edge, label %do.end.i

do.body.i.si21_readregs.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readregs.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i) #9
  br label %si21_readregs.exit

si21_readregs.exit:                               ; preds = %do.end.i, %do.body.i.si21_readregs.exit_crit_edge, %do.end3.si21_readregs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i)
  %23 = ptrtoint ptr %regdata to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %regdata, align 1
  %25 = or i8 %24, 64
  store i8 %25, ptr %regdata, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf.i9) #6
  %26 = getelementptr inbounds i8, ptr %buf.i9, i32 1
  %27 = getelementptr inbounds i8, ptr %buf.i9, i32 2
  %28 = call ptr @memset(ptr %27, i32 255, i32 58)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i10) #6
  %29 = getelementptr inbounds i8, ptr %msg.i10, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 196607, ptr %29, align 4
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv.i12 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i10 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i12, ptr %msg.i10, align 4
  %flags.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i13 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i13, align 2
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10, i32 0, i32 3
  %37 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buf.i9, ptr %buf3.i, align 4
  %38 = ptrtoint ptr %buf.i9 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %buf.i9, align 1
  %39 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %25, ptr %26, align 1
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call.i15 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i10, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i15)
  %cmp7.not.i = icmp eq i32 %call.i15, 1
  br i1 %cmp7.not.i, label %si21_readregs.exit.si21_writeregs.exit_crit_edge, label %do.body.i17

si21_readregs.exit.si21_writeregs.exit_crit_edge: ; preds = %si21_readregs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit

do.body.i17:                                      ; preds = %si21_readregs.exit
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i16 = icmp eq i32 %42, 0
  br i1 %tobool.not.i16, label %do.body.i17.si21_writeregs.exit_crit_edge, label %do.end.i18

do.body.i17.si21_writeregs.exit_crit_edge:        ; preds = %do.body.i17
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit

do.end.i18:                                       ; preds = %do.body.i17
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %regdata to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %regdata, align 1
  %conv14.i = zext i8 %44 to i32
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef %conv14.i, i32 noundef %call.i15) #9
  br label %si21_writeregs.exit

si21_writeregs.exit:                              ; preds = %do.end.i18, %do.body.i17.si21_writeregs.exit_crit_edge, %si21_readregs.exit.si21_writeregs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i10) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i9) #6
  %initialised = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %initialised to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %initialised, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %initialised, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regdata) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si21_write(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp.not = icmp eq i32 %len, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %arrayidx1 = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %3, ptr %buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196607, ptr %9, align 4
  %config.i = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  %conv.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i, ptr %buf1.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end.si21_writereg.exit_crit_edge, label %do.body.i

if.end.si21_writereg.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writereg.exit

do.body.i:                                        ; preds = %if.end
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i.si21_writereg.exit_crit_edge, label %do.end.i

do.body.i.si21_writereg.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv5.i = zext i8 %3 to i32
  %conv6.i = zext i8 %5 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %conv5.i, i32 noundef %conv6.i, i32 noundef %call.i) #9
  br label %si21_writereg.exit

si21_writereg.exit:                               ; preds = %do.end.i, %do.body.i.si21_writereg.exit_crit_edge, %if.end.si21_writereg.exit_crit_edge
  %cond.i = phi i32 [ -121, %do.body.i.si21_writereg.exit_crit_edge ], [ -121, %do.end.i ], [ 0, %if.end.si21_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %cleanup

cleanup:                                          ; preds = %si21_writereg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i, %si21_writereg.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si21xx_set_frontend(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i83.i = alloca [60 x i8], align 1
  %msg.i84.i = alloca %struct.i2c_msg, align 4
  %buf.i66.i = alloca [60 x i8], align 1
  %msg.i67.i = alloca %struct.i2c_msg, align 4
  %buf.i49.i = alloca [60 x i8], align 1
  %msg.i50.i = alloca %struct.i2c_msg, align 4
  %buf.i32.i = alloca [60 x i8], align 1
  %msg.i33.i = alloca %struct.i2c_msg, align 4
  %buf.i15.i = alloca [60 x i8], align 1
  %msg.i16.i = alloca %struct.i2c_msg, align 4
  %reg1.addr.i.i = alloca i8, align 1
  %msg.i5.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i = alloca [60 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i.i = alloca [60 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %reg.i = alloca i8, align 1
  %buf.i = alloca [60 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %3 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delivery_system, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp.not = icmp eq i32 %4, 5
  br i1 %cmp.not, label %for.body.preheader, label %do.body5

for.body.preheader:                               ; preds = %do.end3
  %5 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dtv_property_cache, align 4
  %mul = mul i32 %6, 10
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %7 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %symbol_rate, align 4
  %div = udiv i32 %8, 100
  %mul21 = mul i32 %div, 135
  %div22 = sdiv i32 %mul21, 200
  %sub23 = sub i32 %mul, %div22
  %add29 = add i32 %div22, %mul
  %sub33 = add i32 %mul, 400000
  %div34 = sdiv i32 %sub33, 100000
  %mul35.neg = mul nsw i32 %div34, -100000
  %9 = srem i32 %mul, 500000
  %mul47 = sub i32 %mul, %9
  %add50 = add i32 %mul47, 500000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add50)
  %cmp58 = icmp ult i32 %sub23, %add50
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %add29)
  %cmp59 = icmp ult i32 %add50, %add29
  %or.cond = and i1 %cmp58, %cmp59
  br i1 %or.cond, label %for.body.preheader.if.then63_crit_edge, label %lor.lhs.false

for.body.preheader.if.then63_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63

do.body5:                                         ; preds = %do.end3
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %do.body5.cleanup_crit_edge, label %do.end10

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end10:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, i32 noundef %4) #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul47)
  %cmp60 = icmp ult i32 %sub23, %mul47
  call void @__sanitizer_cov_trace_cmp4(i32 %mul47, i32 %add29)
  %cmp62 = icmp ult i32 %mul47, %add29
  %or.cond275 = and i1 %cmp60, %cmp62
  br i1 %or.cond275, label %lor.lhs.false.if.then63_crit_edge, label %lor.lhs.false.for.inc66_crit_edge

lor.lhs.false.for.inc66_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66

lor.lhs.false.if.then63_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63

if.then63:                                        ; preds = %lor.lhs.false.if.then63_crit_edge, %for.body.preheader.if.then63_crit_edge
  br label %for.inc66

for.inc66:                                        ; preds = %if.then63, %lor.lhs.false.for.inc66_crit_edge
  %tobool137.not = phi i1 [ true, %lor.lhs.false.for.inc66_crit_edge ], [ false, %if.then63 ]
  %11 = srem i32 %mul, 480000
  %mul47.1 = sub i32 %mul, %11
  %add50.1 = add i32 %mul47.1, 480000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add50.1)
  %cmp58.1 = icmp ult i32 %sub23, %add50.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.1, i32 %add29)
  %cmp59.1 = icmp ult i32 %add50.1, %add29
  %or.cond.1 = and i1 %cmp58.1, %cmp59.1
  br i1 %or.cond.1, label %for.inc66.if.then63.1_crit_edge, label %lor.lhs.false.1

for.inc66.if.then63.1_crit_edge:                  ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.1

lor.lhs.false.1:                                  ; preds = %for.inc66
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul47.1)
  %cmp60.1 = icmp ult i32 %sub23, %mul47.1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul47.1, i32 %add29)
  %cmp62.1 = icmp ult i32 %mul47.1, %add29
  %or.cond275.1 = and i1 %cmp60.1, %cmp62.1
  br i1 %or.cond275.1, label %lor.lhs.false.1.if.then63.1_crit_edge, label %lor.lhs.false.1.for.inc66.1_crit_edge

lor.lhs.false.1.for.inc66.1_crit_edge:            ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.1

lor.lhs.false.1.if.then63.1_crit_edge:            ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.1

if.then63.1:                                      ; preds = %lor.lhs.false.1.if.then63.1_crit_edge, %for.inc66.if.then63.1_crit_edge
  br label %for.inc66.1

for.inc66.1:                                      ; preds = %if.then63.1, %lor.lhs.false.1.for.inc66.1_crit_edge
  %tobool137.not.1 = phi i1 [ false, %if.then63.1 ], [ true, %lor.lhs.false.1.for.inc66.1_crit_edge ]
  %12 = srem i32 %mul, 482500
  %mul47.2 = sub i32 %mul, %12
  %add50.2 = add i32 %mul47.2, 482500
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add50.2)
  %cmp58.2 = icmp ult i32 %sub23, %add50.2
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.2, i32 %add29)
  %cmp59.2 = icmp ult i32 %add50.2, %add29
  %or.cond.2 = and i1 %cmp58.2, %cmp59.2
  br i1 %or.cond.2, label %for.inc66.1.if.then63.2_crit_edge, label %lor.lhs.false.2

for.inc66.1.if.then63.2_crit_edge:                ; preds = %for.inc66.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.2

lor.lhs.false.2:                                  ; preds = %for.inc66.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul47.2)
  %cmp60.2 = icmp ult i32 %sub23, %mul47.2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul47.2, i32 %add29)
  %cmp62.2 = icmp ult i32 %mul47.2, %add29
  %or.cond275.2 = and i1 %cmp60.2, %cmp62.2
  br i1 %or.cond275.2, label %lor.lhs.false.2.if.then63.2_crit_edge, label %lor.lhs.false.2.for.inc66.2_crit_edge

lor.lhs.false.2.for.inc66.2_crit_edge:            ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.2

lor.lhs.false.2.if.then63.2_crit_edge:            ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.2

if.then63.2:                                      ; preds = %lor.lhs.false.2.if.then63.2_crit_edge, %for.inc66.1.if.then63.2_crit_edge
  br label %for.inc66.2

for.inc66.2:                                      ; preds = %if.then63.2, %lor.lhs.false.2.for.inc66.2_crit_edge
  %tobool137.not.2 = phi i1 [ false, %if.then63.2 ], [ true, %lor.lhs.false.2.for.inc66.2_crit_edge ]
  %13 = srem i32 %mul, 485000
  %mul47.3 = sub i32 %mul, %13
  %add50.3 = add i32 %mul47.3, 485000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add50.3)
  %cmp58.3 = icmp ult i32 %sub23, %add50.3
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.3, i32 %add29)
  %cmp59.3 = icmp ult i32 %add50.3, %add29
  %or.cond.3 = and i1 %cmp58.3, %cmp59.3
  br i1 %or.cond.3, label %for.inc66.2.if.then63.3_crit_edge, label %lor.lhs.false.3

for.inc66.2.if.then63.3_crit_edge:                ; preds = %for.inc66.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.3

lor.lhs.false.3:                                  ; preds = %for.inc66.2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul47.3)
  %cmp60.3 = icmp ult i32 %sub23, %mul47.3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul47.3, i32 %add29)
  %cmp62.3 = icmp ult i32 %mul47.3, %add29
  %or.cond275.3 = and i1 %cmp60.3, %cmp62.3
  br i1 %or.cond275.3, label %lor.lhs.false.3.if.then63.3_crit_edge, label %lor.lhs.false.3.for.inc66.3_crit_edge

lor.lhs.false.3.for.inc66.3_crit_edge:            ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.3

lor.lhs.false.3.if.then63.3_crit_edge:            ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.3

if.then63.3:                                      ; preds = %lor.lhs.false.3.if.then63.3_crit_edge, %for.inc66.2.if.then63.3_crit_edge
  br label %for.inc66.3

for.inc66.3:                                      ; preds = %if.then63.3, %lor.lhs.false.3.for.inc66.3_crit_edge
  %tobool137.not.3 = phi i1 [ false, %if.then63.3 ], [ true, %lor.lhs.false.3.for.inc66.3_crit_edge ]
  %14 = srem i32 %mul, 487500
  %mul47.4 = sub i32 %mul, %14
  %add50.4 = add i32 %mul47.4, 487500
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add50.4)
  %cmp58.4 = icmp ult i32 %sub23, %add50.4
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.4, i32 %add29)
  %cmp59.4 = icmp ult i32 %add50.4, %add29
  %or.cond.4 = and i1 %cmp58.4, %cmp59.4
  br i1 %or.cond.4, label %for.inc66.3.if.then63.4_crit_edge, label %lor.lhs.false.4

for.inc66.3.if.then63.4_crit_edge:                ; preds = %for.inc66.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.4

lor.lhs.false.4:                                  ; preds = %for.inc66.3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul47.4)
  %cmp60.4 = icmp ult i32 %sub23, %mul47.4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul47.4, i32 %add29)
  %cmp62.4 = icmp ult i32 %mul47.4, %add29
  %or.cond275.4 = and i1 %cmp60.4, %cmp62.4
  br i1 %or.cond275.4, label %lor.lhs.false.4.if.then63.4_crit_edge, label %lor.lhs.false.4.for.inc66.4_crit_edge

lor.lhs.false.4.for.inc66.4_crit_edge:            ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.4

lor.lhs.false.4.if.then63.4_crit_edge:            ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.4

if.then63.4:                                      ; preds = %lor.lhs.false.4.if.then63.4_crit_edge, %for.inc66.3.if.then63.4_crit_edge
  br label %for.inc66.4

for.inc66.4:                                      ; preds = %if.then63.4, %lor.lhs.false.4.for.inc66.4_crit_edge
  %tobool137.not.4 = phi i1 [ false, %if.then63.4 ], [ true, %lor.lhs.false.4.for.inc66.4_crit_edge ]
  %15 = srem i32 %mul, 490000
  %mul47.5 = sub i32 %mul, %15
  %add50.5 = add i32 %mul47.5, 490000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add50.5)
  %cmp58.5 = icmp ult i32 %sub23, %add50.5
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.5, i32 %add29)
  %cmp59.5 = icmp ult i32 %add50.5, %add29
  %or.cond.5 = and i1 %cmp58.5, %cmp59.5
  br i1 %or.cond.5, label %for.inc66.4.if.then63.5_crit_edge, label %lor.lhs.false.5

for.inc66.4.if.then63.5_crit_edge:                ; preds = %for.inc66.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.5

lor.lhs.false.5:                                  ; preds = %for.inc66.4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul47.5)
  %cmp60.5 = icmp ult i32 %sub23, %mul47.5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul47.5, i32 %add29)
  %cmp62.5 = icmp ult i32 %mul47.5, %add29
  %or.cond275.5 = and i1 %cmp60.5, %cmp62.5
  br i1 %or.cond275.5, label %lor.lhs.false.5.if.then63.5_crit_edge, label %lor.lhs.false.5.for.inc66.5_crit_edge

lor.lhs.false.5.for.inc66.5_crit_edge:            ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.5

lor.lhs.false.5.if.then63.5_crit_edge:            ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.5

if.then63.5:                                      ; preds = %lor.lhs.false.5.if.then63.5_crit_edge, %for.inc66.4.if.then63.5_crit_edge
  br label %for.inc66.5

for.inc66.5:                                      ; preds = %if.then63.5, %lor.lhs.false.5.for.inc66.5_crit_edge
  %tobool137.not.5 = phi i1 [ false, %if.then63.5 ], [ true, %lor.lhs.false.5.for.inc66.5_crit_edge ]
  %16 = srem i32 %mul, 510000
  %mul47.6 = sub i32 %mul, %16
  %add50.6 = add i32 %mul47.6, 510000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add50.6)
  %cmp58.6 = icmp ult i32 %sub23, %add50.6
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.6, i32 %add29)
  %cmp59.6 = icmp ult i32 %add50.6, %add29
  %or.cond.6 = and i1 %cmp58.6, %cmp59.6
  br i1 %or.cond.6, label %for.inc66.5.if.then63.6_crit_edge, label %lor.lhs.false.6

for.inc66.5.if.then63.6_crit_edge:                ; preds = %for.inc66.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.6

lor.lhs.false.6:                                  ; preds = %for.inc66.5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul47.6)
  %cmp60.6 = icmp ult i32 %sub23, %mul47.6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul47.6, i32 %add29)
  %cmp62.6 = icmp ult i32 %mul47.6, %add29
  %or.cond275.6 = and i1 %cmp60.6, %cmp62.6
  br i1 %or.cond275.6, label %lor.lhs.false.6.if.then63.6_crit_edge, label %lor.lhs.false.6.for.inc66.6_crit_edge

lor.lhs.false.6.for.inc66.6_crit_edge:            ; preds = %lor.lhs.false.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.6

lor.lhs.false.6.if.then63.6_crit_edge:            ; preds = %lor.lhs.false.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.6

if.then63.6:                                      ; preds = %lor.lhs.false.6.if.then63.6_crit_edge, %for.inc66.5.if.then63.6_crit_edge
  br label %for.inc66.6

for.inc66.6:                                      ; preds = %if.then63.6, %lor.lhs.false.6.for.inc66.6_crit_edge
  %tobool137.not.6 = phi i1 [ false, %if.then63.6 ], [ true, %lor.lhs.false.6.for.inc66.6_crit_edge ]
  %17 = srem i32 %mul, 512500
  %mul47.7 = sub i32 %mul, %17
  %add50.7 = add i32 %mul47.7, 512500
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add50.7)
  %cmp58.7 = icmp ult i32 %sub23, %add50.7
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.7, i32 %add29)
  %cmp59.7 = icmp ult i32 %add50.7, %add29
  %or.cond.7 = and i1 %cmp58.7, %cmp59.7
  br i1 %or.cond.7, label %for.inc66.6.if.then63.7_crit_edge, label %lor.lhs.false.7

for.inc66.6.if.then63.7_crit_edge:                ; preds = %for.inc66.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.7

lor.lhs.false.7:                                  ; preds = %for.inc66.6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul47.7)
  %cmp60.7 = icmp ult i32 %sub23, %mul47.7
  call void @__sanitizer_cov_trace_cmp4(i32 %mul47.7, i32 %add29)
  %cmp62.7 = icmp ult i32 %mul47.7, %add29
  %or.cond275.7 = and i1 %cmp60.7, %cmp62.7
  br i1 %or.cond275.7, label %lor.lhs.false.7.if.then63.7_crit_edge, label %lor.lhs.false.7.for.inc66.7_crit_edge

lor.lhs.false.7.for.inc66.7_crit_edge:            ; preds = %lor.lhs.false.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.7

lor.lhs.false.7.if.then63.7_crit_edge:            ; preds = %lor.lhs.false.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.7

if.then63.7:                                      ; preds = %lor.lhs.false.7.if.then63.7_crit_edge, %for.inc66.6.if.then63.7_crit_edge
  br label %for.inc66.7

for.inc66.7:                                      ; preds = %if.then63.7, %lor.lhs.false.7.for.inc66.7_crit_edge
  %tobool137.not.7 = phi i1 [ false, %if.then63.7 ], [ true, %lor.lhs.false.7.for.inc66.7_crit_edge ]
  %18 = srem i32 %mul, 515000
  %mul47.8 = sub i32 %mul, %18
  %add50.8 = add i32 %mul47.8, 515000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add50.8)
  %cmp58.8 = icmp ult i32 %sub23, %add50.8
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.8, i32 %add29)
  %cmp59.8 = icmp ult i32 %add50.8, %add29
  %or.cond.8 = and i1 %cmp58.8, %cmp59.8
  br i1 %or.cond.8, label %for.inc66.7.if.then63.8_crit_edge, label %lor.lhs.false.8

for.inc66.7.if.then63.8_crit_edge:                ; preds = %for.inc66.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.8

lor.lhs.false.8:                                  ; preds = %for.inc66.7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul47.8)
  %cmp60.8 = icmp ult i32 %sub23, %mul47.8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul47.8, i32 %add29)
  %cmp62.8 = icmp ult i32 %mul47.8, %add29
  %or.cond275.8 = and i1 %cmp60.8, %cmp62.8
  br i1 %or.cond275.8, label %lor.lhs.false.8.if.then63.8_crit_edge, label %lor.lhs.false.8.for.inc66.8_crit_edge

lor.lhs.false.8.for.inc66.8_crit_edge:            ; preds = %lor.lhs.false.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.8

lor.lhs.false.8.if.then63.8_crit_edge:            ; preds = %lor.lhs.false.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.8

if.then63.8:                                      ; preds = %lor.lhs.false.8.if.then63.8_crit_edge, %for.inc66.7.if.then63.8_crit_edge
  br label %for.inc66.8

for.inc66.8:                                      ; preds = %if.then63.8, %lor.lhs.false.8.for.inc66.8_crit_edge
  %tobool137.not.8 = phi i1 [ false, %if.then63.8 ], [ true, %lor.lhs.false.8.for.inc66.8_crit_edge ]
  %19 = srem i32 %mul, 517500
  %mul47.9 = sub i32 %mul, %19
  %add50.9 = add i32 %mul47.9, 517500
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add50.9)
  %cmp58.9 = icmp ult i32 %sub23, %add50.9
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.9, i32 %add29)
  %cmp59.9 = icmp ult i32 %add50.9, %add29
  %or.cond.9 = and i1 %cmp58.9, %cmp59.9
  br i1 %or.cond.9, label %for.inc66.8.if.then63.9_crit_edge, label %lor.lhs.false.9

for.inc66.8.if.then63.9_crit_edge:                ; preds = %for.inc66.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.9

lor.lhs.false.9:                                  ; preds = %for.inc66.8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul47.9)
  %cmp60.9 = icmp ult i32 %sub23, %mul47.9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul47.9, i32 %add29)
  %cmp62.9 = icmp ult i32 %mul47.9, %add29
  %or.cond275.9 = and i1 %cmp60.9, %cmp62.9
  br i1 %or.cond275.9, label %lor.lhs.false.9.if.then63.9_crit_edge, label %lor.lhs.false.9.for.inc66.9_crit_edge

lor.lhs.false.9.for.inc66.9_crit_edge:            ; preds = %lor.lhs.false.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc66.9

lor.lhs.false.9.if.then63.9_crit_edge:            ; preds = %lor.lhs.false.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then63.9

if.then63.9:                                      ; preds = %lor.lhs.false.9.if.then63.9_crit_edge, %for.inc66.8.if.then63.9_crit_edge
  br label %for.inc66.9

for.inc66.9:                                      ; preds = %if.then63.9, %lor.lhs.false.9.for.inc66.9_crit_edge
  %tobool137.not.9 = phi i1 [ false, %if.then63.9 ], [ true, %lor.lhs.false.9.for.inc66.9_crit_edge ]
  %20 = srem i32 %mul, 1000000
  %mul78 = sub i32 %mul, %20
  %add81 = add i32 %mul78, 1000000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add81)
  %cmp89 = icmp ult i32 %sub23, %add81
  call void @__sanitizer_cov_trace_cmp4(i32 %add81, i32 %add29)
  %cmp91 = icmp ult i32 %add81, %add29
  %or.cond276 = and i1 %cmp89, %cmp91
  br i1 %or.cond276, label %for.inc66.9.if.then96_crit_edge, label %lor.lhs.false92

for.inc66.9.if.then96_crit_edge:                  ; preds = %for.inc66.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96

lor.lhs.false92:                                  ; preds = %for.inc66.9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul78)
  %cmp93 = icmp ult i32 %sub23, %mul78
  call void @__sanitizer_cov_trace_cmp4(i32 %mul78, i32 %add29)
  %cmp95 = icmp ult i32 %mul78, %add29
  %or.cond277 = and i1 %cmp93, %cmp95
  br i1 %or.cond277, label %lor.lhs.false92.if.then96_crit_edge, label %lor.lhs.false92.for.inc99_crit_edge

lor.lhs.false92.for.inc99_crit_edge:              ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc99

lor.lhs.false92.if.then96_crit_edge:              ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96

if.then96:                                        ; preds = %lor.lhs.false92.if.then96_crit_edge, %for.inc66.9.if.then96_crit_edge
  br label %for.inc99

for.inc99:                                        ; preds = %if.then96, %lor.lhs.false92.for.inc99_crit_edge
  %tobool106.not = phi i1 [ true, %lor.lhs.false92.for.inc99_crit_edge ], [ false, %if.then96 ]
  %21 = srem i32 %mul, 960000
  %mul78.1 = sub i32 %mul, %21
  %add81.1 = add i32 %mul78.1, 960000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add81.1)
  %cmp89.1 = icmp ult i32 %sub23, %add81.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add81.1, i32 %add29)
  %cmp91.1 = icmp ult i32 %add81.1, %add29
  %or.cond276.1 = and i1 %cmp89.1, %cmp91.1
  br i1 %or.cond276.1, label %for.inc99.if.then96.1_crit_edge, label %lor.lhs.false92.1

for.inc99.if.then96.1_crit_edge:                  ; preds = %for.inc99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.1

lor.lhs.false92.1:                                ; preds = %for.inc99
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul78.1)
  %cmp93.1 = icmp ult i32 %sub23, %mul78.1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul78.1, i32 %add29)
  %cmp95.1 = icmp ult i32 %mul78.1, %add29
  %or.cond277.1 = and i1 %cmp93.1, %cmp95.1
  br i1 %or.cond277.1, label %lor.lhs.false92.1.if.then96.1_crit_edge, label %lor.lhs.false92.1.for.inc99.1_crit_edge

lor.lhs.false92.1.for.inc99.1_crit_edge:          ; preds = %lor.lhs.false92.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc99.1

lor.lhs.false92.1.if.then96.1_crit_edge:          ; preds = %lor.lhs.false92.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.1

if.then96.1:                                      ; preds = %lor.lhs.false92.1.if.then96.1_crit_edge, %for.inc99.if.then96.1_crit_edge
  br label %for.inc99.1

for.inc99.1:                                      ; preds = %if.then96.1, %lor.lhs.false92.1.for.inc99.1_crit_edge
  %tobool133.not.1 = phi i1 [ true, %if.then96.1 ], [ false, %lor.lhs.false92.1.for.inc99.1_crit_edge ]
  %22 = srem i32 %mul, 965000
  %mul78.2 = sub i32 %mul, %22
  %add81.2 = add i32 %mul78.2, 965000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add81.2)
  %cmp89.2 = icmp ult i32 %sub23, %add81.2
  call void @__sanitizer_cov_trace_cmp4(i32 %add81.2, i32 %add29)
  %cmp91.2 = icmp ult i32 %add81.2, %add29
  %or.cond276.2 = and i1 %cmp89.2, %cmp91.2
  br i1 %or.cond276.2, label %for.inc99.1.if.then96.2_crit_edge, label %lor.lhs.false92.2

for.inc99.1.if.then96.2_crit_edge:                ; preds = %for.inc99.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.2

lor.lhs.false92.2:                                ; preds = %for.inc99.1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul78.2)
  %cmp93.2 = icmp ult i32 %sub23, %mul78.2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul78.2, i32 %add29)
  %cmp95.2 = icmp ult i32 %mul78.2, %add29
  %or.cond277.2 = and i1 %cmp93.2, %cmp95.2
  br i1 %or.cond277.2, label %lor.lhs.false92.2.if.then96.2_crit_edge, label %lor.lhs.false92.2.for.inc99.2_crit_edge

lor.lhs.false92.2.for.inc99.2_crit_edge:          ; preds = %lor.lhs.false92.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc99.2

lor.lhs.false92.2.if.then96.2_crit_edge:          ; preds = %lor.lhs.false92.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.2

if.then96.2:                                      ; preds = %lor.lhs.false92.2.if.then96.2_crit_edge, %for.inc99.1.if.then96.2_crit_edge
  br label %for.inc99.2

for.inc99.2:                                      ; preds = %if.then96.2, %lor.lhs.false92.2.for.inc99.2_crit_edge
  %tobool133.not.2 = phi i1 [ true, %if.then96.2 ], [ false, %lor.lhs.false92.2.for.inc99.2_crit_edge ]
  %23 = srem i32 %mul, 970000
  %mul78.3 = sub i32 %mul, %23
  %add81.3 = add i32 %mul78.3, 970000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add81.3)
  %cmp89.3 = icmp ult i32 %sub23, %add81.3
  call void @__sanitizer_cov_trace_cmp4(i32 %add81.3, i32 %add29)
  %cmp91.3 = icmp ult i32 %add81.3, %add29
  %or.cond276.3 = and i1 %cmp89.3, %cmp91.3
  br i1 %or.cond276.3, label %for.inc99.2.if.then96.3_crit_edge, label %lor.lhs.false92.3

for.inc99.2.if.then96.3_crit_edge:                ; preds = %for.inc99.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.3

lor.lhs.false92.3:                                ; preds = %for.inc99.2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul78.3)
  %cmp93.3 = icmp ult i32 %sub23, %mul78.3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul78.3, i32 %add29)
  %cmp95.3 = icmp ult i32 %mul78.3, %add29
  %or.cond277.3 = and i1 %cmp93.3, %cmp95.3
  br i1 %or.cond277.3, label %lor.lhs.false92.3.if.then96.3_crit_edge, label %lor.lhs.false92.3.for.inc99.3_crit_edge

lor.lhs.false92.3.for.inc99.3_crit_edge:          ; preds = %lor.lhs.false92.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc99.3

lor.lhs.false92.3.if.then96.3_crit_edge:          ; preds = %lor.lhs.false92.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.3

if.then96.3:                                      ; preds = %lor.lhs.false92.3.if.then96.3_crit_edge, %for.inc99.2.if.then96.3_crit_edge
  br label %for.inc99.3

for.inc99.3:                                      ; preds = %if.then96.3, %lor.lhs.false92.3.for.inc99.3_crit_edge
  %tobool133.not.3 = phi i1 [ true, %if.then96.3 ], [ false, %lor.lhs.false92.3.for.inc99.3_crit_edge ]
  %24 = srem i32 %mul, 975000
  %mul78.4 = sub i32 %mul, %24
  %add81.4 = add i32 %mul78.4, 975000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add81.4)
  %cmp89.4 = icmp ult i32 %sub23, %add81.4
  call void @__sanitizer_cov_trace_cmp4(i32 %add81.4, i32 %add29)
  %cmp91.4 = icmp ult i32 %add81.4, %add29
  %or.cond276.4 = and i1 %cmp89.4, %cmp91.4
  br i1 %or.cond276.4, label %for.inc99.3.if.then96.4_crit_edge, label %lor.lhs.false92.4

for.inc99.3.if.then96.4_crit_edge:                ; preds = %for.inc99.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.4

lor.lhs.false92.4:                                ; preds = %for.inc99.3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul78.4)
  %cmp93.4 = icmp ult i32 %sub23, %mul78.4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul78.4, i32 %add29)
  %cmp95.4 = icmp ult i32 %mul78.4, %add29
  %or.cond277.4 = and i1 %cmp93.4, %cmp95.4
  br i1 %or.cond277.4, label %lor.lhs.false92.4.if.then96.4_crit_edge, label %lor.lhs.false92.4.for.inc99.4_crit_edge

lor.lhs.false92.4.for.inc99.4_crit_edge:          ; preds = %lor.lhs.false92.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc99.4

lor.lhs.false92.4.if.then96.4_crit_edge:          ; preds = %lor.lhs.false92.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.4

if.then96.4:                                      ; preds = %lor.lhs.false92.4.if.then96.4_crit_edge, %for.inc99.3.if.then96.4_crit_edge
  br label %for.inc99.4

for.inc99.4:                                      ; preds = %if.then96.4, %lor.lhs.false92.4.for.inc99.4_crit_edge
  %tobool133.not.4 = phi i1 [ true, %if.then96.4 ], [ false, %lor.lhs.false92.4.for.inc99.4_crit_edge ]
  %25 = srem i32 %mul, 980000
  %mul78.5 = sub i32 %mul, %25
  %add81.5 = add i32 %mul78.5, 980000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add81.5)
  %cmp89.5 = icmp ult i32 %sub23, %add81.5
  call void @__sanitizer_cov_trace_cmp4(i32 %add81.5, i32 %add29)
  %cmp91.5 = icmp ult i32 %add81.5, %add29
  %or.cond276.5 = and i1 %cmp89.5, %cmp91.5
  br i1 %or.cond276.5, label %for.inc99.4.if.then96.5_crit_edge, label %lor.lhs.false92.5

for.inc99.4.if.then96.5_crit_edge:                ; preds = %for.inc99.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.5

lor.lhs.false92.5:                                ; preds = %for.inc99.4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul78.5)
  %cmp93.5 = icmp ult i32 %sub23, %mul78.5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul78.5, i32 %add29)
  %cmp95.5 = icmp ult i32 %mul78.5, %add29
  %or.cond277.5 = and i1 %cmp93.5, %cmp95.5
  br i1 %or.cond277.5, label %lor.lhs.false92.5.if.then96.5_crit_edge, label %lor.lhs.false92.5.for.inc99.5_crit_edge

lor.lhs.false92.5.for.inc99.5_crit_edge:          ; preds = %lor.lhs.false92.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc99.5

lor.lhs.false92.5.if.then96.5_crit_edge:          ; preds = %lor.lhs.false92.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.5

if.then96.5:                                      ; preds = %lor.lhs.false92.5.if.then96.5_crit_edge, %for.inc99.4.if.then96.5_crit_edge
  br label %for.inc99.5

for.inc99.5:                                      ; preds = %if.then96.5, %lor.lhs.false92.5.for.inc99.5_crit_edge
  %tobool133.not.5 = phi i1 [ true, %if.then96.5 ], [ false, %lor.lhs.false92.5.for.inc99.5_crit_edge ]
  %26 = srem i32 %mul, 1020000
  %mul78.6 = sub i32 %mul, %26
  %add81.6 = add i32 %mul78.6, 1020000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add81.6)
  %cmp89.6 = icmp ult i32 %sub23, %add81.6
  call void @__sanitizer_cov_trace_cmp4(i32 %add81.6, i32 %add29)
  %cmp91.6 = icmp ult i32 %add81.6, %add29
  %or.cond276.6 = and i1 %cmp89.6, %cmp91.6
  br i1 %or.cond276.6, label %for.inc99.5.if.then96.6_crit_edge, label %lor.lhs.false92.6

for.inc99.5.if.then96.6_crit_edge:                ; preds = %for.inc99.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.6

lor.lhs.false92.6:                                ; preds = %for.inc99.5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul78.6)
  %cmp93.6 = icmp ult i32 %sub23, %mul78.6
  call void @__sanitizer_cov_trace_cmp4(i32 %mul78.6, i32 %add29)
  %cmp95.6 = icmp ult i32 %mul78.6, %add29
  %or.cond277.6 = and i1 %cmp93.6, %cmp95.6
  br i1 %or.cond277.6, label %lor.lhs.false92.6.if.then96.6_crit_edge, label %lor.lhs.false92.6.for.inc99.6_crit_edge

lor.lhs.false92.6.for.inc99.6_crit_edge:          ; preds = %lor.lhs.false92.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc99.6

lor.lhs.false92.6.if.then96.6_crit_edge:          ; preds = %lor.lhs.false92.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.6

if.then96.6:                                      ; preds = %lor.lhs.false92.6.if.then96.6_crit_edge, %for.inc99.5.if.then96.6_crit_edge
  br label %for.inc99.6

for.inc99.6:                                      ; preds = %if.then96.6, %lor.lhs.false92.6.for.inc99.6_crit_edge
  %tobool133.not.6 = phi i1 [ true, %if.then96.6 ], [ false, %lor.lhs.false92.6.for.inc99.6_crit_edge ]
  %27 = srem i32 %mul, 1025000
  %mul78.7 = sub i32 %mul, %27
  %add81.7 = add i32 %mul78.7, 1025000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add81.7)
  %cmp89.7 = icmp ult i32 %sub23, %add81.7
  call void @__sanitizer_cov_trace_cmp4(i32 %add81.7, i32 %add29)
  %cmp91.7 = icmp ult i32 %add81.7, %add29
  %or.cond276.7 = and i1 %cmp89.7, %cmp91.7
  br i1 %or.cond276.7, label %for.inc99.6.if.then96.7_crit_edge, label %lor.lhs.false92.7

for.inc99.6.if.then96.7_crit_edge:                ; preds = %for.inc99.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.7

lor.lhs.false92.7:                                ; preds = %for.inc99.6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul78.7)
  %cmp93.7 = icmp ult i32 %sub23, %mul78.7
  call void @__sanitizer_cov_trace_cmp4(i32 %mul78.7, i32 %add29)
  %cmp95.7 = icmp ult i32 %mul78.7, %add29
  %or.cond277.7 = and i1 %cmp93.7, %cmp95.7
  br i1 %or.cond277.7, label %lor.lhs.false92.7.if.then96.7_crit_edge, label %lor.lhs.false92.7.for.inc99.7_crit_edge

lor.lhs.false92.7.for.inc99.7_crit_edge:          ; preds = %lor.lhs.false92.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc99.7

lor.lhs.false92.7.if.then96.7_crit_edge:          ; preds = %lor.lhs.false92.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.7

if.then96.7:                                      ; preds = %lor.lhs.false92.7.if.then96.7_crit_edge, %for.inc99.6.if.then96.7_crit_edge
  br label %for.inc99.7

for.inc99.7:                                      ; preds = %if.then96.7, %lor.lhs.false92.7.for.inc99.7_crit_edge
  %tobool133.not.7 = phi i1 [ true, %if.then96.7 ], [ false, %lor.lhs.false92.7.for.inc99.7_crit_edge ]
  %28 = srem i32 %mul, 1030000
  %mul78.8 = sub i32 %mul, %28
  %add81.8 = add i32 %mul78.8, 1030000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add81.8)
  %cmp89.8 = icmp ult i32 %sub23, %add81.8
  call void @__sanitizer_cov_trace_cmp4(i32 %add81.8, i32 %add29)
  %cmp91.8 = icmp ult i32 %add81.8, %add29
  %or.cond276.8 = and i1 %cmp89.8, %cmp91.8
  br i1 %or.cond276.8, label %for.inc99.7.if.then96.8_crit_edge, label %lor.lhs.false92.8

for.inc99.7.if.then96.8_crit_edge:                ; preds = %for.inc99.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.8

lor.lhs.false92.8:                                ; preds = %for.inc99.7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul78.8)
  %cmp93.8 = icmp ult i32 %sub23, %mul78.8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul78.8, i32 %add29)
  %cmp95.8 = icmp ult i32 %mul78.8, %add29
  %or.cond277.8 = and i1 %cmp93.8, %cmp95.8
  br i1 %or.cond277.8, label %lor.lhs.false92.8.if.then96.8_crit_edge, label %lor.lhs.false92.8.for.inc99.8_crit_edge

lor.lhs.false92.8.for.inc99.8_crit_edge:          ; preds = %lor.lhs.false92.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc99.8

lor.lhs.false92.8.if.then96.8_crit_edge:          ; preds = %lor.lhs.false92.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.8

if.then96.8:                                      ; preds = %lor.lhs.false92.8.if.then96.8_crit_edge, %for.inc99.7.if.then96.8_crit_edge
  br label %for.inc99.8

for.inc99.8:                                      ; preds = %if.then96.8, %lor.lhs.false92.8.for.inc99.8_crit_edge
  %tobool133.not.8 = phi i1 [ true, %if.then96.8 ], [ false, %lor.lhs.false92.8.for.inc99.8_crit_edge ]
  %29 = srem i32 %mul, 1035000
  %mul78.9 = sub i32 %mul, %29
  %add81.9 = add i32 %mul78.9, 1035000
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %add81.9)
  %cmp89.9 = icmp ult i32 %sub23, %add81.9
  call void @__sanitizer_cov_trace_cmp4(i32 %add81.9, i32 %add29)
  %cmp91.9 = icmp ult i32 %add81.9, %add29
  %or.cond276.9 = and i1 %cmp89.9, %cmp91.9
  br i1 %or.cond276.9, label %for.inc99.8.if.then96.9_crit_edge, label %lor.lhs.false92.9

for.inc99.8.if.then96.9_crit_edge:                ; preds = %for.inc99.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.9

lor.lhs.false92.9:                                ; preds = %for.inc99.8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul78.9)
  %cmp93.9 = icmp ult i32 %sub23, %mul78.9
  call void @__sanitizer_cov_trace_cmp4(i32 %mul78.9, i32 %add29)
  %cmp95.9 = icmp ult i32 %mul78.9, %add29
  %or.cond277.9 = and i1 %cmp93.9, %cmp95.9
  br i1 %or.cond277.9, label %lor.lhs.false92.9.if.then96.9_crit_edge, label %lor.lhs.false92.9.for.inc99.9_crit_edge

lor.lhs.false92.9.for.inc99.9_crit_edge:          ; preds = %lor.lhs.false92.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc99.9

lor.lhs.false92.9.if.then96.9_crit_edge:          ; preds = %lor.lhs.false92.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then96.9

if.then96.9:                                      ; preds = %lor.lhs.false92.9.if.then96.9_crit_edge, %for.inc99.8.if.then96.9_crit_edge
  br label %for.inc99.9

for.inc99.9:                                      ; preds = %if.then96.9, %lor.lhs.false92.9.for.inc99.9_crit_edge
  %tobool133.not.9 = phi i1 [ true, %if.then96.9 ], [ false, %lor.lhs.false92.9.for.inc99.9_crit_edge ]
  %sub37 = add i32 %mul35.neg, %mul
  br i1 %tobool106.not, label %lor.lhs.false107, label %for.inc99.9.if.then138_crit_edge

for.inc99.9.if.then138_crit_edge:                 ; preds = %for.inc99.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then138

for.cond102:                                      ; preds = %lor.lhs.false107
  %tobool137.not.1.not = xor i1 %tobool137.not.1, true
  %brmerge = or i1 %tobool133.not.1, %tobool137.not.1.not
  %brmerge353 = or i1 %brmerge, %tobool133.not.2
  %tobool137.not.2.not = xor i1 %tobool137.not.2, true
  %brmerge354 = or i1 %brmerge353, %tobool137.not.2.not
  %brmerge355 = or i1 %brmerge354, %tobool133.not.3
  %tobool137.not.3.not = xor i1 %tobool137.not.3, true
  %brmerge356 = or i1 %brmerge355, %tobool137.not.3.not
  %brmerge357 = or i1 %brmerge356, %tobool133.not.4
  %tobool137.not.4.not = xor i1 %tobool137.not.4, true
  %brmerge358 = or i1 %brmerge357, %tobool137.not.4.not
  %brmerge359 = or i1 %brmerge358, %tobool133.not.5
  %tobool137.not.5.not = xor i1 %tobool137.not.5, true
  %brmerge360 = or i1 %brmerge359, %tobool137.not.5.not
  %brmerge361 = or i1 %brmerge360, %tobool133.not.6
  %tobool137.not.6.not = xor i1 %tobool137.not.6, true
  %brmerge362 = or i1 %brmerge361, %tobool137.not.6.not
  %brmerge363 = or i1 %brmerge362, %tobool133.not.7
  %tobool137.not.7.not = xor i1 %tobool137.not.7, true
  %brmerge364 = or i1 %brmerge363, %tobool137.not.7.not
  %brmerge365 = or i1 %brmerge364, %tobool133.not.8
  %tobool137.not.8.not = xor i1 %tobool137.not.8, true
  %brmerge366 = or i1 %brmerge365, %tobool137.not.8.not
  %brmerge367 = or i1 %brmerge366, %tobool133.not.9
  %tobool137.not.9.not = xor i1 %tobool137.not.9, true
  %brmerge368 = or i1 %brmerge367, %tobool137.not.9.not
  br i1 %brmerge368, label %for.cond102.if.then138_crit_edge, label %for.cond102.if.end145_crit_edge

for.cond102.if.end145_crit_edge:                  ; preds = %for.cond102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

for.cond102.if.then138_crit_edge:                 ; preds = %for.cond102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then138

lor.lhs.false107:                                 ; preds = %for.inc99.9
  br i1 %tobool137.not, label %for.cond102, label %for.inc142

if.then138:                                       ; preds = %for.inc142.if.then138_crit_edge, %for.cond102.if.then138_crit_edge, %for.inc99.9.if.then138_crit_edge
  %i.5292.lcssa = phi i32 [ %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, %for.inc142.if.then138_crit_edge ], [ 0, %for.inc99.9.if.then138_crit_edge ], [ 0, %for.cond102.if.then138_crit_edge ]
  %arrayidx139 = getelementptr [10 x i32], ptr @__const.si21xx_set_frontend.afs, i32 0, i32 %i.5292.lcssa
  %30 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx139, align 4
  %conv140 = trunc i32 %31 to i8
  br label %if.end145

for.inc142:                                       ; preds = %lor.lhs.false107
  %brmerge370 = or i1 %tobool133.not.1, %tobool137.not.1
  %brmerge372 = or i1 %brmerge370, %tobool133.not.2
  %brmerge373 = or i1 %brmerge372, %tobool137.not.2
  %.mux.mux = select i1 %brmerge370, i32 1, i32 2
  %brmerge375 = or i1 %brmerge373, %tobool133.not.3
  %brmerge376 = or i1 %brmerge375, %tobool137.not.3
  %.mux.mux.mux.mux = select i1 %brmerge373, i32 %.mux.mux, i32 3
  %brmerge378 = or i1 %brmerge376, %tobool133.not.4
  %brmerge379 = or i1 %brmerge378, %tobool137.not.4
  %.mux.mux.mux.mux.mux.mux = select i1 %brmerge376, i32 %.mux.mux.mux.mux, i32 4
  %brmerge381 = or i1 %brmerge379, %tobool133.not.5
  %brmerge382 = or i1 %brmerge381, %tobool137.not.5
  %.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge379, i32 %.mux.mux.mux.mux.mux.mux, i32 5
  %brmerge384 = or i1 %brmerge382, %tobool133.not.6
  %brmerge385 = or i1 %brmerge384, %tobool137.not.6
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge382, i32 %.mux.mux.mux.mux.mux.mux.mux.mux, i32 6
  %brmerge387 = or i1 %brmerge385, %tobool133.not.7
  %brmerge388 = or i1 %brmerge387, %tobool137.not.7
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge385, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 7
  %brmerge390 = or i1 %brmerge388, %tobool133.not.8
  %brmerge391 = or i1 %brmerge390, %tobool137.not.8
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge388, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 8
  %brmerge393 = or i1 %brmerge391, %tobool133.not.9
  %brmerge394 = or i1 %brmerge393, %tobool137.not.9
  %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux = select i1 %brmerge391, i32 %.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux.mux, i32 9
  br i1 %brmerge394, label %for.inc142.if.then138_crit_edge, label %for.inc142.if.end145_crit_edge

for.inc142.if.end145_crit_edge:                   ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

for.inc142.if.then138_crit_edge:                  ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then138

if.end145:                                        ; preds = %for.inc142.if.end145_crit_edge, %if.then138, %for.cond102.if.end145_crit_edge
  %sample_rate.0 = phi i8 [ %conv140, %if.then138 ], [ -56, %for.cond102.if.end145_crit_edge ], [ 0, %for.inc142.if.end145_crit_edge ]
  %32 = add i8 %sample_rate.0, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %32)
  %33 = icmp ult i8 %32, -16
  %sample_rate.1 = select i1 %33, i8 -56, i8 %sample_rate.0
  %div155 = sdiv i32 %sub37, 10
  %mul156 = shl i32 %div155, 14
  %conv157 = zext i8 %sample_rate.1 to i32
  %mul158 = mul nuw nsw i32 %conv157, 1000
  %div159 = sdiv i32 %mul156, %mul158
  %conv161 = trunc i32 %div34 to i8
  %conv164 = trunc i32 %div159 to i8
  %34 = lshr i32 %div159, 8
  %conv167 = trunc i32 %34 to i8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf.i) #6
  %35 = getelementptr inbounds i8, ptr %buf.i, i32 1
  %36 = call ptr @memset(ptr %35, i32 255, i32 59)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %37 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %37, align 4
  %config.i = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 4
  %conv.i = zext i8 %42 to i16
  %43 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %flags.i, align 2
  store i16 5, ptr %37, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %45 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buf.i, ptr %buf3.i, align 4
  %46 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 21, ptr %buf.i, align 1
  %47 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %sample_rate.1, ptr %35, align 1
  %regs.sroa.6.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 2
  %48 = ptrtoint ptr %regs.sroa.6.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv161, ptr %regs.sroa.6.0.add.ptr.i.sroa_idx, align 1
  %regs.sroa.8.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 3
  %49 = ptrtoint ptr %regs.sroa.8.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv164, ptr %regs.sroa.8.0.add.ptr.i.sroa_idx, align 1
  %regs.sroa.10.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 4
  %50 = ptrtoint ptr %regs.sroa.10.0.add.ptr.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv167, ptr %regs.sroa.10.0.add.ptr.i.sroa_idx, align 1
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp7.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp7.not.i, label %if.end145.si21_writeregs.exit_crit_edge, label %do.body.i

if.end145.si21_writeregs.exit_crit_edge:          ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit

do.body.i:                                        ; preds = %if.end145
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i, label %do.body.i.si21_writeregs.exit_crit_edge, label %do.end.i

do.body.i.si21_writeregs.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 21, i32 noundef %conv157, i32 noundef %call.i) #9
  br label %si21_writeregs.exit

si21_writeregs.exit:                              ; preds = %do.end.i, %do.body.i.si21_writeregs.exit_crit_edge, %if.end145.si21_writeregs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i) #6
  %fs = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 5
  %54 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv157, ptr %fs, align 4
  %55 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %symbol_rate, align 4
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %57 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %fec_inner, align 4
  %59 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.i) #6
  %61 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -1, ptr %reg.i, align 1, !annotation !140
  %62 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i280 = icmp eq i32 %62, 0
  br i1 %tobool.not.i280, label %do.end3.thread.i, label %do.end3.i

do.end3.thread.i:                                 ; preds = %si21_writeregs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx101.i = getelementptr [10 x i8], ptr @__const.si21xx_setacquire.coderates, i32 0, i32 %58
  %63 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx101.i, align 1
  br label %do.end3.i.i

do.end3.i:                                        ; preds = %si21_writeregs.exit
  %call.i281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.22) #9
  %.pr.i = load i32, ptr @debug, align 4
  %arrayidx.i = getelementptr [10 x i8], ptr @__const.si21xx_setacquire.coderates, i32 0, i32 %58
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i, align 1
  %67 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i.i, label %do.end3.i.do.end3.i.i_crit_edge, label %do.end.i.i

do.end3.i.do.end3.i.i_crit_edge:                  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %56) #9
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %do.end3.i.do.end3.i.i_crit_edge, %do.end3.thread.i
  %69 = phi ptr [ %60, %do.end3.thread.i ], [ %68, %do.end.i.i ], [ %68, %do.end3.i.do.end3.i.i_crit_edge ]
  %70 = phi i8 [ %64, %do.end3.thread.i ], [ %66, %do.end.i.i ], [ %66, %do.end3.i.do.end3.i.i_crit_edge ]
  %71 = add i32 %56, -45000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -44000001, i32 %71)
  %72 = icmp ult i32 %71, -44000001
  br i1 %72, label %do.end3.i.i.si21xx_set_symbolrate.exit.i_crit_edge, label %for.cond.preheader.i.i

do.end3.i.i.si21xx_set_symbolrate.exit.i_crit_edge: ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21xx_set_symbolrate.exit.i

for.cond.preheader.i.i:                           ; preds = %do.end3.i.i
  %fs.i.i = getelementptr inbounds %struct.si21xx_state, ptr %69, i32 0, i32 5
  %73 = ptrtoint ptr %fs.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fs.i.i, align 4
  %.frozen = freeze i32 %56
  %div9.i.i = udiv i32 %.frozen, 100
  %75 = mul i32 %div9.i.i, 100
  %rem.i.i.decomposed = sub i32 %.frozen, %75
  %mul.i.i = shl nuw nsw i32 %rem.i.i.decomposed, 23
  %div8.i.i = udiv i32 %mul.i.i, %74
  %div.1.i.i = udiv i32 %div8.i.i, 100
  %rem.1.i.i = urem i32 %div9.i.i, 100
  %mul.1.i.i = shl nuw nsw i32 %rem.1.i.i, 23
  %div8.1.i.i = udiv i32 %mul.1.i.i, %74
  %add.1.i.i = add nuw nsw i32 %div8.1.i.i, %div.1.i.i
  %div9.1.i.i = udiv i32 %56, 10000
  %div.2.i.i = udiv i32 %add.1.i.i, 100
  %rem.2.lhs.trunc.i.i = trunc i32 %div9.1.i.i to i16
  %rem.25.i.i = urem i16 %rem.2.lhs.trunc.i.i, 100
  %rem.2.zext.i.i = zext i16 %rem.25.i.i to i32
  %mul.2.i.i = shl nuw nsw i32 %rem.2.zext.i.i, 23
  %div8.2.i.i = udiv i32 %mul.2.i.i, %74
  %add.2.i.i = add nuw nsw i32 %div.2.i.i, %div8.2.i.i
  %div9.2.i.i = udiv i32 %56, 1000000
  %div.3.i.i = udiv i32 %add.2.i.i, 100
  %rem.3.lhs.trunc.i.i = trunc i32 %div9.2.i.i to i8
  %rem.36.i.i = urem i8 %rem.3.lhs.trunc.i.i, 100
  %rem.3.zext.i.i = zext i8 %rem.36.i.i to i32
  %mul.3.i.i = shl nuw nsw i32 %rem.3.zext.i.i, 23
  %div8.3.i.i = udiv i32 %mul.3.i.i, %74
  %add.3.i.i = add nuw nsw i32 %div.3.i.i, %div8.3.i.i
  %conv.i.i = trunc i32 %add.3.i.i to i8
  %shr.1.i.i = lshr i32 %add.3.i.i, 8
  %conv.1.i.i = trunc i32 %shr.1.i.i to i8
  %shr.2.i.i = lshr i32 %add.3.i.i, 16
  %conv.2.i.i = trunc i32 %shr.2.i.i to i8
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf.i.i.i) #6
  %76 = getelementptr inbounds i8, ptr %buf.i.i.i, i32 1
  %77 = getelementptr inbounds i8, ptr %buf.i.i.i, i32 4
  %78 = call ptr @memset(ptr %77, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %79 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 327679, ptr %79, align 4
  %config.i.i.i = getelementptr inbounds %struct.si21xx_state, ptr %69, i32 0, i32 1
  %81 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %config.i.i.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 4
  %conv.i.i.i = zext i8 %84 to i16
  %85 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf3.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %87 = ptrtoint ptr %buf3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %buf.i.i.i, ptr %buf3.i.i.i, align 4
  %88 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 63, ptr %buf.i.i.i, align 1
  %89 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv.i.i, ptr %76, align 1
  %sym_rate_bytes.sroa.6.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %buf.i.i.i, i32 2
  %90 = ptrtoint ptr %sym_rate_bytes.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv.1.i.i, ptr %sym_rate_bytes.sroa.6.0..sroa_idx.i.i, align 1
  %sym_rate_bytes.sroa.8.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %buf.i.i.i, i32 3
  %91 = ptrtoint ptr %sym_rate_bytes.sroa.8.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv.2.i.i, ptr %sym_rate_bytes.sroa.8.0..sroa_idx.i.i, align 1
  %92 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %69, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp7.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp7.not.i.i.i, label %for.cond.preheader.i.i.si21_writeregs.exit.i.i_crit_edge, label %do.body.i.i.i

for.cond.preheader.i.i.si21_writeregs.exit.i.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit.i.i

do.body.i.i.i:                                    ; preds = %for.cond.preheader.i.i
  %94 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i.i.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.si21_writeregs.exit.i.i_crit_edge, label %do.end.i.i.i

do.body.i.i.i.si21_writeregs.exit.i.i_crit_edge:  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit.i.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv14.i.i.i = and i32 %add.3.i.i, 255
  %call15.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 63, i32 noundef %conv14.i.i.i, i32 noundef %call.i.i.i) #9
  br label %si21_writeregs.exit.i.i

si21_writeregs.exit.i.i:                          ; preds = %do.end.i.i.i, %do.body.i.i.i.si21_writeregs.exit.i.i_crit_edge, %for.cond.preheader.i.i.si21_writeregs.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i.i.i) #6
  br label %si21xx_set_symbolrate.exit.i

si21xx_set_symbolrate.exit.i:                     ; preds = %si21_writeregs.exit.i.i, %do.end3.i.i.si21xx_set_symbolrate.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf.i.i) #6
  %95 = getelementptr inbounds i8, ptr %buf.i.i, i32 1
  %96 = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %97 = call ptr @memset(ptr %96, i32 255, i32 58)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %98 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 196607, ptr %98, align 4
  %config.i.i = getelementptr inbounds %struct.si21xx_state, ptr %60, i32 0, i32 1
  %100 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %config.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %101, align 4
  %conv.i1.i = zext i8 %103 to i16
  %104 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv.i1.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %105 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %flags.i.i, align 2
  %buf3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %106 = ptrtoint ptr %buf3.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %buf.i.i, ptr %buf3.i.i, align 4
  %107 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -96, ptr %buf.i.i, align 1
  %108 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %70, ptr %95, align 1
  %109 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %60, align 4
  %call.i2.i = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i2.i)
  %cmp7.not.i.i = icmp eq i32 %call.i2.i, 1
  br i1 %cmp7.not.i.i, label %si21xx_set_symbolrate.exit.i.si21_writeregs.exit.i_crit_edge, label %do.body.i.i

si21xx_set_symbolrate.exit.i.si21_writeregs.exit.i_crit_edge: ; preds = %si21xx_set_symbolrate.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit.i

do.body.i.i:                                      ; preds = %si21xx_set_symbolrate.exit.i
  %111 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i3.i = icmp eq i32 %111, 0
  br i1 %tobool.not.i3.i, label %do.body.i.i.si21_writeregs.exit.i_crit_edge, label %do.end.i4.i

do.body.i.i.si21_writeregs.exit.i_crit_edge:      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit.i

do.end.i4.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv14.i.i = zext i8 %70 to i32
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 160, i32 noundef %conv14.i.i, i32 noundef %call.i2.i) #9
  br label %si21_writeregs.exit.i

si21_writeregs.exit.i:                            ; preds = %do.end.i4.i, %do.body.i.i.si21_writeregs.exit.i_crit_edge, %si21xx_set_symbolrate.exit.i.si21_writeregs.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %112 = ptrtoint ptr %reg1.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 20, ptr %reg1.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i5.i) #6
  %113 = getelementptr inbounds i8, ptr %msg.i5.i, i32 4
  %114 = call ptr @memset(ptr %113, i32 255, i32 16)
  %115 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %config.i.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %116, align 4
  %conv.i7.i = zext i8 %118 to i16
  %119 = ptrtoint ptr %msg.i5.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv.i7.i, ptr %msg.i5.i, align 4
  %flags.i8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5.i, i32 0, i32 1
  %120 = ptrtoint ptr %flags.i8.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %flags.i8.i, align 2
  %121 = ptrtoint ptr %113 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 1, ptr %113, align 4
  %buf.i10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5.i, i32 0, i32 3
  %122 = ptrtoint ptr %buf.i10.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %reg1.addr.i.i, ptr %buf.i10.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5.i, i32 1
  %123 = load i8, ptr %116, align 4
  %conv5.i.i = zext i8 %123 to i16
  %124 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv5.i.i, ptr %arrayinit.element.i.i, align 4
  %flags6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5.i, i32 1, i32 1
  %125 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 1, ptr %flags6.i.i, align 2
  %len7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5.i, i32 1, i32 2
  %126 = ptrtoint ptr %len7.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 1, ptr %len7.i.i, align 4
  %buf9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5.i, i32 1, i32 3
  %127 = ptrtoint ptr %buf9.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %reg.i, ptr %buf9.i.i, align 4
  %128 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %60, align 4
  %call.i11.i = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %msg.i5.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i11.i)
  %cmp.not.i.i = icmp eq i32 %call.i11.i, 2
  br i1 %cmp.not.i.i, label %si21_writeregs.exit.i.si21_readregs.exit.i_crit_edge, label %do.body.i13.i

si21_writeregs.exit.i.si21_readregs.exit.i_crit_edge: ; preds = %si21_writeregs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readregs.exit.i

do.body.i13.i:                                    ; preds = %si21_writeregs.exit.i
  %130 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool.not.i12.i = icmp eq i32 %130, 0
  br i1 %tobool.not.i12.i, label %do.body.i13.i.si21_readregs.exit.i_crit_edge, label %do.end.i14.i

do.body.i13.i.si21_readregs.exit.i_crit_edge:     ; preds = %do.body.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readregs.exit.i

do.end.i14.i:                                     ; preds = %do.body.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i11.i) #9
  br label %si21_readregs.exit.i

si21_readregs.exit.i:                             ; preds = %do.end.i14.i, %do.body.i13.i.si21_readregs.exit.i_crit_edge, %si21_writeregs.exit.i.si21_readregs.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i5.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i.i) #6
  %131 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %reg.i, align 1
  %and.i = and i8 %132, 127
  store i8 %and.i, ptr %reg.i, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf.i15.i) #6
  %133 = getelementptr inbounds i8, ptr %buf.i15.i, i32 1
  %134 = getelementptr inbounds i8, ptr %buf.i15.i, i32 2
  %135 = call ptr @memset(ptr %134, i32 255, i32 58)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i16.i) #6
  %136 = getelementptr inbounds i8, ptr %msg.i16.i, i32 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 196607, ptr %136, align 4
  %138 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %config.i.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %139, align 4
  %conv.i18.i = zext i8 %141 to i16
  %142 = ptrtoint ptr %msg.i16.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv.i18.i, ptr %msg.i16.i, align 4
  %flags.i19.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i16.i, i32 0, i32 1
  %143 = ptrtoint ptr %flags.i19.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 0, ptr %flags.i19.i, align 2
  %buf3.i21.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i16.i, i32 0, i32 3
  %144 = ptrtoint ptr %buf3.i21.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %buf.i15.i, ptr %buf3.i21.i, align 4
  %145 = ptrtoint ptr %buf.i15.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 20, ptr %buf.i15.i, align 1
  %146 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %and.i, ptr %133, align 1
  %147 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %60, align 4
  %call.i23.i = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %msg.i16.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i23.i)
  %cmp7.not.i24.i = icmp eq i32 %call.i23.i, 1
  br i1 %cmp7.not.i24.i, label %si21_readregs.exit.i.si21_writeregs.exit31.i_crit_edge, label %do.body.i26.i

si21_readregs.exit.i.si21_writeregs.exit31.i_crit_edge: ; preds = %si21_readregs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit31.i

do.body.i26.i:                                    ; preds = %si21_readregs.exit.i
  %149 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool.not.i25.i = icmp eq i32 %149, 0
  br i1 %tobool.not.i25.i, label %do.body.i26.i.si21_writeregs.exit31.i_crit_edge, label %do.end.i29.i

do.body.i26.i.si21_writeregs.exit31.i_crit_edge:  ; preds = %do.body.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit31.i

do.end.i29.i:                                     ; preds = %do.body.i26.i
  call void @__sanitizer_cov_trace_pc() #8
  %150 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %reg.i, align 1
  %conv14.i27.i = zext i8 %151 to i32
  %call15.i28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 20, i32 noundef %conv14.i27.i, i32 noundef %call.i23.i) #9
  br label %si21_writeregs.exit31.i

si21_writeregs.exit31.i:                          ; preds = %do.end.i29.i, %do.body.i26.i.si21_writeregs.exit31.i_crit_edge, %si21_readregs.exit.i.si21_writeregs.exit31.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i16.i) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i15.i) #6
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf.i32.i) #6
  %152 = getelementptr inbounds i8, ptr %buf.i32.i, i32 1
  %153 = getelementptr inbounds i8, ptr %buf.i32.i, i32 4
  %154 = call ptr @memset(ptr %153, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i33.i) #6
  %155 = getelementptr inbounds i8, ptr %msg.i33.i, i32 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 327679, ptr %155, align 4
  %157 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %config.i.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %158, align 4
  %conv.i35.i = zext i8 %160 to i16
  %161 = ptrtoint ptr %msg.i33.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv.i35.i, ptr %msg.i33.i, align 4
  %flags.i36.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33.i, i32 0, i32 1
  %162 = ptrtoint ptr %flags.i36.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 0, ptr %flags.i36.i, align 2
  %buf3.i38.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33.i, i32 0, i32 3
  %163 = ptrtoint ptr %buf3.i38.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %buf.i32.i, ptr %buf3.i38.i, align 4
  %164 = ptrtoint ptr %buf.i32.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 -111, ptr %buf.i32.i, align 1
  %165 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 -53, ptr %152, align 1
  %regs.sroa.6.0.add.ptr.i39.sroa_idx.i = getelementptr inbounds i8, ptr %buf.i32.i, i32 2
  %166 = ptrtoint ptr %regs.sroa.6.0.add.ptr.i39.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 64, ptr %regs.sroa.6.0.add.ptr.i39.sroa_idx.i, align 1
  %regs.sroa.8.0.add.ptr.i39.sroa_idx.i = getelementptr inbounds i8, ptr %buf.i32.i, i32 3
  %167 = ptrtoint ptr %regs.sroa.8.0.add.ptr.i39.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 -53, ptr %regs.sroa.8.0.add.ptr.i39.sroa_idx.i, align 1
  %168 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %60, align 4
  %call.i40.i = call i32 @i2c_transfer(ptr noundef %169, ptr noundef nonnull %msg.i33.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i40.i)
  %cmp7.not.i41.i = icmp eq i32 %call.i40.i, 1
  br i1 %cmp7.not.i41.i, label %si21_writeregs.exit31.i.si21_writeregs.exit48.i_crit_edge, label %do.body.i43.i

si21_writeregs.exit31.i.si21_writeregs.exit48.i_crit_edge: ; preds = %si21_writeregs.exit31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit48.i

do.body.i43.i:                                    ; preds = %si21_writeregs.exit31.i
  %170 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool.not.i42.i = icmp eq i32 %170, 0
  br i1 %tobool.not.i42.i, label %do.body.i43.i.si21_writeregs.exit48.i_crit_edge, label %do.end.i46.i

do.body.i43.i.si21_writeregs.exit48.i_crit_edge:  ; preds = %do.body.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit48.i

do.end.i46.i:                                     ; preds = %do.body.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i45.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 145, i32 noundef 203, i32 noundef %call.i40.i) #9
  br label %si21_writeregs.exit48.i

si21_writeregs.exit48.i:                          ; preds = %do.end.i46.i, %do.body.i43.i.si21_writeregs.exit48.i_crit_edge, %si21_writeregs.exit31.i.si21_writeregs.exit48.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i33.i) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i32.i) #6
  %171 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 86, ptr %reg.i, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf.i49.i) #6
  %172 = getelementptr inbounds i8, ptr %buf.i49.i, i32 1
  %173 = getelementptr inbounds i8, ptr %buf.i49.i, i32 2
  %174 = call ptr @memset(ptr %173, i32 255, i32 58)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i50.i) #6
  %175 = getelementptr inbounds i8, ptr %msg.i50.i, i32 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 196607, ptr %175, align 4
  %177 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %config.i.i, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %178, align 4
  %conv.i52.i = zext i8 %180 to i16
  %181 = ptrtoint ptr %msg.i50.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %conv.i52.i, ptr %msg.i50.i, align 4
  %flags.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 0, i32 1
  %182 = ptrtoint ptr %flags.i53.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 0, ptr %flags.i53.i, align 2
  %buf3.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50.i, i32 0, i32 3
  %183 = ptrtoint ptr %buf3.i55.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %buf.i49.i, ptr %buf3.i55.i, align 4
  %184 = ptrtoint ptr %buf.i49.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 -115, ptr %buf.i49.i, align 1
  %185 = ptrtoint ptr %172 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 86, ptr %172, align 1
  %186 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %60, align 4
  %call.i57.i = call i32 @i2c_transfer(ptr noundef %187, ptr noundef nonnull %msg.i50.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i57.i)
  %cmp7.not.i58.i = icmp eq i32 %call.i57.i, 1
  br i1 %cmp7.not.i58.i, label %si21_writeregs.exit48.i.si21_writeregs.exit65.i_crit_edge, label %do.body.i60.i

si21_writeregs.exit48.i.si21_writeregs.exit65.i_crit_edge: ; preds = %si21_writeregs.exit48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit65.i

do.body.i60.i:                                    ; preds = %si21_writeregs.exit48.i
  %188 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i59.i = icmp eq i32 %188, 0
  br i1 %tobool.not.i59.i, label %do.body.i60.i.si21_writeregs.exit65.i_crit_edge, label %do.end.i63.i

do.body.i60.i.si21_writeregs.exit65.i_crit_edge:  ; preds = %do.body.i60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit65.i

do.end.i63.i:                                     ; preds = %do.body.i60.i
  call void @__sanitizer_cov_trace_pc() #8
  %189 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %reg.i, align 1
  %conv14.i61.i = zext i8 %190 to i32
  %call15.i62.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 141, i32 noundef %conv14.i61.i, i32 noundef %call.i57.i) #9
  br label %si21_writeregs.exit65.i

si21_writeregs.exit65.i:                          ; preds = %do.end.i63.i, %do.body.i60.i.si21_writeregs.exit65.i_crit_edge, %si21_writeregs.exit48.i.si21_writeregs.exit65.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i50.i) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i49.i) #6
  %191 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 5, ptr %reg.i, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf.i66.i) #6
  %192 = getelementptr inbounds i8, ptr %buf.i66.i, i32 1
  %193 = getelementptr inbounds i8, ptr %buf.i66.i, i32 2
  %194 = call ptr @memset(ptr %193, i32 255, i32 58)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i67.i) #6
  %195 = getelementptr inbounds i8, ptr %msg.i67.i, i32 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 196607, ptr %195, align 4
  %197 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %config.i.i, align 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %198, align 4
  %conv.i69.i = zext i8 %200 to i16
  %201 = ptrtoint ptr %msg.i67.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %conv.i69.i, ptr %msg.i67.i, align 4
  %flags.i70.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67.i, i32 0, i32 1
  %202 = ptrtoint ptr %flags.i70.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 0, ptr %flags.i70.i, align 2
  %buf3.i72.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67.i, i32 0, i32 3
  %203 = ptrtoint ptr %buf3.i72.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %buf.i66.i, ptr %buf3.i72.i, align 4
  %204 = ptrtoint ptr %buf.i66.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 -128, ptr %buf.i66.i, align 1
  %205 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 5, ptr %192, align 1
  %206 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %60, align 4
  %call.i74.i = call i32 @i2c_transfer(ptr noundef %207, ptr noundef nonnull %msg.i67.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i74.i)
  %cmp7.not.i75.i = icmp eq i32 %call.i74.i, 1
  br i1 %cmp7.not.i75.i, label %si21_writeregs.exit65.i.si21_writeregs.exit82.i_crit_edge, label %do.body.i77.i

si21_writeregs.exit65.i.si21_writeregs.exit82.i_crit_edge: ; preds = %si21_writeregs.exit65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit82.i

do.body.i77.i:                                    ; preds = %si21_writeregs.exit65.i
  %208 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool.not.i76.i = icmp eq i32 %208, 0
  br i1 %tobool.not.i76.i, label %do.body.i77.i.si21_writeregs.exit82.i_crit_edge, label %do.end.i80.i

do.body.i77.i.si21_writeregs.exit82.i_crit_edge:  ; preds = %do.body.i77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit82.i

do.end.i80.i:                                     ; preds = %do.body.i77.i
  call void @__sanitizer_cov_trace_pc() #8
  %209 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %reg.i, align 1
  %conv14.i78.i = zext i8 %210 to i32
  %call15.i79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 128, i32 noundef %conv14.i78.i, i32 noundef %call.i74.i) #9
  br label %si21_writeregs.exit82.i

si21_writeregs.exit82.i:                          ; preds = %do.end.i80.i, %do.body.i77.i.si21_writeregs.exit82.i_crit_edge, %si21_writeregs.exit65.i.si21_writeregs.exit82.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i67.i) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i66.i) #6
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf.i83.i) #6
  %211 = getelementptr inbounds i8, ptr %buf.i83.i, i32 1
  %212 = getelementptr inbounds i8, ptr %buf.i83.i, i32 2
  %213 = call ptr @memset(ptr %212, i32 255, i32 58)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i84.i) #6
  %214 = getelementptr inbounds i8, ptr %msg.i84.i, i32 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 196607, ptr %214, align 4
  %216 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %config.i.i, align 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %217, align 4
  %conv.i86.i = zext i8 %219 to i16
  %220 = ptrtoint ptr %msg.i84.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %conv.i86.i, ptr %msg.i84.i, align 4
  %flags.i87.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 0, i32 1
  %221 = ptrtoint ptr %flags.i87.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 0, ptr %flags.i87.i, align 2
  %buf3.i89.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 0, i32 3
  %222 = ptrtoint ptr %buf3.i89.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %buf.i83.i, ptr %buf3.i89.i, align 4
  %223 = ptrtoint ptr %buf.i83.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 20, ptr %buf.i83.i, align 1
  %224 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 -128, ptr %211, align 1
  %225 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %60, align 4
  %call.i91.i = call i32 @i2c_transfer(ptr noundef %226, ptr noundef nonnull %msg.i84.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i91.i)
  %cmp7.not.i92.i = icmp eq i32 %call.i91.i, 1
  br i1 %cmp7.not.i92.i, label %si21_writeregs.exit82.i.si21xx_setacquire.exit_crit_edge, label %do.body.i94.i

si21_writeregs.exit82.i.si21xx_setacquire.exit_crit_edge: ; preds = %si21_writeregs.exit82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21xx_setacquire.exit

do.body.i94.i:                                    ; preds = %si21_writeregs.exit82.i
  %227 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool.not.i93.i = icmp eq i32 %227, 0
  br i1 %tobool.not.i93.i, label %do.body.i94.i.si21xx_setacquire.exit_crit_edge, label %do.end.i97.i

do.body.i94.i.si21xx_setacquire.exit_crit_edge:   ; preds = %do.body.i94.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21xx_setacquire.exit

do.end.i97.i:                                     ; preds = %do.body.i94.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i96.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 20, i32 noundef 128, i32 noundef %call.i91.i) #9
  br label %si21xx_setacquire.exit

si21xx_setacquire.exit:                           ; preds = %do.end.i97.i, %do.body.i94.i.si21xx_setacquire.exit_crit_edge, %si21_writeregs.exit82.i.si21xx_setacquire.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i84.i) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i83.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.i) #6
  %spec.select = select i1 %cmp7.not.i, i32 0, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %si21xx_setacquire.exit, %do.end10, %do.body5.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end10 ], [ -95, %do.body5.cleanup_crit_edge ], [ %spec.select, %si21xx_setacquire.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si21_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %reg1.addr.i = alloca i8, align 1
  %msg.i66 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %regs_read = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regs_read) #6
  %2 = ptrtoint ptr %regs_read to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %regs_read, align 1, !annotation !140
  %3 = getelementptr inbounds [2 x i8], ptr %regs_read, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !140
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %5 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 40, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %6 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %17 = load i8, ptr %10, align 4
  %conv5.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %20 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %b1.i, ptr %buf8.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.si21_readreg.exit_crit_edge, label %do.body.i

entry.si21_readreg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.body.i:                                        ; preds = %entry
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %do.body.i.si21_readreg.exit_crit_edge, label %do.end.i

do.body.i.si21_readreg.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 40, i32 noundef %call.i) #9
  br label %si21_readreg.exit

si21_readreg.exit:                                ; preds = %do.end.i, %do.body.i.si21_readreg.exit_crit_edge, %entry.si21_readreg.exit_crit_edge
  %25 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i)
  %27 = ptrtoint ptr %reg1.addr.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 15, ptr %reg1.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i66) #6
  %28 = getelementptr inbounds i8, ptr %msg.i66, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv.i68 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i66 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i68, ptr %msg.i66, align 4
  %flags.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i69, align 2
  %36 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %28, align 4
  %buf.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 3
  %37 = ptrtoint ptr %buf.i70 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %reg1.addr.i, ptr %buf.i70, align 4
  %arrayinit.element.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 1
  %38 = load i8, ptr %31, align 4
  %conv5.i72 = zext i8 %38 to i16
  %39 = ptrtoint ptr %arrayinit.element.i71 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv5.i72, ptr %arrayinit.element.i71, align 4
  %flags6.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 1, i32 1
  %40 = ptrtoint ptr %flags6.i73 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %flags6.i73, align 2
  %len7.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 1, i32 2
  %41 = ptrtoint ptr %len7.i74 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 2, ptr %len7.i74, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 1, i32 3
  %42 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %regs_read, ptr %buf9.i, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i75 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i66, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i75)
  %cmp.not.i76 = icmp eq i32 %call.i75, 2
  br i1 %cmp.not.i76, label %si21_readreg.exit.si21_readregs.exit_crit_edge, label %do.body.i78

si21_readreg.exit.si21_readregs.exit_crit_edge:   ; preds = %si21_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readregs.exit

do.body.i78:                                      ; preds = %si21_readreg.exit
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i77 = icmp eq i32 %45, 0
  br i1 %tobool.not.i77, label %do.body.i78.si21_readregs.exit_crit_edge, label %do.end.i79

do.body.i78.si21_readregs.exit_crit_edge:         ; preds = %do.body.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readregs.exit

do.end.i79:                                       ; preds = %do.body.i78
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i75) #9
  br label %si21_readregs.exit

si21_readregs.exit:                               ; preds = %do.end.i79, %do.body.i78.si21_readregs.exit_crit_edge, %si21_readreg.exit.si21_readregs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i66) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i)
  %46 = ptrtoint ptr %regs_read to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %regs_read, align 1
  %trunc89 = trunc i8 %47 to i7
  %rev90 = call i7 @llvm.bitreverse.i7(i7 %trunc89)
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %3, align 1
  %50 = and i8 %49, -128
  %51 = zext i7 %rev90 to i8
  %conv14 = or i8 %50, %51
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not = icmp eq i32 %52, 0
  %.pre = zext i8 %conv14 to i32
  br i1 %tobool.not, label %si21_readregs.exit.do.end19_crit_edge, label %do.end

si21_readregs.exit.do.end19_crit_edge:            ; preds = %si21_readregs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

do.end:                                           ; preds = %si21_readregs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %.pre) #9
  br label %do.end19

do.end19:                                         ; preds = %do.end, %si21_readregs.exit.do.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %26)
  %cmp21 = icmp ugt i8 %26, 10
  %spec.select = zext i1 %cmp21 to i32
  %and27 = and i32 %.pre, 2
  %53 = or i32 %and27, %spec.select
  %54 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %status, align 4
  %and33 = and i32 %.pre, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.end19.if.end37_crit_edge, label %if.then35

do.end19.if.end37_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then35:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %status, align 4
  %or36 = or i32 %56, 4
  store i32 %or36, ptr %status, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %do.end19.if.end37_crit_edge
  %and39 = and i32 %.pre, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end37.if.end43_crit_edge, label %if.then41

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %status, align 4
  %or42 = or i32 %58, 8
  store i32 %or42, ptr %status, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end37.if.end43_crit_edge
  %and45 = and i32 %.pre, 123
  call void @__sanitizer_cov_trace_const_cmp4(i32 123, i32 %and45)
  %cmp46 = icmp eq i32 %and45, 123
  br i1 %cmp46, label %if.then48, label %if.end43.if.end50_crit_edge

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %status, align 4
  %or49 = or i32 %60, 16
  store i32 %or49, ptr %status, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.end43.if.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regs_read) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si21_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %b0.i11 = alloca [1 x i8], align 1
  %b1.i12 = alloca [1 x i8], align 1
  %msg.i13 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.27) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %errmode = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %errmode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %errmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end5, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %5 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 29, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %6 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %17 = load i8, ptr %10, align 4
  %conv5.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %20 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %b1.i, ptr %buf8.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end5.si21_readreg.exit_crit_edge, label %do.body.i

if.end5.si21_readreg.exit_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.body.i:                                        ; preds = %if.end5
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %do.body.i.si21_readreg.exit_crit_edge, label %do.end.i

do.body.i.si21_readreg.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 29, i32 noundef %call.i) #9
  br label %si21_readreg.exit

si21_readreg.exit:                                ; preds = %do.end.i, %do.body.i.si21_readreg.exit_crit_edge, %if.end5.si21_readreg.exit_crit_edge
  %25 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %conv = zext i8 %26 to i32
  %shl = shl nuw nsw i32 %conv, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i11) #6
  %27 = ptrtoint ptr %b0.i11 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 30, ptr %b0.i11, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i12) #6
  %28 = ptrtoint ptr %b1.i12 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %b1.i12, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i13) #6
  %29 = getelementptr inbounds i8, ptr %msg.i13, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv.i15 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i13 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i15, ptr %msg.i13, align 4
  %flags.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i16 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i16, align 2
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %29, align 4
  %buf.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i18 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %b0.i11, ptr %buf.i18, align 4
  %arrayinit.element.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 1
  %39 = load i8, ptr %32, align 4
  %conv5.i20 = zext i8 %39 to i16
  %40 = ptrtoint ptr %arrayinit.element.i19 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv5.i20, ptr %arrayinit.element.i19, align 4
  %flags6.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 1, i32 1
  %41 = ptrtoint ptr %flags6.i21 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags6.i21, align 2
  %len7.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 1, i32 2
  %42 = ptrtoint ptr %len7.i22 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %len7.i22, align 4
  %buf8.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 1, i32 3
  %43 = ptrtoint ptr %buf8.i23 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b1.i12, ptr %buf8.i23, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i24 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i13, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i24)
  %cmp.not.i25 = icmp eq i32 %call.i24, 2
  br i1 %cmp.not.i25, label %si21_readreg.exit.si21_readreg.exit30_crit_edge, label %do.body.i27

si21_readreg.exit.si21_readreg.exit30_crit_edge:  ; preds = %si21_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit30

do.body.i27:                                      ; preds = %si21_readreg.exit
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i26 = icmp eq i32 %46, 0
  br i1 %tobool.not.i26, label %do.body.i27.si21_readreg.exit30_crit_edge, label %do.end.i29

do.body.i27.si21_readreg.exit30_crit_edge:        ; preds = %do.body.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit30

do.end.i29:                                       ; preds = %do.body.i27
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 30, i32 noundef %call.i24) #9
  br label %si21_readreg.exit30

si21_readreg.exit30:                              ; preds = %do.end.i29, %do.body.i27.si21_readreg.exit30_crit_edge, %si21_readreg.exit.si21_readreg.exit30_crit_edge
  %47 = ptrtoint ptr %b1.i12 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %b1.i12, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i13) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i12) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i11) #6
  %conv8 = zext i8 %48 to i32
  %or = or i32 %shl, %conv8
  %49 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or, ptr %ber, align 4
  br label %cleanup

cleanup:                                          ; preds = %si21_readreg.exit30, %do.end3.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si21_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %b0.i61 = alloca [1 x i8], align 1
  %b1.i62 = alloca [1 x i8], align 1
  %msg.i63 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i41 = alloca [1 x i8], align 1
  %b1.i42 = alloca [1 x i8], align 1
  %msg.i43 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i21 = alloca [1 x i8], align 1
  %b1.i22 = alloca [1 x i8], align 1
  %msg.i23 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 39, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 4
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.si21_readreg.exit_crit_edge, label %do.body.i

entry.si21_readreg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body.i.si21_readreg.exit_crit_edge, label %do.end.i

do.body.i.si21_readreg.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 39, i32 noundef %call.i) #9
  br label %si21_readreg.exit

si21_readreg.exit:                                ; preds = %do.end.i, %do.body.i.si21_readreg.exit_crit_edge, %entry.si21_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %conv = zext i8 %23 to i16
  %mul = mul nuw nsw i16 %conv, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i21) #6
  %24 = ptrtoint ptr %b0.i21 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 40, ptr %b0.i21, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i22) #6
  %25 = ptrtoint ptr %b1.i22 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %b1.i22, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i23) #6
  %26 = getelementptr inbounds i8, ptr %msg.i23, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %conv.i25 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i23 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i25, ptr %msg.i23, align 4
  %flags.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i26 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i26, align 2
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %26, align 4
  %buf.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i21, ptr %buf.i28, align 4
  %arrayinit.element.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 1
  %36 = load i8, ptr %29, align 4
  %conv5.i30 = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayinit.element.i29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i30, ptr %arrayinit.element.i29, align 4
  %flags6.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 1, i32 1
  %38 = ptrtoint ptr %flags6.i31 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags6.i31, align 2
  %len7.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 1, i32 2
  %39 = ptrtoint ptr %len7.i32 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %len7.i32, align 4
  %buf8.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 1, i32 3
  %40 = ptrtoint ptr %buf8.i33 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b1.i22, ptr %buf8.i33, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i34 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i23, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i34)
  %cmp.not.i35 = icmp eq i32 %call.i34, 2
  br i1 %cmp.not.i35, label %si21_readreg.exit.si21_readreg.exit40_crit_edge, label %do.body.i37

si21_readreg.exit.si21_readreg.exit40_crit_edge:  ; preds = %si21_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit40

do.body.i37:                                      ; preds = %si21_readreg.exit
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i36 = icmp eq i32 %43, 0
  br i1 %tobool.not.i36, label %si21_readreg.exit40.thread, label %do.end.i39

si21_readreg.exit40.thread:                       ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %b1.i22 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b1.i22, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i23) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i22) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i21) #6
  %conv281 = zext i8 %45 to i16
  %mul382 = mul i16 %mul, %conv281
  br label %do.end13

do.end.i39:                                       ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 40, i32 noundef %call.i34) #9
  br label %si21_readreg.exit40

si21_readreg.exit40:                              ; preds = %do.end.i39, %si21_readreg.exit.si21_readreg.exit40_crit_edge
  %.pr = load i32, ptr @debug, align 4
  %46 = ptrtoint ptr %b1.i22 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %b1.i22, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i23) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i22) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i21) #6
  %conv2 = zext i8 %47 to i16
  %mul3 = mul i16 %mul, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %si21_readreg.exit40.do.end13_crit_edge, label %do.end

si21_readreg.exit40.do.end13_crit_edge:           ; preds = %si21_readreg.exit40
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

do.end:                                           ; preds = %si21_readreg.exit40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i41) #6
  %48 = ptrtoint ptr %b0.i41 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 39, ptr %b0.i41, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i42) #6
  %49 = ptrtoint ptr %b1.i42 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %b1.i42, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i43) #6
  %50 = getelementptr inbounds i8, ptr %msg.i43, i32 4
  %51 = call ptr @memset(ptr %50, i32 255, i32 16)
  %52 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %config.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 4
  %conv.i45 = zext i8 %55 to i16
  %56 = ptrtoint ptr %msg.i43 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i45, ptr %msg.i43, align 4
  %flags.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i46 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i46, align 2
  %58 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %50, align 4
  %buf.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 0, i32 3
  %59 = ptrtoint ptr %buf.i48 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %b0.i41, ptr %buf.i48, align 4
  %arrayinit.element.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 1
  %60 = load i8, ptr %53, align 4
  %conv5.i50 = zext i8 %60 to i16
  %61 = ptrtoint ptr %arrayinit.element.i49 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv5.i50, ptr %arrayinit.element.i49, align 4
  %flags6.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 1, i32 1
  %62 = ptrtoint ptr %flags6.i51 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 1, ptr %flags6.i51, align 2
  %len7.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 1, i32 2
  %63 = ptrtoint ptr %len7.i52 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %len7.i52, align 4
  %buf8.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 1, i32 3
  %64 = ptrtoint ptr %buf8.i53 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %b1.i42, ptr %buf8.i53, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %call.i54 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %msg.i43, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i54)
  %cmp.not.i55 = icmp eq i32 %call.i54, 2
  br i1 %cmp.not.i55, label %do.end.si21_readreg.exit60_crit_edge, label %do.body.i57

do.end.si21_readreg.exit60_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit60

do.body.i57:                                      ; preds = %do.end
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i56 = icmp eq i32 %67, 0
  br i1 %tobool.not.i56, label %do.body.i57.si21_readreg.exit60_crit_edge, label %do.end.i59

do.body.i57.si21_readreg.exit60_crit_edge:        ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit60

do.end.i59:                                       ; preds = %do.body.i57
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 39, i32 noundef %call.i54) #9
  br label %si21_readreg.exit60

si21_readreg.exit60:                              ; preds = %do.end.i59, %do.body.i57.si21_readreg.exit60_crit_edge, %do.end.si21_readreg.exit60_crit_edge
  %68 = ptrtoint ptr %b1.i42 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %b1.i42, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i43) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i42) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i41) #6
  %conv7 = zext i8 %69 to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i61) #6
  %70 = ptrtoint ptr %b0.i61 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 40, ptr %b0.i61, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i62) #6
  %71 = ptrtoint ptr %b1.i62 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %b1.i62, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i63) #6
  %72 = getelementptr inbounds i8, ptr %msg.i63, i32 4
  %73 = call ptr @memset(ptr %72, i32 255, i32 16)
  %74 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %config.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 4
  %conv.i65 = zext i8 %77 to i16
  %78 = ptrtoint ptr %msg.i63 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i65, ptr %msg.i63, align 4
  %flags.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i66 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i66, align 2
  %80 = ptrtoint ptr %72 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 1, ptr %72, align 4
  %buf.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 0, i32 3
  %81 = ptrtoint ptr %buf.i68 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %b0.i61, ptr %buf.i68, align 4
  %arrayinit.element.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 1
  %82 = load i8, ptr %75, align 4
  %conv5.i70 = zext i8 %82 to i16
  %83 = ptrtoint ptr %arrayinit.element.i69 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv5.i70, ptr %arrayinit.element.i69, align 4
  %flags6.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 1, i32 1
  %84 = ptrtoint ptr %flags6.i71 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %flags6.i71, align 2
  %len7.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 1, i32 2
  %85 = ptrtoint ptr %len7.i72 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 1, ptr %len7.i72, align 4
  %buf8.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 1, i32 3
  %86 = ptrtoint ptr %buf8.i73 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %b1.i62, ptr %buf8.i73, align 4
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %call.i74 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %msg.i63, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i74)
  %cmp.not.i75 = icmp eq i32 %call.i74, 2
  br i1 %cmp.not.i75, label %si21_readreg.exit60.si21_readreg.exit80_crit_edge, label %do.body.i77

si21_readreg.exit60.si21_readreg.exit80_crit_edge: ; preds = %si21_readreg.exit60
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit80

do.body.i77:                                      ; preds = %si21_readreg.exit60
  %89 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i76 = icmp eq i32 %89, 0
  br i1 %tobool.not.i76, label %do.body.i77.si21_readreg.exit80_crit_edge, label %do.end.i79

do.body.i77.si21_readreg.exit80_crit_edge:        ; preds = %do.body.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit80

do.end.i79:                                       ; preds = %do.body.i77
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 40, i32 noundef %call.i74) #9
  br label %si21_readreg.exit80

si21_readreg.exit80:                              ; preds = %do.end.i79, %do.body.i77.si21_readreg.exit80_crit_edge, %si21_readreg.exit60.si21_readreg.exit80_crit_edge
  %90 = ptrtoint ptr %b1.i62 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %b1.i62, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i63) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i62) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i61) #6
  %conv9 = zext i8 %91 to i32
  %conv10 = zext i16 %mul3 to i32
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %conv10) #9
  br label %do.end13

do.end13:                                         ; preds = %si21_readreg.exit80, %si21_readreg.exit40.do.end13_crit_edge, %si21_readreg.exit40.thread
  %mul384 = phi i16 [ %mul382, %si21_readreg.exit40.thread ], [ %mul3, %si21_readreg.exit80 ], [ %mul3, %si21_readreg.exit40.do.end13_crit_edge ]
  %shl = shl i16 %mul384, 4
  %92 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %shl, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si21_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %b0.i20 = alloca [1 x i8], align 1
  %b1.i21 = alloca [1 x i8], align 1
  %msg.i22 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %2 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 36, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %3 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %4, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 4
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.si21_readreg.exit_crit_edge, label %do.body.i

entry.si21_readreg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.body.i:                                        ; preds = %entry
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body.i.si21_readreg.exit_crit_edge, label %do.end.i

do.body.i.si21_readreg.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 36, i32 noundef %call.i) #9
  br label %si21_readreg.exit

si21_readreg.exit:                                ; preds = %do.end.i, %do.body.i.si21_readreg.exit_crit_edge, %entry.si21_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %conv = zext i8 %23 to i32
  %shl = shl nuw nsw i32 %conv, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i20) #6
  %24 = ptrtoint ptr %b0.i20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 37, ptr %b0.i20, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i21) #6
  %25 = ptrtoint ptr %b1.i21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %b1.i21, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i22) #6
  %26 = getelementptr inbounds i8, ptr %msg.i22, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %conv.i24 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i22 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i24, ptr %msg.i22, align 4
  %flags.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i25 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i25, align 2
  %34 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %26, align 4
  %buf.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 0, i32 3
  %35 = ptrtoint ptr %buf.i27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %b0.i20, ptr %buf.i27, align 4
  %arrayinit.element.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 1
  %36 = load i8, ptr %29, align 4
  %conv5.i29 = zext i8 %36 to i16
  %37 = ptrtoint ptr %arrayinit.element.i28 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv5.i29, ptr %arrayinit.element.i28, align 4
  %flags6.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 1, i32 1
  %38 = ptrtoint ptr %flags6.i30 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %flags6.i30, align 2
  %len7.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 1, i32 2
  %39 = ptrtoint ptr %len7.i31 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %len7.i31, align 4
  %buf8.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 1, i32 3
  %40 = ptrtoint ptr %buf8.i32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b1.i21, ptr %buf8.i32, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i33 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i22, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i33)
  %cmp.not.i34 = icmp eq i32 %call.i33, 2
  br i1 %cmp.not.i34, label %si21_readreg.exit.si21_readreg.exit39_crit_edge, label %do.body.i36

si21_readreg.exit.si21_readreg.exit39_crit_edge:  ; preds = %si21_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit39

do.body.i36:                                      ; preds = %si21_readreg.exit
  %43 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i35 = icmp eq i32 %43, 0
  br i1 %tobool.not.i35, label %do.body.i36.si21_readreg.exit39_crit_edge, label %do.end.i38

do.body.i36.si21_readreg.exit39_crit_edge:        ; preds = %do.body.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit39

do.end.i38:                                       ; preds = %do.body.i36
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 37, i32 noundef %call.i33) #9
  br label %si21_readreg.exit39

si21_readreg.exit39:                              ; preds = %do.end.i38, %do.body.i36.si21_readreg.exit39_crit_edge, %si21_readreg.exit.si21_readreg.exit39_crit_edge
  %44 = ptrtoint ptr %b1.i21 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %b1.i21, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i22) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i21) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i20) #6
  %conv2 = zext i8 %45 to i32
  %or = or i32 %shl, %conv2
  %sub3 = sub nsw i32 24319, %or
  %mul = mul nsw i32 %sub3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %mul)
  %cmp = icmp sgt i32 %mul, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 24319, i32 %or)
  %cmp5 = icmp ugt i32 %or, 24319
  %phi.cast = trunc i32 %mul to i16
  %spec.select = select i1 %cmp5, i16 0, i16 %phi.cast
  %cond10 = select i1 %cmp, i16 -1, i16 %spec.select
  %46 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %cond10, ptr %snr, align 2
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not = icmp eq i32 %47, 0
  br i1 %tobool.not, label %si21_readreg.exit39.do.end15_crit_edge, label %do.end

si21_readreg.exit39.do.end15_crit_edge:           ; preds = %si21_readreg.exit39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.end:                                           ; preds = %si21_readreg.exit39
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.30) #9
  br label %do.end15

do.end15:                                         ; preds = %do.end, %si21_readreg.exit39.do.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si21_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %b0.i12 = alloca [1 x i8], align 1
  %b1.i13 = alloca [1 x i8], align 1
  %msg.i14 = alloca [2 x %struct.i2c_msg], align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.31) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %errmode = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %errmode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %errmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.else, label %do.end3.if.end8_crit_edge

do.end3.if.end8_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.else:                                          ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %5 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 29, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %6 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %17 = load i8, ptr %10, align 4
  %conv5.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %20 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %b1.i, ptr %buf8.i, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.else.si21_readreg.exit_crit_edge, label %do.body.i

if.else.si21_readreg.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.body.i:                                        ; preds = %if.else
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %do.body.i.si21_readreg.exit_crit_edge, label %do.end.i

do.body.i.si21_readreg.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 29, i32 noundef %call.i) #9
  br label %si21_readreg.exit

si21_readreg.exit:                                ; preds = %do.end.i, %do.body.i.si21_readreg.exit_crit_edge, %if.else.si21_readreg.exit_crit_edge
  %25 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %conv = zext i8 %26 to i32
  %shl = shl nuw nsw i32 %conv, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i12) #6
  %27 = ptrtoint ptr %b0.i12 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 30, ptr %b0.i12, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i13) #6
  %28 = ptrtoint ptr %b1.i13 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %b1.i13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i14) #6
  %29 = getelementptr inbounds i8, ptr %msg.i14, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv.i16 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i14 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i16, ptr %msg.i14, align 4
  %flags.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i17, align 2
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %29, align 4
  %buf.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i19 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %b0.i12, ptr %buf.i19, align 4
  %arrayinit.element.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1
  %39 = load i8, ptr %32, align 4
  %conv5.i21 = zext i8 %39 to i16
  %40 = ptrtoint ptr %arrayinit.element.i20 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv5.i21, ptr %arrayinit.element.i20, align 4
  %flags6.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1, i32 1
  %41 = ptrtoint ptr %flags6.i22 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %flags6.i22, align 2
  %len7.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1, i32 2
  %42 = ptrtoint ptr %len7.i23 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %len7.i23, align 4
  %buf8.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 1, i32 3
  %43 = ptrtoint ptr %buf8.i24 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %b1.i13, ptr %buf8.i24, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %call.i25 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msg.i14, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i25)
  %cmp.not.i26 = icmp eq i32 %call.i25, 2
  br i1 %cmp.not.i26, label %si21_readreg.exit.si21_readreg.exit31_crit_edge, label %do.body.i28

si21_readreg.exit.si21_readreg.exit31_crit_edge:  ; preds = %si21_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit31

do.body.i28:                                      ; preds = %si21_readreg.exit
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i27 = icmp eq i32 %46, 0
  br i1 %tobool.not.i27, label %do.body.i28.si21_readreg.exit31_crit_edge, label %do.end.i30

do.body.i28.si21_readreg.exit31_crit_edge:        ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit31

do.end.i30:                                       ; preds = %do.body.i28
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 30, i32 noundef %call.i25) #9
  br label %si21_readreg.exit31

si21_readreg.exit31:                              ; preds = %do.end.i30, %do.body.i28.si21_readreg.exit31_crit_edge, %si21_readreg.exit.si21_readreg.exit31_crit_edge
  %47 = ptrtoint ptr %b1.i13 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %b1.i13, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i14) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i13) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i12) #6
  %conv7 = zext i8 %48 to i32
  %or = or i32 %shl, %conv7
  br label %if.end8

if.end8:                                          ; preds = %si21_readreg.exit31, %do.end3.if.end8_crit_edge
  %storemerge = phi i32 [ %or, %si21_readreg.exit31 ], [ 0, %do.end3.if.end8_crit_edge ]
  %49 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %storemerge, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si21xx_send_diseqc_msg(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %m) #0 align 64 {
entry:
  %buf.i62 = alloca [60 x i8], align 1
  %msg.i63 = alloca %struct.i2c_msg, align 4
  %buf.i52 = alloca [60 x i8], align 1
  %msg.i53 = alloca %struct.i2c_msg, align 4
  %reg1.addr.i31 = alloca i8, align 1
  %msg.i32 = alloca [2 x %struct.i2c_msg], align 4
  %reg1.addr.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %lnb_status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lnb_status) #6
  %2 = ptrtoint ptr %lnb_status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %lnb_status, align 1, !annotation !140
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i)
  %4 = ptrtoint ptr %reg1.addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -60, ptr %reg1.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reg1.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = load i8, ptr %8, align 4
  %conv5.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %18 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len7.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %lnb_status, ptr %buf9.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %do.end3.si21_readregs.exit_crit_edge, label %do.body.i

do.end3.si21_readregs.exit_crit_edge:             ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readregs.exit

do.body.i:                                        ; preds = %do.end3
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i.si21_readregs.exit_crit_edge, label %do.end.i

do.body.i.si21_readregs.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readregs.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i) #9
  br label %si21_readregs.exit

si21_readregs.exit:                               ; preds = %do.end.i, %do.body.i.si21_readregs.exit_crit_edge, %do.end3.si21_readregs.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg1.addr.i31)
  %23 = ptrtoint ptr %reg1.addr.i31 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -64, ptr %reg1.addr.i31, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i32) #6
  %24 = getelementptr inbounds i8, ptr %msg.i32, i32 4
  %25 = call ptr @memset(ptr %24, i32 255, i32 16)
  %26 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  %conv.i34 = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i32 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i34, ptr %msg.i32, align 4
  %flags.i35 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i35 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i35, align 2
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %24, align 4
  %buf.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 0, i32 3
  %33 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %reg1.addr.i31, ptr %buf.i37, align 4
  %arrayinit.element.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 1
  %34 = load i8, ptr %27, align 4
  %conv5.i39 = zext i8 %34 to i16
  %35 = ptrtoint ptr %arrayinit.element.i38 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv5.i39, ptr %arrayinit.element.i38, align 4
  %flags6.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 1, i32 1
  %36 = ptrtoint ptr %flags6.i40 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %flags6.i40, align 2
  %len7.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 1, i32 2
  %37 = ptrtoint ptr %len7.i41 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %len7.i41, align 4
  %buf9.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 1, i32 3
  %38 = ptrtoint ptr %buf9.i42 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %lnb_status, ptr %buf9.i42, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call.i43 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i32, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i43)
  %cmp.not.i44 = icmp eq i32 %call.i43, 2
  br i1 %cmp.not.i44, label %si21_readregs.exit.si21_readregs.exit51_crit_edge, label %do.body.i46

si21_readregs.exit.si21_readregs.exit51_crit_edge: ; preds = %si21_readregs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readregs.exit51

do.body.i46:                                      ; preds = %si21_readregs.exit
  %41 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i45 = icmp eq i32 %41, 0
  br i1 %tobool.not.i45, label %do.body.i46.si21_readregs.exit51_crit_edge, label %do.end.i48

do.body.i46.si21_readregs.exit51_crit_edge:       ; preds = %do.body.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readregs.exit51

do.end.i48:                                       ; preds = %do.body.i46
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %call.i43) #9
  br label %si21_readregs.exit51

si21_readregs.exit51:                             ; preds = %do.end.i48, %do.body.i46.si21_readregs.exit51_crit_edge, %si21_readregs.exit.si21_readregs.exit51_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i32) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg1.addr.i31)
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %m, i32 0, i32 1
  %42 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %msg_len, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf.i52) #6
  %44 = getelementptr inbounds i8, ptr %buf.i52, i32 1
  %45 = call ptr @memset(ptr %44, i32 255, i32 59)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i53) #6
  %46 = getelementptr inbounds i8, ptr %msg.i53, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %46, align 4
  %48 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv.i55 = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i53 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i55, ptr %msg.i53, align 4
  %flags.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i56 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i56, align 2
  %54 = zext i8 %43 to i16
  %conv2.i = add nuw nsw i16 %54, 1
  store i16 %conv2.i, ptr %46, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 3
  %55 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %buf.i52, ptr %buf3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %43)
  %cmp.i = icmp ugt i8 %43, 59
  br i1 %cmp.i, label %si21_readregs.exit51.si21_writeregs.exit_crit_edge, label %if.end.i

si21_readregs.exit51.si21_writeregs.exit_crit_edge: ; preds = %si21_readregs.exit51
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit

if.end.i:                                         ; preds = %si21_readregs.exit51
  %conv = zext i8 %43 to i32
  %56 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -59, ptr %buf.i52, align 1
  %57 = call ptr @memcpy(ptr %44, ptr %m, i32 %conv)
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call.i58 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i53, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i58)
  %cmp7.not.i = icmp eq i32 %call.i58, 1
  br i1 %cmp7.not.i, label %if.end.i.si21_writeregs.exit_crit_edge, label %do.body.i60

if.end.i.si21_writeregs.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit

do.body.i60:                                      ; preds = %if.end.i
  %60 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i59 = icmp eq i32 %60, 0
  br i1 %tobool.not.i59, label %do.body.i60.si21_writeregs.exit_crit_edge, label %do.end.i61

do.body.i60.si21_writeregs.exit_crit_edge:        ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit

do.end.i61:                                       ; preds = %do.body.i60
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %m to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %m, align 1
  %conv14.i = zext i8 %62 to i32
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 197, i32 noundef %conv14.i, i32 noundef %call.i58) #9
  br label %si21_writeregs.exit

si21_writeregs.exit:                              ; preds = %do.end.i61, %do.body.i60.si21_writeregs.exit_crit_edge, %if.end.i.si21_writeregs.exit_crit_edge, %si21_readregs.exit51.si21_writeregs.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %si21_readregs.exit51.si21_writeregs.exit_crit_edge ], [ -121, %do.body.i60.si21_writeregs.exit_crit_edge ], [ -121, %do.end.i61 ], [ 0, %if.end.i.si21_writeregs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i53) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i52) #6
  %63 = ptrtoint ptr %lnb_status to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %lnb_status, align 1
  %65 = and i8 %64, 112
  %66 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %msg_len, align 1
  %or1430 = or i8 %67, %65
  %68 = or i8 %or1430, -128
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buf.i62) #6
  %69 = getelementptr inbounds i8, ptr %buf.i62, i32 1
  %70 = getelementptr inbounds i8, ptr %buf.i62, i32 2
  %71 = call ptr @memset(ptr %70, i32 255, i32 58)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i63) #6
  %72 = getelementptr inbounds i8, ptr %msg.i63, i32 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 196607, ptr %72, align 4
  %74 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %config.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 4
  %conv.i65 = zext i8 %77 to i16
  %78 = ptrtoint ptr %msg.i63 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i65, ptr %msg.i63, align 4
  %flags.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i66 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i66, align 2
  %buf3.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63, i32 0, i32 3
  %80 = ptrtoint ptr %buf3.i68 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %buf.i62, ptr %buf3.i68, align 4
  %81 = ptrtoint ptr %buf.i62 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -64, ptr %buf.i62, align 1
  %82 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %68, ptr %69, align 1
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %call.i70 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %msg.i63, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i70)
  %cmp7.not.i71 = icmp eq i32 %call.i70, 1
  br i1 %cmp7.not.i71, label %si21_writeregs.exit.si21_writeregs.exit79_crit_edge, label %do.body.i74

si21_writeregs.exit.si21_writeregs.exit79_crit_edge: ; preds = %si21_writeregs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit79

do.body.i74:                                      ; preds = %si21_writeregs.exit
  %85 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i73 = icmp eq i32 %85, 0
  br i1 %tobool.not.i73, label %do.body.i74.si21_writeregs.exit79_crit_edge, label %do.end.i77

do.body.i74.si21_writeregs.exit79_crit_edge:      ; preds = %do.body.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writeregs.exit79

do.end.i77:                                       ; preds = %do.body.i74
  call void @__sanitizer_cov_trace_pc() #8
  %conv14.i75 = zext i8 %68 to i32
  %call15.i76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 192, i32 noundef %conv14.i75, i32 noundef %call.i70) #9
  br label %si21_writeregs.exit79

si21_writeregs.exit79:                            ; preds = %do.end.i77, %do.body.i74.si21_writeregs.exit79_crit_edge, %si21_writeregs.exit.si21_writeregs.exit79_crit_edge
  %retval.0.i78 = phi i32 [ -121, %do.body.i74.si21_writeregs.exit79_crit_edge ], [ -121, %do.end.i77 ], [ 0, %si21_writeregs.exit.si21_writeregs.exit79_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp17.i = icmp ne i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i43)
  %cmp17.i49 = icmp ne i32 %call.i43, 2
  %or680 = or i1 %cmp17.i, %cmp17.i49
  %or8 = select i1 %or680, i32 -1, i32 %retval.0.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i63) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buf.i62) #6
  %or20 = or i32 %retval.0.i78, %or8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lnb_status) #6
  ret i32 %or20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si21xx_send_diseqc_burst(ptr nocapture noundef readonly %fe, i32 noundef %burst) #0 align 64 {
entry:
  %buf.i46 = alloca [2 x i8], align 1
  %msg.i47 = alloca %struct.i2c_msg, align 4
  %buf.i35 = alloca [2 x i8], align 1
  %msg.i36 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.33) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @si21xx_wait_diseqc_idle(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -63, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = load i8, ptr %8, align 4
  %conv5.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %18 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %b1.i, ptr %buf8.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end6.si21_readreg.exit_crit_edge, label %do.body.i

if.end6.si21_readreg.exit_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.body.i:                                        ; preds = %if.end6
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i.si21_readreg.exit_crit_edge, label %do.end.i

do.body.i.si21_readreg.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 193, i32 noundef %call.i) #9
  br label %si21_readreg.exit

si21_readreg.exit:                                ; preds = %do.end.i, %do.body.i.si21_readreg.exit_crit_edge, %if.end6.si21_readreg.exit_crit_edge
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %25 = or i8 %24, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %burst)
  %cmp9 = icmp eq i32 %burst, 0
  %and = and i8 %25, -17
  %26 = or i8 %24, -112
  %cond = select i1 %cmp9, i8 %and, i8 %26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i35) #6
  %27 = getelementptr inbounds [2 x i8], ptr %buf.i35, i32 0, i32 1
  %28 = ptrtoint ptr %buf.i35 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -64, ptr %buf.i35, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %cond, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i36) #6
  %30 = getelementptr inbounds i8, ptr %msg.i36, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 196607, ptr %30, align 4
  %32 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %conv.i38 = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i36 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i38, ptr %msg.i36, align 4
  %flags.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i39 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i39, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 0, i32 3
  %38 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf.i35, ptr %buf1.i, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call.i41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i36, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i41)
  %cmp.not.i42 = icmp eq i32 %call.i41, 1
  br i1 %cmp.not.i42, label %if.end18, label %do.body.i44

do.body.i44:                                      ; preds = %si21_readreg.exit
  %41 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i43 = icmp eq i32 %41, 0
  br i1 %tobool.not.i43, label %do.body.i44.si21_writereg.exit.thread_crit_edge, label %do.end.i45

do.body.i44.si21_writereg.exit.thread_crit_edge:  ; preds = %do.body.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writereg.exit.thread

do.end.i45:                                       ; preds = %do.body.i44
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = zext i8 %cond to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 192, i32 noundef %conv6.i, i32 noundef %call.i41) #9
  br label %si21_writereg.exit.thread

si21_writereg.exit.thread:                        ; preds = %do.end.i45, %do.body.i44.si21_writereg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i36) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i35) #6
  br label %cleanup

if.end18:                                         ; preds = %si21_readreg.exit
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i36) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i35) #6
  %call19 = call fastcc i32 @si21xx_wait_diseqc_idle(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i46) #6
  %42 = getelementptr inbounds [2 x i8], ptr %buf.i46, i32 0, i32 1
  %43 = ptrtoint ptr %buf.i46 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -64, ptr %buf.i46, align 1
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %25, ptr %42, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i47) #6
  %45 = getelementptr inbounds i8, ptr %msg.i47, i32 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 196607, ptr %45, align 4
  %47 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  %conv.i49 = zext i8 %50 to i16
  %51 = ptrtoint ptr %msg.i47 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i49, ptr %msg.i47, align 4
  %flags.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i50 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %flags.i50, align 2
  %buf1.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i47, i32 0, i32 3
  %53 = ptrtoint ptr %buf1.i52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %buf.i46, ptr %buf1.i52, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %call.i53 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msg.i47, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i53)
  %cmp.not.i54 = icmp eq i32 %call.i53, 1
  br i1 %cmp.not.i54, label %57, label %do.body.i56

do.body.i56:                                      ; preds = %if.end23
  %56 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i55 = icmp eq i32 %56, 0
  br i1 %tobool.not.i55, label %do.body.i56.si21_writereg.exit61.thread_crit_edge, label %do.end.i59

do.body.i56.si21_writereg.exit61.thread_crit_edge: ; preds = %do.body.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writereg.exit61.thread

do.end.i59:                                       ; preds = %do.body.i56
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i57 = zext i8 %25 to i32
  %call7.i58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 192, i32 noundef %conv6.i57, i32 noundef %call.i53) #9
  br label %si21_writereg.exit61.thread

si21_writereg.exit61.thread:                      ; preds = %do.end.i59, %do.body.i56.si21_writereg.exit61.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i47) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i46) #6
  br label %cleanup

57:                                               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i47) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i46) #6
  br label %cleanup

cleanup:                                          ; preds = %57, %si21_writereg.exit61.thread, %if.end18.cleanup_crit_edge, %si21_writereg.exit.thread, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end3.cleanup_crit_edge ], [ -110, %if.end18.cleanup_crit_edge ], [ -121, %si21_writereg.exit.thread ], [ 0, %57 ], [ -121, %si21_writereg.exit61.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si21xx_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  %buf.i29 = alloca [2 x i8], align 1
  %msg.i30 = alloca %struct.i2c_msg, align 4
  %buf.i18 = alloca [2 x i8], align 1
  %msg.i19 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.38) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -64, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = load i8, ptr %8, align 4
  %conv5.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %18 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %b1.i, ptr %buf8.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %do.end3.si21_readreg.exit_crit_edge, label %do.body.i

do.end3.si21_readreg.exit_crit_edge:              ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.body.i:                                        ; preds = %do.end3
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i.si21_readreg.exit_crit_edge, label %do.end.i

do.body.i.si21_readreg.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 192, i32 noundef %call.i) #9
  br label %si21_readreg.exit

si21_readreg.exit:                                ; preds = %do.end.i, %do.body.i.si21_readreg.exit_crit_edge, %do.end3.si21_readreg.exit_crit_edge
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %25 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %tone, label %si21_readreg.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
  ]

si21_readreg.exit.cleanup_crit_edge:              ; preds = %si21_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %si21_readreg.exit
  %26 = or i8 %24, -96
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i18) #6
  %27 = getelementptr inbounds [2 x i8], ptr %buf.i18, i32 0, i32 1
  %28 = ptrtoint ptr %buf.i18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -64, ptr %buf.i18, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %26, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i19) #6
  %30 = getelementptr inbounds i8, ptr %msg.i19, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 196607, ptr %30, align 4
  %32 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %conv.i21 = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i19 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i21, ptr %msg.i19, align 4
  %flags.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i22 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i22, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 3
  %38 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf.i18, ptr %buf1.i, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call.i24 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i19, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i24)
  %cmp.not.i25 = icmp eq i32 %call.i24, 1
  br i1 %cmp.not.i25, label %sw.bb.si21_writereg.exit_crit_edge, label %do.body.i27

sw.bb.si21_writereg.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writereg.exit

do.body.i27:                                      ; preds = %sw.bb
  %41 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i26 = icmp eq i32 %41, 0
  br i1 %tobool.not.i26, label %do.body.i27.si21_writereg.exit_crit_edge, label %do.end.i28

do.body.i27.si21_writereg.exit_crit_edge:         ; preds = %do.body.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writereg.exit

do.end.i28:                                       ; preds = %do.body.i27
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = zext i8 %26 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 192, i32 noundef %conv6.i, i32 noundef %call.i24) #9
  br label %si21_writereg.exit

si21_writereg.exit:                               ; preds = %do.end.i28, %do.body.i27.si21_writereg.exit_crit_edge, %sw.bb.si21_writereg.exit_crit_edge
  %cond.i = phi i32 [ -121, %do.body.i27.si21_writereg.exit_crit_edge ], [ -121, %do.end.i28 ], [ 0, %sw.bb.si21_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i18) #6
  br label %cleanup

sw.bb10:                                          ; preds = %si21_readreg.exit
  %42 = and i8 %24, 95
  %43 = or i8 %42, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i29) #6
  %44 = getelementptr inbounds [2 x i8], ptr %buf.i29, i32 0, i32 1
  %45 = ptrtoint ptr %buf.i29 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -64, ptr %buf.i29, align 1
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %43, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i30) #6
  %47 = getelementptr inbounds i8, ptr %msg.i30, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 196607, ptr %47, align 4
  %49 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %config.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 4
  %conv.i32 = zext i8 %52 to i16
  %53 = ptrtoint ptr %msg.i30 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i32, ptr %msg.i30, align 4
  %flags.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30, i32 0, i32 1
  %54 = ptrtoint ptr %flags.i33 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %flags.i33, align 2
  %buf1.i35 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30, i32 0, i32 3
  %55 = ptrtoint ptr %buf1.i35 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %buf.i29, ptr %buf1.i35, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %call.i36 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i30, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i36)
  %cmp.not.i37 = icmp eq i32 %call.i36, 1
  br i1 %cmp.not.i37, label %sw.bb10.si21_writereg.exit44_crit_edge, label %do.body.i39

sw.bb10.si21_writereg.exit44_crit_edge:           ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writereg.exit44

do.body.i39:                                      ; preds = %sw.bb10
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i38 = icmp eq i32 %58, 0
  br i1 %tobool.not.i38, label %do.body.i39.si21_writereg.exit44_crit_edge, label %do.end.i42

do.body.i39.si21_writereg.exit44_crit_edge:       ; preds = %do.body.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writereg.exit44

do.end.i42:                                       ; preds = %do.body.i39
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i40 = zext i8 %43 to i32
  %call7.i41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 192, i32 noundef %conv6.i40, i32 noundef %call.i36) #9
  br label %si21_writereg.exit44

si21_writereg.exit44:                             ; preds = %do.end.i42, %do.body.i39.si21_writereg.exit44_crit_edge, %sw.bb10.si21_writereg.exit44_crit_edge
  %cond.i43 = phi i32 [ -121, %do.body.i39.si21_writereg.exit44_crit_edge ], [ -121, %do.end.i42 ], [ 0, %sw.bb10.si21_writereg.exit44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i30) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i29) #6
  br label %cleanup

cleanup:                                          ; preds = %si21_writereg.exit44, %si21_writereg.exit, %si21_readreg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i43, %si21_writereg.exit44 ], [ %cond.i, %si21_writereg.exit ], [ -22, %si21_readreg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si21xx_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %volt) #0 align 64 {
entry:
  %buf.i33 = alloca [2 x i8], align 1
  %msg.i34 = alloca %struct.i2c_msg, align 4
  %buf.i22 = alloca [2 x i8], align 1
  %msg.i23 = alloca %struct.i2c_msg, align 4
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %volt)
  %cmp = icmp eq i32 %volt, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %volt)
  %cmp2 = icmp eq i32 %volt, 1
  %cond = select i1 %cmp2, ptr @.str.42, ptr @.str.43
  %cond3 = select i1 %cmp, ptr @.str.41, ptr %cond
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull %cond3) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -64, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.si21xx_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %5, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %b0.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = load i8, ptr %8, align 4
  %conv5.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %18 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len7.i, align 4
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %b1.i, ptr %buf8.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %do.end5.si21_readreg.exit_crit_edge, label %do.body.i

do.end5.si21_readreg.exit_crit_edge:              ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.body.i:                                        ; preds = %do.end5
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i.si21_readreg.exit_crit_edge, label %do.end.i

do.body.i.si21_readreg.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 192, i32 noundef %call.i) #9
  br label %si21_readreg.exit

si21_readreg.exit:                                ; preds = %do.end.i, %do.body.i.si21_readreg.exit_crit_edge, %do.end5.si21_readreg.exit_crit_edge
  %23 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %25 = zext i32 %volt to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %volt, label %si21_readreg.exit.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb12
  ]

si21_readreg.exit.cleanup_crit_edge:              ; preds = %si21_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %si21_readreg.exit
  %26 = or i8 %24, -64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i22) #6
  %27 = getelementptr inbounds [2 x i8], ptr %buf.i22, i32 0, i32 1
  %28 = ptrtoint ptr %buf.i22 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -64, ptr %buf.i22, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %26, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i23) #6
  %30 = getelementptr inbounds i8, ptr %msg.i23, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 196607, ptr %30, align 4
  %32 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %conv.i25 = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i23 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i25, ptr %msg.i23, align 4
  %flags.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i26 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i26, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i23, i32 0, i32 3
  %38 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf.i22, ptr %buf1.i, align 4
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call.i28 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i23, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i28)
  %cmp.not.i29 = icmp eq i32 %call.i28, 1
  br i1 %cmp.not.i29, label %sw.bb.si21_writereg.exit_crit_edge, label %do.body.i31

sw.bb.si21_writereg.exit_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writereg.exit

do.body.i31:                                      ; preds = %sw.bb
  %41 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i30 = icmp eq i32 %41, 0
  br i1 %tobool.not.i30, label %do.body.i31.si21_writereg.exit_crit_edge, label %do.end.i32

do.body.i31.si21_writereg.exit_crit_edge:         ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writereg.exit

do.end.i32:                                       ; preds = %do.body.i31
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = zext i8 %26 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 192, i32 noundef %conv6.i, i32 noundef %call.i28) #9
  br label %si21_writereg.exit

si21_writereg.exit:                               ; preds = %do.end.i32, %do.body.i31.si21_writereg.exit_crit_edge, %sw.bb.si21_writereg.exit_crit_edge
  %cond.i = phi i32 [ -121, %do.body.i31.si21_writereg.exit_crit_edge ], [ -121, %do.end.i32 ], [ 0, %sw.bb.si21_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i23) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i22) #6
  br label %cleanup

sw.bb12:                                          ; preds = %si21_readreg.exit
  %42 = and i8 %24, 63
  %43 = or i8 %42, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i33) #6
  %44 = getelementptr inbounds [2 x i8], ptr %buf.i33, i32 0, i32 1
  %45 = ptrtoint ptr %buf.i33 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -64, ptr %buf.i33, align 1
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %43, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i34) #6
  %47 = getelementptr inbounds i8, ptr %msg.i34, i32 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 196607, ptr %47, align 4
  %49 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %config.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 4
  %conv.i36 = zext i8 %52 to i16
  %53 = ptrtoint ptr %msg.i34 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv.i36, ptr %msg.i34, align 4
  %flags.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 1
  %54 = ptrtoint ptr %flags.i37 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %flags.i37, align 2
  %buf1.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 3
  %55 = ptrtoint ptr %buf1.i39 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %buf.i33, ptr %buf1.i39, align 4
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %call.i40 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %msg.i34, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i40)
  %cmp.not.i41 = icmp eq i32 %call.i40, 1
  br i1 %cmp.not.i41, label %sw.bb12.si21_writereg.exit48_crit_edge, label %do.body.i43

sw.bb12.si21_writereg.exit48_crit_edge:           ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writereg.exit48

do.body.i43:                                      ; preds = %sw.bb12
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i42 = icmp eq i32 %58, 0
  br i1 %tobool.not.i42, label %do.body.i43.si21_writereg.exit48_crit_edge, label %do.end.i46

do.body.i43.si21_writereg.exit48_crit_edge:       ; preds = %do.body.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_writereg.exit48

do.end.i46:                                       ; preds = %do.body.i43
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i44 = zext i8 %43 to i32
  %call7.i45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 192, i32 noundef %conv6.i44, i32 noundef %call.i40) #9
  br label %si21_writereg.exit48

si21_writereg.exit48:                             ; preds = %do.end.i46, %do.body.i43.si21_writereg.exit48_crit_edge, %sw.bb12.si21_writereg.exit48_crit_edge
  %cond.i47 = phi i32 [ -121, %do.body.i43.si21_writereg.exit48_crit_edge ], [ -121, %do.end.i46 ], [ 0, %sw.bb12.si21_writereg.exit48_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i34) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i33) #6
  br label %cleanup

cleanup:                                          ; preds = %si21_writereg.exit48, %si21_writereg.exit, %si21_readreg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i47, %si21_writereg.exit48 ], [ %cond.i, %si21_writereg.exit ], [ -22, %si21_readreg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @si21xx_wait_diseqc_idle(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %b0.i = alloca [1 x i8], align 1
  %b1.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.34) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %config.i = getelementptr inbounds %struct.si21xx_state, ptr %state, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %buf8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %do.end3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0.i) #6
  %3 = ptrtoint ptr %b0.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -64, ptr %b0.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1.i) #6
  %4 = ptrtoint ptr %b1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b1.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %5 = call ptr @memset(ptr %2, i32 255, i32 16)
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %2, align 4
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %b0.i, ptr %buf.i, align 4
  %14 = load i8, ptr %7, align 4
  %conv5.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv5.i, ptr %arrayinit.element.i, align 4
  %16 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags6.i, align 2
  %17 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len7.i, align 4
  %18 = ptrtoint ptr %buf8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b1.i, ptr %buf8.i, align 4
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %while.cond.si21_readreg.exit_crit_edge, label %do.body.i

while.cond.si21_readreg.exit_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.body.i:                                        ; preds = %while.cond
  %21 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %do.body.i.si21_readreg.exit_crit_edge, label %do.end.i

do.body.i.si21_readreg.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %si21_readreg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 192, i32 noundef %call.i) #9
  br label %si21_readreg.exit

si21_readreg.exit:                                ; preds = %do.end.i, %do.body.i.si21_readreg.exit_crit_edge, %while.cond.si21_readreg.exit_crit_edge
  %22 = ptrtoint ptr %b1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %b1.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0.i) #6
  %24 = and i8 %23, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp.not = icmp eq i8 %24, 0
  br i1 %cmp.not, label %si21_readreg.exit.cleanup_crit_edge, label %while.body

si21_readreg.exit.cleanup_crit_edge:              ; preds = %si21_readreg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %si21_readreg.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %25, %0
  %cmp6 = icmp ugt i32 %sub, 100
  br i1 %cmp6, label %do.body9, label %if.end20

do.body9:                                         ; preds = %while.body
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool10.not = icmp eq i32 %26, 0
  br i1 %tobool10.not, label %do.body9.cleanup_crit_edge, label %do.end14

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34) #9
  br label %cleanup

if.end20:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 10) #6
  br label %while.cond

cleanup:                                          ; preds = %do.end14, %do.body9.cleanup_crit_edge, %si21_readreg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end14 ], [ -110, %do.body9.cleanup_crit_edge ], [ 0, %si21_readreg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i7 @llvm.bitreverse.i7(i7) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !128, !129, !130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 902, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @si21xx_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @si21xx_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_si21xx_attach, !7, !"__ksymtab_si21xx_attach", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 940, i32 1}
!8 = !{ptr @__param_debug, !9, !"__param_debug", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 942, i32 1}
!10 = !{ptr @__UNIQUE_ID_debugtype290, !9, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_debug291, !12, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 943, i32 1}
!13 = !{ptr @__UNIQUE_ID_description292, !14, !"__UNIQUE_ID_description292", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 945, i32 1}
!15 = !{ptr @__UNIQUE_ID_author293, !16, !"__UNIQUE_ID_author293", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 946, i32 1}
!17 = !{ptr @__UNIQUE_ID_file294, !18, !"__UNIQUE_ID_file294", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 947, i32 1}
!19 = !{ptr @__UNIQUE_ID_license295, !18, !"__UNIQUE_ID_license295", i1 false, i1 false}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 102, i32 12}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 301, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @si21_readreg._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @si21_readreg._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 263, i32 3}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @si21_writereg._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @si21_writereg._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @si21xx_ops, !33, !"si21xx_ops", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 863, i32 38}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 858, i32 2}
!36 = !{ptr @si21xx_release._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @si21xx_release._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 483, i32 2}
!40 = !{ptr @si21xx_init._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @si21xx_init._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 526, i32 3}
!44 = !{ptr @si21xx_init._entry.9, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @si21xx_init._entry_ptr.11, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @serit_sp1511lhb_inittab, !47, !"serit_sp1511lhb_inittab", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 144, i32 11}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 243, i32 3}
!50 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @si21_writeregs._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @si21_writeregs._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 844, i32 2}
!55 = !{ptr @si21xx_sleep._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @si21xx_sleep._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 327, i32 3}
!59 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @si21_readregs._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @si21_readregs._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 730, i32 2}
!64 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @si21xx_set_frontend._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @si21xx_set_frontend._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 733, i32 4}
!69 = !{ptr @si21xx_set_frontend._entry.19, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @si21xx_set_frontend._entry_ptr.21, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 651, i32 2}
!73 = !{ptr @si21xx_setacquire._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @si21xx_setacquire._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 356, i32 2}
!77 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @si21xx_set_symbolrate._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @si21xx_set_symbolrate._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 549, i32 2}
!82 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @si21_read_status._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @si21_read_status._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 594, i32 2}
!87 = !{ptr @si21_read_ber._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @si21_read_ber._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 580, i32 2}
!91 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @si21_read_signal_strength._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @si21_read_signal_strength._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 614, i32 2}
!96 = !{ptr @si21_read_snr._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @si21_read_snr._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 623, i32 2}
!100 = !{ptr @si21_read_ucblocks._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @si21_read_ucblocks._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 386, i32 2}
!104 = !{ptr @si21xx_send_diseqc_msg._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @si21xx_send_diseqc_msg._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 413, i32 2}
!108 = !{ptr @si21xx_send_diseqc_burst._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @si21xx_send_diseqc_burst._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 336, i32 2}
!112 = !{ptr @si21xx_wait_diseqc_idle._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @si21xx_wait_diseqc_idle._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 340, i32 4}
!116 = !{ptr @si21xx_wait_diseqc_idle._entry.35, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @si21xx_wait_diseqc_idle._entry_ptr.37, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 437, i32 2}
!120 = !{ptr @si21xx_set_tone._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @si21xx_set_tone._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/dvb-frontends/si21xx.c", i32 457, i32 2}
!124 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @si21xx_set_voltage._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @si21xx_set_voltage._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @__param_str_debug, !9, !"__param_str_debug", i1 false, i1 false}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"auto-init"}
