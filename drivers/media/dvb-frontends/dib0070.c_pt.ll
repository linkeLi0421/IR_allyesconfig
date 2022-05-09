; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/dib0070.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/dib0070.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dib0070_ctrl_agc_filter\22, \22a\22\09"
module asm "\09.weak\09__crc_dib0070_ctrl_agc_filter\09\09\09\09"
module asm "\09.long\09__crc_dib0070_ctrl_agc_filter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib0070_ctrl_agc_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22dib0070_ctrl_agc_filter\22\09\09\09\09\09"
module asm "__kstrtabns_dib0070_ctrl_agc_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dib0070_get_rf_output\22, \22a\22\09"
module asm "\09.weak\09__crc_dib0070_get_rf_output\09\09\09\09"
module asm "\09.long\09__crc_dib0070_get_rf_output\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib0070_get_rf_output:\09\09\09\09\09"
module asm "\09.asciz \09\22dib0070_get_rf_output\22\09\09\09\09\09"
module asm "__kstrtabns_dib0070_get_rf_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dib0070_set_rf_output\22, \22a\22\09"
module asm "\09.weak\09__crc_dib0070_set_rf_output\09\09\09\09"
module asm "\09.long\09__crc_dib0070_set_rf_output\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib0070_set_rf_output:\09\09\09\09\09"
module asm "\09.asciz \09\22dib0070_set_rf_output\22\09\09\09\09\09"
module asm "__kstrtabns_dib0070_set_rf_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dib0070_wbd_offset\22, \22a\22\09"
module asm "\09.weak\09__crc_dib0070_wbd_offset\09\09\09\09"
module asm "\09.long\09__crc_dib0070_wbd_offset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib0070_wbd_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22dib0070_wbd_offset\22\09\09\09\09\09"
module asm "__kstrtabns_dib0070_wbd_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dib0070_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_dib0070_attach\09\09\09\09"
module asm "\09.long\09__crc_dib0070_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib0070_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dib0070_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dib0070_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.dib0070_tuning = type { i32, i8, i8, i8, i8, i8, i8, i16 }
%struct.dib0070_lna_match = type { i32, i8 }
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
%struct.dib0070_state = type { ptr, ptr, ptr, i16, i8, i32, i32, i8, i16, i8, i8, i16, ptr, ptr, i8, [2 x i16], [2 x %struct.i2c_msg], [3 x i8], [2 x i8], %struct.mutex }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dib0070_config = type { i8, ptr, ptr, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, ptr, i8 }
%struct.dib0070_wbd_gain_cfg = type { i16, i16 }

