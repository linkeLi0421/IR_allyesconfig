; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/dib3000mb.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/dib3000mb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dib3000mb_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_dib3000mb_attach\09\09\09\09"
module asm "\09.long\09__crc_dib3000mb_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dib3000mb_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22dib3000mb_attach\22\09\09\09\09\09"
module asm "__kstrtabns_dib3000mb_attach:\09\09\09\09\09"
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dib3000_state = type { ptr, %struct.dib3000_config, %struct.dvb_frontend, i32, i32, i32, i32 }
%struct.dib3000_config = type { i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.dib_fe_xfer_ops = type { ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [16 x i8] c"dib3000mb.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [29 x i8] c"dib3000mb.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [83 x i8] c"dib3000mb.parm=debug:set debugging level (1=info,2=xfer,4=setfe,8=getfe (|-able)).\00", section ".modinfo", align 1
@dib3000mb_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"DiBcom 3000M-B DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44250000, i32 867250000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 1075523247 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @dib3000mb_release, ptr null, ptr @dib3000mb_fe_init_nonmobile, ptr @dib3000mb_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dib3000mb_set_frontend_and_tuner, ptr @dib3000mb_fe_get_tune_settings, ptr @dib3000mb_get_frontend, ptr @dib3000mb_read_status, ptr @dib3000mb_read_ber, ptr @dib3000mb_read_signal_strength, ptr @dib3000mb_read_snr, ptr @dib3000mb_read_unc_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author292 = internal constant [64 x i8] c"dib3000mb.author=Patrick Boettcher, patrick.boettcher@posteo.de\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [55 x i8] c"dib3000mb.description=DiBcom 3000M-B DVB-T demodulator\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [53 x i8] c"dib3000mb.file=drivers/media/dvb-frontends/dib3000mb\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [22 x i8] c"dib3000mb.license=GPL\00", section ".modinfo", align 1
@__kstrtab_dib3000mb_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_dib3000mb_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_dib3000mb_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dib3000mb_attach to i32), ptr @__kstrtab_dib3000mb_attach, ptr @__kstrtabns_dib3000mb_attach }, section "___ksymtab+dib3000mb_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dib3000_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017dib3000mb: %s: i2c read error\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dib3000_read_reg\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/dvb-frontends/dib3000mb.c\00", [56 x i8] zeroinitializer }, align 32
@dib3000_read_reg._entry_ptr = internal global ptr @dib3000_read_reg._entry, section ".printk_index", align 4
@dib3000_read_reg._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017dib3000mb: %s: reading i2c bus (reg: %5d 0x%04x, val: %5d 0x%04x)\0A\00", [59 x i8] zeroinitializer }, align 32
@dib3000_read_reg._entry_ptr.5 = internal global ptr @dib3000_read_reg._entry.3, section ".printk_index", align 4
@dib3000mb_pid_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 725, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017dib3000mb: %s: %s pid parsing\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dib3000mb_pid_parse\00", [44 x i8] zeroinitializer }, align 32
@dib3000mb_pid_parse._entry_ptr = internal global ptr @dib3000mb_pid_parse._entry, section ".printk_index", align 4
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enabling\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disabling\00", [22 x i8] zeroinitializer }, align 32
@dib3000mb_pid_parse._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.2, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013dib3000mb: while sending 0x%04x to 0x%04x.\00", [51 x i8] zeroinitializer }, align 32
@dib3000mb_pid_parse._entry_ptr.12 = internal global ptr @dib3000mb_pid_parse._entry.10, section ".printk_index", align 4
@dib3000_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017dib3000mb: %s: writing i2c bus (reg: %5d 0x%04x, val: %5d 0x%04x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dib3000_write_reg\00", [46 x i8] zeroinitializer }, align 32
@dib3000_write_reg._entry_ptr = internal global ptr @dib3000_write_reg._entry, section ".printk_index", align 4
@dib3000mb_fifo_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017dib3000mb: %s: %s fifo\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dib3000mb_fifo_control\00", [41 x i8] zeroinitializer }, align 32
@dib3000mb_fifo_control._entry_ptr = internal global ptr @dib3000mb_fifo_control._entry, section ".printk_index", align 4
@dib3000mb_fifo_control._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.16, ptr @.str.2, i32 715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fifo_control._entry_ptr.18 = internal global ptr @dib3000mb_fifo_control._entry.17, section ".printk_index", align 4
@dib3000mb_fifo_control._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.16, ptr @.str.2, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fifo_control._entry_ptr.20 = internal global ptr @dib3000mb_fifo_control._entry.19, section ".printk_index", align 4
@dib3000mb_pid_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.21, ptr @.str.2, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dib3000mb_pid_control\00", [42 x i8] zeroinitializer }, align 32
@dib3000mb_pid_control._entry_ptr = internal global ptr @dib3000mb_pid_control._entry, section ".printk_index", align 4
@dib3000mb_tuner_pass_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.22, ptr @.str.2, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dib3000mb_tuner_pass_ctrl\00", [38 x i8] zeroinitializer }, align 32
@dib3000mb_tuner_pass_ctrl._entry_ptr = internal global ptr @dib3000mb_tuner_pass_ctrl._entry, section ".printk_index", align 4
@dib3000mb_tuner_pass_ctrl._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.22, ptr @.str.2, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_tuner_pass_ctrl._entry_ptr.24 = internal global ptr @dib3000mb_tuner_pass_ctrl._entry.23, section ".printk_index", align 4
@dib3000mb_fe_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017dib3000mb: %s: dib3000mb is getting up.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dib3000mb_fe_init\00", [46 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr = internal global ptr @dib3000mb_fe_init._entry, section ".printk_index", align 4
@dib3000mb_fe_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.28 = internal global ptr @dib3000mb_fe_init._entry.27, section ".printk_index", align 4
@dib3000mb_fe_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.30 = internal global ptr @dib3000mb_fe_init._entry.29, section ".printk_index", align 4
@dib3000mb_fe_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.32 = internal global ptr @dib3000mb_fe_init._entry.31, section ".printk_index", align 4
@dib3000mb_fe_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.34 = internal global ptr @dib3000mb_fe_init._entry.33, section ".printk_index", align 4
@dib3000mb_fe_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.36 = internal global ptr @dib3000mb_fe_init._entry.35, section ".printk_index", align 4
@dib3000mb_fe_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.38 = internal global ptr @dib3000mb_fe_init._entry.37, section ".printk_index", align 4
@dib3000mb_fe_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.40 = internal global ptr @dib3000mb_fe_init._entry.39, section ".printk_index", align 4
@dib3000mb_fe_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.42 = internal global ptr @dib3000mb_fe_init._entry.41, section ".printk_index", align 4
@dib3000mb_fe_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.44 = internal global ptr @dib3000mb_fe_init._entry.43, section ".printk_index", align 4
@dib3000mb_reg_impulse_noise = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 10, i16 11, i16 12, i16 15, i16 36], [22 x i8] zeroinitializer }, align 32
@dib3000mb_impulse_noise_values = internal constant { [4 x [5 x i16]], [56 x i8] } { [4 x [5 x i16]] [[5 x i16] [i16 0, i16 4, i16 20, i16 511, i16 921], [5 x i16] [i16 1, i16 4, i16 20, i16 511, i16 891], [5 x i16] [i16 1, i16 4, i16 32, i16 445, i16 921], [5 x i16] [i16 0, i16 2, i16 10, i16 511, i16 921]], [56 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.46 = internal global ptr @dib3000mb_fe_init._entry.45, section ".printk_index", align 4
@dib3000mb_reg_agc_gain = internal constant { [14 x i16], [36 x i8] } { [14 x i16] [i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32], [36 x i8] zeroinitializer }, align 32
@dib3000mb_default_agc_gain = internal constant { [14 x i16], [36 x i8] } { [14 x i16] [i16 1, i16 -13107, i16 623, i16 128, i16 166, i16 195, i16 61, i16 1, i16 -11770, i16 -27525, i16 0, i16 90, i16 33, i16 23], [36 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.48 = internal global ptr @dib3000mb_fe_init._entry.47, section ".printk_index", align 4
@dib3000mb_fe_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.50 = internal global ptr @dib3000mb_fe_init._entry.49, section ".printk_index", align 4
@dib3000mb_reg_phase_noise = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 33, i16 34, i16 35, i16 37, i16 38], [22 x i8] zeroinitializer }, align 32
@dib3000mb_default_noise_phase = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 2, i16 544, i16 0, i16 5, i16 4], [22 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.52 = internal global ptr @dib3000mb_fe_init._entry.51, section ".printk_index", align 4
@dib3000mb_fe_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.54 = internal global ptr @dib3000mb_fe_init._entry.53, section ".printk_index", align 4
@dib3000mb_reg_agc_bandwidth = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50], [16 x i8] zeroinitializer }, align 32
@dib3000mb_agc_bandwidth_low = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 2088, i16 10, i16 2088, i16 10, i16 3448, i16 5, i16 3448, i16 5], [16 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.56 = internal global ptr @dib3000mb_fe_init._entry.55, section ".printk_index", align 4
@dib3000mb_fe_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.58 = internal global ptr @dib3000mb_fe_init._entry.57, section ".printk_index", align 4
@dib3000mb_fe_init._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.60 = internal global ptr @dib3000mb_fe_init._entry.59, section ".printk_index", align 4
@dib3000mb_fe_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.62 = internal global ptr @dib3000mb_fe_init._entry.61, section ".printk_index", align 4
@dib3000_seq = internal constant { [2 x [2 x [2 x i16]]], [16 x i8] } { [2 x [2 x [2 x i16]]] [[2 x [2 x i16]] [[2 x i16] [i16 0, i16 1], [2 x i16] [i16 3, i16 9]], [2 x [2 x i16]] [[2 x i16] [i16 2, i16 5], [2 x i16] [i16 6, i16 11]]], [16 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.64 = internal global ptr @dib3000mb_fe_init._entry.63, section ".printk_index", align 4
@dib3000mb_reg_bandwidth = internal constant { [13 x i16], [38 x i8] } { [13 x i16] [i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67], [38 x i8] zeroinitializer }, align 32
@dib3000mb_bandwidth_8mhz = internal constant { [13 x i16], [38 x i8] } { [13 x i16] [i16 0, i16 25, i16 23600, i16 84, i16 -30560, i16 422, i16 -21728, i16 0, i16 1000, i16 0, i16 1010, i16 1, i16 -20272], [38 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.66 = internal global ptr @dib3000mb_fe_init._entry.65, section ".printk_index", align 4
@dib3000mb_fe_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.68 = internal global ptr @dib3000mb_fe_init._entry.67, section ".printk_index", align 4
@dib3000mb_fe_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.70 = internal global ptr @dib3000mb_fe_init._entry.69, section ".printk_index", align 4
@dib3000mb_fe_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.72 = internal global ptr @dib3000mb_fe_init._entry.71, section ".printk_index", align 4
@dib3000mb_fe_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.74 = internal global ptr @dib3000mb_fe_init._entry.73, section ".printk_index", align 4
@dib3000mb_fe_init._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.76 = internal global ptr @dib3000mb_fe_init._entry.75, section ".printk_index", align 4
@dib3000mb_fe_init._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.78 = internal global ptr @dib3000mb_fe_init._entry.77, section ".printk_index", align 4
@dib3000mb_fe_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.80 = internal global ptr @dib3000mb_fe_init._entry.79, section ".printk_index", align 4
@dib3000mb_fe_init._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.82 = internal global ptr @dib3000mb_fe_init._entry.81, section ".printk_index", align 4
@dib3000mb_fe_init._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.84 = internal global ptr @dib3000mb_fe_init._entry.83, section ".printk_index", align 4
@dib3000mb_fe_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.86 = internal global ptr @dib3000mb_fe_init._entry.85, section ".printk_index", align 4
@dib3000mb_fe_init._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.88 = internal global ptr @dib3000mb_fe_init._entry.87, section ".printk_index", align 4
@dib3000mb_fe_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.90 = internal global ptr @dib3000mb_fe_init._entry.89, section ".printk_index", align 4
@dib3000mb_fe_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.92 = internal global ptr @dib3000mb_fe_init._entry.91, section ".printk_index", align 4
@dib3000mb_fe_init._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.94 = internal global ptr @dib3000mb_fe_init._entry.93, section ".printk_index", align 4
@dib3000mb_fe_init._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.96 = internal global ptr @dib3000mb_fe_init._entry.95, section ".printk_index", align 4
@dib3000mb_reg_filter_coeffs = internal constant { [22 x i16], [52 x i8] } { [22 x i16] [i16 171, i16 172, i16 173, i16 174, i16 175, i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183, i16 184, i16 185, i16 186, i16 188, i16 189, i16 190, i16 191, i16 192, i16 194], [52 x i8] zeroinitializer }, align 32
@dib3000mb_filter_coeffs = internal constant { [22 x i16], [52 x i8] } { [22 x i16] [i16 226, i16 160, i16 29, i16 979, i16 998, i16 19, i16 22, i16 1019, i16 1006, i16 1022, i16 12, i16 6, i16 1017, i16 1017, i16 3, i16 6, i16 1019, i16 1021, i16 2, i16 3, i16 1, i16 0], [52 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.98 = internal global ptr @dib3000mb_fe_init._entry.97, section ".printk_index", align 4
@dib3000mb_fe_init._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.100 = internal global ptr @dib3000mb_fe_init._entry.99, section ".printk_index", align 4
@dib3000mb_fe_init._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.102 = internal global ptr @dib3000mb_fe_init._entry.101, section ".printk_index", align 4
@dib3000mb_fe_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.104 = internal global ptr @dib3000mb_fe_init._entry.103, section ".printk_index", align 4
@dib3000mb_fe_init._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.106 = internal global ptr @dib3000mb_fe_init._entry.105, section ".printk_index", align 4
@dib3000mb_fe_init._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.108 = internal global ptr @dib3000mb_fe_init._entry.107, section ".printk_index", align 4
@dib3000mb_fe_init._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.110 = internal global ptr @dib3000mb_fe_init._entry.109, section ".printk_index", align 4
@dib3000mb_fe_init._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.112 = internal global ptr @dib3000mb_fe_init._entry.111, section ".printk_index", align 4
@dib3000mb_fe_init._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.114 = internal global ptr @dib3000mb_fe_init._entry.113, section ".printk_index", align 4
@dib3000mb_fe_init._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.116 = internal global ptr @dib3000mb_fe_init._entry.115, section ".printk_index", align 4
@dib3000mb_fe_init._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.118 = internal global ptr @dib3000mb_fe_init._entry.117, section ".printk_index", align 4
@dib3000mb_fe_init._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.26, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_fe_init._entry_ptr.120 = internal global ptr @dib3000mb_fe_init._entry.119, section ".printk_index", align 4
@dib3000mb_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017dib3000mb: %s: dib3000mb is going to bed.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dib3000mb_sleep\00", [16 x i8] zeroinitializer }, align 32
@dib3000mb_sleep._entry_ptr = internal global ptr @dib3000mb_sleep._entry, section ".printk_index", align 4
@dib3000mb_sleep._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.122, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_sleep._entry_ptr.124 = internal global ptr @dib3000mb_sleep._entry.123, section ".printk_index", align 4
@dib3000mb_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dib3000mb_set_frontend\00", [41 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr = internal global ptr @dib3000mb_set_frontend._entry, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.127 = internal global ptr @dib3000mb_set_frontend._entry.126, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.129 = internal global ptr @dib3000mb_set_frontend._entry.128, section ".printk_index", align 4
@dib3000mb_bandwidth_7mhz = internal constant { [13 x i16], [38 x i8] } { [13 x i16] [i16 0, i16 28, i16 -1115, i16 96, i16 -25563, i16 483, i16 3255, i16 0, i16 1000, i16 0, i16 1010, i16 1, i16 -20272], [38 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.131 = internal global ptr @dib3000mb_set_frontend._entry.130, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.133 = internal global ptr @dib3000mb_set_frontend._entry.132, section ".printk_index", align 4
@dib3000mb_bandwidth_6mhz = internal constant { [13 x i16], [38 x i8] } { [13 x i16] [i16 0, i16 33, i16 -12224, i16 112, i16 -18901, i16 563, i16 -28971, i16 0, i16 1000, i16 0, i16 1010, i16 1, i16 -20272], [38 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.135 = internal global ptr @dib3000mb_set_frontend._entry.134, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.125, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013dib3000mb: unknown bandwidth value.\0A\00", [57 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.138 = internal global ptr @dib3000mb_set_frontend._entry.136, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.125, ptr @.str.2, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017dib3000mb: %s: bandwidth: %d MHZ\0A\00", [60 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.141 = internal global ptr @dib3000mb_set_frontend._entry.139, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.143 = internal global ptr @dib3000mb_set_frontend._entry.142, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.125, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017dib3000mb: %s: transmission mode: 2k\0A\00", [56 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.146 = internal global ptr @dib3000mb_set_frontend._entry.144, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.148 = internal global ptr @dib3000mb_set_frontend._entry.147, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.125, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017dib3000mb: %s: transmission mode: 8k\0A\00", [56 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.151 = internal global ptr @dib3000mb_set_frontend._entry.149, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.153 = internal global ptr @dib3000mb_set_frontend._entry.152, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.125, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017dib3000mb: %s: transmission mode: auto\0A\00", [54 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.156 = internal global ptr @dib3000mb_set_frontend._entry.154, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.125, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017dib3000mb: %s: guard 1_32\0A\00", [35 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.159 = internal global ptr @dib3000mb_set_frontend._entry.157, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.161 = internal global ptr @dib3000mb_set_frontend._entry.160, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.125, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017dib3000mb: %s: guard 1_16\0A\00", [35 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.164 = internal global ptr @dib3000mb_set_frontend._entry.162, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.166 = internal global ptr @dib3000mb_set_frontend._entry.165, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.125, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017dib3000mb: %s: guard 1_8\0A\00", [36 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.169 = internal global ptr @dib3000mb_set_frontend._entry.167, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.171 = internal global ptr @dib3000mb_set_frontend._entry.170, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.125, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017dib3000mb: %s: guard 1_4\0A\00", [36 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.174 = internal global ptr @dib3000mb_set_frontend._entry.172, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.176 = internal global ptr @dib3000mb_set_frontend._entry.175, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.125, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017dib3000mb: %s: guard auto\0A\00", [35 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.179 = internal global ptr @dib3000mb_set_frontend._entry.177, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.125, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017dib3000mb: %s: inversion off\0A\00", [32 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.182 = internal global ptr @dib3000mb_set_frontend._entry.180, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.184 = internal global ptr @dib3000mb_set_frontend._entry.183, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.125, ptr @.str.2, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017dib3000mb: %s: inversion auto\0A\00", [63 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.187 = internal global ptr @dib3000mb_set_frontend._entry.185, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.125, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017dib3000mb: %s: inversion on\0A\00", [33 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.190 = internal global ptr @dib3000mb_set_frontend._entry.188, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.192 = internal global ptr @dib3000mb_set_frontend._entry.191, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.125, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017dib3000mb: %s: modulation: qpsk\0A\00", [61 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.195 = internal global ptr @dib3000mb_set_frontend._entry.193, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.197 = internal global ptr @dib3000mb_set_frontend._entry.196, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.125, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017dib3000mb: %s: modulation: qam16\0A\00", [60 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.200 = internal global ptr @dib3000mb_set_frontend._entry.198, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.202 = internal global ptr @dib3000mb_set_frontend._entry.201, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.125, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017dib3000mb: %s: modulation: qam64\0A\00", [60 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.205 = internal global ptr @dib3000mb_set_frontend._entry.203, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.207 = internal global ptr @dib3000mb_set_frontend._entry.206, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.125, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017dib3000mb: %s: hierarchy: none\0A\00", [62 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.210 = internal global ptr @dib3000mb_set_frontend._entry.208, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.125, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dib3000mb: %s: hierarchy: alpha=1\0A\00", [59 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.213 = internal global ptr @dib3000mb_set_frontend._entry.211, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.215 = internal global ptr @dib3000mb_set_frontend._entry.214, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.125, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dib3000mb: %s: hierarchy: alpha=2\0A\00", [59 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.218 = internal global ptr @dib3000mb_set_frontend._entry.216, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.220 = internal global ptr @dib3000mb_set_frontend._entry.219, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.125, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dib3000mb: %s: hierarchy: alpha=4\0A\00", [59 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.223 = internal global ptr @dib3000mb_set_frontend._entry.221, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.225 = internal global ptr @dib3000mb_set_frontend._entry.224, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.125, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017dib3000mb: %s: hierarchy: alpha=auto\0A\00", [56 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.228 = internal global ptr @dib3000mb_set_frontend._entry.226, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.230 = internal global ptr @dib3000mb_set_frontend._entry.229, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.232 = internal global ptr @dib3000mb_set_frontend._entry.231, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.233 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.234 = internal global ptr @dib3000mb_set_frontend._entry.233, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.236 = internal global ptr @dib3000mb_set_frontend._entry.235, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.125, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017dib3000mb: %s: fec: 1_2\0A\00", [37 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.239 = internal global ptr @dib3000mb_set_frontend._entry.237, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.241 = internal global ptr @dib3000mb_set_frontend._entry.240, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.125, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017dib3000mb: %s: fec: 2_3\0A\00", [37 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.244 = internal global ptr @dib3000mb_set_frontend._entry.242, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.246 = internal global ptr @dib3000mb_set_frontend._entry.245, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.125, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017dib3000mb: %s: fec: 3_4\0A\00", [37 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.249 = internal global ptr @dib3000mb_set_frontend._entry.247, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.251 = internal global ptr @dib3000mb_set_frontend._entry.250, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.125, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017dib3000mb: %s: fec: 5_6\0A\00", [37 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.254 = internal global ptr @dib3000mb_set_frontend._entry.252, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.256 = internal global ptr @dib3000mb_set_frontend._entry.255, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.125, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017dib3000mb: %s: fec: 7_8\0A\00", [37 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.259 = internal global ptr @dib3000mb_set_frontend._entry.257, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.261 = internal global ptr @dib3000mb_set_frontend._entry.260, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.125, ptr @.str.2, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017dib3000mb: %s: fec: none\0A\00", [36 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.264 = internal global ptr @dib3000mb_set_frontend._entry.262, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.125, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017dib3000mb: %s: fec: auto\0A\00", [36 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.267 = internal global ptr @dib3000mb_set_frontend._entry.265, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.125, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017dib3000mb: %s: seq? %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.270 = internal global ptr @dib3000mb_set_frontend._entry.268, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.272 = internal global ptr @dib3000mb_set_frontend._entry.271, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.274 = internal global ptr @dib3000mb_set_frontend._entry.273, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.276 = internal global ptr @dib3000mb_set_frontend._entry.275, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.278 = internal global ptr @dib3000mb_set_frontend._entry.277, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.280 = internal global ptr @dib3000mb_set_frontend._entry.279, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.282 = internal global ptr @dib3000mb_set_frontend._entry.281, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.284 = internal global ptr @dib3000mb_set_frontend._entry.283, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.285 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.286 = internal global ptr @dib3000mb_set_frontend._entry.285, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.288 = internal global ptr @dib3000mb_set_frontend._entry.287, section ".printk_index", align 4
@dib3000mb_agc_bandwidth_high = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 2349, i16 5, i16 2349, i16 5, i16 2586, i16 2, i16 2586, i16 2], [16 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.290 = internal global ptr @dib3000mb_set_frontend._entry.289, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.292 = internal global ptr @dib3000mb_set_frontend._entry.291, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.294 = internal global ptr @dib3000mb_set_frontend._entry.293, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.296 = internal global ptr @dib3000mb_set_frontend._entry.295, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.298 = internal global ptr @dib3000mb_set_frontend._entry.297, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.300, ptr @.str.125, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017dib3000mb: %s: autosearch enabled.\0A\00", [58 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.301 = internal global ptr @dib3000mb_set_frontend._entry.299, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.303 = internal global ptr @dib3000mb_set_frontend._entry.302, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.304 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.305 = internal global ptr @dib3000mb_set_frontend._entry.304, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.307 = internal global ptr @dib3000mb_set_frontend._entry.306, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.308 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.309, ptr @.str.125, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017dib3000mb: %s: search_state after autosearch %d after %d checks\0A\00", [61 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.310 = internal global ptr @dib3000mb_set_frontend._entry.308, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.125, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017dib3000mb: %s: reading tuning data from frontend succeeded.\0A\00", [33 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.313 = internal global ptr @dib3000mb_set_frontend._entry.311, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.315 = internal global ptr @dib3000mb_set_frontend._entry.314, section ".printk_index", align 4
@dib3000mb_set_frontend._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.125, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_set_frontend._entry_ptr.317 = internal global ptr @dib3000mb_set_frontend._entry.316, section ".printk_index", align 4
@dib3000_search_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.318, ptr @.str.319, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017dib3000mb: %s: auto search succeeded\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dib3000_search_status\00", [42 x i8] zeroinitializer }, align 32
@dib3000_search_status._entry_ptr = internal global ptr @dib3000_search_status._entry, section ".printk_index", align 4
@dib3000_search_status._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.319, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017dib3000mb: %s: auto search not successful\0A\00", [51 x i8] zeroinitializer }, align 32
@dib3000_search_status._entry_ptr.322 = internal global ptr @dib3000_search_status._entry.320, section ".printk_index", align 4
@dib3000_search_status._entry.323 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.319, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dib3000mb: %s: auto search failed\0A\00", [59 x i8] zeroinitializer }, align 32
@dib3000_search_status._entry_ptr.325 = internal global ptr @dib3000_search_status._entry.323, section ".printk_index", align 4
@dib3000mb_get_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.327, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017dib3000mb: %s: DDS_VAL: %x %x %x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dib3000mb_get_frontend\00", [41 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr = internal global ptr @dib3000mb_get_frontend._entry, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.328 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.329, ptr @.str.327, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dib3000mb: %s: DDS_FREQ: %x %x %x\0A\00", [59 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.330 = internal global ptr @dib3000mb_get_frontend._entry.328, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.331 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.332, ptr @.str.327, ptr @.str.2, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017dib3000mb: %s: inversion %d %d, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.333 = internal global ptr @dib3000mb_get_frontend._entry.331, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.334 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.335, ptr @.str.327, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017dib3000mb: %s: QPSK\0A\00", [41 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.336 = internal global ptr @dib3000mb_get_frontend._entry.334, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.337 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.338, ptr @.str.327, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017dib3000mb: %s: QAM16\0A\00", [40 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.339 = internal global ptr @dib3000mb_get_frontend._entry.337, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.340 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.341, ptr @.str.327, ptr @.str.2, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017dib3000mb: %s: QAM64\0A\00", [40 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.342 = internal global ptr @dib3000mb_get_frontend._entry.340, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.343 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.344, ptr @.str.327, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013dib3000mb: Unexpected constellation returned by TPS (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.345 = internal global ptr @dib3000mb_get_frontend._entry.343, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.346 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @.str.327, ptr @.str.2, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017dib3000mb: %s: TPS: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.348 = internal global ptr @dib3000mb_get_frontend._entry.346, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.349 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.350, ptr @.str.327, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017dib3000mb: %s: HRCH ON\0A\00", [38 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.351 = internal global ptr @dib3000mb_get_frontend._entry.349, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.352 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.353, ptr @.str.327, ptr @.str.2, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017dib3000mb: %s: HIERARCHY_NONE\0A\00", [63 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.354 = internal global ptr @dib3000mb_get_frontend._entry.352, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.355 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.356, ptr @.str.327, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017dib3000mb: %s: HIERARCHY_1\0A\00", [34 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.357 = internal global ptr @dib3000mb_get_frontend._entry.355, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.358 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.359, ptr @.str.327, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017dib3000mb: %s: HIERARCHY_2\0A\00", [34 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.360 = internal global ptr @dib3000mb_get_frontend._entry.358, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.361 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.362, ptr @.str.327, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017dib3000mb: %s: HIERARCHY_4\0A\00", [34 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.363 = internal global ptr @dib3000mb_get_frontend._entry.361, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.364 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.365, ptr @.str.327, ptr @.str.2, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013dib3000mb: Unexpected ALPHA value returned by TPS (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.366 = internal global ptr @dib3000mb_get_frontend._entry.364, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.367 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @.str.327, ptr @.str.2, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.368 = internal global ptr @dib3000mb_get_frontend._entry.367, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.369 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.370, ptr @.str.327, ptr @.str.2, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017dib3000mb: %s: HRCH OFF\0A\00", [37 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.371 = internal global ptr @dib3000mb_get_frontend._entry.369, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.372 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.373, ptr @.str.327, ptr @.str.2, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017dib3000mb: %s: FEC_1_2\0A\00", [38 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.374 = internal global ptr @dib3000mb_get_frontend._entry.372, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.375 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.376, ptr @.str.327, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017dib3000mb: %s: FEC_2_3\0A\00", [38 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.377 = internal global ptr @dib3000mb_get_frontend._entry.375, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.378 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.379, ptr @.str.327, ptr @.str.2, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017dib3000mb: %s: FEC_3_4\0A\00", [38 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.380 = internal global ptr @dib3000mb_get_frontend._entry.378, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.381 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.382, ptr @.str.327, ptr @.str.2, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017dib3000mb: %s: FEC_5_6\0A\00", [38 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.383 = internal global ptr @dib3000mb_get_frontend._entry.381, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.384 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.385, ptr @.str.327, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.385 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017dib3000mb: %s: FEC_7_8\0A\00", [38 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.386 = internal global ptr @dib3000mb_get_frontend._entry.384, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.387 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.388, ptr @.str.327, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013dib3000mb: Unexpected FEC returned by TPS (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.389 = internal global ptr @dib3000mb_get_frontend._entry.387, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.390 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @.str.327, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.391 = internal global ptr @dib3000mb_get_frontend._entry.390, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.392 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.393, ptr @.str.327, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017dib3000mb: %s: GUARD_INTERVAL_1_32\0A\00", [58 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.394 = internal global ptr @dib3000mb_get_frontend._entry.392, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.395 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.396, ptr @.str.327, ptr @.str.2, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017dib3000mb: %s: GUARD_INTERVAL_1_16\0A\00", [58 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.397 = internal global ptr @dib3000mb_get_frontend._entry.395, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.398 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.399, ptr @.str.327, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dib3000mb: %s: GUARD_INTERVAL_1_8\0A\00", [59 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.400 = internal global ptr @dib3000mb_get_frontend._entry.398, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.401 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.402, ptr @.str.327, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dib3000mb: %s: GUARD_INTERVAL_1_4\0A\00", [59 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.403 = internal global ptr @dib3000mb_get_frontend._entry.401, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.404 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.405, ptr @.str.327, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013dib3000mb: Unexpected Guard Time returned by TPS (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.406 = internal global ptr @dib3000mb_get_frontend._entry.404, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.407 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @.str.327, ptr @.str.2, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.408 = internal global ptr @dib3000mb_get_frontend._entry.407, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.409 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.410, ptr @.str.327, ptr @.str.2, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dib3000mb: %s: TRANSMISSION_MODE_2K\0A\00", [57 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.411 = internal global ptr @dib3000mb_get_frontend._entry.409, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.412 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.413, ptr @.str.327, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dib3000mb: %s: TRANSMISSION_MODE_8K\0A\00", [57 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.414 = internal global ptr @dib3000mb_get_frontend._entry.412, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.415 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.416, ptr @.str.327, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013dib3000mb: unexpected transmission mode return by TPS (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.417 = internal global ptr @dib3000mb_get_frontend._entry.415, section ".printk_index", align 4
@dib3000mb_get_frontend._entry.418 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @.str.327, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dib3000mb_get_frontend._entry_ptr.419 = internal global ptr @dib3000mb_get_frontend._entry.418, section ".printk_index", align 4
@dib3000mb_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.420, ptr @.str.421, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017dib3000mb: %s: actual status is %2x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.421 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dib3000mb_read_status\00", [42 x i8] zeroinitializer }, align 32
@dib3000mb_read_status._entry_ptr = internal global ptr @dib3000mb_read_status._entry, section ".printk_index", align 4
@dib3000mb_read_status._entry.422 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.423, ptr @.str.421, ptr @.str.2, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\017dib3000mb: %s: autoval: tps: %d, qam: %d, hrch: %d, alpha: %d, hp: %d, lp: %d, guard: %d, fft: %d cell: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@dib3000mb_read_status._entry_ptr.424 = internal global ptr @dib3000mb_read_status._entry.422, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.425 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.426 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.427 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.428 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.429 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.430 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.431 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.432 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.433 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 6]
@__sancov_gen_cov_switch_values.434 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.435 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.436 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 7, i64 9]
@___asan_gen_.437 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 39, i32 12 }
@___asan_gen_.440 = private unnamed_addr constant [14 x i8] c"dib3000mb_ops\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 781, i32 38 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 61, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 63, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 725, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 726, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 78, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 713, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 715, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 717, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 705, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 734, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 736, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 368, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 369, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 371, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 373, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 374, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 376, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 378, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 380, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 381, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 383, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant [28 x i8] c"dib3000mb_reg_impulse_noise\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 142, i32 12 }
@___asan_gen_.560 = private unnamed_addr constant [31 x i8] c"dib3000mb_impulse_noise_values\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 151, i32 12 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 385, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [23 x i8] c"dib3000mb_reg_agc_gain\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 165, i32 12 }
@___asan_gen_.569 = private unnamed_addr constant [27 x i8] c"dib3000mb_default_agc_gain\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 169, i32 12 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 388, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 390, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant [26 x i8] c"dib3000mb_reg_phase_noise\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 175, i32 12 }
@___asan_gen_.581 = private unnamed_addr constant [30 x i8] c"dib3000mb_default_noise_phase\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 177, i32 12 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 392, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 394, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant [28 x i8] c"dib3000mb_reg_agc_bandwidth\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 184, i32 12 }
@___asan_gen_.593 = private unnamed_addr constant [28 x i8] c"dib3000mb_agc_bandwidth_low\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 186, i32 12 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 396, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 398, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 399, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 400, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant [12 x i8] c"dib3000_seq\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 101, i32 12 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 401, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant [24 x i8] c"dib3000mb_reg_bandwidth\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 220, i32 12 }
@___asan_gen_.617 = private unnamed_addr constant [25 x i8] c"dib3000mb_bandwidth_8mhz\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 227, i32 12 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 403, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 405, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 406, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 407, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 408, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 409, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 410, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 411, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 412, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 413, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 414, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 415, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 416, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 417, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 418, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 419, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant [28 x i8] c"dib3000mb_reg_filter_coeffs\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 373, i32 12 }
@___asan_gen_.671 = private unnamed_addr constant [24 x i8] c"dib3000mb_filter_coeffs\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 379, i32 12 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 421, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 423, i32 2 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 424, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 425, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 427, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 429, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 430, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 431, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 432, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 433, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 434, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 436, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 673, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 674, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 129, i32 5 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 130, i32 5 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 133, i32 5 }
@___asan_gen_.734 = private unnamed_addr constant [25 x i8] c"dib3000mb_bandwidth_7mhz\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 224, i32 12 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 134, i32 5 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 137, i32 5 }
@___asan_gen_.743 = private unnamed_addr constant [25 x i8] c"dib3000mb_bandwidth_6mhz\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 221, i32 12 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 138, i32 5 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 143, i32 5 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 146, i32 3 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 148, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 152, i32 4 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 153, i32 4 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 156, i32 4 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 157, i32 4 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 160, i32 4 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 168, i32 4 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 169, i32 4 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 172, i32 4 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 173, i32 4 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 176, i32 4 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 177, i32 4 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 180, i32 4 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 181, i32 4 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 184, i32 4 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 192, i32 4 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 193, i32 4 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 196, i32 4 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 199, i32 4 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 200, i32 4 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 208, i32 4 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 209, i32 4 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 212, i32 4 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 213, i32 4 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 216, i32 4 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 217, i32 4 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 226, i32 4 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 229, i32 4 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 230, i32 4 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 233, i32 4 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 234, i32 4 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 237, i32 4 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 238, i32 4 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 241, i32 4 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 248, i32 3 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 249, i32 3 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 252, i32 3 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 253, i32 3 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 258, i32 4 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 259, i32 4 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 262, i32 4 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 263, i32 4 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 266, i32 4 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 267, i32 4 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 270, i32 4 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 271, i32 4 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 274, i32 4 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 275, i32 4 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 278, i32 4 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 281, i32 4 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 292, i32 2 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 294, i32 2 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 296, i32 2 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 300, i32 4 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 302, i32 4 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 305, i32 3 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 307, i32 3 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 310, i32 2 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 311, i32 2 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 312, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant [29 x i8] c"dib3000mb_agc_bandwidth_high\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant [48 x i8] c"../drivers/media/dvb-frontends/dib3000mb_priv.h\00", align 1
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1023, i32 188, i32 12 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 314, i32 2 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 316, i32 2 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 318, i32 2 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 319, i32 2 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 324, i32 2 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 333, i32 3 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 335, i32 3 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 337, i32 3 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 338, i32 3 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 346, i32 3 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 351, i32 5 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 357, i32 3 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 358, i32 3 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 87, i32 4 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 90, i32 4 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 94, i32 3 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 454, i32 2 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 463, i32 2 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 476, i32 2 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 480, i32 4 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 484, i32 4 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 488, i32 4 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 492, i32 4 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 495, i32 2 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 498, i32 3 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 503, i32 5 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 507, i32 5 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 511, i32 5 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 515, i32 5 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 519, i32 5 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 522, i32 3 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 526, i32 3 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 536, i32 4 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 540, i32 4 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 544, i32 4 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 548, i32 4 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 552, i32 4 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 556, i32 4 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 559, i32 2 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 563, i32 4 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 567, i32 4 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 571, i32 4 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 575, i32 4 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 579, i32 4 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 582, i32 2 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 586, i32 4 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 590, i32 4 }
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 594, i32 4 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 597, i32 2 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 618, i32 2 }
@___asan_gen_.1292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1295 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1296 = private constant [43 x i8] c"../drivers/media/dvb-frontends/dib3000mb.c\00", align 1
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1296, i32 620, i32 2 }
@llvm.compiler.used = appending global [475 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_dib3000mb_attach, ptr @__param_debug, ptr @dib3000_read_reg._entry, ptr @dib3000_read_reg._entry.3, ptr @dib3000_read_reg._entry_ptr, ptr @dib3000_read_reg._entry_ptr.5, ptr @dib3000_search_status._entry, ptr @dib3000_search_status._entry.320, ptr @dib3000_search_status._entry.323, ptr @dib3000_search_status._entry_ptr, ptr @dib3000_search_status._entry_ptr.322, ptr @dib3000_search_status._entry_ptr.325, ptr @dib3000_write_reg._entry, ptr @dib3000_write_reg._entry_ptr, ptr @dib3000mb_fe_init._entry, ptr @dib3000mb_fe_init._entry.101, ptr @dib3000mb_fe_init._entry.103, ptr @dib3000mb_fe_init._entry.105, ptr @dib3000mb_fe_init._entry.107, ptr @dib3000mb_fe_init._entry.109, ptr @dib3000mb_fe_init._entry.111, ptr @dib3000mb_fe_init._entry.113, ptr @dib3000mb_fe_init._entry.115, ptr @dib3000mb_fe_init._entry.117, ptr @dib3000mb_fe_init._entry.119, ptr @dib3000mb_fe_init._entry.27, ptr @dib3000mb_fe_init._entry.29, ptr @dib3000mb_fe_init._entry.31, ptr @dib3000mb_fe_init._entry.33, ptr @dib3000mb_fe_init._entry.35, ptr @dib3000mb_fe_init._entry.37, ptr @dib3000mb_fe_init._entry.39, ptr @dib3000mb_fe_init._entry.41, ptr @dib3000mb_fe_init._entry.43, ptr @dib3000mb_fe_init._entry.45, ptr @dib3000mb_fe_init._entry.47, ptr @dib3000mb_fe_init._entry.49, ptr @dib3000mb_fe_init._entry.51, ptr @dib3000mb_fe_init._entry.53, ptr @dib3000mb_fe_init._entry.55, ptr @dib3000mb_fe_init._entry.57, ptr @dib3000mb_fe_init._entry.59, ptr @dib3000mb_fe_init._entry.61, ptr @dib3000mb_fe_init._entry.63, ptr @dib3000mb_fe_init._entry.65, ptr @dib3000mb_fe_init._entry.67, ptr @dib3000mb_fe_init._entry.69, ptr @dib3000mb_fe_init._entry.71, ptr @dib3000mb_fe_init._entry.73, ptr @dib3000mb_fe_init._entry.75, ptr @dib3000mb_fe_init._entry.77, ptr @dib3000mb_fe_init._entry.79, ptr @dib3000mb_fe_init._entry.81, ptr @dib3000mb_fe_init._entry.83, ptr @dib3000mb_fe_init._entry.85, ptr @dib3000mb_fe_init._entry.87, ptr @dib3000mb_fe_init._entry.89, ptr @dib3000mb_fe_init._entry.91, ptr @dib3000mb_fe_init._entry.93, ptr @dib3000mb_fe_init._entry.95, ptr @dib3000mb_fe_init._entry.97, ptr @dib3000mb_fe_init._entry.99, ptr @dib3000mb_fe_init._entry_ptr, ptr @dib3000mb_fe_init._entry_ptr.100, ptr @dib3000mb_fe_init._entry_ptr.102, ptr @dib3000mb_fe_init._entry_ptr.104, ptr @dib3000mb_fe_init._entry_ptr.106, ptr @dib3000mb_fe_init._entry_ptr.108, ptr @dib3000mb_fe_init._entry_ptr.110, ptr @dib3000mb_fe_init._entry_ptr.112, ptr @dib3000mb_fe_init._entry_ptr.114, ptr @dib3000mb_fe_init._entry_ptr.116, ptr @dib3000mb_fe_init._entry_ptr.118, ptr @dib3000mb_fe_init._entry_ptr.120, ptr @dib3000mb_fe_init._entry_ptr.28, ptr @dib3000mb_fe_init._entry_ptr.30, ptr @dib3000mb_fe_init._entry_ptr.32, ptr @dib3000mb_fe_init._entry_ptr.34, ptr @dib3000mb_fe_init._entry_ptr.36, ptr @dib3000mb_fe_init._entry_ptr.38, ptr @dib3000mb_fe_init._entry_ptr.40, ptr @dib3000mb_fe_init._entry_ptr.42, ptr @dib3000mb_fe_init._entry_ptr.44, ptr @dib3000mb_fe_init._entry_ptr.46, ptr @dib3000mb_fe_init._entry_ptr.48, ptr @dib3000mb_fe_init._entry_ptr.50, ptr @dib3000mb_fe_init._entry_ptr.52, ptr @dib3000mb_fe_init._entry_ptr.54, ptr @dib3000mb_fe_init._entry_ptr.56, ptr @dib3000mb_fe_init._entry_ptr.58, ptr @dib3000mb_fe_init._entry_ptr.60, ptr @dib3000mb_fe_init._entry_ptr.62, ptr @dib3000mb_fe_init._entry_ptr.64, ptr @dib3000mb_fe_init._entry_ptr.66, ptr @dib3000mb_fe_init._entry_ptr.68, ptr @dib3000mb_fe_init._entry_ptr.70, ptr @dib3000mb_fe_init._entry_ptr.72, ptr @dib3000mb_fe_init._entry_ptr.74, ptr @dib3000mb_fe_init._entry_ptr.76, ptr @dib3000mb_fe_init._entry_ptr.78, ptr @dib3000mb_fe_init._entry_ptr.80, ptr @dib3000mb_fe_init._entry_ptr.82, ptr @dib3000mb_fe_init._entry_ptr.84, ptr @dib3000mb_fe_init._entry_ptr.86, ptr @dib3000mb_fe_init._entry_ptr.88, ptr @dib3000mb_fe_init._entry_ptr.90, ptr @dib3000mb_fe_init._entry_ptr.92, ptr @dib3000mb_fe_init._entry_ptr.94, ptr @dib3000mb_fe_init._entry_ptr.96, ptr @dib3000mb_fe_init._entry_ptr.98, ptr @dib3000mb_fifo_control._entry, ptr @dib3000mb_fifo_control._entry.17, ptr @dib3000mb_fifo_control._entry.19, ptr @dib3000mb_fifo_control._entry_ptr, ptr @dib3000mb_fifo_control._entry_ptr.18, ptr @dib3000mb_fifo_control._entry_ptr.20, ptr @dib3000mb_get_frontend._entry, ptr @dib3000mb_get_frontend._entry.328, ptr @dib3000mb_get_frontend._entry.331, ptr @dib3000mb_get_frontend._entry.334, ptr @dib3000mb_get_frontend._entry.337, ptr @dib3000mb_get_frontend._entry.340, ptr @dib3000mb_get_frontend._entry.343, ptr @dib3000mb_get_frontend._entry.346, ptr @dib3000mb_get_frontend._entry.349, ptr @dib3000mb_get_frontend._entry.352, ptr @dib3000mb_get_frontend._entry.355, ptr @dib3000mb_get_frontend._entry.358, ptr @dib3000mb_get_frontend._entry.361, ptr @dib3000mb_get_frontend._entry.364, ptr @dib3000mb_get_frontend._entry.367, ptr @dib3000mb_get_frontend._entry.369, ptr @dib3000mb_get_frontend._entry.372, ptr @dib3000mb_get_frontend._entry.375, ptr @dib3000mb_get_frontend._entry.378, ptr @dib3000mb_get_frontend._entry.381, ptr @dib3000mb_get_frontend._entry.384, ptr @dib3000mb_get_frontend._entry.387, ptr @dib3000mb_get_frontend._entry.390, ptr @dib3000mb_get_frontend._entry.392, ptr @dib3000mb_get_frontend._entry.395, ptr @dib3000mb_get_frontend._entry.398, ptr @dib3000mb_get_frontend._entry.401, ptr @dib3000mb_get_frontend._entry.404, ptr @dib3000mb_get_frontend._entry.407, ptr @dib3000mb_get_frontend._entry.409, ptr @dib3000mb_get_frontend._entry.412, ptr @dib3000mb_get_frontend._entry.415, ptr @dib3000mb_get_frontend._entry.418, ptr @dib3000mb_get_frontend._entry_ptr, ptr @dib3000mb_get_frontend._entry_ptr.330, ptr @dib3000mb_get_frontend._entry_ptr.333, ptr @dib3000mb_get_frontend._entry_ptr.336, ptr @dib3000mb_get_frontend._entry_ptr.339, ptr @dib3000mb_get_frontend._entry_ptr.342, ptr @dib3000mb_get_frontend._entry_ptr.345, ptr @dib3000mb_get_frontend._entry_ptr.348, ptr @dib3000mb_get_frontend._entry_ptr.351, ptr @dib3000mb_get_frontend._entry_ptr.354, ptr @dib3000mb_get_frontend._entry_ptr.357, ptr @dib3000mb_get_frontend._entry_ptr.360, ptr @dib3000mb_get_frontend._entry_ptr.363, ptr @dib3000mb_get_frontend._entry_ptr.366, ptr @dib3000mb_get_frontend._entry_ptr.368, ptr @dib3000mb_get_frontend._entry_ptr.371, ptr @dib3000mb_get_frontend._entry_ptr.374, ptr @dib3000mb_get_frontend._entry_ptr.377, ptr @dib3000mb_get_frontend._entry_ptr.380, ptr @dib3000mb_get_frontend._entry_ptr.383, ptr @dib3000mb_get_frontend._entry_ptr.386, ptr @dib3000mb_get_frontend._entry_ptr.389, ptr @dib3000mb_get_frontend._entry_ptr.391, ptr @dib3000mb_get_frontend._entry_ptr.394, ptr @dib3000mb_get_frontend._entry_ptr.397, ptr @dib3000mb_get_frontend._entry_ptr.400, ptr @dib3000mb_get_frontend._entry_ptr.403, ptr @dib3000mb_get_frontend._entry_ptr.406, ptr @dib3000mb_get_frontend._entry_ptr.408, ptr @dib3000mb_get_frontend._entry_ptr.411, ptr @dib3000mb_get_frontend._entry_ptr.414, ptr @dib3000mb_get_frontend._entry_ptr.417, ptr @dib3000mb_get_frontend._entry_ptr.419, ptr @dib3000mb_pid_control._entry, ptr @dib3000mb_pid_control._entry_ptr, ptr @dib3000mb_pid_parse._entry, ptr @dib3000mb_pid_parse._entry.10, ptr @dib3000mb_pid_parse._entry_ptr, ptr @dib3000mb_pid_parse._entry_ptr.12, ptr @dib3000mb_read_status._entry, ptr @dib3000mb_read_status._entry.422, ptr @dib3000mb_read_status._entry_ptr, ptr @dib3000mb_read_status._entry_ptr.424, ptr @dib3000mb_set_frontend._entry, ptr @dib3000mb_set_frontend._entry.126, ptr @dib3000mb_set_frontend._entry.128, ptr @dib3000mb_set_frontend._entry.130, ptr @dib3000mb_set_frontend._entry.132, ptr @dib3000mb_set_frontend._entry.134, ptr @dib3000mb_set_frontend._entry.136, ptr @dib3000mb_set_frontend._entry.139, ptr @dib3000mb_set_frontend._entry.142, ptr @dib3000mb_set_frontend._entry.144, ptr @dib3000mb_set_frontend._entry.147, ptr @dib3000mb_set_frontend._entry.149, ptr @dib3000mb_set_frontend._entry.152, ptr @dib3000mb_set_frontend._entry.154, ptr @dib3000mb_set_frontend._entry.157, ptr @dib3000mb_set_frontend._entry.160, ptr @dib3000mb_set_frontend._entry.162, ptr @dib3000mb_set_frontend._entry.165, ptr @dib3000mb_set_frontend._entry.167, ptr @dib3000mb_set_frontend._entry.170, ptr @dib3000mb_set_frontend._entry.172, ptr @dib3000mb_set_frontend._entry.175, ptr @dib3000mb_set_frontend._entry.177, ptr @dib3000mb_set_frontend._entry.180, ptr @dib3000mb_set_frontend._entry.183, ptr @dib3000mb_set_frontend._entry.185, ptr @dib3000mb_set_frontend._entry.188, ptr @dib3000mb_set_frontend._entry.191, ptr @dib3000mb_set_frontend._entry.193, ptr @dib3000mb_set_frontend._entry.196, ptr @dib3000mb_set_frontend._entry.198, ptr @dib3000mb_set_frontend._entry.201, ptr @dib3000mb_set_frontend._entry.203, ptr @dib3000mb_set_frontend._entry.206, ptr @dib3000mb_set_frontend._entry.208, ptr @dib3000mb_set_frontend._entry.211, ptr @dib3000mb_set_frontend._entry.214, ptr @dib3000mb_set_frontend._entry.216, ptr @dib3000mb_set_frontend._entry.219, ptr @dib3000mb_set_frontend._entry.221, ptr @dib3000mb_set_frontend._entry.224, ptr @dib3000mb_set_frontend._entry.226, ptr @dib3000mb_set_frontend._entry.229, ptr @dib3000mb_set_frontend._entry.231, ptr @dib3000mb_set_frontend._entry.233, ptr @dib3000mb_set_frontend._entry.235, ptr @dib3000mb_set_frontend._entry.237, ptr @dib3000mb_set_frontend._entry.240, ptr @dib3000mb_set_frontend._entry.242, ptr @dib3000mb_set_frontend._entry.245, ptr @dib3000mb_set_frontend._entry.247, ptr @dib3000mb_set_frontend._entry.250, ptr @dib3000mb_set_frontend._entry.252, ptr @dib3000mb_set_frontend._entry.255, ptr @dib3000mb_set_frontend._entry.257, ptr @dib3000mb_set_frontend._entry.260, ptr @dib3000mb_set_frontend._entry.262, ptr @dib3000mb_set_frontend._entry.265, ptr @dib3000mb_set_frontend._entry.268, ptr @dib3000mb_set_frontend._entry.271, ptr @dib3000mb_set_frontend._entry.273, ptr @dib3000mb_set_frontend._entry.275, ptr @dib3000mb_set_frontend._entry.277, ptr @dib3000mb_set_frontend._entry.279, ptr @dib3000mb_set_frontend._entry.281, ptr @dib3000mb_set_frontend._entry.283, ptr @dib3000mb_set_frontend._entry.285, ptr @dib3000mb_set_frontend._entry.287, ptr @dib3000mb_set_frontend._entry.289, ptr @dib3000mb_set_frontend._entry.291, ptr @dib3000mb_set_frontend._entry.293, ptr @dib3000mb_set_frontend._entry.295, ptr @dib3000mb_set_frontend._entry.297, ptr @dib3000mb_set_frontend._entry.299, ptr @dib3000mb_set_frontend._entry.302, ptr @dib3000mb_set_frontend._entry.304, ptr @dib3000mb_set_frontend._entry.306, ptr @dib3000mb_set_frontend._entry.308, ptr @dib3000mb_set_frontend._entry.311, ptr @dib3000mb_set_frontend._entry.314, ptr @dib3000mb_set_frontend._entry.316, ptr @dib3000mb_set_frontend._entry_ptr, ptr @dib3000mb_set_frontend._entry_ptr.127, ptr @dib3000mb_set_frontend._entry_ptr.129, ptr @dib3000mb_set_frontend._entry_ptr.131, ptr @dib3000mb_set_frontend._entry_ptr.133, ptr @dib3000mb_set_frontend._entry_ptr.135, ptr @dib3000mb_set_frontend._entry_ptr.138, ptr @dib3000mb_set_frontend._entry_ptr.141, ptr @dib3000mb_set_frontend._entry_ptr.143, ptr @dib3000mb_set_frontend._entry_ptr.146, ptr @dib3000mb_set_frontend._entry_ptr.148, ptr @dib3000mb_set_frontend._entry_ptr.151, ptr @dib3000mb_set_frontend._entry_ptr.153, ptr @dib3000mb_set_frontend._entry_ptr.156, ptr @dib3000mb_set_frontend._entry_ptr.159, ptr @dib3000mb_set_frontend._entry_ptr.161, ptr @dib3000mb_set_frontend._entry_ptr.164, ptr @dib3000mb_set_frontend._entry_ptr.166, ptr @dib3000mb_set_frontend._entry_ptr.169, ptr @dib3000mb_set_frontend._entry_ptr.171, ptr @dib3000mb_set_frontend._entry_ptr.174, ptr @dib3000mb_set_frontend._entry_ptr.176, ptr @dib3000mb_set_frontend._entry_ptr.179, ptr @dib3000mb_set_frontend._entry_ptr.182, ptr @dib3000mb_set_frontend._entry_ptr.184, ptr @dib3000mb_set_frontend._entry_ptr.187, ptr @dib3000mb_set_frontend._entry_ptr.190, ptr @dib3000mb_set_frontend._entry_ptr.192, ptr @dib3000mb_set_frontend._entry_ptr.195, ptr @dib3000mb_set_frontend._entry_ptr.197, ptr @dib3000mb_set_frontend._entry_ptr.200, ptr @dib3000mb_set_frontend._entry_ptr.202, ptr @dib3000mb_set_frontend._entry_ptr.205, ptr @dib3000mb_set_frontend._entry_ptr.207, ptr @dib3000mb_set_frontend._entry_ptr.210, ptr @dib3000mb_set_frontend._entry_ptr.213, ptr @dib3000mb_set_frontend._entry_ptr.215, ptr @dib3000mb_set_frontend._entry_ptr.218, ptr @dib3000mb_set_frontend._entry_ptr.220, ptr @dib3000mb_set_frontend._entry_ptr.223, ptr @dib3000mb_set_frontend._entry_ptr.225, ptr @dib3000mb_set_frontend._entry_ptr.228, ptr @dib3000mb_set_frontend._entry_ptr.230, ptr @dib3000mb_set_frontend._entry_ptr.232, ptr @dib3000mb_set_frontend._entry_ptr.234, ptr @dib3000mb_set_frontend._entry_ptr.236, ptr @dib3000mb_set_frontend._entry_ptr.239, ptr @dib3000mb_set_frontend._entry_ptr.241, ptr @dib3000mb_set_frontend._entry_ptr.244, ptr @dib3000mb_set_frontend._entry_ptr.246, ptr @dib3000mb_set_frontend._entry_ptr.249, ptr @dib3000mb_set_frontend._entry_ptr.251, ptr @dib3000mb_set_frontend._entry_ptr.254, ptr @dib3000mb_set_frontend._entry_ptr.256, ptr @dib3000mb_set_frontend._entry_ptr.259, ptr @dib3000mb_set_frontend._entry_ptr.261, ptr @dib3000mb_set_frontend._entry_ptr.264, ptr @dib3000mb_set_frontend._entry_ptr.267, ptr @dib3000mb_set_frontend._entry_ptr.270, ptr @dib3000mb_set_frontend._entry_ptr.272, ptr @dib3000mb_set_frontend._entry_ptr.274, ptr @dib3000mb_set_frontend._entry_ptr.276, ptr @dib3000mb_set_frontend._entry_ptr.278, ptr @dib3000mb_set_frontend._entry_ptr.280, ptr @dib3000mb_set_frontend._entry_ptr.282, ptr @dib3000mb_set_frontend._entry_ptr.284, ptr @dib3000mb_set_frontend._entry_ptr.286, ptr @dib3000mb_set_frontend._entry_ptr.288, ptr @dib3000mb_set_frontend._entry_ptr.290, ptr @dib3000mb_set_frontend._entry_ptr.292, ptr @dib3000mb_set_frontend._entry_ptr.294, ptr @dib3000mb_set_frontend._entry_ptr.296, ptr @dib3000mb_set_frontend._entry_ptr.298, ptr @dib3000mb_set_frontend._entry_ptr.301, ptr @dib3000mb_set_frontend._entry_ptr.303, ptr @dib3000mb_set_frontend._entry_ptr.305, ptr @dib3000mb_set_frontend._entry_ptr.307, ptr @dib3000mb_set_frontend._entry_ptr.310, ptr @dib3000mb_set_frontend._entry_ptr.313, ptr @dib3000mb_set_frontend._entry_ptr.315, ptr @dib3000mb_set_frontend._entry_ptr.317, ptr @dib3000mb_sleep._entry, ptr @dib3000mb_sleep._entry.123, ptr @dib3000mb_sleep._entry_ptr, ptr @dib3000mb_sleep._entry_ptr.124, ptr @dib3000mb_tuner_pass_ctrl._entry, ptr @dib3000mb_tuner_pass_ctrl._entry.23, ptr @dib3000mb_tuner_pass_ctrl._entry_ptr, ptr @dib3000mb_tuner_pass_ctrl._entry_ptr.24, ptr @debug, ptr @dib3000mb_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @dib3000mb_reg_impulse_noise, ptr @dib3000mb_impulse_noise_values, ptr @dib3000mb_reg_agc_gain, ptr @dib3000mb_default_agc_gain, ptr @dib3000mb_reg_phase_noise, ptr @dib3000mb_default_noise_phase, ptr @dib3000mb_reg_agc_bandwidth, ptr @dib3000mb_agc_bandwidth_low, ptr @dib3000_seq, ptr @dib3000mb_reg_bandwidth, ptr @dib3000mb_bandwidth_8mhz, ptr @dib3000mb_reg_filter_coeffs, ptr @dib3000mb_filter_coeffs, ptr @.str.121, ptr @.str.122, ptr @.str.125, ptr @dib3000mb_bandwidth_7mhz, ptr @dib3000mb_bandwidth_6mhz, ptr @.str.137, ptr @.str.140, ptr @.str.145, ptr @.str.150, ptr @.str.155, ptr @.str.158, ptr @.str.163, ptr @.str.168, ptr @.str.173, ptr @.str.178, ptr @.str.181, ptr @.str.186, ptr @.str.189, ptr @.str.194, ptr @.str.199, ptr @.str.204, ptr @.str.209, ptr @.str.212, ptr @.str.217, ptr @.str.222, ptr @.str.227, ptr @.str.238, ptr @.str.243, ptr @.str.248, ptr @.str.253, ptr @.str.258, ptr @.str.263, ptr @.str.266, ptr @.str.269, ptr @dib3000mb_agc_bandwidth_high, ptr @.str.300, ptr @.str.309, ptr @.str.312, ptr @.str.318, ptr @.str.319, ptr @.str.321, ptr @.str.324, ptr @.str.326, ptr @.str.327, ptr @.str.329, ptr @.str.332, ptr @.str.335, ptr @.str.338, ptr @.str.341, ptr @.str.344, ptr @.str.347, ptr @.str.350, ptr @.str.353, ptr @.str.356, ptr @.str.359, ptr @.str.362, ptr @.str.365, ptr @.str.370, ptr @.str.373, ptr @.str.376, ptr @.str.379, ptr @.str.382, ptr @.str.385, ptr @.str.388, ptr @.str.393, ptr @.str.396, ptr @.str.399, ptr @.str.402, ptr @.str.405, ptr @.str.410, ptr @.str.413, ptr @.str.416, ptr @.str.420, ptr @.str.421, ptr @.str.423], section "llvm.metadata"
@0 = internal global [287 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000_read_reg._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_pid_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_pid_parse._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fifo_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fifo_control._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fifo_control._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_pid_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_tuner_pass_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_tuner_pass_ctrl._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_reg_impulse_noise to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_impulse_noise_values to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_reg_agc_gain to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_default_agc_gain to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_reg_phase_noise to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_default_noise_phase to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_reg_agc_bandwidth to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_agc_bandwidth_low to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000_seq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_reg_bandwidth to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_bandwidth_8mhz to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_reg_filter_coeffs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_filter_coeffs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_fe_init._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_sleep._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_bandwidth_7mhz to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_bandwidth_6mhz to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.285 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_agc_bandwidth_high to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.308 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_set_frontend._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000_search_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000_search_status._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000_search_status._entry.323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.331 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.334 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.337 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.340 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.343 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.346 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.349 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.352 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.355 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.358 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.361 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.364 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.367 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.369 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.372 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.375 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.378 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.381 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.384 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.387 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.390 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.392 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.395 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.398 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.401 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.404 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.407 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.409 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.412 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.415 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_get_frontend._entry.418 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.421 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dib3000mb_read_status._entry.422 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dib3000mb_attach(ptr nocapture noundef readonly %config, ptr noundef %i2c, ptr nocapture noundef writeonly %xfer_ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1064) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %i2c, ptr %call7.i.i, align 8
  %config2 = getelementptr inbounds %struct.dib3000_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config, align 1
  %4 = ptrtoint ptr %config2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %config2, align 4
  %call3 = tail call fastcc i32 @dib3000_read_reg(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1025)
  call void @__sanitizer_cov_trace_const_cmp4(i32 435, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 435
  br i1 %cmp4.not, label %if.end6, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @dib3000_read_reg(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1026)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 12288
  br i1 %cmp8.not, label %if.end10, label %if.end6.error_crit_edge

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %frontend = getelementptr inbounds %struct.dib3000_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.dib3000_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = call ptr @memcpy(ptr %ops, ptr @dib3000mb_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.dib3000_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %7 = ptrtoint ptr %xfer_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @dib3000mb_pid_parse, ptr %xfer_ops, align 4
  %fifo_ctrl = getelementptr inbounds %struct.dib_fe_xfer_ops, ptr %xfer_ops, i32 0, i32 1
  %8 = ptrtoint ptr %fifo_ctrl to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @dib3000mb_fifo_control, ptr %fifo_ctrl, align 4
  %pid_ctrl = getelementptr inbounds %struct.dib_fe_xfer_ops, ptr %xfer_ops, i32 0, i32 2
  %9 = ptrtoint ptr %pid_ctrl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dib3000mb_pid_control, ptr %pid_ctrl, align 4
  %tuner_pass_ctrl = getelementptr inbounds %struct.dib_fe_xfer_ops, ptr %xfer_ops, i32 0, i32 3
  %10 = ptrtoint ptr %tuner_pass_ctrl to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @dib3000mb_tuner_pass_ctrl, ptr %tuner_pass_ctrl, align 4
  br label %cleanup

error:                                            ; preds = %if.end6.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end10
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end10 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dib3000_read_reg(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  %wb = alloca [2 x i8], align 1
  %rb = alloca [2 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wb) #7
  %0 = getelementptr inbounds [2 x i8], ptr %wb, i32 0, i32 1
  %conv = zext i16 %reg to i32
  %1 = lshr i16 %reg, 8
  %2 = trunc i16 %1 to i8
  %conv1 = or i8 %2, -128
  %3 = ptrtoint ptr %wb to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv1, ptr %wb, align 1
  %conv4 = trunc i16 %reg to i8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv4, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rb) #7
  %5 = ptrtoint ptr %rb to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %rb, align 1, !annotation !697
  %6 = getelementptr inbounds [2 x i8], ptr %rb, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !697
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %8 = getelementptr inbounds i8, ptr %msg, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %config = getelementptr inbounds %struct.dib3000_state, ptr %state, i32 0, i32 1
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config, align 4
  %conv6 = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv6, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %wb, ptr %buf, align 4
  %arrayinit.element7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %16 = ptrtoint ptr %arrayinit.element7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv6, ptr %arrayinit.element7, align 4
  %flags12 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %17 = ptrtoint ptr %flags12 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags12, align 2
  %len13 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %18 = ptrtoint ptr %len13 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %len13, align 4
  %buf14 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %19 = ptrtoint ptr %buf14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rb, ptr %buf14, align 4
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %entry.do.body25_crit_edge, label %do.body

entry.do.body25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

do.body:                                          ; preds = %entry
  %22 = load i32, ptr @debug, align 4
  %and18 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %do.body.do.body25_crit_edge, label %do.end

do.body.do.body25_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %do.body25

do.body25:                                        ; preds = %do.end, %do.body.do.body25_crit_edge, %entry.do.body25_crit_edge
  %23 = load i32, ptr @debug, align 4
  %and26 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body25.do.end48_crit_edge, label %do.end31

do.body25.do.end48_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %rb to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rb, align 1
  %conv35 = zext i8 %25 to i32
  %shl = shl nuw nsw i32 %conv35, 8
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %6, align 1
  %conv37 = zext i8 %27 to i32
  %or38 = or i32 %shl, %conv37
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %conv, i32 noundef %or38, i32 noundef %or38) #11
  br label %do.end48

do.end48:                                         ; preds = %do.end31, %do.body25.do.end48_crit_edge
  %28 = ptrtoint ptr %rb to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rb, align 1
  %conv50 = zext i8 %29 to i32
  %shl51 = shl nuw nsw i32 %conv50, 8
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %6, align 1
  %conv53 = zext i8 %31 to i32
  %or54 = or i32 %shl51, %conv53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rb) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wb) #7
  ret i32 %or54
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mb_pid_parse(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #0 align 64 {
entry:
  %b.i = alloca [4 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool2.not = icmp eq i32 %onoff, 0
  %cond = select i1 %tobool2.not, ptr @.str.9, ptr @.str.8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i) #7
  %3 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 3
  %6 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %b.i, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -112, ptr %3, align 1
  %8 = lshr i32 %onoff, 8
  %conv9.i = trunc i32 %8 to i8
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv9.i, ptr %4, align 1
  %conv13.i = trunc i32 %onoff to i8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv13.i, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 327679, ptr %11, align 4
  %config.i = getelementptr inbounds %struct.dib3000_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %config.i, align 4
  %conv15.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv15.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b.i, ptr %buf.i, align 4
  %18 = load i32, ptr @debug, align 4
  %and16.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool.not.i, label %do.end4.dib3000_write_reg.exit_crit_edge, label %do.end.i

do.end4.dib3000_write_reg.exit_crit_edge:         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit

do.end.i:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = and i32 %onoff, 65535
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 144, i32 noundef 144, i32 noundef %conv6.i, i32 noundef %conv6.i) #11
  br label %dib3000_write_reg.exit

dib3000_write_reg.exit:                           ; preds = %do.end.i, %do.end4.dib3000_write_reg.exit_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call25.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i)
  %cmp.not.i = icmp eq i32 %call25.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i) #7
  br i1 %cmp.not.i, label %dib3000_write_reg.exit.cleanup_crit_edge, label %do.end10

dib3000_write_reg.exit.cleanup_crit_edge:         ; preds = %dib3000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end10:                                         ; preds = %dib3000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %onoff, i32 noundef 144) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %dib3000_write_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.end10 ], [ 0, %dib3000_write_reg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mb_fifo_control(ptr nocapture noundef readonly %fe, i32 noundef %onoff) #0 align 64 {
entry:
  %b.i28 = alloca [4 x i8], align 1
  %msg.i29 = alloca [1 x %struct.i2c_msg], align 4
  %b.i = alloca [4 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool2.not = icmp eq i32 %onoff, 0
  %cond = select i1 %tobool2.not, ptr @.str.9, ptr @.str.8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool5.not = icmp eq i32 %onoff, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i) #7
  %3 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 3
  %6 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %b.i, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -111, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 327679, ptr %10, align 4
  %config.i = getelementptr inbounds %struct.dib3000_state, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %config.i, align 4
  %conv15.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv15.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b.i, ptr %buf.i, align 4
  %17 = load i32, ptr @debug, align 4
  %and16.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool.not.i, label %if.then6.dib3000_write_reg.exit_crit_edge, label %do.end.i

if.then6.dib3000_write_reg.exit_crit_edge:        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 145, i32 noundef 145, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit

dib3000_write_reg.exit:                           ; preds = %do.end.i, %if.then6.dib3000_write_reg.exit_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call25.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i)
  %cmp.not.i = icmp eq i32 %call25.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i) #7
  br i1 %cmp.not.i, label %dib3000_write_reg.exit.cleanup_crit_edge, label %dib3000_write_reg.exit.cleanup.sink.split_crit_edge

dib3000_write_reg.exit.cleanup.sink.split_crit_edge: ; preds = %dib3000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

dib3000_write_reg.exit.cleanup_crit_edge:         ; preds = %dib3000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %do.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i28) #7
  %20 = getelementptr inbounds [4 x i8], ptr %b.i28, i32 0, i32 1
  %21 = getelementptr inbounds [4 x i8], ptr %b.i28, i32 0, i32 2
  %22 = getelementptr inbounds [4 x i8], ptr %b.i28, i32 0, i32 3
  %23 = ptrtoint ptr %b.i28 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %b.i28, align 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -111, ptr %20, align 1
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %21, align 1
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i29) #7
  %27 = getelementptr inbounds i8, ptr %msg.i29, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 327679, ptr %27, align 4
  %config.i30 = getelementptr inbounds %struct.dib3000_state, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %config.i30 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %config.i30, align 4
  %conv15.i31 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i29 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv15.i31, ptr %msg.i29, align 4
  %flags.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i32 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i32, align 2
  %buf.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 3
  %33 = ptrtoint ptr %buf.i34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %b.i28, ptr %buf.i34, align 4
  %34 = load i32, ptr @debug, align 4
  %and16.i35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i35)
  %tobool.not.i36 = icmp eq i32 %and16.i35, 0
  br i1 %tobool.not.i36, label %if.else.dib3000_write_reg.exit42_crit_edge, label %do.end.i38

if.else.dib3000_write_reg.exit42_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit42

do.end.i38:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call.i37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 145, i32 noundef 145, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit42

dib3000_write_reg.exit42:                         ; preds = %do.end.i38, %if.else.dib3000_write_reg.exit42_crit_edge
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call25.i39 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i29, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i39)
  %cmp.not.i40 = icmp eq i32 %call25.i39, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i29) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i28) #7
  br i1 %cmp.not.i40, label %dib3000_write_reg.exit42.cleanup_crit_edge, label %dib3000_write_reg.exit42.cleanup.sink.split_crit_edge

dib3000_write_reg.exit42.cleanup.sink.split_crit_edge: ; preds = %dib3000_write_reg.exit42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

dib3000_write_reg.exit42.cleanup_crit_edge:       ; preds = %dib3000_write_reg.exit42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %dib3000_write_reg.exit42.cleanup.sink.split_crit_edge, %dib3000_write_reg.exit.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 0, %dib3000_write_reg.exit.cleanup.sink.split_crit_edge ], [ 1, %dib3000_write_reg.exit42.cleanup.sink.split_crit_edge ]
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %.sink, i32 noundef 145) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %dib3000_write_reg.exit42.cleanup_crit_edge, %dib3000_write_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dib3000_write_reg.exit42.cleanup_crit_edge ], [ 0, %dib3000_write_reg.exit.cleanup_crit_edge ], [ -121, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mb_pid_control(ptr nocapture noundef readonly %fe, i32 noundef %index, i32 noundef %pid, i32 noundef %onoff) #0 align 64 {
entry:
  %b.i = alloca [4 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %or = or i32 %pid, 8192
  %spec.select = select i1 %tobool.not, i32 0, i32 %or
  %add = add i32 %index, 153
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i) #7
  %2 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 3
  %5 = lshr i32 %add, 8
  %conv1.i = trunc i32 %5 to i8
  %6 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1.i, ptr %b.i, align 1
  %conv4.i = trunc i32 %add to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4.i, ptr %2, align 1
  %8 = lshr i32 %spec.select, 8
  %conv9.i = trunc i32 %8 to i8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv9.i, ptr %3, align 1
  %conv13.i = trunc i32 %spec.select to i8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv13.i, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 327679, ptr %11, align 4
  %config.i = getelementptr inbounds %struct.dib3000_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %config.i, align 4
  %conv15.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv15.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b.i, ptr %buf.i, align 4
  %18 = load i32, ptr @debug, align 4
  %and16.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool.not.i, label %entry.dib3000_write_reg.exit_crit_edge, label %do.end.i

entry.dib3000_write_reg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = and i32 %spec.select, 65535
  %conv.i = and i32 %add, 65535
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv.i, i32 noundef %conv.i, i32 noundef %conv6.i, i32 noundef %conv6.i) #11
  br label %dib3000_write_reg.exit

dib3000_write_reg.exit:                           ; preds = %do.end.i, %entry.dib3000_write_reg.exit_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call25.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i)
  %cmp.not.i = icmp eq i32 %call25.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i) #7
  br i1 %cmp.not.i, label %dib3000_write_reg.exit.cleanup_crit_edge, label %do.end

dib3000_write_reg.exit.cleanup_crit_edge:         ; preds = %dib3000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %dib3000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %spec.select, i32 noundef %add) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dib3000_write_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.end ], [ 0, %dib3000_write_reg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mb_tuner_pass_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %onoff, i8 noundef zeroext %pll_addr) #0 align 64 {
entry:
  %b.i30 = alloca [4 x i8], align 1
  %msg.i31 = alloca [1 x %struct.i2c_msg], align 4
  %b.i = alloca [4 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %conv8 = zext i8 %pll_addr to i32
  %shl9 = shl nuw nsw i32 %conv8, 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i) #7
  %2 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 3
  %5 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %b.i, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 65, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %pll_addr, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 327679, ptr %9, align 4
  %config.i = getelementptr inbounds %struct.dib3000_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %config.i, align 4
  %conv15.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv15.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %b.i, ptr %buf.i, align 4
  %16 = load i32, ptr @debug, align 4
  %and16.i = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool.not.i, label %if.then.dib3000_write_reg.exit_crit_edge, label %do.end.i

if.then.dib3000_write_reg.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 1089, i32 noundef 1089, i32 noundef %shl9, i32 noundef %shl9) #11
  br label %dib3000_write_reg.exit

dib3000_write_reg.exit:                           ; preds = %do.end.i, %if.then.dib3000_write_reg.exit_crit_edge
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call25.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i)
  %cmp.not.i = icmp eq i32 %call25.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i) #7
  br i1 %cmp.not.i, label %dib3000_write_reg.exit.cleanup_crit_edge, label %dib3000_write_reg.exit.cleanup.sink.split_crit_edge

dib3000_write_reg.exit.cleanup.sink.split_crit_edge: ; preds = %dib3000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

dib3000_write_reg.exit.cleanup_crit_edge:         ; preds = %dib3000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %or = or i32 %shl9, 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i30) #7
  %19 = getelementptr inbounds [4 x i8], ptr %b.i30, i32 0, i32 1
  %20 = getelementptr inbounds [4 x i8], ptr %b.i30, i32 0, i32 2
  %21 = getelementptr inbounds [4 x i8], ptr %b.i30, i32 0, i32 3
  %22 = ptrtoint ptr %b.i30 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %b.i30, align 1
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 65, ptr %19, align 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %pll_addr, ptr %20, align 1
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -128, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i31) #7
  %26 = getelementptr inbounds i8, ptr %msg.i31, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 327679, ptr %26, align 4
  %config.i34 = getelementptr inbounds %struct.dib3000_state, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %config.i34 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %config.i34, align 4
  %conv15.i35 = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i31 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv15.i35, ptr %msg.i31, align 4
  %flags.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i36 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i36, align 2
  %buf.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 3
  %32 = ptrtoint ptr %buf.i38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %b.i30, ptr %buf.i38, align 4
  %33 = load i32, ptr @debug, align 4
  %and16.i39 = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i39)
  %tobool.not.i40 = icmp eq i32 %and16.i39, 0
  br i1 %tobool.not.i40, label %if.else.dib3000_write_reg.exit47_crit_edge, label %do.end.i43

if.else.dib3000_write_reg.exit47_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit47

do.end.i43:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call.i42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 1089, i32 noundef 1089, i32 noundef %or, i32 noundef %or) #11
  br label %dib3000_write_reg.exit47

dib3000_write_reg.exit47:                         ; preds = %do.end.i43, %if.else.dib3000_write_reg.exit47_crit_edge
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call25.i44 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i31, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i44)
  %cmp.not.i45 = icmp eq i32 %call25.i44, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i31) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i30) #7
  br i1 %cmp.not.i45, label %dib3000_write_reg.exit47.cleanup_crit_edge, label %dib3000_write_reg.exit47.cleanup.sink.split_crit_edge

dib3000_write_reg.exit47.cleanup.sink.split_crit_edge: ; preds = %dib3000_write_reg.exit47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

dib3000_write_reg.exit47.cleanup_crit_edge:       ; preds = %dib3000_write_reg.exit47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %dib3000_write_reg.exit47.cleanup.sink.split_crit_edge, %dib3000_write_reg.exit.cleanup.sink.split_crit_edge
  %or.sink = phi i32 [ %shl9, %dib3000_write_reg.exit.cleanup.sink.split_crit_edge ], [ %or, %dib3000_write_reg.exit47.cleanup.sink.split_crit_edge ]
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %or.sink, i32 noundef 1089) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %dib3000_write_reg.exit47.cleanup_crit_edge, %dib3000_write_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dib3000_write_reg.exit47.cleanup_crit_edge ], [ 0, %dib3000_write_reg.exit.cleanup_crit_edge ], [ -121, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dib3000_write_reg(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %b = alloca [4 x i8], align 1
  %msg = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #7
  %0 = getelementptr inbounds [4 x i8], ptr %b, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %b, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %b, i32 0, i32 3
  %3 = lshr i16 %reg, 8
  %conv1 = trunc i16 %3 to i8
  %4 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1, ptr %b, align 1
  %conv4 = trunc i16 %reg to i8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %0, align 1
  %6 = lshr i16 %val, 8
  %conv9 = trunc i16 %6 to i8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv9, ptr %1, align 1
  %conv13 = trunc i16 %val to i8
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv13, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %9 = getelementptr inbounds i8, ptr %msg, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  %config = getelementptr inbounds %struct.dib3000_state, ptr %state, i32 0, i32 1
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %config, align 4
  %conv15 = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv15, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 4, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b, ptr %buf, align 4
  %17 = load i32, ptr @debug, align 4
  %and16 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool.not = icmp eq i32 %and16, 0
  br i1 %tobool.not, label %entry.do.end23_crit_edge, label %do.end

entry.do.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv6 = zext i16 %val to i32
  %conv = zext i16 %reg to i32
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv6) #11
  br label %do.end23

do.end23:                                         ; preds = %do.end, %entry.do.end23_crit_edge
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %call25 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp.not = icmp eq i32 %call25, 1
  %cond = select i1 %cmp.not, i32 0, i32 -121
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #7
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dib3000mb_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @dib3000mb_fe_init_nonmobile(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %b.i725.i = alloca [4 x i8], align 1
  %msg.i726.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i710.i = alloca [4 x i8], align 1
  %msg.i711.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i695.i = alloca [4 x i8], align 1
  %msg.i696.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i680.i = alloca [4 x i8], align 1
  %msg.i681.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i665.i = alloca [4 x i8], align 1
  %msg.i666.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i650.i = alloca [4 x i8], align 1
  %msg.i651.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i635.i = alloca [4 x i8], align 1
  %msg.i636.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i620.i = alloca [4 x i8], align 1
  %msg.i621.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i605.i = alloca [4 x i8], align 1
  %msg.i606.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i590.i = alloca [4 x i8], align 1
  %msg.i591.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i575.i = alloca [4 x i8], align 1
  %msg.i576.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i554.i = alloca [4 x i8], align 1
  %msg.i555.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i539.i = alloca [4 x i8], align 1
  %msg.i540.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i524.i = alloca [4 x i8], align 1
  %msg.i525.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i509.i = alloca [4 x i8], align 1
  %msg.i510.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i494.i = alloca [4 x i8], align 1
  %msg.i495.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i479.i = alloca [4 x i8], align 1
  %msg.i480.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i464.i = alloca [4 x i8], align 1
  %msg.i465.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i449.i = alloca [4 x i8], align 1
  %msg.i450.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i434.i = alloca [4 x i8], align 1
  %msg.i435.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i419.i = alloca [4 x i8], align 1
  %msg.i420.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i404.i = alloca [4 x i8], align 1
  %msg.i405.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i389.i = alloca [4 x i8], align 1
  %msg.i390.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i374.i = alloca [4 x i8], align 1
  %msg.i375.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i359.i = alloca [4 x i8], align 1
  %msg.i360.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i344.i = alloca [4 x i8], align 1
  %msg.i345.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i329.i = alloca [4 x i8], align 1
  %msg.i330.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i308.i = alloca [4 x i8], align 1
  %msg.i309.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i293.i = alloca [4 x i8], align 1
  %msg.i294.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i278.i = alloca [4 x i8], align 1
  %msg.i279.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i263.i = alloca [4 x i8], align 1
  %msg.i264.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i248.i = alloca [4 x i8], align 1
  %msg.i249.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i227.i = alloca [4 x i8], align 1
  %msg.i228.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i206.i = alloca [4 x i8], align 1
  %msg.i207.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i185.i = alloca [4 x i8], align 1
  %msg.i186.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i170.i = alloca [4 x i8], align 1
  %msg.i171.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i149.i = alloca [4 x i8], align 1
  %msg.i150.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i128.i = alloca [4 x i8], align 1
  %msg.i129.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i113.i = alloca [4 x i8], align 1
  %msg.i114.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i98.i = alloca [4 x i8], align 1
  %msg.i99.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i83.i = alloca [4 x i8], align 1
  %msg.i84.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i68.i = alloca [4 x i8], align 1
  %msg.i69.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i53.i = alloca [4 x i8], align 1
  %msg.i54.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i38.i = alloca [4 x i8], align 1
  %msg.i39.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i23.i = alloca [4 x i8], align 1
  %msg.i24.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i8.i = alloca [4 x i8], align 1
  %msg.i9.i = alloca [1 x %struct.i2c_msg], align 4
  %b.i.i = alloca [4 x i8], align 1
  %msg.i.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv.i, align 4
  %2 = load i32, ptr @debug, align 4
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end3.i_crit_edge, label %do.end.i

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i.i) #7
  %3 = getelementptr inbounds [4 x i8], ptr %b.i.i, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i8], ptr %b.i.i, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i8], ptr %b.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %b.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %b.i.i, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 327679, ptr %10, align 4
  %config.i.i = getelementptr inbounds %struct.dib3000_state, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %config.i.i, align 4
  %conv15.i.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv15.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b.i.i, ptr %buf.i.i, align 4
  %17 = load i32, ptr @debug, align 4
  %and16.i.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %tobool.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %tobool.not.i.i, label %do.end3.i.dib3000_write_reg.exit.i_crit_edge, label %do.end.i.i

do.end3.i.dib3000_write_reg.exit.i_crit_edge:     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit.i

do.end.i.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 1028, i32 noundef 1028, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit.i

dib3000_write_reg.exit.i:                         ; preds = %do.end.i.i, %do.end3.i.dib3000_write_reg.exit.i_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call25.i.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i.i)
  %cmp.not.i.i = icmp eq i32 %call25.i.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i.i) #7
  br i1 %cmp.not.i.i, label %if.end12.i, label %do.end9.i

do.end9.i:                                        ; preds = %dib3000_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 1028) #11
  br label %dib3000mb_fe_init.exit

if.end12.i:                                       ; preds = %dib3000_write_reg.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i8.i) #7
  %20 = getelementptr inbounds [4 x i8], ptr %b.i8.i, i32 0, i32 1
  %21 = getelementptr inbounds [4 x i8], ptr %b.i8.i, i32 0, i32 2
  %22 = getelementptr inbounds [4 x i8], ptr %b.i8.i, i32 0, i32 3
  %23 = ptrtoint ptr %b.i8.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %b.i8.i, align 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %20, align 1
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %21, align 1
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 8, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i9.i) #7
  %27 = getelementptr inbounds i8, ptr %msg.i9.i, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 327679, ptr %27, align 4
  %29 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %config.i.i, align 4
  %conv15.i11.i = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i9.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv15.i11.i, ptr %msg.i9.i, align 4
  %flags.i12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9.i, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i12.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i12.i, align 2
  %buf.i14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i9.i, i32 0, i32 3
  %33 = ptrtoint ptr %buf.i14.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %b.i8.i, ptr %buf.i14.i, align 4
  %34 = load i32, ptr @debug, align 4
  %and16.i15.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i15.i)
  %tobool.not.i16.i = icmp eq i32 %and16.i15.i, 0
  br i1 %tobool.not.i16.i, label %if.end12.i.dib3000_write_reg.exit22.i_crit_edge, label %do.end.i18.i

if.end12.i.dib3000_write_reg.exit22.i_crit_edge:  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit22.i

do.end.i18.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0, i32 noundef 8, i32 noundef 8) #11
  br label %dib3000_write_reg.exit22.i

dib3000_write_reg.exit22.i:                       ; preds = %do.end.i18.i, %if.end12.i.dib3000_write_reg.exit22.i_crit_edge
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call25.i19.i = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i9.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i19.i)
  %cmp.not.i20.i = icmp eq i32 %call25.i19.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i9.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i8.i) #7
  br i1 %cmp.not.i20.i, label %if.end21.i, label %do.end18.i

do.end18.i:                                       ; preds = %dib3000_write_reg.exit22.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 8, i32 noundef 0) #11
  br label %dib3000mb_fe_init.exit

if.end21.i:                                       ; preds = %dib3000_write_reg.exit22.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i23.i) #7
  %37 = getelementptr inbounds [4 x i8], ptr %b.i23.i, i32 0, i32 1
  %38 = getelementptr inbounds [4 x i8], ptr %b.i23.i, i32 0, i32 2
  %39 = getelementptr inbounds [4 x i8], ptr %b.i23.i, i32 0, i32 3
  %40 = ptrtoint ptr %b.i23.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 4, ptr %b.i23.i, align 1
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %37, align 1
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -127, ptr %38, align 1
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 44, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i24.i) #7
  %44 = getelementptr inbounds i8, ptr %msg.i24.i, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 327679, ptr %44, align 4
  %46 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %config.i.i, align 4
  %conv15.i26.i = zext i8 %47 to i16
  %48 = ptrtoint ptr %msg.i24.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv15.i26.i, ptr %msg.i24.i, align 4
  %flags.i27.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24.i, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i27.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i27.i, align 2
  %buf.i29.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24.i, i32 0, i32 3
  %50 = ptrtoint ptr %buf.i29.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %b.i23.i, ptr %buf.i29.i, align 4
  %51 = load i32, ptr @debug, align 4
  %and16.i30.i = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i30.i)
  %tobool.not.i31.i = icmp eq i32 %and16.i30.i, 0
  br i1 %tobool.not.i31.i, label %if.end21.i.dib3000_write_reg.exit37.i_crit_edge, label %do.end.i33.i

if.end21.i.dib3000_write_reg.exit37.i_crit_edge:  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit37.i

do.end.i33.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 1024, i32 noundef 1024, i32 noundef 33068, i32 noundef 33068) #11
  br label %dib3000_write_reg.exit37.i

dib3000_write_reg.exit37.i:                       ; preds = %do.end.i33.i, %if.end21.i.dib3000_write_reg.exit37.i_crit_edge
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call25.i34.i = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i24.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i34.i)
  %cmp.not.i35.i = icmp eq i32 %call25.i34.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i24.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i23.i) #7
  br i1 %cmp.not.i35.i, label %if.end30.i, label %do.end27.i

do.end27.i:                                       ; preds = %dib3000_write_reg.exit37.i
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 33068, i32 noundef 1024) #11
  br label %dib3000mb_fe_init.exit

if.end30.i:                                       ; preds = %dib3000_write_reg.exit37.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i38.i) #7
  %54 = getelementptr inbounds [4 x i8], ptr %b.i38.i, i32 0, i32 1
  %55 = getelementptr inbounds [4 x i8], ptr %b.i38.i, i32 0, i32 2
  %56 = getelementptr inbounds [4 x i8], ptr %b.i38.i, i32 0, i32 3
  %57 = ptrtoint ptr %b.i38.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 4, ptr %b.i38.i, align 1
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %54, align 1
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %55, align 1
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %56, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i39.i) #7
  %61 = getelementptr inbounds i8, ptr %msg.i39.i, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 327679, ptr %61, align 4
  %63 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %config.i.i, align 4
  %conv15.i41.i = zext i8 %64 to i16
  %65 = ptrtoint ptr %msg.i39.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv15.i41.i, ptr %msg.i39.i, align 4
  %flags.i42.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39.i, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i42.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i42.i, align 2
  %buf.i44.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i39.i, i32 0, i32 3
  %67 = ptrtoint ptr %buf.i44.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %b.i38.i, ptr %buf.i44.i, align 4
  %68 = load i32, ptr @debug, align 4
  %and16.i45.i = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i45.i)
  %tobool.not.i46.i = icmp eq i32 %and16.i45.i, 0
  br i1 %tobool.not.i46.i, label %if.end30.i.dib3000_write_reg.exit52.i_crit_edge, label %do.end.i48.i

if.end30.i.dib3000_write_reg.exit52.i_crit_edge:  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit52.i

do.end.i48.i:                                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 1024, i32 noundef 1024, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit52.i

dib3000_write_reg.exit52.i:                       ; preds = %do.end.i48.i, %if.end30.i.dib3000_write_reg.exit52.i_crit_edge
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call25.i49.i = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i39.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i49.i)
  %cmp.not.i50.i = icmp eq i32 %call25.i49.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i39.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i38.i) #7
  br i1 %cmp.not.i50.i, label %if.end39.i, label %do.end36.i

do.end36.i:                                       ; preds = %dib3000_write_reg.exit52.i
  call void @__sanitizer_cov_trace_pc() #9
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 1024) #11
  br label %dib3000mb_fe_init.exit

if.end39.i:                                       ; preds = %dib3000_write_reg.exit52.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i53.i) #7
  %71 = getelementptr inbounds [4 x i8], ptr %b.i53.i, i32 0, i32 1
  %72 = getelementptr inbounds [4 x i8], ptr %b.i53.i, i32 0, i32 2
  %73 = getelementptr inbounds [4 x i8], ptr %b.i53.i, i32 0, i32 3
  %74 = ptrtoint ptr %b.i53.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 4, ptr %b.i53.i, align 1
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 3, ptr %71, align 1
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -112, ptr %72, align 1
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %73, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i54.i) #7
  %78 = getelementptr inbounds i8, ptr %msg.i54.i, i32 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 327679, ptr %78, align 4
  %80 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %config.i.i, align 4
  %conv15.i56.i = zext i8 %81 to i16
  %82 = ptrtoint ptr %msg.i54.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv15.i56.i, ptr %msg.i54.i, align 4
  %flags.i57.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54.i, i32 0, i32 1
  %83 = ptrtoint ptr %flags.i57.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %flags.i57.i, align 2
  %buf.i59.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54.i, i32 0, i32 3
  %84 = ptrtoint ptr %buf.i59.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %b.i53.i, ptr %buf.i59.i, align 4
  %85 = load i32, ptr @debug, align 4
  %and16.i60.i = and i32 %85, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i60.i)
  %tobool.not.i61.i = icmp eq i32 %and16.i60.i, 0
  br i1 %tobool.not.i61.i, label %if.end39.i.dib3000_write_reg.exit67.i_crit_edge, label %do.end.i63.i

if.end39.i.dib3000_write_reg.exit67.i_crit_edge:  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit67.i

do.end.i63.i:                                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i62.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 1027, i32 noundef 1027, i32 noundef 36864, i32 noundef 36864) #11
  br label %dib3000_write_reg.exit67.i

dib3000_write_reg.exit67.i:                       ; preds = %do.end.i63.i, %if.end39.i.dib3000_write_reg.exit67.i_crit_edge
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %call25.i64.i = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %msg.i54.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i64.i)
  %cmp.not.i65.i = icmp eq i32 %call25.i64.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i54.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i53.i) #7
  br i1 %cmp.not.i65.i, label %if.end48.i, label %do.end45.i

do.end45.i:                                       ; preds = %dib3000_write_reg.exit67.i
  call void @__sanitizer_cov_trace_pc() #9
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 36864, i32 noundef 1027) #11
  br label %dib3000mb_fe_init.exit

if.end48.i:                                       ; preds = %dib3000_write_reg.exit67.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i68.i) #7
  %88 = getelementptr inbounds [4 x i8], ptr %b.i68.i, i32 0, i32 1
  %89 = getelementptr inbounds [4 x i8], ptr %b.i68.i, i32 0, i32 2
  %90 = getelementptr inbounds [4 x i8], ptr %b.i68.i, i32 0, i32 3
  %91 = ptrtoint ptr %b.i68.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 4, ptr %b.i68.i, align 1
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 5, ptr %88, align 1
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %89, align 1
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i69.i) #7
  %95 = getelementptr inbounds i8, ptr %msg.i69.i, i32 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 327679, ptr %95, align 4
  %97 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %config.i.i, align 4
  %conv15.i71.i = zext i8 %98 to i16
  %99 = ptrtoint ptr %msg.i69.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv15.i71.i, ptr %msg.i69.i, align 4
  %flags.i72.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69.i, i32 0, i32 1
  %100 = ptrtoint ptr %flags.i72.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %flags.i72.i, align 2
  %buf.i74.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i69.i, i32 0, i32 3
  %101 = ptrtoint ptr %buf.i74.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %b.i68.i, ptr %buf.i74.i, align 4
  %102 = load i32, ptr @debug, align 4
  %and16.i75.i = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i75.i)
  %tobool.not.i76.i = icmp eq i32 %and16.i75.i, 0
  br i1 %tobool.not.i76.i, label %if.end48.i.dib3000_write_reg.exit82.i_crit_edge, label %do.end.i78.i

if.end48.i.dib3000_write_reg.exit82.i_crit_edge:  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit82.i

do.end.i78.i:                                     ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 1029, i32 noundef 1029, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit82.i

dib3000_write_reg.exit82.i:                       ; preds = %do.end.i78.i, %if.end48.i.dib3000_write_reg.exit82.i_crit_edge
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  %call25.i79.i = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %msg.i69.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i79.i)
  %cmp.not.i80.i = icmp eq i32 %call25.i79.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i69.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i68.i) #7
  br i1 %cmp.not.i80.i, label %if.end57.i, label %do.end54.i

do.end54.i:                                       ; preds = %dib3000_write_reg.exit82.i
  call void @__sanitizer_cov_trace_pc() #9
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 1029) #11
  br label %dib3000mb_fe_init.exit

if.end57.i:                                       ; preds = %dib3000_write_reg.exit82.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i83.i) #7
  %105 = getelementptr inbounds [4 x i8], ptr %b.i83.i, i32 0, i32 1
  %106 = getelementptr inbounds [4 x i8], ptr %b.i83.i, i32 0, i32 2
  %107 = getelementptr inbounds [4 x i8], ptr %b.i83.i, i32 0, i32 3
  %108 = ptrtoint ptr %b.i83.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %b.i83.i, align 1
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 6, ptr %105, align 1
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %106, align 1
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -78, ptr %107, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i84.i) #7
  %112 = getelementptr inbounds i8, ptr %msg.i84.i, i32 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 327679, ptr %112, align 4
  %114 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %config.i.i, align 4
  %conv15.i86.i = zext i8 %115 to i16
  %116 = ptrtoint ptr %msg.i84.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv15.i86.i, ptr %msg.i84.i, align 4
  %flags.i87.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 0, i32 1
  %117 = ptrtoint ptr %flags.i87.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %flags.i87.i, align 2
  %buf.i89.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i84.i, i32 0, i32 3
  %118 = ptrtoint ptr %buf.i89.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %b.i83.i, ptr %buf.i89.i, align 4
  %119 = load i32, ptr @debug, align 4
  %and16.i90.i = and i32 %119, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i90.i)
  %tobool.not.i91.i = icmp eq i32 %and16.i90.i, 0
  br i1 %tobool.not.i91.i, label %if.end57.i.dib3000_write_reg.exit97.i_crit_edge, label %do.end.i93.i

if.end57.i.dib3000_write_reg.exit97.i_crit_edge:  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit97.i

do.end.i93.i:                                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i92.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 6, i32 noundef 6, i32 noundef 178, i32 noundef 178) #11
  br label %dib3000_write_reg.exit97.i

dib3000_write_reg.exit97.i:                       ; preds = %do.end.i93.i, %if.end57.i.dib3000_write_reg.exit97.i_crit_edge
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %call25.i94.i = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %msg.i84.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i94.i)
  %cmp.not.i95.i = icmp eq i32 %call25.i94.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i84.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i83.i) #7
  br i1 %cmp.not.i95.i, label %if.end66.i, label %do.end63.i

do.end63.i:                                       ; preds = %dib3000_write_reg.exit97.i
  call void @__sanitizer_cov_trace_pc() #9
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 178, i32 noundef 6) #11
  br label %dib3000mb_fe_init.exit

if.end66.i:                                       ; preds = %dib3000_write_reg.exit97.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i98.i) #7
  %122 = getelementptr inbounds [4 x i8], ptr %b.i98.i, i32 0, i32 1
  %123 = getelementptr inbounds [4 x i8], ptr %b.i98.i, i32 0, i32 2
  %124 = getelementptr inbounds [4 x i8], ptr %b.i98.i, i32 0, i32 3
  %125 = ptrtoint ptr %b.i98.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %b.i98.i, align 1
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 7, ptr %122, align 1
  %127 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 35, ptr %123, align 1
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 30, ptr %124, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i99.i) #7
  %129 = getelementptr inbounds i8, ptr %msg.i99.i, i32 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 327679, ptr %129, align 4
  %131 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %config.i.i, align 4
  %conv15.i101.i = zext i8 %132 to i16
  %133 = ptrtoint ptr %msg.i99.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv15.i101.i, ptr %msg.i99.i, align 4
  %flags.i102.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i99.i, i32 0, i32 1
  %134 = ptrtoint ptr %flags.i102.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 0, ptr %flags.i102.i, align 2
  %buf.i104.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i99.i, i32 0, i32 3
  %135 = ptrtoint ptr %buf.i104.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %b.i98.i, ptr %buf.i104.i, align 4
  %136 = load i32, ptr @debug, align 4
  %and16.i105.i = and i32 %136, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i105.i)
  %tobool.not.i106.i = icmp eq i32 %and16.i105.i, 0
  br i1 %tobool.not.i106.i, label %if.end66.i.dib3000_write_reg.exit112.i_crit_edge, label %do.end.i108.i

if.end66.i.dib3000_write_reg.exit112.i_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit112.i

do.end.i108.i:                                    ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i107.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 7, i32 noundef 7, i32 noundef 8990, i32 noundef 8990) #11
  br label %dib3000_write_reg.exit112.i

dib3000_write_reg.exit112.i:                      ; preds = %do.end.i108.i, %if.end66.i.dib3000_write_reg.exit112.i_crit_edge
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %1, align 4
  %call25.i109.i = call i32 @i2c_transfer(ptr noundef %138, ptr noundef nonnull %msg.i99.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i109.i)
  %cmp.not.i110.i = icmp eq i32 %call25.i109.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i99.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i98.i) #7
  br i1 %cmp.not.i110.i, label %for.cond.preheader.i, label %do.end72.i

for.cond.preheader.i:                             ; preds = %dib3000_write_reg.exit112.i
  %139 = getelementptr inbounds [4 x i8], ptr %b.i113.i, i32 0, i32 1
  %140 = getelementptr inbounds [4 x i8], ptr %b.i113.i, i32 0, i32 2
  %141 = getelementptr inbounds [4 x i8], ptr %b.i113.i, i32 0, i32 3
  %142 = getelementptr inbounds i8, ptr %msg.i114.i, i32 4
  %flags.i117.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i114.i, i32 0, i32 1
  %buf.i119.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i114.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i113.i) #7
  %143 = ptrtoint ptr %b.i113.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %b.i113.i, align 1
  %144 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 8, ptr %139, align 1
  %145 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %140, align 1
  %146 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 -88, ptr %141, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i114.i) #7
  %147 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 327679, ptr %142, align 4
  %148 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %config.i.i, align 4
  %conv15.i116.i = zext i8 %149 to i16
  %150 = ptrtoint ptr %msg.i114.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv15.i116.i, ptr %msg.i114.i, align 4
  %151 = ptrtoint ptr %flags.i117.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %flags.i117.i, align 2
  %152 = ptrtoint ptr %buf.i119.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %b.i113.i, ptr %buf.i119.i, align 4
  %153 = load i32, ptr @debug, align 4
  %and16.i120.i = and i32 %153, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i120.i)
  %tobool.not.i121.i = icmp eq i32 %and16.i120.i, 0
  br i1 %tobool.not.i121.i, label %for.cond.preheader.i.dib3000_write_reg.exit127.i_crit_edge, label %do.end.i123.i

for.cond.preheader.i.dib3000_write_reg.exit127.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit127.i

do.end72.i:                                       ; preds = %dib3000_write_reg.exit112.i
  call void @__sanitizer_cov_trace_pc() #9
  %call74.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 8990, i32 noundef 7) #11
  br label %dib3000mb_fe_init.exit

for.cond.i:                                       ; preds = %dib3000_write_reg.exit127.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i113.i) #7
  %154 = ptrtoint ptr %b.i113.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %b.i113.i, align 1
  %155 = ptrtoint ptr %139 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 9, ptr %139, align 1
  %156 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 -2, ptr %140, align 1
  %157 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 -116, ptr %141, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i114.i) #7
  %158 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 327679, ptr %142, align 4
  %159 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %config.i.i, align 4
  %conv15.i116.1.i = zext i8 %160 to i16
  %161 = ptrtoint ptr %msg.i114.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv15.i116.1.i, ptr %msg.i114.i, align 4
  %162 = ptrtoint ptr %flags.i117.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 0, ptr %flags.i117.i, align 2
  %163 = ptrtoint ptr %buf.i119.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %b.i113.i, ptr %buf.i119.i, align 4
  %164 = load i32, ptr @debug, align 4
  %and16.i120.1.i = and i32 %164, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i120.1.i)
  %tobool.not.i121.1.i = icmp eq i32 %and16.i120.1.i, 0
  br i1 %tobool.not.i121.1.i, label %for.cond.i.dib3000_write_reg.exit127.1.i_crit_edge, label %do.end.i123.1.i

for.cond.i.dib3000_write_reg.exit127.1.i_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit127.1.i

do.end.i123.1.i:                                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i122.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 9, i32 noundef 9, i32 noundef 65164, i32 noundef 65164) #11
  br label %dib3000_write_reg.exit127.1.i

dib3000_write_reg.exit127.1.i:                    ; preds = %do.end.i123.1.i, %for.cond.i.dib3000_write_reg.exit127.1.i_crit_edge
  %165 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %1, align 4
  %call25.i124.1.i = call i32 @i2c_transfer(ptr noundef %166, ptr noundef nonnull %msg.i114.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i124.1.i)
  %cmp.not.i125.1.i = icmp eq i32 %call25.i124.1.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i114.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i113.i) #7
  br i1 %cmp.not.i125.1.i, label %for.cond.1.i, label %dib3000_write_reg.exit127.1.i.do.end82.i_crit_edge

dib3000_write_reg.exit127.1.i.do.end82.i_crit_edge: ; preds = %dib3000_write_reg.exit127.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82.i

for.cond.1.i:                                     ; preds = %dib3000_write_reg.exit127.1.i
  %167 = getelementptr inbounds [4 x i8], ptr %b.i128.i, i32 0, i32 1
  %168 = getelementptr inbounds [4 x i8], ptr %b.i128.i, i32 0, i32 2
  %169 = getelementptr inbounds [4 x i8], ptr %b.i128.i, i32 0, i32 3
  %170 = getelementptr inbounds i8, ptr %msg.i129.i, i32 4
  %flags.i136.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129.i, i32 0, i32 1
  %buf.i138.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i129.i, i32 0, i32 3
  br label %for.body93.i

do.end.i123.i:                                    ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i122.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 8, i32 noundef 8, i32 noundef 168, i32 noundef 168) #11
  br label %dib3000_write_reg.exit127.i

dib3000_write_reg.exit127.i:                      ; preds = %do.end.i123.i, %for.cond.preheader.i.dib3000_write_reg.exit127.i_crit_edge
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  %call25.i124.i = call i32 @i2c_transfer(ptr noundef %172, ptr noundef nonnull %msg.i114.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i124.i)
  %cmp.not.i125.i = icmp eq i32 %call25.i124.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i114.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i113.i) #7
  br i1 %cmp.not.i125.i, label %for.cond.i, label %dib3000_write_reg.exit127.i.do.end82.i_crit_edge

dib3000_write_reg.exit127.i.do.end82.i_crit_edge: ; preds = %dib3000_write_reg.exit127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end82.i

do.end82.i:                                       ; preds = %dib3000_write_reg.exit127.i.do.end82.i_crit_edge, %dib3000_write_reg.exit127.1.i.do.end82.i_crit_edge
  %.lcssa786.i = phi i32 [ 8, %dib3000_write_reg.exit127.i.do.end82.i_crit_edge ], [ 9, %dib3000_write_reg.exit127.1.i.do.end82.i_crit_edge ]
  %.lcssa784.i = phi i32 [ 168, %dib3000_write_reg.exit127.i.do.end82.i_crit_edge ], [ 65164, %dib3000_write_reg.exit127.1.i.do.end82.i_crit_edge ]
  %call87.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %.lcssa784.i, i32 noundef %.lcssa786.i) #11
  br label %dib3000mb_fe_init.exit

for.cond90.i:                                     ; preds = %dib3000_write_reg.exit148.i
  %inc110.i = add nuw nsw i32 %i89.0756.i, 1
  %exitcond.not.i = icmp eq i32 %inc110.i, 5
  br i1 %exitcond.not.i, label %for.cond116.preheader.i, label %for.cond90.i.for.body93.i_crit_edge

for.cond90.i.for.body93.i_crit_edge:              ; preds = %for.cond90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body93.i

for.cond116.preheader.i:                          ; preds = %for.cond90.i
  %173 = getelementptr inbounds [4 x i8], ptr %b.i149.i, i32 0, i32 1
  %174 = getelementptr inbounds [4 x i8], ptr %b.i149.i, i32 0, i32 2
  %175 = getelementptr inbounds [4 x i8], ptr %b.i149.i, i32 0, i32 3
  %176 = getelementptr inbounds i8, ptr %msg.i150.i, i32 4
  %flags.i157.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i150.i, i32 0, i32 1
  %buf.i159.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i150.i, i32 0, i32 3
  br label %for.body119.i

for.body93.i:                                     ; preds = %for.cond90.i.for.body93.i_crit_edge, %for.cond.1.i
  %i89.0756.i = phi i32 [ 0, %for.cond.1.i ], [ %inc110.i, %for.cond90.i.for.body93.i_crit_edge ]
  %arrayidx94.i = getelementptr [5 x i16], ptr @dib3000mb_reg_impulse_noise, i32 0, i32 %i89.0756.i
  %177 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %arrayidx94.i, align 2
  %arrayidx95.i = getelementptr [5 x i16], ptr @dib3000mb_impulse_noise_values, i32 0, i32 %i89.0756.i
  %179 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %arrayidx95.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i128.i) #7
  %181 = lshr i16 %178, 8
  %conv1.i130.i = trunc i16 %181 to i8
  %182 = ptrtoint ptr %b.i128.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %conv1.i130.i, ptr %b.i128.i, align 1
  %conv4.i131.i = trunc i16 %178 to i8
  %183 = ptrtoint ptr %167 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv4.i131.i, ptr %167, align 1
  %184 = lshr i16 %180, 8
  %conv9.i132.i = trunc i16 %184 to i8
  %185 = ptrtoint ptr %168 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %conv9.i132.i, ptr %168, align 1
  %conv13.i133.i = trunc i16 %180 to i8
  %186 = ptrtoint ptr %169 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %conv13.i133.i, ptr %169, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i129.i) #7
  %187 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 327679, ptr %170, align 4
  %188 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %config.i.i, align 4
  %conv15.i135.i = zext i8 %189 to i16
  %190 = ptrtoint ptr %msg.i129.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv15.i135.i, ptr %msg.i129.i, align 4
  %191 = ptrtoint ptr %flags.i136.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 0, ptr %flags.i136.i, align 2
  %192 = ptrtoint ptr %buf.i138.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %b.i128.i, ptr %buf.i138.i, align 4
  %193 = load i32, ptr @debug, align 4
  %and16.i139.i = and i32 %193, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i139.i)
  %tobool.not.i140.i = icmp eq i32 %and16.i139.i, 0
  br i1 %tobool.not.i140.i, label %for.body93.i.dib3000_write_reg.exit148.i_crit_edge, label %do.end.i144.i

for.body93.i.dib3000_write_reg.exit148.i_crit_edge: ; preds = %for.body93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit148.i

do.end.i144.i:                                    ; preds = %for.body93.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i141.i = zext i16 %180 to i32
  %conv.i142.i = zext i16 %178 to i32
  %call.i143.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv.i142.i, i32 noundef %conv.i142.i, i32 noundef %conv6.i141.i, i32 noundef %conv6.i141.i) #11
  br label %dib3000_write_reg.exit148.i

dib3000_write_reg.exit148.i:                      ; preds = %do.end.i144.i, %for.body93.i.dib3000_write_reg.exit148.i_crit_edge
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %1, align 4
  %call25.i145.i = call i32 @i2c_transfer(ptr noundef %195, ptr noundef nonnull %msg.i129.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i145.i)
  %cmp.not.i146.i = icmp eq i32 %call25.i145.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i129.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i128.i) #7
  br i1 %cmp.not.i146.i, label %for.cond90.i, label %do.end101.i

do.end101.i:                                      ; preds = %dib3000_write_reg.exit148.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv104.i = zext i16 %180 to i32
  %conv106.i = zext i16 %178 to i32
  %call107.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv104.i, i32 noundef %conv106.i) #11
  br label %dib3000mb_fe_init.exit

for.cond116.i:                                    ; preds = %dib3000_write_reg.exit169.i
  %inc136.i = add nuw nsw i32 %i115.0757.i, 1
  %exitcond787.not.i = icmp eq i32 %inc136.i, 14
  br i1 %exitcond787.not.i, label %cleanup.cont140.critedge.i, label %for.cond116.i.for.body119.i_crit_edge

for.cond116.i.for.body119.i_crit_edge:            ; preds = %for.cond116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body119.i

for.body119.i:                                    ; preds = %for.cond116.i.for.body119.i_crit_edge, %for.cond116.preheader.i
  %i115.0757.i = phi i32 [ 0, %for.cond116.preheader.i ], [ %inc136.i, %for.cond116.i.for.body119.i_crit_edge ]
  %arrayidx120.i = getelementptr [14 x i16], ptr @dib3000mb_reg_agc_gain, i32 0, i32 %i115.0757.i
  %196 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %arrayidx120.i, align 2
  %arrayidx121.i = getelementptr [14 x i16], ptr @dib3000mb_default_agc_gain, i32 0, i32 %i115.0757.i
  %198 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %arrayidx121.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i149.i) #7
  %200 = lshr i16 %197, 8
  %conv1.i151.i = trunc i16 %200 to i8
  %201 = ptrtoint ptr %b.i149.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %conv1.i151.i, ptr %b.i149.i, align 1
  %conv4.i152.i = trunc i16 %197 to i8
  %202 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv4.i152.i, ptr %173, align 1
  %203 = lshr i16 %199, 8
  %conv9.i153.i = trunc i16 %203 to i8
  %204 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv9.i153.i, ptr %174, align 1
  %conv13.i154.i = trunc i16 %199 to i8
  %205 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %conv13.i154.i, ptr %175, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i150.i) #7
  %206 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 327679, ptr %176, align 4
  %207 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %config.i.i, align 4
  %conv15.i156.i = zext i8 %208 to i16
  %209 = ptrtoint ptr %msg.i150.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %conv15.i156.i, ptr %msg.i150.i, align 4
  %210 = ptrtoint ptr %flags.i157.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 0, ptr %flags.i157.i, align 2
  %211 = ptrtoint ptr %buf.i159.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %b.i149.i, ptr %buf.i159.i, align 4
  %212 = load i32, ptr @debug, align 4
  %and16.i160.i = and i32 %212, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i160.i)
  %tobool.not.i161.i = icmp eq i32 %and16.i160.i, 0
  br i1 %tobool.not.i161.i, label %for.body119.i.dib3000_write_reg.exit169.i_crit_edge, label %do.end.i165.i

for.body119.i.dib3000_write_reg.exit169.i_crit_edge: ; preds = %for.body119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit169.i

do.end.i165.i:                                    ; preds = %for.body119.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i162.i = zext i16 %199 to i32
  %conv.i163.i = zext i16 %197 to i32
  %call.i164.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv.i163.i, i32 noundef %conv.i163.i, i32 noundef %conv6.i162.i, i32 noundef %conv6.i162.i) #11
  br label %dib3000_write_reg.exit169.i

dib3000_write_reg.exit169.i:                      ; preds = %do.end.i165.i, %for.body119.i.dib3000_write_reg.exit169.i_crit_edge
  %213 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %1, align 4
  %call25.i166.i = call i32 @i2c_transfer(ptr noundef %214, ptr noundef nonnull %msg.i150.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i166.i)
  %cmp.not.i167.i = icmp eq i32 %call25.i166.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i150.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i149.i) #7
  br i1 %cmp.not.i167.i, label %for.cond116.i, label %do.end127.i

do.end127.i:                                      ; preds = %dib3000_write_reg.exit169.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv130.i = zext i16 %199 to i32
  %conv132.i = zext i16 %197 to i32
  %call133.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv130.i, i32 noundef %conv132.i) #11
  br label %dib3000mb_fe_init.exit

cleanup.cont140.critedge.i:                       ; preds = %for.cond116.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i170.i) #7
  %215 = getelementptr inbounds [4 x i8], ptr %b.i170.i, i32 0, i32 1
  %216 = getelementptr inbounds [4 x i8], ptr %b.i170.i, i32 0, i32 2
  %217 = getelementptr inbounds [4 x i8], ptr %b.i170.i, i32 0, i32 3
  %218 = ptrtoint ptr %b.i170.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %b.i170.i, align 1
  %219 = ptrtoint ptr %215 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 87, ptr %215, align 1
  %220 = ptrtoint ptr %216 to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %216, align 1
  %221 = ptrtoint ptr %217 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 0, ptr %217, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i171.i) #7
  %222 = getelementptr inbounds i8, ptr %msg.i171.i, i32 4
  %223 = ptrtoint ptr %222 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 327679, ptr %222, align 4
  %224 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %config.i.i, align 4
  %conv15.i173.i = zext i8 %225 to i16
  %226 = ptrtoint ptr %msg.i171.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %conv15.i173.i, ptr %msg.i171.i, align 4
  %flags.i174.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i171.i, i32 0, i32 1
  %227 = ptrtoint ptr %flags.i174.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 0, ptr %flags.i174.i, align 2
  %buf.i176.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i171.i, i32 0, i32 3
  %228 = ptrtoint ptr %buf.i176.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %b.i170.i, ptr %buf.i176.i, align 4
  %229 = load i32, ptr @debug, align 4
  %and16.i177.i = and i32 %229, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i177.i)
  %tobool.not.i178.i = icmp eq i32 %and16.i177.i, 0
  br i1 %tobool.not.i178.i, label %cleanup.cont140.critedge.i.dib3000_write_reg.exit184.i_crit_edge, label %do.end.i180.i

cleanup.cont140.critedge.i.dib3000_write_reg.exit184.i_crit_edge: ; preds = %cleanup.cont140.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit184.i

do.end.i180.i:                                    ; preds = %cleanup.cont140.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i179.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 87, i32 noundef 87, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit184.i

dib3000_write_reg.exit184.i:                      ; preds = %do.end.i180.i, %cleanup.cont140.critedge.i.dib3000_write_reg.exit184.i_crit_edge
  %230 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %1, align 4
  %call25.i181.i = call i32 @i2c_transfer(ptr noundef %231, ptr noundef nonnull %msg.i171.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i181.i)
  %cmp.not.i182.i = icmp eq i32 %call25.i181.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i171.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i170.i) #7
  br i1 %cmp.not.i182.i, label %for.cond151.preheader.i, label %do.end146.i

for.cond151.preheader.i:                          ; preds = %dib3000_write_reg.exit184.i
  %232 = getelementptr inbounds [4 x i8], ptr %b.i185.i, i32 0, i32 1
  %233 = getelementptr inbounds [4 x i8], ptr %b.i185.i, i32 0, i32 2
  %234 = getelementptr inbounds [4 x i8], ptr %b.i185.i, i32 0, i32 3
  %235 = getelementptr inbounds i8, ptr %msg.i186.i, i32 4
  %flags.i193.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i186.i, i32 0, i32 1
  %buf.i195.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i186.i, i32 0, i32 3
  br label %for.body154.i

do.end146.i:                                      ; preds = %dib3000_write_reg.exit184.i
  call void @__sanitizer_cov_trace_pc() #9
  %call148.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 87) #11
  br label %dib3000mb_fe_init.exit

for.cond151.i:                                    ; preds = %dib3000_write_reg.exit205.i
  %inc171.i = add nuw nsw i32 %i150.0758.i, 1
  %exitcond788.not.i = icmp eq i32 %inc171.i, 5
  br i1 %exitcond788.not.i, label %for.cond177.preheader.i, label %for.cond151.i.for.body154.i_crit_edge

for.cond151.i.for.body154.i_crit_edge:            ; preds = %for.cond151.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body154.i

for.cond177.preheader.i:                          ; preds = %for.cond151.i
  %236 = getelementptr inbounds [4 x i8], ptr %b.i206.i, i32 0, i32 1
  %237 = getelementptr inbounds [4 x i8], ptr %b.i206.i, i32 0, i32 2
  %238 = getelementptr inbounds [4 x i8], ptr %b.i206.i, i32 0, i32 3
  %239 = getelementptr inbounds i8, ptr %msg.i207.i, i32 4
  %flags.i214.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i207.i, i32 0, i32 1
  %buf.i216.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i207.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i206.i) #7
  %240 = ptrtoint ptr %b.i206.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 0, ptr %b.i206.i, align 1
  %241 = ptrtoint ptr %236 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 39, ptr %236, align 1
  %242 = ptrtoint ptr %237 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 0, ptr %237, align 1
  %243 = ptrtoint ptr %238 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 -121, ptr %238, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i207.i) #7
  %244 = ptrtoint ptr %239 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 327679, ptr %239, align 4
  %245 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %config.i.i, align 4
  %conv15.i213.i = zext i8 %246 to i16
  %247 = ptrtoint ptr %msg.i207.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %conv15.i213.i, ptr %msg.i207.i, align 4
  %248 = ptrtoint ptr %flags.i214.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 0, ptr %flags.i214.i, align 2
  %249 = ptrtoint ptr %buf.i216.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %b.i206.i, ptr %buf.i216.i, align 4
  %250 = load i32, ptr @debug, align 4
  %and16.i217.i = and i32 %250, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i217.i)
  %tobool.not.i218.i = icmp eq i32 %and16.i217.i, 0
  br i1 %tobool.not.i218.i, label %for.cond177.preheader.i.dib3000_write_reg.exit226.i_crit_edge, label %do.end.i222.i

for.cond177.preheader.i.dib3000_write_reg.exit226.i_crit_edge: ; preds = %for.cond177.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit226.i

for.body154.i:                                    ; preds = %for.cond151.i.for.body154.i_crit_edge, %for.cond151.preheader.i
  %i150.0758.i = phi i32 [ 0, %for.cond151.preheader.i ], [ %inc171.i, %for.cond151.i.for.body154.i_crit_edge ]
  %arrayidx155.i = getelementptr [5 x i16], ptr @dib3000mb_reg_phase_noise, i32 0, i32 %i150.0758.i
  %251 = ptrtoint ptr %arrayidx155.i to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %arrayidx155.i, align 2
  %arrayidx156.i = getelementptr [5 x i16], ptr @dib3000mb_default_noise_phase, i32 0, i32 %i150.0758.i
  %253 = ptrtoint ptr %arrayidx156.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %arrayidx156.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i185.i) #7
  %255 = lshr i16 %252, 8
  %conv1.i187.i = trunc i16 %255 to i8
  %256 = ptrtoint ptr %b.i185.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 %conv1.i187.i, ptr %b.i185.i, align 1
  %conv4.i188.i = trunc i16 %252 to i8
  %257 = ptrtoint ptr %232 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %conv4.i188.i, ptr %232, align 1
  %258 = lshr i16 %254, 8
  %conv9.i189.i = trunc i16 %258 to i8
  %259 = ptrtoint ptr %233 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %conv9.i189.i, ptr %233, align 1
  %conv13.i190.i = trunc i16 %254 to i8
  %260 = ptrtoint ptr %234 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 %conv13.i190.i, ptr %234, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i186.i) #7
  %261 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 327679, ptr %235, align 4
  %262 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %config.i.i, align 4
  %conv15.i192.i = zext i8 %263 to i16
  %264 = ptrtoint ptr %msg.i186.i to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 %conv15.i192.i, ptr %msg.i186.i, align 4
  %265 = ptrtoint ptr %flags.i193.i to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 0, ptr %flags.i193.i, align 2
  %266 = ptrtoint ptr %buf.i195.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %b.i185.i, ptr %buf.i195.i, align 4
  %267 = load i32, ptr @debug, align 4
  %and16.i196.i = and i32 %267, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i196.i)
  %tobool.not.i197.i = icmp eq i32 %and16.i196.i, 0
  br i1 %tobool.not.i197.i, label %for.body154.i.dib3000_write_reg.exit205.i_crit_edge, label %do.end.i201.i

for.body154.i.dib3000_write_reg.exit205.i_crit_edge: ; preds = %for.body154.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit205.i

do.end.i201.i:                                    ; preds = %for.body154.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i198.i = zext i16 %254 to i32
  %conv.i199.i = zext i16 %252 to i32
  %call.i200.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv.i199.i, i32 noundef %conv.i199.i, i32 noundef %conv6.i198.i, i32 noundef %conv6.i198.i) #11
  br label %dib3000_write_reg.exit205.i

dib3000_write_reg.exit205.i:                      ; preds = %do.end.i201.i, %for.body154.i.dib3000_write_reg.exit205.i_crit_edge
  %268 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %1, align 4
  %call25.i202.i = call i32 @i2c_transfer(ptr noundef %269, ptr noundef nonnull %msg.i186.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i202.i)
  %cmp.not.i203.i = icmp eq i32 %call25.i202.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i186.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i185.i) #7
  br i1 %cmp.not.i203.i, label %for.cond151.i, label %do.end162.i

do.end162.i:                                      ; preds = %dib3000_write_reg.exit205.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv165.i = zext i16 %254 to i32
  %conv167.i = zext i16 %252 to i32
  %call168.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv165.i, i32 noundef %conv167.i) #11
  br label %dib3000mb_fe_init.exit

for.cond177.i:                                    ; preds = %dib3000_write_reg.exit226.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i206.i) #7
  %270 = ptrtoint ptr %b.i206.i to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 0, ptr %b.i206.i, align 1
  %271 = ptrtoint ptr %236 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 40, ptr %236, align 1
  %272 = ptrtoint ptr %237 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 0, ptr %237, align 1
  %273 = ptrtoint ptr %238 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 -121, ptr %238, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i207.i) #7
  %274 = ptrtoint ptr %239 to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 327679, ptr %239, align 4
  %275 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %config.i.i, align 4
  %conv15.i213.1.i = zext i8 %276 to i16
  %277 = ptrtoint ptr %msg.i207.i to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 %conv15.i213.1.i, ptr %msg.i207.i, align 4
  %278 = ptrtoint ptr %flags.i214.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 0, ptr %flags.i214.i, align 2
  %279 = ptrtoint ptr %buf.i216.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr %b.i206.i, ptr %buf.i216.i, align 4
  %280 = load i32, ptr @debug, align 4
  %and16.i217.1.i = and i32 %280, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i217.1.i)
  %tobool.not.i218.1.i = icmp eq i32 %and16.i217.1.i, 0
  br i1 %tobool.not.i218.1.i, label %for.cond177.i.dib3000_write_reg.exit226.1.i_crit_edge, label %do.end.i222.1.i

for.cond177.i.dib3000_write_reg.exit226.1.i_crit_edge: ; preds = %for.cond177.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit226.1.i

do.end.i222.1.i:                                  ; preds = %for.cond177.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i221.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 40, i32 noundef 40, i32 noundef 135, i32 noundef 135) #11
  br label %dib3000_write_reg.exit226.1.i

dib3000_write_reg.exit226.1.i:                    ; preds = %do.end.i222.1.i, %for.cond177.i.dib3000_write_reg.exit226.1.i_crit_edge
  %281 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %1, align 4
  %call25.i223.1.i = call i32 @i2c_transfer(ptr noundef %282, ptr noundef nonnull %msg.i207.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i223.1.i)
  %cmp.not.i224.1.i = icmp eq i32 %call25.i223.1.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i207.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i206.i) #7
  br i1 %cmp.not.i224.1.i, label %for.cond177.1.i, label %dib3000_write_reg.exit226.1.i.do.end188.i_crit_edge

dib3000_write_reg.exit226.1.i.do.end188.i_crit_edge: ; preds = %dib3000_write_reg.exit226.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end188.i

for.cond177.1.i:                                  ; preds = %dib3000_write_reg.exit226.1.i
  %283 = getelementptr inbounds [4 x i8], ptr %b.i227.i, i32 0, i32 1
  %284 = getelementptr inbounds [4 x i8], ptr %b.i227.i, i32 0, i32 2
  %285 = getelementptr inbounds [4 x i8], ptr %b.i227.i, i32 0, i32 3
  %286 = getelementptr inbounds i8, ptr %msg.i228.i, i32 4
  %flags.i235.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i228.i, i32 0, i32 1
  %buf.i237.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i228.i, i32 0, i32 3
  br label %for.body206.i

do.end.i222.i:                                    ; preds = %for.cond177.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i221.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 39, i32 noundef 39, i32 noundef 135, i32 noundef 135) #11
  br label %dib3000_write_reg.exit226.i

dib3000_write_reg.exit226.i:                      ; preds = %do.end.i222.i, %for.cond177.preheader.i.dib3000_write_reg.exit226.i_crit_edge
  %287 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %1, align 4
  %call25.i223.i = call i32 @i2c_transfer(ptr noundef %288, ptr noundef nonnull %msg.i207.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i223.i)
  %cmp.not.i224.i = icmp eq i32 %call25.i223.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i207.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i206.i) #7
  br i1 %cmp.not.i224.i, label %for.cond177.i, label %dib3000_write_reg.exit226.i.do.end188.i_crit_edge

dib3000_write_reg.exit226.i.do.end188.i_crit_edge: ; preds = %dib3000_write_reg.exit226.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end188.i

do.end188.i:                                      ; preds = %dib3000_write_reg.exit226.i.do.end188.i_crit_edge, %dib3000_write_reg.exit226.1.i.do.end188.i_crit_edge
  %.lcssa774.i = phi i32 [ 39, %dib3000_write_reg.exit226.i.do.end188.i_crit_edge ], [ 40, %dib3000_write_reg.exit226.1.i.do.end188.i_crit_edge ]
  %call194.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 135, i32 noundef %.lcssa774.i) #11
  br label %dib3000mb_fe_init.exit

for.cond203.i:                                    ; preds = %dib3000_write_reg.exit247.i
  %inc223.i = add nuw nsw i32 %i202.0760.i, 1
  %exitcond789.not.i = icmp eq i32 %inc223.i, 8
  br i1 %exitcond789.not.i, label %cleanup.cont227.critedge.i, label %for.cond203.i.for.body206.i_crit_edge

for.cond203.i.for.body206.i_crit_edge:            ; preds = %for.cond203.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body206.i

for.body206.i:                                    ; preds = %for.cond203.i.for.body206.i_crit_edge, %for.cond177.1.i
  %i202.0760.i = phi i32 [ 0, %for.cond177.1.i ], [ %inc223.i, %for.cond203.i.for.body206.i_crit_edge ]
  %arrayidx207.i = getelementptr [8 x i16], ptr @dib3000mb_reg_agc_bandwidth, i32 0, i32 %i202.0760.i
  %289 = ptrtoint ptr %arrayidx207.i to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %arrayidx207.i, align 2
  %arrayidx208.i = getelementptr [8 x i16], ptr @dib3000mb_agc_bandwidth_low, i32 0, i32 %i202.0760.i
  %291 = ptrtoint ptr %arrayidx208.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %arrayidx208.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i227.i) #7
  %293 = lshr i16 %290, 8
  %conv1.i229.i = trunc i16 %293 to i8
  %294 = ptrtoint ptr %b.i227.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %conv1.i229.i, ptr %b.i227.i, align 1
  %conv4.i230.i = trunc i16 %290 to i8
  %295 = ptrtoint ptr %283 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 %conv4.i230.i, ptr %283, align 1
  %296 = lshr i16 %292, 8
  %conv9.i231.i = trunc i16 %296 to i8
  %297 = ptrtoint ptr %284 to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 %conv9.i231.i, ptr %284, align 1
  %conv13.i232.i = trunc i16 %292 to i8
  %298 = ptrtoint ptr %285 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %conv13.i232.i, ptr %285, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i228.i) #7
  %299 = ptrtoint ptr %286 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 327679, ptr %286, align 4
  %300 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %config.i.i, align 4
  %conv15.i234.i = zext i8 %301 to i16
  %302 = ptrtoint ptr %msg.i228.i to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 %conv15.i234.i, ptr %msg.i228.i, align 4
  %303 = ptrtoint ptr %flags.i235.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 0, ptr %flags.i235.i, align 2
  %304 = ptrtoint ptr %buf.i237.i to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %b.i227.i, ptr %buf.i237.i, align 4
  %305 = load i32, ptr @debug, align 4
  %and16.i238.i = and i32 %305, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i238.i)
  %tobool.not.i239.i = icmp eq i32 %and16.i238.i, 0
  br i1 %tobool.not.i239.i, label %for.body206.i.dib3000_write_reg.exit247.i_crit_edge, label %do.end.i243.i

for.body206.i.dib3000_write_reg.exit247.i_crit_edge: ; preds = %for.body206.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit247.i

do.end.i243.i:                                    ; preds = %for.body206.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i240.i = zext i16 %292 to i32
  %conv.i241.i = zext i16 %290 to i32
  %call.i242.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv.i241.i, i32 noundef %conv.i241.i, i32 noundef %conv6.i240.i, i32 noundef %conv6.i240.i) #11
  br label %dib3000_write_reg.exit247.i

dib3000_write_reg.exit247.i:                      ; preds = %do.end.i243.i, %for.body206.i.dib3000_write_reg.exit247.i_crit_edge
  %306 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %1, align 4
  %call25.i244.i = call i32 @i2c_transfer(ptr noundef %307, ptr noundef nonnull %msg.i228.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i244.i)
  %cmp.not.i245.i = icmp eq i32 %call25.i244.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i228.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i227.i) #7
  br i1 %cmp.not.i245.i, label %for.cond203.i, label %do.end214.i

do.end214.i:                                      ; preds = %dib3000_write_reg.exit247.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv217.i = zext i16 %292 to i32
  %conv219.i = zext i16 %290 to i32
  %call220.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv217.i, i32 noundef %conv219.i) #11
  br label %dib3000mb_fe_init.exit

cleanup.cont227.critedge.i:                       ; preds = %for.cond203.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i248.i) #7
  %308 = getelementptr inbounds [4 x i8], ptr %b.i248.i, i32 0, i32 1
  %309 = getelementptr inbounds [4 x i8], ptr %b.i248.i, i32 0, i32 2
  %310 = getelementptr inbounds [4 x i8], ptr %b.i248.i, i32 0, i32 3
  %311 = ptrtoint ptr %b.i248.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 0, ptr %b.i248.i, align 1
  %312 = ptrtoint ptr %308 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 51, ptr %308, align 1
  %313 = ptrtoint ptr %309 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 0, ptr %309, align 1
  %314 = ptrtoint ptr %310 to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 4, ptr %310, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i249.i) #7
  %315 = getelementptr inbounds i8, ptr %msg.i249.i, i32 4
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 327679, ptr %315, align 4
  %317 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %config.i.i, align 4
  %conv15.i251.i = zext i8 %318 to i16
  %319 = ptrtoint ptr %msg.i249.i to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 %conv15.i251.i, ptr %msg.i249.i, align 4
  %flags.i252.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i249.i, i32 0, i32 1
  %320 = ptrtoint ptr %flags.i252.i to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 0, ptr %flags.i252.i, align 2
  %buf.i254.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i249.i, i32 0, i32 3
  %321 = ptrtoint ptr %buf.i254.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %b.i248.i, ptr %buf.i254.i, align 4
  %322 = load i32, ptr @debug, align 4
  %and16.i255.i = and i32 %322, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i255.i)
  %tobool.not.i256.i = icmp eq i32 %and16.i255.i, 0
  br i1 %tobool.not.i256.i, label %cleanup.cont227.critedge.i.dib3000_write_reg.exit262.i_crit_edge, label %do.end.i258.i

cleanup.cont227.critedge.i.dib3000_write_reg.exit262.i_crit_edge: ; preds = %cleanup.cont227.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit262.i

do.end.i258.i:                                    ; preds = %cleanup.cont227.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i257.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 51, i32 noundef 51, i32 noundef 4, i32 noundef 4) #11
  br label %dib3000_write_reg.exit262.i

dib3000_write_reg.exit262.i:                      ; preds = %do.end.i258.i, %cleanup.cont227.critedge.i.dib3000_write_reg.exit262.i_crit_edge
  %323 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %1, align 4
  %call25.i259.i = call i32 @i2c_transfer(ptr noundef %324, ptr noundef nonnull %msg.i249.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i259.i)
  %cmp.not.i260.i = icmp eq i32 %call25.i259.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i249.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i248.i) #7
  br i1 %cmp.not.i260.i, label %if.end236.i, label %do.end233.i

do.end233.i:                                      ; preds = %dib3000_write_reg.exit262.i
  call void @__sanitizer_cov_trace_pc() #9
  %call235.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 4, i32 noundef 51) #11
  br label %dib3000mb_fe_init.exit

if.end236.i:                                      ; preds = %dib3000_write_reg.exit262.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i263.i) #7
  %325 = getelementptr inbounds [4 x i8], ptr %b.i263.i, i32 0, i32 1
  %326 = getelementptr inbounds [4 x i8], ptr %b.i263.i, i32 0, i32 2
  %327 = getelementptr inbounds [4 x i8], ptr %b.i263.i, i32 0, i32 3
  %328 = ptrtoint ptr %b.i263.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 0, ptr %b.i263.i, align 1
  %329 = ptrtoint ptr %325 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 52, ptr %325, align 1
  %330 = ptrtoint ptr %326 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 0, ptr %326, align 1
  %331 = ptrtoint ptr %327 to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 4, ptr %327, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i264.i) #7
  %332 = getelementptr inbounds i8, ptr %msg.i264.i, i32 4
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 327679, ptr %332, align 4
  %334 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %config.i.i, align 4
  %conv15.i266.i = zext i8 %335 to i16
  %336 = ptrtoint ptr %msg.i264.i to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 %conv15.i266.i, ptr %msg.i264.i, align 4
  %flags.i267.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i264.i, i32 0, i32 1
  %337 = ptrtoint ptr %flags.i267.i to i32
  call void @__asan_store2_noabort(i32 %337)
  store i16 0, ptr %flags.i267.i, align 2
  %buf.i269.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i264.i, i32 0, i32 3
  %338 = ptrtoint ptr %buf.i269.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %b.i263.i, ptr %buf.i269.i, align 4
  %339 = load i32, ptr @debug, align 4
  %and16.i270.i = and i32 %339, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i270.i)
  %tobool.not.i271.i = icmp eq i32 %and16.i270.i, 0
  br i1 %tobool.not.i271.i, label %if.end236.i.dib3000_write_reg.exit277.i_crit_edge, label %do.end.i273.i

if.end236.i.dib3000_write_reg.exit277.i_crit_edge: ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit277.i

do.end.i273.i:                                    ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i272.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 52, i32 noundef 52, i32 noundef 4, i32 noundef 4) #11
  br label %dib3000_write_reg.exit277.i

dib3000_write_reg.exit277.i:                      ; preds = %do.end.i273.i, %if.end236.i.dib3000_write_reg.exit277.i_crit_edge
  %340 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %1, align 4
  %call25.i274.i = call i32 @i2c_transfer(ptr noundef %341, ptr noundef nonnull %msg.i264.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i274.i)
  %cmp.not.i275.i = icmp eq i32 %call25.i274.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i264.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i263.i) #7
  br i1 %cmp.not.i275.i, label %if.end245.i, label %do.end242.i

do.end242.i:                                      ; preds = %dib3000_write_reg.exit277.i
  call void @__sanitizer_cov_trace_pc() #9
  %call244.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 4, i32 noundef 52) #11
  br label %dib3000mb_fe_init.exit

if.end245.i:                                      ; preds = %dib3000_write_reg.exit277.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i278.i) #7
  %342 = getelementptr inbounds [4 x i8], ptr %b.i278.i, i32 0, i32 1
  %343 = getelementptr inbounds [4 x i8], ptr %b.i278.i, i32 0, i32 2
  %344 = getelementptr inbounds [4 x i8], ptr %b.i278.i, i32 0, i32 3
  %345 = ptrtoint ptr %b.i278.i to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 0, ptr %b.i278.i, align 1
  %346 = ptrtoint ptr %342 to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 53, ptr %342, align 1
  %347 = ptrtoint ptr %343 to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 0, ptr %343, align 1
  %348 = ptrtoint ptr %344 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 -128, ptr %344, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i279.i) #7
  %349 = getelementptr inbounds i8, ptr %msg.i279.i, i32 4
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 327679, ptr %349, align 4
  %351 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %config.i.i, align 4
  %conv15.i281.i = zext i8 %352 to i16
  %353 = ptrtoint ptr %msg.i279.i to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 %conv15.i281.i, ptr %msg.i279.i, align 4
  %flags.i282.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i279.i, i32 0, i32 1
  %354 = ptrtoint ptr %flags.i282.i to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 0, ptr %flags.i282.i, align 2
  %buf.i284.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i279.i, i32 0, i32 3
  %355 = ptrtoint ptr %buf.i284.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr %b.i278.i, ptr %buf.i284.i, align 4
  %356 = load i32, ptr @debug, align 4
  %and16.i285.i = and i32 %356, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i285.i)
  %tobool.not.i286.i = icmp eq i32 %and16.i285.i, 0
  br i1 %tobool.not.i286.i, label %if.end245.i.dib3000_write_reg.exit292.i_crit_edge, label %do.end.i288.i

if.end245.i.dib3000_write_reg.exit292.i_crit_edge: ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit292.i

do.end.i288.i:                                    ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i287.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 53, i32 noundef 53, i32 noundef 128, i32 noundef 128) #11
  br label %dib3000_write_reg.exit292.i

dib3000_write_reg.exit292.i:                      ; preds = %do.end.i288.i, %if.end245.i.dib3000_write_reg.exit292.i_crit_edge
  %357 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %1, align 4
  %call25.i289.i = call i32 @i2c_transfer(ptr noundef %358, ptr noundef nonnull %msg.i279.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i289.i)
  %cmp.not.i290.i = icmp eq i32 %call25.i289.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i279.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i278.i) #7
  br i1 %cmp.not.i290.i, label %if.end254.i, label %do.end251.i

do.end251.i:                                      ; preds = %dib3000_write_reg.exit292.i
  call void @__sanitizer_cov_trace_pc() #9
  %call253.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 128, i32 noundef 53) #11
  br label %dib3000mb_fe_init.exit

if.end254.i:                                      ; preds = %dib3000_write_reg.exit292.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i293.i) #7
  %359 = getelementptr inbounds [4 x i8], ptr %b.i293.i, i32 0, i32 1
  %360 = getelementptr inbounds [4 x i8], ptr %b.i293.i, i32 0, i32 2
  %361 = getelementptr inbounds [4 x i8], ptr %b.i293.i, i32 0, i32 3
  %362 = ptrtoint ptr %b.i293.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 0, ptr %b.i293.i, align 1
  %363 = ptrtoint ptr %359 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 54, ptr %359, align 1
  %364 = ptrtoint ptr %360 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 0, ptr %360, align 1
  %365 = ptrtoint ptr %361 to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 11, ptr %361, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i294.i) #7
  %366 = getelementptr inbounds i8, ptr %msg.i294.i, i32 4
  %367 = ptrtoint ptr %366 to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 327679, ptr %366, align 4
  %368 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %config.i.i, align 4
  %conv15.i296.i = zext i8 %369 to i16
  %370 = ptrtoint ptr %msg.i294.i to i32
  call void @__asan_store2_noabort(i32 %370)
  store i16 %conv15.i296.i, ptr %msg.i294.i, align 4
  %flags.i297.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i294.i, i32 0, i32 1
  %371 = ptrtoint ptr %flags.i297.i to i32
  call void @__asan_store2_noabort(i32 %371)
  store i16 0, ptr %flags.i297.i, align 2
  %buf.i299.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i294.i, i32 0, i32 3
  %372 = ptrtoint ptr %buf.i299.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store ptr %b.i293.i, ptr %buf.i299.i, align 4
  %373 = load i32, ptr @debug, align 4
  %and16.i300.i = and i32 %373, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i300.i)
  %tobool.not.i301.i = icmp eq i32 %and16.i300.i, 0
  br i1 %tobool.not.i301.i, label %if.end254.i.dib3000_write_reg.exit307.i_crit_edge, label %do.end.i303.i

if.end254.i.dib3000_write_reg.exit307.i_crit_edge: ; preds = %if.end254.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit307.i

do.end.i303.i:                                    ; preds = %if.end254.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i302.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 54, i32 noundef 54, i32 noundef 11, i32 noundef 11) #11
  br label %dib3000_write_reg.exit307.i

dib3000_write_reg.exit307.i:                      ; preds = %do.end.i303.i, %if.end254.i.dib3000_write_reg.exit307.i_crit_edge
  %374 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %1, align 4
  %call25.i304.i = call i32 @i2c_transfer(ptr noundef %375, ptr noundef nonnull %msg.i294.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i304.i)
  %cmp.not.i305.i = icmp eq i32 %call25.i304.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i294.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i293.i) #7
  br i1 %cmp.not.i305.i, label %for.cond266.preheader.i, label %do.end260.i

for.cond266.preheader.i:                          ; preds = %dib3000_write_reg.exit307.i
  %376 = getelementptr inbounds [4 x i8], ptr %b.i308.i, i32 0, i32 1
  %377 = getelementptr inbounds [4 x i8], ptr %b.i308.i, i32 0, i32 2
  %378 = getelementptr inbounds [4 x i8], ptr %b.i308.i, i32 0, i32 3
  %379 = getelementptr inbounds i8, ptr %msg.i309.i, i32 4
  %flags.i316.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i309.i, i32 0, i32 1
  %buf.i318.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i309.i, i32 0, i32 3
  br label %for.body269.i

do.end260.i:                                      ; preds = %dib3000_write_reg.exit307.i
  call void @__sanitizer_cov_trace_pc() #9
  %call263.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 11, i32 noundef 54) #11
  br label %dib3000mb_fe_init.exit

for.cond266.i:                                    ; preds = %dib3000_write_reg.exit328.i
  %inc286.i = add nuw nsw i32 %i265.0761.i, 1
  %exitcond790.not.i = icmp eq i32 %inc286.i, 13
  br i1 %exitcond790.not.i, label %cleanup.cont290.critedge.i, label %for.cond266.i.for.body269.i_crit_edge

for.cond266.i.for.body269.i_crit_edge:            ; preds = %for.cond266.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body269.i

for.body269.i:                                    ; preds = %for.cond266.i.for.body269.i_crit_edge, %for.cond266.preheader.i
  %i265.0761.i = phi i32 [ 0, %for.cond266.preheader.i ], [ %inc286.i, %for.cond266.i.for.body269.i_crit_edge ]
  %arrayidx270.i = getelementptr [13 x i16], ptr @dib3000mb_reg_bandwidth, i32 0, i32 %i265.0761.i
  %380 = ptrtoint ptr %arrayidx270.i to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %arrayidx270.i, align 2
  %arrayidx271.i = getelementptr [13 x i16], ptr @dib3000mb_bandwidth_8mhz, i32 0, i32 %i265.0761.i
  %382 = ptrtoint ptr %arrayidx271.i to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %arrayidx271.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i308.i) #7
  %384 = lshr i16 %381, 8
  %conv1.i310.i = trunc i16 %384 to i8
  %385 = ptrtoint ptr %b.i308.i to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 %conv1.i310.i, ptr %b.i308.i, align 1
  %conv4.i311.i = trunc i16 %381 to i8
  %386 = ptrtoint ptr %376 to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 %conv4.i311.i, ptr %376, align 1
  %387 = lshr i16 %383, 8
  %conv9.i312.i = trunc i16 %387 to i8
  %388 = ptrtoint ptr %377 to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 %conv9.i312.i, ptr %377, align 1
  %conv13.i313.i = trunc i16 %383 to i8
  %389 = ptrtoint ptr %378 to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 %conv13.i313.i, ptr %378, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i309.i) #7
  %390 = ptrtoint ptr %379 to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 327679, ptr %379, align 4
  %391 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %config.i.i, align 4
  %conv15.i315.i = zext i8 %392 to i16
  %393 = ptrtoint ptr %msg.i309.i to i32
  call void @__asan_store2_noabort(i32 %393)
  store i16 %conv15.i315.i, ptr %msg.i309.i, align 4
  %394 = ptrtoint ptr %flags.i316.i to i32
  call void @__asan_store2_noabort(i32 %394)
  store i16 0, ptr %flags.i316.i, align 2
  %395 = ptrtoint ptr %buf.i318.i to i32
  call void @__asan_store4_noabort(i32 %395)
  store ptr %b.i308.i, ptr %buf.i318.i, align 4
  %396 = load i32, ptr @debug, align 4
  %and16.i319.i = and i32 %396, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i319.i)
  %tobool.not.i320.i = icmp eq i32 %and16.i319.i, 0
  br i1 %tobool.not.i320.i, label %for.body269.i.dib3000_write_reg.exit328.i_crit_edge, label %do.end.i324.i

for.body269.i.dib3000_write_reg.exit328.i_crit_edge: ; preds = %for.body269.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit328.i

do.end.i324.i:                                    ; preds = %for.body269.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i321.i = zext i16 %383 to i32
  %conv.i322.i = zext i16 %381 to i32
  %call.i323.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv.i322.i, i32 noundef %conv.i322.i, i32 noundef %conv6.i321.i, i32 noundef %conv6.i321.i) #11
  br label %dib3000_write_reg.exit328.i

dib3000_write_reg.exit328.i:                      ; preds = %do.end.i324.i, %for.body269.i.dib3000_write_reg.exit328.i_crit_edge
  %397 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %1, align 4
  %call25.i325.i = call i32 @i2c_transfer(ptr noundef %398, ptr noundef nonnull %msg.i309.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i325.i)
  %cmp.not.i326.i = icmp eq i32 %call25.i325.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i309.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i308.i) #7
  br i1 %cmp.not.i326.i, label %for.cond266.i, label %do.end277.i

do.end277.i:                                      ; preds = %dib3000_write_reg.exit328.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv280.i = zext i16 %383 to i32
  %conv282.i = zext i16 %381 to i32
  %call283.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv280.i, i32 noundef %conv282.i) #11
  br label %dib3000mb_fe_init.exit

cleanup.cont290.critedge.i:                       ; preds = %for.cond266.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i329.i) #7
  %399 = getelementptr inbounds [4 x i8], ptr %b.i329.i, i32 0, i32 1
  %400 = getelementptr inbounds [4 x i8], ptr %b.i329.i, i32 0, i32 2
  %401 = getelementptr inbounds [4 x i8], ptr %b.i329.i, i32 0, i32 3
  %402 = ptrtoint ptr %b.i329.i to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 0, ptr %b.i329.i, align 1
  %403 = ptrtoint ptr %399 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 68, ptr %399, align 1
  %404 = ptrtoint ptr %400 to i32
  call void @__asan_store1_noabort(i32 %404)
  store i8 0, ptr %400, align 1
  %405 = ptrtoint ptr %401 to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 0, ptr %401, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i330.i) #7
  %406 = getelementptr inbounds i8, ptr %msg.i330.i, i32 4
  %407 = ptrtoint ptr %406 to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 327679, ptr %406, align 4
  %408 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %config.i.i, align 4
  %conv15.i332.i = zext i8 %409 to i16
  %410 = ptrtoint ptr %msg.i330.i to i32
  call void @__asan_store2_noabort(i32 %410)
  store i16 %conv15.i332.i, ptr %msg.i330.i, align 4
  %flags.i333.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i330.i, i32 0, i32 1
  %411 = ptrtoint ptr %flags.i333.i to i32
  call void @__asan_store2_noabort(i32 %411)
  store i16 0, ptr %flags.i333.i, align 2
  %buf.i335.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i330.i, i32 0, i32 3
  %412 = ptrtoint ptr %buf.i335.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store ptr %b.i329.i, ptr %buf.i335.i, align 4
  %413 = load i32, ptr @debug, align 4
  %and16.i336.i = and i32 %413, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i336.i)
  %tobool.not.i337.i = icmp eq i32 %and16.i336.i, 0
  br i1 %tobool.not.i337.i, label %cleanup.cont290.critedge.i.dib3000_write_reg.exit343.i_crit_edge, label %do.end.i339.i

cleanup.cont290.critedge.i.dib3000_write_reg.exit343.i_crit_edge: ; preds = %cleanup.cont290.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit343.i

do.end.i339.i:                                    ; preds = %cleanup.cont290.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i338.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 68, i32 noundef 68, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit343.i

dib3000_write_reg.exit343.i:                      ; preds = %do.end.i339.i, %cleanup.cont290.critedge.i.dib3000_write_reg.exit343.i_crit_edge
  %414 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %1, align 4
  %call25.i340.i = call i32 @i2c_transfer(ptr noundef %415, ptr noundef nonnull %msg.i330.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i340.i)
  %cmp.not.i341.i = icmp eq i32 %call25.i340.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i330.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i329.i) #7
  br i1 %cmp.not.i341.i, label %if.end299.i, label %do.end296.i

do.end296.i:                                      ; preds = %dib3000_write_reg.exit343.i
  call void @__sanitizer_cov_trace_pc() #9
  %call298.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 68) #11
  br label %dib3000mb_fe_init.exit

if.end299.i:                                      ; preds = %dib3000_write_reg.exit343.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i344.i) #7
  %416 = getelementptr inbounds [4 x i8], ptr %b.i344.i, i32 0, i32 1
  %417 = getelementptr inbounds [4 x i8], ptr %b.i344.i, i32 0, i32 2
  %418 = getelementptr inbounds [4 x i8], ptr %b.i344.i, i32 0, i32 3
  %419 = ptrtoint ptr %b.i344.i to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 0, ptr %b.i344.i, align 1
  %420 = ptrtoint ptr %416 to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 69, ptr %416, align 1
  %421 = ptrtoint ptr %417 to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 0, ptr %417, align 1
  %422 = ptrtoint ptr %418 to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 0, ptr %418, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i345.i) #7
  %423 = getelementptr inbounds i8, ptr %msg.i345.i, i32 4
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 327679, ptr %423, align 4
  %425 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %config.i.i, align 4
  %conv15.i347.i = zext i8 %426 to i16
  %427 = ptrtoint ptr %msg.i345.i to i32
  call void @__asan_store2_noabort(i32 %427)
  store i16 %conv15.i347.i, ptr %msg.i345.i, align 4
  %flags.i348.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i345.i, i32 0, i32 1
  %428 = ptrtoint ptr %flags.i348.i to i32
  call void @__asan_store2_noabort(i32 %428)
  store i16 0, ptr %flags.i348.i, align 2
  %buf.i350.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i345.i, i32 0, i32 3
  %429 = ptrtoint ptr %buf.i350.i to i32
  call void @__asan_store4_noabort(i32 %429)
  store ptr %b.i344.i, ptr %buf.i350.i, align 4
  %430 = load i32, ptr @debug, align 4
  %and16.i351.i = and i32 %430, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i351.i)
  %tobool.not.i352.i = icmp eq i32 %and16.i351.i, 0
  br i1 %tobool.not.i352.i, label %if.end299.i.dib3000_write_reg.exit358.i_crit_edge, label %do.end.i354.i

if.end299.i.dib3000_write_reg.exit358.i_crit_edge: ; preds = %if.end299.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit358.i

do.end.i354.i:                                    ; preds = %if.end299.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i353.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 69, i32 noundef 69, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit358.i

dib3000_write_reg.exit358.i:                      ; preds = %do.end.i354.i, %if.end299.i.dib3000_write_reg.exit358.i_crit_edge
  %431 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %1, align 4
  %call25.i355.i = call i32 @i2c_transfer(ptr noundef %432, ptr noundef nonnull %msg.i345.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i355.i)
  %cmp.not.i356.i = icmp eq i32 %call25.i355.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i345.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i344.i) #7
  br i1 %cmp.not.i356.i, label %if.end308.i, label %do.end305.i

do.end305.i:                                      ; preds = %dib3000_write_reg.exit358.i
  call void @__sanitizer_cov_trace_pc() #9
  %call307.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 69) #11
  br label %dib3000mb_fe_init.exit

if.end308.i:                                      ; preds = %dib3000_write_reg.exit358.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i359.i) #7
  %433 = getelementptr inbounds [4 x i8], ptr %b.i359.i, i32 0, i32 1
  %434 = getelementptr inbounds [4 x i8], ptr %b.i359.i, i32 0, i32 2
  %435 = getelementptr inbounds [4 x i8], ptr %b.i359.i, i32 0, i32 3
  %436 = ptrtoint ptr %b.i359.i to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 0, ptr %b.i359.i, align 1
  %437 = ptrtoint ptr %433 to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 71, ptr %433, align 1
  %438 = ptrtoint ptr %434 to i32
  call void @__asan_store1_noabort(i32 %438)
  store i8 0, ptr %434, align 1
  %439 = ptrtoint ptr %435 to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 0, ptr %435, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i360.i) #7
  %440 = getelementptr inbounds i8, ptr %msg.i360.i, i32 4
  %441 = ptrtoint ptr %440 to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 327679, ptr %440, align 4
  %442 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %config.i.i, align 4
  %conv15.i362.i = zext i8 %443 to i16
  %444 = ptrtoint ptr %msg.i360.i to i32
  call void @__asan_store2_noabort(i32 %444)
  store i16 %conv15.i362.i, ptr %msg.i360.i, align 4
  %flags.i363.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i360.i, i32 0, i32 1
  %445 = ptrtoint ptr %flags.i363.i to i32
  call void @__asan_store2_noabort(i32 %445)
  store i16 0, ptr %flags.i363.i, align 2
  %buf.i365.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i360.i, i32 0, i32 3
  %446 = ptrtoint ptr %buf.i365.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store ptr %b.i359.i, ptr %buf.i365.i, align 4
  %447 = load i32, ptr @debug, align 4
  %and16.i366.i = and i32 %447, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i366.i)
  %tobool.not.i367.i = icmp eq i32 %and16.i366.i, 0
  br i1 %tobool.not.i367.i, label %if.end308.i.dib3000_write_reg.exit373.i_crit_edge, label %do.end.i369.i

if.end308.i.dib3000_write_reg.exit373.i_crit_edge: ; preds = %if.end308.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit373.i

do.end.i369.i:                                    ; preds = %if.end308.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i368.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 71, i32 noundef 71, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit373.i

dib3000_write_reg.exit373.i:                      ; preds = %do.end.i369.i, %if.end308.i.dib3000_write_reg.exit373.i_crit_edge
  %448 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %1, align 4
  %call25.i370.i = call i32 @i2c_transfer(ptr noundef %449, ptr noundef nonnull %msg.i360.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i370.i)
  %cmp.not.i371.i = icmp eq i32 %call25.i370.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i360.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i359.i) #7
  br i1 %cmp.not.i371.i, label %if.end317.i, label %do.end314.i

do.end314.i:                                      ; preds = %dib3000_write_reg.exit373.i
  call void @__sanitizer_cov_trace_pc() #9
  %call316.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 71) #11
  br label %dib3000mb_fe_init.exit

if.end317.i:                                      ; preds = %dib3000_write_reg.exit373.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i374.i) #7
  %450 = getelementptr inbounds [4 x i8], ptr %b.i374.i, i32 0, i32 1
  %451 = getelementptr inbounds [4 x i8], ptr %b.i374.i, i32 0, i32 2
  %452 = getelementptr inbounds [4 x i8], ptr %b.i374.i, i32 0, i32 3
  %453 = ptrtoint ptr %b.i374.i to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 0, ptr %b.i374.i, align 1
  %454 = ptrtoint ptr %450 to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 77, ptr %450, align 1
  %455 = ptrtoint ptr %451 to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 0, ptr %451, align 1
  %456 = ptrtoint ptr %452 to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 6, ptr %452, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i375.i) #7
  %457 = getelementptr inbounds i8, ptr %msg.i375.i, i32 4
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 327679, ptr %457, align 4
  %459 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %config.i.i, align 4
  %conv15.i377.i = zext i8 %460 to i16
  %461 = ptrtoint ptr %msg.i375.i to i32
  call void @__asan_store2_noabort(i32 %461)
  store i16 %conv15.i377.i, ptr %msg.i375.i, align 4
  %flags.i378.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i375.i, i32 0, i32 1
  %462 = ptrtoint ptr %flags.i378.i to i32
  call void @__asan_store2_noabort(i32 %462)
  store i16 0, ptr %flags.i378.i, align 2
  %buf.i380.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i375.i, i32 0, i32 3
  %463 = ptrtoint ptr %buf.i380.i to i32
  call void @__asan_store4_noabort(i32 %463)
  store ptr %b.i374.i, ptr %buf.i380.i, align 4
  %464 = load i32, ptr @debug, align 4
  %and16.i381.i = and i32 %464, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i381.i)
  %tobool.not.i382.i = icmp eq i32 %and16.i381.i, 0
  br i1 %tobool.not.i382.i, label %if.end317.i.dib3000_write_reg.exit388.i_crit_edge, label %do.end.i384.i

if.end317.i.dib3000_write_reg.exit388.i_crit_edge: ; preds = %if.end317.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit388.i

do.end.i384.i:                                    ; preds = %if.end317.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i383.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 77, i32 noundef 77, i32 noundef 6, i32 noundef 6) #11
  br label %dib3000_write_reg.exit388.i

dib3000_write_reg.exit388.i:                      ; preds = %do.end.i384.i, %if.end317.i.dib3000_write_reg.exit388.i_crit_edge
  %465 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %1, align 4
  %call25.i385.i = call i32 @i2c_transfer(ptr noundef %466, ptr noundef nonnull %msg.i375.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i385.i)
  %cmp.not.i386.i = icmp eq i32 %call25.i385.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i375.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i374.i) #7
  br i1 %cmp.not.i386.i, label %if.end326.i, label %do.end323.i

do.end323.i:                                      ; preds = %dib3000_write_reg.exit388.i
  call void @__sanitizer_cov_trace_pc() #9
  %call325.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 6, i32 noundef 77) #11
  br label %dib3000mb_fe_init.exit

if.end326.i:                                      ; preds = %dib3000_write_reg.exit388.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i389.i) #7
  %467 = getelementptr inbounds [4 x i8], ptr %b.i389.i, i32 0, i32 1
  %468 = getelementptr inbounds [4 x i8], ptr %b.i389.i, i32 0, i32 2
  %469 = getelementptr inbounds [4 x i8], ptr %b.i389.i, i32 0, i32 3
  %470 = ptrtoint ptr %b.i389.i to i32
  call void @__asan_store1_noabort(i32 %470)
  store i8 0, ptr %b.i389.i, align 1
  %471 = ptrtoint ptr %467 to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 78, ptr %467, align 1
  %472 = ptrtoint ptr %468 to i32
  call void @__asan_store1_noabort(i32 %472)
  store i8 0, ptr %468, align 1
  %473 = ptrtoint ptr %469 to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 -128, ptr %469, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i390.i) #7
  %474 = getelementptr inbounds i8, ptr %msg.i390.i, i32 4
  %475 = ptrtoint ptr %474 to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 327679, ptr %474, align 4
  %476 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %config.i.i, align 4
  %conv15.i392.i = zext i8 %477 to i16
  %478 = ptrtoint ptr %msg.i390.i to i32
  call void @__asan_store2_noabort(i32 %478)
  store i16 %conv15.i392.i, ptr %msg.i390.i, align 4
  %flags.i393.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i390.i, i32 0, i32 1
  %479 = ptrtoint ptr %flags.i393.i to i32
  call void @__asan_store2_noabort(i32 %479)
  store i16 0, ptr %flags.i393.i, align 2
  %buf.i395.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i390.i, i32 0, i32 3
  %480 = ptrtoint ptr %buf.i395.i to i32
  call void @__asan_store4_noabort(i32 %480)
  store ptr %b.i389.i, ptr %buf.i395.i, align 4
  %481 = load i32, ptr @debug, align 4
  %and16.i396.i = and i32 %481, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i396.i)
  %tobool.not.i397.i = icmp eq i32 %and16.i396.i, 0
  br i1 %tobool.not.i397.i, label %if.end326.i.dib3000_write_reg.exit403.i_crit_edge, label %do.end.i399.i

if.end326.i.dib3000_write_reg.exit403.i_crit_edge: ; preds = %if.end326.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit403.i

do.end.i399.i:                                    ; preds = %if.end326.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i398.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 78, i32 noundef 78, i32 noundef 128, i32 noundef 128) #11
  br label %dib3000_write_reg.exit403.i

dib3000_write_reg.exit403.i:                      ; preds = %do.end.i399.i, %if.end326.i.dib3000_write_reg.exit403.i_crit_edge
  %482 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %1, align 4
  %call25.i400.i = call i32 @i2c_transfer(ptr noundef %483, ptr noundef nonnull %msg.i390.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i400.i)
  %cmp.not.i401.i = icmp eq i32 %call25.i400.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i390.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i389.i) #7
  br i1 %cmp.not.i401.i, label %if.end335.i, label %do.end332.i

do.end332.i:                                      ; preds = %dib3000_write_reg.exit403.i
  call void @__sanitizer_cov_trace_pc() #9
  %call334.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 128, i32 noundef 78) #11
  br label %dib3000mb_fe_init.exit

if.end335.i:                                      ; preds = %dib3000_write_reg.exit403.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i404.i) #7
  %484 = getelementptr inbounds [4 x i8], ptr %b.i404.i, i32 0, i32 1
  %485 = getelementptr inbounds [4 x i8], ptr %b.i404.i, i32 0, i32 2
  %486 = getelementptr inbounds [4 x i8], ptr %b.i404.i, i32 0, i32 3
  %487 = ptrtoint ptr %b.i404.i to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 0, ptr %b.i404.i, align 1
  %488 = ptrtoint ptr %484 to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 79, ptr %484, align 1
  %489 = ptrtoint ptr %485 to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 0, ptr %485, align 1
  %490 = ptrtoint ptr %486 to i32
  call void @__asan_store1_noabort(i32 %490)
  store i8 1, ptr %486, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i405.i) #7
  %491 = getelementptr inbounds i8, ptr %msg.i405.i, i32 4
  %492 = ptrtoint ptr %491 to i32
  call void @__asan_store4_noabort(i32 %492)
  store i32 327679, ptr %491, align 4
  %493 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %config.i.i, align 4
  %conv15.i407.i = zext i8 %494 to i16
  %495 = ptrtoint ptr %msg.i405.i to i32
  call void @__asan_store2_noabort(i32 %495)
  store i16 %conv15.i407.i, ptr %msg.i405.i, align 4
  %flags.i408.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i405.i, i32 0, i32 1
  %496 = ptrtoint ptr %flags.i408.i to i32
  call void @__asan_store2_noabort(i32 %496)
  store i16 0, ptr %flags.i408.i, align 2
  %buf.i410.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i405.i, i32 0, i32 3
  %497 = ptrtoint ptr %buf.i410.i to i32
  call void @__asan_store4_noabort(i32 %497)
  store ptr %b.i404.i, ptr %buf.i410.i, align 4
  %498 = load i32, ptr @debug, align 4
  %and16.i411.i = and i32 %498, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i411.i)
  %tobool.not.i412.i = icmp eq i32 %and16.i411.i, 0
  br i1 %tobool.not.i412.i, label %if.end335.i.dib3000_write_reg.exit418.i_crit_edge, label %do.end.i414.i

if.end335.i.dib3000_write_reg.exit418.i_crit_edge: ; preds = %if.end335.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit418.i

do.end.i414.i:                                    ; preds = %if.end335.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i413.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 79, i32 noundef 79, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit418.i

dib3000_write_reg.exit418.i:                      ; preds = %do.end.i414.i, %if.end335.i.dib3000_write_reg.exit418.i_crit_edge
  %499 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %1, align 4
  %call25.i415.i = call i32 @i2c_transfer(ptr noundef %500, ptr noundef nonnull %msg.i405.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i415.i)
  %cmp.not.i416.i = icmp eq i32 %call25.i415.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i405.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i404.i) #7
  br i1 %cmp.not.i416.i, label %if.end344.i, label %do.end341.i

do.end341.i:                                      ; preds = %dib3000_write_reg.exit418.i
  call void @__sanitizer_cov_trace_pc() #9
  %call343.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 79) #11
  br label %dib3000mb_fe_init.exit

if.end344.i:                                      ; preds = %dib3000_write_reg.exit418.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i419.i) #7
  %501 = getelementptr inbounds [4 x i8], ptr %b.i419.i, i32 0, i32 1
  %502 = getelementptr inbounds [4 x i8], ptr %b.i419.i, i32 0, i32 2
  %503 = getelementptr inbounds [4 x i8], ptr %b.i419.i, i32 0, i32 3
  %504 = ptrtoint ptr %b.i419.i to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 0, ptr %b.i419.i, align 1
  %505 = ptrtoint ptr %501 to i32
  call void @__asan_store1_noabort(i32 %505)
  store i8 92, ptr %501, align 1
  %506 = ptrtoint ptr %502 to i32
  call void @__asan_store1_noabort(i32 %506)
  store i8 0, ptr %502, align 1
  %507 = ptrtoint ptr %503 to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 -128, ptr %503, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i420.i) #7
  %508 = getelementptr inbounds i8, ptr %msg.i420.i, i32 4
  %509 = ptrtoint ptr %508 to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 327679, ptr %508, align 4
  %510 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %config.i.i, align 4
  %conv15.i422.i = zext i8 %511 to i16
  %512 = ptrtoint ptr %msg.i420.i to i32
  call void @__asan_store2_noabort(i32 %512)
  store i16 %conv15.i422.i, ptr %msg.i420.i, align 4
  %flags.i423.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i420.i, i32 0, i32 1
  %513 = ptrtoint ptr %flags.i423.i to i32
  call void @__asan_store2_noabort(i32 %513)
  store i16 0, ptr %flags.i423.i, align 2
  %buf.i425.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i420.i, i32 0, i32 3
  %514 = ptrtoint ptr %buf.i425.i to i32
  call void @__asan_store4_noabort(i32 %514)
  store ptr %b.i419.i, ptr %buf.i425.i, align 4
  %515 = load i32, ptr @debug, align 4
  %and16.i426.i = and i32 %515, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i426.i)
  %tobool.not.i427.i = icmp eq i32 %and16.i426.i, 0
  br i1 %tobool.not.i427.i, label %if.end344.i.dib3000_write_reg.exit433.i_crit_edge, label %do.end.i429.i

if.end344.i.dib3000_write_reg.exit433.i_crit_edge: ; preds = %if.end344.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit433.i

do.end.i429.i:                                    ; preds = %if.end344.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i428.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 92, i32 noundef 92, i32 noundef 128, i32 noundef 128) #11
  br label %dib3000_write_reg.exit433.i

dib3000_write_reg.exit433.i:                      ; preds = %do.end.i429.i, %if.end344.i.dib3000_write_reg.exit433.i_crit_edge
  %516 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %1, align 4
  %call25.i430.i = call i32 @i2c_transfer(ptr noundef %517, ptr noundef nonnull %msg.i420.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i430.i)
  %cmp.not.i431.i = icmp eq i32 %call25.i430.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i420.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i419.i) #7
  br i1 %cmp.not.i431.i, label %if.end353.i, label %do.end350.i

do.end350.i:                                      ; preds = %dib3000_write_reg.exit433.i
  call void @__sanitizer_cov_trace_pc() #9
  %call352.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 128, i32 noundef 92) #11
  br label %dib3000mb_fe_init.exit

if.end353.i:                                      ; preds = %dib3000_write_reg.exit433.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i434.i) #7
  %518 = getelementptr inbounds [4 x i8], ptr %b.i434.i, i32 0, i32 1
  %519 = getelementptr inbounds [4 x i8], ptr %b.i434.i, i32 0, i32 2
  %520 = getelementptr inbounds [4 x i8], ptr %b.i434.i, i32 0, i32 3
  %521 = ptrtoint ptr %b.i434.i to i32
  call void @__asan_store1_noabort(i32 %521)
  store i8 0, ptr %b.i434.i, align 1
  %522 = ptrtoint ptr %518 to i32
  call void @__asan_store1_noabort(i32 %522)
  store i8 96, ptr %518, align 1
  %523 = ptrtoint ptr %519 to i32
  call void @__asan_store1_noabort(i32 %523)
  store i8 0, ptr %519, align 1
  %524 = ptrtoint ptr %520 to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 16, ptr %520, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i435.i) #7
  %525 = getelementptr inbounds i8, ptr %msg.i435.i, i32 4
  %526 = ptrtoint ptr %525 to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 327679, ptr %525, align 4
  %527 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %config.i.i, align 4
  %conv15.i437.i = zext i8 %528 to i16
  %529 = ptrtoint ptr %msg.i435.i to i32
  call void @__asan_store2_noabort(i32 %529)
  store i16 %conv15.i437.i, ptr %msg.i435.i, align 4
  %flags.i438.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i435.i, i32 0, i32 1
  %530 = ptrtoint ptr %flags.i438.i to i32
  call void @__asan_store2_noabort(i32 %530)
  store i16 0, ptr %flags.i438.i, align 2
  %buf.i440.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i435.i, i32 0, i32 3
  %531 = ptrtoint ptr %buf.i440.i to i32
  call void @__asan_store4_noabort(i32 %531)
  store ptr %b.i434.i, ptr %buf.i440.i, align 4
  %532 = load i32, ptr @debug, align 4
  %and16.i441.i = and i32 %532, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i441.i)
  %tobool.not.i442.i = icmp eq i32 %and16.i441.i, 0
  br i1 %tobool.not.i442.i, label %if.end353.i.dib3000_write_reg.exit448.i_crit_edge, label %do.end.i444.i

if.end353.i.dib3000_write_reg.exit448.i_crit_edge: ; preds = %if.end353.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit448.i

do.end.i444.i:                                    ; preds = %if.end353.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i443.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 96, i32 noundef 96, i32 noundef 16, i32 noundef 16) #11
  br label %dib3000_write_reg.exit448.i

dib3000_write_reg.exit448.i:                      ; preds = %do.end.i444.i, %if.end353.i.dib3000_write_reg.exit448.i_crit_edge
  %533 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %1, align 4
  %call25.i445.i = call i32 @i2c_transfer(ptr noundef %534, ptr noundef nonnull %msg.i435.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i445.i)
  %cmp.not.i446.i = icmp eq i32 %call25.i445.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i435.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i434.i) #7
  br i1 %cmp.not.i446.i, label %if.end362.i, label %do.end359.i

do.end359.i:                                      ; preds = %dib3000_write_reg.exit448.i
  call void @__sanitizer_cov_trace_pc() #9
  %call361.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 16, i32 noundef 96) #11
  br label %dib3000mb_fe_init.exit

if.end362.i:                                      ; preds = %dib3000_write_reg.exit448.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i449.i) #7
  %535 = getelementptr inbounds [4 x i8], ptr %b.i449.i, i32 0, i32 1
  %536 = getelementptr inbounds [4 x i8], ptr %b.i449.i, i32 0, i32 2
  %537 = getelementptr inbounds [4 x i8], ptr %b.i449.i, i32 0, i32 3
  %538 = ptrtoint ptr %b.i449.i to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 0, ptr %b.i449.i, align 1
  %539 = ptrtoint ptr %535 to i32
  call void @__asan_store1_noabort(i32 %539)
  store i8 97, ptr %535, align 1
  %540 = ptrtoint ptr %536 to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 0, ptr %536, align 1
  %541 = ptrtoint ptr %537 to i32
  call void @__asan_store1_noabort(i32 %541)
  store i8 9, ptr %537, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i450.i) #7
  %542 = getelementptr inbounds i8, ptr %msg.i450.i, i32 4
  %543 = ptrtoint ptr %542 to i32
  call void @__asan_store4_noabort(i32 %543)
  store i32 327679, ptr %542, align 4
  %544 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %config.i.i, align 4
  %conv15.i452.i = zext i8 %545 to i16
  %546 = ptrtoint ptr %msg.i450.i to i32
  call void @__asan_store2_noabort(i32 %546)
  store i16 %conv15.i452.i, ptr %msg.i450.i, align 4
  %flags.i453.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i450.i, i32 0, i32 1
  %547 = ptrtoint ptr %flags.i453.i to i32
  call void @__asan_store2_noabort(i32 %547)
  store i16 0, ptr %flags.i453.i, align 2
  %buf.i455.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i450.i, i32 0, i32 3
  %548 = ptrtoint ptr %buf.i455.i to i32
  call void @__asan_store4_noabort(i32 %548)
  store ptr %b.i449.i, ptr %buf.i455.i, align 4
  %549 = load i32, ptr @debug, align 4
  %and16.i456.i = and i32 %549, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i456.i)
  %tobool.not.i457.i = icmp eq i32 %and16.i456.i, 0
  br i1 %tobool.not.i457.i, label %if.end362.i.dib3000_write_reg.exit463.i_crit_edge, label %do.end.i459.i

if.end362.i.dib3000_write_reg.exit463.i_crit_edge: ; preds = %if.end362.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit463.i

do.end.i459.i:                                    ; preds = %if.end362.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i458.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 97, i32 noundef 97, i32 noundef 9, i32 noundef 9) #11
  br label %dib3000_write_reg.exit463.i

dib3000_write_reg.exit463.i:                      ; preds = %do.end.i459.i, %if.end362.i.dib3000_write_reg.exit463.i_crit_edge
  %550 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %1, align 4
  %call25.i460.i = call i32 @i2c_transfer(ptr noundef %551, ptr noundef nonnull %msg.i450.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i460.i)
  %cmp.not.i461.i = icmp eq i32 %call25.i460.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i450.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i449.i) #7
  br i1 %cmp.not.i461.i, label %if.end371.i, label %do.end368.i

do.end368.i:                                      ; preds = %dib3000_write_reg.exit463.i
  call void @__sanitizer_cov_trace_pc() #9
  %call370.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 9, i32 noundef 97) #11
  br label %dib3000mb_fe_init.exit

if.end371.i:                                      ; preds = %dib3000_write_reg.exit463.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i464.i) #7
  %552 = getelementptr inbounds [4 x i8], ptr %b.i464.i, i32 0, i32 1
  %553 = getelementptr inbounds [4 x i8], ptr %b.i464.i, i32 0, i32 2
  %554 = getelementptr inbounds [4 x i8], ptr %b.i464.i, i32 0, i32 3
  %555 = ptrtoint ptr %b.i464.i to i32
  call void @__asan_store1_noabort(i32 %555)
  store i8 0, ptr %b.i464.i, align 1
  %556 = ptrtoint ptr %552 to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 106, ptr %552, align 1
  %557 = ptrtoint ptr %553 to i32
  call void @__asan_store1_noabort(i32 %557)
  store i8 0, ptr %553, align 1
  %558 = ptrtoint ptr %554 to i32
  call void @__asan_store1_noabort(i32 %558)
  store i8 -128, ptr %554, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i465.i) #7
  %559 = getelementptr inbounds i8, ptr %msg.i465.i, i32 4
  %560 = ptrtoint ptr %559 to i32
  call void @__asan_store4_noabort(i32 %560)
  store i32 327679, ptr %559, align 4
  %561 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %561)
  %562 = load i8, ptr %config.i.i, align 4
  %conv15.i467.i = zext i8 %562 to i16
  %563 = ptrtoint ptr %msg.i465.i to i32
  call void @__asan_store2_noabort(i32 %563)
  store i16 %conv15.i467.i, ptr %msg.i465.i, align 4
  %flags.i468.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i465.i, i32 0, i32 1
  %564 = ptrtoint ptr %flags.i468.i to i32
  call void @__asan_store2_noabort(i32 %564)
  store i16 0, ptr %flags.i468.i, align 2
  %buf.i470.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i465.i, i32 0, i32 3
  %565 = ptrtoint ptr %buf.i470.i to i32
  call void @__asan_store4_noabort(i32 %565)
  store ptr %b.i464.i, ptr %buf.i470.i, align 4
  %566 = load i32, ptr @debug, align 4
  %and16.i471.i = and i32 %566, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i471.i)
  %tobool.not.i472.i = icmp eq i32 %and16.i471.i, 0
  br i1 %tobool.not.i472.i, label %if.end371.i.dib3000_write_reg.exit478.i_crit_edge, label %do.end.i474.i

if.end371.i.dib3000_write_reg.exit478.i_crit_edge: ; preds = %if.end371.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit478.i

do.end.i474.i:                                    ; preds = %if.end371.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i473.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 106, i32 noundef 106, i32 noundef 128, i32 noundef 128) #11
  br label %dib3000_write_reg.exit478.i

dib3000_write_reg.exit478.i:                      ; preds = %do.end.i474.i, %if.end371.i.dib3000_write_reg.exit478.i_crit_edge
  %567 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %1, align 4
  %call25.i475.i = call i32 @i2c_transfer(ptr noundef %568, ptr noundef nonnull %msg.i465.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i475.i)
  %cmp.not.i476.i = icmp eq i32 %call25.i475.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i465.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i464.i) #7
  br i1 %cmp.not.i476.i, label %if.end380.i, label %do.end377.i

do.end377.i:                                      ; preds = %dib3000_write_reg.exit478.i
  call void @__sanitizer_cov_trace_pc() #9
  %call379.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 128, i32 noundef 106) #11
  br label %dib3000mb_fe_init.exit

if.end380.i:                                      ; preds = %dib3000_write_reg.exit478.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i479.i) #7
  %569 = getelementptr inbounds [4 x i8], ptr %b.i479.i, i32 0, i32 1
  %570 = getelementptr inbounds [4 x i8], ptr %b.i479.i, i32 0, i32 2
  %571 = getelementptr inbounds [4 x i8], ptr %b.i479.i, i32 0, i32 3
  %572 = ptrtoint ptr %b.i479.i to i32
  call void @__asan_store1_noabort(i32 %572)
  store i8 0, ptr %b.i479.i, align 1
  %573 = ptrtoint ptr %569 to i32
  call void @__asan_store1_noabort(i32 %573)
  store i8 107, ptr %569, align 1
  %574 = ptrtoint ptr %570 to i32
  call void @__asan_store1_noabort(i32 %574)
  store i8 0, ptr %570, align 1
  %575 = ptrtoint ptr %571 to i32
  call void @__asan_store1_noabort(i32 %575)
  store i8 -128, ptr %571, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i480.i) #7
  %576 = getelementptr inbounds i8, ptr %msg.i480.i, i32 4
  %577 = ptrtoint ptr %576 to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 327679, ptr %576, align 4
  %578 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %config.i.i, align 4
  %conv15.i482.i = zext i8 %579 to i16
  %580 = ptrtoint ptr %msg.i480.i to i32
  call void @__asan_store2_noabort(i32 %580)
  store i16 %conv15.i482.i, ptr %msg.i480.i, align 4
  %flags.i483.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i480.i, i32 0, i32 1
  %581 = ptrtoint ptr %flags.i483.i to i32
  call void @__asan_store2_noabort(i32 %581)
  store i16 0, ptr %flags.i483.i, align 2
  %buf.i485.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i480.i, i32 0, i32 3
  %582 = ptrtoint ptr %buf.i485.i to i32
  call void @__asan_store4_noabort(i32 %582)
  store ptr %b.i479.i, ptr %buf.i485.i, align 4
  %583 = load i32, ptr @debug, align 4
  %and16.i486.i = and i32 %583, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i486.i)
  %tobool.not.i487.i = icmp eq i32 %and16.i486.i, 0
  br i1 %tobool.not.i487.i, label %if.end380.i.dib3000_write_reg.exit493.i_crit_edge, label %do.end.i489.i

if.end380.i.dib3000_write_reg.exit493.i_crit_edge: ; preds = %if.end380.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit493.i

do.end.i489.i:                                    ; preds = %if.end380.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i488.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 107, i32 noundef 107, i32 noundef 128, i32 noundef 128) #11
  br label %dib3000_write_reg.exit493.i

dib3000_write_reg.exit493.i:                      ; preds = %do.end.i489.i, %if.end380.i.dib3000_write_reg.exit493.i_crit_edge
  %584 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %1, align 4
  %call25.i490.i = call i32 @i2c_transfer(ptr noundef %585, ptr noundef nonnull %msg.i480.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i490.i)
  %cmp.not.i491.i = icmp eq i32 %call25.i490.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i480.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i479.i) #7
  br i1 %cmp.not.i491.i, label %if.end389.i, label %do.end386.i

do.end386.i:                                      ; preds = %dib3000_write_reg.exit493.i
  call void @__sanitizer_cov_trace_pc() #9
  %call388.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 128, i32 noundef 107) #11
  br label %dib3000mb_fe_init.exit

if.end389.i:                                      ; preds = %dib3000_write_reg.exit493.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i494.i) #7
  %586 = getelementptr inbounds [4 x i8], ptr %b.i494.i, i32 0, i32 1
  %587 = getelementptr inbounds [4 x i8], ptr %b.i494.i, i32 0, i32 2
  %588 = getelementptr inbounds [4 x i8], ptr %b.i494.i, i32 0, i32 3
  %589 = ptrtoint ptr %b.i494.i to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 0, ptr %b.i494.i, align 1
  %590 = ptrtoint ptr %586 to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 108, ptr %586, align 1
  %591 = ptrtoint ptr %587 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 0, ptr %587, align 1
  %592 = ptrtoint ptr %588 to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 -128, ptr %588, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i495.i) #7
  %593 = getelementptr inbounds i8, ptr %msg.i495.i, i32 4
  %594 = ptrtoint ptr %593 to i32
  call void @__asan_store4_noabort(i32 %594)
  store i32 327679, ptr %593, align 4
  %595 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %595)
  %596 = load i8, ptr %config.i.i, align 4
  %conv15.i497.i = zext i8 %596 to i16
  %597 = ptrtoint ptr %msg.i495.i to i32
  call void @__asan_store2_noabort(i32 %597)
  store i16 %conv15.i497.i, ptr %msg.i495.i, align 4
  %flags.i498.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i495.i, i32 0, i32 1
  %598 = ptrtoint ptr %flags.i498.i to i32
  call void @__asan_store2_noabort(i32 %598)
  store i16 0, ptr %flags.i498.i, align 2
  %buf.i500.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i495.i, i32 0, i32 3
  %599 = ptrtoint ptr %buf.i500.i to i32
  call void @__asan_store4_noabort(i32 %599)
  store ptr %b.i494.i, ptr %buf.i500.i, align 4
  %600 = load i32, ptr @debug, align 4
  %and16.i501.i = and i32 %600, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i501.i)
  %tobool.not.i502.i = icmp eq i32 %and16.i501.i, 0
  br i1 %tobool.not.i502.i, label %if.end389.i.dib3000_write_reg.exit508.i_crit_edge, label %do.end.i504.i

if.end389.i.dib3000_write_reg.exit508.i_crit_edge: ; preds = %if.end389.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit508.i

do.end.i504.i:                                    ; preds = %if.end389.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i503.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 108, i32 noundef 128, i32 noundef 128) #11
  br label %dib3000_write_reg.exit508.i

dib3000_write_reg.exit508.i:                      ; preds = %do.end.i504.i, %if.end389.i.dib3000_write_reg.exit508.i_crit_edge
  %601 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %1, align 4
  %call25.i505.i = call i32 @i2c_transfer(ptr noundef %602, ptr noundef nonnull %msg.i495.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i505.i)
  %cmp.not.i506.i = icmp eq i32 %call25.i505.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i495.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i494.i) #7
  br i1 %cmp.not.i506.i, label %if.end398.i, label %do.end395.i

do.end395.i:                                      ; preds = %dib3000_write_reg.exit508.i
  call void @__sanitizer_cov_trace_pc() #9
  %call397.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 128, i32 noundef 108) #11
  br label %dib3000mb_fe_init.exit

if.end398.i:                                      ; preds = %dib3000_write_reg.exit508.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i509.i) #7
  %603 = getelementptr inbounds [4 x i8], ptr %b.i509.i, i32 0, i32 1
  %604 = getelementptr inbounds [4 x i8], ptr %b.i509.i, i32 0, i32 2
  %605 = getelementptr inbounds [4 x i8], ptr %b.i509.i, i32 0, i32 3
  %606 = ptrtoint ptr %b.i509.i to i32
  call void @__asan_store1_noabort(i32 %606)
  store i8 0, ptr %b.i509.i, align 1
  %607 = ptrtoint ptr %603 to i32
  call void @__asan_store1_noabort(i32 %607)
  store i8 122, ptr %603, align 1
  %608 = ptrtoint ptr %604 to i32
  call void @__asan_store1_noabort(i32 %608)
  store i8 11, ptr %604, align 1
  %609 = ptrtoint ptr %605 to i32
  call void @__asan_store1_noabort(i32 %609)
  store i8 51, ptr %605, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i510.i) #7
  %610 = getelementptr inbounds i8, ptr %msg.i510.i, i32 4
  %611 = ptrtoint ptr %610 to i32
  call void @__asan_store4_noabort(i32 %611)
  store i32 327679, ptr %610, align 4
  %612 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %612)
  %613 = load i8, ptr %config.i.i, align 4
  %conv15.i512.i = zext i8 %613 to i16
  %614 = ptrtoint ptr %msg.i510.i to i32
  call void @__asan_store2_noabort(i32 %614)
  store i16 %conv15.i512.i, ptr %msg.i510.i, align 4
  %flags.i513.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i510.i, i32 0, i32 1
  %615 = ptrtoint ptr %flags.i513.i to i32
  call void @__asan_store2_noabort(i32 %615)
  store i16 0, ptr %flags.i513.i, align 2
  %buf.i515.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i510.i, i32 0, i32 3
  %616 = ptrtoint ptr %buf.i515.i to i32
  call void @__asan_store4_noabort(i32 %616)
  store ptr %b.i509.i, ptr %buf.i515.i, align 4
  %617 = load i32, ptr @debug, align 4
  %and16.i516.i = and i32 %617, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i516.i)
  %tobool.not.i517.i = icmp eq i32 %and16.i516.i, 0
  br i1 %tobool.not.i517.i, label %if.end398.i.dib3000_write_reg.exit523.i_crit_edge, label %do.end.i519.i

if.end398.i.dib3000_write_reg.exit523.i_crit_edge: ; preds = %if.end398.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit523.i

do.end.i519.i:                                    ; preds = %if.end398.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i518.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 122, i32 noundef 122, i32 noundef 2867, i32 noundef 2867) #11
  br label %dib3000_write_reg.exit523.i

dib3000_write_reg.exit523.i:                      ; preds = %do.end.i519.i, %if.end398.i.dib3000_write_reg.exit523.i_crit_edge
  %618 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %1, align 4
  %call25.i520.i = call i32 @i2c_transfer(ptr noundef %619, ptr noundef nonnull %msg.i510.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i520.i)
  %cmp.not.i521.i = icmp eq i32 %call25.i520.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i510.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i509.i) #7
  br i1 %cmp.not.i521.i, label %if.end407.i, label %do.end404.i

do.end404.i:                                      ; preds = %dib3000_write_reg.exit523.i
  call void @__sanitizer_cov_trace_pc() #9
  %call406.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 2867, i32 noundef 122) #11
  br label %dib3000mb_fe_init.exit

if.end407.i:                                      ; preds = %dib3000_write_reg.exit523.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i524.i) #7
  %620 = getelementptr inbounds [4 x i8], ptr %b.i524.i, i32 0, i32 1
  %621 = getelementptr inbounds [4 x i8], ptr %b.i524.i, i32 0, i32 2
  %622 = getelementptr inbounds [4 x i8], ptr %b.i524.i, i32 0, i32 3
  %623 = ptrtoint ptr %b.i524.i to i32
  call void @__asan_store1_noabort(i32 %623)
  store i8 0, ptr %b.i524.i, align 1
  %624 = ptrtoint ptr %620 to i32
  call void @__asan_store1_noabort(i32 %624)
  store i8 126, ptr %620, align 1
  %625 = ptrtoint ptr %621 to i32
  call void @__asan_store1_noabort(i32 %625)
  store i8 0, ptr %621, align 1
  %626 = ptrtoint ptr %622 to i32
  call void @__asan_store1_noabort(i32 %626)
  store i8 0, ptr %622, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i525.i) #7
  %627 = getelementptr inbounds i8, ptr %msg.i525.i, i32 4
  %628 = ptrtoint ptr %627 to i32
  call void @__asan_store4_noabort(i32 %628)
  store i32 327679, ptr %627, align 4
  %629 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %629)
  %630 = load i8, ptr %config.i.i, align 4
  %conv15.i527.i = zext i8 %630 to i16
  %631 = ptrtoint ptr %msg.i525.i to i32
  call void @__asan_store2_noabort(i32 %631)
  store i16 %conv15.i527.i, ptr %msg.i525.i, align 4
  %flags.i528.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i525.i, i32 0, i32 1
  %632 = ptrtoint ptr %flags.i528.i to i32
  call void @__asan_store2_noabort(i32 %632)
  store i16 0, ptr %flags.i528.i, align 2
  %buf.i530.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i525.i, i32 0, i32 3
  %633 = ptrtoint ptr %buf.i530.i to i32
  call void @__asan_store4_noabort(i32 %633)
  store ptr %b.i524.i, ptr %buf.i530.i, align 4
  %634 = load i32, ptr @debug, align 4
  %and16.i531.i = and i32 %634, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i531.i)
  %tobool.not.i532.i = icmp eq i32 %and16.i531.i, 0
  br i1 %tobool.not.i532.i, label %if.end407.i.dib3000_write_reg.exit538.i_crit_edge, label %do.end.i534.i

if.end407.i.dib3000_write_reg.exit538.i_crit_edge: ; preds = %if.end407.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit538.i

do.end.i534.i:                                    ; preds = %if.end407.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i533.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 126, i32 noundef 126, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit538.i

dib3000_write_reg.exit538.i:                      ; preds = %do.end.i534.i, %if.end407.i.dib3000_write_reg.exit538.i_crit_edge
  %635 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %1, align 4
  %call25.i535.i = call i32 @i2c_transfer(ptr noundef %636, ptr noundef nonnull %msg.i525.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i535.i)
  %cmp.not.i536.i = icmp eq i32 %call25.i535.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i525.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i524.i) #7
  br i1 %cmp.not.i536.i, label %if.end416.i, label %do.end413.i

do.end413.i:                                      ; preds = %dib3000_write_reg.exit538.i
  call void @__sanitizer_cov_trace_pc() #9
  %call415.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 126) #11
  br label %dib3000mb_fe_init.exit

if.end416.i:                                      ; preds = %dib3000_write_reg.exit538.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i539.i) #7
  %637 = getelementptr inbounds [4 x i8], ptr %b.i539.i, i32 0, i32 1
  %638 = getelementptr inbounds [4 x i8], ptr %b.i539.i, i32 0, i32 2
  %639 = getelementptr inbounds [4 x i8], ptr %b.i539.i, i32 0, i32 3
  %640 = ptrtoint ptr %b.i539.i to i32
  call void @__asan_store1_noabort(i32 %640)
  store i8 0, ptr %b.i539.i, align 1
  %641 = ptrtoint ptr %637 to i32
  call void @__asan_store1_noabort(i32 %641)
  store i8 -121, ptr %637, align 1
  %642 = ptrtoint ptr %638 to i32
  call void @__asan_store1_noabort(i32 %642)
  store i8 0, ptr %638, align 1
  %643 = ptrtoint ptr %639 to i32
  call void @__asan_store1_noabort(i32 %643)
  store i8 1, ptr %639, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i540.i) #7
  %644 = getelementptr inbounds i8, ptr %msg.i540.i, i32 4
  %645 = ptrtoint ptr %644 to i32
  call void @__asan_store4_noabort(i32 %645)
  store i32 327679, ptr %644, align 4
  %646 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %646)
  %647 = load i8, ptr %config.i.i, align 4
  %conv15.i542.i = zext i8 %647 to i16
  %648 = ptrtoint ptr %msg.i540.i to i32
  call void @__asan_store2_noabort(i32 %648)
  store i16 %conv15.i542.i, ptr %msg.i540.i, align 4
  %flags.i543.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i540.i, i32 0, i32 1
  %649 = ptrtoint ptr %flags.i543.i to i32
  call void @__asan_store2_noabort(i32 %649)
  store i16 0, ptr %flags.i543.i, align 2
  %buf.i545.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i540.i, i32 0, i32 3
  %650 = ptrtoint ptr %buf.i545.i to i32
  call void @__asan_store4_noabort(i32 %650)
  store ptr %b.i539.i, ptr %buf.i545.i, align 4
  %651 = load i32, ptr @debug, align 4
  %and16.i546.i = and i32 %651, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i546.i)
  %tobool.not.i547.i = icmp eq i32 %and16.i546.i, 0
  br i1 %tobool.not.i547.i, label %if.end416.i.dib3000_write_reg.exit553.i_crit_edge, label %do.end.i549.i

if.end416.i.dib3000_write_reg.exit553.i_crit_edge: ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit553.i

do.end.i549.i:                                    ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i548.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 135, i32 noundef 135, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit553.i

dib3000_write_reg.exit553.i:                      ; preds = %do.end.i549.i, %if.end416.i.dib3000_write_reg.exit553.i_crit_edge
  %652 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %1, align 4
  %call25.i550.i = call i32 @i2c_transfer(ptr noundef %653, ptr noundef nonnull %msg.i540.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i550.i)
  %cmp.not.i551.i = icmp eq i32 %call25.i550.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i540.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i539.i) #7
  br i1 %cmp.not.i551.i, label %for.cond427.preheader.i, label %do.end422.i

for.cond427.preheader.i:                          ; preds = %dib3000_write_reg.exit553.i
  %654 = getelementptr inbounds [4 x i8], ptr %b.i554.i, i32 0, i32 1
  %655 = getelementptr inbounds [4 x i8], ptr %b.i554.i, i32 0, i32 2
  %656 = getelementptr inbounds [4 x i8], ptr %b.i554.i, i32 0, i32 3
  %657 = getelementptr inbounds i8, ptr %msg.i555.i, i32 4
  %flags.i562.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i555.i, i32 0, i32 1
  %buf.i564.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i555.i, i32 0, i32 3
  br label %for.body430.i

do.end422.i:                                      ; preds = %dib3000_write_reg.exit553.i
  call void @__sanitizer_cov_trace_pc() #9
  %call424.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 135) #11
  br label %dib3000mb_fe_init.exit

for.cond427.i:                                    ; preds = %dib3000_write_reg.exit574.i
  %inc447.i = add nuw nsw i32 %i426.0762.i, 1
  %exitcond791.not.i = icmp eq i32 %inc447.i, 22
  br i1 %exitcond791.not.i, label %cleanup.cont451.critedge.i, label %for.cond427.i.for.body430.i_crit_edge

for.cond427.i.for.body430.i_crit_edge:            ; preds = %for.cond427.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body430.i

for.body430.i:                                    ; preds = %for.cond427.i.for.body430.i_crit_edge, %for.cond427.preheader.i
  %i426.0762.i = phi i32 [ 0, %for.cond427.preheader.i ], [ %inc447.i, %for.cond427.i.for.body430.i_crit_edge ]
  %arrayidx431.i = getelementptr [22 x i16], ptr @dib3000mb_reg_filter_coeffs, i32 0, i32 %i426.0762.i
  %658 = ptrtoint ptr %arrayidx431.i to i32
  call void @__asan_load2_noabort(i32 %658)
  %659 = load i16, ptr %arrayidx431.i, align 2
  %arrayidx432.i = getelementptr [22 x i16], ptr @dib3000mb_filter_coeffs, i32 0, i32 %i426.0762.i
  %660 = ptrtoint ptr %arrayidx432.i to i32
  call void @__asan_load2_noabort(i32 %660)
  %661 = load i16, ptr %arrayidx432.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i554.i) #7
  %662 = lshr i16 %659, 8
  %conv1.i556.i = trunc i16 %662 to i8
  %663 = ptrtoint ptr %b.i554.i to i32
  call void @__asan_store1_noabort(i32 %663)
  store i8 %conv1.i556.i, ptr %b.i554.i, align 1
  %conv4.i557.i = trunc i16 %659 to i8
  %664 = ptrtoint ptr %654 to i32
  call void @__asan_store1_noabort(i32 %664)
  store i8 %conv4.i557.i, ptr %654, align 1
  %665 = lshr i16 %661, 8
  %conv9.i558.i = trunc i16 %665 to i8
  %666 = ptrtoint ptr %655 to i32
  call void @__asan_store1_noabort(i32 %666)
  store i8 %conv9.i558.i, ptr %655, align 1
  %conv13.i559.i = trunc i16 %661 to i8
  %667 = ptrtoint ptr %656 to i32
  call void @__asan_store1_noabort(i32 %667)
  store i8 %conv13.i559.i, ptr %656, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i555.i) #7
  %668 = ptrtoint ptr %657 to i32
  call void @__asan_store4_noabort(i32 %668)
  store i32 327679, ptr %657, align 4
  %669 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %669)
  %670 = load i8, ptr %config.i.i, align 4
  %conv15.i561.i = zext i8 %670 to i16
  %671 = ptrtoint ptr %msg.i555.i to i32
  call void @__asan_store2_noabort(i32 %671)
  store i16 %conv15.i561.i, ptr %msg.i555.i, align 4
  %672 = ptrtoint ptr %flags.i562.i to i32
  call void @__asan_store2_noabort(i32 %672)
  store i16 0, ptr %flags.i562.i, align 2
  %673 = ptrtoint ptr %buf.i564.i to i32
  call void @__asan_store4_noabort(i32 %673)
  store ptr %b.i554.i, ptr %buf.i564.i, align 4
  %674 = load i32, ptr @debug, align 4
  %and16.i565.i = and i32 %674, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i565.i)
  %tobool.not.i566.i = icmp eq i32 %and16.i565.i, 0
  br i1 %tobool.not.i566.i, label %for.body430.i.dib3000_write_reg.exit574.i_crit_edge, label %do.end.i570.i

for.body430.i.dib3000_write_reg.exit574.i_crit_edge: ; preds = %for.body430.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit574.i

do.end.i570.i:                                    ; preds = %for.body430.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i567.i = zext i16 %661 to i32
  %conv.i568.i = zext i16 %659 to i32
  %call.i569.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv.i568.i, i32 noundef %conv.i568.i, i32 noundef %conv6.i567.i, i32 noundef %conv6.i567.i) #11
  br label %dib3000_write_reg.exit574.i

dib3000_write_reg.exit574.i:                      ; preds = %do.end.i570.i, %for.body430.i.dib3000_write_reg.exit574.i_crit_edge
  %675 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %1, align 4
  %call25.i571.i = call i32 @i2c_transfer(ptr noundef %676, ptr noundef nonnull %msg.i555.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i571.i)
  %cmp.not.i572.i = icmp eq i32 %call25.i571.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i555.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i554.i) #7
  br i1 %cmp.not.i572.i, label %for.cond427.i, label %do.end438.i

do.end438.i:                                      ; preds = %dib3000_write_reg.exit574.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv441.i = zext i16 %661 to i32
  %conv443.i = zext i16 %659 to i32
  %call444.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv441.i, i32 noundef %conv443.i) #11
  br label %dib3000mb_fe_init.exit

cleanup.cont451.critedge.i:                       ; preds = %for.cond427.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i575.i) #7
  %677 = getelementptr inbounds [4 x i8], ptr %b.i575.i, i32 0, i32 1
  %678 = getelementptr inbounds [4 x i8], ptr %b.i575.i, i32 0, i32 2
  %679 = getelementptr inbounds [4 x i8], ptr %b.i575.i, i32 0, i32 3
  %680 = ptrtoint ptr %b.i575.i to i32
  call void @__asan_store1_noabort(i32 %680)
  store i8 0, ptr %b.i575.i, align 1
  %681 = ptrtoint ptr %677 to i32
  call void @__asan_store1_noabort(i32 %681)
  store i8 -61, ptr %677, align 1
  %682 = ptrtoint ptr %678 to i32
  call void @__asan_store1_noabort(i32 %682)
  store i8 0, ptr %678, align 1
  %683 = ptrtoint ptr %679 to i32
  call void @__asan_store1_noabort(i32 %683)
  store i8 0, ptr %679, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i576.i) #7
  %684 = getelementptr inbounds i8, ptr %msg.i576.i, i32 4
  %685 = ptrtoint ptr %684 to i32
  call void @__asan_store4_noabort(i32 %685)
  store i32 327679, ptr %684, align 4
  %686 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %686)
  %687 = load i8, ptr %config.i.i, align 4
  %conv15.i578.i = zext i8 %687 to i16
  %688 = ptrtoint ptr %msg.i576.i to i32
  call void @__asan_store2_noabort(i32 %688)
  store i16 %conv15.i578.i, ptr %msg.i576.i, align 4
  %flags.i579.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i576.i, i32 0, i32 1
  %689 = ptrtoint ptr %flags.i579.i to i32
  call void @__asan_store2_noabort(i32 %689)
  store i16 0, ptr %flags.i579.i, align 2
  %buf.i581.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i576.i, i32 0, i32 3
  %690 = ptrtoint ptr %buf.i581.i to i32
  call void @__asan_store4_noabort(i32 %690)
  store ptr %b.i575.i, ptr %buf.i581.i, align 4
  %691 = load i32, ptr @debug, align 4
  %and16.i582.i = and i32 %691, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i582.i)
  %tobool.not.i583.i = icmp eq i32 %and16.i582.i, 0
  br i1 %tobool.not.i583.i, label %cleanup.cont451.critedge.i.dib3000_write_reg.exit589.i_crit_edge, label %do.end.i585.i

cleanup.cont451.critedge.i.dib3000_write_reg.exit589.i_crit_edge: ; preds = %cleanup.cont451.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit589.i

do.end.i585.i:                                    ; preds = %cleanup.cont451.critedge.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i584.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 195, i32 noundef 195, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit589.i

dib3000_write_reg.exit589.i:                      ; preds = %do.end.i585.i, %cleanup.cont451.critedge.i.dib3000_write_reg.exit589.i_crit_edge
  %692 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %1, align 4
  %call25.i586.i = call i32 @i2c_transfer(ptr noundef %693, ptr noundef nonnull %msg.i576.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i586.i)
  %cmp.not.i587.i = icmp eq i32 %call25.i586.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i576.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i575.i) #7
  br i1 %cmp.not.i587.i, label %if.end460.i, label %do.end457.i

do.end457.i:                                      ; preds = %dib3000_write_reg.exit589.i
  call void @__sanitizer_cov_trace_pc() #9
  %call459.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 195) #11
  br label %dib3000mb_fe_init.exit

if.end460.i:                                      ; preds = %dib3000_write_reg.exit589.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i590.i) #7
  %694 = getelementptr inbounds [4 x i8], ptr %b.i590.i, i32 0, i32 1
  %695 = getelementptr inbounds [4 x i8], ptr %b.i590.i, i32 0, i32 2
  %696 = getelementptr inbounds [4 x i8], ptr %b.i590.i, i32 0, i32 3
  %697 = ptrtoint ptr %b.i590.i to i32
  call void @__asan_store1_noabort(i32 %697)
  store i8 0, ptr %b.i590.i, align 1
  %698 = ptrtoint ptr %694 to i32
  call void @__asan_store1_noabort(i32 %698)
  store i8 -50, ptr %694, align 1
  %699 = ptrtoint ptr %695 to i32
  call void @__asan_store1_noabort(i32 %699)
  store i8 127, ptr %695, align 1
  %700 = ptrtoint ptr %696 to i32
  call void @__asan_store1_noabort(i32 %700)
  store i8 -1, ptr %696, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i591.i) #7
  %701 = getelementptr inbounds i8, ptr %msg.i591.i, i32 4
  %702 = ptrtoint ptr %701 to i32
  call void @__asan_store4_noabort(i32 %702)
  store i32 327679, ptr %701, align 4
  %703 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %703)
  %704 = load i8, ptr %config.i.i, align 4
  %conv15.i593.i = zext i8 %704 to i16
  %705 = ptrtoint ptr %msg.i591.i to i32
  call void @__asan_store2_noabort(i32 %705)
  store i16 %conv15.i593.i, ptr %msg.i591.i, align 4
  %flags.i594.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i591.i, i32 0, i32 1
  %706 = ptrtoint ptr %flags.i594.i to i32
  call void @__asan_store2_noabort(i32 %706)
  store i16 0, ptr %flags.i594.i, align 2
  %buf.i596.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i591.i, i32 0, i32 3
  %707 = ptrtoint ptr %buf.i596.i to i32
  call void @__asan_store4_noabort(i32 %707)
  store ptr %b.i590.i, ptr %buf.i596.i, align 4
  %708 = load i32, ptr @debug, align 4
  %and16.i597.i = and i32 %708, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i597.i)
  %tobool.not.i598.i = icmp eq i32 %and16.i597.i, 0
  br i1 %tobool.not.i598.i, label %if.end460.i.dib3000_write_reg.exit604.i_crit_edge, label %do.end.i600.i

if.end460.i.dib3000_write_reg.exit604.i_crit_edge: ; preds = %if.end460.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit604.i

do.end.i600.i:                                    ; preds = %if.end460.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i599.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 206, i32 noundef 206, i32 noundef 32767, i32 noundef 32767) #11
  br label %dib3000_write_reg.exit604.i

dib3000_write_reg.exit604.i:                      ; preds = %do.end.i600.i, %if.end460.i.dib3000_write_reg.exit604.i_crit_edge
  %709 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %1, align 4
  %call25.i601.i = call i32 @i2c_transfer(ptr noundef %710, ptr noundef nonnull %msg.i591.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i601.i)
  %cmp.not.i602.i = icmp eq i32 %call25.i601.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i591.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i590.i) #7
  br i1 %cmp.not.i602.i, label %if.end469.i, label %do.end466.i

do.end466.i:                                      ; preds = %dib3000_write_reg.exit604.i
  call void @__sanitizer_cov_trace_pc() #9
  %call468.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 32767, i32 noundef 206) #11
  br label %dib3000mb_fe_init.exit

if.end469.i:                                      ; preds = %dib3000_write_reg.exit604.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i605.i) #7
  %711 = getelementptr inbounds [4 x i8], ptr %b.i605.i, i32 0, i32 1
  %712 = getelementptr inbounds [4 x i8], ptr %b.i605.i, i32 0, i32 2
  %713 = getelementptr inbounds [4 x i8], ptr %b.i605.i, i32 0, i32 3
  %714 = ptrtoint ptr %b.i605.i to i32
  call void @__asan_store1_noabort(i32 %714)
  store i8 0, ptr %b.i605.i, align 1
  %715 = ptrtoint ptr %711 to i32
  call void @__asan_store1_noabort(i32 %715)
  store i8 -49, ptr %711, align 1
  %716 = ptrtoint ptr %712 to i32
  call void @__asan_store1_noabort(i32 %716)
  store i8 15, ptr %712, align 1
  %717 = ptrtoint ptr %713 to i32
  call void @__asan_store1_noabort(i32 %717)
  store i8 -1, ptr %713, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i606.i) #7
  %718 = getelementptr inbounds i8, ptr %msg.i606.i, i32 4
  %719 = ptrtoint ptr %718 to i32
  call void @__asan_store4_noabort(i32 %719)
  store i32 327679, ptr %718, align 4
  %720 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %720)
  %721 = load i8, ptr %config.i.i, align 4
  %conv15.i608.i = zext i8 %721 to i16
  %722 = ptrtoint ptr %msg.i606.i to i32
  call void @__asan_store2_noabort(i32 %722)
  store i16 %conv15.i608.i, ptr %msg.i606.i, align 4
  %flags.i609.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i606.i, i32 0, i32 1
  %723 = ptrtoint ptr %flags.i609.i to i32
  call void @__asan_store2_noabort(i32 %723)
  store i16 0, ptr %flags.i609.i, align 2
  %buf.i611.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i606.i, i32 0, i32 3
  %724 = ptrtoint ptr %buf.i611.i to i32
  call void @__asan_store4_noabort(i32 %724)
  store ptr %b.i605.i, ptr %buf.i611.i, align 4
  %725 = load i32, ptr @debug, align 4
  %and16.i612.i = and i32 %725, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i612.i)
  %tobool.not.i613.i = icmp eq i32 %and16.i612.i, 0
  br i1 %tobool.not.i613.i, label %if.end469.i.dib3000_write_reg.exit619.i_crit_edge, label %do.end.i615.i

if.end469.i.dib3000_write_reg.exit619.i_crit_edge: ; preds = %if.end469.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit619.i

do.end.i615.i:                                    ; preds = %if.end469.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i614.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 207, i32 noundef 207, i32 noundef 4095, i32 noundef 4095) #11
  br label %dib3000_write_reg.exit619.i

dib3000_write_reg.exit619.i:                      ; preds = %do.end.i615.i, %if.end469.i.dib3000_write_reg.exit619.i_crit_edge
  %726 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %1, align 4
  %call25.i616.i = call i32 @i2c_transfer(ptr noundef %727, ptr noundef nonnull %msg.i606.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i616.i)
  %cmp.not.i617.i = icmp eq i32 %call25.i616.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i606.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i605.i) #7
  br i1 %cmp.not.i617.i, label %if.end478.i, label %do.end475.i

do.end475.i:                                      ; preds = %dib3000_write_reg.exit619.i
  call void @__sanitizer_cov_trace_pc() #9
  %call477.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 4095, i32 noundef 207) #11
  br label %dib3000mb_fe_init.exit

if.end478.i:                                      ; preds = %dib3000_write_reg.exit619.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i620.i) #7
  %728 = getelementptr inbounds [4 x i8], ptr %b.i620.i, i32 0, i32 1
  %729 = getelementptr inbounds [4 x i8], ptr %b.i620.i, i32 0, i32 2
  %730 = getelementptr inbounds [4 x i8], ptr %b.i620.i, i32 0, i32 3
  %731 = ptrtoint ptr %b.i620.i to i32
  call void @__asan_store1_noabort(i32 %731)
  store i8 0, ptr %b.i620.i, align 1
  %732 = ptrtoint ptr %728 to i32
  call void @__asan_store1_noabort(i32 %732)
  store i8 -87, ptr %728, align 1
  %733 = ptrtoint ptr %729 to i32
  call void @__asan_store1_noabort(i32 %733)
  store i8 0, ptr %729, align 1
  %734 = ptrtoint ptr %730 to i32
  call void @__asan_store1_noabort(i32 %734)
  store i8 6, ptr %730, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i621.i) #7
  %735 = getelementptr inbounds i8, ptr %msg.i621.i, i32 4
  %736 = ptrtoint ptr %735 to i32
  call void @__asan_store4_noabort(i32 %736)
  store i32 327679, ptr %735, align 4
  %737 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %737)
  %738 = load i8, ptr %config.i.i, align 4
  %conv15.i623.i = zext i8 %738 to i16
  %739 = ptrtoint ptr %msg.i621.i to i32
  call void @__asan_store2_noabort(i32 %739)
  store i16 %conv15.i623.i, ptr %msg.i621.i, align 4
  %flags.i624.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i621.i, i32 0, i32 1
  %740 = ptrtoint ptr %flags.i624.i to i32
  call void @__asan_store2_noabort(i32 %740)
  store i16 0, ptr %flags.i624.i, align 2
  %buf.i626.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i621.i, i32 0, i32 3
  %741 = ptrtoint ptr %buf.i626.i to i32
  call void @__asan_store4_noabort(i32 %741)
  store ptr %b.i620.i, ptr %buf.i626.i, align 4
  %742 = load i32, ptr @debug, align 4
  %and16.i627.i = and i32 %742, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i627.i)
  %tobool.not.i628.i = icmp eq i32 %and16.i627.i, 0
  br i1 %tobool.not.i628.i, label %if.end478.i.dib3000_write_reg.exit634.i_crit_edge, label %do.end.i630.i

if.end478.i.dib3000_write_reg.exit634.i_crit_edge: ; preds = %if.end478.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit634.i

do.end.i630.i:                                    ; preds = %if.end478.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i629.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 169, i32 noundef 169, i32 noundef 6, i32 noundef 6) #11
  br label %dib3000_write_reg.exit634.i

dib3000_write_reg.exit634.i:                      ; preds = %do.end.i630.i, %if.end478.i.dib3000_write_reg.exit634.i_crit_edge
  %743 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %1, align 4
  %call25.i631.i = call i32 @i2c_transfer(ptr noundef %744, ptr noundef nonnull %msg.i621.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i631.i)
  %cmp.not.i632.i = icmp eq i32 %call25.i631.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i621.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i620.i) #7
  br i1 %cmp.not.i632.i, label %if.end487.i, label %do.end484.i

do.end484.i:                                      ; preds = %dib3000_write_reg.exit634.i
  call void @__sanitizer_cov_trace_pc() #9
  %call486.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 6, i32 noundef 169) #11
  br label %dib3000mb_fe_init.exit

if.end487.i:                                      ; preds = %dib3000_write_reg.exit634.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i635.i) #7
  %745 = getelementptr inbounds [4 x i8], ptr %b.i635.i, i32 0, i32 1
  %746 = getelementptr inbounds [4 x i8], ptr %b.i635.i, i32 0, i32 2
  %747 = getelementptr inbounds [4 x i8], ptr %b.i635.i, i32 0, i32 3
  %748 = ptrtoint ptr %b.i635.i to i32
  call void @__asan_store1_noabort(i32 %748)
  store i8 0, ptr %b.i635.i, align 1
  %749 = ptrtoint ptr %745 to i32
  call void @__asan_store1_noabort(i32 %749)
  store i8 -114, ptr %745, align 1
  %750 = ptrtoint ptr %746 to i32
  call void @__asan_store1_noabort(i32 %750)
  store i8 0, ptr %746, align 1
  %751 = ptrtoint ptr %747 to i32
  call void @__asan_store1_noabort(i32 %751)
  store i8 0, ptr %747, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i636.i) #7
  %752 = getelementptr inbounds i8, ptr %msg.i636.i, i32 4
  %753 = ptrtoint ptr %752 to i32
  call void @__asan_store4_noabort(i32 %753)
  store i32 327679, ptr %752, align 4
  %754 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %754)
  %755 = load i8, ptr %config.i.i, align 4
  %conv15.i638.i = zext i8 %755 to i16
  %756 = ptrtoint ptr %msg.i636.i to i32
  call void @__asan_store2_noabort(i32 %756)
  store i16 %conv15.i638.i, ptr %msg.i636.i, align 4
  %flags.i639.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i636.i, i32 0, i32 1
  %757 = ptrtoint ptr %flags.i639.i to i32
  call void @__asan_store2_noabort(i32 %757)
  store i16 0, ptr %flags.i639.i, align 2
  %buf.i641.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i636.i, i32 0, i32 3
  %758 = ptrtoint ptr %buf.i641.i to i32
  call void @__asan_store4_noabort(i32 %758)
  store ptr %b.i635.i, ptr %buf.i641.i, align 4
  %759 = load i32, ptr @debug, align 4
  %and16.i642.i = and i32 %759, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i642.i)
  %tobool.not.i643.i = icmp eq i32 %and16.i642.i, 0
  br i1 %tobool.not.i643.i, label %if.end487.i.dib3000_write_reg.exit649.i_crit_edge, label %do.end.i645.i

if.end487.i.dib3000_write_reg.exit649.i_crit_edge: ; preds = %if.end487.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit649.i

do.end.i645.i:                                    ; preds = %if.end487.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i644.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 142, i32 noundef 142, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit649.i

dib3000_write_reg.exit649.i:                      ; preds = %do.end.i645.i, %if.end487.i.dib3000_write_reg.exit649.i_crit_edge
  %760 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %1, align 4
  %call25.i646.i = call i32 @i2c_transfer(ptr noundef %761, ptr noundef nonnull %msg.i636.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i646.i)
  %cmp.not.i647.i = icmp eq i32 %call25.i646.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i636.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i635.i) #7
  br i1 %cmp.not.i647.i, label %if.end496.i, label %do.end493.i

do.end493.i:                                      ; preds = %dib3000_write_reg.exit649.i
  call void @__sanitizer_cov_trace_pc() #9
  %call495.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 142) #11
  br label %dib3000mb_fe_init.exit

if.end496.i:                                      ; preds = %dib3000_write_reg.exit649.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i650.i) #7
  %762 = getelementptr inbounds [4 x i8], ptr %b.i650.i, i32 0, i32 1
  %763 = getelementptr inbounds [4 x i8], ptr %b.i650.i, i32 0, i32 2
  %764 = getelementptr inbounds [4 x i8], ptr %b.i650.i, i32 0, i32 3
  %765 = ptrtoint ptr %b.i650.i to i32
  call void @__asan_store1_noabort(i32 %765)
  store i8 0, ptr %b.i650.i, align 1
  %766 = ptrtoint ptr %762 to i32
  call void @__asan_store1_noabort(i32 %766)
  store i8 -113, ptr %762, align 1
  %767 = ptrtoint ptr %763 to i32
  call void @__asan_store1_noabort(i32 %767)
  store i8 0, ptr %763, align 1
  %768 = ptrtoint ptr %764 to i32
  call void @__asan_store1_noabort(i32 %768)
  store i8 1, ptr %764, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i651.i) #7
  %769 = getelementptr inbounds i8, ptr %msg.i651.i, i32 4
  %770 = ptrtoint ptr %769 to i32
  call void @__asan_store4_noabort(i32 %770)
  store i32 327679, ptr %769, align 4
  %771 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %771)
  %772 = load i8, ptr %config.i.i, align 4
  %conv15.i653.i = zext i8 %772 to i16
  %773 = ptrtoint ptr %msg.i651.i to i32
  call void @__asan_store2_noabort(i32 %773)
  store i16 %conv15.i653.i, ptr %msg.i651.i, align 4
  %flags.i654.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i651.i, i32 0, i32 1
  %774 = ptrtoint ptr %flags.i654.i to i32
  call void @__asan_store2_noabort(i32 %774)
  store i16 0, ptr %flags.i654.i, align 2
  %buf.i656.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i651.i, i32 0, i32 3
  %775 = ptrtoint ptr %buf.i656.i to i32
  call void @__asan_store4_noabort(i32 %775)
  store ptr %b.i650.i, ptr %buf.i656.i, align 4
  %776 = load i32, ptr @debug, align 4
  %and16.i657.i = and i32 %776, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i657.i)
  %tobool.not.i658.i = icmp eq i32 %and16.i657.i, 0
  br i1 %tobool.not.i658.i, label %if.end496.i.dib3000_write_reg.exit664.i_crit_edge, label %do.end.i660.i

if.end496.i.dib3000_write_reg.exit664.i_crit_edge: ; preds = %if.end496.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit664.i

do.end.i660.i:                                    ; preds = %if.end496.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i659.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 143, i32 noundef 143, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit664.i

dib3000_write_reg.exit664.i:                      ; preds = %do.end.i660.i, %if.end496.i.dib3000_write_reg.exit664.i_crit_edge
  %777 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %1, align 4
  %call25.i661.i = call i32 @i2c_transfer(ptr noundef %778, ptr noundef nonnull %msg.i651.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i661.i)
  %cmp.not.i662.i = icmp eq i32 %call25.i661.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i651.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i650.i) #7
  br i1 %cmp.not.i662.i, label %if.end505.i, label %do.end502.i

do.end502.i:                                      ; preds = %dib3000_write_reg.exit664.i
  call void @__sanitizer_cov_trace_pc() #9
  %call504.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 143) #11
  br label %dib3000mb_fe_init.exit

if.end505.i:                                      ; preds = %dib3000_write_reg.exit664.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i665.i) #7
  %779 = getelementptr inbounds [4 x i8], ptr %b.i665.i, i32 0, i32 1
  %780 = getelementptr inbounds [4 x i8], ptr %b.i665.i, i32 0, i32 2
  %781 = getelementptr inbounds [4 x i8], ptr %b.i665.i, i32 0, i32 3
  %782 = ptrtoint ptr %b.i665.i to i32
  call void @__asan_store1_noabort(i32 %782)
  store i8 0, ptr %b.i665.i, align 1
  %783 = ptrtoint ptr %779 to i32
  call void @__asan_store1_noabort(i32 %783)
  store i8 -112, ptr %779, align 1
  %784 = ptrtoint ptr %780 to i32
  call void @__asan_store1_noabort(i32 %784)
  store i8 0, ptr %780, align 1
  %785 = ptrtoint ptr %781 to i32
  call void @__asan_store1_noabort(i32 %785)
  store i8 1, ptr %781, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i666.i) #7
  %786 = getelementptr inbounds i8, ptr %msg.i666.i, i32 4
  %787 = ptrtoint ptr %786 to i32
  call void @__asan_store4_noabort(i32 %787)
  store i32 327679, ptr %786, align 4
  %788 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %788)
  %789 = load i8, ptr %config.i.i, align 4
  %conv15.i668.i = zext i8 %789 to i16
  %790 = ptrtoint ptr %msg.i666.i to i32
  call void @__asan_store2_noabort(i32 %790)
  store i16 %conv15.i668.i, ptr %msg.i666.i, align 4
  %flags.i669.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i666.i, i32 0, i32 1
  %791 = ptrtoint ptr %flags.i669.i to i32
  call void @__asan_store2_noabort(i32 %791)
  store i16 0, ptr %flags.i669.i, align 2
  %buf.i671.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i666.i, i32 0, i32 3
  %792 = ptrtoint ptr %buf.i671.i to i32
  call void @__asan_store4_noabort(i32 %792)
  store ptr %b.i665.i, ptr %buf.i671.i, align 4
  %793 = load i32, ptr @debug, align 4
  %and16.i672.i = and i32 %793, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i672.i)
  %tobool.not.i673.i = icmp eq i32 %and16.i672.i, 0
  br i1 %tobool.not.i673.i, label %if.end505.i.dib3000_write_reg.exit679.i_crit_edge, label %do.end.i675.i

if.end505.i.dib3000_write_reg.exit679.i_crit_edge: ; preds = %if.end505.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit679.i

do.end.i675.i:                                    ; preds = %if.end505.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i674.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 144, i32 noundef 144, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit679.i

dib3000_write_reg.exit679.i:                      ; preds = %do.end.i675.i, %if.end505.i.dib3000_write_reg.exit679.i_crit_edge
  %794 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %1, align 4
  %call25.i676.i = call i32 @i2c_transfer(ptr noundef %795, ptr noundef nonnull %msg.i666.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i676.i)
  %cmp.not.i677.i = icmp eq i32 %call25.i676.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i666.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i665.i) #7
  br i1 %cmp.not.i677.i, label %if.end514.i, label %do.end511.i

do.end511.i:                                      ; preds = %dib3000_write_reg.exit679.i
  call void @__sanitizer_cov_trace_pc() #9
  %call513.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 144) #11
  br label %dib3000mb_fe_init.exit

if.end514.i:                                      ; preds = %dib3000_write_reg.exit679.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i680.i) #7
  %796 = getelementptr inbounds [4 x i8], ptr %b.i680.i, i32 0, i32 1
  %797 = getelementptr inbounds [4 x i8], ptr %b.i680.i, i32 0, i32 2
  %798 = getelementptr inbounds [4 x i8], ptr %b.i680.i, i32 0, i32 3
  %799 = ptrtoint ptr %b.i680.i to i32
  call void @__asan_store1_noabort(i32 %799)
  store i8 0, ptr %b.i680.i, align 1
  %800 = ptrtoint ptr %796 to i32
  call void @__asan_store1_noabort(i32 %800)
  store i8 -111, ptr %796, align 1
  %801 = ptrtoint ptr %797 to i32
  call void @__asan_store1_noabort(i32 %801)
  store i8 0, ptr %797, align 1
  %802 = ptrtoint ptr %798 to i32
  call void @__asan_store1_noabort(i32 %802)
  store i8 1, ptr %798, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i681.i) #7
  %803 = getelementptr inbounds i8, ptr %msg.i681.i, i32 4
  %804 = ptrtoint ptr %803 to i32
  call void @__asan_store4_noabort(i32 %804)
  store i32 327679, ptr %803, align 4
  %805 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %805)
  %806 = load i8, ptr %config.i.i, align 4
  %conv15.i683.i = zext i8 %806 to i16
  %807 = ptrtoint ptr %msg.i681.i to i32
  call void @__asan_store2_noabort(i32 %807)
  store i16 %conv15.i683.i, ptr %msg.i681.i, align 4
  %flags.i684.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i681.i, i32 0, i32 1
  %808 = ptrtoint ptr %flags.i684.i to i32
  call void @__asan_store2_noabort(i32 %808)
  store i16 0, ptr %flags.i684.i, align 2
  %buf.i686.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i681.i, i32 0, i32 3
  %809 = ptrtoint ptr %buf.i686.i to i32
  call void @__asan_store4_noabort(i32 %809)
  store ptr %b.i680.i, ptr %buf.i686.i, align 4
  %810 = load i32, ptr @debug, align 4
  %and16.i687.i = and i32 %810, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i687.i)
  %tobool.not.i688.i = icmp eq i32 %and16.i687.i, 0
  br i1 %tobool.not.i688.i, label %if.end514.i.dib3000_write_reg.exit694.i_crit_edge, label %do.end.i690.i

if.end514.i.dib3000_write_reg.exit694.i_crit_edge: ; preds = %if.end514.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit694.i

do.end.i690.i:                                    ; preds = %if.end514.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i689.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 145, i32 noundef 145, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit694.i

dib3000_write_reg.exit694.i:                      ; preds = %do.end.i690.i, %if.end514.i.dib3000_write_reg.exit694.i_crit_edge
  %811 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %1, align 4
  %call25.i691.i = call i32 @i2c_transfer(ptr noundef %812, ptr noundef nonnull %msg.i681.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i691.i)
  %cmp.not.i692.i = icmp eq i32 %call25.i691.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i681.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i680.i) #7
  br i1 %cmp.not.i692.i, label %if.end523.i, label %do.end520.i

do.end520.i:                                      ; preds = %dib3000_write_reg.exit694.i
  call void @__sanitizer_cov_trace_pc() #9
  %call522.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 145) #11
  br label %dib3000mb_fe_init.exit

if.end523.i:                                      ; preds = %dib3000_write_reg.exit694.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i695.i) #7
  %813 = getelementptr inbounds [4 x i8], ptr %b.i695.i, i32 0, i32 1
  %814 = getelementptr inbounds [4 x i8], ptr %b.i695.i, i32 0, i32 2
  %815 = getelementptr inbounds [4 x i8], ptr %b.i695.i, i32 0, i32 3
  %816 = ptrtoint ptr %b.i695.i to i32
  call void @__asan_store1_noabort(i32 %816)
  store i8 0, ptr %b.i695.i, align 1
  %817 = ptrtoint ptr %813 to i32
  call void @__asan_store1_noabort(i32 %817)
  store i8 -110, ptr %813, align 1
  %818 = ptrtoint ptr %814 to i32
  call void @__asan_store1_noabort(i32 %818)
  store i8 0, ptr %814, align 1
  %819 = ptrtoint ptr %815 to i32
  call void @__asan_store1_noabort(i32 %819)
  store i8 3, ptr %815, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i696.i) #7
  %820 = getelementptr inbounds i8, ptr %msg.i696.i, i32 4
  %821 = ptrtoint ptr %820 to i32
  call void @__asan_store4_noabort(i32 %821)
  store i32 327679, ptr %820, align 4
  %822 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %822)
  %823 = load i8, ptr %config.i.i, align 4
  %conv15.i698.i = zext i8 %823 to i16
  %824 = ptrtoint ptr %msg.i696.i to i32
  call void @__asan_store2_noabort(i32 %824)
  store i16 %conv15.i698.i, ptr %msg.i696.i, align 4
  %flags.i699.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i696.i, i32 0, i32 1
  %825 = ptrtoint ptr %flags.i699.i to i32
  call void @__asan_store2_noabort(i32 %825)
  store i16 0, ptr %flags.i699.i, align 2
  %buf.i701.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i696.i, i32 0, i32 3
  %826 = ptrtoint ptr %buf.i701.i to i32
  call void @__asan_store4_noabort(i32 %826)
  store ptr %b.i695.i, ptr %buf.i701.i, align 4
  %827 = load i32, ptr @debug, align 4
  %and16.i702.i = and i32 %827, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i702.i)
  %tobool.not.i703.i = icmp eq i32 %and16.i702.i, 0
  br i1 %tobool.not.i703.i, label %if.end523.i.dib3000_write_reg.exit709.i_crit_edge, label %do.end.i705.i

if.end523.i.dib3000_write_reg.exit709.i_crit_edge: ; preds = %if.end523.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit709.i

do.end.i705.i:                                    ; preds = %if.end523.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i704.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 146, i32 noundef 146, i32 noundef 3, i32 noundef 3) #11
  br label %dib3000_write_reg.exit709.i

dib3000_write_reg.exit709.i:                      ; preds = %do.end.i705.i, %if.end523.i.dib3000_write_reg.exit709.i_crit_edge
  %828 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %1, align 4
  %call25.i706.i = call i32 @i2c_transfer(ptr noundef %829, ptr noundef nonnull %msg.i696.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i706.i)
  %cmp.not.i707.i = icmp eq i32 %call25.i706.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i696.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i695.i) #7
  br i1 %cmp.not.i707.i, label %if.end532.i, label %do.end529.i

do.end529.i:                                      ; preds = %dib3000_write_reg.exit709.i
  call void @__sanitizer_cov_trace_pc() #9
  %call531.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef 146) #11
  br label %dib3000mb_fe_init.exit

if.end532.i:                                      ; preds = %dib3000_write_reg.exit709.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i710.i) #7
  %830 = getelementptr inbounds [4 x i8], ptr %b.i710.i, i32 0, i32 1
  %831 = getelementptr inbounds [4 x i8], ptr %b.i710.i, i32 0, i32 2
  %832 = getelementptr inbounds [4 x i8], ptr %b.i710.i, i32 0, i32 3
  %833 = ptrtoint ptr %b.i710.i to i32
  call void @__asan_store1_noabort(i32 %833)
  store i8 0, ptr %b.i710.i, align 1
  %834 = ptrtoint ptr %830 to i32
  call void @__asan_store1_noabort(i32 %834)
  store i8 -109, ptr %830, align 1
  %835 = ptrtoint ptr %831 to i32
  call void @__asan_store1_noabort(i32 %835)
  store i8 1, ptr %831, align 1
  %836 = ptrtoint ptr %832 to i32
  call void @__asan_store1_noabort(i32 %836)
  store i8 0, ptr %832, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i711.i) #7
  %837 = getelementptr inbounds i8, ptr %msg.i711.i, i32 4
  %838 = ptrtoint ptr %837 to i32
  call void @__asan_store4_noabort(i32 %838)
  store i32 327679, ptr %837, align 4
  %839 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %839)
  %840 = load i8, ptr %config.i.i, align 4
  %conv15.i713.i = zext i8 %840 to i16
  %841 = ptrtoint ptr %msg.i711.i to i32
  call void @__asan_store2_noabort(i32 %841)
  store i16 %conv15.i713.i, ptr %msg.i711.i, align 4
  %flags.i714.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i711.i, i32 0, i32 1
  %842 = ptrtoint ptr %flags.i714.i to i32
  call void @__asan_store2_noabort(i32 %842)
  store i16 0, ptr %flags.i714.i, align 2
  %buf.i716.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i711.i, i32 0, i32 3
  %843 = ptrtoint ptr %buf.i716.i to i32
  call void @__asan_store4_noabort(i32 %843)
  store ptr %b.i710.i, ptr %buf.i716.i, align 4
  %844 = load i32, ptr @debug, align 4
  %and16.i717.i = and i32 %844, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i717.i)
  %tobool.not.i718.i = icmp eq i32 %and16.i717.i, 0
  br i1 %tobool.not.i718.i, label %if.end532.i.dib3000_write_reg.exit724.i_crit_edge, label %do.end.i720.i

if.end532.i.dib3000_write_reg.exit724.i_crit_edge: ; preds = %if.end532.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit724.i

do.end.i720.i:                                    ; preds = %if.end532.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i719.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 147, i32 noundef 147, i32 noundef 256, i32 noundef 256) #11
  br label %dib3000_write_reg.exit724.i

dib3000_write_reg.exit724.i:                      ; preds = %do.end.i720.i, %if.end532.i.dib3000_write_reg.exit724.i_crit_edge
  %845 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %1, align 4
  %call25.i721.i = call i32 @i2c_transfer(ptr noundef %846, ptr noundef nonnull %msg.i711.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i721.i)
  %cmp.not.i722.i = icmp eq i32 %call25.i721.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i711.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i710.i) #7
  br i1 %cmp.not.i722.i, label %if.end541.i, label %do.end538.i

do.end538.i:                                      ; preds = %dib3000_write_reg.exit724.i
  call void @__sanitizer_cov_trace_pc() #9
  %call540.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 256, i32 noundef 147) #11
  br label %dib3000mb_fe_init.exit

if.end541.i:                                      ; preds = %dib3000_write_reg.exit724.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i725.i) #7
  %847 = getelementptr inbounds [4 x i8], ptr %b.i725.i, i32 0, i32 1
  %848 = getelementptr inbounds [4 x i8], ptr %b.i725.i, i32 0, i32 2
  %849 = getelementptr inbounds [4 x i8], ptr %b.i725.i, i32 0, i32 3
  %850 = ptrtoint ptr %b.i725.i to i32
  call void @__asan_store1_noabort(i32 %850)
  store i8 0, ptr %b.i725.i, align 1
  %851 = ptrtoint ptr %847 to i32
  call void @__asan_store1_noabort(i32 %851)
  store i8 127, ptr %847, align 1
  %852 = ptrtoint ptr %848 to i32
  call void @__asan_store1_noabort(i32 %852)
  store i8 0, ptr %848, align 1
  %853 = ptrtoint ptr %849 to i32
  call void @__asan_store1_noabort(i32 %853)
  store i8 0, ptr %849, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i726.i) #7
  %854 = getelementptr inbounds i8, ptr %msg.i726.i, i32 4
  %855 = ptrtoint ptr %854 to i32
  call void @__asan_store4_noabort(i32 %855)
  store i32 327679, ptr %854, align 4
  %856 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load1_noabort(i32 %856)
  %857 = load i8, ptr %config.i.i, align 4
  %conv15.i728.i = zext i8 %857 to i16
  %858 = ptrtoint ptr %msg.i726.i to i32
  call void @__asan_store2_noabort(i32 %858)
  store i16 %conv15.i728.i, ptr %msg.i726.i, align 4
  %flags.i729.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i726.i, i32 0, i32 1
  %859 = ptrtoint ptr %flags.i729.i to i32
  call void @__asan_store2_noabort(i32 %859)
  store i16 0, ptr %flags.i729.i, align 2
  %buf.i731.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i726.i, i32 0, i32 3
  %860 = ptrtoint ptr %buf.i731.i to i32
  call void @__asan_store4_noabort(i32 %860)
  store ptr %b.i725.i, ptr %buf.i731.i, align 4
  %861 = load i32, ptr @debug, align 4
  %and16.i732.i = and i32 %861, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i732.i)
  %tobool.not.i733.i = icmp eq i32 %and16.i732.i, 0
  br i1 %tobool.not.i733.i, label %if.end541.i.dib3000_write_reg.exit739.i_crit_edge, label %do.end.i735.i

if.end541.i.dib3000_write_reg.exit739.i_crit_edge: ; preds = %if.end541.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit739.i

do.end.i735.i:                                    ; preds = %if.end541.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i734.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 127, i32 noundef 127, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit739.i

dib3000_write_reg.exit739.i:                      ; preds = %do.end.i735.i, %if.end541.i.dib3000_write_reg.exit739.i_crit_edge
  %862 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %1, align 4
  %call25.i736.i = call i32 @i2c_transfer(ptr noundef %863, ptr noundef nonnull %msg.i726.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i736.i)
  %cmp.not.i737.i = icmp eq i32 %call25.i736.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i726.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i725.i) #7
  br i1 %cmp.not.i737.i, label %dib3000_write_reg.exit739.i.dib3000mb_fe_init.exit_crit_edge, label %do.end547.i

dib3000_write_reg.exit739.i.dib3000mb_fe_init.exit_crit_edge: ; preds = %dib3000_write_reg.exit739.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000mb_fe_init.exit

do.end547.i:                                      ; preds = %dib3000_write_reg.exit739.i
  call void @__sanitizer_cov_trace_pc() #9
  %call549.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 127) #11
  br label %dib3000mb_fe_init.exit

dib3000mb_fe_init.exit:                           ; preds = %do.end547.i, %dib3000_write_reg.exit739.i.dib3000mb_fe_init.exit_crit_edge, %do.end538.i, %do.end529.i, %do.end520.i, %do.end511.i, %do.end502.i, %do.end493.i, %do.end484.i, %do.end475.i, %do.end466.i, %do.end457.i, %do.end438.i, %do.end422.i, %do.end413.i, %do.end404.i, %do.end395.i, %do.end386.i, %do.end377.i, %do.end368.i, %do.end359.i, %do.end350.i, %do.end341.i, %do.end332.i, %do.end323.i, %do.end314.i, %do.end305.i, %do.end296.i, %do.end277.i, %do.end260.i, %do.end251.i, %do.end242.i, %do.end233.i, %do.end214.i, %do.end188.i, %do.end162.i, %do.end146.i, %do.end127.i, %do.end101.i, %do.end82.i, %do.end72.i, %do.end63.i, %do.end54.i, %do.end45.i, %do.end36.i, %do.end27.i, %do.end18.i, %do.end9.i
  %retval.8.i = phi i32 [ -121, %do.end9.i ], [ -121, %do.end18.i ], [ -121, %do.end27.i ], [ -121, %do.end36.i ], [ -121, %do.end45.i ], [ -121, %do.end54.i ], [ -121, %do.end63.i ], [ -121, %do.end72.i ], [ -121, %do.end146.i ], [ -121, %do.end233.i ], [ -121, %do.end242.i ], [ -121, %do.end251.i ], [ -121, %do.end260.i ], [ -121, %do.end296.i ], [ -121, %do.end305.i ], [ -121, %do.end314.i ], [ -121, %do.end323.i ], [ -121, %do.end332.i ], [ -121, %do.end341.i ], [ -121, %do.end350.i ], [ -121, %do.end359.i ], [ -121, %do.end368.i ], [ -121, %do.end377.i ], [ -121, %do.end386.i ], [ -121, %do.end395.i ], [ -121, %do.end404.i ], [ -121, %do.end413.i ], [ -121, %do.end422.i ], [ -121, %do.end457.i ], [ -121, %do.end466.i ], [ -121, %do.end475.i ], [ -121, %do.end484.i ], [ -121, %do.end493.i ], [ -121, %do.end502.i ], [ -121, %do.end511.i ], [ -121, %do.end520.i ], [ -121, %do.end529.i ], [ -121, %do.end538.i ], [ -121, %do.end547.i ], [ -121, %do.end82.i ], [ -121, %do.end101.i ], [ -121, %do.end127.i ], [ -121, %do.end162.i ], [ -121, %do.end188.i ], [ -121, %do.end214.i ], [ -121, %do.end277.i ], [ -121, %do.end438.i ], [ 0, %dib3000_write_reg.exit739.i.dib3000mb_fe_init.exit_crit_edge ]
  ret i32 %retval.8.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mb_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %b.i = alloca [4 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i) #7
  %3 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 3
  %6 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %b.i, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %3, align 1
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %4, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 327679, ptr %10, align 4
  %config.i = getelementptr inbounds %struct.dib3000_state, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %config.i, align 4
  %conv15.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv15.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %b.i, ptr %buf.i, align 4
  %17 = load i32, ptr @debug, align 4
  %and16.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool.not.i, label %do.end3.dib3000_write_reg.exit_crit_edge, label %do.end.i

do.end3.dib3000_write_reg.exit_crit_edge:         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit

do.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 1028, i32 noundef 1028, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit

dib3000_write_reg.exit:                           ; preds = %do.end.i, %do.end3.dib3000_write_reg.exit_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call25.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i)
  %cmp.not.i = icmp eq i32 %call25.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i) #7
  br i1 %cmp.not.i, label %dib3000_write_reg.exit.cleanup_crit_edge, label %do.end9

dib3000_write_reg.exit.cleanup_crit_edge:         ; preds = %dib3000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end9:                                          ; preds = %dib3000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 1028) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %dib3000_write_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.end9 ], [ 0, %dib3000_write_reg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mb_set_frontend_and_tuner(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dib3000mb_set_frontend(ptr noundef %fe, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dib3000mb_fe_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %tune) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 800, ptr %tune, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mb_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 394)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 339)
  %and = shl i32 %call1, 16
  %shl = and i32 %and, 16711680
  %call2 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 340)
  %add = add i32 %shl, %call2
  %2 = load i32, ptr @debug, align 4
  %and3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.do.end12_crit_edge, label %do.end

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 339)
  %call8 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 340)
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.326, ptr noundef nonnull @.str.327, i32 noundef %add, i32 noundef %call7, i32 noundef %call8) #11
  br label %do.end12

do.end12:                                         ; preds = %do.end, %if.end.do.end12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %add)
  %cmp = icmp ult i32 %add, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %add)
  %cmp14 = icmp eq i32 %add, 8388608
  %.533 = select i1 %cmp14, i32 1, i32 2
  %inv_test1.0 = select i1 %cmp, i32 0, i32 %.533
  %call19 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 6)
  %and20 = shl i32 %call19, 16
  %shl21 = and i32 %and20, 16711680
  %call22 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 7)
  %add23 = add i32 %shl21, %call22
  %3 = load i32, ptr @debug, align 4
  %and25 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.end12.do.end37_crit_edge, label %do.end30

do.end12.do.end37_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

do.end30:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 6)
  %call33 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 7)
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.329, ptr noundef nonnull @.str.327, i32 noundef %add23, i32 noundef %call32, i32 noundef %call33) #11
  br label %do.end37

do.end37:                                         ; preds = %do.end30, %do.end12.do.end37_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %add23)
  %cmp38 = icmp ult i32 %add23, 8388608
  br i1 %cmp38, label %land.rhs, label %if.end45

if.end45:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388608, i32 %add23)
  %cmp41 = icmp eq i32 %add23, 8388608
  %.535 = select i1 %cmp41, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388609, i32 %add)
  %4 = icmp ult i32 %add, 8388609
  %not.cmp41 = xor i1 %cmp41, true
  %spec.select = select i1 %not.cmp41, i1 %4, i1 false
  br label %lor.end53

land.rhs:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388607, i32 %add)
  %5 = icmp ugt i32 %add, 8388607
  br label %lor.end53

lor.end53:                                        ; preds = %land.rhs, %if.end45
  %inv_test2.0539 = phi i32 [ 0, %land.rhs ], [ %.535, %if.end45 ]
  %.shrunk = phi i1 [ %5, %land.rhs ], [ %spec.select, %if.end45 ]
  %6 = zext i1 %.shrunk to i32
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %7 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %inversion, align 4
  %8 = load i32, ptr @debug, align 4
  %and55 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %lor.end53.do.end66_crit_edge, label %do.end60

lor.end53.do.end66_crit_edge:                     ; preds = %lor.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

do.end60:                                         ; preds = %lor.end53
  call void @__sanitizer_cov_trace_pc() #9
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.332, ptr noundef nonnull @.str.327, i32 noundef %inv_test2.0539, i32 noundef %inv_test1.0, i32 noundef %6) #11
  br label %do.end66

do.end66:                                         ; preds = %do.end60, %lor.end53.do.end66_crit_edge
  %call67 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 398)
  %conv68 = and i32 %call67, 65535
  %trunc = trunc i32 %call67 to i16
  %9 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.end111 [
    i16 0, label %do.body69
    i16 1, label %do.body82
    i16 2, label %do.body96
  ]

do.body69:                                        ; preds = %do.end66
  %10 = load i32, ptr @debug, align 4
  %and70 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body69.do.end80_crit_edge, label %do.end75

do.body69.do.end80_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end80

do.end75:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.335, ptr noundef nonnull @.str.327) #11
  br label %do.end80

do.end80:                                         ; preds = %do.end75, %do.body69.do.end80_crit_edge
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %11 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %modulation, align 4
  br label %do.body115

do.body82:                                        ; preds = %do.end66
  %12 = load i32, ptr @debug, align 4
  %and83 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body82.do.end93_crit_edge, label %do.end88

do.body82.do.end93_crit_edge:                     ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end93

do.end88:                                         ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.338, ptr noundef nonnull @.str.327) #11
  br label %do.end93

do.end93:                                         ; preds = %do.end88, %do.body82.do.end93_crit_edge
  %modulation94 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %13 = ptrtoint ptr %modulation94 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %modulation94, align 4
  br label %do.body115

do.body96:                                        ; preds = %do.end66
  %14 = load i32, ptr @debug, align 4
  %and97 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %do.body96.do.end107_crit_edge, label %do.end102

do.body96.do.end107_crit_edge:                    ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end107

do.end102:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  %call104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.327) #11
  br label %do.end107

do.end107:                                        ; preds = %do.end102, %do.body96.do.end107_crit_edge
  %modulation108 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %15 = ptrtoint ptr %modulation108 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %modulation108, align 4
  br label %do.body115

do.end111:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #9
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.344, i32 noundef %conv68) #11
  br label %do.body115

do.body115:                                       ; preds = %do.end111, %do.end107, %do.end93, %do.end80
  %16 = load i32, ptr @debug, align 4
  %and116 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %do.body115.do.end127_crit_edge, label %do.end121

do.body115.do.end127_crit_edge:                   ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end127

do.end121:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #9
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.327, i32 noundef %conv68) #11
  br label %do.end127

do.end127:                                        ; preds = %do.end121, %do.body115.do.end127_crit_edge
  %call128 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 399)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  %17 = load i32, ptr @debug, align 4
  %and226 = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool129.not, label %do.body225, label %do.body131

do.body131:                                       ; preds = %do.end127
  br i1 %tobool227.not, label %do.body131.do.end142_crit_edge, label %do.end137

do.body131.do.end142_crit_edge:                   ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end142

do.end137:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #9
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.350, ptr noundef nonnull @.str.327) #11
  br label %do.end142

do.end142:                                        ; preds = %do.end137, %do.body131.do.end142_crit_edge
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %18 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %code_rate_HP, align 4
  %call143 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 400)
  %conv145 = and i32 %call143, 65535
  %trunc531 = trunc i32 %call143 to i16
  %19 = zext i16 %trunc531 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.425)
  switch i16 %trunc531, label %do.end204 [
    i16 0, label %do.body147
    i16 1, label %do.body160
    i16 2, label %do.body174
    i16 4, label %do.body188
  ]

do.body147:                                       ; preds = %do.end142
  %20 = load i32, ptr @debug, align 4
  %and148 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %do.body147.do.end158_crit_edge, label %do.end153

do.body147.do.end158_crit_edge:                   ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end158

do.end153:                                        ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #9
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.327) #11
  br label %do.end158

do.end158:                                        ; preds = %do.end153, %do.body147.do.end158_crit_edge
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %21 = ptrtoint ptr %hierarchy to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %hierarchy, align 4
  br label %do.body209

do.body160:                                       ; preds = %do.end142
  %22 = load i32, ptr @debug, align 4
  %and161 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %do.body160.do.end171_crit_edge, label %do.end166

do.body160.do.end171_crit_edge:                   ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end171

do.end166:                                        ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #9
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.356, ptr noundef nonnull @.str.327) #11
  br label %do.end171

do.end171:                                        ; preds = %do.end166, %do.body160.do.end171_crit_edge
  %hierarchy172 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %23 = ptrtoint ptr %hierarchy172 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %hierarchy172, align 4
  br label %do.body209

do.body174:                                       ; preds = %do.end142
  %24 = load i32, ptr @debug, align 4
  %and175 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %tobool176.not = icmp eq i32 %and175, 0
  br i1 %tobool176.not, label %do.body174.do.end185_crit_edge, label %do.end180

do.body174.do.end185_crit_edge:                   ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end185

do.end180:                                        ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #9
  %call182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.359, ptr noundef nonnull @.str.327) #11
  br label %do.end185

do.end185:                                        ; preds = %do.end180, %do.body174.do.end185_crit_edge
  %hierarchy186 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %25 = ptrtoint ptr %hierarchy186 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %hierarchy186, align 4
  br label %do.body209

do.body188:                                       ; preds = %do.end142
  %26 = load i32, ptr @debug, align 4
  %and189 = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %do.body188.do.end199_crit_edge, label %do.end194

do.body188.do.end199_crit_edge:                   ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end199

do.end194:                                        ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #9
  %call196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.327) #11
  br label %do.end199

do.end199:                                        ; preds = %do.end194, %do.body188.do.end199_crit_edge
  %hierarchy200 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %27 = ptrtoint ptr %hierarchy200 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %hierarchy200, align 4
  br label %do.body209

do.end204:                                        ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #9
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.365, i32 noundef %conv145) #11
  br label %do.body209

do.body209:                                       ; preds = %do.end204, %do.end199, %do.end185, %do.end171, %do.end158
  %28 = load i32, ptr @debug, align 4
  %and210 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %tobool211.not = icmp eq i32 %and210, 0
  br i1 %tobool211.not, label %do.body209.if.end242_crit_edge, label %do.end215

do.body209.if.end242_crit_edge:                   ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242

do.end215:                                        ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #9
  %call218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.327, i32 noundef %conv145) #11
  br label %if.end242

do.body225:                                       ; preds = %do.end127
  br i1 %tobool227.not, label %do.body225.do.end236_crit_edge, label %do.end231

do.body225.do.end236_crit_edge:                   ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end236

do.end231:                                        ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #9
  %call233 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.370, ptr noundef nonnull @.str.327) #11
  br label %do.end236

do.end236:                                        ; preds = %do.end231, %do.body225.do.end236_crit_edge
  %code_rate_HP237 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %code_rate_LP238 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %29 = ptrtoint ptr %code_rate_LP238 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %code_rate_LP238, align 4
  %hierarchy239 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %30 = ptrtoint ptr %hierarchy239 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %hierarchy239, align 4
  br label %if.end242

if.end242:                                        ; preds = %do.end236, %do.end215, %do.body209.if.end242_crit_edge
  %.sink = phi i16 [ 401, %do.end236 ], [ 402, %do.end215 ], [ 402, %do.body209.if.end242_crit_edge ]
  %cr.0 = phi ptr [ %code_rate_HP237, %do.end236 ], [ %code_rate_LP, %do.end215 ], [ %code_rate_LP, %do.body209.if.end242_crit_edge ]
  %call240 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext %.sink)
  %conv243 = and i32 %call240, 65535
  %trunc528 = trunc i32 %call240 to i16
  %31 = zext i16 %trunc528 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.426)
  switch i16 %trunc528, label %do.end312 [
    i16 1, label %do.body245
    i16 2, label %do.body258
    i16 3, label %do.body271
    i16 5, label %do.body284
    i16 7, label %do.body297
  ]

do.body245:                                       ; preds = %if.end242
  %32 = load i32, ptr @debug, align 4
  %and246 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp eq i32 %and246, 0
  br i1 %tobool247.not, label %do.body245.do.end256_crit_edge, label %do.end251

do.body245.do.end256_crit_edge:                   ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end256

do.end251:                                        ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #9
  %call253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.373, ptr noundef nonnull @.str.327) #11
  br label %do.end256

do.end256:                                        ; preds = %do.end251, %do.body245.do.end256_crit_edge
  %33 = ptrtoint ptr %cr.0 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %cr.0, align 4
  br label %do.body317

do.body258:                                       ; preds = %if.end242
  %34 = load i32, ptr @debug, align 4
  %and259 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %tobool260.not = icmp eq i32 %and259, 0
  br i1 %tobool260.not, label %do.body258.do.end269_crit_edge, label %do.end264

do.body258.do.end269_crit_edge:                   ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end269

do.end264:                                        ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #9
  %call266 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.327) #11
  br label %do.end269

do.end269:                                        ; preds = %do.end264, %do.body258.do.end269_crit_edge
  %35 = ptrtoint ptr %cr.0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %cr.0, align 4
  br label %do.body317

do.body271:                                       ; preds = %if.end242
  %36 = load i32, ptr @debug, align 4
  %and272 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and272)
  %tobool273.not = icmp eq i32 %and272, 0
  br i1 %tobool273.not, label %do.body271.do.end282_crit_edge, label %do.end277

do.body271.do.end282_crit_edge:                   ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end282

do.end277:                                        ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #9
  %call279 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.379, ptr noundef nonnull @.str.327) #11
  br label %do.end282

do.end282:                                        ; preds = %do.end277, %do.body271.do.end282_crit_edge
  %37 = ptrtoint ptr %cr.0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %cr.0, align 4
  br label %do.body317

do.body284:                                       ; preds = %if.end242
  %38 = load i32, ptr @debug, align 4
  %and285 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  br i1 %tobool286.not, label %do.body284.do.end295_crit_edge, label %do.end290

do.body284.do.end295_crit_edge:                   ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end295

do.end290:                                        ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #9
  %call292 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.382, ptr noundef nonnull @.str.327) #11
  br label %do.end295

do.end295:                                        ; preds = %do.end290, %do.body284.do.end295_crit_edge
  %39 = ptrtoint ptr %cr.0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 4, ptr %cr.0, align 4
  br label %do.body317

do.body297:                                       ; preds = %if.end242
  %40 = load i32, ptr @debug, align 4
  %and298 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and298)
  %tobool299.not = icmp eq i32 %and298, 0
  br i1 %tobool299.not, label %do.body297.do.end308_crit_edge, label %do.end303

do.body297.do.end308_crit_edge:                   ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end308

do.end303:                                        ; preds = %do.body297
  call void @__sanitizer_cov_trace_pc() #9
  %call305 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.385, ptr noundef nonnull @.str.327) #11
  br label %do.end308

do.end308:                                        ; preds = %do.end303, %do.body297.do.end308_crit_edge
  %41 = ptrtoint ptr %cr.0 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 7, ptr %cr.0, align 4
  br label %do.body317

do.end312:                                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #9
  %call315 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.388, i32 noundef %conv243) #11
  br label %do.body317

do.body317:                                       ; preds = %do.end312, %do.end308, %do.end295, %do.end282, %do.end269, %do.end256
  %42 = load i32, ptr @debug, align 4
  %and318 = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and318)
  %tobool319.not = icmp eq i32 %and318, 0
  br i1 %tobool319.not, label %do.body317.do.end329_crit_edge, label %do.end323

do.body317.do.end329_crit_edge:                   ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end329

do.end323:                                        ; preds = %do.body317
  call void @__sanitizer_cov_trace_pc() #9
  %call326 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.327, i32 noundef %conv243) #11
  br label %do.end329

do.end329:                                        ; preds = %do.end323, %do.body317.do.end329_crit_edge
  %call330 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 403)
  %conv332 = and i32 %call330, 65535
  %trunc529 = trunc i32 %call330 to i16
  %43 = zext i16 %trunc529 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.427)
  switch i16 %trunc529, label %do.end391 [
    i16 0, label %do.body334
    i16 1, label %do.body347
    i16 2, label %do.body361
    i16 3, label %do.body375
  ]

do.body334:                                       ; preds = %do.end329
  %44 = load i32, ptr @debug, align 4
  %and335 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and335)
  %tobool336.not = icmp eq i32 %and335, 0
  br i1 %tobool336.not, label %do.body334.do.end345_crit_edge, label %do.end340

do.body334.do.end345_crit_edge:                   ; preds = %do.body334
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end345

do.end340:                                        ; preds = %do.body334
  call void @__sanitizer_cov_trace_pc() #9
  %call342 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.393, ptr noundef nonnull @.str.327) #11
  br label %do.end345

do.end345:                                        ; preds = %do.end340, %do.body334.do.end345_crit_edge
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %45 = ptrtoint ptr %guard_interval to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %guard_interval, align 4
  br label %do.body396

do.body347:                                       ; preds = %do.end329
  %46 = load i32, ptr @debug, align 4
  %and348 = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and348)
  %tobool349.not = icmp eq i32 %and348, 0
  br i1 %tobool349.not, label %do.body347.do.end358_crit_edge, label %do.end353

do.body347.do.end358_crit_edge:                   ; preds = %do.body347
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end358

do.end353:                                        ; preds = %do.body347
  call void @__sanitizer_cov_trace_pc() #9
  %call355 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.327) #11
  br label %do.end358

do.end358:                                        ; preds = %do.end353, %do.body347.do.end358_crit_edge
  %guard_interval359 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %47 = ptrtoint ptr %guard_interval359 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %guard_interval359, align 4
  br label %do.body396

do.body361:                                       ; preds = %do.end329
  %48 = load i32, ptr @debug, align 4
  %and362 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and362)
  %tobool363.not = icmp eq i32 %and362, 0
  br i1 %tobool363.not, label %do.body361.do.end372_crit_edge, label %do.end367

do.body361.do.end372_crit_edge:                   ; preds = %do.body361
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end372

do.end367:                                        ; preds = %do.body361
  call void @__sanitizer_cov_trace_pc() #9
  %call369 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.399, ptr noundef nonnull @.str.327) #11
  br label %do.end372

do.end372:                                        ; preds = %do.end367, %do.body361.do.end372_crit_edge
  %guard_interval373 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %49 = ptrtoint ptr %guard_interval373 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %guard_interval373, align 4
  br label %do.body396

do.body375:                                       ; preds = %do.end329
  %50 = load i32, ptr @debug, align 4
  %and376 = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and376)
  %tobool377.not = icmp eq i32 %and376, 0
  br i1 %tobool377.not, label %do.body375.do.end386_crit_edge, label %do.end381

do.body375.do.end386_crit_edge:                   ; preds = %do.body375
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end386

do.end381:                                        ; preds = %do.body375
  call void @__sanitizer_cov_trace_pc() #9
  %call383 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.402, ptr noundef nonnull @.str.327) #11
  br label %do.end386

do.end386:                                        ; preds = %do.end381, %do.body375.do.end386_crit_edge
  %guard_interval387 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %51 = ptrtoint ptr %guard_interval387 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3, ptr %guard_interval387, align 4
  br label %do.body396

do.end391:                                        ; preds = %do.end329
  call void @__sanitizer_cov_trace_pc() #9
  %call394 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.405, i32 noundef %conv332) #11
  br label %do.body396

do.body396:                                       ; preds = %do.end391, %do.end386, %do.end372, %do.end358, %do.end345
  %52 = load i32, ptr @debug, align 4
  %and397 = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and397)
  %tobool398.not = icmp eq i32 %and397, 0
  br i1 %tobool398.not, label %do.body396.do.end408_crit_edge, label %do.end402

do.body396.do.end408_crit_edge:                   ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end408

do.end402:                                        ; preds = %do.body396
  call void @__sanitizer_cov_trace_pc() #9
  %call405 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.327, i32 noundef %conv332) #11
  br label %do.end408

do.end408:                                        ; preds = %do.end402, %do.body396.do.end408_crit_edge
  %call409 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 404)
  %conv411 = and i32 %call409, 65535
  %trunc530 = trunc i32 %call409 to i16
  %53 = zext i16 %trunc530 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.428)
  switch i16 %trunc530, label %do.end442 [
    i16 0, label %do.body413
    i16 1, label %do.body426
  ]

do.body413:                                       ; preds = %do.end408
  %54 = load i32, ptr @debug, align 4
  %and414 = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and414)
  %tobool415.not = icmp eq i32 %and414, 0
  br i1 %tobool415.not, label %do.body413.do.end424_crit_edge, label %do.end419

do.body413.do.end424_crit_edge:                   ; preds = %do.body413
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end424

do.end419:                                        ; preds = %do.body413
  call void @__sanitizer_cov_trace_pc() #9
  %call421 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.410, ptr noundef nonnull @.str.327) #11
  br label %do.end424

do.end424:                                        ; preds = %do.end419, %do.body413.do.end424_crit_edge
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %55 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %transmission_mode, align 4
  br label %do.body447

do.body426:                                       ; preds = %do.end408
  %56 = load i32, ptr @debug, align 4
  %and427 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and427)
  %tobool428.not = icmp eq i32 %and427, 0
  br i1 %tobool428.not, label %do.body426.do.end437_crit_edge, label %do.end432

do.body426.do.end437_crit_edge:                   ; preds = %do.body426
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end437

do.end432:                                        ; preds = %do.body426
  call void @__sanitizer_cov_trace_pc() #9
  %call434 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.413, ptr noundef nonnull @.str.327) #11
  br label %do.end437

do.end437:                                        ; preds = %do.end432, %do.body426.do.end437_crit_edge
  %transmission_mode438 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %57 = ptrtoint ptr %transmission_mode438 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %transmission_mode438, align 4
  br label %do.body447

do.end442:                                        ; preds = %do.end408
  call void @__sanitizer_cov_trace_pc() #9
  %call445 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.416, i32 noundef %conv411) #11
  br label %do.body447

do.body447:                                       ; preds = %do.end442, %do.end437, %do.end424
  %58 = load i32, ptr @debug, align 4
  %and448 = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and448)
  %tobool449.not = icmp eq i32 %and448, 0
  br i1 %tobool449.not, label %do.body447.cleanup_crit_edge, label %do.end453

do.body447.cleanup_crit_edge:                     ; preds = %do.body447
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end453:                                        ; preds = %do.body447
  call void @__sanitizer_cov_trace_pc() #9
  %call456 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.327, i32 noundef %conv411) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end453, %do.body447.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mb_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %stat) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %stat, align 4
  %call = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 324)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stat, align 4
  %or = or i32 %4, 1
  store i32 %or, ptr %stat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 355)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stat, align 4
  %or4 = or i32 %6, 2
  store i32 %or4, ptr %stat, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %call6 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 421)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stat, align 4
  %or9 = or i32 %8, 4
  store i32 %or9, ptr %stat, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %call11 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 423)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.do.body_crit_edge, label %if.then13

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stat, align 4
  %or14 = or i32 %10, 24
  store i32 %or14, ptr %stat, align 4
  br label %do.body

do.body:                                          ; preds = %if.then13, %if.end10.do.body_crit_edge
  %11 = load i32, ptr @debug, align 4
  %and = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %do.body.do.body23_crit_edge, label %do.end

do.body.do.body23_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stat, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.420, ptr noundef nonnull @.str.421, i32 noundef %13) #11
  br label %do.body23

do.body23:                                        ; preds = %do.end, %do.body.do.body23_crit_edge
  %14 = load i32, ptr @debug, align 4
  %and24 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.do.end43_crit_edge, label %do.end29

do.body23.do.end43_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 394)
  %call32 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 398)
  %call33 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 399)
  %call34 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 400)
  %call35 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 401)
  %call36 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 402)
  %call37 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 403)
  %call38 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 404)
  %call39 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 406)
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.423, ptr noundef nonnull @.str.421, i32 noundef %call31, i32 noundef %call32, i32 noundef %call33, i32 noundef %call34, i32 noundef %call35, i32 noundef %call36, i32 noundef %call37, i32 noundef %call38, i32 noundef %call39) #11
  br label %do.end43

do.end43:                                         ; preds = %do.end29, %do.body23.do.end43_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mb_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 414)
  %shl = shl i32 %call, 16
  %call1 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 415)
  %or = or i32 %shl, %call1
  %2 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mb_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 380)
  %mul = mul i32 %call, 65535
  %div = sdiv i32 %mul, 368
  %conv = trunc i32 %div to i16
  %2 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mb_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 380)
  %call1 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 372)
  %and = shl i32 %call1, 16
  %shl = and i32 %and, 16711680
  %call2 = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 373)
  %or = or i32 %shl, %call2
  %2 = tail call i32 @llvm.smax.i32(i32 %or, i32 1)
  %sext = shl i32 %call, 16
  %shl4 = ashr exact i32 %sext, 8
  %div = sdiv i32 %shl4, %2
  %conv6 = trunc i32 %div to i16
  %3 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv6, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dib3000mb_read_unc_blocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %unc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 417)
  %2 = ptrtoint ptr %unc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %unc, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dib3000mb_set_frontend(ptr noundef %fe, i32 noundef %tuner) unnamed_addr #0 align 64 {
entry:
  %b.i1950 = alloca [4 x i8], align 4
  %msg.i1951 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1935 = alloca [4 x i8], align 1
  %msg.i1936 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1920 = alloca [4 x i8], align 1
  %msg.i1921 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1899 = alloca [4 x i8], align 1
  %msg.i1900 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1884 = alloca [4 x i8], align 4
  %msg.i1885 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1869 = alloca [4 x i8], align 1
  %msg.i1870 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1854 = alloca [4 x i8], align 1
  %msg.i1855 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1833 = alloca [4 x i8], align 1
  %msg.i1834 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1818 = alloca [4 x i8], align 1
  %msg.i1819 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1803 = alloca [4 x i8], align 1
  %msg.i1804 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1788 = alloca [4 x i8], align 1
  %msg.i1789 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1773 = alloca [4 x i8], align 1
  %msg.i1774 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1758 = alloca [4 x i8], align 1
  %msg.i1759 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1743 = alloca [4 x i8], align 1
  %msg.i1744 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1728 = alloca [4 x i8], align 1
  %msg.i1729 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1710 = alloca [4 x i8], align 1
  %msg.i1711 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1692 = alloca [4 x i8], align 1
  %msg.i1693 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1677 = alloca [4 x i8], align 1
  %msg.i1678 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1662 = alloca [4 x i8], align 1
  %msg.i1663 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1647 = alloca [4 x i8], align 1
  %msg.i1648 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1632 = alloca [4 x i8], align 1
  %msg.i1633 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1617 = alloca [4 x i8], align 1
  %msg.i1618 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1602 = alloca [4 x i8], align 1
  %msg.i1603 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1587 = alloca [4 x i8], align 1
  %msg.i1588 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1572 = alloca [4 x i8], align 1
  %msg.i1573 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1557 = alloca [4 x i8], align 1
  %msg.i1558 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1542 = alloca [4 x i8], align 1
  %msg.i1543 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1527 = alloca [4 x i8], align 1
  %msg.i1528 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1512 = alloca [4 x i8], align 1
  %msg.i1513 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1497 = alloca [4 x i8], align 1
  %msg.i1498 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1482 = alloca [4 x i8], align 1
  %msg.i1483 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1467 = alloca [4 x i8], align 1
  %msg.i1468 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1452 = alloca [4 x i8], align 1
  %msg.i1453 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1437 = alloca [4 x i8], align 1
  %msg.i1438 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1422 = alloca [4 x i8], align 1
  %msg.i1423 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1407 = alloca [4 x i8], align 1
  %msg.i1408 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1392 = alloca [4 x i8], align 1
  %msg.i1393 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1377 = alloca [4 x i8], align 1
  %msg.i1378 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1362 = alloca [4 x i8], align 1
  %msg.i1363 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1347 = alloca [4 x i8], align 1
  %msg.i1348 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1332 = alloca [4 x i8], align 1
  %msg.i1333 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1311 = alloca [4 x i8], align 1
  %msg.i1312 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1290 = alloca [4 x i8], align 1
  %msg.i1291 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1269 = alloca [4 x i8], align 1
  %msg.i1270 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1248 = alloca [4 x i8], align 1
  %msg.i1249 = alloca [1 x %struct.i2c_msg], align 4
  %b.i1227 = alloca [4 x i8], align 1
  %msg.i1228 = alloca [1 x %struct.i2c_msg], align 4
  %b.i = alloca [4 x i8], align 1
  %msg.i = alloca [1 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tuner)
  %tobool.not = icmp eq i32 %tuner, 0
  br i1 %tobool.not, label %entry.if.end170_crit_edge, label %land.lhs.true

entry.if.end170_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end170

land.lhs.true:                                    ; preds = %entry
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %2 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_params, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end170_crit_edge, label %if.then

land.lhs.true.if.end170_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end170

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %3(ptr noundef %fe) #7
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.then.if.end_crit_edge, label %if.then7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 %5(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %6 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bandwidth_hz, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.429)
  switch i32 %7, label %do.end155 [
    i32 8000000, label %for.cond.preheader
    i32 7000000, label %for.cond48.preheader
    i32 6000000, label %for.cond101.preheader
    i32 0, label %if.end.cleanup1069_crit_edge
  ]

if.end.cleanup1069_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup1069

for.cond101.preheader:                            ; preds = %if.end
  %9 = getelementptr inbounds [4 x i8], ptr %b.i1290, i32 0, i32 1
  %10 = getelementptr inbounds [4 x i8], ptr %b.i1290, i32 0, i32 2
  %11 = getelementptr inbounds [4 x i8], ptr %b.i1290, i32 0, i32 3
  %12 = getelementptr inbounds i8, ptr %msg.i1291, i32 4
  %config.i1296 = getelementptr inbounds %struct.dib3000_state, ptr %1, i32 0, i32 1
  %flags.i1298 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1291, i32 0, i32 1
  %buf.i1300 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1291, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1290) #7
  %13 = ptrtoint ptr %b.i1290 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %b.i1290, align 1
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %9, align 1
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %10, align 1
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 126, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1291) #7
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 327679, ptr %12, align 4
  %18 = ptrtoint ptr %config.i1296 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %config.i1296, align 4
  %conv15.i1297 = zext i8 %19 to i16
  %20 = ptrtoint ptr %msg.i1291 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv15.i1297, ptr %msg.i1291, align 4
  %21 = ptrtoint ptr %flags.i1298 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i1298, align 2
  %22 = ptrtoint ptr %buf.i1300 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %b.i1290, ptr %buf.i1300, align 4
  %23 = load i32, ptr @debug, align 4
  %and16.i1301 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1301)
  %tobool.not.i1302 = icmp eq i32 %and16.i1301, 0
  br i1 %tobool.not.i1302, label %for.cond101.preheader.dib3000_write_reg.exit1310_crit_edge, label %do.end.i1306

for.cond101.preheader.dib3000_write_reg.exit1310_crit_edge: ; preds = %for.cond101.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1310

for.cond48.preheader:                             ; preds = %if.end
  %24 = getelementptr inbounds [4 x i8], ptr %b.i1248, i32 0, i32 1
  %25 = getelementptr inbounds [4 x i8], ptr %b.i1248, i32 0, i32 2
  %26 = getelementptr inbounds [4 x i8], ptr %b.i1248, i32 0, i32 3
  %27 = getelementptr inbounds i8, ptr %msg.i1249, i32 4
  %config.i1254 = getelementptr inbounds %struct.dib3000_state, ptr %1, i32 0, i32 1
  %flags.i1256 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1249, i32 0, i32 1
  %buf.i1258 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1249, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1248) #7
  %28 = ptrtoint ptr %b.i1248 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %b.i1248, align 1
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %24, align 1
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %25, align 1
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -109, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1249) #7
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 327679, ptr %27, align 4
  %33 = ptrtoint ptr %config.i1254 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %config.i1254, align 4
  %conv15.i1255 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i1249 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv15.i1255, ptr %msg.i1249, align 4
  %36 = ptrtoint ptr %flags.i1256 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i1256, align 2
  %37 = ptrtoint ptr %buf.i1258 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %b.i1248, ptr %buf.i1258, align 4
  %38 = load i32, ptr @debug, align 4
  %and16.i1259 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1259)
  %tobool.not.i1260 = icmp eq i32 %and16.i1259, 0
  br i1 %tobool.not.i1260, label %for.cond48.preheader.dib3000_write_reg.exit1268_crit_edge, label %do.end.i1264

for.cond48.preheader.dib3000_write_reg.exit1268_crit_edge: ; preds = %for.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1268

for.cond.preheader:                               ; preds = %if.end
  %39 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 1
  %40 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 2
  %41 = getelementptr inbounds [4 x i8], ptr %b.i, i32 0, i32 3
  %42 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %config.i = getelementptr inbounds %struct.dib3000_state, ptr %1, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i) #7
  %43 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %b.i, align 1
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 8, ptr %39, align 1
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %40, align 1
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -88, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 327679, ptr %42, align 4
  %48 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %config.i, align 4
  %conv15.i = zext i8 %49 to i16
  %50 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv15.i, ptr %msg.i, align 4
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i, align 2
  %52 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %b.i, ptr %buf.i, align 4
  %53 = load i32, ptr @debug, align 4
  %and16.i = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.dib3000_write_reg.exit_crit_edge, label %do.end.i

for.cond.preheader.dib3000_write_reg.exit_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit

for.cond:                                         ; preds = %dib3000_write_reg.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i) #7
  %54 = ptrtoint ptr %b.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %b.i, align 1
  %55 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 9, ptr %39, align 1
  %56 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -2, ptr %40, align 1
  %57 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -116, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %58 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 327679, ptr %42, align 4
  %59 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %config.i, align 4
  %conv15.i.1 = zext i8 %60 to i16
  %61 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv15.i.1, ptr %msg.i, align 4
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i, align 2
  %63 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %b.i, ptr %buf.i, align 4
  %64 = load i32, ptr @debug, align 4
  %and16.i.1 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.1)
  %tobool.not.i.1 = icmp eq i32 %and16.i.1, 0
  br i1 %tobool.not.i.1, label %for.cond.dib3000_write_reg.exit.1_crit_edge, label %do.end.i.1

for.cond.dib3000_write_reg.exit.1_crit_edge:      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit.1

do.end.i.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 9, i32 noundef 9, i32 noundef 65164, i32 noundef 65164) #11
  br label %dib3000_write_reg.exit.1

dib3000_write_reg.exit.1:                         ; preds = %do.end.i.1, %for.cond.dib3000_write_reg.exit.1_crit_edge
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %call25.i.1 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i.1)
  %cmp.not.i.1 = icmp eq i32 %call25.i.1, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i) #7
  br i1 %cmp.not.i.1, label %for.cond.1, label %dib3000_write_reg.exit.1.do.end_crit_edge

dib3000_write_reg.exit.1.do.end_crit_edge:        ; preds = %dib3000_write_reg.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.cond.1:                                       ; preds = %dib3000_write_reg.exit.1
  %67 = getelementptr inbounds [4 x i8], ptr %b.i1227, i32 0, i32 1
  %68 = getelementptr inbounds [4 x i8], ptr %b.i1227, i32 0, i32 2
  %69 = getelementptr inbounds [4 x i8], ptr %b.i1227, i32 0, i32 3
  %70 = getelementptr inbounds i8, ptr %msg.i1228, i32 4
  %flags.i1235 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1228, i32 0, i32 1
  %buf.i1237 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1228, i32 0, i32 3
  br label %for.body24

do.end.i:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 8, i32 noundef 8, i32 noundef 168, i32 noundef 168) #11
  br label %dib3000_write_reg.exit

dib3000_write_reg.exit:                           ; preds = %do.end.i, %for.cond.preheader.dib3000_write_reg.exit_crit_edge
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %call25.i = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i)
  %cmp.not.i = icmp eq i32 %call25.i, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i) #7
  br i1 %cmp.not.i, label %for.cond, label %dib3000_write_reg.exit.do.end_crit_edge

dib3000_write_reg.exit.do.end_crit_edge:          ; preds = %dib3000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %dib3000_write_reg.exit.do.end_crit_edge, %dib3000_write_reg.exit.1.do.end_crit_edge
  %.lcssa2031 = phi i32 [ 8, %dib3000_write_reg.exit.do.end_crit_edge ], [ 9, %dib3000_write_reg.exit.1.do.end_crit_edge ]
  %.lcssa2029 = phi i32 [ 168, %dib3000_write_reg.exit.do.end_crit_edge ], [ 65164, %dib3000_write_reg.exit.1.do.end_crit_edge ]
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %.lcssa2029, i32 noundef %.lcssa2031) #11
  br label %cleanup1069

for.cond21:                                       ; preds = %dib3000_write_reg.exit1247
  %inc41 = add nuw nsw i32 %i20.02002, 1
  %exitcond2050.not = icmp eq i32 %inc41, 13
  br i1 %exitcond2050.not, label %for.cond21.do.body158_crit_edge, label %for.cond21.for.body24_crit_edge

for.cond21.for.body24_crit_edge:                  ; preds = %for.cond21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

for.cond21.do.body158_crit_edge:                  ; preds = %for.cond21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body158

for.body24:                                       ; preds = %for.cond21.for.body24_crit_edge, %for.cond.1
  %i20.02002 = phi i32 [ 0, %for.cond.1 ], [ %inc41, %for.cond21.for.body24_crit_edge ]
  %arrayidx25 = getelementptr [13 x i16], ptr @dib3000mb_reg_bandwidth, i32 0, i32 %i20.02002
  %73 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %arrayidx25, align 2
  %arrayidx26 = getelementptr [13 x i16], ptr @dib3000mb_bandwidth_8mhz, i32 0, i32 %i20.02002
  %75 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx26, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1227) #7
  %77 = lshr i16 %74, 8
  %conv1.i1229 = trunc i16 %77 to i8
  %78 = ptrtoint ptr %b.i1227 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv1.i1229, ptr %b.i1227, align 1
  %conv4.i1230 = trunc i16 %74 to i8
  %79 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv4.i1230, ptr %67, align 1
  %80 = lshr i16 %76, 8
  %conv9.i1231 = trunc i16 %80 to i8
  %81 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv9.i1231, ptr %68, align 1
  %conv13.i1232 = trunc i16 %76 to i8
  %82 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv13.i1232, ptr %69, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1228) #7
  %83 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 327679, ptr %70, align 4
  %84 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %config.i, align 4
  %conv15.i1234 = zext i8 %85 to i16
  %86 = ptrtoint ptr %msg.i1228 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv15.i1234, ptr %msg.i1228, align 4
  %87 = ptrtoint ptr %flags.i1235 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i1235, align 2
  %88 = ptrtoint ptr %buf.i1237 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %b.i1227, ptr %buf.i1237, align 4
  %89 = load i32, ptr @debug, align 4
  %and16.i1238 = and i32 %89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1238)
  %tobool.not.i1239 = icmp eq i32 %and16.i1238, 0
  br i1 %tobool.not.i1239, label %for.body24.dib3000_write_reg.exit1247_crit_edge, label %do.end.i1243

for.body24.dib3000_write_reg.exit1247_crit_edge:  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1247

do.end.i1243:                                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i1240 = zext i16 %76 to i32
  %conv.i1241 = zext i16 %74 to i32
  %call.i1242 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv.i1241, i32 noundef %conv.i1241, i32 noundef %conv6.i1240, i32 noundef %conv6.i1240) #11
  br label %dib3000_write_reg.exit1247

dib3000_write_reg.exit1247:                       ; preds = %do.end.i1243, %for.body24.dib3000_write_reg.exit1247_crit_edge
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %call25.i1244 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %msg.i1228, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1244)
  %cmp.not.i1245 = icmp eq i32 %call25.i1244, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1228) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1227) #7
  br i1 %cmp.not.i1245, label %for.cond21, label %do.end32

do.end32:                                         ; preds = %dib3000_write_reg.exit1247
  call void @__sanitizer_cov_trace_pc() #9
  %conv35 = zext i16 %76 to i32
  %conv37 = zext i16 %74 to i32
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv35, i32 noundef %conv37) #11
  br label %cleanup1069

for.cond48:                                       ; preds = %dib3000_write_reg.exit1268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1248) #7
  %92 = ptrtoint ptr %b.i1248 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %b.i1248, align 1
  %93 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 9, ptr %24, align 1
  %94 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -34, ptr %25, align 1
  %95 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -69, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1249) #7
  %96 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 327679, ptr %27, align 4
  %97 = ptrtoint ptr %config.i1254 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %config.i1254, align 4
  %conv15.i1255.1 = zext i8 %98 to i16
  %99 = ptrtoint ptr %msg.i1249 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv15.i1255.1, ptr %msg.i1249, align 4
  %100 = ptrtoint ptr %flags.i1256 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %flags.i1256, align 2
  %101 = ptrtoint ptr %buf.i1258 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %b.i1248, ptr %buf.i1258, align 4
  %102 = load i32, ptr @debug, align 4
  %and16.i1259.1 = and i32 %102, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1259.1)
  %tobool.not.i1260.1 = icmp eq i32 %and16.i1259.1, 0
  br i1 %tobool.not.i1260.1, label %for.cond48.dib3000_write_reg.exit1268.1_crit_edge, label %do.end.i1264.1

for.cond48.dib3000_write_reg.exit1268.1_crit_edge: ; preds = %for.cond48
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1268.1

do.end.i1264.1:                                   ; preds = %for.cond48
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1263.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 9, i32 noundef 9, i32 noundef 57019, i32 noundef 57019) #11
  br label %dib3000_write_reg.exit1268.1

dib3000_write_reg.exit1268.1:                     ; preds = %do.end.i1264.1, %for.cond48.dib3000_write_reg.exit1268.1_crit_edge
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  %call25.i1265.1 = call i32 @i2c_transfer(ptr noundef %104, ptr noundef nonnull %msg.i1249, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1265.1)
  %cmp.not.i1266.1 = icmp eq i32 %call25.i1265.1, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1249) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1248) #7
  br i1 %cmp.not.i1266.1, label %for.cond48.1, label %dib3000_write_reg.exit1268.1.do.end59_crit_edge

dib3000_write_reg.exit1268.1.do.end59_crit_edge:  ; preds = %dib3000_write_reg.exit1268.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

for.cond48.1:                                     ; preds = %dib3000_write_reg.exit1268.1
  %105 = getelementptr inbounds [4 x i8], ptr %b.i1269, i32 0, i32 1
  %106 = getelementptr inbounds [4 x i8], ptr %b.i1269, i32 0, i32 2
  %107 = getelementptr inbounds [4 x i8], ptr %b.i1269, i32 0, i32 3
  %108 = getelementptr inbounds i8, ptr %msg.i1270, i32 4
  %flags.i1277 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1270, i32 0, i32 1
  %buf.i1279 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1270, i32 0, i32 3
  br label %for.body77

do.end.i1264:                                     ; preds = %for.cond48.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 8, i32 noundef 8, i32 noundef 147, i32 noundef 147) #11
  br label %dib3000_write_reg.exit1268

dib3000_write_reg.exit1268:                       ; preds = %do.end.i1264, %for.cond48.preheader.dib3000_write_reg.exit1268_crit_edge
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 4
  %call25.i1265 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %msg.i1249, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1265)
  %cmp.not.i1266 = icmp eq i32 %call25.i1265, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1249) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1248) #7
  br i1 %cmp.not.i1266, label %for.cond48, label %dib3000_write_reg.exit1268.do.end59_crit_edge

dib3000_write_reg.exit1268.do.end59_crit_edge:    ; preds = %dib3000_write_reg.exit1268
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end59

do.end59:                                         ; preds = %dib3000_write_reg.exit1268.do.end59_crit_edge, %dib3000_write_reg.exit1268.1.do.end59_crit_edge
  %.lcssa2039 = phi i32 [ 8, %dib3000_write_reg.exit1268.do.end59_crit_edge ], [ 9, %dib3000_write_reg.exit1268.1.do.end59_crit_edge ]
  %.lcssa2037 = phi i32 [ 147, %dib3000_write_reg.exit1268.do.end59_crit_edge ], [ 57019, %dib3000_write_reg.exit1268.1.do.end59_crit_edge ]
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %.lcssa2037, i32 noundef %.lcssa2039) #11
  br label %cleanup1069

for.cond74:                                       ; preds = %dib3000_write_reg.exit1289
  %inc94 = add nuw nsw i32 %i73.02000, 1
  %exitcond2049.not = icmp eq i32 %inc94, 13
  br i1 %exitcond2049.not, label %for.cond74.do.body158_crit_edge, label %for.cond74.for.body77_crit_edge

for.cond74.for.body77_crit_edge:                  ; preds = %for.cond74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body77

for.cond74.do.body158_crit_edge:                  ; preds = %for.cond74
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body158

for.body77:                                       ; preds = %for.cond74.for.body77_crit_edge, %for.cond48.1
  %i73.02000 = phi i32 [ 0, %for.cond48.1 ], [ %inc94, %for.cond74.for.body77_crit_edge ]
  %arrayidx78 = getelementptr [13 x i16], ptr @dib3000mb_reg_bandwidth, i32 0, i32 %i73.02000
  %111 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx78, align 2
  %arrayidx79 = getelementptr [13 x i16], ptr @dib3000mb_bandwidth_7mhz, i32 0, i32 %i73.02000
  %113 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %arrayidx79, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1269) #7
  %115 = lshr i16 %112, 8
  %conv1.i1271 = trunc i16 %115 to i8
  %116 = ptrtoint ptr %b.i1269 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv1.i1271, ptr %b.i1269, align 1
  %conv4.i1272 = trunc i16 %112 to i8
  %117 = ptrtoint ptr %105 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv4.i1272, ptr %105, align 1
  %118 = lshr i16 %114, 8
  %conv9.i1273 = trunc i16 %118 to i8
  %119 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv9.i1273, ptr %106, align 1
  %conv13.i1274 = trunc i16 %114 to i8
  %120 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv13.i1274, ptr %107, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1270) #7
  %121 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 327679, ptr %108, align 4
  %122 = ptrtoint ptr %config.i1254 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %config.i1254, align 4
  %conv15.i1276 = zext i8 %123 to i16
  %124 = ptrtoint ptr %msg.i1270 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv15.i1276, ptr %msg.i1270, align 4
  %125 = ptrtoint ptr %flags.i1277 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %flags.i1277, align 2
  %126 = ptrtoint ptr %buf.i1279 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %b.i1269, ptr %buf.i1279, align 4
  %127 = load i32, ptr @debug, align 4
  %and16.i1280 = and i32 %127, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1280)
  %tobool.not.i1281 = icmp eq i32 %and16.i1280, 0
  br i1 %tobool.not.i1281, label %for.body77.dib3000_write_reg.exit1289_crit_edge, label %do.end.i1285

for.body77.dib3000_write_reg.exit1289_crit_edge:  ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1289

do.end.i1285:                                     ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i1282 = zext i16 %114 to i32
  %conv.i1283 = zext i16 %112 to i32
  %call.i1284 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv.i1283, i32 noundef %conv.i1283, i32 noundef %conv6.i1282, i32 noundef %conv6.i1282) #11
  br label %dib3000_write_reg.exit1289

dib3000_write_reg.exit1289:                       ; preds = %do.end.i1285, %for.body77.dib3000_write_reg.exit1289_crit_edge
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 4
  %call25.i1286 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %msg.i1270, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1286)
  %cmp.not.i1287 = icmp eq i32 %call25.i1286, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1270) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1269) #7
  br i1 %cmp.not.i1287, label %for.cond74, label %do.end85

do.end85:                                         ; preds = %dib3000_write_reg.exit1289
  call void @__sanitizer_cov_trace_pc() #9
  %conv88 = zext i16 %114 to i32
  %conv90 = zext i16 %112 to i32
  %call91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv88, i32 noundef %conv90) #11
  br label %cleanup1069

for.cond101:                                      ; preds = %dib3000_write_reg.exit1310
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1290) #7
  %130 = ptrtoint ptr %b.i1290 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %b.i1290, align 1
  %131 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 9, ptr %9, align 1
  %132 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -66, ptr %10, align 1
  %133 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 -23, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1291) #7
  %134 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 327679, ptr %12, align 4
  %135 = ptrtoint ptr %config.i1296 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %config.i1296, align 4
  %conv15.i1297.1 = zext i8 %136 to i16
  %137 = ptrtoint ptr %msg.i1291 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv15.i1297.1, ptr %msg.i1291, align 4
  %138 = ptrtoint ptr %flags.i1298 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %flags.i1298, align 2
  %139 = ptrtoint ptr %buf.i1300 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %b.i1290, ptr %buf.i1300, align 4
  %140 = load i32, ptr @debug, align 4
  %and16.i1301.1 = and i32 %140, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1301.1)
  %tobool.not.i1302.1 = icmp eq i32 %and16.i1301.1, 0
  br i1 %tobool.not.i1302.1, label %for.cond101.dib3000_write_reg.exit1310.1_crit_edge, label %do.end.i1306.1

for.cond101.dib3000_write_reg.exit1310.1_crit_edge: ; preds = %for.cond101
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1310.1

do.end.i1306.1:                                   ; preds = %for.cond101
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1305.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 9, i32 noundef 9, i32 noundef 48873, i32 noundef 48873) #11
  br label %dib3000_write_reg.exit1310.1

dib3000_write_reg.exit1310.1:                     ; preds = %do.end.i1306.1, %for.cond101.dib3000_write_reg.exit1310.1_crit_edge
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 4
  %call25.i1307.1 = call i32 @i2c_transfer(ptr noundef %142, ptr noundef nonnull %msg.i1291, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1307.1)
  %cmp.not.i1308.1 = icmp eq i32 %call25.i1307.1, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1291) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1290) #7
  br i1 %cmp.not.i1308.1, label %for.cond101.1, label %dib3000_write_reg.exit1310.1.do.end112_crit_edge

dib3000_write_reg.exit1310.1.do.end112_crit_edge: ; preds = %dib3000_write_reg.exit1310.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end112

for.cond101.1:                                    ; preds = %dib3000_write_reg.exit1310.1
  %143 = getelementptr inbounds [4 x i8], ptr %b.i1311, i32 0, i32 1
  %144 = getelementptr inbounds [4 x i8], ptr %b.i1311, i32 0, i32 2
  %145 = getelementptr inbounds [4 x i8], ptr %b.i1311, i32 0, i32 3
  %146 = getelementptr inbounds i8, ptr %msg.i1312, i32 4
  %flags.i1319 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1312, i32 0, i32 1
  %buf.i1321 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1312, i32 0, i32 3
  br label %for.body130

do.end.i1306:                                     ; preds = %for.cond101.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 8, i32 noundef 8, i32 noundef 126, i32 noundef 126) #11
  br label %dib3000_write_reg.exit1310

dib3000_write_reg.exit1310:                       ; preds = %do.end.i1306, %for.cond101.preheader.dib3000_write_reg.exit1310_crit_edge
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %1, align 4
  %call25.i1307 = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %msg.i1291, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1307)
  %cmp.not.i1308 = icmp eq i32 %call25.i1307, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1291) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1290) #7
  br i1 %cmp.not.i1308, label %for.cond101, label %dib3000_write_reg.exit1310.do.end112_crit_edge

dib3000_write_reg.exit1310.do.end112_crit_edge:   ; preds = %dib3000_write_reg.exit1310
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end112

do.end112:                                        ; preds = %dib3000_write_reg.exit1310.do.end112_crit_edge, %dib3000_write_reg.exit1310.1.do.end112_crit_edge
  %.lcssa2047 = phi i32 [ 8, %dib3000_write_reg.exit1310.do.end112_crit_edge ], [ 9, %dib3000_write_reg.exit1310.1.do.end112_crit_edge ]
  %.lcssa2045 = phi i32 [ 126, %dib3000_write_reg.exit1310.do.end112_crit_edge ], [ 48873, %dib3000_write_reg.exit1310.1.do.end112_crit_edge ]
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %.lcssa2045, i32 noundef %.lcssa2047) #11
  br label %cleanup1069

for.cond127:                                      ; preds = %dib3000_write_reg.exit1331
  %inc147 = add nuw nsw i32 %i126.01998, 1
  %exitcond.not = icmp eq i32 %inc147, 13
  br i1 %exitcond.not, label %for.cond127.do.body158_crit_edge, label %for.cond127.for.body130_crit_edge

for.cond127.for.body130_crit_edge:                ; preds = %for.cond127
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body130

for.cond127.do.body158_crit_edge:                 ; preds = %for.cond127
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body158

for.body130:                                      ; preds = %for.cond127.for.body130_crit_edge, %for.cond101.1
  %i126.01998 = phi i32 [ 0, %for.cond101.1 ], [ %inc147, %for.cond127.for.body130_crit_edge ]
  %arrayidx131 = getelementptr [13 x i16], ptr @dib3000mb_reg_bandwidth, i32 0, i32 %i126.01998
  %149 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %arrayidx131, align 2
  %arrayidx132 = getelementptr [13 x i16], ptr @dib3000mb_bandwidth_6mhz, i32 0, i32 %i126.01998
  %151 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %arrayidx132, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1311) #7
  %153 = lshr i16 %150, 8
  %conv1.i1313 = trunc i16 %153 to i8
  %154 = ptrtoint ptr %b.i1311 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv1.i1313, ptr %b.i1311, align 1
  %conv4.i1314 = trunc i16 %150 to i8
  %155 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv4.i1314, ptr %143, align 1
  %156 = lshr i16 %152, 8
  %conv9.i1315 = trunc i16 %156 to i8
  %157 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv9.i1315, ptr %144, align 1
  %conv13.i1316 = trunc i16 %152 to i8
  %158 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv13.i1316, ptr %145, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1312) #7
  %159 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 327679, ptr %146, align 4
  %160 = ptrtoint ptr %config.i1296 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %config.i1296, align 4
  %conv15.i1318 = zext i8 %161 to i16
  %162 = ptrtoint ptr %msg.i1312 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv15.i1318, ptr %msg.i1312, align 4
  %163 = ptrtoint ptr %flags.i1319 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 0, ptr %flags.i1319, align 2
  %164 = ptrtoint ptr %buf.i1321 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %b.i1311, ptr %buf.i1321, align 4
  %165 = load i32, ptr @debug, align 4
  %and16.i1322 = and i32 %165, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1322)
  %tobool.not.i1323 = icmp eq i32 %and16.i1322, 0
  br i1 %tobool.not.i1323, label %for.body130.dib3000_write_reg.exit1331_crit_edge, label %do.end.i1327

for.body130.dib3000_write_reg.exit1331_crit_edge: ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1331

do.end.i1327:                                     ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i1324 = zext i16 %152 to i32
  %conv.i1325 = zext i16 %150 to i32
  %call.i1326 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv.i1325, i32 noundef %conv.i1325, i32 noundef %conv6.i1324, i32 noundef %conv6.i1324) #11
  br label %dib3000_write_reg.exit1331

dib3000_write_reg.exit1331:                       ; preds = %do.end.i1327, %for.body130.dib3000_write_reg.exit1331_crit_edge
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 4
  %call25.i1328 = call i32 @i2c_transfer(ptr noundef %167, ptr noundef nonnull %msg.i1312, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1328)
  %cmp.not.i1329 = icmp eq i32 %call25.i1328, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1312) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1311) #7
  br i1 %cmp.not.i1329, label %for.cond127, label %do.end138

do.end138:                                        ; preds = %dib3000_write_reg.exit1331
  call void @__sanitizer_cov_trace_pc() #9
  %conv141 = zext i16 %152 to i32
  %conv143 = zext i16 %150 to i32
  %call144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv141, i32 noundef %conv143) #11
  br label %cleanup1069

do.end155:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137) #11
  br label %cleanup1069

do.body158:                                       ; preds = %for.cond127.do.body158_crit_edge, %for.cond74.do.body158_crit_edge, %for.cond21.do.body158_crit_edge
  %168 = load i32, ptr @debug, align 4
  %and = and i32 %168, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool159.not = icmp eq i32 %and, 0
  br i1 %tobool159.not, label %do.body158.if.end170_crit_edge, label %do.end163

do.body158.if.end170_crit_edge:                   ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end170

do.end163:                                        ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #9
  %169 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %bandwidth_hz, align 4
  %div = udiv i32 %170, 1000000
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.125, i32 noundef %div) #11
  br label %if.end170

if.end170:                                        ; preds = %do.end163, %do.body158.if.end170_crit_edge, %land.lhs.true.if.end170_crit_edge, %entry.if.end170_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1332) #7
  %171 = getelementptr inbounds [4 x i8], ptr %b.i1332, i32 0, i32 1
  %172 = getelementptr inbounds [4 x i8], ptr %b.i1332, i32 0, i32 2
  %173 = getelementptr inbounds [4 x i8], ptr %b.i1332, i32 0, i32 3
  %174 = ptrtoint ptr %b.i1332 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %b.i1332, align 1
  %175 = ptrtoint ptr %171 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 52, ptr %171, align 1
  %176 = ptrtoint ptr %172 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %172, align 1
  %177 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 4, ptr %173, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1333) #7
  %178 = getelementptr inbounds i8, ptr %msg.i1333, i32 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 327679, ptr %178, align 4
  %config.i1334 = getelementptr inbounds %struct.dib3000_state, ptr %1, i32 0, i32 1
  %180 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %config.i1334, align 4
  %conv15.i1335 = zext i8 %181 to i16
  %182 = ptrtoint ptr %msg.i1333 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %conv15.i1335, ptr %msg.i1333, align 4
  %flags.i1336 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1333, i32 0, i32 1
  %183 = ptrtoint ptr %flags.i1336 to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 0, ptr %flags.i1336, align 2
  %buf.i1338 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1333, i32 0, i32 3
  %184 = ptrtoint ptr %buf.i1338 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %b.i1332, ptr %buf.i1338, align 4
  %185 = load i32, ptr @debug, align 4
  %and16.i1339 = and i32 %185, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1339)
  %tobool.not.i1340 = icmp eq i32 %and16.i1339, 0
  br i1 %tobool.not.i1340, label %if.end170.dib3000_write_reg.exit1346_crit_edge, label %do.end.i1342

if.end170.dib3000_write_reg.exit1346_crit_edge:   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1346

do.end.i1342:                                     ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1341 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 52, i32 noundef 52, i32 noundef 4, i32 noundef 4) #11
  br label %dib3000_write_reg.exit1346

dib3000_write_reg.exit1346:                       ; preds = %do.end.i1342, %if.end170.dib3000_write_reg.exit1346_crit_edge
  %186 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %1, align 4
  %call25.i1343 = call i32 @i2c_transfer(ptr noundef %187, ptr noundef nonnull %msg.i1333, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1343)
  %cmp.not.i1344 = icmp eq i32 %call25.i1343, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1333) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1332) #7
  br i1 %cmp.not.i1344, label %if.end179, label %do.end176

do.end176:                                        ; preds = %dib3000_write_reg.exit1346
  call void @__sanitizer_cov_trace_pc() #9
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 4, i32 noundef 52) #11
  br label %cleanup1069

if.end179:                                        ; preds = %dib3000_write_reg.exit1346
  %transmission_mode = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %188 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %transmission_mode, align 4
  %190 = zext i32 %189 to i64
  call void @__sanitizer_cov_trace_switch(i64 %190, ptr @__sancov_gen_cov_switch_values.430)
  switch i32 %189, label %if.end179.cleanup1069_crit_edge [
    i32 0, label %do.body181
    i32 1, label %do.body203
    i32 2, label %do.body225
  ]

if.end179.cleanup1069_crit_edge:                  ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup1069

do.body181:                                       ; preds = %if.end179
  %191 = load i32, ptr @debug, align 4
  %and182 = and i32 %191, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %do.body181.do.end192_crit_edge, label %do.end187

do.body181.do.end192_crit_edge:                   ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end192

do.end187:                                        ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #9
  %call189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.125) #11
  br label %do.end192

do.end192:                                        ; preds = %do.end187, %do.body181.do.end192_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1347) #7
  %192 = getelementptr inbounds [4 x i8], ptr %b.i1347, i32 0, i32 1
  %193 = getelementptr inbounds [4 x i8], ptr %b.i1347, i32 0, i32 2
  %194 = getelementptr inbounds [4 x i8], ptr %b.i1347, i32 0, i32 3
  %195 = ptrtoint ptr %b.i1347 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 0, ptr %b.i1347, align 1
  %196 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 1, ptr %192, align 1
  %197 = ptrtoint ptr %193 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %193, align 1
  %198 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %194, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1348) #7
  %199 = getelementptr inbounds i8, ptr %msg.i1348, i32 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 327679, ptr %199, align 4
  %201 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %config.i1334, align 4
  %conv15.i1350 = zext i8 %202 to i16
  %203 = ptrtoint ptr %msg.i1348 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %conv15.i1350, ptr %msg.i1348, align 4
  %flags.i1351 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1348, i32 0, i32 1
  %204 = ptrtoint ptr %flags.i1351 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 0, ptr %flags.i1351, align 2
  %buf.i1353 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1348, i32 0, i32 3
  %205 = ptrtoint ptr %buf.i1353 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %b.i1347, ptr %buf.i1353, align 4
  %206 = load i32, ptr @debug, align 4
  %and16.i1354 = and i32 %206, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1354)
  %tobool.not.i1355 = icmp eq i32 %and16.i1354, 0
  br i1 %tobool.not.i1355, label %do.end192.dib3000_write_reg.exit1361_crit_edge, label %do.end.i1357

do.end192.dib3000_write_reg.exit1361_crit_edge:   ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1361

do.end.i1357:                                     ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1356 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit1361

dib3000_write_reg.exit1361:                       ; preds = %do.end.i1357, %do.end192.dib3000_write_reg.exit1361_crit_edge
  %207 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %1, align 4
  %call25.i1358 = call i32 @i2c_transfer(ptr noundef %208, ptr noundef nonnull %msg.i1348, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1358)
  %cmp.not.i1359 = icmp eq i32 %call25.i1358, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1348) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1347) #7
  br i1 %cmp.not.i1359, label %dib3000_write_reg.exit1361.sw.epilog238_crit_edge, label %do.end198

dib3000_write_reg.exit1361.sw.epilog238_crit_edge: ; preds = %dib3000_write_reg.exit1361
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog238

do.end198:                                        ; preds = %dib3000_write_reg.exit1361
  call void @__sanitizer_cov_trace_pc() #9
  %call200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 1) #11
  br label %cleanup1069

do.body203:                                       ; preds = %if.end179
  %209 = load i32, ptr @debug, align 4
  %and204 = and i32 %209, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %do.body203.do.end214_crit_edge, label %do.end209

do.body203.do.end214_crit_edge:                   ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end214

do.end209:                                        ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #9
  %call211 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.125) #11
  br label %do.end214

do.end214:                                        ; preds = %do.end209, %do.body203.do.end214_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1362) #7
  %210 = getelementptr inbounds [4 x i8], ptr %b.i1362, i32 0, i32 1
  %211 = getelementptr inbounds [4 x i8], ptr %b.i1362, i32 0, i32 2
  %212 = getelementptr inbounds [4 x i8], ptr %b.i1362, i32 0, i32 3
  %213 = ptrtoint ptr %b.i1362 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 0, ptr %b.i1362, align 1
  %214 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 1, ptr %210, align 1
  %215 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %211, align 1
  %216 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 1, ptr %212, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1363) #7
  %217 = getelementptr inbounds i8, ptr %msg.i1363, i32 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 327679, ptr %217, align 4
  %219 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %config.i1334, align 4
  %conv15.i1365 = zext i8 %220 to i16
  %221 = ptrtoint ptr %msg.i1363 to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %conv15.i1365, ptr %msg.i1363, align 4
  %flags.i1366 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1363, i32 0, i32 1
  %222 = ptrtoint ptr %flags.i1366 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 0, ptr %flags.i1366, align 2
  %buf.i1368 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1363, i32 0, i32 3
  %223 = ptrtoint ptr %buf.i1368 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %b.i1362, ptr %buf.i1368, align 4
  %224 = load i32, ptr @debug, align 4
  %and16.i1369 = and i32 %224, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1369)
  %tobool.not.i1370 = icmp eq i32 %and16.i1369, 0
  br i1 %tobool.not.i1370, label %do.end214.dib3000_write_reg.exit1376_crit_edge, label %do.end.i1372

do.end214.dib3000_write_reg.exit1376_crit_edge:   ; preds = %do.end214
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1376

do.end.i1372:                                     ; preds = %do.end214
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1371 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit1376

dib3000_write_reg.exit1376:                       ; preds = %do.end.i1372, %do.end214.dib3000_write_reg.exit1376_crit_edge
  %225 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %1, align 4
  %call25.i1373 = call i32 @i2c_transfer(ptr noundef %226, ptr noundef nonnull %msg.i1363, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1373)
  %cmp.not.i1374 = icmp eq i32 %call25.i1373, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1363) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1362) #7
  br i1 %cmp.not.i1374, label %dib3000_write_reg.exit1376.sw.epilog238_crit_edge, label %do.end220

dib3000_write_reg.exit1376.sw.epilog238_crit_edge: ; preds = %dib3000_write_reg.exit1376
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog238

do.end220:                                        ; preds = %dib3000_write_reg.exit1376
  call void @__sanitizer_cov_trace_pc() #9
  %call222 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 1) #11
  br label %cleanup1069

do.body225:                                       ; preds = %if.end179
  %227 = load i32, ptr @debug, align 4
  %and226 = and i32 %227, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %do.body225.sw.epilog238_crit_edge, label %do.end231

do.body225.sw.epilog238_crit_edge:                ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog238

do.end231:                                        ; preds = %do.body225
  call void @__sanitizer_cov_trace_pc() #9
  %call233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.125) #11
  br label %sw.epilog238

sw.epilog238:                                     ; preds = %do.end231, %do.body225.sw.epilog238_crit_edge, %dib3000_write_reg.exit1376.sw.epilog238_crit_edge, %dib3000_write_reg.exit1361.sw.epilog238_crit_edge
  %guard_interval = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %228 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %guard_interval, align 4
  %230 = zext i32 %229 to i64
  call void @__sanitizer_cov_trace_switch(i64 %230, ptr @__sancov_gen_cov_switch_values.431)
  switch i32 %229, label %sw.epilog238.cleanup1069_crit_edge [
    i32 0, label %do.body240
    i32 1, label %do.body262
    i32 2, label %do.body284
    i32 3, label %do.body306
    i32 4, label %do.body328
  ]

sw.epilog238.cleanup1069_crit_edge:               ; preds = %sw.epilog238
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup1069

do.body240:                                       ; preds = %sw.epilog238
  %231 = load i32, ptr @debug, align 4
  %and241 = and i32 %231, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241)
  %tobool242.not = icmp eq i32 %and241, 0
  br i1 %tobool242.not, label %do.body240.do.end251_crit_edge, label %do.end246

do.body240.do.end251_crit_edge:                   ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end251

do.end246:                                        ; preds = %do.body240
  call void @__sanitizer_cov_trace_pc() #9
  %call248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.125) #11
  br label %do.end251

do.end251:                                        ; preds = %do.end246, %do.body240.do.end251_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1377) #7
  %232 = getelementptr inbounds [4 x i8], ptr %b.i1377, i32 0, i32 1
  %233 = getelementptr inbounds [4 x i8], ptr %b.i1377, i32 0, i32 2
  %234 = getelementptr inbounds [4 x i8], ptr %b.i1377, i32 0, i32 3
  %235 = ptrtoint ptr %b.i1377 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 0, ptr %b.i1377, align 1
  %236 = ptrtoint ptr %232 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 2, ptr %232, align 1
  %237 = ptrtoint ptr %233 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 0, ptr %233, align 1
  %238 = ptrtoint ptr %234 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 0, ptr %234, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1378) #7
  %239 = getelementptr inbounds i8, ptr %msg.i1378, i32 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 327679, ptr %239, align 4
  %241 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %config.i1334, align 4
  %conv15.i1380 = zext i8 %242 to i16
  %243 = ptrtoint ptr %msg.i1378 to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %conv15.i1380, ptr %msg.i1378, align 4
  %flags.i1381 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1378, i32 0, i32 1
  %244 = ptrtoint ptr %flags.i1381 to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 0, ptr %flags.i1381, align 2
  %buf.i1383 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1378, i32 0, i32 3
  %245 = ptrtoint ptr %buf.i1383 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %b.i1377, ptr %buf.i1383, align 4
  %246 = load i32, ptr @debug, align 4
  %and16.i1384 = and i32 %246, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1384)
  %tobool.not.i1385 = icmp eq i32 %and16.i1384, 0
  br i1 %tobool.not.i1385, label %do.end251.dib3000_write_reg.exit1391_crit_edge, label %do.end.i1387

do.end251.dib3000_write_reg.exit1391_crit_edge:   ; preds = %do.end251
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1391

do.end.i1387:                                     ; preds = %do.end251
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1386 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 2, i32 noundef 2, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit1391

dib3000_write_reg.exit1391:                       ; preds = %do.end.i1387, %do.end251.dib3000_write_reg.exit1391_crit_edge
  %247 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %1, align 4
  %call25.i1388 = call i32 @i2c_transfer(ptr noundef %248, ptr noundef nonnull %msg.i1378, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1388)
  %cmp.not.i1389 = icmp eq i32 %call25.i1388, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1378) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1377) #7
  br i1 %cmp.not.i1389, label %dib3000_write_reg.exit1391.sw.epilog341_crit_edge, label %do.end257

dib3000_write_reg.exit1391.sw.epilog341_crit_edge: ; preds = %dib3000_write_reg.exit1391
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog341

do.end257:                                        ; preds = %dib3000_write_reg.exit1391
  call void @__sanitizer_cov_trace_pc() #9
  %call259 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 2) #11
  br label %cleanup1069

do.body262:                                       ; preds = %sw.epilog238
  %249 = load i32, ptr @debug, align 4
  %and263 = and i32 %249, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and263)
  %tobool264.not = icmp eq i32 %and263, 0
  br i1 %tobool264.not, label %do.body262.do.end273_crit_edge, label %do.end268

do.body262.do.end273_crit_edge:                   ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end273

do.end268:                                        ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #9
  %call270 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.125) #11
  br label %do.end273

do.end273:                                        ; preds = %do.end268, %do.body262.do.end273_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1392) #7
  %250 = getelementptr inbounds [4 x i8], ptr %b.i1392, i32 0, i32 1
  %251 = getelementptr inbounds [4 x i8], ptr %b.i1392, i32 0, i32 2
  %252 = getelementptr inbounds [4 x i8], ptr %b.i1392, i32 0, i32 3
  %253 = ptrtoint ptr %b.i1392 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 0, ptr %b.i1392, align 1
  %254 = ptrtoint ptr %250 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 2, ptr %250, align 1
  %255 = ptrtoint ptr %251 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 0, ptr %251, align 1
  %256 = ptrtoint ptr %252 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 1, ptr %252, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1393) #7
  %257 = getelementptr inbounds i8, ptr %msg.i1393, i32 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 327679, ptr %257, align 4
  %259 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %config.i1334, align 4
  %conv15.i1395 = zext i8 %260 to i16
  %261 = ptrtoint ptr %msg.i1393 to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 %conv15.i1395, ptr %msg.i1393, align 4
  %flags.i1396 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1393, i32 0, i32 1
  %262 = ptrtoint ptr %flags.i1396 to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 0, ptr %flags.i1396, align 2
  %buf.i1398 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1393, i32 0, i32 3
  %263 = ptrtoint ptr %buf.i1398 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %b.i1392, ptr %buf.i1398, align 4
  %264 = load i32, ptr @debug, align 4
  %and16.i1399 = and i32 %264, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1399)
  %tobool.not.i1400 = icmp eq i32 %and16.i1399, 0
  br i1 %tobool.not.i1400, label %do.end273.dib3000_write_reg.exit1406_crit_edge, label %do.end.i1402

do.end273.dib3000_write_reg.exit1406_crit_edge:   ; preds = %do.end273
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1406

do.end.i1402:                                     ; preds = %do.end273
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1401 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 2, i32 noundef 2, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit1406

dib3000_write_reg.exit1406:                       ; preds = %do.end.i1402, %do.end273.dib3000_write_reg.exit1406_crit_edge
  %265 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %1, align 4
  %call25.i1403 = call i32 @i2c_transfer(ptr noundef %266, ptr noundef nonnull %msg.i1393, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1403)
  %cmp.not.i1404 = icmp eq i32 %call25.i1403, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1393) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1392) #7
  br i1 %cmp.not.i1404, label %dib3000_write_reg.exit1406.sw.epilog341_crit_edge, label %do.end279

dib3000_write_reg.exit1406.sw.epilog341_crit_edge: ; preds = %dib3000_write_reg.exit1406
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog341

do.end279:                                        ; preds = %dib3000_write_reg.exit1406
  call void @__sanitizer_cov_trace_pc() #9
  %call281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 2) #11
  br label %cleanup1069

do.body284:                                       ; preds = %sw.epilog238
  %267 = load i32, ptr @debug, align 4
  %and285 = and i32 %267, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and285)
  %tobool286.not = icmp eq i32 %and285, 0
  br i1 %tobool286.not, label %do.body284.do.end295_crit_edge, label %do.end290

do.body284.do.end295_crit_edge:                   ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end295

do.end290:                                        ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #9
  %call292 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.125) #11
  br label %do.end295

do.end295:                                        ; preds = %do.end290, %do.body284.do.end295_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1407) #7
  %268 = getelementptr inbounds [4 x i8], ptr %b.i1407, i32 0, i32 1
  %269 = getelementptr inbounds [4 x i8], ptr %b.i1407, i32 0, i32 2
  %270 = getelementptr inbounds [4 x i8], ptr %b.i1407, i32 0, i32 3
  %271 = ptrtoint ptr %b.i1407 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 0, ptr %b.i1407, align 1
  %272 = ptrtoint ptr %268 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 2, ptr %268, align 1
  %273 = ptrtoint ptr %269 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 0, ptr %269, align 1
  %274 = ptrtoint ptr %270 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 2, ptr %270, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1408) #7
  %275 = getelementptr inbounds i8, ptr %msg.i1408, i32 4
  %276 = ptrtoint ptr %275 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 327679, ptr %275, align 4
  %277 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %config.i1334, align 4
  %conv15.i1410 = zext i8 %278 to i16
  %279 = ptrtoint ptr %msg.i1408 to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 %conv15.i1410, ptr %msg.i1408, align 4
  %flags.i1411 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1408, i32 0, i32 1
  %280 = ptrtoint ptr %flags.i1411 to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 0, ptr %flags.i1411, align 2
  %buf.i1413 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1408, i32 0, i32 3
  %281 = ptrtoint ptr %buf.i1413 to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr %b.i1407, ptr %buf.i1413, align 4
  %282 = load i32, ptr @debug, align 4
  %and16.i1414 = and i32 %282, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1414)
  %tobool.not.i1415 = icmp eq i32 %and16.i1414, 0
  br i1 %tobool.not.i1415, label %do.end295.dib3000_write_reg.exit1421_crit_edge, label %do.end.i1417

do.end295.dib3000_write_reg.exit1421_crit_edge:   ; preds = %do.end295
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1421

do.end.i1417:                                     ; preds = %do.end295
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1416 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 2, i32 noundef 2, i32 noundef 2, i32 noundef 2) #11
  br label %dib3000_write_reg.exit1421

dib3000_write_reg.exit1421:                       ; preds = %do.end.i1417, %do.end295.dib3000_write_reg.exit1421_crit_edge
  %283 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %1, align 4
  %call25.i1418 = call i32 @i2c_transfer(ptr noundef %284, ptr noundef nonnull %msg.i1408, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1418)
  %cmp.not.i1419 = icmp eq i32 %call25.i1418, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1408) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1407) #7
  br i1 %cmp.not.i1419, label %dib3000_write_reg.exit1421.sw.epilog341_crit_edge, label %do.end301

dib3000_write_reg.exit1421.sw.epilog341_crit_edge: ; preds = %dib3000_write_reg.exit1421
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog341

do.end301:                                        ; preds = %dib3000_write_reg.exit1421
  call void @__sanitizer_cov_trace_pc() #9
  %call303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 2) #11
  br label %cleanup1069

do.body306:                                       ; preds = %sw.epilog238
  %285 = load i32, ptr @debug, align 4
  %and307 = and i32 %285, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and307)
  %tobool308.not = icmp eq i32 %and307, 0
  br i1 %tobool308.not, label %do.body306.do.end317_crit_edge, label %do.end312

do.body306.do.end317_crit_edge:                   ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end317

do.end312:                                        ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #9
  %call314 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.125) #11
  br label %do.end317

do.end317:                                        ; preds = %do.end312, %do.body306.do.end317_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1422) #7
  %286 = getelementptr inbounds [4 x i8], ptr %b.i1422, i32 0, i32 1
  %287 = getelementptr inbounds [4 x i8], ptr %b.i1422, i32 0, i32 2
  %288 = getelementptr inbounds [4 x i8], ptr %b.i1422, i32 0, i32 3
  %289 = ptrtoint ptr %b.i1422 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 0, ptr %b.i1422, align 1
  %290 = ptrtoint ptr %286 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 2, ptr %286, align 1
  %291 = ptrtoint ptr %287 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 0, ptr %287, align 1
  %292 = ptrtoint ptr %288 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 3, ptr %288, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1423) #7
  %293 = getelementptr inbounds i8, ptr %msg.i1423, i32 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_store4_noabort(i32 %294)
  store i32 327679, ptr %293, align 4
  %295 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %config.i1334, align 4
  %conv15.i1425 = zext i8 %296 to i16
  %297 = ptrtoint ptr %msg.i1423 to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 %conv15.i1425, ptr %msg.i1423, align 4
  %flags.i1426 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1423, i32 0, i32 1
  %298 = ptrtoint ptr %flags.i1426 to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 0, ptr %flags.i1426, align 2
  %buf.i1428 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1423, i32 0, i32 3
  %299 = ptrtoint ptr %buf.i1428 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %b.i1422, ptr %buf.i1428, align 4
  %300 = load i32, ptr @debug, align 4
  %and16.i1429 = and i32 %300, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1429)
  %tobool.not.i1430 = icmp eq i32 %and16.i1429, 0
  br i1 %tobool.not.i1430, label %do.end317.dib3000_write_reg.exit1436_crit_edge, label %do.end.i1432

do.end317.dib3000_write_reg.exit1436_crit_edge:   ; preds = %do.end317
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1436

do.end.i1432:                                     ; preds = %do.end317
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 2, i32 noundef 2, i32 noundef 3, i32 noundef 3) #11
  br label %dib3000_write_reg.exit1436

dib3000_write_reg.exit1436:                       ; preds = %do.end.i1432, %do.end317.dib3000_write_reg.exit1436_crit_edge
  %301 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %1, align 4
  %call25.i1433 = call i32 @i2c_transfer(ptr noundef %302, ptr noundef nonnull %msg.i1423, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1433)
  %cmp.not.i1434 = icmp eq i32 %call25.i1433, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1423) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1422) #7
  br i1 %cmp.not.i1434, label %dib3000_write_reg.exit1436.sw.epilog341_crit_edge, label %do.end323

dib3000_write_reg.exit1436.sw.epilog341_crit_edge: ; preds = %dib3000_write_reg.exit1436
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog341

do.end323:                                        ; preds = %dib3000_write_reg.exit1436
  call void @__sanitizer_cov_trace_pc() #9
  %call325 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef 2) #11
  br label %cleanup1069

do.body328:                                       ; preds = %sw.epilog238
  %303 = load i32, ptr @debug, align 4
  %and329 = and i32 %303, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and329)
  %tobool330.not = icmp eq i32 %and329, 0
  br i1 %tobool330.not, label %do.body328.sw.epilog341_crit_edge, label %do.end334

do.body328.sw.epilog341_crit_edge:                ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog341

do.end334:                                        ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #9
  %call336 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.125) #11
  br label %sw.epilog341

sw.epilog341:                                     ; preds = %do.end334, %do.body328.sw.epilog341_crit_edge, %dib3000_write_reg.exit1436.sw.epilog341_crit_edge, %dib3000_write_reg.exit1421.sw.epilog341_crit_edge, %dib3000_write_reg.exit1406.sw.epilog341_crit_edge, %dib3000_write_reg.exit1391.sw.epilog341_crit_edge
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %304 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %inversion, align 4
  %306 = zext i32 %305 to i64
  call void @__sanitizer_cov_trace_switch(i64 %306, ptr @__sancov_gen_cov_switch_values.432)
  switch i32 %305, label %sw.epilog341.cleanup1069_crit_edge [
    i32 0, label %do.body343
    i32 2, label %do.body365
    i32 1, label %do.body378
  ]

sw.epilog341.cleanup1069_crit_edge:               ; preds = %sw.epilog341
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup1069

do.body343:                                       ; preds = %sw.epilog341
  %307 = load i32, ptr @debug, align 4
  %and344 = and i32 %307, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and344)
  %tobool345.not = icmp eq i32 %and344, 0
  br i1 %tobool345.not, label %do.body343.do.end354_crit_edge, label %do.end349

do.body343.do.end354_crit_edge:                   ; preds = %do.body343
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end354

do.end349:                                        ; preds = %do.body343
  call void @__sanitizer_cov_trace_pc() #9
  %call351 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.125) #11
  br label %do.end354

do.end354:                                        ; preds = %do.end349, %do.body343.do.end354_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1437) #7
  %308 = getelementptr inbounds [4 x i8], ptr %b.i1437, i32 0, i32 1
  %309 = getelementptr inbounds [4 x i8], ptr %b.i1437, i32 0, i32 2
  %310 = getelementptr inbounds [4 x i8], ptr %b.i1437, i32 0, i32 3
  %311 = ptrtoint ptr %b.i1437 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 0, ptr %b.i1437, align 1
  %312 = ptrtoint ptr %308 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 5, ptr %308, align 1
  %313 = ptrtoint ptr %309 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 0, ptr %309, align 1
  %314 = ptrtoint ptr %310 to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 0, ptr %310, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1438) #7
  %315 = getelementptr inbounds i8, ptr %msg.i1438, i32 4
  %316 = ptrtoint ptr %315 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 327679, ptr %315, align 4
  %317 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %config.i1334, align 4
  %conv15.i1440 = zext i8 %318 to i16
  %319 = ptrtoint ptr %msg.i1438 to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 %conv15.i1440, ptr %msg.i1438, align 4
  %flags.i1441 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1438, i32 0, i32 1
  %320 = ptrtoint ptr %flags.i1441 to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 0, ptr %flags.i1441, align 2
  %buf.i1443 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1438, i32 0, i32 3
  %321 = ptrtoint ptr %buf.i1443 to i32
  call void @__asan_store4_noabort(i32 %321)
  store ptr %b.i1437, ptr %buf.i1443, align 4
  %322 = load i32, ptr @debug, align 4
  %and16.i1444 = and i32 %322, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1444)
  %tobool.not.i1445 = icmp eq i32 %and16.i1444, 0
  br i1 %tobool.not.i1445, label %do.end354.dib3000_write_reg.exit1451_crit_edge, label %do.end.i1447

do.end354.dib3000_write_reg.exit1451_crit_edge:   ; preds = %do.end354
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1451

do.end.i1447:                                     ; preds = %do.end354
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1446 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 5, i32 noundef 5, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit1451

dib3000_write_reg.exit1451:                       ; preds = %do.end.i1447, %do.end354.dib3000_write_reg.exit1451_crit_edge
  %323 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %1, align 4
  %call25.i1448 = call i32 @i2c_transfer(ptr noundef %324, ptr noundef nonnull %msg.i1438, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1448)
  %cmp.not.i1449 = icmp eq i32 %call25.i1448, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1438) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1437) #7
  br i1 %cmp.not.i1449, label %dib3000_write_reg.exit1451.sw.epilog400_crit_edge, label %do.end360

dib3000_write_reg.exit1451.sw.epilog400_crit_edge: ; preds = %dib3000_write_reg.exit1451
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog400

do.end360:                                        ; preds = %dib3000_write_reg.exit1451
  call void @__sanitizer_cov_trace_pc() #9
  %call362 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 5) #11
  br label %cleanup1069

do.body365:                                       ; preds = %sw.epilog341
  %325 = load i32, ptr @debug, align 4
  %and366 = and i32 %325, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and366)
  %tobool367.not = icmp eq i32 %and366, 0
  br i1 %tobool367.not, label %do.body365.sw.epilog400_crit_edge, label %do.end371

do.body365.sw.epilog400_crit_edge:                ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog400

do.end371:                                        ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #9
  %call373 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.125) #11
  br label %sw.epilog400

do.body378:                                       ; preds = %sw.epilog341
  %326 = load i32, ptr @debug, align 4
  %and379 = and i32 %326, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and379)
  %tobool380.not = icmp eq i32 %and379, 0
  br i1 %tobool380.not, label %do.body378.do.end389_crit_edge, label %do.end384

do.body378.do.end389_crit_edge:                   ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end389

do.end384:                                        ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #9
  %call386 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.125) #11
  br label %do.end389

do.end389:                                        ; preds = %do.end384, %do.body378.do.end389_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1452) #7
  %327 = getelementptr inbounds [4 x i8], ptr %b.i1452, i32 0, i32 1
  %328 = getelementptr inbounds [4 x i8], ptr %b.i1452, i32 0, i32 2
  %329 = getelementptr inbounds [4 x i8], ptr %b.i1452, i32 0, i32 3
  %330 = ptrtoint ptr %b.i1452 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 0, ptr %b.i1452, align 1
  %331 = ptrtoint ptr %327 to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 5, ptr %327, align 1
  %332 = ptrtoint ptr %328 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 0, ptr %328, align 1
  %333 = ptrtoint ptr %329 to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 1, ptr %329, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1453) #7
  %334 = getelementptr inbounds i8, ptr %msg.i1453, i32 4
  %335 = ptrtoint ptr %334 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 327679, ptr %334, align 4
  %336 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %config.i1334, align 4
  %conv15.i1455 = zext i8 %337 to i16
  %338 = ptrtoint ptr %msg.i1453 to i32
  call void @__asan_store2_noabort(i32 %338)
  store i16 %conv15.i1455, ptr %msg.i1453, align 4
  %flags.i1456 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1453, i32 0, i32 1
  %339 = ptrtoint ptr %flags.i1456 to i32
  call void @__asan_store2_noabort(i32 %339)
  store i16 0, ptr %flags.i1456, align 2
  %buf.i1458 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1453, i32 0, i32 3
  %340 = ptrtoint ptr %buf.i1458 to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr %b.i1452, ptr %buf.i1458, align 4
  %341 = load i32, ptr @debug, align 4
  %and16.i1459 = and i32 %341, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1459)
  %tobool.not.i1460 = icmp eq i32 %and16.i1459, 0
  br i1 %tobool.not.i1460, label %do.end389.dib3000_write_reg.exit1466_crit_edge, label %do.end.i1462

do.end389.dib3000_write_reg.exit1466_crit_edge:   ; preds = %do.end389
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1466

do.end.i1462:                                     ; preds = %do.end389
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1461 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 5, i32 noundef 5, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit1466

dib3000_write_reg.exit1466:                       ; preds = %do.end.i1462, %do.end389.dib3000_write_reg.exit1466_crit_edge
  %342 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %1, align 4
  %call25.i1463 = call i32 @i2c_transfer(ptr noundef %343, ptr noundef nonnull %msg.i1453, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1463)
  %cmp.not.i1464 = icmp eq i32 %call25.i1463, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1453) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1452) #7
  br i1 %cmp.not.i1464, label %dib3000_write_reg.exit1466.sw.epilog400_crit_edge, label %do.end395

dib3000_write_reg.exit1466.sw.epilog400_crit_edge: ; preds = %dib3000_write_reg.exit1466
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog400

do.end395:                                        ; preds = %dib3000_write_reg.exit1466
  call void @__sanitizer_cov_trace_pc() #9
  %call397 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 5) #11
  br label %cleanup1069

sw.epilog400:                                     ; preds = %dib3000_write_reg.exit1466.sw.epilog400_crit_edge, %do.end371, %do.body365.sw.epilog400_crit_edge, %dib3000_write_reg.exit1451.sw.epilog400_crit_edge
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %344 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %modulation, align 4
  %346 = zext i32 %345 to i64
  call void @__sanitizer_cov_trace_switch(i64 %346, ptr @__sancov_gen_cov_switch_values.433)
  switch i32 %345, label %sw.epilog400.cleanup1069_crit_edge [
    i32 0, label %do.body402
    i32 1, label %do.body424
    i32 3, label %do.body446
    i32 6, label %sw.epilog400.sw.epilog468_crit_edge
  ]

sw.epilog400.sw.epilog468_crit_edge:              ; preds = %sw.epilog400
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog468

sw.epilog400.cleanup1069_crit_edge:               ; preds = %sw.epilog400
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup1069

do.body402:                                       ; preds = %sw.epilog400
  %347 = load i32, ptr @debug, align 4
  %and403 = and i32 %347, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and403)
  %tobool404.not = icmp eq i32 %and403, 0
  br i1 %tobool404.not, label %do.body402.do.end413_crit_edge, label %do.end408

do.body402.do.end413_crit_edge:                   ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end413

do.end408:                                        ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #9
  %call410 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.125) #11
  br label %do.end413

do.end413:                                        ; preds = %do.end408, %do.body402.do.end413_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1467) #7
  %348 = getelementptr inbounds [4 x i8], ptr %b.i1467, i32 0, i32 1
  %349 = getelementptr inbounds [4 x i8], ptr %b.i1467, i32 0, i32 2
  %350 = getelementptr inbounds [4 x i8], ptr %b.i1467, i32 0, i32 3
  %351 = ptrtoint ptr %b.i1467 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 0, ptr %b.i1467, align 1
  %352 = ptrtoint ptr %348 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 3, ptr %348, align 1
  %353 = ptrtoint ptr %349 to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 0, ptr %349, align 1
  %354 = ptrtoint ptr %350 to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 0, ptr %350, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1468) #7
  %355 = getelementptr inbounds i8, ptr %msg.i1468, i32 4
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_store4_noabort(i32 %356)
  store i32 327679, ptr %355, align 4
  %357 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %config.i1334, align 4
  %conv15.i1470 = zext i8 %358 to i16
  %359 = ptrtoint ptr %msg.i1468 to i32
  call void @__asan_store2_noabort(i32 %359)
  store i16 %conv15.i1470, ptr %msg.i1468, align 4
  %flags.i1471 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1468, i32 0, i32 1
  %360 = ptrtoint ptr %flags.i1471 to i32
  call void @__asan_store2_noabort(i32 %360)
  store i16 0, ptr %flags.i1471, align 2
  %buf.i1473 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1468, i32 0, i32 3
  %361 = ptrtoint ptr %buf.i1473 to i32
  call void @__asan_store4_noabort(i32 %361)
  store ptr %b.i1467, ptr %buf.i1473, align 4
  %362 = load i32, ptr @debug, align 4
  %and16.i1474 = and i32 %362, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1474)
  %tobool.not.i1475 = icmp eq i32 %and16.i1474, 0
  br i1 %tobool.not.i1475, label %do.end413.dib3000_write_reg.exit1481_crit_edge, label %do.end.i1477

do.end413.dib3000_write_reg.exit1481_crit_edge:   ; preds = %do.end413
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1481

do.end.i1477:                                     ; preds = %do.end413
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1476 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 3, i32 noundef 3, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit1481

dib3000_write_reg.exit1481:                       ; preds = %do.end.i1477, %do.end413.dib3000_write_reg.exit1481_crit_edge
  %363 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %1, align 4
  %call25.i1478 = call i32 @i2c_transfer(ptr noundef %364, ptr noundef nonnull %msg.i1468, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1478)
  %cmp.not.i1479 = icmp eq i32 %call25.i1478, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1468) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1467) #7
  br i1 %cmp.not.i1479, label %dib3000_write_reg.exit1481.sw.epilog468_crit_edge, label %do.end419

dib3000_write_reg.exit1481.sw.epilog468_crit_edge: ; preds = %dib3000_write_reg.exit1481
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog468

do.end419:                                        ; preds = %dib3000_write_reg.exit1481
  call void @__sanitizer_cov_trace_pc() #9
  %call421 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 3) #11
  br label %cleanup1069

do.body424:                                       ; preds = %sw.epilog400
  %365 = load i32, ptr @debug, align 4
  %and425 = and i32 %365, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and425)
  %tobool426.not = icmp eq i32 %and425, 0
  br i1 %tobool426.not, label %do.body424.do.end435_crit_edge, label %do.end430

do.body424.do.end435_crit_edge:                   ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end435

do.end430:                                        ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #9
  %call432 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.125) #11
  br label %do.end435

do.end435:                                        ; preds = %do.end430, %do.body424.do.end435_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1482) #7
  %366 = getelementptr inbounds [4 x i8], ptr %b.i1482, i32 0, i32 1
  %367 = getelementptr inbounds [4 x i8], ptr %b.i1482, i32 0, i32 2
  %368 = getelementptr inbounds [4 x i8], ptr %b.i1482, i32 0, i32 3
  %369 = ptrtoint ptr %b.i1482 to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 0, ptr %b.i1482, align 1
  %370 = ptrtoint ptr %366 to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 3, ptr %366, align 1
  %371 = ptrtoint ptr %367 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 0, ptr %367, align 1
  %372 = ptrtoint ptr %368 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 1, ptr %368, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1483) #7
  %373 = getelementptr inbounds i8, ptr %msg.i1483, i32 4
  %374 = ptrtoint ptr %373 to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 327679, ptr %373, align 4
  %375 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %config.i1334, align 4
  %conv15.i1485 = zext i8 %376 to i16
  %377 = ptrtoint ptr %msg.i1483 to i32
  call void @__asan_store2_noabort(i32 %377)
  store i16 %conv15.i1485, ptr %msg.i1483, align 4
  %flags.i1486 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1483, i32 0, i32 1
  %378 = ptrtoint ptr %flags.i1486 to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 0, ptr %flags.i1486, align 2
  %buf.i1488 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1483, i32 0, i32 3
  %379 = ptrtoint ptr %buf.i1488 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %b.i1482, ptr %buf.i1488, align 4
  %380 = load i32, ptr @debug, align 4
  %and16.i1489 = and i32 %380, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1489)
  %tobool.not.i1490 = icmp eq i32 %and16.i1489, 0
  br i1 %tobool.not.i1490, label %do.end435.dib3000_write_reg.exit1496_crit_edge, label %do.end.i1492

do.end435.dib3000_write_reg.exit1496_crit_edge:   ; preds = %do.end435
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1496

do.end.i1492:                                     ; preds = %do.end435
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1491 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit1496

dib3000_write_reg.exit1496:                       ; preds = %do.end.i1492, %do.end435.dib3000_write_reg.exit1496_crit_edge
  %381 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %1, align 4
  %call25.i1493 = call i32 @i2c_transfer(ptr noundef %382, ptr noundef nonnull %msg.i1483, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1493)
  %cmp.not.i1494 = icmp eq i32 %call25.i1493, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1483) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1482) #7
  br i1 %cmp.not.i1494, label %dib3000_write_reg.exit1496.sw.epilog468_crit_edge, label %do.end441

dib3000_write_reg.exit1496.sw.epilog468_crit_edge: ; preds = %dib3000_write_reg.exit1496
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog468

do.end441:                                        ; preds = %dib3000_write_reg.exit1496
  call void @__sanitizer_cov_trace_pc() #9
  %call443 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 3) #11
  br label %cleanup1069

do.body446:                                       ; preds = %sw.epilog400
  %383 = load i32, ptr @debug, align 4
  %and447 = and i32 %383, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and447)
  %tobool448.not = icmp eq i32 %and447, 0
  br i1 %tobool448.not, label %do.body446.do.end457_crit_edge, label %do.end452

do.body446.do.end457_crit_edge:                   ; preds = %do.body446
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end457

do.end452:                                        ; preds = %do.body446
  call void @__sanitizer_cov_trace_pc() #9
  %call454 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.125) #11
  br label %do.end457

do.end457:                                        ; preds = %do.end452, %do.body446.do.end457_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1497) #7
  %384 = getelementptr inbounds [4 x i8], ptr %b.i1497, i32 0, i32 1
  %385 = getelementptr inbounds [4 x i8], ptr %b.i1497, i32 0, i32 2
  %386 = getelementptr inbounds [4 x i8], ptr %b.i1497, i32 0, i32 3
  %387 = ptrtoint ptr %b.i1497 to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 0, ptr %b.i1497, align 1
  %388 = ptrtoint ptr %384 to i32
  call void @__asan_store1_noabort(i32 %388)
  store i8 3, ptr %384, align 1
  %389 = ptrtoint ptr %385 to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 0, ptr %385, align 1
  %390 = ptrtoint ptr %386 to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 2, ptr %386, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1498) #7
  %391 = getelementptr inbounds i8, ptr %msg.i1498, i32 4
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 327679, ptr %391, align 4
  %393 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %config.i1334, align 4
  %conv15.i1500 = zext i8 %394 to i16
  %395 = ptrtoint ptr %msg.i1498 to i32
  call void @__asan_store2_noabort(i32 %395)
  store i16 %conv15.i1500, ptr %msg.i1498, align 4
  %flags.i1501 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1498, i32 0, i32 1
  %396 = ptrtoint ptr %flags.i1501 to i32
  call void @__asan_store2_noabort(i32 %396)
  store i16 0, ptr %flags.i1501, align 2
  %buf.i1503 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1498, i32 0, i32 3
  %397 = ptrtoint ptr %buf.i1503 to i32
  call void @__asan_store4_noabort(i32 %397)
  store ptr %b.i1497, ptr %buf.i1503, align 4
  %398 = load i32, ptr @debug, align 4
  %and16.i1504 = and i32 %398, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1504)
  %tobool.not.i1505 = icmp eq i32 %and16.i1504, 0
  br i1 %tobool.not.i1505, label %do.end457.dib3000_write_reg.exit1511_crit_edge, label %do.end.i1507

do.end457.dib3000_write_reg.exit1511_crit_edge:   ; preds = %do.end457
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1511

do.end.i1507:                                     ; preds = %do.end457
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1506 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 3, i32 noundef 3, i32 noundef 2, i32 noundef 2) #11
  br label %dib3000_write_reg.exit1511

dib3000_write_reg.exit1511:                       ; preds = %do.end.i1507, %do.end457.dib3000_write_reg.exit1511_crit_edge
  %399 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %1, align 4
  %call25.i1508 = call i32 @i2c_transfer(ptr noundef %400, ptr noundef nonnull %msg.i1498, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1508)
  %cmp.not.i1509 = icmp eq i32 %call25.i1508, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1498) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1497) #7
  br i1 %cmp.not.i1509, label %dib3000_write_reg.exit1511.sw.epilog468_crit_edge, label %do.end463

dib3000_write_reg.exit1511.sw.epilog468_crit_edge: ; preds = %dib3000_write_reg.exit1511
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog468

do.end463:                                        ; preds = %dib3000_write_reg.exit1511
  call void @__sanitizer_cov_trace_pc() #9
  %call465 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 3) #11
  br label %cleanup1069

sw.epilog468:                                     ; preds = %dib3000_write_reg.exit1511.sw.epilog468_crit_edge, %dib3000_write_reg.exit1496.sw.epilog468_crit_edge, %dib3000_write_reg.exit1481.sw.epilog468_crit_edge, %sw.epilog400.sw.epilog468_crit_edge
  %hierarchy = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 9
  %401 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %hierarchy, align 4
  %403 = zext i32 %402 to i64
  call void @__sanitizer_cov_trace_switch(i64 %403, ptr @__sancov_gen_cov_switch_values.434)
  switch i32 %402, label %sw.epilog468.cleanup1069_crit_edge [
    i32 0, label %do.body470
    i32 1, label %sw.epilog468.do.body483_crit_edge
    i32 2, label %do.body505
    i32 3, label %do.body527
    i32 4, label %do.body549
  ]

sw.epilog468.do.body483_crit_edge:                ; preds = %sw.epilog468
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body483

sw.epilog468.cleanup1069_crit_edge:               ; preds = %sw.epilog468
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup1069

do.body470:                                       ; preds = %sw.epilog468
  %404 = load i32, ptr @debug, align 4
  %and471 = and i32 %404, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and471)
  %tobool472.not = icmp eq i32 %and471, 0
  br i1 %tobool472.not, label %do.body470.do.body483_crit_edge, label %do.end476

do.body470.do.body483_crit_edge:                  ; preds = %do.body470
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body483

do.end476:                                        ; preds = %do.body470
  call void @__sanitizer_cov_trace_pc() #9
  %call478 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.125) #11
  br label %do.body483

do.body483:                                       ; preds = %do.end476, %do.body470.do.body483_crit_edge, %sw.epilog468.do.body483_crit_edge
  %405 = load i32, ptr @debug, align 4
  %and484 = and i32 %405, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and484)
  %tobool485.not = icmp eq i32 %and484, 0
  br i1 %tobool485.not, label %do.body483.do.end494_crit_edge, label %do.end489

do.body483.do.end494_crit_edge:                   ; preds = %do.body483
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end494

do.end489:                                        ; preds = %do.body483
  call void @__sanitizer_cov_trace_pc() #9
  %call491 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.125) #11
  br label %do.end494

do.end494:                                        ; preds = %do.end489, %do.body483.do.end494_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1512) #7
  %406 = getelementptr inbounds [4 x i8], ptr %b.i1512, i32 0, i32 1
  %407 = getelementptr inbounds [4 x i8], ptr %b.i1512, i32 0, i32 2
  %408 = getelementptr inbounds [4 x i8], ptr %b.i1512, i32 0, i32 3
  %409 = ptrtoint ptr %b.i1512 to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 0, ptr %b.i1512, align 1
  %410 = ptrtoint ptr %406 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 4, ptr %406, align 1
  %411 = ptrtoint ptr %407 to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 0, ptr %407, align 1
  %412 = ptrtoint ptr %408 to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 1, ptr %408, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1513) #7
  %413 = getelementptr inbounds i8, ptr %msg.i1513, i32 4
  %414 = ptrtoint ptr %413 to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 327679, ptr %413, align 4
  %415 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %config.i1334, align 4
  %conv15.i1515 = zext i8 %416 to i16
  %417 = ptrtoint ptr %msg.i1513 to i32
  call void @__asan_store2_noabort(i32 %417)
  store i16 %conv15.i1515, ptr %msg.i1513, align 4
  %flags.i1516 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1513, i32 0, i32 1
  %418 = ptrtoint ptr %flags.i1516 to i32
  call void @__asan_store2_noabort(i32 %418)
  store i16 0, ptr %flags.i1516, align 2
  %buf.i1518 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1513, i32 0, i32 3
  %419 = ptrtoint ptr %buf.i1518 to i32
  call void @__asan_store4_noabort(i32 %419)
  store ptr %b.i1512, ptr %buf.i1518, align 4
  %420 = load i32, ptr @debug, align 4
  %and16.i1519 = and i32 %420, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1519)
  %tobool.not.i1520 = icmp eq i32 %and16.i1519, 0
  br i1 %tobool.not.i1520, label %do.end494.dib3000_write_reg.exit1526_crit_edge, label %do.end.i1522

do.end494.dib3000_write_reg.exit1526_crit_edge:   ; preds = %do.end494
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1526

do.end.i1522:                                     ; preds = %do.end494
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1521 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 4, i32 noundef 4, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit1526

dib3000_write_reg.exit1526:                       ; preds = %do.end.i1522, %do.end494.dib3000_write_reg.exit1526_crit_edge
  %421 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %1, align 4
  %call25.i1523 = call i32 @i2c_transfer(ptr noundef %422, ptr noundef nonnull %msg.i1513, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1523)
  %cmp.not.i1524 = icmp eq i32 %call25.i1523, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1513) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1512) #7
  br i1 %cmp.not.i1524, label %dib3000_write_reg.exit1526.sw.epilog562_crit_edge, label %do.end500

dib3000_write_reg.exit1526.sw.epilog562_crit_edge: ; preds = %dib3000_write_reg.exit1526
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog562

do.end500:                                        ; preds = %dib3000_write_reg.exit1526
  call void @__sanitizer_cov_trace_pc() #9
  %call502 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 4) #11
  br label %cleanup1069

do.body505:                                       ; preds = %sw.epilog468
  %423 = load i32, ptr @debug, align 4
  %and506 = and i32 %423, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and506)
  %tobool507.not = icmp eq i32 %and506, 0
  br i1 %tobool507.not, label %do.body505.do.end516_crit_edge, label %do.end511

do.body505.do.end516_crit_edge:                   ; preds = %do.body505
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end516

do.end511:                                        ; preds = %do.body505
  call void @__sanitizer_cov_trace_pc() #9
  %call513 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.125) #11
  br label %do.end516

do.end516:                                        ; preds = %do.end511, %do.body505.do.end516_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1527) #7
  %424 = getelementptr inbounds [4 x i8], ptr %b.i1527, i32 0, i32 1
  %425 = getelementptr inbounds [4 x i8], ptr %b.i1527, i32 0, i32 2
  %426 = getelementptr inbounds [4 x i8], ptr %b.i1527, i32 0, i32 3
  %427 = ptrtoint ptr %b.i1527 to i32
  call void @__asan_store1_noabort(i32 %427)
  store i8 0, ptr %b.i1527, align 1
  %428 = ptrtoint ptr %424 to i32
  call void @__asan_store1_noabort(i32 %428)
  store i8 4, ptr %424, align 1
  %429 = ptrtoint ptr %425 to i32
  call void @__asan_store1_noabort(i32 %429)
  store i8 0, ptr %425, align 1
  %430 = ptrtoint ptr %426 to i32
  call void @__asan_store1_noabort(i32 %430)
  store i8 2, ptr %426, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1528) #7
  %431 = getelementptr inbounds i8, ptr %msg.i1528, i32 4
  %432 = ptrtoint ptr %431 to i32
  call void @__asan_store4_noabort(i32 %432)
  store i32 327679, ptr %431, align 4
  %433 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %config.i1334, align 4
  %conv15.i1530 = zext i8 %434 to i16
  %435 = ptrtoint ptr %msg.i1528 to i32
  call void @__asan_store2_noabort(i32 %435)
  store i16 %conv15.i1530, ptr %msg.i1528, align 4
  %flags.i1531 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1528, i32 0, i32 1
  %436 = ptrtoint ptr %flags.i1531 to i32
  call void @__asan_store2_noabort(i32 %436)
  store i16 0, ptr %flags.i1531, align 2
  %buf.i1533 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1528, i32 0, i32 3
  %437 = ptrtoint ptr %buf.i1533 to i32
  call void @__asan_store4_noabort(i32 %437)
  store ptr %b.i1527, ptr %buf.i1533, align 4
  %438 = load i32, ptr @debug, align 4
  %and16.i1534 = and i32 %438, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1534)
  %tobool.not.i1535 = icmp eq i32 %and16.i1534, 0
  br i1 %tobool.not.i1535, label %do.end516.dib3000_write_reg.exit1541_crit_edge, label %do.end.i1537

do.end516.dib3000_write_reg.exit1541_crit_edge:   ; preds = %do.end516
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1541

do.end.i1537:                                     ; preds = %do.end516
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1536 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 4, i32 noundef 4, i32 noundef 2, i32 noundef 2) #11
  br label %dib3000_write_reg.exit1541

dib3000_write_reg.exit1541:                       ; preds = %do.end.i1537, %do.end516.dib3000_write_reg.exit1541_crit_edge
  %439 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %1, align 4
  %call25.i1538 = call i32 @i2c_transfer(ptr noundef %440, ptr noundef nonnull %msg.i1528, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1538)
  %cmp.not.i1539 = icmp eq i32 %call25.i1538, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1528) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1527) #7
  br i1 %cmp.not.i1539, label %dib3000_write_reg.exit1541.sw.epilog562_crit_edge, label %do.end522

dib3000_write_reg.exit1541.sw.epilog562_crit_edge: ; preds = %dib3000_write_reg.exit1541
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog562

do.end522:                                        ; preds = %dib3000_write_reg.exit1541
  call void @__sanitizer_cov_trace_pc() #9
  %call524 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 4) #11
  br label %cleanup1069

do.body527:                                       ; preds = %sw.epilog468
  %441 = load i32, ptr @debug, align 4
  %and528 = and i32 %441, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and528)
  %tobool529.not = icmp eq i32 %and528, 0
  br i1 %tobool529.not, label %do.body527.do.end538_crit_edge, label %do.end533

do.body527.do.end538_crit_edge:                   ; preds = %do.body527
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end538

do.end533:                                        ; preds = %do.body527
  call void @__sanitizer_cov_trace_pc() #9
  %call535 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.125) #11
  br label %do.end538

do.end538:                                        ; preds = %do.end533, %do.body527.do.end538_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1542) #7
  %442 = getelementptr inbounds [4 x i8], ptr %b.i1542, i32 0, i32 1
  %443 = getelementptr inbounds [4 x i8], ptr %b.i1542, i32 0, i32 2
  %444 = getelementptr inbounds [4 x i8], ptr %b.i1542, i32 0, i32 3
  %445 = ptrtoint ptr %b.i1542 to i32
  call void @__asan_store1_noabort(i32 %445)
  store i8 0, ptr %b.i1542, align 1
  %446 = ptrtoint ptr %442 to i32
  call void @__asan_store1_noabort(i32 %446)
  store i8 4, ptr %442, align 1
  %447 = ptrtoint ptr %443 to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 0, ptr %443, align 1
  %448 = ptrtoint ptr %444 to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 4, ptr %444, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1543) #7
  %449 = getelementptr inbounds i8, ptr %msg.i1543, i32 4
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 327679, ptr %449, align 4
  %451 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %451)
  %452 = load i8, ptr %config.i1334, align 4
  %conv15.i1545 = zext i8 %452 to i16
  %453 = ptrtoint ptr %msg.i1543 to i32
  call void @__asan_store2_noabort(i32 %453)
  store i16 %conv15.i1545, ptr %msg.i1543, align 4
  %flags.i1546 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1543, i32 0, i32 1
  %454 = ptrtoint ptr %flags.i1546 to i32
  call void @__asan_store2_noabort(i32 %454)
  store i16 0, ptr %flags.i1546, align 2
  %buf.i1548 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1543, i32 0, i32 3
  %455 = ptrtoint ptr %buf.i1548 to i32
  call void @__asan_store4_noabort(i32 %455)
  store ptr %b.i1542, ptr %buf.i1548, align 4
  %456 = load i32, ptr @debug, align 4
  %and16.i1549 = and i32 %456, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1549)
  %tobool.not.i1550 = icmp eq i32 %and16.i1549, 0
  br i1 %tobool.not.i1550, label %do.end538.dib3000_write_reg.exit1556_crit_edge, label %do.end.i1552

do.end538.dib3000_write_reg.exit1556_crit_edge:   ; preds = %do.end538
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1556

do.end.i1552:                                     ; preds = %do.end538
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1551 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 4, i32 noundef 4, i32 noundef 4, i32 noundef 4) #11
  br label %dib3000_write_reg.exit1556

dib3000_write_reg.exit1556:                       ; preds = %do.end.i1552, %do.end538.dib3000_write_reg.exit1556_crit_edge
  %457 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %1, align 4
  %call25.i1553 = call i32 @i2c_transfer(ptr noundef %458, ptr noundef nonnull %msg.i1543, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1553)
  %cmp.not.i1554 = icmp eq i32 %call25.i1553, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1543) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1542) #7
  br i1 %cmp.not.i1554, label %dib3000_write_reg.exit1556.sw.epilog562_crit_edge, label %do.end544

dib3000_write_reg.exit1556.sw.epilog562_crit_edge: ; preds = %dib3000_write_reg.exit1556
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog562

do.end544:                                        ; preds = %dib3000_write_reg.exit1556
  call void @__sanitizer_cov_trace_pc() #9
  %call546 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 4, i32 noundef 4) #11
  br label %cleanup1069

do.body549:                                       ; preds = %sw.epilog468
  %459 = load i32, ptr @debug, align 4
  %and550 = and i32 %459, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and550)
  %tobool551.not = icmp eq i32 %and550, 0
  br i1 %tobool551.not, label %do.body549.do.body720_crit_edge, label %do.end555

do.body549.do.body720_crit_edge:                  ; preds = %do.body549
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body720

do.end555:                                        ; preds = %do.body549
  call void @__sanitizer_cov_trace_pc() #9
  %call557 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.125) #11
  br label %sw.epilog562

sw.epilog562:                                     ; preds = %do.end555, %dib3000_write_reg.exit1556.sw.epilog562_crit_edge, %dib3000_write_reg.exit1541.sw.epilog562_crit_edge, %dib3000_write_reg.exit1526.sw.epilog562_crit_edge
  %460 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %460)
  %.pr = load i32, ptr %hierarchy, align 4
  %461 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %461, ptr @__sancov_gen_cov_switch_values.435)
  switch i32 %.pr, label %if.then588 [
    i32 0, label %if.then566
    i32 4, label %sw.epilog562.do.body720_crit_edge
  ]

sw.epilog562.do.body720_crit_edge:                ; preds = %sw.epilog562
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body720

if.then566:                                       ; preds = %sw.epilog562
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1557) #7
  %462 = getelementptr inbounds [4 x i8], ptr %b.i1557, i32 0, i32 1
  %463 = getelementptr inbounds [4 x i8], ptr %b.i1557, i32 0, i32 2
  %464 = getelementptr inbounds [4 x i8], ptr %b.i1557, i32 0, i32 3
  %465 = ptrtoint ptr %b.i1557 to i32
  call void @__asan_store1_noabort(i32 %465)
  store i8 0, ptr %b.i1557, align 1
  %466 = ptrtoint ptr %462 to i32
  call void @__asan_store1_noabort(i32 %466)
  store i8 -128, ptr %462, align 1
  %467 = ptrtoint ptr %463 to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 0, ptr %463, align 1
  %468 = ptrtoint ptr %464 to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 0, ptr %464, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1558) #7
  %469 = getelementptr inbounds i8, ptr %msg.i1558, i32 4
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 327679, ptr %469, align 4
  %471 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %config.i1334, align 4
  %conv15.i1560 = zext i8 %472 to i16
  %473 = ptrtoint ptr %msg.i1558 to i32
  call void @__asan_store2_noabort(i32 %473)
  store i16 %conv15.i1560, ptr %msg.i1558, align 4
  %flags.i1561 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1558, i32 0, i32 1
  %474 = ptrtoint ptr %flags.i1561 to i32
  call void @__asan_store2_noabort(i32 %474)
  store i16 0, ptr %flags.i1561, align 2
  %buf.i1563 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1558, i32 0, i32 3
  %475 = ptrtoint ptr %buf.i1563 to i32
  call void @__asan_store4_noabort(i32 %475)
  store ptr %b.i1557, ptr %buf.i1563, align 4
  %476 = load i32, ptr @debug, align 4
  %and16.i1564 = and i32 %476, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1564)
  %tobool.not.i1565 = icmp eq i32 %and16.i1564, 0
  br i1 %tobool.not.i1565, label %if.then566.dib3000_write_reg.exit1571_crit_edge, label %do.end.i1567

if.then566.dib3000_write_reg.exit1571_crit_edge:  ; preds = %if.then566
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1571

do.end.i1567:                                     ; preds = %if.then566
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1566 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 128, i32 noundef 128, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit1571

dib3000_write_reg.exit1571:                       ; preds = %do.end.i1567, %if.then566.dib3000_write_reg.exit1571_crit_edge
  %477 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %1, align 4
  %call25.i1568 = call i32 @i2c_transfer(ptr noundef %478, ptr noundef nonnull %msg.i1558, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1568)
  %cmp.not.i1569 = icmp eq i32 %call25.i1568, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1558) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1557) #7
  br i1 %cmp.not.i1569, label %if.end575, label %do.end572

do.end572:                                        ; preds = %dib3000_write_reg.exit1571
  call void @__sanitizer_cov_trace_pc() #9
  %call574 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 128) #11
  br label %cleanup1069

if.end575:                                        ; preds = %dib3000_write_reg.exit1571
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1572) #7
  %479 = getelementptr inbounds [4 x i8], ptr %b.i1572, i32 0, i32 1
  %480 = getelementptr inbounds [4 x i8], ptr %b.i1572, i32 0, i32 2
  %481 = getelementptr inbounds [4 x i8], ptr %b.i1572, i32 0, i32 3
  %482 = ptrtoint ptr %b.i1572 to i32
  call void @__asan_store1_noabort(i32 %482)
  store i8 0, ptr %b.i1572, align 1
  %483 = ptrtoint ptr %479 to i32
  call void @__asan_store1_noabort(i32 %483)
  store i8 -126, ptr %479, align 1
  %484 = ptrtoint ptr %480 to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 0, ptr %480, align 1
  %485 = ptrtoint ptr %481 to i32
  call void @__asan_store1_noabort(i32 %485)
  store i8 1, ptr %481, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1573) #7
  %486 = getelementptr inbounds i8, ptr %msg.i1573, i32 4
  %487 = ptrtoint ptr %486 to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 327679, ptr %486, align 4
  %488 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %config.i1334, align 4
  %conv15.i1575 = zext i8 %489 to i16
  %490 = ptrtoint ptr %msg.i1573 to i32
  call void @__asan_store2_noabort(i32 %490)
  store i16 %conv15.i1575, ptr %msg.i1573, align 4
  %flags.i1576 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1573, i32 0, i32 1
  %491 = ptrtoint ptr %flags.i1576 to i32
  call void @__asan_store2_noabort(i32 %491)
  store i16 0, ptr %flags.i1576, align 2
  %buf.i1578 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1573, i32 0, i32 3
  %492 = ptrtoint ptr %buf.i1578 to i32
  call void @__asan_store4_noabort(i32 %492)
  store ptr %b.i1572, ptr %buf.i1578, align 4
  %493 = load i32, ptr @debug, align 4
  %and16.i1579 = and i32 %493, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1579)
  %tobool.not.i1580 = icmp eq i32 %and16.i1579, 0
  br i1 %tobool.not.i1580, label %if.end575.dib3000_write_reg.exit1586_crit_edge, label %do.end.i1582

if.end575.dib3000_write_reg.exit1586_crit_edge:   ; preds = %if.end575
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1586

do.end.i1582:                                     ; preds = %if.end575
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1581 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 130, i32 noundef 130, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit1586

dib3000_write_reg.exit1586:                       ; preds = %do.end.i1582, %if.end575.dib3000_write_reg.exit1586_crit_edge
  %494 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %1, align 4
  %call25.i1583 = call i32 @i2c_transfer(ptr noundef %495, ptr noundef nonnull %msg.i1573, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1583)
  %cmp.not.i1584 = icmp eq i32 %call25.i1583, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1573) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1572) #7
  br i1 %cmp.not.i1584, label %if.end584, label %do.end581

do.end581:                                        ; preds = %dib3000_write_reg.exit1586
  call void @__sanitizer_cov_trace_pc() #9
  %call583 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 130) #11
  br label %cleanup1069

if.end584:                                        ; preds = %dib3000_write_reg.exit1586
  call void @__sanitizer_cov_trace_pc() #9
  %code_rate_HP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  br label %if.end608

if.then588:                                       ; preds = %sw.epilog562
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1587) #7
  %496 = getelementptr inbounds [4 x i8], ptr %b.i1587, i32 0, i32 1
  %497 = getelementptr inbounds [4 x i8], ptr %b.i1587, i32 0, i32 2
  %498 = getelementptr inbounds [4 x i8], ptr %b.i1587, i32 0, i32 3
  %499 = ptrtoint ptr %b.i1587 to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 0, ptr %b.i1587, align 1
  %500 = ptrtoint ptr %496 to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 -128, ptr %496, align 1
  %501 = ptrtoint ptr %497 to i32
  call void @__asan_store1_noabort(i32 %501)
  store i8 0, ptr %497, align 1
  %502 = ptrtoint ptr %498 to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 1, ptr %498, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1588) #7
  %503 = getelementptr inbounds i8, ptr %msg.i1588, i32 4
  %504 = ptrtoint ptr %503 to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 327679, ptr %503, align 4
  %505 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %config.i1334, align 4
  %conv15.i1590 = zext i8 %506 to i16
  %507 = ptrtoint ptr %msg.i1588 to i32
  call void @__asan_store2_noabort(i32 %507)
  store i16 %conv15.i1590, ptr %msg.i1588, align 4
  %flags.i1591 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1588, i32 0, i32 1
  %508 = ptrtoint ptr %flags.i1591 to i32
  call void @__asan_store2_noabort(i32 %508)
  store i16 0, ptr %flags.i1591, align 2
  %buf.i1593 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1588, i32 0, i32 3
  %509 = ptrtoint ptr %buf.i1593 to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr %b.i1587, ptr %buf.i1593, align 4
  %510 = load i32, ptr @debug, align 4
  %and16.i1594 = and i32 %510, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1594)
  %tobool.not.i1595 = icmp eq i32 %and16.i1594, 0
  br i1 %tobool.not.i1595, label %if.then588.dib3000_write_reg.exit1601_crit_edge, label %do.end.i1597

if.then588.dib3000_write_reg.exit1601_crit_edge:  ; preds = %if.then588
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1601

do.end.i1597:                                     ; preds = %if.then588
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1596 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 128, i32 noundef 128, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit1601

dib3000_write_reg.exit1601:                       ; preds = %do.end.i1597, %if.then588.dib3000_write_reg.exit1601_crit_edge
  %511 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %1, align 4
  %call25.i1598 = call i32 @i2c_transfer(ptr noundef %512, ptr noundef nonnull %msg.i1588, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1598)
  %cmp.not.i1599 = icmp eq i32 %call25.i1598, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1588) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1587) #7
  br i1 %cmp.not.i1599, label %if.end597, label %do.end594

do.end594:                                        ; preds = %dib3000_write_reg.exit1601
  call void @__sanitizer_cov_trace_pc() #9
  %call596 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 128) #11
  br label %cleanup1069

if.end597:                                        ; preds = %dib3000_write_reg.exit1601
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1602) #7
  %513 = getelementptr inbounds [4 x i8], ptr %b.i1602, i32 0, i32 1
  %514 = getelementptr inbounds [4 x i8], ptr %b.i1602, i32 0, i32 2
  %515 = getelementptr inbounds [4 x i8], ptr %b.i1602, i32 0, i32 3
  %516 = ptrtoint ptr %b.i1602 to i32
  call void @__asan_store1_noabort(i32 %516)
  store i8 0, ptr %b.i1602, align 1
  %517 = ptrtoint ptr %513 to i32
  call void @__asan_store1_noabort(i32 %517)
  store i8 -126, ptr %513, align 1
  %518 = ptrtoint ptr %514 to i32
  call void @__asan_store1_noabort(i32 %518)
  store i8 0, ptr %514, align 1
  %519 = ptrtoint ptr %515 to i32
  call void @__asan_store1_noabort(i32 %519)
  store i8 0, ptr %515, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1603) #7
  %520 = getelementptr inbounds i8, ptr %msg.i1603, i32 4
  %521 = ptrtoint ptr %520 to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 327679, ptr %520, align 4
  %522 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %config.i1334, align 4
  %conv15.i1605 = zext i8 %523 to i16
  %524 = ptrtoint ptr %msg.i1603 to i32
  call void @__asan_store2_noabort(i32 %524)
  store i16 %conv15.i1605, ptr %msg.i1603, align 4
  %flags.i1606 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1603, i32 0, i32 1
  %525 = ptrtoint ptr %flags.i1606 to i32
  call void @__asan_store2_noabort(i32 %525)
  store i16 0, ptr %flags.i1606, align 2
  %buf.i1608 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1603, i32 0, i32 3
  %526 = ptrtoint ptr %buf.i1608 to i32
  call void @__asan_store4_noabort(i32 %526)
  store ptr %b.i1602, ptr %buf.i1608, align 4
  %527 = load i32, ptr @debug, align 4
  %and16.i1609 = and i32 %527, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1609)
  %tobool.not.i1610 = icmp eq i32 %and16.i1609, 0
  br i1 %tobool.not.i1610, label %if.end597.dib3000_write_reg.exit1616_crit_edge, label %do.end.i1612

if.end597.dib3000_write_reg.exit1616_crit_edge:   ; preds = %if.end597
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1616

do.end.i1612:                                     ; preds = %if.end597
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1611 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 130, i32 noundef 130, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit1616

dib3000_write_reg.exit1616:                       ; preds = %do.end.i1612, %if.end597.dib3000_write_reg.exit1616_crit_edge
  %528 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %1, align 4
  %call25.i1613 = call i32 @i2c_transfer(ptr noundef %529, ptr noundef nonnull %msg.i1603, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1613)
  %cmp.not.i1614 = icmp eq i32 %call25.i1613, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1603) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1602) #7
  br i1 %cmp.not.i1614, label %if.end606, label %do.end603

do.end603:                                        ; preds = %dib3000_write_reg.exit1616
  call void @__sanitizer_cov_trace_pc() #9
  %call605 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 130) #11
  br label %cleanup1069

if.end606:                                        ; preds = %dib3000_write_reg.exit1616
  call void @__sanitizer_cov_trace_pc() #9
  %code_rate_LP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 12
  br label %if.end608

if.end608:                                        ; preds = %if.end606, %if.end584
  %fe_cr.0.in = phi ptr [ %code_rate_HP, %if.end584 ], [ %code_rate_LP, %if.end606 ]
  %530 = ptrtoint ptr %fe_cr.0.in to i32
  call void @__asan_load4_noabort(i32 %530)
  %fe_cr.0 = load i32, ptr %fe_cr.0.in, align 4
  %531 = zext i32 %fe_cr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %531, ptr @__sancov_gen_cov_switch_values.436)
  switch i32 %fe_cr.0, label %if.end608.cleanup1069_crit_edge [
    i32 1, label %do.body610
    i32 2, label %do.body632
    i32 3, label %do.body654
    i32 5, label %do.body676
    i32 7, label %do.body698
    i32 0, label %if.end608.do.body720_crit_edge
    i32 9, label %do.body733
  ]

if.end608.do.body720_crit_edge:                   ; preds = %if.end608
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body720

if.end608.cleanup1069_crit_edge:                  ; preds = %if.end608
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup1069

do.body610:                                       ; preds = %if.end608
  %532 = load i32, ptr @debug, align 4
  %and611 = and i32 %532, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and611)
  %tobool612.not = icmp eq i32 %and611, 0
  br i1 %tobool612.not, label %do.body610.do.end621_crit_edge, label %do.end616

do.body610.do.end621_crit_edge:                   ; preds = %do.body610
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end621

do.end616:                                        ; preds = %do.body610
  call void @__sanitizer_cov_trace_pc() #9
  %call618 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.125) #11
  br label %do.end621

do.end621:                                        ; preds = %do.end616, %do.body610.do.end621_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1617) #7
  %533 = getelementptr inbounds [4 x i8], ptr %b.i1617, i32 0, i32 1
  %534 = getelementptr inbounds [4 x i8], ptr %b.i1617, i32 0, i32 2
  %535 = getelementptr inbounds [4 x i8], ptr %b.i1617, i32 0, i32 3
  %536 = ptrtoint ptr %b.i1617 to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 0, ptr %b.i1617, align 1
  %537 = ptrtoint ptr %533 to i32
  call void @__asan_store1_noabort(i32 %537)
  store i8 -127, ptr %533, align 1
  %538 = ptrtoint ptr %534 to i32
  call void @__asan_store1_noabort(i32 %538)
  store i8 0, ptr %534, align 1
  %539 = ptrtoint ptr %535 to i32
  call void @__asan_store1_noabort(i32 %539)
  store i8 1, ptr %535, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1618) #7
  %540 = getelementptr inbounds i8, ptr %msg.i1618, i32 4
  %541 = ptrtoint ptr %540 to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 327679, ptr %540, align 4
  %542 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %config.i1334, align 4
  %conv15.i1620 = zext i8 %543 to i16
  %544 = ptrtoint ptr %msg.i1618 to i32
  call void @__asan_store2_noabort(i32 %544)
  store i16 %conv15.i1620, ptr %msg.i1618, align 4
  %flags.i1621 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1618, i32 0, i32 1
  %545 = ptrtoint ptr %flags.i1621 to i32
  call void @__asan_store2_noabort(i32 %545)
  store i16 0, ptr %flags.i1621, align 2
  %buf.i1623 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1618, i32 0, i32 3
  %546 = ptrtoint ptr %buf.i1623 to i32
  call void @__asan_store4_noabort(i32 %546)
  store ptr %b.i1617, ptr %buf.i1623, align 4
  %547 = load i32, ptr @debug, align 4
  %and16.i1624 = and i32 %547, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1624)
  %tobool.not.i1625 = icmp eq i32 %and16.i1624, 0
  br i1 %tobool.not.i1625, label %do.end621.dib3000_write_reg.exit1631_crit_edge, label %do.end.i1627

do.end621.dib3000_write_reg.exit1631_crit_edge:   ; preds = %do.end621
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1631

do.end.i1627:                                     ; preds = %do.end621
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1626 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 129, i32 noundef 129, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit1631

dib3000_write_reg.exit1631:                       ; preds = %do.end.i1627, %do.end621.dib3000_write_reg.exit1631_crit_edge
  %548 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %1, align 4
  %call25.i1628 = call i32 @i2c_transfer(ptr noundef %549, ptr noundef nonnull %msg.i1618, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1628)
  %cmp.not.i1629 = icmp eq i32 %call25.i1628, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1618) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1617) #7
  br i1 %cmp.not.i1629, label %dib3000_write_reg.exit1631.sw.epilog746_crit_edge, label %do.end627

dib3000_write_reg.exit1631.sw.epilog746_crit_edge: ; preds = %dib3000_write_reg.exit1631
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog746

do.end627:                                        ; preds = %dib3000_write_reg.exit1631
  call void @__sanitizer_cov_trace_pc() #9
  %call629 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 129) #11
  br label %cleanup1069

do.body632:                                       ; preds = %if.end608
  %550 = load i32, ptr @debug, align 4
  %and633 = and i32 %550, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and633)
  %tobool634.not = icmp eq i32 %and633, 0
  br i1 %tobool634.not, label %do.body632.do.end643_crit_edge, label %do.end638

do.body632.do.end643_crit_edge:                   ; preds = %do.body632
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end643

do.end638:                                        ; preds = %do.body632
  call void @__sanitizer_cov_trace_pc() #9
  %call640 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.125) #11
  br label %do.end643

do.end643:                                        ; preds = %do.end638, %do.body632.do.end643_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1632) #7
  %551 = getelementptr inbounds [4 x i8], ptr %b.i1632, i32 0, i32 1
  %552 = getelementptr inbounds [4 x i8], ptr %b.i1632, i32 0, i32 2
  %553 = getelementptr inbounds [4 x i8], ptr %b.i1632, i32 0, i32 3
  %554 = ptrtoint ptr %b.i1632 to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 0, ptr %b.i1632, align 1
  %555 = ptrtoint ptr %551 to i32
  call void @__asan_store1_noabort(i32 %555)
  store i8 -127, ptr %551, align 1
  %556 = ptrtoint ptr %552 to i32
  call void @__asan_store1_noabort(i32 %556)
  store i8 0, ptr %552, align 1
  %557 = ptrtoint ptr %553 to i32
  call void @__asan_store1_noabort(i32 %557)
  store i8 2, ptr %553, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1633) #7
  %558 = getelementptr inbounds i8, ptr %msg.i1633, i32 4
  %559 = ptrtoint ptr %558 to i32
  call void @__asan_store4_noabort(i32 %559)
  store i32 327679, ptr %558, align 4
  %560 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %config.i1334, align 4
  %conv15.i1635 = zext i8 %561 to i16
  %562 = ptrtoint ptr %msg.i1633 to i32
  call void @__asan_store2_noabort(i32 %562)
  store i16 %conv15.i1635, ptr %msg.i1633, align 4
  %flags.i1636 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1633, i32 0, i32 1
  %563 = ptrtoint ptr %flags.i1636 to i32
  call void @__asan_store2_noabort(i32 %563)
  store i16 0, ptr %flags.i1636, align 2
  %buf.i1638 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1633, i32 0, i32 3
  %564 = ptrtoint ptr %buf.i1638 to i32
  call void @__asan_store4_noabort(i32 %564)
  store ptr %b.i1632, ptr %buf.i1638, align 4
  %565 = load i32, ptr @debug, align 4
  %and16.i1639 = and i32 %565, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1639)
  %tobool.not.i1640 = icmp eq i32 %and16.i1639, 0
  br i1 %tobool.not.i1640, label %do.end643.dib3000_write_reg.exit1646_crit_edge, label %do.end.i1642

do.end643.dib3000_write_reg.exit1646_crit_edge:   ; preds = %do.end643
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1646

do.end.i1642:                                     ; preds = %do.end643
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1641 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 129, i32 noundef 129, i32 noundef 2, i32 noundef 2) #11
  br label %dib3000_write_reg.exit1646

dib3000_write_reg.exit1646:                       ; preds = %do.end.i1642, %do.end643.dib3000_write_reg.exit1646_crit_edge
  %566 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %1, align 4
  %call25.i1643 = call i32 @i2c_transfer(ptr noundef %567, ptr noundef nonnull %msg.i1633, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1643)
  %cmp.not.i1644 = icmp eq i32 %call25.i1643, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1633) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1632) #7
  br i1 %cmp.not.i1644, label %dib3000_write_reg.exit1646.sw.epilog746_crit_edge, label %do.end649

dib3000_write_reg.exit1646.sw.epilog746_crit_edge: ; preds = %dib3000_write_reg.exit1646
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog746

do.end649:                                        ; preds = %dib3000_write_reg.exit1646
  call void @__sanitizer_cov_trace_pc() #9
  %call651 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 129) #11
  br label %cleanup1069

do.body654:                                       ; preds = %if.end608
  %568 = load i32, ptr @debug, align 4
  %and655 = and i32 %568, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and655)
  %tobool656.not = icmp eq i32 %and655, 0
  br i1 %tobool656.not, label %do.body654.do.end665_crit_edge, label %do.end660

do.body654.do.end665_crit_edge:                   ; preds = %do.body654
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end665

do.end660:                                        ; preds = %do.body654
  call void @__sanitizer_cov_trace_pc() #9
  %call662 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.125) #11
  br label %do.end665

do.end665:                                        ; preds = %do.end660, %do.body654.do.end665_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1647) #7
  %569 = getelementptr inbounds [4 x i8], ptr %b.i1647, i32 0, i32 1
  %570 = getelementptr inbounds [4 x i8], ptr %b.i1647, i32 0, i32 2
  %571 = getelementptr inbounds [4 x i8], ptr %b.i1647, i32 0, i32 3
  %572 = ptrtoint ptr %b.i1647 to i32
  call void @__asan_store1_noabort(i32 %572)
  store i8 0, ptr %b.i1647, align 1
  %573 = ptrtoint ptr %569 to i32
  call void @__asan_store1_noabort(i32 %573)
  store i8 -127, ptr %569, align 1
  %574 = ptrtoint ptr %570 to i32
  call void @__asan_store1_noabort(i32 %574)
  store i8 0, ptr %570, align 1
  %575 = ptrtoint ptr %571 to i32
  call void @__asan_store1_noabort(i32 %575)
  store i8 3, ptr %571, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1648) #7
  %576 = getelementptr inbounds i8, ptr %msg.i1648, i32 4
  %577 = ptrtoint ptr %576 to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 327679, ptr %576, align 4
  %578 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %config.i1334, align 4
  %conv15.i1650 = zext i8 %579 to i16
  %580 = ptrtoint ptr %msg.i1648 to i32
  call void @__asan_store2_noabort(i32 %580)
  store i16 %conv15.i1650, ptr %msg.i1648, align 4
  %flags.i1651 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1648, i32 0, i32 1
  %581 = ptrtoint ptr %flags.i1651 to i32
  call void @__asan_store2_noabort(i32 %581)
  store i16 0, ptr %flags.i1651, align 2
  %buf.i1653 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1648, i32 0, i32 3
  %582 = ptrtoint ptr %buf.i1653 to i32
  call void @__asan_store4_noabort(i32 %582)
  store ptr %b.i1647, ptr %buf.i1653, align 4
  %583 = load i32, ptr @debug, align 4
  %and16.i1654 = and i32 %583, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1654)
  %tobool.not.i1655 = icmp eq i32 %and16.i1654, 0
  br i1 %tobool.not.i1655, label %do.end665.dib3000_write_reg.exit1661_crit_edge, label %do.end.i1657

do.end665.dib3000_write_reg.exit1661_crit_edge:   ; preds = %do.end665
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1661

do.end.i1657:                                     ; preds = %do.end665
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1656 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 129, i32 noundef 129, i32 noundef 3, i32 noundef 3) #11
  br label %dib3000_write_reg.exit1661

dib3000_write_reg.exit1661:                       ; preds = %do.end.i1657, %do.end665.dib3000_write_reg.exit1661_crit_edge
  %584 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %1, align 4
  %call25.i1658 = call i32 @i2c_transfer(ptr noundef %585, ptr noundef nonnull %msg.i1648, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1658)
  %cmp.not.i1659 = icmp eq i32 %call25.i1658, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1648) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1647) #7
  br i1 %cmp.not.i1659, label %dib3000_write_reg.exit1661.sw.epilog746_crit_edge, label %do.end671

dib3000_write_reg.exit1661.sw.epilog746_crit_edge: ; preds = %dib3000_write_reg.exit1661
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog746

do.end671:                                        ; preds = %dib3000_write_reg.exit1661
  call void @__sanitizer_cov_trace_pc() #9
  %call673 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef 129) #11
  br label %cleanup1069

do.body676:                                       ; preds = %if.end608
  %586 = load i32, ptr @debug, align 4
  %and677 = and i32 %586, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and677)
  %tobool678.not = icmp eq i32 %and677, 0
  br i1 %tobool678.not, label %do.body676.do.end687_crit_edge, label %do.end682

do.body676.do.end687_crit_edge:                   ; preds = %do.body676
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end687

do.end682:                                        ; preds = %do.body676
  call void @__sanitizer_cov_trace_pc() #9
  %call684 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.125) #11
  br label %do.end687

do.end687:                                        ; preds = %do.end682, %do.body676.do.end687_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1662) #7
  %587 = getelementptr inbounds [4 x i8], ptr %b.i1662, i32 0, i32 1
  %588 = getelementptr inbounds [4 x i8], ptr %b.i1662, i32 0, i32 2
  %589 = getelementptr inbounds [4 x i8], ptr %b.i1662, i32 0, i32 3
  %590 = ptrtoint ptr %b.i1662 to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 0, ptr %b.i1662, align 1
  %591 = ptrtoint ptr %587 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 -127, ptr %587, align 1
  %592 = ptrtoint ptr %588 to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 0, ptr %588, align 1
  %593 = ptrtoint ptr %589 to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 5, ptr %589, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1663) #7
  %594 = getelementptr inbounds i8, ptr %msg.i1663, i32 4
  %595 = ptrtoint ptr %594 to i32
  call void @__asan_store4_noabort(i32 %595)
  store i32 327679, ptr %594, align 4
  %596 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %596)
  %597 = load i8, ptr %config.i1334, align 4
  %conv15.i1665 = zext i8 %597 to i16
  %598 = ptrtoint ptr %msg.i1663 to i32
  call void @__asan_store2_noabort(i32 %598)
  store i16 %conv15.i1665, ptr %msg.i1663, align 4
  %flags.i1666 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1663, i32 0, i32 1
  %599 = ptrtoint ptr %flags.i1666 to i32
  call void @__asan_store2_noabort(i32 %599)
  store i16 0, ptr %flags.i1666, align 2
  %buf.i1668 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1663, i32 0, i32 3
  %600 = ptrtoint ptr %buf.i1668 to i32
  call void @__asan_store4_noabort(i32 %600)
  store ptr %b.i1662, ptr %buf.i1668, align 4
  %601 = load i32, ptr @debug, align 4
  %and16.i1669 = and i32 %601, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1669)
  %tobool.not.i1670 = icmp eq i32 %and16.i1669, 0
  br i1 %tobool.not.i1670, label %do.end687.dib3000_write_reg.exit1676_crit_edge, label %do.end.i1672

do.end687.dib3000_write_reg.exit1676_crit_edge:   ; preds = %do.end687
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1676

do.end.i1672:                                     ; preds = %do.end687
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1671 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 129, i32 noundef 129, i32 noundef 5, i32 noundef 5) #11
  br label %dib3000_write_reg.exit1676

dib3000_write_reg.exit1676:                       ; preds = %do.end.i1672, %do.end687.dib3000_write_reg.exit1676_crit_edge
  %602 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %1, align 4
  %call25.i1673 = call i32 @i2c_transfer(ptr noundef %603, ptr noundef nonnull %msg.i1663, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1673)
  %cmp.not.i1674 = icmp eq i32 %call25.i1673, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1663) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1662) #7
  br i1 %cmp.not.i1674, label %dib3000_write_reg.exit1676.sw.epilog746_crit_edge, label %do.end693

dib3000_write_reg.exit1676.sw.epilog746_crit_edge: ; preds = %dib3000_write_reg.exit1676
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog746

do.end693:                                        ; preds = %dib3000_write_reg.exit1676
  call void @__sanitizer_cov_trace_pc() #9
  %call695 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 5, i32 noundef 129) #11
  br label %cleanup1069

do.body698:                                       ; preds = %if.end608
  %604 = load i32, ptr @debug, align 4
  %and699 = and i32 %604, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and699)
  %tobool700.not = icmp eq i32 %and699, 0
  br i1 %tobool700.not, label %do.body698.do.end709_crit_edge, label %do.end704

do.body698.do.end709_crit_edge:                   ; preds = %do.body698
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end709

do.end704:                                        ; preds = %do.body698
  call void @__sanitizer_cov_trace_pc() #9
  %call706 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.125) #11
  br label %do.end709

do.end709:                                        ; preds = %do.end704, %do.body698.do.end709_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1677) #7
  %605 = getelementptr inbounds [4 x i8], ptr %b.i1677, i32 0, i32 1
  %606 = getelementptr inbounds [4 x i8], ptr %b.i1677, i32 0, i32 2
  %607 = getelementptr inbounds [4 x i8], ptr %b.i1677, i32 0, i32 3
  %608 = ptrtoint ptr %b.i1677 to i32
  call void @__asan_store1_noabort(i32 %608)
  store i8 0, ptr %b.i1677, align 1
  %609 = ptrtoint ptr %605 to i32
  call void @__asan_store1_noabort(i32 %609)
  store i8 -127, ptr %605, align 1
  %610 = ptrtoint ptr %606 to i32
  call void @__asan_store1_noabort(i32 %610)
  store i8 0, ptr %606, align 1
  %611 = ptrtoint ptr %607 to i32
  call void @__asan_store1_noabort(i32 %611)
  store i8 7, ptr %607, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1678) #7
  %612 = getelementptr inbounds i8, ptr %msg.i1678, i32 4
  %613 = ptrtoint ptr %612 to i32
  call void @__asan_store4_noabort(i32 %613)
  store i32 327679, ptr %612, align 4
  %614 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %614)
  %615 = load i8, ptr %config.i1334, align 4
  %conv15.i1680 = zext i8 %615 to i16
  %616 = ptrtoint ptr %msg.i1678 to i32
  call void @__asan_store2_noabort(i32 %616)
  store i16 %conv15.i1680, ptr %msg.i1678, align 4
  %flags.i1681 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1678, i32 0, i32 1
  %617 = ptrtoint ptr %flags.i1681 to i32
  call void @__asan_store2_noabort(i32 %617)
  store i16 0, ptr %flags.i1681, align 2
  %buf.i1683 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1678, i32 0, i32 3
  %618 = ptrtoint ptr %buf.i1683 to i32
  call void @__asan_store4_noabort(i32 %618)
  store ptr %b.i1677, ptr %buf.i1683, align 4
  %619 = load i32, ptr @debug, align 4
  %and16.i1684 = and i32 %619, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1684)
  %tobool.not.i1685 = icmp eq i32 %and16.i1684, 0
  br i1 %tobool.not.i1685, label %do.end709.dib3000_write_reg.exit1691_crit_edge, label %do.end.i1687

do.end709.dib3000_write_reg.exit1691_crit_edge:   ; preds = %do.end709
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1691

do.end.i1687:                                     ; preds = %do.end709
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1686 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 129, i32 noundef 129, i32 noundef 7, i32 noundef 7) #11
  br label %dib3000_write_reg.exit1691

dib3000_write_reg.exit1691:                       ; preds = %do.end.i1687, %do.end709.dib3000_write_reg.exit1691_crit_edge
  %620 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %1, align 4
  %call25.i1688 = call i32 @i2c_transfer(ptr noundef %621, ptr noundef nonnull %msg.i1678, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1688)
  %cmp.not.i1689 = icmp eq i32 %call25.i1688, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1678) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1677) #7
  br i1 %cmp.not.i1689, label %dib3000_write_reg.exit1691.sw.epilog746_crit_edge, label %do.end715

dib3000_write_reg.exit1691.sw.epilog746_crit_edge: ; preds = %dib3000_write_reg.exit1691
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog746

do.end715:                                        ; preds = %dib3000_write_reg.exit1691
  call void @__sanitizer_cov_trace_pc() #9
  %call717 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 7, i32 noundef 129) #11
  br label %cleanup1069

do.body720:                                       ; preds = %if.end608.do.body720_crit_edge, %sw.epilog562.do.body720_crit_edge, %do.body549.do.body720_crit_edge
  %622 = load i32, ptr @debug, align 4
  %and721 = and i32 %622, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and721)
  %tobool722.not = icmp eq i32 %and721, 0
  br i1 %tobool722.not, label %do.body720.sw.epilog746_crit_edge, label %do.body720.sw.epilog746.sink.split_crit_edge

do.body720.sw.epilog746.sink.split_crit_edge:     ; preds = %do.body720
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog746.sink.split

do.body720.sw.epilog746_crit_edge:                ; preds = %do.body720
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog746

do.body733:                                       ; preds = %if.end608
  %623 = load i32, ptr @debug, align 4
  %and734 = and i32 %623, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and734)
  %tobool735.not = icmp eq i32 %and734, 0
  br i1 %tobool735.not, label %do.body733.sw.epilog746_crit_edge, label %do.body733.sw.epilog746.sink.split_crit_edge

do.body733.sw.epilog746.sink.split_crit_edge:     ; preds = %do.body733
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog746.sink.split

do.body733.sw.epilog746_crit_edge:                ; preds = %do.body733
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog746

sw.epilog746.sink.split:                          ; preds = %do.body733.sw.epilog746.sink.split_crit_edge, %do.body720.sw.epilog746.sink.split_crit_edge
  %.str.266.sink = phi ptr [ @.str.263, %do.body720.sw.epilog746.sink.split_crit_edge ], [ @.str.266, %do.body733.sw.epilog746.sink.split_crit_edge ]
  %cmp956.ph = phi i1 [ false, %do.body720.sw.epilog746.sink.split_crit_edge ], [ true, %do.body733.sw.epilog746.sink.split_crit_edge ]
  %call741 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.266.sink, ptr noundef nonnull @.str.125) #11
  br label %sw.epilog746

sw.epilog746:                                     ; preds = %sw.epilog746.sink.split, %do.body733.sw.epilog746_crit_edge, %do.body720.sw.epilog746_crit_edge, %dib3000_write_reg.exit1691.sw.epilog746_crit_edge, %dib3000_write_reg.exit1676.sw.epilog746_crit_edge, %dib3000_write_reg.exit1661.sw.epilog746_crit_edge, %dib3000_write_reg.exit1646.sw.epilog746_crit_edge, %dib3000_write_reg.exit1631.sw.epilog746_crit_edge
  %cmp956 = phi i1 [ true, %do.body733.sw.epilog746_crit_edge ], [ false, %do.body720.sw.epilog746_crit_edge ], [ false, %dib3000_write_reg.exit1691.sw.epilog746_crit_edge ], [ false, %dib3000_write_reg.exit1676.sw.epilog746_crit_edge ], [ false, %dib3000_write_reg.exit1661.sw.epilog746_crit_edge ], [ false, %dib3000_write_reg.exit1646.sw.epilog746_crit_edge ], [ false, %dib3000_write_reg.exit1631.sw.epilog746_crit_edge ], [ %cmp956.ph, %sw.epilog746.sink.split ]
  %624 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load i32, ptr %transmission_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %625)
  %cmp748 = icmp eq i32 %625, 2
  %conv749 = zext i1 %cmp748 to i32
  %626 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %guard_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %627)
  %cmp752 = icmp eq i32 %627, 4
  %conv753 = zext i1 %cmp752 to i32
  %628 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %inversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %629)
  %cmp756 = icmp eq i32 %629, 2
  %conv757 = zext i1 %cmp756 to i32
  %arrayidx758 = getelementptr [2 x [2 x [2 x i16]]], ptr @dib3000_seq, i32 0, i32 %conv749, i32 %conv753, i32 %conv757
  %630 = ptrtoint ptr %arrayidx758 to i32
  call void @__asan_load2_noabort(i32 %630)
  %631 = load i16, ptr %arrayidx758, align 2
  %conv759 = zext i16 %631 to i32
  %632 = load i32, ptr @debug, align 4
  %and761 = and i32 %632, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and761)
  %tobool762.not = icmp eq i32 %and761, 0
  br i1 %tobool762.not, label %sw.epilog746.do.end771_crit_edge, label %do.end766

sw.epilog746.do.end771_crit_edge:                 ; preds = %sw.epilog746
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end771

do.end766:                                        ; preds = %sw.epilog746
  call void @__sanitizer_cov_trace_pc() #9
  %call768 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, ptr noundef nonnull @.str.125, i32 noundef %conv759) #11
  br label %do.end771

do.end771:                                        ; preds = %do.end766, %sw.epilog746.do.end771_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1692) #7
  %633 = getelementptr inbounds [4 x i8], ptr %b.i1692, i32 0, i32 1
  %634 = getelementptr inbounds [4 x i8], ptr %b.i1692, i32 0, i32 2
  %635 = getelementptr inbounds [4 x i8], ptr %b.i1692, i32 0, i32 3
  %636 = ptrtoint ptr %b.i1692 to i32
  call void @__asan_store1_noabort(i32 %636)
  store i8 0, ptr %b.i1692, align 1
  %637 = ptrtoint ptr %633 to i32
  call void @__asan_store1_noabort(i32 %637)
  store i8 54, ptr %633, align 1
  %638 = lshr i16 %631, 8
  %conv9.i1694 = trunc i16 %638 to i8
  %639 = ptrtoint ptr %634 to i32
  call void @__asan_store1_noabort(i32 %639)
  store i8 %conv9.i1694, ptr %634, align 1
  %conv13.i1695 = trunc i16 %631 to i8
  %640 = ptrtoint ptr %635 to i32
  call void @__asan_store1_noabort(i32 %640)
  store i8 %conv13.i1695, ptr %635, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1693) #7
  %641 = getelementptr inbounds i8, ptr %msg.i1693, i32 4
  %642 = ptrtoint ptr %641 to i32
  call void @__asan_store4_noabort(i32 %642)
  store i32 327679, ptr %641, align 4
  %643 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %643)
  %644 = load i8, ptr %config.i1334, align 4
  %conv15.i1697 = zext i8 %644 to i16
  %645 = ptrtoint ptr %msg.i1693 to i32
  call void @__asan_store2_noabort(i32 %645)
  store i16 %conv15.i1697, ptr %msg.i1693, align 4
  %flags.i1698 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1693, i32 0, i32 1
  %646 = ptrtoint ptr %flags.i1698 to i32
  call void @__asan_store2_noabort(i32 %646)
  store i16 0, ptr %flags.i1698, align 2
  %buf.i1700 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1693, i32 0, i32 3
  %647 = ptrtoint ptr %buf.i1700 to i32
  call void @__asan_store4_noabort(i32 %647)
  store ptr %b.i1692, ptr %buf.i1700, align 4
  %648 = load i32, ptr @debug, align 4
  %and16.i1701 = and i32 %648, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1701)
  %tobool.not.i1702 = icmp eq i32 %and16.i1701, 0
  br i1 %tobool.not.i1702, label %do.end771.dib3000_write_reg.exit1709_crit_edge, label %do.end.i1705

do.end771.dib3000_write_reg.exit1709_crit_edge:   ; preds = %do.end771
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1709

do.end.i1705:                                     ; preds = %do.end771
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1704 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 54, i32 noundef 54, i32 noundef %conv759, i32 noundef %conv759) #11
  br label %dib3000_write_reg.exit1709

dib3000_write_reg.exit1709:                       ; preds = %do.end.i1705, %do.end771.dib3000_write_reg.exit1709_crit_edge
  %649 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %1, align 4
  %call25.i1706 = call i32 @i2c_transfer(ptr noundef %650, ptr noundef nonnull %msg.i1693, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1706)
  %cmp.not.i1707 = icmp eq i32 %call25.i1706, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1693) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1692) #7
  br i1 %cmp.not.i1707, label %if.end781, label %do.end778

do.end778:                                        ; preds = %dib3000_write_reg.exit1709
  call void @__sanitizer_cov_trace_pc() #9
  %call780 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv759, i32 noundef 54) #11
  br label %cleanup1069

if.end781:                                        ; preds = %dib3000_write_reg.exit1709
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %631)
  %tobool782.not = icmp ne i16 %631, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1710) #7
  %651 = getelementptr inbounds [4 x i8], ptr %b.i1710, i32 0, i32 1
  %652 = getelementptr inbounds [4 x i8], ptr %b.i1710, i32 0, i32 2
  %653 = getelementptr inbounds [4 x i8], ptr %b.i1710, i32 0, i32 3
  %654 = ptrtoint ptr %b.i1710 to i32
  call void @__asan_store1_noabort(i32 %654)
  store i8 0, ptr %b.i1710, align 1
  %655 = ptrtoint ptr %651 to i32
  call void @__asan_store1_noabort(i32 %655)
  store i8 79, ptr %651, align 1
  %656 = ptrtoint ptr %652 to i32
  call void @__asan_store1_noabort(i32 %656)
  store i8 0, ptr %652, align 1
  %conv13.i1713 = zext i1 %tobool782.not to i8
  %657 = ptrtoint ptr %653 to i32
  call void @__asan_store1_noabort(i32 %657)
  store i8 %conv13.i1713, ptr %653, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1711) #7
  %658 = getelementptr inbounds i8, ptr %msg.i1711, i32 4
  %659 = ptrtoint ptr %658 to i32
  call void @__asan_store4_noabort(i32 %659)
  store i32 327679, ptr %658, align 4
  %660 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %660)
  %661 = load i8, ptr %config.i1334, align 4
  %conv15.i1715 = zext i8 %661 to i16
  %662 = ptrtoint ptr %msg.i1711 to i32
  call void @__asan_store2_noabort(i32 %662)
  store i16 %conv15.i1715, ptr %msg.i1711, align 4
  %flags.i1716 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1711, i32 0, i32 1
  %663 = ptrtoint ptr %flags.i1716 to i32
  call void @__asan_store2_noabort(i32 %663)
  store i16 0, ptr %flags.i1716, align 2
  %buf.i1718 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1711, i32 0, i32 3
  %664 = ptrtoint ptr %buf.i1718 to i32
  call void @__asan_store4_noabort(i32 %664)
  store ptr %b.i1710, ptr %buf.i1718, align 4
  %665 = load i32, ptr @debug, align 4
  %and16.i1719 = and i32 %665, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1719)
  %tobool.not.i1720 = icmp eq i32 %and16.i1719, 0
  br i1 %tobool.not.i1720, label %if.end781.dib3000_write_reg.exit1727_crit_edge, label %do.end.i1723

if.end781.dib3000_write_reg.exit1727_crit_edge:   ; preds = %if.end781
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1727

do.end.i1723:                                     ; preds = %if.end781
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i1721 = zext i1 %tobool782.not to i32
  %call.i1722 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 79, i32 noundef 79, i32 noundef %conv6.i1721, i32 noundef %conv6.i1721) #11
  br label %dib3000_write_reg.exit1727

dib3000_write_reg.exit1727:                       ; preds = %do.end.i1723, %if.end781.dib3000_write_reg.exit1727_crit_edge
  %666 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %666)
  %667 = load ptr, ptr %1, align 4
  %call25.i1724 = call i32 @i2c_transfer(ptr noundef %667, ptr noundef nonnull %msg.i1711, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1724)
  %cmp.not.i1725 = icmp eq i32 %call25.i1724, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1711) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1710) #7
  br i1 %cmp.not.i1725, label %if.end794, label %do.end789

do.end789:                                        ; preds = %dib3000_write_reg.exit1727
  call void @__sanitizer_cov_trace_pc() #9
  %cond = zext i1 %tobool782.not to i32
  %call793 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %cond, i32 noundef 79) #11
  br label %cleanup1069

if.end794:                                        ; preds = %dib3000_write_reg.exit1727
  %668 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load i32, ptr %transmission_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %669)
  %cmp796 = icmp eq i32 %669, 0
  br i1 %cmp796, label %if.then798, label %if.else832

if.then798:                                       ; preds = %if.end794
  %670 = ptrtoint ptr %guard_interval to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load i32, ptr %guard_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %671)
  %cmp800 = icmp eq i32 %671, 2
  br i1 %cmp800, label %if.then802, label %if.else812

if.then802:                                       ; preds = %if.then798
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1728) #7
  %672 = getelementptr inbounds [4 x i8], ptr %b.i1728, i32 0, i32 1
  %673 = getelementptr inbounds [4 x i8], ptr %b.i1728, i32 0, i32 2
  %674 = getelementptr inbounds [4 x i8], ptr %b.i1728, i32 0, i32 3
  %675 = ptrtoint ptr %b.i1728 to i32
  call void @__asan_store1_noabort(i32 %675)
  store i8 0, ptr %b.i1728, align 1
  %676 = ptrtoint ptr %672 to i32
  call void @__asan_store1_noabort(i32 %676)
  store i8 84, ptr %672, align 1
  %677 = ptrtoint ptr %673 to i32
  call void @__asan_store1_noabort(i32 %677)
  store i8 0, ptr %673, align 1
  %678 = ptrtoint ptr %674 to i32
  call void @__asan_store1_noabort(i32 %678)
  store i8 3, ptr %674, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1729) #7
  %679 = getelementptr inbounds i8, ptr %msg.i1729, i32 4
  %680 = ptrtoint ptr %679 to i32
  call void @__asan_store4_noabort(i32 %680)
  store i32 327679, ptr %679, align 4
  %681 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %681)
  %682 = load i8, ptr %config.i1334, align 4
  %conv15.i1731 = zext i8 %682 to i16
  %683 = ptrtoint ptr %msg.i1729 to i32
  call void @__asan_store2_noabort(i32 %683)
  store i16 %conv15.i1731, ptr %msg.i1729, align 4
  %flags.i1732 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1729, i32 0, i32 1
  %684 = ptrtoint ptr %flags.i1732 to i32
  call void @__asan_store2_noabort(i32 %684)
  store i16 0, ptr %flags.i1732, align 2
  %buf.i1734 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1729, i32 0, i32 3
  %685 = ptrtoint ptr %buf.i1734 to i32
  call void @__asan_store4_noabort(i32 %685)
  store ptr %b.i1728, ptr %buf.i1734, align 4
  %686 = load i32, ptr @debug, align 4
  %and16.i1735 = and i32 %686, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1735)
  %tobool.not.i1736 = icmp eq i32 %and16.i1735, 0
  br i1 %tobool.not.i1736, label %if.then802.dib3000_write_reg.exit1742_crit_edge, label %do.end.i1738

if.then802.dib3000_write_reg.exit1742_crit_edge:  ; preds = %if.then802
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1742

do.end.i1738:                                     ; preds = %if.then802
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1737 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 84, i32 noundef 84, i32 noundef 3, i32 noundef 3) #11
  br label %dib3000_write_reg.exit1742

dib3000_write_reg.exit1742:                       ; preds = %do.end.i1738, %if.then802.dib3000_write_reg.exit1742_crit_edge
  %687 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %1, align 4
  %call25.i1739 = call i32 @i2c_transfer(ptr noundef %688, ptr noundef nonnull %msg.i1729, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1739)
  %cmp.not.i1740 = icmp eq i32 %call25.i1739, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1729) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1728) #7
  br i1 %cmp.not.i1740, label %dib3000_write_reg.exit1742.if.end822_crit_edge, label %do.end808

dib3000_write_reg.exit1742.if.end822_crit_edge:   ; preds = %dib3000_write_reg.exit1742
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end822

do.end808:                                        ; preds = %dib3000_write_reg.exit1742
  call void @__sanitizer_cov_trace_pc() #9
  %call810 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef 84) #11
  br label %cleanup1069

if.else812:                                       ; preds = %if.then798
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1743) #7
  %689 = getelementptr inbounds [4 x i8], ptr %b.i1743, i32 0, i32 1
  %690 = getelementptr inbounds [4 x i8], ptr %b.i1743, i32 0, i32 2
  %691 = getelementptr inbounds [4 x i8], ptr %b.i1743, i32 0, i32 3
  %692 = ptrtoint ptr %b.i1743 to i32
  call void @__asan_store1_noabort(i32 %692)
  store i8 0, ptr %b.i1743, align 1
  %693 = ptrtoint ptr %689 to i32
  call void @__asan_store1_noabort(i32 %693)
  store i8 84, ptr %689, align 1
  %694 = ptrtoint ptr %690 to i32
  call void @__asan_store1_noabort(i32 %694)
  store i8 0, ptr %690, align 1
  %695 = ptrtoint ptr %691 to i32
  call void @__asan_store1_noabort(i32 %695)
  store i8 0, ptr %691, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1744) #7
  %696 = getelementptr inbounds i8, ptr %msg.i1744, i32 4
  %697 = ptrtoint ptr %696 to i32
  call void @__asan_store4_noabort(i32 %697)
  store i32 327679, ptr %696, align 4
  %698 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %698)
  %699 = load i8, ptr %config.i1334, align 4
  %conv15.i1746 = zext i8 %699 to i16
  %700 = ptrtoint ptr %msg.i1744 to i32
  call void @__asan_store2_noabort(i32 %700)
  store i16 %conv15.i1746, ptr %msg.i1744, align 4
  %flags.i1747 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1744, i32 0, i32 1
  %701 = ptrtoint ptr %flags.i1747 to i32
  call void @__asan_store2_noabort(i32 %701)
  store i16 0, ptr %flags.i1747, align 2
  %buf.i1749 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1744, i32 0, i32 3
  %702 = ptrtoint ptr %buf.i1749 to i32
  call void @__asan_store4_noabort(i32 %702)
  store ptr %b.i1743, ptr %buf.i1749, align 4
  %703 = load i32, ptr @debug, align 4
  %and16.i1750 = and i32 %703, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1750)
  %tobool.not.i1751 = icmp eq i32 %and16.i1750, 0
  br i1 %tobool.not.i1751, label %if.else812.dib3000_write_reg.exit1757_crit_edge, label %do.end.i1753

if.else812.dib3000_write_reg.exit1757_crit_edge:  ; preds = %if.else812
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1757

do.end.i1753:                                     ; preds = %if.else812
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1752 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 84, i32 noundef 84, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit1757

dib3000_write_reg.exit1757:                       ; preds = %do.end.i1753, %if.else812.dib3000_write_reg.exit1757_crit_edge
  %704 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %1, align 4
  %call25.i1754 = call i32 @i2c_transfer(ptr noundef %705, ptr noundef nonnull %msg.i1744, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1754)
  %cmp.not.i1755 = icmp eq i32 %call25.i1754, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1744) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1743) #7
  br i1 %cmp.not.i1755, label %dib3000_write_reg.exit1757.if.end822_crit_edge, label %do.end818

dib3000_write_reg.exit1757.if.end822_crit_edge:   ; preds = %dib3000_write_reg.exit1757
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end822

do.end818:                                        ; preds = %dib3000_write_reg.exit1757
  call void @__sanitizer_cov_trace_pc() #9
  %call820 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 84) #11
  br label %cleanup1069

if.end822:                                        ; preds = %dib3000_write_reg.exit1757.if.end822_crit_edge, %dib3000_write_reg.exit1742.if.end822_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1758) #7
  %706 = getelementptr inbounds [4 x i8], ptr %b.i1758, i32 0, i32 1
  %707 = getelementptr inbounds [4 x i8], ptr %b.i1758, i32 0, i32 2
  %708 = getelementptr inbounds [4 x i8], ptr %b.i1758, i32 0, i32 3
  %709 = ptrtoint ptr %b.i1758 to i32
  call void @__asan_store1_noabort(i32 %709)
  store i8 0, ptr %b.i1758, align 1
  %710 = ptrtoint ptr %706 to i32
  call void @__asan_store1_noabort(i32 %710)
  store i8 121, ptr %706, align 1
  %711 = ptrtoint ptr %707 to i32
  call void @__asan_store1_noabort(i32 %711)
  store i8 0, ptr %707, align 1
  %712 = ptrtoint ptr %708 to i32
  call void @__asan_store1_noabort(i32 %712)
  store i8 7, ptr %708, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1759) #7
  %713 = getelementptr inbounds i8, ptr %msg.i1759, i32 4
  %714 = ptrtoint ptr %713 to i32
  call void @__asan_store4_noabort(i32 %714)
  store i32 327679, ptr %713, align 4
  %715 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %715)
  %716 = load i8, ptr %config.i1334, align 4
  %conv15.i1761 = zext i8 %716 to i16
  %717 = ptrtoint ptr %msg.i1759 to i32
  call void @__asan_store2_noabort(i32 %717)
  store i16 %conv15.i1761, ptr %msg.i1759, align 4
  %flags.i1762 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1759, i32 0, i32 1
  %718 = ptrtoint ptr %flags.i1762 to i32
  call void @__asan_store2_noabort(i32 %718)
  store i16 0, ptr %flags.i1762, align 2
  %buf.i1764 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1759, i32 0, i32 3
  %719 = ptrtoint ptr %buf.i1764 to i32
  call void @__asan_store4_noabort(i32 %719)
  store ptr %b.i1758, ptr %buf.i1764, align 4
  %720 = load i32, ptr @debug, align 4
  %and16.i1765 = and i32 %720, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1765)
  %tobool.not.i1766 = icmp eq i32 %and16.i1765, 0
  br i1 %tobool.not.i1766, label %if.end822.dib3000_write_reg.exit1772_crit_edge, label %do.end.i1768

if.end822.dib3000_write_reg.exit1772_crit_edge:   ; preds = %if.end822
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1772

do.end.i1768:                                     ; preds = %if.end822
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1767 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 121, i32 noundef 121, i32 noundef 7, i32 noundef 7) #11
  br label %dib3000_write_reg.exit1772

dib3000_write_reg.exit1772:                       ; preds = %do.end.i1768, %if.end822.dib3000_write_reg.exit1772_crit_edge
  %721 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %1, align 4
  %call25.i1769 = call i32 @i2c_transfer(ptr noundef %722, ptr noundef nonnull %msg.i1759, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1769)
  %cmp.not.i1770 = icmp eq i32 %call25.i1769, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1759) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1758) #7
  br i1 %cmp.not.i1770, label %dib3000_write_reg.exit1772.if.end842_crit_edge, label %do.end828

dib3000_write_reg.exit1772.if.end842_crit_edge:   ; preds = %dib3000_write_reg.exit1772
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end842

do.end828:                                        ; preds = %dib3000_write_reg.exit1772
  call void @__sanitizer_cov_trace_pc() #9
  %call830 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 7, i32 noundef 121) #11
  br label %cleanup1069

if.else832:                                       ; preds = %if.end794
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1773) #7
  %723 = getelementptr inbounds [4 x i8], ptr %b.i1773, i32 0, i32 1
  %724 = getelementptr inbounds [4 x i8], ptr %b.i1773, i32 0, i32 2
  %725 = getelementptr inbounds [4 x i8], ptr %b.i1773, i32 0, i32 3
  %726 = ptrtoint ptr %b.i1773 to i32
  call void @__asan_store1_noabort(i32 %726)
  store i8 0, ptr %b.i1773, align 1
  %727 = ptrtoint ptr %723 to i32
  call void @__asan_store1_noabort(i32 %727)
  store i8 121, ptr %723, align 1
  %728 = ptrtoint ptr %724 to i32
  call void @__asan_store1_noabort(i32 %728)
  store i8 0, ptr %724, align 1
  %729 = ptrtoint ptr %725 to i32
  call void @__asan_store1_noabort(i32 %729)
  store i8 5, ptr %725, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1774) #7
  %730 = getelementptr inbounds i8, ptr %msg.i1774, i32 4
  %731 = ptrtoint ptr %730 to i32
  call void @__asan_store4_noabort(i32 %731)
  store i32 327679, ptr %730, align 4
  %732 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %732)
  %733 = load i8, ptr %config.i1334, align 4
  %conv15.i1776 = zext i8 %733 to i16
  %734 = ptrtoint ptr %msg.i1774 to i32
  call void @__asan_store2_noabort(i32 %734)
  store i16 %conv15.i1776, ptr %msg.i1774, align 4
  %flags.i1777 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1774, i32 0, i32 1
  %735 = ptrtoint ptr %flags.i1777 to i32
  call void @__asan_store2_noabort(i32 %735)
  store i16 0, ptr %flags.i1777, align 2
  %buf.i1779 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1774, i32 0, i32 3
  %736 = ptrtoint ptr %buf.i1779 to i32
  call void @__asan_store4_noabort(i32 %736)
  store ptr %b.i1773, ptr %buf.i1779, align 4
  %737 = load i32, ptr @debug, align 4
  %and16.i1780 = and i32 %737, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1780)
  %tobool.not.i1781 = icmp eq i32 %and16.i1780, 0
  br i1 %tobool.not.i1781, label %if.else832.dib3000_write_reg.exit1787_crit_edge, label %do.end.i1783

if.else832.dib3000_write_reg.exit1787_crit_edge:  ; preds = %if.else832
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1787

do.end.i1783:                                     ; preds = %if.else832
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1782 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 121, i32 noundef 121, i32 noundef 5, i32 noundef 5) #11
  br label %dib3000_write_reg.exit1787

dib3000_write_reg.exit1787:                       ; preds = %do.end.i1783, %if.else832.dib3000_write_reg.exit1787_crit_edge
  %738 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %1, align 4
  %call25.i1784 = call i32 @i2c_transfer(ptr noundef %739, ptr noundef nonnull %msg.i1774, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1784)
  %cmp.not.i1785 = icmp eq i32 %call25.i1784, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1774) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1773) #7
  br i1 %cmp.not.i1785, label %dib3000_write_reg.exit1787.if.end842_crit_edge, label %do.end838

dib3000_write_reg.exit1787.if.end842_crit_edge:   ; preds = %dib3000_write_reg.exit1787
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end842

do.end838:                                        ; preds = %dib3000_write_reg.exit1787
  call void @__sanitizer_cov_trace_pc() #9
  %call840 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 5, i32 noundef 121) #11
  br label %cleanup1069

if.end842:                                        ; preds = %dib3000_write_reg.exit1787.if.end842_crit_edge, %dib3000_write_reg.exit1772.if.end842_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1788) #7
  %740 = getelementptr inbounds [4 x i8], ptr %b.i1788, i32 0, i32 1
  %741 = getelementptr inbounds [4 x i8], ptr %b.i1788, i32 0, i32 2
  %742 = getelementptr inbounds [4 x i8], ptr %b.i1788, i32 0, i32 3
  %743 = ptrtoint ptr %b.i1788 to i32
  call void @__asan_store1_noabort(i32 %743)
  store i8 0, ptr %b.i1788, align 1
  %744 = ptrtoint ptr %740 to i32
  call void @__asan_store1_noabort(i32 %744)
  store i8 -61, ptr %740, align 1
  %745 = ptrtoint ptr %741 to i32
  call void @__asan_store1_noabort(i32 %745)
  store i8 0, ptr %741, align 1
  %746 = ptrtoint ptr %742 to i32
  call void @__asan_store1_noabort(i32 %746)
  store i8 1, ptr %742, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1789) #7
  %747 = getelementptr inbounds i8, ptr %msg.i1789, i32 4
  %748 = ptrtoint ptr %747 to i32
  call void @__asan_store4_noabort(i32 %748)
  store i32 327679, ptr %747, align 4
  %749 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %749)
  %750 = load i8, ptr %config.i1334, align 4
  %conv15.i1791 = zext i8 %750 to i16
  %751 = ptrtoint ptr %msg.i1789 to i32
  call void @__asan_store2_noabort(i32 %751)
  store i16 %conv15.i1791, ptr %msg.i1789, align 4
  %flags.i1792 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1789, i32 0, i32 1
  %752 = ptrtoint ptr %flags.i1792 to i32
  call void @__asan_store2_noabort(i32 %752)
  store i16 0, ptr %flags.i1792, align 2
  %buf.i1794 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1789, i32 0, i32 3
  %753 = ptrtoint ptr %buf.i1794 to i32
  call void @__asan_store4_noabort(i32 %753)
  store ptr %b.i1788, ptr %buf.i1794, align 4
  %754 = load i32, ptr @debug, align 4
  %and16.i1795 = and i32 %754, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1795)
  %tobool.not.i1796 = icmp eq i32 %and16.i1795, 0
  br i1 %tobool.not.i1796, label %if.end842.dib3000_write_reg.exit1802_crit_edge, label %do.end.i1798

if.end842.dib3000_write_reg.exit1802_crit_edge:   ; preds = %if.end842
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1802

do.end.i1798:                                     ; preds = %if.end842
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1797 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 195, i32 noundef 195, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit1802

dib3000_write_reg.exit1802:                       ; preds = %do.end.i1798, %if.end842.dib3000_write_reg.exit1802_crit_edge
  %755 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %1, align 4
  %call25.i1799 = call i32 @i2c_transfer(ptr noundef %756, ptr noundef nonnull %msg.i1789, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1799)
  %cmp.not.i1800 = icmp eq i32 %call25.i1799, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1789) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1788) #7
  br i1 %cmp.not.i1800, label %if.end851, label %do.end848

do.end848:                                        ; preds = %dib3000_write_reg.exit1802
  call void @__sanitizer_cov_trace_pc() #9
  %call850 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 195) #11
  br label %cleanup1069

if.end851:                                        ; preds = %dib3000_write_reg.exit1802
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1803) #7
  %757 = getelementptr inbounds [4 x i8], ptr %b.i1803, i32 0, i32 1
  %758 = getelementptr inbounds [4 x i8], ptr %b.i1803, i32 0, i32 2
  %759 = getelementptr inbounds [4 x i8], ptr %b.i1803, i32 0, i32 3
  %760 = ptrtoint ptr %b.i1803 to i32
  call void @__asan_store1_noabort(i32 %760)
  store i8 0, ptr %b.i1803, align 1
  %761 = ptrtoint ptr %757 to i32
  call void @__asan_store1_noabort(i32 %761)
  store i8 126, ptr %757, align 1
  %762 = ptrtoint ptr %758 to i32
  call void @__asan_store1_noabort(i32 %762)
  store i8 0, ptr %758, align 1
  %763 = ptrtoint ptr %759 to i32
  call void @__asan_store1_noabort(i32 %763)
  store i8 0, ptr %759, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1804) #7
  %764 = getelementptr inbounds i8, ptr %msg.i1804, i32 4
  %765 = ptrtoint ptr %764 to i32
  call void @__asan_store4_noabort(i32 %765)
  store i32 327679, ptr %764, align 4
  %766 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %766)
  %767 = load i8, ptr %config.i1334, align 4
  %conv15.i1806 = zext i8 %767 to i16
  %768 = ptrtoint ptr %msg.i1804 to i32
  call void @__asan_store2_noabort(i32 %768)
  store i16 %conv15.i1806, ptr %msg.i1804, align 4
  %flags.i1807 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1804, i32 0, i32 1
  %769 = ptrtoint ptr %flags.i1807 to i32
  call void @__asan_store2_noabort(i32 %769)
  store i16 0, ptr %flags.i1807, align 2
  %buf.i1809 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1804, i32 0, i32 3
  %770 = ptrtoint ptr %buf.i1809 to i32
  call void @__asan_store4_noabort(i32 %770)
  store ptr %b.i1803, ptr %buf.i1809, align 4
  %771 = load i32, ptr @debug, align 4
  %and16.i1810 = and i32 %771, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1810)
  %tobool.not.i1811 = icmp eq i32 %and16.i1810, 0
  br i1 %tobool.not.i1811, label %if.end851.dib3000_write_reg.exit1817_crit_edge, label %do.end.i1813

if.end851.dib3000_write_reg.exit1817_crit_edge:   ; preds = %if.end851
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1817

do.end.i1813:                                     ; preds = %if.end851
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1812 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 126, i32 noundef 126, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit1817

dib3000_write_reg.exit1817:                       ; preds = %do.end.i1813, %if.end851.dib3000_write_reg.exit1817_crit_edge
  %772 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %1, align 4
  %call25.i1814 = call i32 @i2c_transfer(ptr noundef %773, ptr noundef nonnull %msg.i1804, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1814)
  %cmp.not.i1815 = icmp eq i32 %call25.i1814, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1804) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1803) #7
  br i1 %cmp.not.i1815, label %if.end860, label %do.end857

do.end857:                                        ; preds = %dib3000_write_reg.exit1817
  call void @__sanitizer_cov_trace_pc() #9
  %call859 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 126) #11
  br label %cleanup1069

if.end860:                                        ; preds = %dib3000_write_reg.exit1817
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1818) #7
  %774 = getelementptr inbounds [4 x i8], ptr %b.i1818, i32 0, i32 1
  %775 = getelementptr inbounds [4 x i8], ptr %b.i1818, i32 0, i32 2
  %776 = getelementptr inbounds [4 x i8], ptr %b.i1818, i32 0, i32 3
  %777 = ptrtoint ptr %b.i1818 to i32
  call void @__asan_store1_noabort(i32 %777)
  store i8 0, ptr %b.i1818, align 1
  %778 = ptrtoint ptr %774 to i32
  call void @__asan_store1_noabort(i32 %778)
  store i8 101, ptr %774, align 1
  %779 = ptrtoint ptr %775 to i32
  call void @__asan_store1_noabort(i32 %779)
  store i8 0, ptr %775, align 1
  %780 = ptrtoint ptr %776 to i32
  call void @__asan_store1_noabort(i32 %780)
  store i8 0, ptr %776, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1819) #7
  %781 = getelementptr inbounds i8, ptr %msg.i1819, i32 4
  %782 = ptrtoint ptr %781 to i32
  call void @__asan_store4_noabort(i32 %782)
  store i32 327679, ptr %781, align 4
  %783 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %783)
  %784 = load i8, ptr %config.i1334, align 4
  %conv15.i1821 = zext i8 %784 to i16
  %785 = ptrtoint ptr %msg.i1819 to i32
  call void @__asan_store2_noabort(i32 %785)
  store i16 %conv15.i1821, ptr %msg.i1819, align 4
  %flags.i1822 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1819, i32 0, i32 1
  %786 = ptrtoint ptr %flags.i1822 to i32
  call void @__asan_store2_noabort(i32 %786)
  store i16 0, ptr %flags.i1822, align 2
  %buf.i1824 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1819, i32 0, i32 3
  %787 = ptrtoint ptr %buf.i1824 to i32
  call void @__asan_store4_noabort(i32 %787)
  store ptr %b.i1818, ptr %buf.i1824, align 4
  %788 = load i32, ptr @debug, align 4
  %and16.i1825 = and i32 %788, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1825)
  %tobool.not.i1826 = icmp eq i32 %and16.i1825, 0
  br i1 %tobool.not.i1826, label %if.end860.dib3000_write_reg.exit1832_crit_edge, label %do.end.i1828

if.end860.dib3000_write_reg.exit1832_crit_edge:   ; preds = %if.end860
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1832

do.end.i1828:                                     ; preds = %if.end860
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1827 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 101, i32 noundef 101, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit1832

dib3000_write_reg.exit1832:                       ; preds = %do.end.i1828, %if.end860.dib3000_write_reg.exit1832_crit_edge
  %789 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %1, align 4
  %call25.i1829 = call i32 @i2c_transfer(ptr noundef %790, ptr noundef nonnull %msg.i1819, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1829)
  %cmp.not.i1830 = icmp eq i32 %call25.i1829, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1819) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1818) #7
  br i1 %cmp.not.i1830, label %for.cond871.preheader, label %do.end866

for.cond871.preheader:                            ; preds = %dib3000_write_reg.exit1832
  %791 = getelementptr inbounds [4 x i8], ptr %b.i1833, i32 0, i32 1
  %792 = getelementptr inbounds [4 x i8], ptr %b.i1833, i32 0, i32 2
  %793 = getelementptr inbounds [4 x i8], ptr %b.i1833, i32 0, i32 3
  %794 = getelementptr inbounds i8, ptr %msg.i1834, i32 4
  %flags.i1841 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1834, i32 0, i32 1
  %buf.i1843 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1834, i32 0, i32 3
  br label %for.body874

do.end866:                                        ; preds = %dib3000_write_reg.exit1832
  call void @__sanitizer_cov_trace_pc() #9
  %call868 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 101) #11
  br label %cleanup1069

for.cond871:                                      ; preds = %dib3000_write_reg.exit1853
  %inc891 = add nuw nsw i32 %i870.02003, 1
  %exitcond2051.not = icmp eq i32 %inc891, 8
  br i1 %exitcond2051.not, label %cleanup.cont895.critedge, label %for.cond871.for.body874_crit_edge

for.cond871.for.body874_crit_edge:                ; preds = %for.cond871
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body874

for.body874:                                      ; preds = %for.cond871.for.body874_crit_edge, %for.cond871.preheader
  %i870.02003 = phi i32 [ 0, %for.cond871.preheader ], [ %inc891, %for.cond871.for.body874_crit_edge ]
  %arrayidx875 = getelementptr [8 x i16], ptr @dib3000mb_reg_agc_bandwidth, i32 0, i32 %i870.02003
  %795 = ptrtoint ptr %arrayidx875 to i32
  call void @__asan_load2_noabort(i32 %795)
  %796 = load i16, ptr %arrayidx875, align 2
  %arrayidx876 = getelementptr [8 x i16], ptr @dib3000mb_agc_bandwidth_high, i32 0, i32 %i870.02003
  %797 = ptrtoint ptr %arrayidx876 to i32
  call void @__asan_load2_noabort(i32 %797)
  %798 = load i16, ptr %arrayidx876, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1833) #7
  %799 = lshr i16 %796, 8
  %conv1.i1835 = trunc i16 %799 to i8
  %800 = ptrtoint ptr %b.i1833 to i32
  call void @__asan_store1_noabort(i32 %800)
  store i8 %conv1.i1835, ptr %b.i1833, align 1
  %conv4.i1836 = trunc i16 %796 to i8
  %801 = ptrtoint ptr %791 to i32
  call void @__asan_store1_noabort(i32 %801)
  store i8 %conv4.i1836, ptr %791, align 1
  %802 = lshr i16 %798, 8
  %conv9.i1837 = trunc i16 %802 to i8
  %803 = ptrtoint ptr %792 to i32
  call void @__asan_store1_noabort(i32 %803)
  store i8 %conv9.i1837, ptr %792, align 1
  %conv13.i1838 = trunc i16 %798 to i8
  %804 = ptrtoint ptr %793 to i32
  call void @__asan_store1_noabort(i32 %804)
  store i8 %conv13.i1838, ptr %793, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1834) #7
  %805 = ptrtoint ptr %794 to i32
  call void @__asan_store4_noabort(i32 %805)
  store i32 327679, ptr %794, align 4
  %806 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %806)
  %807 = load i8, ptr %config.i1334, align 4
  %conv15.i1840 = zext i8 %807 to i16
  %808 = ptrtoint ptr %msg.i1834 to i32
  call void @__asan_store2_noabort(i32 %808)
  store i16 %conv15.i1840, ptr %msg.i1834, align 4
  %809 = ptrtoint ptr %flags.i1841 to i32
  call void @__asan_store2_noabort(i32 %809)
  store i16 0, ptr %flags.i1841, align 2
  %810 = ptrtoint ptr %buf.i1843 to i32
  call void @__asan_store4_noabort(i32 %810)
  store ptr %b.i1833, ptr %buf.i1843, align 4
  %811 = load i32, ptr @debug, align 4
  %and16.i1844 = and i32 %811, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1844)
  %tobool.not.i1845 = icmp eq i32 %and16.i1844, 0
  br i1 %tobool.not.i1845, label %for.body874.dib3000_write_reg.exit1853_crit_edge, label %do.end.i1849

for.body874.dib3000_write_reg.exit1853_crit_edge: ; preds = %for.body874
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1853

do.end.i1849:                                     ; preds = %for.body874
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i1846 = zext i16 %798 to i32
  %conv.i1847 = zext i16 %796 to i32
  %call.i1848 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv.i1847, i32 noundef %conv.i1847, i32 noundef %conv6.i1846, i32 noundef %conv6.i1846) #11
  br label %dib3000_write_reg.exit1853

dib3000_write_reg.exit1853:                       ; preds = %do.end.i1849, %for.body874.dib3000_write_reg.exit1853_crit_edge
  %812 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %1, align 4
  %call25.i1850 = call i32 @i2c_transfer(ptr noundef %813, ptr noundef nonnull %msg.i1834, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1850)
  %cmp.not.i1851 = icmp eq i32 %call25.i1850, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1834) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1833) #7
  br i1 %cmp.not.i1851, label %for.cond871, label %do.end882

do.end882:                                        ; preds = %dib3000_write_reg.exit1853
  call void @__sanitizer_cov_trace_pc() #9
  %conv885 = zext i16 %798 to i32
  %conv887 = zext i16 %796 to i32
  %call888 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv885, i32 noundef %conv887) #11
  br label %cleanup1069

cleanup.cont895.critedge:                         ; preds = %for.cond871
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1854) #7
  %814 = getelementptr inbounds [4 x i8], ptr %b.i1854, i32 0, i32 1
  %815 = getelementptr inbounds [4 x i8], ptr %b.i1854, i32 0, i32 2
  %816 = getelementptr inbounds [4 x i8], ptr %b.i1854, i32 0, i32 3
  %817 = ptrtoint ptr %b.i1854 to i32
  call void @__asan_store1_noabort(i32 %817)
  store i8 0, ptr %b.i1854, align 1
  %818 = ptrtoint ptr %814 to i32
  call void @__asan_store1_noabort(i32 %818)
  store i8 79, ptr %814, align 1
  %819 = ptrtoint ptr %815 to i32
  call void @__asan_store1_noabort(i32 %819)
  store i8 0, ptr %815, align 1
  %820 = ptrtoint ptr %816 to i32
  call void @__asan_store1_noabort(i32 %820)
  store i8 0, ptr %816, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1855) #7
  %821 = getelementptr inbounds i8, ptr %msg.i1855, i32 4
  %822 = ptrtoint ptr %821 to i32
  call void @__asan_store4_noabort(i32 %822)
  store i32 327679, ptr %821, align 4
  %823 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %823)
  %824 = load i8, ptr %config.i1334, align 4
  %conv15.i1857 = zext i8 %824 to i16
  %825 = ptrtoint ptr %msg.i1855 to i32
  call void @__asan_store2_noabort(i32 %825)
  store i16 %conv15.i1857, ptr %msg.i1855, align 4
  %flags.i1858 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1855, i32 0, i32 1
  %826 = ptrtoint ptr %flags.i1858 to i32
  call void @__asan_store2_noabort(i32 %826)
  store i16 0, ptr %flags.i1858, align 2
  %buf.i1860 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1855, i32 0, i32 3
  %827 = ptrtoint ptr %buf.i1860 to i32
  call void @__asan_store4_noabort(i32 %827)
  store ptr %b.i1854, ptr %buf.i1860, align 4
  %828 = load i32, ptr @debug, align 4
  %and16.i1861 = and i32 %828, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1861)
  %tobool.not.i1862 = icmp eq i32 %and16.i1861, 0
  br i1 %tobool.not.i1862, label %cleanup.cont895.critedge.dib3000_write_reg.exit1868_crit_edge, label %do.end.i1864

cleanup.cont895.critedge.dib3000_write_reg.exit1868_crit_edge: ; preds = %cleanup.cont895.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1868

do.end.i1864:                                     ; preds = %cleanup.cont895.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1863 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 79, i32 noundef 79, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit1868

dib3000_write_reg.exit1868:                       ; preds = %do.end.i1864, %cleanup.cont895.critedge.dib3000_write_reg.exit1868_crit_edge
  %829 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load ptr, ptr %1, align 4
  %call25.i1865 = call i32 @i2c_transfer(ptr noundef %830, ptr noundef nonnull %msg.i1855, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1865)
  %cmp.not.i1866 = icmp eq i32 %call25.i1865, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1855) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1854) #7
  br i1 %cmp.not.i1866, label %if.end904, label %do.end901

do.end901:                                        ; preds = %dib3000_write_reg.exit1868
  call void @__sanitizer_cov_trace_pc() #9
  %call903 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 79) #11
  br label %cleanup1069

if.end904:                                        ; preds = %dib3000_write_reg.exit1868
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1869) #7
  %831 = getelementptr inbounds [4 x i8], ptr %b.i1869, i32 0, i32 1
  %832 = getelementptr inbounds [4 x i8], ptr %b.i1869, i32 0, i32 2
  %833 = getelementptr inbounds [4 x i8], ptr %b.i1869, i32 0, i32 3
  %834 = ptrtoint ptr %b.i1869 to i32
  call void @__asan_store1_noabort(i32 %834)
  store i8 0, ptr %b.i1869, align 1
  %835 = ptrtoint ptr %831 to i32
  call void @__asan_store1_noabort(i32 %835)
  store i8 0, ptr %831, align 1
  %836 = ptrtoint ptr %832 to i32
  call void @__asan_store1_noabort(i32 %836)
  store i8 0, ptr %832, align 1
  %837 = ptrtoint ptr %833 to i32
  call void @__asan_store1_noabort(i32 %837)
  store i8 12, ptr %833, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1870) #7
  %838 = getelementptr inbounds i8, ptr %msg.i1870, i32 4
  %839 = ptrtoint ptr %838 to i32
  call void @__asan_store4_noabort(i32 %839)
  store i32 327679, ptr %838, align 4
  %840 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %840)
  %841 = load i8, ptr %config.i1334, align 4
  %conv15.i1872 = zext i8 %841 to i16
  %842 = ptrtoint ptr %msg.i1870 to i32
  call void @__asan_store2_noabort(i32 %842)
  store i16 %conv15.i1872, ptr %msg.i1870, align 4
  %flags.i1873 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1870, i32 0, i32 1
  %843 = ptrtoint ptr %flags.i1873 to i32
  call void @__asan_store2_noabort(i32 %843)
  store i16 0, ptr %flags.i1873, align 2
  %buf.i1875 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1870, i32 0, i32 3
  %844 = ptrtoint ptr %buf.i1875 to i32
  call void @__asan_store4_noabort(i32 %844)
  store ptr %b.i1869, ptr %buf.i1875, align 4
  %845 = load i32, ptr @debug, align 4
  %and16.i1876 = and i32 %845, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1876)
  %tobool.not.i1877 = icmp eq i32 %and16.i1876, 0
  br i1 %tobool.not.i1877, label %if.end904.dib3000_write_reg.exit1883_crit_edge, label %do.end.i1879

if.end904.dib3000_write_reg.exit1883_crit_edge:   ; preds = %if.end904
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1883

do.end.i1879:                                     ; preds = %if.end904
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1878 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0, i32 noundef 12, i32 noundef 12) #11
  br label %dib3000_write_reg.exit1883

dib3000_write_reg.exit1883:                       ; preds = %do.end.i1879, %if.end904.dib3000_write_reg.exit1883_crit_edge
  %846 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %1, align 4
  %call25.i1880 = call i32 @i2c_transfer(ptr noundef %847, ptr noundef nonnull %msg.i1870, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1880)
  %cmp.not.i1881 = icmp eq i32 %call25.i1880, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1870) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1869) #7
  br i1 %cmp.not.i1881, label %if.end913, label %do.end910

do.end910:                                        ; preds = %dib3000_write_reg.exit1883
  call void @__sanitizer_cov_trace_pc() #9
  %call912 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 12, i32 noundef 0) #11
  br label %cleanup1069

if.end913:                                        ; preds = %dib3000_write_reg.exit1883
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1884) #7
  %848 = ptrtoint ptr %b.i1884 to i32
  call void @__asan_store4_noabort(i32 %848)
  store i32 0, ptr %b.i1884, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1885) #7
  %849 = getelementptr inbounds i8, ptr %msg.i1885, i32 4
  %850 = ptrtoint ptr %849 to i32
  call void @__asan_store4_noabort(i32 %850)
  store i32 327679, ptr %849, align 4
  %851 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %851)
  %852 = load i8, ptr %config.i1334, align 4
  %conv15.i1887 = zext i8 %852 to i16
  %853 = ptrtoint ptr %msg.i1885 to i32
  call void @__asan_store2_noabort(i32 %853)
  store i16 %conv15.i1887, ptr %msg.i1885, align 4
  %flags.i1888 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1885, i32 0, i32 1
  %854 = ptrtoint ptr %flags.i1888 to i32
  call void @__asan_store2_noabort(i32 %854)
  store i16 0, ptr %flags.i1888, align 2
  %buf.i1890 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1885, i32 0, i32 3
  %855 = ptrtoint ptr %buf.i1890 to i32
  call void @__asan_store4_noabort(i32 %855)
  store ptr %b.i1884, ptr %buf.i1890, align 4
  %856 = load i32, ptr @debug, align 4
  %and16.i1891 = and i32 %856, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1891)
  %tobool.not.i1892 = icmp eq i32 %and16.i1891, 0
  br i1 %tobool.not.i1892, label %if.end913.dib3000_write_reg.exit1898_crit_edge, label %do.end.i1894

if.end913.dib3000_write_reg.exit1898_crit_edge:   ; preds = %if.end913
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1898

do.end.i1894:                                     ; preds = %if.end913
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1893 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit1898

dib3000_write_reg.exit1898:                       ; preds = %do.end.i1894, %if.end913.dib3000_write_reg.exit1898_crit_edge
  %857 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %1, align 4
  %call25.i1895 = call i32 @i2c_transfer(ptr noundef %858, ptr noundef nonnull %msg.i1885, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1895)
  %cmp.not.i1896 = icmp eq i32 %call25.i1895, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1885) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1884) #7
  br i1 %cmp.not.i1896, label %if.end922, label %do.end919

do.end919:                                        ; preds = %dib3000_write_reg.exit1898
  call void @__sanitizer_cov_trace_pc() #9
  %call921 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0) #11
  br label %cleanup1069

if.end922:                                        ; preds = %dib3000_write_reg.exit1898
  call void @msleep(i32 noundef 70) #7
  %859 = getelementptr inbounds [4 x i8], ptr %b.i1899, i32 0, i32 1
  %860 = getelementptr inbounds [4 x i8], ptr %b.i1899, i32 0, i32 2
  %861 = getelementptr inbounds [4 x i8], ptr %b.i1899, i32 0, i32 3
  %862 = getelementptr inbounds i8, ptr %msg.i1900, i32 4
  %flags.i1907 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1900, i32 0, i32 1
  %buf.i1909 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1900, i32 0, i32 3
  br label %for.body927

for.cond924:                                      ; preds = %dib3000_write_reg.exit1919
  %inc944 = add nuw nsw i32 %i923.02004, 1
  %exitcond2052.not = icmp eq i32 %inc944, 8
  br i1 %exitcond2052.not, label %cleanup.cont948.critedge, label %for.cond924.for.body927_crit_edge

for.cond924.for.body927_crit_edge:                ; preds = %for.cond924
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body927

for.body927:                                      ; preds = %for.cond924.for.body927_crit_edge, %if.end922
  %i923.02004 = phi i32 [ 0, %if.end922 ], [ %inc944, %for.cond924.for.body927_crit_edge ]
  %arrayidx928 = getelementptr [8 x i16], ptr @dib3000mb_reg_agc_bandwidth, i32 0, i32 %i923.02004
  %863 = ptrtoint ptr %arrayidx928 to i32
  call void @__asan_load2_noabort(i32 %863)
  %864 = load i16, ptr %arrayidx928, align 2
  %arrayidx929 = getelementptr [8 x i16], ptr @dib3000mb_agc_bandwidth_low, i32 0, i32 %i923.02004
  %865 = ptrtoint ptr %arrayidx929 to i32
  call void @__asan_load2_noabort(i32 %865)
  %866 = load i16, ptr %arrayidx929, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1899) #7
  %867 = lshr i16 %864, 8
  %conv1.i1901 = trunc i16 %867 to i8
  %868 = ptrtoint ptr %b.i1899 to i32
  call void @__asan_store1_noabort(i32 %868)
  store i8 %conv1.i1901, ptr %b.i1899, align 1
  %conv4.i1902 = trunc i16 %864 to i8
  %869 = ptrtoint ptr %859 to i32
  call void @__asan_store1_noabort(i32 %869)
  store i8 %conv4.i1902, ptr %859, align 1
  %870 = lshr i16 %866, 8
  %conv9.i1903 = trunc i16 %870 to i8
  %871 = ptrtoint ptr %860 to i32
  call void @__asan_store1_noabort(i32 %871)
  store i8 %conv9.i1903, ptr %860, align 1
  %conv13.i1904 = trunc i16 %866 to i8
  %872 = ptrtoint ptr %861 to i32
  call void @__asan_store1_noabort(i32 %872)
  store i8 %conv13.i1904, ptr %861, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1900) #7
  %873 = ptrtoint ptr %862 to i32
  call void @__asan_store4_noabort(i32 %873)
  store i32 327679, ptr %862, align 4
  %874 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %874)
  %875 = load i8, ptr %config.i1334, align 4
  %conv15.i1906 = zext i8 %875 to i16
  %876 = ptrtoint ptr %msg.i1900 to i32
  call void @__asan_store2_noabort(i32 %876)
  store i16 %conv15.i1906, ptr %msg.i1900, align 4
  %877 = ptrtoint ptr %flags.i1907 to i32
  call void @__asan_store2_noabort(i32 %877)
  store i16 0, ptr %flags.i1907, align 2
  %878 = ptrtoint ptr %buf.i1909 to i32
  call void @__asan_store4_noabort(i32 %878)
  store ptr %b.i1899, ptr %buf.i1909, align 4
  %879 = load i32, ptr @debug, align 4
  %and16.i1910 = and i32 %879, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1910)
  %tobool.not.i1911 = icmp eq i32 %and16.i1910, 0
  br i1 %tobool.not.i1911, label %for.body927.dib3000_write_reg.exit1919_crit_edge, label %do.end.i1915

for.body927.dib3000_write_reg.exit1919_crit_edge: ; preds = %for.body927
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1919

do.end.i1915:                                     ; preds = %for.body927
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i1912 = zext i16 %866 to i32
  %conv.i1913 = zext i16 %864 to i32
  %call.i1914 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv.i1913, i32 noundef %conv.i1913, i32 noundef %conv6.i1912, i32 noundef %conv6.i1912) #11
  br label %dib3000_write_reg.exit1919

dib3000_write_reg.exit1919:                       ; preds = %do.end.i1915, %for.body927.dib3000_write_reg.exit1919_crit_edge
  %880 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %1, align 4
  %call25.i1916 = call i32 @i2c_transfer(ptr noundef %881, ptr noundef nonnull %msg.i1900, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1916)
  %cmp.not.i1917 = icmp eq i32 %call25.i1916, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1900) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1899) #7
  br i1 %cmp.not.i1917, label %for.cond924, label %do.end935

do.end935:                                        ; preds = %dib3000_write_reg.exit1919
  call void @__sanitizer_cov_trace_pc() #9
  %conv938 = zext i16 %866 to i32
  %conv940 = zext i16 %864 to i32
  %call941 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %conv938, i32 noundef %conv940) #11
  br label %cleanup1069

cleanup.cont948.critedge:                         ; preds = %for.cond924
  %882 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load i32, ptr %modulation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %883)
  %cmp950 = icmp eq i32 %883, 6
  br i1 %cmp950, label %cleanup.cont948.critedge.if.then962_crit_edge, label %lor.lhs.false

cleanup.cont948.critedge.if.then962_crit_edge:    ; preds = %cleanup.cont948.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then962

lor.lhs.false:                                    ; preds = %cleanup.cont948.critedge
  %884 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load i32, ptr %hierarchy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %885)
  %cmp953 = icmp eq i32 %885, 4
  %or.cond = or i1 %cmp956, %cmp953
  br i1 %or.cond, label %lor.lhs.false.if.then962_crit_edge, label %lor.lhs.false958

lor.lhs.false.if.then962_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then962

lor.lhs.false958:                                 ; preds = %lor.lhs.false
  %886 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load i32, ptr %inversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %887)
  %cmp960 = icmp eq i32 %887, 2
  br i1 %cmp960, label %lor.lhs.false958.if.then962_crit_edge, label %if.else1049

lor.lhs.false958.if.then962_crit_edge:            ; preds = %lor.lhs.false958
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then962

if.then962:                                       ; preds = %lor.lhs.false958.if.then962_crit_edge, %lor.lhs.false.if.then962_crit_edge, %cleanup.cont948.critedge.if.then962_crit_edge
  %888 = load i32, ptr @debug, align 4
  %and964 = and i32 %888, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and964)
  %tobool965.not = icmp eq i32 %and964, 0
  br i1 %tobool965.not, label %if.then962.do.end974_crit_edge, label %do.end969

if.then962.do.end974_crit_edge:                   ; preds = %if.then962
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end974

do.end969:                                        ; preds = %if.then962
  call void @__sanitizer_cov_trace_pc() #9
  %call971 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.125) #11
  br label %do.end974

do.end974:                                        ; preds = %do.end969, %if.then962.do.end974_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1920) #7
  %889 = getelementptr inbounds [4 x i8], ptr %b.i1920, i32 0, i32 1
  %890 = getelementptr inbounds [4 x i8], ptr %b.i1920, i32 0, i32 2
  %891 = getelementptr inbounds [4 x i8], ptr %b.i1920, i32 0, i32 3
  %892 = ptrtoint ptr %b.i1920 to i32
  call void @__asan_store1_noabort(i32 %892)
  store i8 0, ptr %b.i1920, align 1
  %893 = ptrtoint ptr %889 to i32
  call void @__asan_store1_noabort(i32 %893)
  store i8 79, ptr %889, align 1
  %894 = ptrtoint ptr %890 to i32
  call void @__asan_store1_noabort(i32 %894)
  store i8 0, ptr %890, align 1
  %895 = ptrtoint ptr %891 to i32
  call void @__asan_store1_noabort(i32 %895)
  store i8 1, ptr %891, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1921) #7
  %896 = getelementptr inbounds i8, ptr %msg.i1921, i32 4
  %897 = ptrtoint ptr %896 to i32
  call void @__asan_store4_noabort(i32 %897)
  store i32 327679, ptr %896, align 4
  %898 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %898)
  %899 = load i8, ptr %config.i1334, align 4
  %conv15.i1923 = zext i8 %899 to i16
  %900 = ptrtoint ptr %msg.i1921 to i32
  call void @__asan_store2_noabort(i32 %900)
  store i16 %conv15.i1923, ptr %msg.i1921, align 4
  %flags.i1924 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1921, i32 0, i32 1
  %901 = ptrtoint ptr %flags.i1924 to i32
  call void @__asan_store2_noabort(i32 %901)
  store i16 0, ptr %flags.i1924, align 2
  %buf.i1926 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1921, i32 0, i32 3
  %902 = ptrtoint ptr %buf.i1926 to i32
  call void @__asan_store4_noabort(i32 %902)
  store ptr %b.i1920, ptr %buf.i1926, align 4
  %903 = load i32, ptr @debug, align 4
  %and16.i1927 = and i32 %903, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1927)
  %tobool.not.i1928 = icmp eq i32 %and16.i1927, 0
  br i1 %tobool.not.i1928, label %do.end974.dib3000_write_reg.exit1934_crit_edge, label %do.end.i1930

do.end974.dib3000_write_reg.exit1934_crit_edge:   ; preds = %do.end974
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1934

do.end.i1930:                                     ; preds = %do.end974
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1929 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 79, i32 noundef 79, i32 noundef 1, i32 noundef 1) #11
  br label %dib3000_write_reg.exit1934

dib3000_write_reg.exit1934:                       ; preds = %do.end.i1930, %do.end974.dib3000_write_reg.exit1934_crit_edge
  %904 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %1, align 4
  %call25.i1931 = call i32 @i2c_transfer(ptr noundef %905, ptr noundef nonnull %msg.i1921, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1931)
  %cmp.not.i1932 = icmp eq i32 %call25.i1931, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1921) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1920) #7
  br i1 %cmp.not.i1932, label %if.end983, label %do.end980

do.end980:                                        ; preds = %dib3000_write_reg.exit1934
  call void @__sanitizer_cov_trace_pc() #9
  %call982 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 79) #11
  br label %cleanup1069

if.end983:                                        ; preds = %dib3000_write_reg.exit1934
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1935) #7
  %906 = getelementptr inbounds [4 x i8], ptr %b.i1935, i32 0, i32 1
  %907 = getelementptr inbounds [4 x i8], ptr %b.i1935, i32 0, i32 2
  %908 = getelementptr inbounds [4 x i8], ptr %b.i1935, i32 0, i32 3
  %909 = ptrtoint ptr %b.i1935 to i32
  call void @__asan_store1_noabort(i32 %909)
  store i8 0, ptr %b.i1935, align 1
  %910 = ptrtoint ptr %906 to i32
  call void @__asan_store1_noabort(i32 %910)
  store i8 0, ptr %906, align 1
  %911 = ptrtoint ptr %907 to i32
  call void @__asan_store1_noabort(i32 %911)
  store i8 0, ptr %907, align 1
  %912 = ptrtoint ptr %908 to i32
  call void @__asan_store1_noabort(i32 %912)
  store i8 2, ptr %908, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1936) #7
  %913 = getelementptr inbounds i8, ptr %msg.i1936, i32 4
  %914 = ptrtoint ptr %913 to i32
  call void @__asan_store4_noabort(i32 %914)
  store i32 327679, ptr %913, align 4
  %915 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %915)
  %916 = load i8, ptr %config.i1334, align 4
  %conv15.i1938 = zext i8 %916 to i16
  %917 = ptrtoint ptr %msg.i1936 to i32
  call void @__asan_store2_noabort(i32 %917)
  store i16 %conv15.i1938, ptr %msg.i1936, align 4
  %flags.i1939 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1936, i32 0, i32 1
  %918 = ptrtoint ptr %flags.i1939 to i32
  call void @__asan_store2_noabort(i32 %918)
  store i16 0, ptr %flags.i1939, align 2
  %buf.i1941 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1936, i32 0, i32 3
  %919 = ptrtoint ptr %buf.i1941 to i32
  call void @__asan_store4_noabort(i32 %919)
  store ptr %b.i1935, ptr %buf.i1941, align 4
  %920 = load i32, ptr @debug, align 4
  %and16.i1942 = and i32 %920, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1942)
  %tobool.not.i1943 = icmp eq i32 %and16.i1942, 0
  br i1 %tobool.not.i1943, label %if.end983.dib3000_write_reg.exit1949_crit_edge, label %do.end.i1945

if.end983.dib3000_write_reg.exit1949_crit_edge:   ; preds = %if.end983
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1949

do.end.i1945:                                     ; preds = %if.end983
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1944 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 2) #11
  br label %dib3000_write_reg.exit1949

dib3000_write_reg.exit1949:                       ; preds = %do.end.i1945, %if.end983.dib3000_write_reg.exit1949_crit_edge
  %921 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load ptr, ptr %1, align 4
  %call25.i1946 = call i32 @i2c_transfer(ptr noundef %922, ptr noundef nonnull %msg.i1936, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1946)
  %cmp.not.i1947 = icmp eq i32 %call25.i1946, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1936) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1935) #7
  br i1 %cmp.not.i1947, label %if.end992, label %do.end989

do.end989:                                        ; preds = %dib3000_write_reg.exit1949
  call void @__sanitizer_cov_trace_pc() #9
  %call991 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 0) #11
  br label %cleanup1069

if.end992:                                        ; preds = %dib3000_write_reg.exit1949
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b.i1950) #7
  %923 = ptrtoint ptr %b.i1950 to i32
  call void @__asan_store4_noabort(i32 %923)
  store i32 0, ptr %b.i1950, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1951) #7
  %924 = getelementptr inbounds i8, ptr %msg.i1951, i32 4
  %925 = ptrtoint ptr %924 to i32
  call void @__asan_store4_noabort(i32 %925)
  store i32 327679, ptr %924, align 4
  %926 = ptrtoint ptr %config.i1334 to i32
  call void @__asan_load1_noabort(i32 %926)
  %927 = load i8, ptr %config.i1334, align 4
  %conv15.i1953 = zext i8 %927 to i16
  %928 = ptrtoint ptr %msg.i1951 to i32
  call void @__asan_store2_noabort(i32 %928)
  store i16 %conv15.i1953, ptr %msg.i1951, align 4
  %flags.i1954 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1951, i32 0, i32 1
  %929 = ptrtoint ptr %flags.i1954 to i32
  call void @__asan_store2_noabort(i32 %929)
  store i16 0, ptr %flags.i1954, align 2
  %buf.i1956 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1951, i32 0, i32 3
  %930 = ptrtoint ptr %buf.i1956 to i32
  call void @__asan_store4_noabort(i32 %930)
  store ptr %b.i1950, ptr %buf.i1956, align 4
  %931 = load i32, ptr @debug, align 4
  %and16.i1957 = and i32 %931, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i1957)
  %tobool.not.i1958 = icmp eq i32 %and16.i1957, 0
  br i1 %tobool.not.i1958, label %if.end992.dib3000_write_reg.exit1964_crit_edge, label %do.end.i1960

if.end992.dib3000_write_reg.exit1964_crit_edge:   ; preds = %if.end992
  call void @__sanitizer_cov_trace_pc() #9
  br label %dib3000_write_reg.exit1964

do.end.i1960:                                     ; preds = %if.end992
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1959 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %dib3000_write_reg.exit1964

dib3000_write_reg.exit1964:                       ; preds = %do.end.i1960, %if.end992.dib3000_write_reg.exit1964_crit_edge
  %932 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load ptr, ptr %1, align 4
  %call25.i1961 = call i32 @i2c_transfer(ptr noundef %933, ptr noundef nonnull %msg.i1951, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25.i1961)
  %cmp.not.i1962 = icmp eq i32 %call25.i1961, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1951) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b.i1950) #7
  br i1 %cmp.not.i1962, label %while.cond.preheader, label %do.end998

while.cond.preheader:                             ; preds = %dib3000_write_reg.exit1964
  %call10022005 = call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 434)
  %call10042006 = call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 427)
  %and.i2007 = and i32 %call10022005, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2007)
  %tobool.not.i19662008 = icmp eq i32 %and.i2007, 0
  br i1 %tobool.not.i19662008, label %while.cond.preheader.if.else20.i_crit_edge, label %while.cond.preheader.if.then.i_crit_edge

while.cond.preheader.if.then.i_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

while.cond.preheader.if.else20.i_crit_edge:       ; preds = %while.cond.preheader
  br label %if.else20.i

do.end998:                                        ; preds = %dib3000_write_reg.exit1964
  call void @__sanitizer_cov_trace_pc() #9
  %call1000 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0) #11
  br label %cleanup1069

if.then.i:                                        ; preds = %while.body.if.then.i_crit_edge, %while.cond.preheader.if.then.i_crit_edge
  %as_count.0.lcssa = phi i32 [ 0, %while.cond.preheader.if.then.i_crit_edge ], [ %inc1009, %while.body.if.then.i_crit_edge ]
  %call1004.lcssa = phi i32 [ %call10042006, %while.cond.preheader.if.then.i_crit_edge ], [ %call1004, %while.body.if.then.i_crit_edge ]
  %934 = and i32 %call1004.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %934)
  %tobool3.not.i = icmp eq i32 %934, 0
  %935 = load i32, ptr @debug, align 4
  %and11.i = and i32 %935, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %not.tobool3.not.i = xor i1 %tobool3.not.i, true
  %..i = zext i1 %not.tobool3.not.i to i32
  %.str.321..str.318.i = select i1 %tobool3.not.i, ptr @.str.321, ptr @.str.318
  br i1 %tobool12.not.i, label %if.then.i.do.body1012_crit_edge, label %if.then.i.return.sink.split.i_crit_edge

if.then.i.return.sink.split.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

if.then.i.do.body1012_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1012

if.else20.i:                                      ; preds = %while.body.if.else20.i_crit_edge, %while.cond.preheader.if.else20.i_crit_edge
  %call10022010 = phi i32 [ %call1002, %while.body.if.else20.i_crit_edge ], [ %call10022005, %while.cond.preheader.if.else20.i_crit_edge ]
  %as_count.02009 = phi i32 [ %inc1009, %while.body.if.else20.i_crit_edge ], [ 0, %while.cond.preheader.if.else20.i_crit_edge ]
  %and22.i = and i32 %call10022010, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %land.rhs, label %do.body25.i

do.body25.i:                                      ; preds = %if.else20.i
  %936 = load i32, ptr @debug, align 4
  %and26.i = and i32 %936, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %do.body25.i.do.body1012_crit_edge, label %do.body25.i.return.sink.split.i_crit_edge

do.body25.i.return.sink.split.i_crit_edge:        ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split.i

do.body25.i.do.body1012_crit_edge:                ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1012

return.sink.split.i:                              ; preds = %do.body25.i.return.sink.split.i_crit_edge, %if.then.i.return.sink.split.i_crit_edge
  %as_count.01981 = phi i32 [ %as_count.02009, %do.body25.i.return.sink.split.i_crit_edge ], [ %as_count.0.lcssa, %if.then.i.return.sink.split.i_crit_edge ]
  %.str.324.sink.i = phi ptr [ @.str.324, %do.body25.i.return.sink.split.i_crit_edge ], [ %.str.321..str.318.i, %if.then.i.return.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ 0, %do.body25.i.return.sink.split.i_crit_edge ], [ %..i, %if.then.i.return.sink.split.i_crit_edge ]
  %call32.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.324.sink.i, ptr noundef nonnull @.str.319) #11
  br label %do.body1012

land.rhs:                                         ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %as_count.02009)
  %exitcond2053.not = icmp eq i32 %as_count.02009, 100
  br i1 %exitcond2053.not, label %land.rhs.do.body1012_crit_edge, label %while.body

land.rhs.do.body1012_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1012

while.body:                                       ; preds = %land.rhs
  %inc1009 = add nuw nsw i32 %as_count.02009, 1
  call void @msleep(i32 noundef 1) #7
  %call1002 = call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 434)
  %call1004 = call fastcc i32 @dib3000_read_reg(ptr noundef %1, i16 noundef zeroext 427)
  %and.i = and i32 %call1002, 2
  %tobool.not.i1966 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i1966, label %while.body.if.else20.i_crit_edge, label %while.body.if.then.i_crit_edge

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

while.body.if.else20.i_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else20.i

do.body1012:                                      ; preds = %land.rhs.do.body1012_crit_edge, %return.sink.split.i, %do.body25.i.do.body1012_crit_edge, %if.then.i.do.body1012_crit_edge
  %retval.0.i1972 = phi i32 [ %..i, %if.then.i.do.body1012_crit_edge ], [ %retval.0.ph.i, %return.sink.split.i ], [ 0, %do.body25.i.do.body1012_crit_edge ], [ -1, %land.rhs.do.body1012_crit_edge ]
  %as_count.1 = phi i32 [ %as_count.0.lcssa, %if.then.i.do.body1012_crit_edge ], [ %as_count.01981, %return.sink.split.i ], [ %as_count.02009, %do.body25.i.do.body1012_crit_edge ], [ 101, %land.rhs.do.body1012_crit_edge ]
  %937 = load i32, ptr @debug, align 4
  %and1013 = and i32 %937, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1013)
  %tobool1014.not = icmp eq i32 %and1013, 0
  br i1 %tobool1014.not, label %do.body1012.do.end1023_crit_edge, label %do.end1018

do.body1012.do.end1023_crit_edge:                 ; preds = %do.body1012
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1023

do.end1018:                                       ; preds = %do.body1012
  call void @__sanitizer_cov_trace_pc() #9
  %call1020 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.125, i32 noundef %retval.0.i1972, i32 noundef %as_count.1) #11
  br label %do.end1023

do.end1023:                                       ; preds = %do.end1018, %do.body1012.do.end1023_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i1972)
  %cmp1024 = icmp eq i32 %retval.0.i1972, 1
  br i1 %cmp1024, label %if.then1026, label %do.end1023.cleanup1069_crit_edge

do.end1023.cleanup1069_crit_edge:                 ; preds = %do.end1023
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup1069

if.then1026:                                      ; preds = %do.end1023
  %call1027 = call i32 @dib3000mb_get_frontend(ptr noundef %fe, ptr noundef %dtv_property_cache)
  %938 = load i32, ptr @debug, align 4
  %and1032 = and i32 %938, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1032)
  %tobool1033.not = icmp eq i32 %and1032, 0
  br i1 %tobool1033.not, label %if.then1026.do.end1042_crit_edge, label %do.end1037

if.then1026.do.end1042_crit_edge:                 ; preds = %if.then1026
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end1042

do.end1037:                                       ; preds = %if.then1026
  call void @__sanitizer_cov_trace_pc() #9
  %call1039 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312, ptr noundef nonnull @.str.125) #11
  br label %do.end1042

do.end1042:                                       ; preds = %do.end1037, %if.then1026.do.end1042_crit_edge
  %call1043 = call fastcc i32 @dib3000mb_set_frontend(ptr noundef %fe, i32 noundef 0)
  br label %cleanup1069

if.else1049:                                      ; preds = %lor.lhs.false958
  %call1050 = call fastcc i32 @dib3000_write_reg(ptr noundef %1, i16 noundef zeroext 0, i16 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1050)
  %tobool1051.not = icmp eq i32 %call1050, 0
  br i1 %tobool1051.not, label %if.end1058, label %do.end1055

do.end1055:                                       ; preds = %if.else1049
  call void @__sanitizer_cov_trace_pc() #9
  %call1057 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 4, i32 noundef 0) #11
  br label %cleanup1069

if.end1058:                                       ; preds = %if.else1049
  %call1059 = call fastcc i32 @dib3000_write_reg(ptr noundef %1, i16 noundef zeroext 0, i16 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1059)
  %tobool1060.not = icmp eq i32 %call1059, 0
  br i1 %tobool1060.not, label %if.end1058.cleanup1069_crit_edge, label %do.end1064

if.end1058.cleanup1069_crit_edge:                 ; preds = %if.end1058
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup1069

do.end1064:                                       ; preds = %if.end1058
  call void @__sanitizer_cov_trace_pc() #9
  %call1066 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0) #11
  br label %cleanup1069

cleanup1069:                                      ; preds = %do.end1064, %if.end1058.cleanup1069_crit_edge, %do.end1055, %do.end1042, %do.end1023.cleanup1069_crit_edge, %do.end998, %do.end989, %do.end980, %do.end935, %do.end919, %do.end910, %do.end901, %do.end882, %do.end866, %do.end857, %do.end848, %do.end838, %do.end828, %do.end818, %do.end808, %do.end789, %do.end778, %do.end715, %do.end693, %do.end671, %do.end649, %do.end627, %if.end608.cleanup1069_crit_edge, %do.end603, %do.end594, %do.end581, %do.end572, %do.end544, %do.end522, %do.end500, %sw.epilog468.cleanup1069_crit_edge, %do.end463, %do.end441, %do.end419, %sw.epilog400.cleanup1069_crit_edge, %do.end395, %do.end360, %sw.epilog341.cleanup1069_crit_edge, %do.end323, %do.end301, %do.end279, %do.end257, %sw.epilog238.cleanup1069_crit_edge, %do.end220, %do.end198, %if.end179.cleanup1069_crit_edge, %do.end176, %do.end155, %do.end138, %do.end112, %do.end85, %do.end59, %do.end32, %do.end, %if.end.cleanup1069_crit_edge
  %retval.11 = phi i32 [ -22, %do.end155 ], [ -121, %do.end176 ], [ -121, %do.end395 ], [ -121, %do.end572 ], [ -121, %do.end581 ], [ -121, %do.end778 ], [ -121, %do.end789 ], [ -121, %do.end808 ], [ -121, %do.end828 ], [ -121, %do.end848 ], [ -121, %do.end857 ], [ -121, %do.end866 ], [ -121, %do.end901 ], [ -121, %do.end910 ], [ -121, %do.end919 ], [ -121, %do.end1055 ], [ -121, %do.end1064 ], [ -121, %do.end818 ], [ -121, %do.end838 ], [ -121, %do.end715 ], [ -121, %do.end693 ], [ -121, %do.end671 ], [ -121, %do.end649 ], [ -121, %do.end627 ], [ -121, %do.end594 ], [ -121, %do.end603 ], [ -121, %do.end544 ], [ -121, %do.end522 ], [ -121, %do.end500 ], [ -121, %do.end463 ], [ -121, %do.end441 ], [ -121, %do.end419 ], [ -121, %do.end360 ], [ -121, %do.end323 ], [ -121, %do.end301 ], [ -121, %do.end279 ], [ -121, %do.end257 ], [ -121, %do.end220 ], [ -121, %do.end198 ], [ -121, %do.end ], [ -121, %do.end32 ], [ -121, %do.end59 ], [ -121, %do.end85 ], [ -121, %do.end112 ], [ -121, %do.end138 ], [ -95, %if.end.cleanup1069_crit_edge ], [ -22, %if.end179.cleanup1069_crit_edge ], [ -22, %sw.epilog238.cleanup1069_crit_edge ], [ -22, %sw.epilog341.cleanup1069_crit_edge ], [ -22, %sw.epilog400.cleanup1069_crit_edge ], [ -22, %sw.epilog468.cleanup1069_crit_edge ], [ -22, %if.end608.cleanup1069_crit_edge ], [ -121, %do.end882 ], [ -121, %do.end935 ], [ 0, %do.end1023.cleanup1069_crit_edge ], [ 0, %if.end1058.cleanup1069_crit_edge ], [ -121, %do.end980 ], [ -121, %do.end989 ], [ -121, %do.end998 ], [ %call1043, %do.end1042 ]
  ret i32 %retval.11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 287)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 287)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !69, !70, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !250, !251, !252, !254, !255, !257, !258, !259, !261, !262, !264, !265, !267, !268, !270, !271, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !287, !288, !289, !291, !292, !294, !295, !296, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !312, !313, !314, !316, !317, !319, !320, !321, !323, !324, !326, !327, !328, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !355, !356, !357, !359, !360, !362, !363, !364, !366, !367, !369, !370, !371, !373, !374, !376, !377, !378, !380, !381, !382, !384, !385, !387, !388, !389, !391, !392, !394, !395, !396, !398, !399, !401, !402, !403, !405, !406, !408, !409, !411, !412, !414, !415, !417, !418, !419, !421, !422, !424, !425, !426, !428, !429, !431, !432, !433, !435, !436, !438, !439, !440, !442, !443, !445, !446, !447, !449, !450, !452, !453, !454, !456, !457, !458, !460, !461, !462, !464, !465, !467, !468, !470, !471, !473, !474, !476, !477, !479, !480, !482, !483, !485, !486, !488, !489, !491, !492, !494, !495, !497, !498, !500, !501, !503, !504, !506, !507, !508, !510, !511, !513, !514, !516, !517, !519, !520, !521, !523, !524, !525, !527, !528, !530, !531, !533, !535, !537, !539, !540, !541, !542, !544, !545, !546, !548, !549, !550, !552, !553, !554, !555, !557, !558, !559, !561, !562, !563, !565, !566, !567, !569, !570, !571, !573, !574, !575, !577, !578, !579, !581, !582, !583, !585, !586, !587, !589, !590, !591, !593, !594, !595, !597, !598, !599, !601, !602, !603, !605, !606, !607, !609, !610, !612, !613, !614, !616, !617, !618, !620, !621, !622, !624, !625, !626, !628, !629, !630, !632, !633, !634, !636, !637, !638, !640, !641, !643, !644, !645, !647, !648, !649, !651, !652, !653, !655, !656, !657, !659, !660, !661, !663, !664, !666, !667, !668, !670, !671, !672, !674, !675, !676, !678, !679, !681, !682, !683, !684, !686, !687}
!llvm.module.flags = !{!688, !689, !690, !691, !692, !693, !694, !695}
!llvm.ident = !{!696}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 41, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 814, i32 1}
!7 = !{ptr @__UNIQUE_ID_description293, !8, !"__UNIQUE_ID_description293", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 815, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 816, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @__ksymtab_dib3000mb_attach, !13, !"__ksymtab_dib3000mb_attach", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 818, i32 1}
!14 = !{ptr @debug, !15, !"debug", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 39, i32 12}
!16 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 61, i32 3}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @dib3000_read_reg._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @dib3000_read_reg._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 63, i32 2}
!25 = !{ptr @dib3000_read_reg._entry.3, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @dib3000_read_reg._entry_ptr.5, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 725, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dib3000mb_pid_parse._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @dib3000mb_pid_parse._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 726, i32 2}
!36 = !{ptr @dib3000mb_pid_parse._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dib3000mb_pid_parse._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 78, i32 2}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dib3000_write_reg._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @dib3000_write_reg._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 713, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @dib3000mb_fifo_control._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @dib3000mb_fifo_control._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @dib3000mb_fifo_control._entry.17, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 715, i32 3}
!50 = !{ptr @dib3000mb_fifo_control._entry_ptr.18, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @dib3000mb_fifo_control._entry.19, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 717, i32 3}
!53 = !{ptr @dib3000mb_fifo_control._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 705, i32 2}
!56 = !{ptr @dib3000mb_pid_control._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @dib3000mb_pid_control._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 734, i32 3}
!60 = !{ptr @dib3000mb_tuner_pass_ctrl._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @dib3000mb_tuner_pass_ctrl._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @dib3000mb_tuner_pass_ctrl._entry.23, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 736, i32 3}
!64 = !{ptr @dib3000mb_tuner_pass_ctrl._entry_ptr.24, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @dib3000mb_ops, !66, !"dib3000mb_ops", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 781, i32 38}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 368, i32 2}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @dib3000mb_fe_init._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @dib3000mb_fe_init._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @dib3000mb_fe_init._entry.27, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 369, i32 2}
!74 = !{ptr @dib3000mb_fe_init._entry_ptr.28, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @dib3000mb_fe_init._entry.29, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 371, i32 2}
!77 = !{ptr @dib3000mb_fe_init._entry_ptr.30, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @dib3000mb_fe_init._entry.31, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 373, i32 2}
!80 = !{ptr @dib3000mb_fe_init._entry_ptr.32, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @dib3000mb_fe_init._entry.33, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 374, i32 2}
!83 = !{ptr @dib3000mb_fe_init._entry_ptr.34, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @dib3000mb_fe_init._entry.35, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 376, i32 2}
!86 = !{ptr @dib3000mb_fe_init._entry_ptr.36, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @dib3000mb_fe_init._entry.37, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 378, i32 2}
!89 = !{ptr @dib3000mb_fe_init._entry_ptr.38, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @dib3000mb_fe_init._entry.39, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 380, i32 2}
!92 = !{ptr @dib3000mb_fe_init._entry_ptr.40, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @dib3000mb_fe_init._entry.41, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 381, i32 2}
!95 = !{ptr @dib3000mb_fe_init._entry_ptr.42, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @dib3000mb_fe_init._entry.43, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 383, i32 2}
!98 = !{ptr @dib3000mb_fe_init._entry_ptr.44, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @dib3000mb_fe_init._entry.45, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 385, i32 2}
!101 = !{ptr @dib3000mb_fe_init._entry_ptr.46, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @dib3000mb_fe_init._entry.47, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 388, i32 2}
!104 = !{ptr @dib3000mb_fe_init._entry_ptr.48, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @dib3000mb_fe_init._entry.49, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 390, i32 2}
!107 = !{ptr @dib3000mb_fe_init._entry_ptr.50, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @dib3000mb_fe_init._entry.51, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 392, i32 2}
!110 = !{ptr @dib3000mb_fe_init._entry_ptr.52, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @dib3000mb_fe_init._entry.53, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 394, i32 2}
!113 = !{ptr @dib3000mb_fe_init._entry_ptr.54, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @dib3000mb_fe_init._entry.55, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 396, i32 2}
!116 = !{ptr @dib3000mb_fe_init._entry_ptr.56, !115, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @dib3000mb_fe_init._entry.57, !118, !"_entry", i1 false, i1 false}
!118 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 398, i32 2}
!119 = !{ptr @dib3000mb_fe_init._entry_ptr.58, !118, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @dib3000mb_fe_init._entry.59, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 399, i32 2}
!122 = !{ptr @dib3000mb_fe_init._entry_ptr.60, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @dib3000mb_fe_init._entry.61, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 400, i32 2}
!125 = !{ptr @dib3000mb_fe_init._entry_ptr.62, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @dib3000mb_fe_init._entry.63, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 401, i32 2}
!128 = !{ptr @dib3000mb_fe_init._entry_ptr.64, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @dib3000mb_fe_init._entry.65, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 403, i32 2}
!131 = !{ptr @dib3000mb_fe_init._entry_ptr.66, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @dib3000mb_fe_init._entry.67, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 405, i32 2}
!134 = !{ptr @dib3000mb_fe_init._entry_ptr.68, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @dib3000mb_fe_init._entry.69, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 406, i32 2}
!137 = !{ptr @dib3000mb_fe_init._entry_ptr.70, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @dib3000mb_fe_init._entry.71, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 407, i32 2}
!140 = !{ptr @dib3000mb_fe_init._entry_ptr.72, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @dib3000mb_fe_init._entry.73, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 408, i32 2}
!143 = !{ptr @dib3000mb_fe_init._entry_ptr.74, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @dib3000mb_fe_init._entry.75, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 409, i32 2}
!146 = !{ptr @dib3000mb_fe_init._entry_ptr.76, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @dib3000mb_fe_init._entry.77, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 410, i32 2}
!149 = !{ptr @dib3000mb_fe_init._entry_ptr.78, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @dib3000mb_fe_init._entry.79, !151, !"_entry", i1 false, i1 false}
!151 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 411, i32 2}
!152 = !{ptr @dib3000mb_fe_init._entry_ptr.80, !151, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @dib3000mb_fe_init._entry.81, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 412, i32 2}
!155 = !{ptr @dib3000mb_fe_init._entry_ptr.82, !154, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @dib3000mb_fe_init._entry.83, !157, !"_entry", i1 false, i1 false}
!157 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 413, i32 2}
!158 = !{ptr @dib3000mb_fe_init._entry_ptr.84, !157, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @dib3000mb_fe_init._entry.85, !160, !"_entry", i1 false, i1 false}
!160 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 414, i32 2}
!161 = !{ptr @dib3000mb_fe_init._entry_ptr.86, !160, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @dib3000mb_fe_init._entry.87, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 415, i32 2}
!164 = !{ptr @dib3000mb_fe_init._entry_ptr.88, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @dib3000mb_fe_init._entry.89, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 416, i32 2}
!167 = !{ptr @dib3000mb_fe_init._entry_ptr.90, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @dib3000mb_fe_init._entry.91, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 417, i32 2}
!170 = !{ptr @dib3000mb_fe_init._entry_ptr.92, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @dib3000mb_fe_init._entry.93, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 418, i32 2}
!173 = !{ptr @dib3000mb_fe_init._entry_ptr.94, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @dib3000mb_fe_init._entry.95, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 419, i32 2}
!176 = !{ptr @dib3000mb_fe_init._entry_ptr.96, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @dib3000mb_fe_init._entry.97, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 421, i32 2}
!179 = !{ptr @dib3000mb_fe_init._entry_ptr.98, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @dib3000mb_fe_init._entry.99, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 423, i32 2}
!182 = !{ptr @dib3000mb_fe_init._entry_ptr.100, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @dib3000mb_fe_init._entry.101, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 424, i32 2}
!185 = !{ptr @dib3000mb_fe_init._entry_ptr.102, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @dib3000mb_fe_init._entry.103, !187, !"_entry", i1 false, i1 false}
!187 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 425, i32 2}
!188 = !{ptr @dib3000mb_fe_init._entry_ptr.104, !187, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @dib3000mb_fe_init._entry.105, !190, !"_entry", i1 false, i1 false}
!190 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 427, i32 2}
!191 = !{ptr @dib3000mb_fe_init._entry_ptr.106, !190, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @dib3000mb_fe_init._entry.107, !193, !"_entry", i1 false, i1 false}
!193 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 429, i32 2}
!194 = !{ptr @dib3000mb_fe_init._entry_ptr.108, !193, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @dib3000mb_fe_init._entry.109, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 430, i32 2}
!197 = !{ptr @dib3000mb_fe_init._entry_ptr.110, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @dib3000mb_fe_init._entry.111, !199, !"_entry", i1 false, i1 false}
!199 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 431, i32 2}
!200 = !{ptr @dib3000mb_fe_init._entry_ptr.112, !199, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @dib3000mb_fe_init._entry.113, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 432, i32 2}
!203 = !{ptr @dib3000mb_fe_init._entry_ptr.114, !202, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @dib3000mb_fe_init._entry.115, !205, !"_entry", i1 false, i1 false}
!205 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 433, i32 2}
!206 = !{ptr @dib3000mb_fe_init._entry_ptr.116, !205, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @dib3000mb_fe_init._entry.117, !208, !"_entry", i1 false, i1 false}
!208 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 434, i32 2}
!209 = !{ptr @dib3000mb_fe_init._entry_ptr.118, !208, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @dib3000mb_fe_init._entry.119, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 436, i32 2}
!212 = !{ptr @dib3000mb_fe_init._entry_ptr.120, !211, !"_entry_ptr", i1 false, i1 false}
!213 = distinct !{null, !214, !"dib3000mb_reg_timing_freq", i1 false, i1 false}
!214 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 132, i32 12}
!215 = distinct !{null, !216, !"dib3000mb_timing_freq", i1 false, i1 false}
!216 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 133, i32 12}
!217 = !{ptr @dib3000mb_reg_impulse_noise, !218, !"dib3000mb_reg_impulse_noise", i1 false, i1 false}
!218 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 142, i32 12}
!219 = !{ptr @dib3000mb_impulse_noise_values, !220, !"dib3000mb_impulse_noise_values", i1 false, i1 false}
!220 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 151, i32 12}
!221 = !{ptr @dib3000mb_reg_agc_gain, !222, !"dib3000mb_reg_agc_gain", i1 false, i1 false}
!222 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 165, i32 12}
!223 = !{ptr @dib3000mb_default_agc_gain, !224, !"dib3000mb_default_agc_gain", i1 false, i1 false}
!224 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 169, i32 12}
!225 = !{ptr @dib3000mb_reg_phase_noise, !226, !"dib3000mb_reg_phase_noise", i1 false, i1 false}
!226 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 175, i32 12}
!227 = !{ptr @dib3000mb_default_noise_phase, !228, !"dib3000mb_default_noise_phase", i1 false, i1 false}
!228 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 177, i32 12}
!229 = distinct !{null, !230, !"dib3000mb_reg_lock_duration", i1 false, i1 false}
!230 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 180, i32 12}
!231 = distinct !{null, !232, !"dib3000mb_default_lock_duration", i1 false, i1 false}
!232 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 181, i32 12}
!233 = !{ptr @dib3000mb_reg_agc_bandwidth, !234, !"dib3000mb_reg_agc_bandwidth", i1 false, i1 false}
!234 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 184, i32 12}
!235 = !{ptr @dib3000mb_agc_bandwidth_low, !236, !"dib3000mb_agc_bandwidth_low", i1 false, i1 false}
!236 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 186, i32 12}
!237 = !{ptr @dib3000_seq, !238, !"dib3000_seq", i1 false, i1 false}
!238 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 101, i32 12}
!239 = !{ptr @dib3000mb_reg_bandwidth, !240, !"dib3000mb_reg_bandwidth", i1 false, i1 false}
!240 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 220, i32 12}
!241 = !{ptr @dib3000mb_bandwidth_8mhz, !242, !"dib3000mb_bandwidth_8mhz", i1 false, i1 false}
!242 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 227, i32 12}
!243 = !{ptr @dib3000mb_reg_filter_coeffs, !244, !"dib3000mb_reg_filter_coeffs", i1 false, i1 false}
!244 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 373, i32 12}
!245 = !{ptr @dib3000mb_filter_coeffs, !246, !"dib3000mb_filter_coeffs", i1 false, i1 false}
!246 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 379, i32 12}
!247 = !{ptr @.str.121, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 673, i32 2}
!249 = !{ptr @.str.122, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @dib3000mb_sleep._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @dib3000mb_sleep._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @dib3000mb_sleep._entry.123, !253, !"_entry", i1 false, i1 false}
!253 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 674, i32 2}
!254 = !{ptr @dib3000mb_sleep._entry_ptr.124, !253, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.125, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 129, i32 5}
!257 = !{ptr @dib3000mb_set_frontend._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @dib3000mb_set_frontend._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @dib3000mb_set_frontend._entry.126, !260, !"_entry", i1 false, i1 false}
!260 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 130, i32 5}
!261 = !{ptr @dib3000mb_set_frontend._entry_ptr.127, !260, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @dib3000mb_set_frontend._entry.128, !263, !"_entry", i1 false, i1 false}
!263 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 133, i32 5}
!264 = !{ptr @dib3000mb_set_frontend._entry_ptr.129, !263, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @dib3000mb_set_frontend._entry.130, !266, !"_entry", i1 false, i1 false}
!266 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 134, i32 5}
!267 = !{ptr @dib3000mb_set_frontend._entry_ptr.131, !266, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @dib3000mb_set_frontend._entry.132, !269, !"_entry", i1 false, i1 false}
!269 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 137, i32 5}
!270 = !{ptr @dib3000mb_set_frontend._entry_ptr.133, !269, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @dib3000mb_set_frontend._entry.134, !272, !"_entry", i1 false, i1 false}
!272 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 138, i32 5}
!273 = !{ptr @dib3000mb_set_frontend._entry_ptr.135, !272, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.137, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 143, i32 5}
!276 = !{ptr @dib3000mb_set_frontend._entry.136, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @dib3000mb_set_frontend._entry_ptr.138, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.140, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 146, i32 3}
!280 = !{ptr @dib3000mb_set_frontend._entry.139, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @dib3000mb_set_frontend._entry_ptr.141, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @dib3000mb_set_frontend._entry.142, !283, !"_entry", i1 false, i1 false}
!283 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 148, i32 2}
!284 = !{ptr @dib3000mb_set_frontend._entry_ptr.143, !283, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.145, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 152, i32 4}
!287 = !{ptr @dib3000mb_set_frontend._entry.144, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @dib3000mb_set_frontend._entry_ptr.146, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @dib3000mb_set_frontend._entry.147, !290, !"_entry", i1 false, i1 false}
!290 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 153, i32 4}
!291 = !{ptr @dib3000mb_set_frontend._entry_ptr.148, !290, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.150, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 156, i32 4}
!294 = !{ptr @dib3000mb_set_frontend._entry.149, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @dib3000mb_set_frontend._entry_ptr.151, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @dib3000mb_set_frontend._entry.152, !297, !"_entry", i1 false, i1 false}
!297 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 157, i32 4}
!298 = !{ptr @dib3000mb_set_frontend._entry_ptr.153, !297, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.155, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 160, i32 4}
!301 = !{ptr @dib3000mb_set_frontend._entry.154, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @dib3000mb_set_frontend._entry_ptr.156, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.158, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 168, i32 4}
!305 = !{ptr @dib3000mb_set_frontend._entry.157, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @dib3000mb_set_frontend._entry_ptr.159, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @dib3000mb_set_frontend._entry.160, !308, !"_entry", i1 false, i1 false}
!308 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 169, i32 4}
!309 = !{ptr @dib3000mb_set_frontend._entry_ptr.161, !308, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.163, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 172, i32 4}
!312 = !{ptr @dib3000mb_set_frontend._entry.162, !311, !"_entry", i1 false, i1 false}
!313 = !{ptr @dib3000mb_set_frontend._entry_ptr.164, !311, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @dib3000mb_set_frontend._entry.165, !315, !"_entry", i1 false, i1 false}
!315 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 173, i32 4}
!316 = !{ptr @dib3000mb_set_frontend._entry_ptr.166, !315, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.168, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 176, i32 4}
!319 = !{ptr @dib3000mb_set_frontend._entry.167, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @dib3000mb_set_frontend._entry_ptr.169, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @dib3000mb_set_frontend._entry.170, !322, !"_entry", i1 false, i1 false}
!322 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 177, i32 4}
!323 = !{ptr @dib3000mb_set_frontend._entry_ptr.171, !322, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.173, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 180, i32 4}
!326 = !{ptr @dib3000mb_set_frontend._entry.172, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @dib3000mb_set_frontend._entry_ptr.174, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @dib3000mb_set_frontend._entry.175, !329, !"_entry", i1 false, i1 false}
!329 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 181, i32 4}
!330 = !{ptr @dib3000mb_set_frontend._entry_ptr.176, !329, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.178, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 184, i32 4}
!333 = !{ptr @dib3000mb_set_frontend._entry.177, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @dib3000mb_set_frontend._entry_ptr.179, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.181, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 192, i32 4}
!337 = !{ptr @dib3000mb_set_frontend._entry.180, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @dib3000mb_set_frontend._entry_ptr.182, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @dib3000mb_set_frontend._entry.183, !340, !"_entry", i1 false, i1 false}
!340 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 193, i32 4}
!341 = !{ptr @dib3000mb_set_frontend._entry_ptr.184, !340, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.186, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 196, i32 4}
!344 = !{ptr @dib3000mb_set_frontend._entry.185, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @dib3000mb_set_frontend._entry_ptr.187, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.189, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 199, i32 4}
!348 = !{ptr @dib3000mb_set_frontend._entry.188, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @dib3000mb_set_frontend._entry_ptr.190, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @dib3000mb_set_frontend._entry.191, !351, !"_entry", i1 false, i1 false}
!351 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 200, i32 4}
!352 = !{ptr @dib3000mb_set_frontend._entry_ptr.192, !351, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.194, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 208, i32 4}
!355 = !{ptr @dib3000mb_set_frontend._entry.193, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @dib3000mb_set_frontend._entry_ptr.195, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @dib3000mb_set_frontend._entry.196, !358, !"_entry", i1 false, i1 false}
!358 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 209, i32 4}
!359 = !{ptr @dib3000mb_set_frontend._entry_ptr.197, !358, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @.str.199, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 212, i32 4}
!362 = !{ptr @dib3000mb_set_frontend._entry.198, !361, !"_entry", i1 false, i1 false}
!363 = !{ptr @dib3000mb_set_frontend._entry_ptr.200, !361, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @dib3000mb_set_frontend._entry.201, !365, !"_entry", i1 false, i1 false}
!365 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 213, i32 4}
!366 = !{ptr @dib3000mb_set_frontend._entry_ptr.202, !365, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.204, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 216, i32 4}
!369 = !{ptr @dib3000mb_set_frontend._entry.203, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @dib3000mb_set_frontend._entry_ptr.205, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @dib3000mb_set_frontend._entry.206, !372, !"_entry", i1 false, i1 false}
!372 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 217, i32 4}
!373 = !{ptr @dib3000mb_set_frontend._entry_ptr.207, !372, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.209, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 226, i32 4}
!376 = !{ptr @dib3000mb_set_frontend._entry.208, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @dib3000mb_set_frontend._entry_ptr.210, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.212, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 229, i32 4}
!380 = !{ptr @dib3000mb_set_frontend._entry.211, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @dib3000mb_set_frontend._entry_ptr.213, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @dib3000mb_set_frontend._entry.214, !383, !"_entry", i1 false, i1 false}
!383 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 230, i32 4}
!384 = !{ptr @dib3000mb_set_frontend._entry_ptr.215, !383, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.217, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 233, i32 4}
!387 = !{ptr @dib3000mb_set_frontend._entry.216, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @dib3000mb_set_frontend._entry_ptr.218, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @dib3000mb_set_frontend._entry.219, !390, !"_entry", i1 false, i1 false}
!390 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 234, i32 4}
!391 = !{ptr @dib3000mb_set_frontend._entry_ptr.220, !390, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.222, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 237, i32 4}
!394 = !{ptr @dib3000mb_set_frontend._entry.221, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @dib3000mb_set_frontend._entry_ptr.223, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @dib3000mb_set_frontend._entry.224, !397, !"_entry", i1 false, i1 false}
!397 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 238, i32 4}
!398 = !{ptr @dib3000mb_set_frontend._entry_ptr.225, !397, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.227, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 241, i32 4}
!401 = !{ptr @dib3000mb_set_frontend._entry.226, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @dib3000mb_set_frontend._entry_ptr.228, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @dib3000mb_set_frontend._entry.229, !404, !"_entry", i1 false, i1 false}
!404 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 248, i32 3}
!405 = !{ptr @dib3000mb_set_frontend._entry_ptr.230, !404, !"_entry_ptr", i1 false, i1 false}
!406 = !{ptr @dib3000mb_set_frontend._entry.231, !407, !"_entry", i1 false, i1 false}
!407 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 249, i32 3}
!408 = !{ptr @dib3000mb_set_frontend._entry_ptr.232, !407, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @dib3000mb_set_frontend._entry.233, !410, !"_entry", i1 false, i1 false}
!410 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 252, i32 3}
!411 = !{ptr @dib3000mb_set_frontend._entry_ptr.234, !410, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @dib3000mb_set_frontend._entry.235, !413, !"_entry", i1 false, i1 false}
!413 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 253, i32 3}
!414 = !{ptr @dib3000mb_set_frontend._entry_ptr.236, !413, !"_entry_ptr", i1 false, i1 false}
!415 = !{ptr @.str.238, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 258, i32 4}
!417 = !{ptr @dib3000mb_set_frontend._entry.237, !416, !"_entry", i1 false, i1 false}
!418 = !{ptr @dib3000mb_set_frontend._entry_ptr.239, !416, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @dib3000mb_set_frontend._entry.240, !420, !"_entry", i1 false, i1 false}
!420 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 259, i32 4}
!421 = !{ptr @dib3000mb_set_frontend._entry_ptr.241, !420, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.243, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 262, i32 4}
!424 = !{ptr @dib3000mb_set_frontend._entry.242, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @dib3000mb_set_frontend._entry_ptr.244, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @dib3000mb_set_frontend._entry.245, !427, !"_entry", i1 false, i1 false}
!427 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 263, i32 4}
!428 = !{ptr @dib3000mb_set_frontend._entry_ptr.246, !427, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @.str.248, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 266, i32 4}
!431 = !{ptr @dib3000mb_set_frontend._entry.247, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @dib3000mb_set_frontend._entry_ptr.249, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @dib3000mb_set_frontend._entry.250, !434, !"_entry", i1 false, i1 false}
!434 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 267, i32 4}
!435 = !{ptr @dib3000mb_set_frontend._entry_ptr.251, !434, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.253, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 270, i32 4}
!438 = !{ptr @dib3000mb_set_frontend._entry.252, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @dib3000mb_set_frontend._entry_ptr.254, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @dib3000mb_set_frontend._entry.255, !441, !"_entry", i1 false, i1 false}
!441 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 271, i32 4}
!442 = !{ptr @dib3000mb_set_frontend._entry_ptr.256, !441, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.258, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 274, i32 4}
!445 = !{ptr @dib3000mb_set_frontend._entry.257, !444, !"_entry", i1 false, i1 false}
!446 = !{ptr @dib3000mb_set_frontend._entry_ptr.259, !444, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @dib3000mb_set_frontend._entry.260, !448, !"_entry", i1 false, i1 false}
!448 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 275, i32 4}
!449 = !{ptr @dib3000mb_set_frontend._entry_ptr.261, !448, !"_entry_ptr", i1 false, i1 false}
!450 = !{ptr @.str.263, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 278, i32 4}
!452 = !{ptr @dib3000mb_set_frontend._entry.262, !451, !"_entry", i1 false, i1 false}
!453 = !{ptr @dib3000mb_set_frontend._entry_ptr.264, !451, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.266, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 281, i32 4}
!456 = !{ptr @dib3000mb_set_frontend._entry.265, !455, !"_entry", i1 false, i1 false}
!457 = !{ptr @dib3000mb_set_frontend._entry_ptr.267, !455, !"_entry_ptr", i1 false, i1 false}
!458 = !{ptr @.str.269, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 292, i32 2}
!460 = !{ptr @dib3000mb_set_frontend._entry.268, !459, !"_entry", i1 false, i1 false}
!461 = !{ptr @dib3000mb_set_frontend._entry_ptr.270, !459, !"_entry_ptr", i1 false, i1 false}
!462 = !{ptr @dib3000mb_set_frontend._entry.271, !463, !"_entry", i1 false, i1 false}
!463 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 294, i32 2}
!464 = !{ptr @dib3000mb_set_frontend._entry_ptr.272, !463, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @dib3000mb_set_frontend._entry.273, !466, !"_entry", i1 false, i1 false}
!466 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 296, i32 2}
!467 = !{ptr @dib3000mb_set_frontend._entry_ptr.274, !466, !"_entry_ptr", i1 false, i1 false}
!468 = !{ptr @dib3000mb_set_frontend._entry.275, !469, !"_entry", i1 false, i1 false}
!469 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 300, i32 4}
!470 = !{ptr @dib3000mb_set_frontend._entry_ptr.276, !469, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @dib3000mb_set_frontend._entry.277, !472, !"_entry", i1 false, i1 false}
!472 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 302, i32 4}
!473 = !{ptr @dib3000mb_set_frontend._entry_ptr.278, !472, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @dib3000mb_set_frontend._entry.279, !475, !"_entry", i1 false, i1 false}
!475 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 305, i32 3}
!476 = !{ptr @dib3000mb_set_frontend._entry_ptr.280, !475, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @dib3000mb_set_frontend._entry.281, !478, !"_entry", i1 false, i1 false}
!478 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 307, i32 3}
!479 = !{ptr @dib3000mb_set_frontend._entry_ptr.282, !478, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @dib3000mb_set_frontend._entry.283, !481, !"_entry", i1 false, i1 false}
!481 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 310, i32 2}
!482 = !{ptr @dib3000mb_set_frontend._entry_ptr.284, !481, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @dib3000mb_set_frontend._entry.285, !484, !"_entry", i1 false, i1 false}
!484 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 311, i32 2}
!485 = !{ptr @dib3000mb_set_frontend._entry_ptr.286, !484, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @dib3000mb_set_frontend._entry.287, !487, !"_entry", i1 false, i1 false}
!487 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 312, i32 2}
!488 = !{ptr @dib3000mb_set_frontend._entry_ptr.288, !487, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @dib3000mb_set_frontend._entry.289, !490, !"_entry", i1 false, i1 false}
!490 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 314, i32 2}
!491 = !{ptr @dib3000mb_set_frontend._entry_ptr.290, !490, !"_entry_ptr", i1 false, i1 false}
!492 = !{ptr @dib3000mb_set_frontend._entry.291, !493, !"_entry", i1 false, i1 false}
!493 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 316, i32 2}
!494 = !{ptr @dib3000mb_set_frontend._entry_ptr.292, !493, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @dib3000mb_set_frontend._entry.293, !496, !"_entry", i1 false, i1 false}
!496 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 318, i32 2}
!497 = !{ptr @dib3000mb_set_frontend._entry_ptr.294, !496, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @dib3000mb_set_frontend._entry.295, !499, !"_entry", i1 false, i1 false}
!499 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 319, i32 2}
!500 = !{ptr @dib3000mb_set_frontend._entry_ptr.296, !499, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @dib3000mb_set_frontend._entry.297, !502, !"_entry", i1 false, i1 false}
!502 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 324, i32 2}
!503 = !{ptr @dib3000mb_set_frontend._entry_ptr.298, !502, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.300, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 333, i32 3}
!506 = !{ptr @dib3000mb_set_frontend._entry.299, !505, !"_entry", i1 false, i1 false}
!507 = !{ptr @dib3000mb_set_frontend._entry_ptr.301, !505, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @dib3000mb_set_frontend._entry.302, !509, !"_entry", i1 false, i1 false}
!509 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 335, i32 3}
!510 = !{ptr @dib3000mb_set_frontend._entry_ptr.303, !509, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @dib3000mb_set_frontend._entry.304, !512, !"_entry", i1 false, i1 false}
!512 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 337, i32 3}
!513 = !{ptr @dib3000mb_set_frontend._entry_ptr.305, !512, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @dib3000mb_set_frontend._entry.306, !515, !"_entry", i1 false, i1 false}
!515 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 338, i32 3}
!516 = !{ptr @dib3000mb_set_frontend._entry_ptr.307, !515, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @.str.309, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 346, i32 3}
!519 = !{ptr @dib3000mb_set_frontend._entry.308, !518, !"_entry", i1 false, i1 false}
!520 = !{ptr @dib3000mb_set_frontend._entry_ptr.310, !518, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @.str.312, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 351, i32 5}
!523 = !{ptr @dib3000mb_set_frontend._entry.311, !522, !"_entry", i1 false, i1 false}
!524 = !{ptr @dib3000mb_set_frontend._entry_ptr.313, !522, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @dib3000mb_set_frontend._entry.314, !526, !"_entry", i1 false, i1 false}
!526 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 357, i32 3}
!527 = !{ptr @dib3000mb_set_frontend._entry_ptr.315, !526, !"_entry_ptr", i1 false, i1 false}
!528 = !{ptr @dib3000mb_set_frontend._entry.316, !529, !"_entry", i1 false, i1 false}
!529 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 358, i32 3}
!530 = !{ptr @dib3000mb_set_frontend._entry_ptr.317, !529, !"_entry_ptr", i1 false, i1 false}
!531 = !{ptr @dib3000mb_bandwidth_7mhz, !532, !"dib3000mb_bandwidth_7mhz", i1 false, i1 false}
!532 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 224, i32 12}
!533 = !{ptr @dib3000mb_bandwidth_6mhz, !534, !"dib3000mb_bandwidth_6mhz", i1 false, i1 false}
!534 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 221, i32 12}
!535 = !{ptr @dib3000mb_agc_bandwidth_high, !536, !"dib3000mb_agc_bandwidth_high", i1 false, i1 false}
!536 = !{!"../drivers/media/dvb-frontends/dib3000mb_priv.h", i32 188, i32 12}
!537 = !{ptr @.str.318, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 87, i32 4}
!539 = !{ptr @.str.319, !538, !"<string literal>", i1 false, i1 false}
!540 = !{ptr @dib3000_search_status._entry, !538, !"_entry", i1 false, i1 false}
!541 = !{ptr @dib3000_search_status._entry_ptr, !538, !"_entry_ptr", i1 false, i1 false}
!542 = !{ptr @.str.321, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 90, i32 4}
!544 = !{ptr @dib3000_search_status._entry.320, !543, !"_entry", i1 false, i1 false}
!545 = !{ptr @dib3000_search_status._entry_ptr.322, !543, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @.str.324, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 94, i32 3}
!548 = !{ptr @dib3000_search_status._entry.323, !547, !"_entry", i1 false, i1 false}
!549 = !{ptr @dib3000_search_status._entry_ptr.325, !547, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @.str.326, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 454, i32 2}
!552 = !{ptr @.str.327, !551, !"<string literal>", i1 false, i1 false}
!553 = !{ptr @dib3000mb_get_frontend._entry, !551, !"_entry", i1 false, i1 false}
!554 = !{ptr @dib3000mb_get_frontend._entry_ptr, !551, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @.str.329, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 463, i32 2}
!557 = !{ptr @dib3000mb_get_frontend._entry.328, !556, !"_entry", i1 false, i1 false}
!558 = !{ptr @dib3000mb_get_frontend._entry_ptr.330, !556, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @.str.332, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 476, i32 2}
!561 = !{ptr @dib3000mb_get_frontend._entry.331, !560, !"_entry", i1 false, i1 false}
!562 = !{ptr @dib3000mb_get_frontend._entry_ptr.333, !560, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @.str.335, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 480, i32 4}
!565 = !{ptr @dib3000mb_get_frontend._entry.334, !564, !"_entry", i1 false, i1 false}
!566 = !{ptr @dib3000mb_get_frontend._entry_ptr.336, !564, !"_entry_ptr", i1 false, i1 false}
!567 = !{ptr @.str.338, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 484, i32 4}
!569 = !{ptr @dib3000mb_get_frontend._entry.337, !568, !"_entry", i1 false, i1 false}
!570 = !{ptr @dib3000mb_get_frontend._entry_ptr.339, !568, !"_entry_ptr", i1 false, i1 false}
!571 = !{ptr @.str.341, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 488, i32 4}
!573 = !{ptr @dib3000mb_get_frontend._entry.340, !572, !"_entry", i1 false, i1 false}
!574 = !{ptr @dib3000mb_get_frontend._entry_ptr.342, !572, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @.str.344, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 492, i32 4}
!577 = !{ptr @dib3000mb_get_frontend._entry.343, !576, !"_entry", i1 false, i1 false}
!578 = !{ptr @dib3000mb_get_frontend._entry_ptr.345, !576, !"_entry_ptr", i1 false, i1 false}
!579 = !{ptr @.str.347, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 495, i32 2}
!581 = !{ptr @dib3000mb_get_frontend._entry.346, !580, !"_entry", i1 false, i1 false}
!582 = !{ptr @dib3000mb_get_frontend._entry_ptr.348, !580, !"_entry_ptr", i1 false, i1 false}
!583 = !{ptr @.str.350, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 498, i32 3}
!585 = !{ptr @dib3000mb_get_frontend._entry.349, !584, !"_entry", i1 false, i1 false}
!586 = !{ptr @dib3000mb_get_frontend._entry_ptr.351, !584, !"_entry_ptr", i1 false, i1 false}
!587 = !{ptr @.str.353, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 503, i32 5}
!589 = !{ptr @dib3000mb_get_frontend._entry.352, !588, !"_entry", i1 false, i1 false}
!590 = !{ptr @dib3000mb_get_frontend._entry_ptr.354, !588, !"_entry_ptr", i1 false, i1 false}
!591 = !{ptr @.str.356, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 507, i32 5}
!593 = !{ptr @dib3000mb_get_frontend._entry.355, !592, !"_entry", i1 false, i1 false}
!594 = !{ptr @dib3000mb_get_frontend._entry_ptr.357, !592, !"_entry_ptr", i1 false, i1 false}
!595 = !{ptr @.str.359, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 511, i32 5}
!597 = !{ptr @dib3000mb_get_frontend._entry.358, !596, !"_entry", i1 false, i1 false}
!598 = !{ptr @dib3000mb_get_frontend._entry_ptr.360, !596, !"_entry_ptr", i1 false, i1 false}
!599 = !{ptr @.str.362, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 515, i32 5}
!601 = !{ptr @dib3000mb_get_frontend._entry.361, !600, !"_entry", i1 false, i1 false}
!602 = !{ptr @dib3000mb_get_frontend._entry_ptr.363, !600, !"_entry_ptr", i1 false, i1 false}
!603 = !{ptr @.str.365, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 519, i32 5}
!605 = !{ptr @dib3000mb_get_frontend._entry.364, !604, !"_entry", i1 false, i1 false}
!606 = !{ptr @dib3000mb_get_frontend._entry_ptr.366, !604, !"_entry_ptr", i1 false, i1 false}
!607 = !{ptr @dib3000mb_get_frontend._entry.367, !608, !"_entry", i1 false, i1 false}
!608 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 522, i32 3}
!609 = !{ptr @dib3000mb_get_frontend._entry_ptr.368, !608, !"_entry_ptr", i1 false, i1 false}
!610 = !{ptr @.str.370, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 526, i32 3}
!612 = !{ptr @dib3000mb_get_frontend._entry.369, !611, !"_entry", i1 false, i1 false}
!613 = !{ptr @dib3000mb_get_frontend._entry_ptr.371, !611, !"_entry_ptr", i1 false, i1 false}
!614 = !{ptr @.str.373, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 536, i32 4}
!616 = !{ptr @dib3000mb_get_frontend._entry.372, !615, !"_entry", i1 false, i1 false}
!617 = !{ptr @dib3000mb_get_frontend._entry_ptr.374, !615, !"_entry_ptr", i1 false, i1 false}
!618 = !{ptr @.str.376, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 540, i32 4}
!620 = !{ptr @dib3000mb_get_frontend._entry.375, !619, !"_entry", i1 false, i1 false}
!621 = !{ptr @dib3000mb_get_frontend._entry_ptr.377, !619, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @.str.379, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 544, i32 4}
!624 = !{ptr @dib3000mb_get_frontend._entry.378, !623, !"_entry", i1 false, i1 false}
!625 = !{ptr @dib3000mb_get_frontend._entry_ptr.380, !623, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @.str.382, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 548, i32 4}
!628 = !{ptr @dib3000mb_get_frontend._entry.381, !627, !"_entry", i1 false, i1 false}
!629 = !{ptr @dib3000mb_get_frontend._entry_ptr.383, !627, !"_entry_ptr", i1 false, i1 false}
!630 = !{ptr @.str.385, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 552, i32 4}
!632 = !{ptr @dib3000mb_get_frontend._entry.384, !631, !"_entry", i1 false, i1 false}
!633 = !{ptr @dib3000mb_get_frontend._entry_ptr.386, !631, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @.str.388, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 556, i32 4}
!636 = !{ptr @dib3000mb_get_frontend._entry.387, !635, !"_entry", i1 false, i1 false}
!637 = !{ptr @dib3000mb_get_frontend._entry_ptr.389, !635, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @dib3000mb_get_frontend._entry.390, !639, !"_entry", i1 false, i1 false}
!639 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 559, i32 2}
!640 = !{ptr @dib3000mb_get_frontend._entry_ptr.391, !639, !"_entry_ptr", i1 false, i1 false}
!641 = !{ptr @.str.393, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 563, i32 4}
!643 = !{ptr @dib3000mb_get_frontend._entry.392, !642, !"_entry", i1 false, i1 false}
!644 = !{ptr @dib3000mb_get_frontend._entry_ptr.394, !642, !"_entry_ptr", i1 false, i1 false}
!645 = !{ptr @.str.396, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 567, i32 4}
!647 = !{ptr @dib3000mb_get_frontend._entry.395, !646, !"_entry", i1 false, i1 false}
!648 = !{ptr @dib3000mb_get_frontend._entry_ptr.397, !646, !"_entry_ptr", i1 false, i1 false}
!649 = !{ptr @.str.399, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 571, i32 4}
!651 = !{ptr @dib3000mb_get_frontend._entry.398, !650, !"_entry", i1 false, i1 false}
!652 = !{ptr @dib3000mb_get_frontend._entry_ptr.400, !650, !"_entry_ptr", i1 false, i1 false}
!653 = !{ptr @.str.402, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 575, i32 4}
!655 = !{ptr @dib3000mb_get_frontend._entry.401, !654, !"_entry", i1 false, i1 false}
!656 = !{ptr @dib3000mb_get_frontend._entry_ptr.403, !654, !"_entry_ptr", i1 false, i1 false}
!657 = !{ptr @.str.405, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 579, i32 4}
!659 = !{ptr @dib3000mb_get_frontend._entry.404, !658, !"_entry", i1 false, i1 false}
!660 = !{ptr @dib3000mb_get_frontend._entry_ptr.406, !658, !"_entry_ptr", i1 false, i1 false}
!661 = !{ptr @dib3000mb_get_frontend._entry.407, !662, !"_entry", i1 false, i1 false}
!662 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 582, i32 2}
!663 = !{ptr @dib3000mb_get_frontend._entry_ptr.408, !662, !"_entry_ptr", i1 false, i1 false}
!664 = !{ptr @.str.410, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 586, i32 4}
!666 = !{ptr @dib3000mb_get_frontend._entry.409, !665, !"_entry", i1 false, i1 false}
!667 = !{ptr @dib3000mb_get_frontend._entry_ptr.411, !665, !"_entry_ptr", i1 false, i1 false}
!668 = !{ptr @.str.413, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 590, i32 4}
!670 = !{ptr @dib3000mb_get_frontend._entry.412, !669, !"_entry", i1 false, i1 false}
!671 = !{ptr @dib3000mb_get_frontend._entry_ptr.414, !669, !"_entry_ptr", i1 false, i1 false}
!672 = !{ptr @.str.416, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 594, i32 4}
!674 = !{ptr @dib3000mb_get_frontend._entry.415, !673, !"_entry", i1 false, i1 false}
!675 = !{ptr @dib3000mb_get_frontend._entry_ptr.417, !673, !"_entry_ptr", i1 false, i1 false}
!676 = !{ptr @dib3000mb_get_frontend._entry.418, !677, !"_entry", i1 false, i1 false}
!677 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 597, i32 2}
!678 = !{ptr @dib3000mb_get_frontend._entry_ptr.419, !677, !"_entry_ptr", i1 false, i1 false}
!679 = !{ptr @.str.420, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 618, i32 2}
!681 = !{ptr @.str.421, !680, !"<string literal>", i1 false, i1 false}
!682 = !{ptr @dib3000mb_read_status._entry, !680, !"_entry", i1 false, i1 false}
!683 = !{ptr @dib3000mb_read_status._entry_ptr, !680, !"_entry_ptr", i1 false, i1 false}
!684 = !{ptr @.str.423, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../drivers/media/dvb-frontends/dib3000mb.c", i32 620, i32 2}
!686 = !{ptr @dib3000mb_read_status._entry.422, !685, !"_entry", i1 false, i1 false}
!687 = !{ptr @dib3000mb_read_status._entry_ptr.424, !685, !"_entry_ptr", i1 false, i1 false}
!688 = !{i32 1, !"wchar_size", i32 2}
!689 = !{i32 1, !"min_enum_size", i32 4}
!690 = !{i32 8, !"branch-target-enforcement", i32 0}
!691 = !{i32 8, !"sign-return-address", i32 0}
!692 = !{i32 8, !"sign-return-address-all", i32 0}
!693 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!694 = !{i32 7, !"uwtable", i32 1}
!695 = !{i32 7, !"frame-pointer", i32 2}
!696 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!697 = !{!"auto-init"}