@__param_str_debug = internal constant [14 x i8] c"dib0070.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"dib0070.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [50 x i8] c"dib0070.parm=debug:turn on debugging (default: 0)\00", section ".modinfo", align 1
@dib0070_ctrl_agc_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017dib0070: %s: vga filter register is set to %x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dib0070_ctrl_agc_filter\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/dib0070.c\00", [58 x i8] zeroinitializer }, align 32
@dib0070_ctrl_agc_filter._entry_ptr = internal global ptr @dib0070_ctrl_agc_filter._entry, section ".printk_index", align 4
@__kstrtab_dib0070_ctrl_agc_filter = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib0070_ctrl_agc_filter = external dso_local constant [0 x i8], align 1
@__ksymtab_dib0070_ctrl_agc_filter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib0070_ctrl_agc_filter to i32), ptr @__kstrtab_dib0070_ctrl_agc_filter, ptr @__kstrtabns_dib0070_ctrl_agc_filter }, section "___ksymtab+dib0070_ctrl_agc_filter", align 4
@__kstrtab_dib0070_get_rf_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib0070_get_rf_output = external dso_local constant [0 x i8], align 1
@__ksymtab_dib0070_get_rf_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib0070_get_rf_output to i32), ptr @__kstrtab_dib0070_get_rf_output, ptr @__kstrtabns_dib0070_get_rf_output }, section "___ksymtab+dib0070_get_rf_output", align 4
@__kstrtab_dib0070_set_rf_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib0070_set_rf_output = external dso_local constant [0 x i8], align 1
@__ksymtab_dib0070_set_rf_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib0070_set_rf_output to i32), ptr @__kstrtab_dib0070_set_rf_output, ptr @__kstrtabns_dib0070_set_rf_output }, section "___ksymtab+dib0070_set_rf_output", align 4
@__kstrtab_dib0070_wbd_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib0070_wbd_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_dib0070_wbd_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib0070_wbd_offset to i32), ptr @__kstrtab_dib0070_wbd_offset, ptr @__kstrtabns_dib0070_wbd_offset }, section "___ksymtab+dib0070_wbd_offset", align 4
@dib0070_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&state->i2c_buffer_lock\00", [40 x i8] zeroinitializer }, align 32
@dib0070_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016dib0070: DiB0070: successfully identified\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dib0070_attach\00", [17 x i8] zeroinitializer }, align 32
@dib0070_attach._entry_ptr = internal global ptr @dib0070_attach._entry, section ".printk_index", align 4
@dib0070_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"DiBcom DiB0070\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 45000000, i32 860000000, i32 1000, i32 0, i32 0, i32 0 }, ptr @dib0070_release, ptr @dib0070_wakeup, ptr @dib0070_sleep, ptr null, ptr null, ptr @dib0070_tune, ptr null, ptr null, ptr @dib0070_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_dib0070_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib0070_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dib0070_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib0070_attach to i32), ptr @__kstrtab_dib0070_attach, ptr @__kstrtabns_dib0070_attach }, section "___ksymtab+dib0070_attach", align 4
@__UNIQUE_ID_author292 = internal constant [63 x i8] c"dib0070.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [66 x i8] c"dib0070.description=Driver for the DiBcom 0070 base-band RF Tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"dib0070.file=drivers/media/dvb-frontends/dib0070\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"dib0070.license=GPL\00", section ".modinfo", align 1
@dib0070_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dib0070: %s: could not acquire lock\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dib0070_write_reg\00", [46 x i8] zeroinitializer }, align 32
@dib0070_write_reg._entry_ptr = internal global ptr @dib0070_write_reg._entry, section ".printk_index", align 4
@dib0070_write_reg._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014dib0070: DiB0070 I2C write failed\0A\00", [59 x i8] zeroinitializer }, align 32
@dib0070_write_reg._entry_ptr.10 = internal global ptr @dib0070_write_reg._entry.8, section ".printk_index", align 4
@dib0070_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.11, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dib0070_read_reg\00", [47 x i8] zeroinitializer }, align 32
@dib0070_read_reg._entry_ptr = internal global ptr @dib0070_read_reg._entry, section ".printk_index", align 4
@dib0070_read_reg._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014dib0070: DiB0070 I2C read failed\0A\00", [60 x i8] zeroinitializer }, align 32
@dib0070_read_reg._entry_ptr.14 = internal global ptr @dib0070_read_reg._entry.12, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dib0070_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017dib0070: %s: Revision: %x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dib0070_reset\00", [18 x i8] zeroinitializer }, align 32
@dib0070_reset._entry_ptr = internal global ptr @dib0070_reset._entry, section ".printk_index", align 4
@dib0070_reset._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\017dib0070: %s: Error: this driver is not to be used meant for P1D or earlier\0A\00", [50 x i8] zeroinitializer }, align 32
@dib0070_reset._entry_ptr.19 = internal global ptr @dib0070_reset._entry.17, section ".printk_index", align 4
@dib0070_p1f_defaults = internal constant { [34 x i16], [60 x i8] } { [34 x i16] [i16 7, i16 2, i16 8, i16 0, i16 0, i16 0, i16 0, i16 2, i16 256, i16 3, i16 13, i16 3456, i16 1, i16 0, i16 4, i16 17, i16 0, i16 259, i16 0, i16 0, i16 3, i16 22, i16 68, i16 48, i16 2047, i16 6, i16 27, i16 16658, i16 -256, i16 -16257, i16 0, i16 384, i16 18555, i16 0], [60 x i8] zeroinitializer }, align 32
@dib0070_set_ctrl_lo5._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017dib0070: %s: CTRL_LO5: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dib0070_set_ctrl_lo5\00", [43 x i8] zeroinitializer }, align 32
@dib0070_set_ctrl_lo5._entry_ptr = internal global ptr @dib0070_set_ctrl_lo5._entry, section ".printk_index", align 4
@dib0070_wbd_offset_calibration._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017dib0070: %s: Gain: %d, WBDOffset (3.3V) = %hd\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dib0070_wbd_offset_calibration\00", [33 x i8] zeroinitializer }, align 32
@dib0070_wbd_offset_calibration._entry_ptr = internal global ptr @dib0070_wbd_offset_calibration._entry, section ".printk_index", align 4
@dib0070s_tuning_table = internal constant { [7 x %struct.dib0070_tuning], [44 x i8] } { [7 x %struct.dib0070_tuning] [%struct.dib0070_tuning { i32 570000, i8 2, i8 1, i8 3, i8 6, i8 6, i8 2, i16 18432 }, %struct.dib0070_tuning { i32 700000, i8 2, i8 0, i8 2, i8 4, i8 2, i8 2, i16 18432 }, %struct.dib0070_tuning { i32 863999, i8 2, i8 1, i8 2, i8 4, i8 2, i8 2, i16 18432 }, %struct.dib0070_tuning { i32 1500000, i8 0, i8 1, i8 1, i8 2, i8 2, i8 4, i16 9216 }, %struct.dib0070_tuning { i32 1600000, i8 0, i8 1, i8 1, i8 2, i8 2, i8 4, i16 9216 }, %struct.dib0070_tuning { i32 2000000, i8 0, i8 1, i8 1, i8 2, i8 2, i8 4, i16 9216 }, %struct.dib0070_tuning { i32 -1, i8 0, i8 0, i8 8, i8 1, i8 2, i8 1, i16 -28672 }], [44 x i8] zeroinitializer }, align 32
@dib0070_lna = internal constant { [13 x %struct.dib0070_lna_match], [56 x i8] } { [13 x %struct.dib0070_lna_match] [%struct.dib0070_lna_match { i32 180000, i8 0 }, %struct.dib0070_lna_match { i32 188000, i8 1 }, %struct.dib0070_lna_match { i32 196400, i8 2 }, %struct.dib0070_lna_match { i32 250000, i8 3 }, %struct.dib0070_lna_match { i32 550000, i8 2 }, %struct.dib0070_lna_match { i32 650000, i8 3 }, %struct.dib0070_lna_match { i32 750000, i8 5 }, %struct.dib0070_lna_match { i32 850000, i8 6 }, %struct.dib0070_lna_match { i32 864000, i8 7 }, %struct.dib0070_lna_match { i32 1500000, i8 0 }, %struct.dib0070_lna_match { i32 1600000, i8 1 }, %struct.dib0070_lna_match { i32 2000000, i8 3 }, %struct.dib0070_lna_match { i32 -1, i8 7 }], [56 x i8] zeroinitializer }, align 32
@dib0070_tuning_table = internal constant { [8 x %struct.dib0070_tuning], [32 x i8] } { [8 x %struct.dib0070_tuning] [%struct.dib0070_tuning { i32 115000, i8 1, i8 0, i8 7, i8 24, i8 2, i8 1, i16 -28672 }, %struct.dib0070_tuning { i32 179500, i8 1, i8 0, i8 3, i8 16, i8 2, i8 1, i16 -28672 }, %struct.dib0070_tuning { i32 189999, i8 1, i8 1, i8 3, i8 16, i8 2, i8 1, i16 -28672 }, %struct.dib0070_tuning { i32 250000, i8 1, i8 0, i8 6, i8 12, i8 2, i8 1, i16 -28672 }, %struct.dib0070_tuning { i32 569999, i8 2, i8 1, i8 5, i8 6, i8 2, i8 2, i16 18432 }, %struct.dib0070_tuning { i32 699999, i8 2, i8 0, i8 1, i8 4, i8 2, i8 2, i16 18432 }, %struct.dib0070_tuning { i32 863999, i8 2, i8 1, i8 1, i8 4, i8 2, i8 2, i16 18432 }, %struct.dib0070_tuning { i32 -1, i8 0, i8 1, i8 0, i8 2, i8 2, i8 4, i16 9216 }], [32 x i8] zeroinitializer }, align 32
@dib0070_lna_flip_chip = internal constant { [12 x %struct.dib0070_lna_match], [32 x i8] } { [12 x %struct.dib0070_lna_match] [%struct.dib0070_lna_match { i32 180000, i8 0 }, %struct.dib0070_lna_match { i32 188000, i8 1 }, %struct.dib0070_lna_match { i32 196400, i8 2 }, %struct.dib0070_lna_match { i32 250000, i8 3 }, %struct.dib0070_lna_match { i32 550000, i8 0 }, %struct.dib0070_lna_match { i32 590000, i8 1 }, %struct.dib0070_lna_match { i32 666000, i8 3 }, %struct.dib0070_lna_match { i32 864000, i8 5 }, %struct.dib0070_lna_match { i32 1500000, i8 0 }, %struct.dib0070_lna_match { i32 1600000, i8 1 }, %struct.dib0070_lna_match { i32 2000000, i8 3 }, %struct.dib0070_lna_match { i32 -1, i8 7 }], [32 x i8] zeroinitializer }, align 32
@dib0070_tune_digital._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017dib0070: %s: Tuning for Band: %d (%d kHz)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dib0070_tune_digital\00", [43 x i8] zeroinitializer }, align 32
@dib0070_tune_digital._entry_ptr = internal global ptr @dib0070_tune_digital._entry, section ".printk_index", align 4
@dib0070_tune_digital._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dib0070: %s: REFDIV: %u, FREF: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@dib0070_tune_digital._entry_ptr.28 = internal global ptr @dib0070_tune_digital._entry.26, section ".printk_index", align 4
@dib0070_tune_digital._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017dib0070: %s: FBDIV: %d, Rest: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dib0070_tune_digital._entry_ptr.31 = internal global ptr @dib0070_tune_digital._entry.29, section ".printk_index", align 4
@dib0070_tune_digital._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.2, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017dib0070: %s: Num: %u, Den: %u, SD: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@dib0070_tune_digital._entry_ptr.34 = internal global ptr @dib0070_tune_digital._entry.32, section ".printk_index", align 4
@dib0070_tune_digital._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017dib0070: %s: HFDIV code: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@dib0070_tune_digital._entry_ptr.37 = internal global ptr @dib0070_tune_digital._entry.35, section ".printk_index", align 4
@dib0070_tune_digital._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.25, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017dib0070: %s: VCO = %u\0A\00", [39 x i8] zeroinitializer }, align 32
@dib0070_tune_digital._entry_ptr.40 = internal global ptr @dib0070_tune_digital._entry.38, section ".printk_index", align 4
@dib0070_tune_digital._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.25, ptr @.str.2, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017dib0070: %s: VCOF: ((%u*%d) << 1))\0A\00", [58 x i8] zeroinitializer }, align 32
@dib0070_tune_digital._entry_ptr.43 = internal global ptr @dib0070_tune_digital._entry.41, section ".printk_index", align 4
@dib0070_captrim._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017dib0070: %s: CAPTRIM=%d; ADC = %hd (ADC) & %dmV\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dib0070_captrim\00", [16 x i8] zeroinitializer }, align 32
@dib0070_captrim._entry_ptr = internal global ptr @dib0070_captrim._entry, section ".printk_index", align 4
@dib0070_captrim._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017dib0070: %s: CAPTRIM=%d is closer to target (%hd/%hd)\0A\00", [39 x i8] zeroinitializer }, align 32
@dib0070_captrim._entry_ptr.48 = internal global ptr @dib0070_captrim._entry.46, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 16]
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 23, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 245, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 748, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 754, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"dib0070_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 722, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 106, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 120, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 74, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 91, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 659, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 662, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [21 x i8] c"dib0070_p1f_defaults\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 561, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 230, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 619, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [22 x i8] c"dib0070s_tuning_table\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 268, i32 36 }
@___asan_gen_.149 = private unnamed_addr constant [12 x i8] c"dib0070_lna\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 304, i32 39 }
@___asan_gen_.152 = private unnamed_addr constant [21 x i8] c"dib0070_tuning_table\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 278, i32 36 }
@___asan_gen_.155 = private unnamed_addr constant [22 x i8] c"dib0070_lna_flip_chip\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 289, i32 39 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 369, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 447, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 448, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 449, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 451, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 453, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 455, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 192, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [41 x i8] c"../drivers/media/dvb-frontends/dib0070.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 204, i32 4 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_dib0070_attach, ptr @__ksymtab_dib0070_ctrl_agc_filter, ptr @__ksymtab_dib0070_get_rf_output, ptr @__ksymtab_dib0070_set_rf_output, ptr @__ksymtab_dib0070_wbd_offset, ptr @__param_debug, ptr @dib0070_attach._entry, ptr @dib0070_attach._entry_ptr, ptr @dib0070_captrim._entry, ptr @dib0070_captrim._entry.46, ptr @dib0070_captrim._entry_ptr, ptr @dib0070_captrim._entry_ptr.48, ptr @dib0070_ctrl_agc_filter._entry, ptr @dib0070_ctrl_agc_filter._entry_ptr, ptr @dib0070_read_reg._entry, ptr @dib0070_read_reg._entry.12, ptr @dib0070_read_reg._entry_ptr, ptr @dib0070_read_reg._entry_ptr.14, ptr @dib0070_reset._entry, ptr @dib0070_reset._entry.17, ptr @dib0070_reset._entry_ptr, ptr @dib0070_reset._entry_ptr.19, ptr @dib0070_set_ctrl_lo5._entry, ptr @dib0070_set_ctrl_lo5._entry_ptr, ptr @dib0070_tune_digital._entry, ptr @dib0070_tune_digital._entry.26, ptr @dib0070_tune_digital._entry.29, ptr @dib0070_tune_digital._entry.32, ptr @dib0070_tune_digital._entry.35, ptr @dib0070_tune_digital._entry.38, ptr @dib0070_tune_digital._entry.41, ptr @dib0070_tune_digital._entry_ptr, ptr @dib0070_tune_digital._entry_ptr.28, ptr @dib0070_tune_digital._entry_ptr.31, ptr @dib0070_tune_digital._entry_ptr.34, ptr @dib0070_tune_digital._entry_ptr.37, ptr @dib0070_tune_digital._entry_ptr.40, ptr @dib0070_tune_digital._entry_ptr.43, ptr @dib0070_wbd_offset_calibration._entry, ptr @dib0070_wbd_offset_calibration._entry_ptr, ptr @dib0070_write_reg._entry, ptr @dib0070_write_reg._entry.8, ptr @dib0070_write_reg._entry_ptr, ptr @dib0070_write_reg._entry_ptr.10, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dib0070_attach.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dib0070_ops, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @dib0070_p1f_defaults, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @dib0070s_tuning_table, ptr @dib0070_lna, ptr @dib0070_tuning_table, ptr @dib0070_lna_flip_chip, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_ctrl_agc_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_write_reg._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_read_reg._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_reset._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_p1f_defaults to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_set_ctrl_lo5._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_wbd_offset_calibration._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070s_tuning_table to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_lna to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_tuning_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_lna_flip_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_tune_digital._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_tune_digital._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_tune_digital._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_tune_digital._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_tune_digital._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_tune_digital._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_tune_digital._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_captrim._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib0070_captrim._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dib0070_ctrl_agc_filter(ptr nocapture noundef readonly %fe, i8 noundef zeroext %open) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %open)
  %tobool.not = icmp eq i8 %open, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @dib0070_write_reg(ptr noundef %1, i8 noundef zeroext 27, i16 noundef zeroext -256)
  %call1 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %1, i8 noundef zeroext 26, i16 noundef zeroext 0)
  br label %if.end21

if.else:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %1, i8 noundef zeroext 27, i16 noundef zeroext 16658)
  %cfg = getelementptr inbounds %struct.dib0070_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %vga_filter = getelementptr inbounds %struct.dib0070_config, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %vga_filter to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vga_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %if.else18, label %if.then4

if.then4:                                         ; preds = %if.else
  %conv7 = zext i8 %5 to i16
  %call8 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %1, i8 noundef zeroext 26, i16 noundef zeroext %conv7)
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %if.then4.if.end21_crit_edge, label %do.end

if.then4.if.end21_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg, align 4
  %vga_filter13 = getelementptr inbounds %struct.dib0070_config, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %vga_filter13 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vga_filter13, align 4
  %conv14 = zext i8 %10 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv14) #10
  br label %if.end21

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %1, i8 noundef zeroext 26, i16 noundef zeroext 9)
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %do.end, %if.then4.if.end21_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dib0070_write_reg(ptr noundef %state, i8 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_buffer_lock = getelementptr inbounds %struct.dib0070_state, ptr %state, i32 0, i32 19
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %i2c_write_buffer = getelementptr inbounds %struct.dib0070_state, ptr %state, i32 0, i32 17
  %1 = ptrtoint ptr %i2c_write_buffer to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %i2c_write_buffer, align 4
  %2 = lshr i16 %val, 8
  %conv7 = trunc i16 %2 to i8
  %arrayidx9 = getelementptr %struct.dib0070_state, ptr %state, i32 0, i32 17, i32 1
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv7, ptr %arrayidx9, align 1
  %conv11 = trunc i16 %val to i8
  %arrayidx13 = getelementptr %struct.dib0070_state, ptr %state, i32 0, i32 17, i32 2
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv11, ptr %arrayidx13, align 2
  %msg = getelementptr inbounds %struct.dib0070_state, ptr %state, i32 0, i32 16
  %5 = call ptr @memset(ptr %msg, i32 0, i32 12)
  %cfg = getelementptr inbounds %struct.dib0070_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv14 = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv14, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.dib0070_state, ptr %state, i32 0, i32 16, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags, align 2
  %buf = getelementptr inbounds %struct.dib0070_state, ptr %state, i32 0, i32 16, i32 0, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %i2c_write_buffer, ptr %buf, align 4
  %len = getelementptr inbounds %struct.dib0070_state, ptr %state, i32 0, i32 16, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 3, ptr %len, align 4
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  %call27 = tail call i32 @i2c_transfer(ptr noundef %15, ptr noundef %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 1
  br i1 %cmp28.not, label %if.end6.if.end36_crit_edge, label %do.end33

if.end6.if.end36_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end33:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.end6.if.end36_crit_edge
  %ret.0 = phi i32 [ -121, %do.end33 ], [ 0, %if.end6.if.end36_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end36 ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @dib0070_get_rf_output(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %call = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %1, i8 noundef zeroext 7)
  %2 = lshr i16 %call, 11
  %3 = trunc i16 %2 to i8
  %conv1 = and i8 %3, 3
  ret i8 %conv1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @dib0070_read_reg(ptr noundef %state, i8 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_buffer_lock = getelementptr inbounds %struct.dib0070_state, ptr %state, i32 0, i32 19
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_buffer_lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end6:                                          ; preds = %entry
  %i2c_write_buffer = getelementptr inbounds %struct.dib0070_state, ptr %state, i32 0, i32 17
  %1 = ptrtoint ptr %i2c_write_buffer to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %i2c_write_buffer, align 4
  %msg = getelementptr inbounds %struct.dib0070_state, ptr %state, i32 0, i32 16
  %2 = call ptr @memset(ptr %msg, i32 0, i32 24)
  %cfg = getelementptr inbounds %struct.dib0070_state, ptr %state, i32 0, i32 2
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4
  %conv = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.dib0070_state, ptr %state, i32 0, i32 16, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %buf = getelementptr inbounds %struct.dib0070_state, ptr %state, i32 0, i32 16, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %i2c_write_buffer, ptr %buf, align 4
  %len = getelementptr inbounds %struct.dib0070_state, ptr %state, i32 0, i32 16, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len, align 4
  %11 = load i8, ptr %4, align 4
  %conv19 = zext i8 %11 to i16
  %arrayidx21 = getelementptr %struct.dib0070_state, ptr %state, i32 0, i32 16, i32 1
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv19, ptr %arrayidx21, align 4
  %flags25 = getelementptr %struct.dib0070_state, ptr %state, i32 0, i32 16, i32 1, i32 1
  %13 = ptrtoint ptr %flags25 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags25, align 2
  %i2c_read_buffer = getelementptr inbounds %struct.dib0070_state, ptr %state, i32 0, i32 18
  %buf29 = getelementptr %struct.dib0070_state, ptr %state, i32 0, i32 16, i32 1, i32 3
  %14 = ptrtoint ptr %buf29 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %i2c_read_buffer, ptr %buf29, align 4
  %len32 = getelementptr %struct.dib0070_state, ptr %state, i32 0, i32 16, i32 1, i32 2
  %15 = ptrtoint ptr %len32 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %len32, align 4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %call35 = tail call i32 @i2c_transfer(ptr noundef %17, ptr noundef %msg, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 2
  br i1 %cmp36.not, label %if.else, label %do.end41

do.end41:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %if.end51

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %i2c_read_buffer to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %i2c_read_buffer, align 1
  %conv46 = zext i8 %19 to i16
  %shl = shl nuw i16 %conv46, 8
  %arrayidx48 = getelementptr %struct.dib0070_state, ptr %state, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %21 to i16
  %or = or i16 %shl, %conv49
  br label %if.end51

if.end51:                                         ; preds = %if.else, %do.end41
  %ret.0 = phi i16 [ 0, %do.end41 ], [ %or, %if.else ]
  tail call void @mutex_unlock(ptr noundef %i2c_buffer_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i16 [ %ret.0, %if.end51 ], [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dib0070_set_rf_output(ptr nocapture noundef readonly %fe, i8 noundef zeroext %no) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %call = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %1, i8 noundef zeroext 7)
  %2 = and i16 %call, -6145
  %3 = tail call i8 @llvm.umin.i8(i8 %no, i8 3)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5 = icmp eq i8 %3, 0
  %spec.store.select13 = select i1 %cmp5, i8 1, i8 %3
  %conv10 = zext i8 %spec.store.select13 to i16
  %shl = shl nuw nsw i16 %conv10, 11
  %or = or i16 %2, %shl
  %call12 = tail call fastcc i32 @dib0070_write_reg(ptr noundef %1, i8 noundef zeroext 7, i16 noundef zeroext %or)
  ret i32 %call12
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @dib0070_wbd_offset(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %cfg = getelementptr inbounds %struct.dib0070_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %wbd_gain = getelementptr inbounds %struct.dib0070_config, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %wbd_gain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wbd_gain, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %while.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %6 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtv_property_cache, align 4
  %div1 = udiv i32 %7, 1000000
  %8 = trunc i32 %div1 to i16
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %tmp.0 = phi ptr [ %incdec.ptr, %while.cond.while.cond_crit_edge ], [ %5, %while.cond.preheader ]
  %9 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tmp.0, align 2
  %cmp3 = icmp ult i16 %10, %8
  %incdec.ptr = getelementptr %struct.dib0070_wbd_gain_cfg, ptr %tmp.0, i32 1
  br i1 %cmp3, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %wbd_gain_val = getelementptr inbounds %struct.dib0070_wbd_gain_cfg, ptr %tmp.0, i32 0, i32 1
  %11 = ptrtoint ptr %wbd_gain_val to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %wbd_gain_val, align 2
  %conv5 = trunc i16 %12 to i8
  br label %if.end

if.end:                                           ; preds = %while.end, %entry.if.end_crit_edge
  %.sink = phi i8 [ %conv5, %while.end ], [ 6, %entry.if.end_crit_edge ]
  %wbd_gain_current6 = getelementptr inbounds %struct.dib0070_state, ptr %1, i32 0, i32 14
  %13 = ptrtoint ptr %wbd_gain_current6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %wbd_gain_current6, align 4
  %conv8 = zext i8 %.sink to i32
  %sub = add nsw i32 %conv8, -6
  %arrayidx = getelementptr %struct.dib0070_state, ptr %1, i32 0, i32 15, i32 %sub
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx, align 2
  ret i16 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dib0070_attach(ptr noundef %fe, ptr noundef %i2c, ptr noundef %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 172) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg1 = getelementptr inbounds %struct.dib0070_state, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %cfg1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cfg, ptr %cfg1, align 8
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %fe3 = getelementptr inbounds %struct.dib0070_state, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fe3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fe, ptr %fe3, align 4
  %i2c_buffer_lock = getelementptr inbounds %struct.dib0070_state, ptr %call7.i.i, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %i2c_buffer_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @dib0070_attach.__key) #7
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %4 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %5 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cfg1, align 8
  %sleep.i = getelementptr inbounds %struct.dib0070_config, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %sleep.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sleep.i, align 4
  %9 = ptrtoint ptr %fe3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fe3, align 4
  %call.i = tail call i32 %8(ptr noundef %10, i32 noundef 0) #7
  %11 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cfg1, align 8
  %reset.i = getelementptr inbounds %struct.dib0070_config, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %reset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.do.end.i_crit_edge, label %if.then.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %fe3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fe3, align 4
  %call6.i = tail call i32 %14(ptr noundef %16, i32 noundef 1) #7
  tail call void @msleep(i32 noundef 10) #7
  %17 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg1, align 8
  %reset8.i = getelementptr inbounds %struct.dib0070_config, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %reset8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reset8.i, align 4
  %21 = ptrtoint ptr %fe3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fe3, align 4
  %call10.i = tail call i32 %20(ptr noundef %22, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 10) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end.do.end.i_crit_edge
  %call11.i = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 34) #7
  %23 = and i16 %call11.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool12.not.i = icmp eq i16 %23, 0
  br i1 %tobool12.not.i, label %do.end.i.do.body21.i_crit_edge, label %if.then13.i

do.end.i.do.body21.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21.i

if.then13.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 31) #7
  %24 = lshr i16 %call14.i, 8
  %conv18.i = trunc i16 %24 to i8
  br label %do.body21.i

do.body21.i:                                      ; preds = %if.then13.i, %do.end.i.do.body21.i_crit_edge
  %conv18.sink.i = phi i8 [ %conv18.i, %if.then13.i ], [ 2, %do.end.i.do.body21.i_crit_edge ]
  %25 = getelementptr inbounds %struct.dib0070_state, ptr %call7.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv18.sink.i, ptr %25, align 2
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool22.not.i = icmp eq i32 %27, 0
  br i1 %tobool22.not.i, label %do.body21.i.do.end32.i_crit_edge, label %do.end26.i

do.body21.i.do.end32.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32.i

do.end26.i:                                       ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv28.i = zext i8 %conv18.sink.i to i32
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %conv28.i) #10
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %28)
  %.pr.i = load i8, ptr %25, align 2
  br label %do.end32.i

do.end32.i:                                       ; preds = %do.end26.i, %do.body21.i.do.end32.i_crit_edge
  %29 = phi i8 [ %.pr.i, %do.end26.i ], [ %conv18.sink.i, %do.body21.i.do.end32.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp.i = icmp eq i8 %29, 0
  br i1 %cmp.i, label %do.body37.i, label %do.end32.i.while.body.i_crit_edge

do.end32.i.while.body.i_crit_edge:                ; preds = %do.end32.i
  br label %while.body.i

do.body37.i:                                      ; preds = %do.end32.i
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool38.not.i = icmp eq i32 %30, 0
  br i1 %tobool38.not.i, label %do.body37.i.free_mem_crit_edge, label %do.end42.i

do.body37.i.free_mem_crit_edge:                   ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_mem

do.end42.i:                                       ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #9
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16) #10
  br label %free_mem

while.body.i:                                     ; preds = %do.end57.i.while.body.i_crit_edge, %do.end32.i.while.body.i_crit_edge
  %n.0161.i = phi ptr [ %incdec.ptr58.i, %do.end57.i.while.body.i_crit_edge ], [ getelementptr inbounds ([34 x i16], ptr @dib0070_p1f_defaults, i32 0, i32 1), %do.end32.i.while.body.i_crit_edge ]
  %l.0160.i = phi i16 [ %36, %do.end57.i.while.body.i_crit_edge ], [ 7, %do.end32.i.while.body.i_crit_edge ]
  %incdec.ptr50.i = getelementptr i16, ptr %n.0161.i, i32 1
  %31 = ptrtoint ptr %n.0161.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %n.0161.i, align 2
  br label %do.body51.i

do.body51.i:                                      ; preds = %do.body51.i.do.body51.i_crit_edge, %while.body.i
  %l.1.i = phi i16 [ %l.0160.i, %while.body.i ], [ %dec.i, %do.body51.i.do.body51.i_crit_edge ]
  %r.0.i = phi i16 [ %32, %while.body.i ], [ %inc.i, %do.body51.i.do.body51.i_crit_edge ]
  %n.1.i = phi ptr [ %incdec.ptr50.i, %while.body.i ], [ %incdec.ptr53.i, %do.body51.i.do.body51.i_crit_edge ]
  %conv52.i = trunc i16 %r.0.i to i8
  %incdec.ptr53.i = getelementptr i16, ptr %n.1.i, i32 1
  %33 = ptrtoint ptr %n.1.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %n.1.i, align 2
  %call54.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext %conv52.i, i16 noundef zeroext %34) #7
  %inc.i = add i16 %r.0.i, 1
  %dec.i = add i16 %l.1.i, -1
  %tobool56.not.i = icmp eq i16 %dec.i, 0
  br i1 %tobool56.not.i, label %do.end57.i, label %do.body51.i.do.body51.i_crit_edge

do.body51.i.do.body51.i_crit_edge:                ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51.i

do.end57.i:                                       ; preds = %do.body51.i
  %incdec.ptr58.i = getelementptr i16, ptr %n.1.i, i32 2
  %35 = ptrtoint ptr %incdec.ptr53.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %incdec.ptr53.i, align 2
  %tobool49.not.i = icmp eq i16 %36, 0
  br i1 %tobool49.not.i, label %while.end.i, label %do.end57.i.while.body.i_crit_edge

do.end57.i.while.body.i_crit_edge:                ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.end.i:                                      ; preds = %do.end57.i
  %37 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cfg1, align 8
  %force_crystal_mode.i = getelementptr inbounds %struct.dib0070_config, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %force_crystal_mode.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %force_crystal_mode.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp61.not.i = icmp eq i8 %40, 0
  br i1 %cmp61.not.i, label %if.else67.i, label %if.then63.i

if.then63.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.i = zext i8 %40 to i16
  br label %if.end74.i

if.else67.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %clock_khz.i = getelementptr inbounds %struct.dib0070_config, ptr %38, i32 0, i32 6
  %41 = ptrtoint ptr %clock_khz.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %clock_khz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23999, i32 %42)
  %cmp69.i = icmp ugt i32 %42, 23999
  %..i = select i1 %cmp69.i, i16 1, i16 2
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.else67.i, %if.then63.i
  %r.1.i = phi i16 [ %phi.cast.i, %if.then63.i ], [ %..i, %if.else67.i ]
  %osc_buffer_state.i = getelementptr inbounds %struct.dib0070_config, ptr %38, i32 0, i32 5
  %43 = ptrtoint ptr %osc_buffer_state.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %osc_buffer_state.i, align 4
  %conv76.i = zext i8 %44 to i16
  %shl.i = shl nuw nsw i16 %conv76.i, 3
  %or.i = or i16 %shl.i, %r.1.i
  %call79.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 16, i16 noundef zeroext %or.i) #7
  %45 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg1, align 8
  %clock_pad_drive.i = getelementptr inbounds %struct.dib0070_config, ptr %46, i32 0, i32 7
  %47 = ptrtoint ptr %clock_pad_drive.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %clock_pad_drive.i, align 4
  %49 = shl i8 %48, 5
  %shl83.i = zext i8 %49 to i16
  %or84.i = or i16 %shl83.i, 256
  %call86.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 31, i16 noundef zeroext %or84.i) #7
  %50 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cfg1, align 8
  %invert_iq.i = getelementptr inbounds %struct.dib0070_config, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %invert_iq.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %invert_iq.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool88.not.i = icmp eq i8 %53, 0
  br i1 %tobool88.not.i, label %if.end74.i.if.end98.i_crit_edge, label %if.then89.i

if.end74.i.if.end98.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98.i

if.then89.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  %call90.i = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %call7.i.i, i8 noundef zeroext 2) #7
  %54 = or i16 %call90.i, 32
  %call97.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 2, i16 noundef zeroext %54) #7
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then89.i, %if.end74.i.if.end98.i_crit_edge
  %55 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %25, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp101.i = icmp eq i8 %56, 2
  br i1 %cmp101.i, label %if.then103.i, label %if.else105.i

if.then103.i:                                     ; preds = %if.end98.i
  %57 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tuner_priv, align 4
  %59 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i, label %if.then103.i.dib0070_set_ctrl_lo5.exit.i_crit_edge, label %do.end.i.i

if.then103.i.dib0070_set_ctrl_lo5.exit.i_crit_edge: ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib0070_set_ctrl_lo5.exit.i

do.end.i.i:                                       ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 5858) #10
  br label %dib0070_set_ctrl_lo5.exit.i

dib0070_set_ctrl_lo5.exit.i:                      ; preds = %do.end.i.i, %if.then103.i.dib0070_set_ctrl_lo5.exit.i_crit_edge
  %call17.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %58, i8 noundef zeroext 21, i16 noundef zeroext 5858) #7
  br label %if.end109.i

if.else105.i:                                     ; preds = %if.end98.i
  %60 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfg1, align 8
  %charge_pump.i = getelementptr inbounds %struct.dib0070_config, ptr %61, i32 0, i32 12
  %62 = ptrtoint ptr %charge_pump.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %charge_pump.i, align 1
  %enable_third_order_filter.i = getelementptr inbounds %struct.dib0070_config, ptr %61, i32 0, i32 11
  %64 = ptrtoint ptr %enable_third_order_filter.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %enable_third_order_filter.i, align 4
  %66 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tuner_priv, align 4
  %conv.i.i = zext i8 %65 to i16
  %shl.i.i = shl i16 %conv.i.i, 14
  %conv3.i.i = zext i8 %63 to i16
  %shl4.i.i = shl nuw nsw i16 %conv3.i.i, 6
  %or2.i.i = or i16 %shl4.i.i, %shl.i.i
  %or11.i.i = or i16 %or2.i.i, 5669
  %68 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i153.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i153.i, label %if.else105.i.dib0070_set_ctrl_lo5.exit157.i_crit_edge, label %do.end.i155.i

if.else105.i.dib0070_set_ctrl_lo5.exit157.i_crit_edge: ; preds = %if.else105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib0070_set_ctrl_lo5.exit157.i

do.end.i155.i:                                    ; preds = %if.else105.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv14.i.i = zext i16 %or11.i.i to i32
  %call.i154.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %conv14.i.i) #10
  br label %dib0070_set_ctrl_lo5.exit157.i

dib0070_set_ctrl_lo5.exit157.i:                   ; preds = %do.end.i155.i, %if.else105.i.dib0070_set_ctrl_lo5.exit157.i_crit_edge
  %call17.i156.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %67, i8 noundef zeroext 21, i16 noundef zeroext %or11.i.i) #7
  br label %if.end109.i

if.end109.i:                                      ; preds = %dib0070_set_ctrl_lo5.exit157.i, %dib0070_set_ctrl_lo5.exit.i
  %call110.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 1, i16 noundef zeroext 27848) #7
  %call.i.i.i = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %call7.i.i, i8 noundef zeroext 32) #7
  %call1.i.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 24, i16 noundef zeroext 2047) #7
  %call2.i.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 32, i16 noundef zeroext 18555) #7
  %call7.i.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 15, i16 noundef zeroext 28032) #7
  tail call void @msleep(i32 noundef 9) #7
  %call8.i.i.i = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %call7.i.i, i8 noundef zeroext 25) #7
  %call9.i.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 32, i16 noundef zeroext %call.i.i.i) #7
  %conv2.i.i = zext i16 %call8.i.i.i to i32
  %mul3.i.i = mul nuw nsw i32 %conv2.i.i, 144
  %div.i.i = udiv i32 %mul3.i.i, 33
  %add.i.i = add nuw nsw i32 %div.i.i, 1
  %div424.i.i = lshr i32 %add.i.i, 1
  %conv5.i.i = trunc i32 %div424.i.i to i16
  %arrayidx.i.i = getelementptr %struct.dib0070_state, ptr %call7.i.i, i32 0, i32 15, i32 0
  %69 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv5.i.i, ptr %arrayidx.i.i, align 2
  %70 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i158.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i158.i, label %if.end109.i.for.inc.i.i_crit_edge, label %do.end.i159.i

if.end109.i.for.inc.i.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

do.end.i159.i:                                    ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv13.i.i = and i32 %div424.i.i, 65535
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 6, i32 noundef %conv13.i.i) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end.i159.i, %if.end109.i.for.inc.i.i_crit_edge
  %call.i.1.i.i = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %call7.i.i, i8 noundef zeroext 32) #7
  %call1.i.1.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 24, i16 noundef zeroext 2047) #7
  %call2.i.1.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 32, i16 noundef zeroext 18555) #7
  %call7.i.1.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 15, i16 noundef zeroext 28544) #7
  tail call void @msleep(i32 noundef 9) #7
  %call8.i.1.i.i = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %call7.i.i, i8 noundef zeroext 25) #7
  %call9.i.1.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %call7.i.i, i8 noundef zeroext 32, i16 noundef zeroext %call.i.1.i.i) #7
  %conv2.1.i.i = zext i16 %call8.i.1.i.i to i32
  %mul3.1.i.i = mul nuw nsw i32 %conv2.1.i.i, 144
  %div.1.i.i = udiv i32 %mul3.1.i.i, 33
  %add.1.i.i = add nuw nsw i32 %div.1.i.i, 1
  %div424.1.i.i = lshr i32 %add.1.i.i, 1
  %conv5.1.i.i = trunc i32 %div424.1.i.i to i16
  %arrayidx.1.i.i = getelementptr %struct.dib0070_state, ptr %call7.i.i, i32 0, i32 15, i32 1
  %71 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv5.1.i.i, ptr %arrayidx.1.i.i, align 4
  %72 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.1.i.i = icmp eq i32 %72, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.do.end10_crit_edge, label %do.end.1.i.i

for.inc.i.i.do.end10_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end.1.i.i:                                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv13.1.i.i = and i32 %div424.1.i.i, 65535
  %call14.1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 7, i32 noundef %conv13.1.i.i) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end.1.i.i, %for.inc.i.i.do.end10_crit_edge
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %73 = call ptr @memcpy(ptr %tuner_ops, ptr @dib0070_ops, i32 220)
  br label %cleanup.sink.split

free_mem:                                         ; preds = %do.end42.i, %do.body37.i.free_mem_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %free_mem, %do.end10
  %.sink = phi ptr [ null, %free_mem ], [ %call7.i.i, %do.end10 ]
  %retval.0.ph = phi ptr [ null, %free_mem ], [ %fe, %do.end10 ]
  %74 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %.sink, ptr %tuner_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dib0070_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib0070_wakeup(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %cfg = getelementptr inbounds %struct.dib0070_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %sleep = getelementptr inbounds %struct.dib0070_config, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sleep, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %5(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib0070_sleep(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %cfg = getelementptr inbounds %struct.dib0070_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %sleep = getelementptr inbounds %struct.dib0070_config, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sleep, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %5(ptr noundef %fe, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib0070_tune(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %tune_state = getelementptr inbounds %struct.dib0070_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tune_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10, ptr %tune_state, align 4
  %dtv_property_cache.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %if.then.do.body_crit_edge, %entry
  %3 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tuner_priv, align 4
  %tune_state1.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %dtv_property_cache.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dtv_property_cache.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 170001000, i32 %6)
  %cmp.i = icmp ult i32 %6, 170001000
  br i1 %cmp.i, label %do.body.cond.false38.i_crit_edge, label %cond.false7.i

do.body.cond.false38.i_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false38.i

cond.false7.i:                                    ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 250001000, i32 %6)
  %cmp11.i = icmp ult i32 %6, 250001000
  br i1 %cmp11.i, label %cond.true37.i, label %cond.false13.i

cond.false13.i:                                   ; preds = %cond.false7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 863001000, i32 %6)
  %cmp17.i = icmp ult i32 %6, 863001000
  br i1 %cmp17.i, label %cond.false13.i.cond.false38.i_crit_edge, label %cond.false19.i

cond.false13.i.cond.false38.i_crit_edge:          ; preds = %cond.false13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false38.i

cond.false19.i:                                   ; preds = %cond.false13.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000001000, i32 %6)
  %cmp23.i = icmp ult i32 %6, 2000001000
  %cond.i = select i1 %cmp23.i, i32 1, i32 8
  br label %cond.false38.i

cond.true37.i:                                    ; preds = %cond.false7.i
  call void @__sanitizer_cov_trace_pc() #9
  %cfg.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cfg.i, align 4
  %freq_offset_khz_vhf.i = getelementptr inbounds %struct.dib0070_config, ptr %8, i32 0, i32 4
  br label %cond.end40.i

cond.false38.i:                                   ; preds = %cond.false19.i, %cond.false13.i.cond.false38.i_crit_edge, %do.body.cond.false38.i_crit_edge
  %cond30.ph.i = phi i32 [ 2, %cond.false13.i.cond.false38.i_crit_edge ], [ %cond.i, %cond.false19.i ], [ 32, %do.body.cond.false38.i_crit_edge ]
  %cfg39.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %cfg39.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cfg39.i, align 4
  %freq_offset_khz_uhf.i = getelementptr inbounds %struct.dib0070_config, ptr %10, i32 0, i32 3
  br label %cond.end40.i

cond.end40.i:                                     ; preds = %cond.false38.i, %cond.true37.i
  %cmp35489.i = phi i1 [ true, %cond.true37.i ], [ false, %cond.false38.i ]
  %cond30485.i = phi i32 [ 4, %cond.true37.i ], [ %cond30.ph.i, %cond.false38.i ]
  %cond41.in.i = phi ptr [ %freq_offset_khz_vhf.i, %cond.true37.i ], [ %freq_offset_khz_uhf.i, %cond.false38.i ]
  %div33487.i = udiv i32 %6, 1000
  %11 = ptrtoint ptr %cond41.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond41.i = load i32, ptr %cond41.in.i, align 4
  %add.i = add i32 %cond41.i, %div33487.i
  %current_rf.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 6
  %12 = ptrtoint ptr %current_rf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %current_rf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add.i)
  %cmp42.not.i = icmp eq i32 %13, %add.i
  br i1 %cmp42.not.i, label %cond.end40.i.if.end57.i_crit_edge, label %if.then.i

cond.end40.i.if.end57.i_crit_edge:                ; preds = %cond.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

if.then.i:                                        ; preds = %cond.end40.i
  %revision.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 4
  %14 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %revision.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cond352.i = icmp eq i8 %15, 2
  br i1 %cond352.i, label %if.then.i.sw.epilog.i_crit_edge, label %sw.default.i

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %cfg45.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 2
  %16 = ptrtoint ptr %cfg45.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg45.i, align 4
  %flip_chip.i = getelementptr inbounds %struct.dib0070_config, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %flip_chip.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flip_chip.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  %dib0070_lna.dib0070_lna_flip_chip.i = select i1 %tobool.not.i, ptr @dib0070_lna, ptr @dib0070_lna_flip_chip
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.then.i.sw.epilog.i_crit_edge
  %lna_match.0.i = phi ptr [ @dib0070_lna, %if.then.i.sw.epilog.i_crit_edge ], [ %dib0070_lna.dib0070_lna_flip_chip.i, %sw.default.i ]
  %tune.0.i = phi ptr [ @dib0070s_tuning_table, %if.then.i.sw.epilog.i_crit_edge ], [ @dib0070_tuning_table, %sw.default.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %sw.epilog.i
  %tune.1.i = phi ptr [ %tune.0.i, %sw.epilog.i ], [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ]
  %20 = ptrtoint ptr %tune.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tune.1.i, align 4
  %cmp47.i = icmp ugt i32 %add.i, %21
  %incdec.ptr.i = getelementptr %struct.dib0070_tuning, ptr %tune.1.i, i32 1
  br i1 %cmp47.i, label %while.cond.i.while.cond.i_crit_edge, label %while.cond.i.while.cond49.i_crit_edge

while.cond.i.while.cond49.i_crit_edge:            ; preds = %while.cond.i
  br label %while.cond49.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

while.cond49.i:                                   ; preds = %while.cond49.i.while.cond49.i_crit_edge, %while.cond.i.while.cond49.i_crit_edge
  %lna_match.1.i = phi ptr [ %incdec.ptr54.i, %while.cond49.i.while.cond49.i_crit_edge ], [ %lna_match.0.i, %while.cond.i.while.cond49.i_crit_edge ]
  %22 = ptrtoint ptr %lna_match.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lna_match.1.i, align 4
  %cmp51.i = icmp ugt i32 %add.i, %23
  %incdec.ptr54.i = getelementptr %struct.dib0070_lna_match, ptr %lna_match.1.i, i32 1
  br i1 %cmp51.i, label %while.cond49.i.while.cond49.i_crit_edge, label %while.end55.i

while.cond49.i.while.cond49.i_crit_edge:          ; preds = %while.cond49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond49.i

while.end55.i:                                    ; preds = %while.cond49.i
  call void @__sanitizer_cov_trace_pc() #9
  %current_tune_table_index.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 12
  %24 = ptrtoint ptr %current_tune_table_index.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tune.1.i, ptr %current_tune_table_index.i, align 4
  %lna_match56.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 13
  %25 = ptrtoint ptr %lna_match56.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %lna_match.1.i, ptr %lna_match56.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %while.end55.i, %cond.end40.i.if.end57.i_crit_edge
  %26 = ptrtoint ptr %tune_state1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tune_state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %27)
  %cmp58.i = icmp eq i32 %27, 10
  br i1 %cmp58.i, label %do.body.i, label %if.else271.i

do.body.i:                                        ; preds = %if.end57.i
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool61.not.i = icmp eq i32 %28, 0
  br i1 %tobool61.not.i, label %do.body.i.do.end67.i_crit_edge, label %do.end.i

do.body.i.do.end67.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %cond30485.i, i32 noundef %add.i) #10
  br label %do.end67.i

do.end67.i:                                       ; preds = %do.end.i, %do.body.i.do.end67.i_crit_edge
  %29 = ptrtoint ptr %current_rf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %current_rf.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %add.i)
  %cmp69.not.i = icmp eq i32 %30, %add.i
  br i1 %cmp69.not.i, label %do.end67.i.if.end351.sink.split.i_crit_edge, label %if.then71.i

do.end67.i.if.end351.sink.split.i_crit_edge:      ; preds = %do.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end351.sink.split.i

if.then71.i:                                      ; preds = %do.end67.i
  %31 = ptrtoint ptr %current_rf.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %current_rf.i, align 4
  %current_tune_table_index73.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 12
  %32 = ptrtoint ptr %current_tune_table_index73.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %current_tune_table_index73.i, align 4
  %vco_band.i = getelementptr inbounds %struct.dib0070_tuning, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %vco_band.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %vco_band.i, align 1
  %conv74.i = zext i8 %35 to i16
  %shl.i = shl i16 %conv74.i, 11
  %hfdiv.i = getelementptr inbounds %struct.dib0070_tuning, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %hfdiv.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %hfdiv.i, align 2
  %conv76.i = zext i8 %37 to i16
  %shl77.i = shl nuw nsw i16 %conv76.i, 7
  %or.i = or i16 %shl77.i, %shl.i
  %lo4.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 11
  %38 = ptrtoint ptr %lo4.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %or.i, ptr %lo4.i, align 2
  %call79.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 23, i16 noundef zeroext 48) #7
  %mul.i = shl i32 %add.i, 1
  %cfg85.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 2
  %39 = ptrtoint ptr %cfg85.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cfg85.i, align 4
  %clock_khz.i = getelementptr inbounds %struct.dib0070_config, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %clock_khz.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %clock_khz.i, align 4
  %add86.i = add i32 %42, 9999
  %REFDIV.0.in.in.i = select i1 %cmp35489.i, i32 %add86.i, i32 %42
  %REFDIV.0.in.i = udiv i32 %REFDIV.0.in.in.i, 10000
  %conv102.i = and i32 %REFDIV.0.in.i, 255
  %div103.i = udiv i32 %42, %conv102.i
  %revision104.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 4
  %43 = ptrtoint ptr %revision104.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %revision104.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %cond353.i = icmp eq i8 %44, 2
  br i1 %cond353.i, label %sw.bb106.i, label %sw.default117.i

sw.bb106.i:                                       ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %current_tune_table_index73.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %current_tune_table_index73.i, align 4
  %vco_multi.i = getelementptr inbounds %struct.dib0070_tuning, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %vco_multi.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %vco_multi.i, align 1
  %conv81.i = zext i8 %48 to i32
  %mul82.i = mul i32 %mul.i, %conv81.i
  %presc.i = getelementptr inbounds %struct.dib0070_tuning, ptr %46, i32 0, i32 5
  %49 = ptrtoint ptr %presc.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %presc.i, align 4
  %conv108.i = zext i8 %50 to i32
  %div109.i = udiv i32 %mul82.i, %conv108.i
  %div110.i = udiv i32 %div109.i, %div103.i
  br label %sw.epilog123.i

sw.default117.i:                                  ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #9
  %div118469.i = lshr i32 %div103.i, 1
  %div119.i = udiv i32 %add.i, %div118469.i
  br label %sw.epilog123.i

sw.epilog123.i:                                   ; preds = %sw.default117.i, %sw.bb106.i
  %div119.sink.i = phi i32 [ %div119.i, %sw.default117.i ], [ %div110.i, %sw.bb106.i ]
  %mul.sink.i = phi i32 [ %mul.i, %sw.default117.i ], [ %div109.i, %sw.bb106.i ]
  %mul121.i = mul i32 %div119.sink.i, %div103.i
  %sub122.i = sub i32 %mul.sink.i, %mul121.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub122.i)
  %cmp124.i = icmp ult i32 %sub122.i, 100
  br i1 %cmp124.i, label %sw.epilog123.i.if.end146.i_crit_edge, label %if.else127.i

sw.epilog123.i.if.end146.i_crit_edge:             ; preds = %sw.epilog123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146.i

if.else127.i:                                     ; preds = %sw.epilog123.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %sub122.i)
  %cmp128.i = icmp ult i32 %sub122.i, 200
  br i1 %cmp128.i, label %if.else127.i.if.end146.i_crit_edge, label %if.else131.i

if.else127.i.if.end146.i_crit_edge:               ; preds = %if.else127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146.i

if.else131.i:                                     ; preds = %if.else127.i
  %sub132.i = add i32 %div103.i, -100
  call void @__sanitizer_cov_trace_cmp4(i32 %sub122.i, i32 %sub132.i)
  %cmp133.i = icmp ugt i32 %sub122.i, %sub132.i
  br i1 %cmp133.i, label %if.then135.i, label %if.else137.i

if.then135.i:                                     ; preds = %if.else131.i
  call void @__sanitizer_cov_trace_pc() #9
  %add136.i = add i32 %div119.sink.i, 1
  br label %if.end146.i

if.else137.i:                                     ; preds = %if.else131.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub138.i = add i32 %div103.i, -200
  %51 = tail call i32 @llvm.umin.i32(i32 %sub122.i, i32 %sub138.i) #7
  %phi.bo.i = mul i32 %51, 6528
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.else137.i, %if.then135.i, %if.else127.i.if.end146.i_crit_edge, %sw.epilog123.i.if.end146.i_crit_edge
  %FBDiv.1.i = phi i32 [ %add136.i, %if.then135.i ], [ %div119.sink.i, %sw.epilog123.i.if.end146.i_crit_edge ], [ %div119.sink.i, %if.else127.i.if.end146.i_crit_edge ], [ %div119.sink.i, %if.else137.i ]
  %Rest.1.i = phi i32 [ 0, %if.then135.i ], [ 0, %sw.epilog123.i.if.end146.i_crit_edge ], [ 1305600, %if.else127.i.if.end146.i_crit_edge ], [ %phi.bo.i, %if.else137.i ]
  %div148.i = udiv i32 %div103.i, 10
  %div149.i = udiv i32 %Rest.1.i, %div148.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div148.i, i32 %Rest.1.i)
  %cmp150.not.i = icmp ugt i32 %div148.i, %Rest.1.i
  br i1 %cmp150.not.i, label %if.end146.i.if.end157.i_crit_edge, label %if.then152.i

if.end146.i.if.end157.i_crit_edge:                ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157.i

if.then152.i:                                     ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %lo4.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %lo4.i, align 2
  %54 = or i16 %53, 20480
  store i16 %54, ptr %lo4.i, align 2
  br label %if.end157.i

if.end157.i:                                      ; preds = %if.then152.i, %if.end146.i.if.end157.i_crit_edge
  %Den.0.i = phi i32 [ 255, %if.then152.i ], [ 1, %if.end146.i.if.end157.i_crit_edge ]
  %conv158.i = trunc i32 %FBDiv.1.i to i16
  %call159.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 17, i16 noundef zeroext %conv158.i) #7
  %shl161.i = shl nuw nsw i32 %Den.0.i, 8
  %or163.i = or i32 %shl161.i, %conv102.i
  %conv164.i = trunc i32 %or163.i to i16
  %call165.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 18, i16 noundef zeroext %conv164.i) #7
  %conv166.i = trunc i32 %div149.i to i16
  %call167.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 19, i16 noundef zeroext %conv166.i) #7
  %55 = ptrtoint ptr %revision104.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %revision104.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp170.i = icmp eq i8 %56, 2
  br i1 %cmp170.i, label %if.then172.i, label %if.end157.i.if.end182.i_crit_edge

if.end157.i.if.end182.i_crit_edge:                ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end182.i

if.then172.i:                                     ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond30485.i)
  %cmp174.i = icmp eq i32 %cond30485.i, 8
  %57 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tuner_priv, align 4
  %59 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i = icmp eq i32 %59, 0
  br i1 %cmp174.i, label %if.then176.i, label %if.else179.i

if.then176.i:                                     ; preds = %if.then172.i
  br i1 %tobool.not.i.i, label %if.then176.i.dib0070_set_ctrl_lo5.exit.i_crit_edge, label %do.end.i.i

if.then176.i.dib0070_set_ctrl_lo5.exit.i_crit_edge: ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib0070_set_ctrl_lo5.exit.i

do.end.i.i:                                       ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 5858) #10
  br label %dib0070_set_ctrl_lo5.exit.i

dib0070_set_ctrl_lo5.exit.i:                      ; preds = %do.end.i.i, %if.then176.i.dib0070_set_ctrl_lo5.exit.i_crit_edge
  %call17.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %58, i8 noundef zeroext 21, i16 noundef zeroext 5858) #7
  %call178.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 29, i16 noundef zeroext -1) #7
  br label %if.end182.i

if.else179.i:                                     ; preds = %if.then172.i
  br i1 %tobool.not.i.i, label %if.else179.i.dib0070_set_ctrl_lo5.exit476.i_crit_edge, label %do.end.i474.i

if.else179.i.dib0070_set_ctrl_lo5.exit476.i_crit_edge: ; preds = %if.else179.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib0070_set_ctrl_lo5.exit476.i

do.end.i474.i:                                    ; preds = %if.else179.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i473.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 22245) #10
  br label %dib0070_set_ctrl_lo5.exit476.i

dib0070_set_ctrl_lo5.exit476.i:                   ; preds = %do.end.i474.i, %if.else179.i.dib0070_set_ctrl_lo5.exit476.i_crit_edge
  %call17.i475.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %58, i8 noundef zeroext 21, i16 noundef zeroext 22245) #7
  br label %if.end182.i

if.end182.i:                                      ; preds = %dib0070_set_ctrl_lo5.exit476.i, %dib0070_set_ctrl_lo5.exit.i, %if.end157.i.if.end182.i_crit_edge
  %60 = ptrtoint ptr %current_tune_table_index73.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %current_tune_table_index73.i, align 4
  %tuner_enable.i = getelementptr inbounds %struct.dib0070_tuning, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %tuner_enable.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %tuner_enable.i, align 2
  %64 = or i16 %63, 123
  %call187.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 32, i16 noundef zeroext %64) #7
  %65 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool189.not.i = icmp eq i32 %65, 0
  br i1 %tobool189.not.i, label %if.end182.i.if.end351.sink.split.i_crit_edge, label %do.body200.i

if.end182.i.if.end351.sink.split.i_crit_edge:     ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end351.sink.split.i

do.body200.i:                                     ; preds = %if.end182.i
  %call196.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %conv102.i, i32 noundef %div103.i) #10
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool201.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool201.not.i, label %do.body200.i.if.end351.sink.split.i_crit_edge, label %do.body211.i

do.body200.i.if.end351.sink.split.i_crit_edge:    ; preds = %do.body200.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end351.sink.split.i

do.body211.i:                                     ; preds = %do.body200.i
  %call207.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef %FBDiv.1.i, i32 noundef %div149.i) #10
  %.pr492.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr492.i)
  %tobool212.not.i = icmp eq i32 %.pr492.i, 0
  br i1 %tobool212.not.i, label %do.body211.i.if.end351.sink.split.i_crit_edge, label %do.body227.i

do.body211.i.if.end351.sink.split.i_crit_edge:    ; preds = %do.body211.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end351.sink.split.i

do.body227.i:                                     ; preds = %do.body211.i
  %conv219.i = and i32 %div149.i, 65535
  %66 = ptrtoint ptr %lo4.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %lo4.i, align 2
  %68 = lshr i16 %67, 12
  %69 = and i16 %68, 1
  %and.i = zext i16 %69 to i32
  %call223.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.25, i32 noundef %conv219.i, i32 noundef %Den.0.i, i32 noundef %and.i) #10
  %.pr494.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr494.pr.i)
  %tobool228.not.i = icmp eq i32 %.pr494.pr.i, 0
  br i1 %tobool228.not.i, label %do.body227.i.if.end351.sink.split.i_crit_edge, label %do.body241.i

do.body227.i.if.end351.sink.split.i_crit_edge:    ; preds = %do.body227.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end351.sink.split.i

do.body241.i:                                     ; preds = %do.body227.i
  %70 = ptrtoint ptr %current_tune_table_index73.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %current_tune_table_index73.i, align 4
  %hfdiv235.i = getelementptr inbounds %struct.dib0070_tuning, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %hfdiv235.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %hfdiv235.i, align 2
  %conv236.i = zext i8 %73 to i32
  %call237.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.25, i32 noundef %conv236.i) #10
  %.pr496.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr496.i)
  %tobool242.not.i = icmp eq i32 %.pr496.i, 0
  br i1 %tobool242.not.i, label %do.body241.i.if.end351.sink.split.i_crit_edge, label %do.body255.i

do.body241.i.if.end351.sink.split.i_crit_edge:    ; preds = %do.body241.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end351.sink.split.i

do.body255.i:                                     ; preds = %do.body241.i
  %74 = ptrtoint ptr %current_tune_table_index73.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %current_tune_table_index73.i, align 4
  %vco_band249.i = getelementptr inbounds %struct.dib0070_tuning, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %vco_band249.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %vco_band249.i, align 1
  %conv250.i = zext i8 %77 to i32
  %call251.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.25, i32 noundef %conv250.i) #10
  %.pr498.pr.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr498.pr.pr.i)
  %tobool256.not.i = icmp eq i32 %.pr498.pr.pr.i, 0
  br i1 %tobool256.not.i, label %do.body255.i.if.end351.sink.split.i_crit_edge, label %do.end260.i

do.body255.i.if.end351.sink.split.i_crit_edge:    ; preds = %do.body255.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end351.sink.split.i

do.end260.i:                                      ; preds = %do.body255.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %current_tune_table_index73.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %current_tune_table_index73.i, align 4
  %vco_multi263.i = getelementptr inbounds %struct.dib0070_tuning, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %vco_multi263.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %vco_multi263.i, align 1
  %conv264.i = zext i8 %81 to i32
  %call265.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.25, i32 noundef %conv264.i, i32 noundef %add.i) #10
  br label %if.end351.sink.split.i

if.else271.i:                                     ; preds = %if.end57.i
  %82 = add i32 %27, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %82)
  %83 = icmp ult i32 %82, 4
  br i1 %83, label %if.then276.i, label %if.else278.i

if.then276.i:                                     ; preds = %if.else271.i
  %84 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %if.then276.i.if.then_crit_edge [
    i32 11, label %if.then.i.i
    i32 12, label %if.then4.i.i
    i32 13, label %if.then15.i.i
    i32 14, label %if.then81.i.i
  ]

if.then276.i.if.then_crit_edge:                   ; preds = %if.then276.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.i.i:                                      ; preds = %if.then276.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i477.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 15, i16 noundef zeroext -4848) #7
  %call1.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 23, i16 noundef zeroext 52) #7
  %call2.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 24, i16 noundef zeroext 50) #7
  %fcaptrim.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 10
  %85 = ptrtoint ptr %fcaptrim.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 64, ptr %fcaptrim.i.i, align 1
  %captrim.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 9
  %86 = ptrtoint ptr %captrim.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 64, ptr %captrim.i.i, align 4
  %step.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 7
  %87 = ptrtoint ptr %step.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 64, ptr %step.i.i, align 4
  %adc_diff.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 8
  %88 = ptrtoint ptr %adc_diff.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 3000, ptr %adc_diff.i.i, align 2
  br label %if.end351.sink.split.i

if.then4.i.i:                                     ; preds = %if.then276.i
  call void @__sanitizer_cov_trace_pc() #9
  %step5.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 7
  %89 = ptrtoint ptr %step5.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %step5.i.i, align 4
  %91 = sdiv i8 %90, 2
  store i8 %91, ptr %step5.i.i, align 4
  %lo4.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 11
  %92 = ptrtoint ptr %lo4.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %lo4.i.i, align 2
  %captrim8.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 9
  %94 = ptrtoint ptr %captrim8.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %captrim8.i.i, align 4
  %conv9.i.i = sext i8 %95 to i16
  %or.i.i = or i16 %93, %conv9.i.i
  %call11.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 20, i16 noundef zeroext %or.i.i) #7
  br label %if.end351.sink.split.i

if.then15.i.i:                                    ; preds = %if.then276.i
  %call16.i.i = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %4, i8 noundef zeroext 25) #7
  %96 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i478.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i478.i, label %if.then15.i.i.do.end26.i.i_crit_edge, label %do.end.i479.i

if.then15.i.i.do.end26.i.i_crit_edge:             ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26.i.i

do.end.i479.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %captrim19.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 9
  %97 = ptrtoint ptr %captrim19.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %captrim19.i.i, align 4
  %conv20.i.i = sext i8 %98 to i32
  %conv21.i.i = zext i16 %call16.i.i to i32
  %mul.i.i = mul nuw nsw i32 %conv21.i.i, 1800
  %div23134.i.i = lshr i32 %mul.i.i, 10
  %call24.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef %conv20.i.i, i32 noundef %conv21.i.i, i32 noundef %div23134.i.i) #10
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %do.end.i479.i, %if.then15.i.i.do.end26.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 399, i16 %call16.i.i)
  %cmp28.i.i = icmp ugt i16 %call16.i.i, 399
  %sub.i.i = add i16 %call16.i.i, -400
  %sub35.i.i = sub i16 400, %call16.i.i
  %adc.0.i.i = select i1 %cmp28.i.i, i16 %sub.i.i, i16 %sub35.i.i
  %conv38.i.i = zext i16 %adc.0.i.i to i32
  %adc_diff39.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 8
  %99 = ptrtoint ptr %adc_diff39.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %adc_diff39.i.i, align 2
  %conv40.i.i = zext i16 %100 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %adc.0.i.i, i16 %100)
  %cmp41.i.i = icmp ult i16 %adc.0.i.i, %100
  br i1 %cmp41.i.i, label %do.body44.i.i, label %do.end26.i.i.if.end63.i.i_crit_edge

do.end26.i.i.if.end63.i.i_crit_edge:              ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63.i.i

do.body44.i.i:                                    ; preds = %do.end26.i.i
  %101 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool45.not.i.i = icmp eq i32 %101, 0
  br i1 %tobool45.not.i.i, label %do.body44.i.i.do.end59.i.i_crit_edge, label %do.end49.i.i

do.body44.i.i.do.end59.i.i_crit_edge:             ; preds = %do.body44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59.i.i

do.end49.i.i:                                     ; preds = %do.body44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %captrim51.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 9
  %102 = ptrtoint ptr %captrim51.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %captrim51.i.i, align 4
  %conv52.i.i = sext i8 %103 to i32
  %call56.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef %conv52.i.i, i32 noundef %conv38.i.i, i32 noundef %conv40.i.i) #10
  br label %do.end59.i.i

do.end59.i.i:                                     ; preds = %do.end49.i.i, %do.body44.i.i.do.end59.i.i_crit_edge
  %104 = ptrtoint ptr %adc_diff39.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %adc.0.i.i, ptr %adc_diff39.i.i, align 2
  %captrim61.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 9
  %105 = ptrtoint ptr %captrim61.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %captrim61.i.i, align 4
  %fcaptrim62.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 10
  %107 = ptrtoint ptr %fcaptrim62.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %106, ptr %fcaptrim62.i.i, align 1
  br label %if.end63.i.i

if.end63.i.i:                                     ; preds = %do.end59.i.i, %do.end26.i.i.if.end63.i.i_crit_edge
  %step65.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 7
  %108 = ptrtoint ptr %step65.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %step65.i.i, align 4
  %110 = sub i8 0, %109
  %111 = select i1 %cmp28.i.i, i8 %110, i8 %109
  %captrim68.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 9
  %112 = ptrtoint ptr %captrim68.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %captrim68.i.i, align 4
  %add.i.i = add i8 %111, %113
  store i8 %add.i.i, ptr %captrim68.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %cmp73.i.i = icmp sgt i8 %109, 0
  %..i.i = select i1 %cmp73.i.i, i32 12, i32 14
  br label %if.end351.sink.split.i

if.then81.i.i:                                    ; preds = %if.then276.i
  call void @__sanitizer_cov_trace_pc() #9
  %lo482.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 11
  %114 = ptrtoint ptr %lo482.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %lo482.i.i, align 2
  %fcaptrim84.i.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 10
  %116 = ptrtoint ptr %fcaptrim84.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %fcaptrim84.i.i, align 1
  %conv85.i.i = sext i8 %117 to i16
  %or86.i.i = or i16 %115, %conv85.i.i
  %call88.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 20, i16 noundef zeroext %or86.i.i) #7
  %call89.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 24, i16 noundef zeroext 2047) #7
  br label %if.end351.sink.split.i

if.else278.i:                                     ; preds = %if.else271.i
  %118 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %27, label %if.else278.i.do.end_crit_edge [
    i32 15, label %if.then281.i
    i32 16, label %if.then345.i
  ]

if.else278.i.do.end_crit_edge:                    ; preds = %if.else278.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then281.i:                                     ; preds = %if.else278.i
  %cfg283.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 2
  %119 = ptrtoint ptr %cfg283.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cfg283.i, align 4
  %wbd_gain.i = getelementptr inbounds %struct.dib0070_config, ptr %120, i32 0, i32 13
  %121 = ptrtoint ptr %wbd_gain.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %wbd_gain.i, align 4
  %cmp284.not.i = icmp eq ptr %122, null
  br i1 %cmp284.not.i, label %if.else309.i, label %while.cond287.preheader.i

while.cond287.preheader.i:                        ; preds = %if.then281.i
  %div288.i = udiv i32 %add.i, 1000
  br label %while.cond287.i

while.cond287.i:                                  ; preds = %while.cond287.i.while.cond287.i_crit_edge, %while.cond287.preheader.i
  %tmp282.0.i = phi ptr [ %incdec.ptr294.i, %while.cond287.i.while.cond287.i_crit_edge ], [ %122, %while.cond287.preheader.i ]
  %123 = ptrtoint ptr %tmp282.0.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %tmp282.0.i, align 2
  %conv290.i = zext i16 %124 to i32
  %cmp291.i = icmp ugt i32 %div288.i, %conv290.i
  %incdec.ptr294.i = getelementptr %struct.dib0070_wbd_gain_cfg, ptr %tmp282.0.i, i32 1
  br i1 %cmp291.i, label %while.cond287.i.while.cond287.i_crit_edge, label %while.end295.i

while.cond287.i.while.cond287.i_crit_edge:        ; preds = %while.cond287.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond287.i

while.end295.i:                                   ; preds = %while.cond287.i
  call void @__sanitizer_cov_trace_pc() #9
  %wbd_gain_val.i = getelementptr inbounds %struct.dib0070_wbd_gain_cfg, ptr %tmp282.0.i, i32 0, i32 1
  %125 = ptrtoint ptr %wbd_gain_val.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %wbd_gain_val.i, align 2
  %shl297.i = shl i16 %126, 9
  %current_tune_table_index301.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 12
  %127 = ptrtoint ptr %current_tune_table_index301.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %current_tune_table_index301.i, align 4
  %wbdmux.i = getelementptr inbounds %struct.dib0070_tuning, ptr %128, i32 0, i32 6
  %129 = ptrtoint ptr %wbdmux.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %wbdmux.i, align 1
  %conv302.i = zext i8 %130 to i16
  %or300.i = or i16 %shl297.i, %conv302.i
  %or304.i = or i16 %or300.i, 28800
  %call306.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 15, i16 noundef zeroext %or304.i) #7
  %131 = ptrtoint ptr %wbd_gain_val.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %wbd_gain_val.i, align 2
  %conv308.i = trunc i16 %132 to i8
  br label %if.end318.i

if.else309.i:                                     ; preds = %if.then281.i
  call void @__sanitizer_cov_trace_pc() #9
  %current_tune_table_index310.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 12
  %133 = ptrtoint ptr %current_tune_table_index310.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %current_tune_table_index310.i, align 4
  %wbdmux311.i = getelementptr inbounds %struct.dib0070_tuning, ptr %134, i32 0, i32 6
  %135 = ptrtoint ptr %wbdmux311.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %wbdmux311.i, align 1
  %conv312.i = zext i8 %136 to i16
  %or314.i = or i16 %conv312.i, 31872
  %call316.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 15, i16 noundef zeroext %or314.i) #7
  br label %if.end318.i

if.end318.i:                                      ; preds = %if.else309.i, %while.end295.i
  %.sink.i = phi i8 [ 6, %if.else309.i ], [ %conv308.i, %while.end295.i ]
  %wbd_gain_current317.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 14
  %137 = ptrtoint ptr %wbd_gain_current317.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %.sink.i, ptr %wbd_gain_current317.i, align 4
  %call319.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 6, i16 noundef zeroext 16383) #7
  %current_tune_table_index320.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 12
  %138 = ptrtoint ptr %current_tune_table_index320.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %current_tune_table_index320.i, align 4
  %switch_trim.i = getelementptr inbounds %struct.dib0070_tuning, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %switch_trim.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %switch_trim.i, align 4
  %conv321.i = zext i8 %141 to i16
  %shl322.i = shl i16 %conv321.i, 11
  %lna_match324.i = getelementptr inbounds %struct.dib0070_state, ptr %4, i32 0, i32 13
  %142 = ptrtoint ptr %lna_match324.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %lna_match324.i, align 4
  %lna_band.i = getelementptr inbounds %struct.dib0070_lna_match, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %lna_band.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %lna_band.i, align 4
  %conv325.i = zext i8 %145 to i16
  %shl326.i = shl nuw nsw i16 %conv325.i, 3
  %or323.i = or i16 %shl322.i, %shl326.i
  %or328.i = or i16 %or323.i, 1795
  %call330.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 7, i16 noundef zeroext %or328.i) #7
  %146 = ptrtoint ptr %lna_match324.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %lna_match324.i, align 4
  %lna_band332.i = getelementptr inbounds %struct.dib0070_lna_match, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %lna_band332.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %lna_band332.i, align 4
  %conv333.i = zext i8 %149 to i16
  %shl334.i = shl i16 %conv333.i, 10
  %or336.i = or i16 %shl334.i, 511
  %call338.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 8, i16 noundef zeroext %or336.i) #7
  %call339.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 13, i16 noundef zeroext 3456) #7
  %call340.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 24, i16 noundef zeroext 2047) #7
  %call341.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %4, i8 noundef zeroext 23, i16 noundef zeroext 51) #7
  br label %if.end351.sink.split.i

if.then345.i:                                     ; preds = %if.else278.i
  %150 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %tuner_priv, align 4
  %call.i481.i = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %151, i8 noundef zeroext 2) #7
  %152 = and i16 %call.i481.i, 16383
  %fe2.i.i = getelementptr inbounds %struct.dib0070_state, ptr %151, i32 0, i32 1
  %153 = ptrtoint ptr %fe2.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %fe2.i.i, align 4
  %bandwidth_hz.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %154, i32 0, i32 8, i32 7
  %155 = ptrtoint ptr %bandwidth_hz.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %bandwidth_hz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000999, i32 %156)
  %cmp.i.i = icmp ugt i32 %156, 7000999
  br i1 %cmp.i.i, label %if.then345.i.if.end32.i.i_crit_edge, label %if.else.i.i

if.then345.i.if.end32.i.i_crit_edge:              ; preds = %if.then345.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i.i

if.else.i.i:                                      ; preds = %if.then345.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000999, i32 %156)
  %cmp10.i.i = icmp ugt i32 %156, 6000999
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.else16.i.i

if.then12.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %157 = or i16 %152, 16384
  br label %if.end32.i.i

if.else16.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000999, i32 %156)
  %cmp21.i.i = icmp ugt i32 %156, 5000999
  br i1 %cmp21.i.i, label %if.then23.i.i, label %if.else27.i.i

if.then23.i.i:                                    ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %158 = or i16 %152, -32768
  br label %if.end32.i.i

if.else27.i.i:                                    ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %159 = or i16 %call.i481.i, -16384
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.else27.i.i, %if.then23.i.i, %if.then12.i.i, %if.then345.i.if.end32.i.i_crit_edge
  %tmp.0.i.i = phi i16 [ %157, %if.then12.i.i ], [ %158, %if.then23.i.i ], [ %159, %if.else27.i.i ], [ %152, %if.then345.i.if.end32.i.i_crit_edge ]
  %call33.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %151, i8 noundef zeroext 2, i16 noundef zeroext %tmp.0.i.i) #7
  %160 = ptrtoint ptr %fe2.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %fe2.i.i, align 4
  %delivery_system.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %161, i32 0, i32 8, i32 15
  %162 = ptrtoint ptr %delivery_system.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %delivery_system.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %163)
  %cmp36.i.i = icmp eq i32 %163, 8
  br i1 %cmp36.i.i, label %if.then38.i.i, label %if.end32.i.i.if.end351.sink.split.i_crit_edge

if.end32.i.i.if.end351.sink.split.i_crit_edge:    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end351.sink.split.i

if.then38.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call39.i.i = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %151, i8 noundef zeroext 23) #7
  %164 = and i16 %call39.i.i, -4
  %call43.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %151, i8 noundef zeroext 23, i16 noundef zeroext %164) #7
  %call44.i.i = tail call fastcc zeroext i16 @dib0070_read_reg(ptr noundef %151, i8 noundef zeroext 1) #7
  %165 = and i16 %call44.i.i, 511
  %166 = or i16 %165, 30720
  %call51.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %151, i8 noundef zeroext 1, i16 noundef zeroext %166) #7
  %call52.i.i = tail call fastcc i32 @dib0070_write_reg(ptr noundef %151, i8 noundef zeroext 23, i16 noundef zeroext %call39.i.i) #7
  br label %if.end351.sink.split.i

if.end351.sink.split.i:                           ; preds = %if.then38.i.i, %if.end32.i.i.if.end351.sink.split.i_crit_edge, %if.end318.i, %if.then81.i.i, %if.end63.i.i, %if.then4.i.i, %if.then.i.i, %do.end260.i, %do.body255.i.if.end351.sink.split.i_crit_edge, %do.body241.i.if.end351.sink.split.i_crit_edge, %do.body227.i.if.end351.sink.split.i_crit_edge, %do.body211.i.if.end351.sink.split.i_crit_edge, %do.body200.i.if.end351.sink.split.i_crit_edge, %if.end182.i.if.end351.sink.split.i_crit_edge, %do.end67.i.if.end351.sink.split.i_crit_edge
  %.sink.i.sink.i = phi i32 [ 16, %if.end318.i ], [ 11, %if.end182.i.if.end351.sink.split.i_crit_edge ], [ 11, %do.body200.i.if.end351.sink.split.i_crit_edge ], [ 11, %do.body227.i.if.end351.sink.split.i_crit_edge ], [ 11, %do.body211.i.if.end351.sink.split.i_crit_edge ], [ 11, %do.body241.i.if.end351.sink.split.i_crit_edge ], [ 11, %do.end260.i ], [ 11, %do.body255.i.if.end351.sink.split.i_crit_edge ], [ 16, %do.end67.i.if.end351.sink.split.i_crit_edge ], [ 13, %if.then4.i.i ], [ 15, %if.then81.i.i ], [ 12, %if.then.i.i ], [ %..i.i, %if.end63.i.i ], [ 19, %if.end32.i.i.if.end351.sink.split.i_crit_edge ], [ 19, %if.then38.i.i ]
  %ret.0.ph.i = phi i8 [ 10, %if.end318.i ], [ 10, %if.end182.i.if.end351.sink.split.i_crit_edge ], [ 10, %do.body200.i.if.end351.sink.split.i_crit_edge ], [ 10, %do.body227.i.if.end351.sink.split.i_crit_edge ], [ 10, %do.body211.i.if.end351.sink.split.i_crit_edge ], [ 10, %do.body241.i.if.end351.sink.split.i_crit_edge ], [ 10, %do.end260.i ], [ 10, %do.body255.i.if.end351.sink.split.i_crit_edge ], [ 50, %do.end67.i.if.end351.sink.split.i_crit_edge ], [ 15, %if.then4.i.i ], [ 0, %if.then81.i.i ], [ 20, %if.then.i.i ], [ 0, %if.end63.i.i ], [ 10, %if.end32.i.i.if.end351.sink.split.i_crit_edge ], [ 10, %if.then38.i.i ]
  %167 = ptrtoint ptr %tune_state1.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %.sink.i.sink.i, ptr %tune_state1.i, align 4
  br label %if.then

if.then:                                          ; preds = %if.end351.sink.split.i, %if.then276.i.if.then_crit_edge
  %ret.0.i.ph = phi i8 [ %ret.0.ph.i, %if.end351.sink.split.i ], [ 0, %if.then276.i.if.then_crit_edge ]
  %div9 = udiv i8 %ret.0.i.ph, 10
  %div.zext = zext i8 %div9 to i32
  tail call void @msleep(i32 noundef %div.zext) #7
  %168 = ptrtoint ptr %tune_state to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tune_state, align 4
  %cmp2.not = icmp eq i32 %169, 19
  br i1 %cmp2.not, label %if.then.do.end_crit_edge, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.then.do.end_crit_edge, %if.else278.i.do.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dib0070_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %current_rf = getelementptr inbounds %struct.dib0070_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %current_rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %current_rf, align 4
  %mul = mul i32 %3, 1000
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mul, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !36, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !114, !116, !118, !119, !120, !121, !123, !124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 25, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 245, i32 4}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dib0070_ctrl_agc_filter._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @dib0070_ctrl_agc_filter._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_dib0070_ctrl_agc_filter, !12, !"__ksymtab_dib0070_ctrl_agc_filter", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 251, i32 1}
!13 = !{ptr @__ksymtab_dib0070_get_rf_output, !14, !"__ksymtab_dib0070_get_rf_output", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 547, i32 1}
!15 = !{ptr @__ksymtab_dib0070_set_rf_output, !16, !"__ksymtab_dib0070_set_rf_output", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 559, i32 1}
!17 = !{ptr @__ksymtab_dib0070_wbd_offset, !18, !"__ksymtab_dib0070_wbd_offset", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 638, i32 1}
!19 = !{ptr @dib0070_attach.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 748, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 754, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dib0070_attach._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @dib0070_attach._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_dib0070_attach, !28, !"__ksymtab_dib0070_attach", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 765, i32 1}
!29 = !{ptr @__UNIQUE_ID_author292, !30, !"__UNIQUE_ID_author292", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 767, i32 1}
!31 = !{ptr @__UNIQUE_ID_description293, !32, !"__UNIQUE_ID_description293", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 768, i32 1}
!33 = !{ptr @__UNIQUE_ID_file294, !34, !"__UNIQUE_ID_file294", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 769, i32 1}
!35 = !{ptr @__UNIQUE_ID_license295, !34, !"__UNIQUE_ID_license295", i1 false, i1 false}
!36 = !{ptr @debug, !37, !"debug", i1 false, i1 false}
!37 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 23, i32 12}
!38 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 106, i32 3}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dib0070_write_reg._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @dib0070_write_reg._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 120, i32 3}
!46 = !{ptr @dib0070_write_reg._entry.8, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @dib0070_write_reg._entry_ptr.10, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 74, i32 3}
!50 = !{ptr @dib0070_read_reg._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @dib0070_read_reg._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 91, i32 3}
!54 = !{ptr @dib0070_read_reg._entry.12, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @dib0070_read_reg._entry_ptr.14, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 659, i32 2}
!58 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dib0070_reset._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @dib0070_reset._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 662, i32 3}
!63 = !{ptr @dib0070_reset._entry.17, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @dib0070_reset._entry_ptr.19, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @dib0070_p1f_defaults, !66, !"dib0070_p1f_defaults", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 561, i32 18}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 230, i32 2}
!69 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @dib0070_set_ctrl_lo5._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @dib0070_set_ctrl_lo5._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 619, i32 3}
!74 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dib0070_wbd_offset_calibration._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @dib0070_wbd_offset_calibration._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @dib0070_ops, !78, !"dib0070_ops", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 722, i32 35}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 369, i32 3}
!81 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @dib0070_tune_digital._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @dib0070_tune_digital._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 447, i32 4}
!86 = !{ptr @dib0070_tune_digital._entry.26, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @dib0070_tune_digital._entry_ptr.28, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 448, i32 4}
!90 = !{ptr @dib0070_tune_digital._entry.29, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @dib0070_tune_digital._entry_ptr.31, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 449, i32 4}
!94 = !{ptr @dib0070_tune_digital._entry.32, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @dib0070_tune_digital._entry_ptr.34, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 451, i32 4}
!98 = !{ptr @dib0070_tune_digital._entry.35, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @dib0070_tune_digital._entry_ptr.37, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 453, i32 4}
!102 = !{ptr @dib0070_tune_digital._entry.38, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @dib0070_tune_digital._entry_ptr.40, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 455, i32 4}
!106 = !{ptr @dib0070_tune_digital._entry.41, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @dib0070_tune_digital._entry_ptr.43, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @dib0070s_tuning_table, !109, !"dib0070s_tuning_table", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 268, i32 36}
!110 = !{ptr @dib0070_lna, !111, !"dib0070_lna", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 304, i32 39}
!112 = !{ptr @dib0070_tuning_table, !113, !"dib0070_tuning_table", i1 false, i1 false}
!113 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 278, i32 36}
!114 = !{ptr @dib0070_lna_flip_chip, !115, !"dib0070_lna_flip_chip", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 289, i32 39}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 192, i32 3}
!118 = !{ptr @.str.45, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @dib0070_captrim._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @dib0070_captrim._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-frontends/dib0070.c", i32 204, i32 4}
!123 = !{ptr @dib0070_captrim._entry.46, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @dib0070_captrim._entry_ptr.48, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
