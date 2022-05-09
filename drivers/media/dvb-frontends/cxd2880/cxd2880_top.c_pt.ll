; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cxd2880/cxd2880_top.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cxd2880_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_cxd2880_attach\09\09\09\09"
module asm "\09.long\09__crc_cxd2880_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxd2880_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cxd2880_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cxd2880_attach:\09\09\09\09\09"
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
%struct.atomic_t = type { i32 }
%struct.cxd2880_priv = type { %struct.cxd2880_tnrdmd, ptr, %struct.cxd2880_io, %struct.cxd2880_spi_device, %struct.cxd2880_spi, %struct.cxd2880_dvbt_tune_param, %struct.cxd2880_dvbt2_tune_param, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.cxd2880_tnrdmd = type { ptr, ptr, %struct.cxd2880_tnrdmd_create_param, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, i8, i32, i8, i8, [100 x %struct.cxd2880_tnrdmd_cfg_mem], i8, %struct.cxd2880_tnrdmd_pid_ftr_cfg, i8, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t }
%struct.cxd2880_tnrdmd_create_param = type { i32, i8, i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_cfg_mem = type { i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_pid_ftr_cfg = type { i8, [32 x %struct.cxd2880_tnrdmd_pid_cfg] }
%struct.cxd2880_tnrdmd_pid_cfg = type { i8, i16 }
%struct.cxd2880_io = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr }
%struct.cxd2880_spi_device = type { ptr }
%struct.cxd2880_spi = type { ptr, ptr, ptr, i32, ptr }
%struct.cxd2880_dvbt_tune_param = type { i32, i32, i32 }
%struct.cxd2880_dvbt2_tune_param = type { i32, i32, i16, i32, i32 }
%struct.cxd2880_config = type { ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.cxd2880_dvbt2_l1pre = type { i32, i8, i32, i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i16, i8, i16, i8, i8, i8, i8, i32, i8, i8, i32 }
%struct.cxd2880_dvbt2_l1post = type { i16, i8, i8, i8, i8, i32, i8, i32, i8 }
%struct.cxd2880_dvbt2_plp = type { i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i32, i16, i8, i8, i8, i8, i8, i16, i32, i8, i8 }
%struct.cxd2880_dvbt2_bbheader = type { i32, i8, i8, i8, i8, i8, i8, i16, i16, i8, i32, i32 }
%struct.cxd2880_dvbt_tpsinfo = type { i32, i32, i32, i32, i32, i32, i8, i8, i16, i8, i8, i8 }

@cxd2880_attach.priv = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cxd2880_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013cxd2880: %s: invalid arg.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxd2880_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/media/dvb-frontends/cxd2880/cxd2880_top.c\00", [46 x i8] zeroinitializer }, align 32
@cxd2880_attach._entry_ptr = internal global ptr @cxd2880_attach._entry, section ".printk_index", align 4
@cxd2880_dvbt_t2_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Sony CXD2880\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 1000, i32 0, i32 0, i32 0, i32 0, i32 -804520257 }, [8 x i8] c"\03\10\00\00\00\00\00\00", ptr null, ptr @cxd2880_release, ptr null, ptr @cxd2880_init, ptr @cxd2880_sleep, ptr null, ptr null, ptr null, ptr @cxd2880_tune, ptr @cxd2880_get_frontend_algo, ptr @cxd2880_set_frontend, ptr null, ptr @cxd2880_get_frontend, ptr @cxd2880_read_status, ptr @cxd2880_read_ber, ptr @cxd2880_read_signal_strength, ptr @cxd2880_read_snr, ptr @cxd2880_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@cxd2880_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013cxd2880: %s: spi_device_initialize failed. %d\0A\00", [47 x i8] zeroinitializer }, align 32
@cxd2880_attach._entry_ptr.5 = internal global ptr @cxd2880_attach._entry.3, section ".printk_index", align 4
@cxd2880_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013cxd2880: %s: spi_device_create_spi failed. %d\0A\00", [47 x i8] zeroinitializer }, align 32
@cxd2880_attach._entry_ptr.8 = internal global ptr @cxd2880_attach._entry.6, section ".printk_index", align 4
@cxd2880_attach._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1920, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013cxd2880: %s: io_spi_create failed. %d\0A\00", [55 x i8] zeroinitializer }, align 32
@cxd2880_attach._entry_ptr.11 = internal global ptr @cxd2880_attach._entry.9, section ".printk_index", align 4
@cxd2880_attach._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 1927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013cxd2880: %s: set bank to 0x00 failed.\0A\00", [55 x i8] zeroinitializer }, align 32
@cxd2880_attach._entry_ptr.14 = internal global ptr @cxd2880_attach._entry.12, section ".printk_index", align 4
@cxd2880_attach._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 1934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013cxd2880: %s: read chip id failed.\0A\00", [59 x i8] zeroinitializer }, align 32
@cxd2880_attach._entry_ptr.17 = internal global ptr @cxd2880_attach._entry.15, section ".printk_index", align 4
@cxd2880_attach._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 1942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cxd2880: %s: chip id invalid.\0A\00", [63 x i8] zeroinitializer }, align 32
@cxd2880_attach._entry_ptr.20 = internal global ptr @cxd2880_attach._entry.18, section ".printk_index", align 4
@cxd2880_attach._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 1949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cxd2880: %s: CXD2880 driver version: Ver %s\0A\00", [49 x i8] zeroinitializer }, align 32
@cxd2880_attach._entry_ptr.23 = internal global ptr @cxd2880_attach._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"1.4.1 - 1.0.5\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_cxd2880_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxd2880_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cxd2880_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxd2880_attach to i32), ptr @__kstrtab_cxd2880_attach, ptr @__kstrtabns_cxd2880_attach }, section "___ksymtab+cxd2880_attach", align 4
@__UNIQUE_ID_description330 = internal constant [63 x i8] c"cxd2880.description=Sony CXD2880 DVB-T2/T tuner + demod driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author331 = internal constant [56 x i8] c"cxd2880.author=Sony Semiconductor Solutions Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [57 x i8] c"cxd2880.file=drivers/media/dvb-frontends/cxd2880/cxd2880\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [23 x i8] c"cxd2880.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cxd2880_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.25, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxd2880_release\00", [16 x i8] zeroinitializer }, align 32
@cxd2880_release._entry_ptr = internal global ptr @cxd2880_release._entry, section ".printk_index", align 4
@cxd2880_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.26, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cxd2880_init\00", [19 x i8] zeroinitializer }, align 32
@cxd2880_init._entry_ptr = internal global ptr @cxd2880_init._entry, section ".printk_index", align 4
@cxd2880_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.2, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016cxd2880: %s: cxd2880 tnrdmd create failed %d\0A\00", [48 x i8] zeroinitializer }, align 32
@cxd2880_init._entry_ptr.29 = internal global ptr @cxd2880_init._entry.27, section ".printk_index", align 4
@cxd2880_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013cxd2880: %s: cxd2880 integ init failed %d\0A\00", [51 x i8] zeroinitializer }, align 32
@cxd2880_init._entry_ptr.32 = internal global ptr @cxd2880_init._entry.30, section ".printk_index", align 4
@cxd2880_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.2, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013cxd2880: %s: cxd2880 set config failed %d\0A\00", [51 x i8] zeroinitializer }, align 32
@cxd2880_init._entry_ptr.35 = internal global ptr @cxd2880_init._entry.33, section ".printk_index", align 4
@cxd2880_init.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.26, ptr @.str.2, ptr @.str.37, i8 0, i8 -123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cxd2880\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OK.\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxd2880: %s: OK.\0A\00", [46 x i8] zeroinitializer }, align 32
@cxd2880_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013cxd2880: %s: invalid arg\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cxd2880_sleep\00", [18 x i8] zeroinitializer }, align 32
@cxd2880_sleep._entry_ptr = internal global ptr @cxd2880_sleep._entry, section ".printk_index", align 4
@cxd2880_sleep.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tnrdmd_sleep ret %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cxd2880: %s: tnrdmd_sleep ret %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cxd2880_tune._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 1390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013cxd2880: %s: invalid arg.\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cxd2880_tune\00", [19 x i8] zeroinitializer }, align 32
@cxd2880_tune._entry_ptr = internal global ptr @cxd2880_tune._entry, section ".printk_index", align 4
@cxd2880_tune._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 1397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cxd2880: %s: cxd2880_set_frontend failed %d\0A\00", [49 x i8] zeroinitializer }, align 32
@cxd2880_tune._entry_ptr.47 = internal global ptr @cxd2880_tune._entry.45, section ".printk_index", align 4
@cxd2880_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.48, ptr @.str.2, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxd2880_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@cxd2880_set_frontend._entry_ptr = internal global ptr @cxd2880_set_frontend._entry, section ".printk_index", align 4
@cxd2880_set_frontend._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 1091, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016cxd2880: %s: sys:%d freq:%d bw:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@cxd2880_set_frontend._entry_ptr.51 = internal global ptr @cxd2880_set_frontend._entry.49, section ".printk_index", align 4
@cxd2880_set_frontend._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 1109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013cxd2880: %s: invalid system\0A\00", [33 x i8] zeroinitializer }, align 32
@cxd2880_set_frontend._entry_ptr.54 = internal global ptr @cxd2880_set_frontend._entry.52, section ".printk_index", align 4
@cxd2880_set_frontend._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.2, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016cxd2880: %s: tune result %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cxd2880_set_frontend._entry_ptr.57 = internal global ptr @cxd2880_set_frontend._entry.55, section ".printk_index", align 4
@cxd2880_get_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.58, ptr @.str.2, i32 1808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxd2880_get_frontend\00", [43 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend._entry_ptr = internal global ptr @cxd2880_get_frontend._entry, section ".printk_index", align 4
@cxd2880_get_frontend.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 1, i8 -59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"system=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxd2880: %s: system=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.61, ptr @.str.2, i32 1420, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxd2880_get_frontend_t\00", [41 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t._entry_ptr = internal global ptr @cxd2880_get_frontend_t._entry, section ".printk_index", align 4
@cxd2880_get_frontend_t.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 1, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"transmission mode is invalid %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cxd2880: %s: transmission mode is invalid %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.61, ptr @.str.2, ptr @.str.64, i8 1, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"guard interval is invalid %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cxd2880: %s: guard interval is invalid %d\0A\00", [53 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.61, ptr @.str.2, ptr @.str.66, i8 1, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ModeGuard err %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cxd2880: %s: ModeGuard err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.61, ptr @.str.2, ptr @.str.68, i8 1, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TPSInfo hierarchy is invalid %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cxd2880: %s: TPSInfo hierarchy is invalid %d\0A\00", [50 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.61, ptr @.str.2, ptr @.str.70, i8 1, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TPSInfo rateHP is invalid %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cxd2880: %s: TPSInfo rateHP is invalid %d\0A\00", [53 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.61, ptr @.str.2, ptr @.str.72, i8 1, i8 127, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TPSInfo rateLP is invalid %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cxd2880: %s: TPSInfo rateLP is invalid %d\0A\00", [53 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.61, ptr @.str.2, ptr @.str.74, i8 1, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TPSInfo constellation is invalid %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cxd2880: %s: TPSInfo constellation is invalid %d\0A\00", [46 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.61, ptr @.str.2, ptr @.str.76, i8 1, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TPS info err %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cxd2880: %s: TPS info err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.61, ptr @.str.2, ptr @.str.78, i8 1, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"spectrum sense is invalid %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cxd2880: %s: spectrum sense is invalid %d\0A\00", [53 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.61, ptr @.str.2, ptr @.str.80, i8 1, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spectrum_sense %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cxd2880: %s: spectrum_sense %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.61, ptr @.str.2, ptr @.str.82, i8 1, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mon_rf_lvl %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cxd2880: %s: mon_rf_lvl %d\0A\00", [36 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.61, ptr @.str.2, ptr @.str.84, i8 1, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"read_snr %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxd2880: %s: read_snr %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.86, ptr @.str.2, i32 1621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxd2880_get_frontend_t2\00", [40 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t2._entry_ptr = internal global ptr @cxd2880_get_frontend_t2._entry, section ".printk_index", align 4
@cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.86, ptr @.str.2, ptr @.str.87, i8 1, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"L1Pre fft_mode is invalid %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cxd2880: %s: L1Pre fft_mode is invalid %d\0A\00", [53 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.86, ptr @.str.2, ptr @.str.89, i8 1, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"L1Pre guard interval is invalid %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cxd2880: %s: L1Pre guard interval is invalid %d\0A\00", [47 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.86, ptr @.str.2, ptr @.str.91, i8 1, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"L1Pre err %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cxd2880: %s: L1Pre err %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.86, ptr @.str.2, ptr @.str.93, i8 1, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CodeRate is invalid %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cxd2880: %s: CodeRate is invalid %d\0A\00", [59 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.86, ptr @.str.2, ptr @.str.95, i8 1, i8 -82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CodeRate %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxd2880: %s: CodeRate %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.86, ptr @.str.2, ptr @.str.97, i8 1, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"QAM is invalid %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cxd2880: %s: QAM is invalid %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.86, ptr @.str.2, ptr @.str.99, i8 1, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QAM %d\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxd2880: %s: QAM %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.86, ptr @.str.2, ptr @.str.78, i8 1, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.86, ptr @.str.2, ptr @.str.101, i8 1, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SpectrumSense %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cxd2880: %s: SpectrumSense %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.86, ptr @.str.2, ptr @.str.82, i8 1, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.86, ptr @.str.2, ptr @.str.84, i8 1, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cxd2880_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.103, ptr @.str.2, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxd2880_read_status\00", [44 x i8] zeroinitializer }, align 32
@cxd2880_read_status._entry_ptr = internal global ptr @cxd2880_read_status._entry, section ".printk_index", align 4
@cxd2880_read_status._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 1334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013cxd2880: %s: invalid system\00", [34 x i8] zeroinitializer }, align 32
@cxd2880_read_status._entry_ptr.106 = internal global ptr @cxd2880_read_status._entry.104, section ".printk_index", align 4
@cxd2880_read_status._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.2, i32 1341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cxd2880: %s: failed. sys = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@cxd2880_read_status._entry_ptr.109 = internal global ptr @cxd2880_read_status._entry.107, section ".printk_index", align 4
@cxd2880_read_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.103, ptr @.str.2, ptr @.str.110, i8 1, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"status %d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxd2880: %s: status %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cxd2880_read_status._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.103, ptr @.str.2, i32 1370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxd2880_read_status._entry_ptr.113 = internal global ptr @cxd2880_read_status._entry.112, section ".printk_index", align 4
@cxd2880_set_ber_per_period_t.cr_table = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 31500, i32 42000, i32 47250, i32 52500, i32 55125], [44 x i8] zeroinitializer }, align 32
@cxd2880_set_ber_per_period_t.denominator_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 125664, i32 129472, i32 137088, i32 152320], [16 x i8] zeroinitializer }, align 32
@cxd2880_set_ber_per_period_t._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.114, ptr @.str.2, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cxd2880_set_ber_per_period_t\00", [35 x i8] zeroinitializer }, align 32
@cxd2880_set_ber_per_period_t._entry_ptr = internal global ptr @cxd2880_set_ber_per_period_t._entry, section ".printk_index", align 4
@cxd2880_set_ber_per_period_t._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.2, i32 707, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013cxd2880: %s: tps monitor error ret = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@cxd2880_set_ber_per_period_t._entry_ptr.117 = internal global ptr @cxd2880_set_ber_per_period_t._entry.115, section ".printk_index", align 4
@cxd2880_check_l1post_plp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.118, ptr @.str.2, i32 1272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cxd2880_check_l1post_plp\00", [39 x i8] zeroinitializer }, align 32
@cxd2880_check_l1post_plp._entry_ptr = internal global ptr @cxd2880_check_l1post_plp._entry, section ".printk_index", align 4
@cxd2880_set_ber_per_period_t2.gi_tbl = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32, i32 64, i32 128, i32 256, i32 8, i32 152, i32 76], [36 x i8] zeroinitializer }, align 32
@cxd2880_set_ber_per_period_t2.n_tbl = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\08\02\04\10\01\01", [26 x i8] zeroinitializer }, align 32
@cxd2880_set_ber_per_period_t2.mode_tbl = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\02\08\04\01\10 ", [26 x i8] zeroinitializer }, align 32
@cxd2880_set_ber_per_period_t2.kbch_tbl = internal constant { [2 x [8 x i32]], [32 x i8] } { [2 x [8 x i32]] [[8 x i32] [i32 6952, i32 9472, i32 10552, i32 11632, i32 12352, i32 13072, i32 5152, i32 6232], [8 x i32] [i32 32128, i32 38608, i32 42960, i32 48328, i32 51568, i32 53760, i32 0, i32 0]], [32 x i8] zeroinitializer }, align 32
@cxd2880_set_ber_per_period_t2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.119, ptr @.str.2, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cxd2880_set_ber_per_period_t2\00", [34 x i8] zeroinitializer }, align 32
@cxd2880_set_ber_per_period_t2._entry_ptr = internal global ptr @cxd2880_set_ber_per_period_t2._entry, section ".printk_index", align 4
@cxd2880_set_ber_per_period_t2._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.2, i32 828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016cxd2880: %s: l1 pre error\0A\00", [35 x i8] zeroinitializer }, align 32
@cxd2880_set_ber_per_period_t2._entry_ptr.122 = internal global ptr @cxd2880_set_ber_per_period_t2._entry.120, section ".printk_index", align 4
@cxd2880_set_ber_per_period_t2._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.119, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016cxd2880: %s: plp info error\0A\00", [33 x i8] zeroinitializer }, align 32
@cxd2880_set_ber_per_period_t2._entry_ptr.125 = internal global ptr @cxd2880_set_ber_per_period_t2._entry.123, section ".printk_index", align 4
@cxd2880_set_ber_per_period_t2._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.119, ptr @.str.2, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016cxd2880: %s: l1 post error\0A\00", [34 x i8] zeroinitializer }, align 32
@cxd2880_set_ber_per_period_t2._entry_ptr.128 = internal global ptr @cxd2880_set_ber_per_period_t2._entry.126, section ".printk_index", align 4
@cxd2880_set_ber_per_period_t2._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.119, ptr @.str.2, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016cxd2880: %s: bb header error\0A\00", [32 x i8] zeroinitializer }, align 32
@cxd2880_set_ber_per_period_t2._entry_ptr.131 = internal global ptr @cxd2880_set_ber_per_period_t2._entry.129, section ".printk_index", align 4
@cxd2880_set_ber_per_period_t2._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.119, ptr @.str.2, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016cxd2880: %s: plp mode is not Normal or HEM\0A\00", [50 x i8] zeroinitializer }, align 32
@cxd2880_set_ber_per_period_t2._entry_ptr.134 = internal global ptr @cxd2880_set_ber_per_period_t2._entry.132, section ".printk_index", align 4
@cxd2880_get_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.135, ptr @.str.2, i32 1131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxd2880_get_stats\00", [46 x i8] zeroinitializer }, align 32
@cxd2880_get_stats._entry_ptr = internal global ptr @cxd2880_get_stats._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cxd2880_get_stats.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.135, ptr @.str.2, ptr @.str.136, i8 1, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pre_bit_error_t failed %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cxd2880: %s: pre_bit_error_t failed %d\0A\00", [56 x i8] zeroinitializer }, align 32
@cxd2880_get_stats.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.135, ptr @.str.2, ptr @.str.138, i8 1, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"post_bit_err_t %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cxd2880: %s: post_bit_err_t %d\0A\00", [32 x i8] zeroinitializer }, align 32
@cxd2880_get_stats.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.135, ptr @.str.2, ptr @.str.140, i8 1, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read_block_err_t  %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cxd2880: %s: read_block_err_t  %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cxd2880_post_bit_err_t2.n_bch_bits_lookup = internal constant { [2 x [8 x i16]], [32 x i8] } { [2 x [8 x i16]] [[8 x i16] [i16 7200, i16 9720, i16 10800, i16 11880, i16 12600, i16 13320, i16 5400, i16 6480], [8 x i16] [i16 32400, i16 -26656, i16 -22336, i16 -16936, i16 -13696, i16 -11536, i16 21600, i16 25920]], [32 x i8] zeroinitializer }, align 32
@cxd2880_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.142, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cxd2880_read_signal_strength\00", [35 x i8] zeroinitializer }, align 32
@cxd2880_read_signal_strength._entry_ptr = internal global ptr @cxd2880_read_signal_strength._entry, section ".printk_index", align 4
@cxd2880_read_signal_strength.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.142, ptr @.str.2, ptr @.str.143, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"invalid system\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cxd2880: %s: invalid system\0A\00", [35 x i8] zeroinitializer }, align 32
@cxd2880_read_signal_strength.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.142, ptr @.str.2, ptr @.str.145, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ret = %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxd2880: %s: ret = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cxd2880_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.147, ptr @.str.2, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxd2880_read_snr\00", [47 x i8] zeroinitializer }, align 32
@cxd2880_read_snr._entry_ptr = internal global ptr @cxd2880_read_snr._entry, section ".printk_index", align 4
@cxd2880_read_snr._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.147, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxd2880_read_snr._entry_ptr.149 = internal global ptr @cxd2880_read_snr._entry.148, section ".printk_index", align 4
@cxd2880_read_snr.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.147, ptr @.str.2, ptr @.str.145, i8 0, i8 -97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cxd2880_read_ucblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.150, ptr @.str.2, i32 649, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxd2880_read_ucblocks\00", [42 x i8] zeroinitializer }, align 32
@cxd2880_read_ucblocks._entry_ptr = internal global ptr @cxd2880_read_ucblocks._entry, section ".printk_index", align 4
@cxd2880_read_ucblocks._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.150, ptr @.str.2, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cxd2880_read_ucblocks._entry_ptr.152 = internal global ptr @cxd2880_read_ucblocks._entry.151, section ".printk_index", align 4
@cxd2880_read_ucblocks.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.150, ptr @.str.2, ptr @.str.145, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 98, i64 106]
@__sancov_gen_cov_switch_values.153 = internal global [7 x i64] [i64 5, i64 32, i64 1712000, i64 5000000, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 16]
@__sancov_gen_cov_switch_values.155 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 16]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 16]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 16]
@__sancov_gen_cov_switch_values.159 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 16]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 16]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 16]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.165 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.166 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.167 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.168 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.169 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.171 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.172 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.173 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.174 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 16]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 16]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 16]
@___asan_gen_.179 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1882, i32 30 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1886, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c"cxd2880_dvbt_t2_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1833, i32 32 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1905, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1913, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1920, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1927, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1934, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1942, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1948, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 480, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 494, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 513, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 520, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 529, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 534, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 545, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 555, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1390, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1397, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1042, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1090, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1109, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1115, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1808, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1812, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1420, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1440, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1458, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1465, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1487, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1510, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1532, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1548, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1557, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1573, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1578, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1591, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1602, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1621, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1652, i32 4 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1680, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1687, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1717, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1722, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1746, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1751, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1772, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1313, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1334, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1341, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1355, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1370, i32 4 }
@___asan_gen_.506 = private unnamed_addr constant [9 x i8] c"cr_table\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 693, i32 19 }
@___asan_gen_.509 = private unnamed_addr constant [16 x i8] c"denominator_tbl\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 694, i32 19 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 697, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 707, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1272, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant [7 x i8] c"gi_tbl\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 810, i32 19 }
@___asan_gen_.533 = private unnamed_addr constant [6 x i8] c"n_tbl\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 811, i32 18 }
@___asan_gen_.536 = private unnamed_addr constant [9 x i8] c"mode_tbl\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 812, i32 18 }
@___asan_gen_.539 = private unnamed_addr constant [9 x i8] c"kbch_tbl\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 813, i32 19 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 819, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 828, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 835, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 841, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 909, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 928, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1131, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1186, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1223, i32 4 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 1257, i32 4 }
@___asan_gen_.602 = private unnamed_addr constant [18 x i8] c"n_bch_bits_lookup\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 268, i32 19 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 569, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 581, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 598, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 611, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 626, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 649, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.639 = private constant [53 x i8] c"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 664, i32 3 }
@llvm.compiler.used = appending global [201 x ptr] [ptr @__UNIQUE_ID_author331, ptr @__UNIQUE_ID_description330, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_license333, ptr @__ksymtab_cxd2880_attach, ptr @cxd2880_attach._entry, ptr @cxd2880_attach._entry.12, ptr @cxd2880_attach._entry.15, ptr @cxd2880_attach._entry.18, ptr @cxd2880_attach._entry.21, ptr @cxd2880_attach._entry.3, ptr @cxd2880_attach._entry.6, ptr @cxd2880_attach._entry.9, ptr @cxd2880_attach._entry_ptr, ptr @cxd2880_attach._entry_ptr.11, ptr @cxd2880_attach._entry_ptr.14, ptr @cxd2880_attach._entry_ptr.17, ptr @cxd2880_attach._entry_ptr.20, ptr @cxd2880_attach._entry_ptr.23, ptr @cxd2880_attach._entry_ptr.5, ptr @cxd2880_attach._entry_ptr.8, ptr @cxd2880_check_l1post_plp._entry, ptr @cxd2880_check_l1post_plp._entry_ptr, ptr @cxd2880_get_frontend._entry, ptr @cxd2880_get_frontend._entry_ptr, ptr @cxd2880_get_frontend_t._entry, ptr @cxd2880_get_frontend_t._entry_ptr, ptr @cxd2880_get_frontend_t2._entry, ptr @cxd2880_get_frontend_t2._entry_ptr, ptr @cxd2880_get_stats._entry, ptr @cxd2880_get_stats._entry_ptr, ptr @cxd2880_init._entry, ptr @cxd2880_init._entry.27, ptr @cxd2880_init._entry.30, ptr @cxd2880_init._entry.33, ptr @cxd2880_init._entry_ptr, ptr @cxd2880_init._entry_ptr.29, ptr @cxd2880_init._entry_ptr.32, ptr @cxd2880_init._entry_ptr.35, ptr @cxd2880_read_signal_strength._entry, ptr @cxd2880_read_signal_strength._entry_ptr, ptr @cxd2880_read_snr._entry, ptr @cxd2880_read_snr._entry.148, ptr @cxd2880_read_snr._entry_ptr, ptr @cxd2880_read_snr._entry_ptr.149, ptr @cxd2880_read_status._entry, ptr @cxd2880_read_status._entry.104, ptr @cxd2880_read_status._entry.107, ptr @cxd2880_read_status._entry.112, ptr @cxd2880_read_status._entry_ptr, ptr @cxd2880_read_status._entry_ptr.106, ptr @cxd2880_read_status._entry_ptr.109, ptr @cxd2880_read_status._entry_ptr.113, ptr @cxd2880_read_ucblocks._entry, ptr @cxd2880_read_ucblocks._entry.151, ptr @cxd2880_read_ucblocks._entry_ptr, ptr @cxd2880_read_ucblocks._entry_ptr.152, ptr @cxd2880_release._entry, ptr @cxd2880_release._entry_ptr, ptr @cxd2880_set_ber_per_period_t._entry, ptr @cxd2880_set_ber_per_period_t._entry.115, ptr @cxd2880_set_ber_per_period_t._entry_ptr, ptr @cxd2880_set_ber_per_period_t._entry_ptr.117, ptr @cxd2880_set_ber_per_period_t2._entry, ptr @cxd2880_set_ber_per_period_t2._entry.120, ptr @cxd2880_set_ber_per_period_t2._entry.123, ptr @cxd2880_set_ber_per_period_t2._entry.126, ptr @cxd2880_set_ber_per_period_t2._entry.129, ptr @cxd2880_set_ber_per_period_t2._entry.132, ptr @cxd2880_set_ber_per_period_t2._entry_ptr, ptr @cxd2880_set_ber_per_period_t2._entry_ptr.122, ptr @cxd2880_set_ber_per_period_t2._entry_ptr.125, ptr @cxd2880_set_ber_per_period_t2._entry_ptr.128, ptr @cxd2880_set_ber_per_period_t2._entry_ptr.131, ptr @cxd2880_set_ber_per_period_t2._entry_ptr.134, ptr @cxd2880_set_frontend._entry, ptr @cxd2880_set_frontend._entry.49, ptr @cxd2880_set_frontend._entry.52, ptr @cxd2880_set_frontend._entry.55, ptr @cxd2880_set_frontend._entry_ptr, ptr @cxd2880_set_frontend._entry_ptr.51, ptr @cxd2880_set_frontend._entry_ptr.54, ptr @cxd2880_set_frontend._entry_ptr.57, ptr @cxd2880_sleep._entry, ptr @cxd2880_sleep._entry_ptr, ptr @cxd2880_tune._entry, ptr @cxd2880_tune._entry.45, ptr @cxd2880_tune._entry_ptr, ptr @cxd2880_tune._entry_ptr.47, ptr @cxd2880_attach.priv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cxd2880_dvbt_t2_ops, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @cxd2880_set_ber_per_period_t.cr_table, ptr @cxd2880_set_ber_per_period_t.denominator_tbl, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @cxd2880_set_ber_per_period_t2.gi_tbl, ptr @cxd2880_set_ber_per_period_t2.n_tbl, ptr @cxd2880_set_ber_per_period_t2.mode_tbl, ptr @cxd2880_set_ber_per_period_t2.kbch_tbl, ptr @.str.119, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @cxd2880_post_bit_err_t2.n_bch_bits_lookup, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.150], section "llvm.metadata"
@0 = internal global [154 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_attach.priv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_dvbt_t2_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_attach._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_attach._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_attach._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_attach._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_attach._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_tune._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_tune._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_frontend._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_frontend._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_frontend._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_get_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_get_frontend_t._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_get_frontend_t2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_read_status._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_read_status._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_read_status._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_ber_per_period_t.cr_table to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_ber_per_period_t.denominator_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_ber_per_period_t._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_ber_per_period_t._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_check_l1post_plp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_ber_per_period_t2.gi_tbl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_ber_per_period_t2.n_tbl to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_ber_per_period_t2.mode_tbl to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_ber_per_period_t2.kbch_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_ber_per_period_t2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_ber_per_period_t2._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_ber_per_period_t2._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_ber_per_period_t2._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_ber_per_period_t2._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_set_ber_per_period_t2._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_get_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_post_bit_err_t2.n_bch_bits_lookup to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_read_snr._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_read_ucblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2880_read_ucblocks._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cxd2880_attach(ptr noundef writeonly %fe, ptr nocapture noundef readonly %cfg) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data, align 1
  %tobool.not = icmp eq ptr %fe, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1148) #12
  store ptr %call7.i.i, ptr @cxd2880_attach.priv, align 4
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %spi5 = getelementptr inbounds %struct.cxd2880_priv, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %spi5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %spi5, align 8
  %spi_mutex = getelementptr inbounds %struct.cxd2880_config, ptr %cfg, i32 0, i32 1
  %5 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi_mutex, align 4
  %spi_mutex6 = getelementptr inbounds %struct.cxd2880_priv, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %spi_mutex6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %spi_mutex6, align 4
  %spi_device = getelementptr inbounds %struct.cxd2880_priv, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %spi_device to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %spi_device, align 4
  %ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %ops, ptr @cxd2880_dvbt_t2_ops, i32 544)
  %call10 = tail call i32 @cxd2880_spi_device_initialize(ptr noundef %spi_device, i32 noundef 0, i32 noundef 55000000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call10) #11
  %10 = load ptr, ptr @cxd2880_attach.priv, align 4
  tail call void @kfree(ptr noundef %10) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end4
  %11 = load ptr, ptr @cxd2880_attach.priv, align 4
  %cxd2880_spi = getelementptr inbounds %struct.cxd2880_priv, ptr %11, i32 0, i32 4
  %spi_device19 = getelementptr inbounds %struct.cxd2880_priv, ptr %11, i32 0, i32 3
  %call20 = tail call i32 @cxd2880_spi_device_create_spi(ptr noundef %cxd2880_spi, ptr noundef %spi_device19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %call20) #11
  %12 = load ptr, ptr @cxd2880_attach.priv, align 4
  tail call void @kfree(ptr noundef %12) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %13 = load ptr, ptr @cxd2880_attach.priv, align 4
  %regio = getelementptr inbounds %struct.cxd2880_priv, ptr %13, i32 0, i32 2
  %cxd2880_spi29 = getelementptr inbounds %struct.cxd2880_priv, ptr %13, i32 0, i32 4
  %call30 = tail call i32 @cxd2880_io_spi_create(ptr noundef %regio, ptr noundef %cxd2880_spi29, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end38, label %do.end35

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %call30) #11
  %14 = load ptr, ptr @cxd2880_attach.priv, align 4
  tail call void @kfree(ptr noundef %14) #8
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %15 = load ptr, ptr @cxd2880_attach.priv, align 4
  %regio39 = getelementptr inbounds %struct.cxd2880_priv, ptr %15, i32 0, i32 2
  %write_reg = getelementptr inbounds %struct.cxd2880_priv, ptr %15, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write_reg, align 4
  %call41 = tail call i32 %17(ptr noundef %regio39, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end49, label %do.end46

do.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1) #11
  %18 = load ptr, ptr @cxd2880_attach.priv, align 4
  tail call void @kfree(ptr noundef %18) #8
  br label %cleanup

if.end49:                                         ; preds = %if.end38
  %19 = load ptr, ptr @cxd2880_attach.priv, align 4
  %regio50 = getelementptr inbounds %struct.cxd2880_priv, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %regio50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regio50, align 4
  %call52 = call i32 %21(ptr noundef %regio50, i32 noundef 0, i8 noundef zeroext -3, ptr noundef nonnull %data, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end60, label %do.end57

do.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1) #11
  %22 = load ptr, ptr @cxd2880_attach.priv, align 4
  call void @kfree(ptr noundef %22) #8
  br label %cleanup

if.end60:                                         ; preds = %if.end49
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %do.end67 [
    i8 98, label %if.end60.if.end70_crit_edge
    i8 106, label %if.end60.if.end70_crit_edge91
  ]

if.end60.if.end70_crit_edge91:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.end60.if.end70_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1) #11
  %26 = load ptr, ptr @cxd2880_attach.priv, align 4
  call void @kfree(ptr noundef %26) #8
  br label %cleanup

if.end70:                                         ; preds = %if.end60.if.end70_crit_edge, %if.end60.if.end70_crit_edge91
  %27 = load ptr, ptr @cxd2880_attach.priv, align 4
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %28 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %demodulator_priv, align 4
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %do.end67, %do.end57, %do.end46, %do.end35, %do.end25, %do.end15, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end15 ], [ null, %do.end25 ], [ null, %do.end35 ], [ null, %do.end46 ], [ null, %do.end57 ], [ null, %do.end67 ], [ %fe, %if.end70 ], [ null, %do.end ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_spi_device_initialize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_spi_device_create_spi(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_io_spi_create(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cxd2880_release(ptr noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fe, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.25) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @kfree(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_init(ptr noundef readonly %fe) #0 align 64 {
entry:
  %create_param = alloca %struct.cxd2880_tnrdmd_create_param, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %create_param) #8
  %0 = getelementptr inbounds i8, ptr %create_param, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %tobool.not = icmp eq ptr %fe, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %2 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %demodulator_priv, align 4
  %4 = ptrtoint ptr %create_param to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %create_param, align 4
  %xtal_share_type = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, ptr %create_param, i32 0, i32 2
  %5 = ptrtoint ptr %xtal_share_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %xtal_share_type, align 4
  %en_internal_ldo = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, ptr %create_param, i32 0, i32 1
  %6 = ptrtoint ptr %en_internal_ldo to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %en_internal_ldo, align 4
  %xosc_cap = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, ptr %create_param, i32 0, i32 3
  %7 = ptrtoint ptr %xosc_cap to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 18, ptr %xosc_cap, align 4
  %xosc_i = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, ptr %create_param, i32 0, i32 4
  %8 = ptrtoint ptr %xosc_i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %xosc_i, align 1
  %stationary_use = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, ptr %create_param, i32 0, i32 6
  %9 = ptrtoint ptr %stationary_use to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %stationary_use, align 1
  %spi_mutex = getelementptr inbounds %struct.cxd2880_priv, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %11, i32 noundef 0) #8
  %io = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io, align 4
  %regio = getelementptr inbounds %struct.cxd2880_priv, ptr %3, i32 0, i32 2
  %cmp.not = icmp eq ptr %13, %regio
  br i1 %cmp.not, label %if.end.if.end14_crit_edge, label %if.then1

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then1:                                         ; preds = %if.end
  %call4 = call i32 @cxd2880_tnrdmd_create(ptr noundef %3, ptr noundef %regio, ptr noundef nonnull %create_param) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then1.if.end14_crit_edge, label %if.then6

if.then1.if.end14_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then6:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_unlock(ptr noundef %15) #8
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef %call4) #11
  br label %cleanup

if.end14:                                         ; preds = %if.then1.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %call16 = call i32 @cxd2880_integ_init(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end25, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_unlock(ptr noundef %17) #8
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.26, i32 noundef %call16) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end14
  %call27 = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %3, i32 noundef 10, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %18 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_unlock(ptr noundef %19) #8
  br i1 %tobool28.not, label %if.end36, label %if.then29

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.26, i32 noundef %call27) #11
  br label %cleanup

if.end36:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_init.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_init, %if.then44)) #8
          to label %cleanup [label %if.then44], !srcloc !333

if.then44:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_init.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.26) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %if.end36, %if.then29, %if.then18, %if.then6, %do.end
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ %call16, %if.then18 ], [ %call27, %if.then29 ], [ -22, %do.end ], [ 0, %if.then44 ], [ 0, %if.end36 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %create_param) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_sleep(ptr noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fe, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %spi_mutex = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %call1 = tail call i32 @cxd2880_tnrdmd_sleep(ptr noundef %1) #8
  %4 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_unlock(ptr noundef %5) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_sleep.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_sleep, %if.then9)) #8
          to label %cleanup [label %if.then9], !srcloc !333

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_sleep.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call1, %if.then9 ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_tune(ptr noundef %fe, i1 noundef zeroext %retune, i32 noundef %mode_flags, ptr noundef writeonly %delay, ptr noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fe, null
  %tobool1.not = icmp eq ptr %delay, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %status, null
  %or.cond23 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond23, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %retune, label %if.then5, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @cxd2880_set_frontend(ptr noundef nonnull %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end15_crit_edge, label %do.end11

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i32 noundef %call6) #11
  br label %cleanup

if.end15:                                         ; preds = %if.then5.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 20, ptr %delay, align 4
  %call16 = tail call i32 @cxd2880_read_status(ptr noundef nonnull %fe, ptr noundef nonnull %status)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end11, %do.end
  %retval.0 = phi i32 [ %call6, %do.end11 ], [ %call16, %if.end15 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cxd2880_get_frontend_algo(ptr nocapture noundef readnone %fe) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fe, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.48) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %pre_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1
  %2 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %stat, align 1
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %3, align 1
  %5 = ptrtoint ptr %pre_bit_error to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %pre_bit_error, align 2
  %pre_bit_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45
  %stat5 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1
  %6 = ptrtoint ptr %stat5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %stat5, align 1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %7, align 1
  %9 = ptrtoint ptr %pre_bit_count to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %pre_bit_count, align 1
  %post_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %stat13 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %10 = ptrtoint ptr %stat13 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %stat13, align 1
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 0, ptr %11, align 1
  %13 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %post_bit_error, align 4
  %post_bit_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %stat21 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %14 = ptrtoint ptr %stat21 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %stat21, align 1
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %15, align 1
  %17 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %post_bit_count, align 1
  %block_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48
  %stat29 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %18 = ptrtoint ptr %stat29 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %stat29, align 1
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 0, ptr %19, align 1
  %21 = ptrtoint ptr %block_error to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %block_error, align 2
  %block_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49
  %stat37 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %22 = ptrtoint ptr %stat37 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %stat37, align 1
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 0, ptr %23, align 1
  %25 = ptrtoint ptr %block_count to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %block_count, align 1
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %26 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bandwidth_hz, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %27, label %if.end.cleanup_crit_edge [
    i32 1712000, label %if.end.sw.epilog_crit_edge
    i32 5000000, label %sw.bb45
    i32 6000000, label %sw.bb46
    i32 7000000, label %sw.bb47
    i32 8000000, label %sw.bb48
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb45:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %if.end.sw.epilog_crit_edge
  %bw.0 = phi i32 [ 8, %sw.bb48 ], [ 7, %sw.bb47 ], [ 6, %sw.bb46 ], [ 5, %sw.bb45 ], [ 1, %if.end.sw.epilog_crit_edge ]
  %s = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 14
  %29 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %s, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %30 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delivery_system, align 4
  %32 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dtv_property_cache, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef %31, i32 noundef %33, i32 noundef %bw.0) #11
  %spi_mutex = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %35, i32 noundef 0) #8
  %36 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delivery_system, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %37, label %do.end81 [
    i32 3, label %if.then55
    i32 16, label %if.then64
  ]

if.then55:                                        ; preds = %sw.epilog
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 25
  %39 = ptrtoint ptr %sys to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %sys, align 4
  %40 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %41, 1000
  %dvbt_tune_param = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 5
  %42 = ptrtoint ptr %dvbt_tune_param to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div, ptr %dvbt_tune_param, align 4
  %bandwidth = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %bw.0, ptr %bandwidth, align 4
  %profile = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 5, i32 2
  %44 = ptrtoint ptr %profile to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %profile, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %tobool1.not.i = icmp eq ptr %dvbt_tune_param, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.then55.if.end86_crit_edge, label %if.end.i

if.then55.if.end86_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end.i:                                         ; preds = %if.then55
  %diver_mode.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %diver_mode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %diver_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp.i = icmp eq i32 %46, 2
  br i1 %cmp.i, label %if.end.i.if.end86_crit_edge, label %if.end3.i

if.end.i.if.end86_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end3.i:                                        ; preds = %if.end.i
  %state.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 22
  %47 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state.i, align 4
  %.off.i = add i32 %48, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end8.i, label %if.end3.i.if.end86_crit_edge

if.end3.i.if.end86_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end8.i:                                        ; preds = %if.end3.i
  %cancel.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 28
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cancel.i, i32 noundef 4) #8
  %49 = ptrtoint ptr %cancel.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 0, ptr %cancel.i, align 4
  %50 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bandwidth, align 4
  %.off39.i = add i32 %51, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off39.i)
  %switch40.i = icmp ult i32 %.off39.i, 4
  br i1 %switch40.i, label %if.end20.i, label %if.end8.i.if.end86_crit_edge

if.end8.i.if.end86_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end20.i:                                       ; preds = %if.end8.i
  %call.i = tail call i32 @cxd2880_tnrdmd_dvbt_tune1(ptr noundef nonnull %1, ptr noundef nonnull %dvbt_tune_param) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end20.i.if.end86_crit_edge

if.end20.i.if.end86_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end23.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 1000000, i32 noundef 1001000, i32 noundef 2) #8
  %call24.i = tail call i32 @cxd2880_tnrdmd_dvbt_tune2(ptr noundef nonnull %1, ptr noundef nonnull %dvbt_tune_param) #8
  br label %if.end86

if.then64:                                        ; preds = %sw.epilog
  %sys66 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 25
  %52 = ptrtoint ptr %sys66 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %sys66, align 4
  %53 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dtv_property_cache, align 4
  %div68 = udiv i32 %54, 1000
  %dvbt2_tune_param = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 6
  %55 = ptrtoint ptr %dvbt2_tune_param to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div68, ptr %dvbt2_tune_param, align 4
  %bandwidth71 = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 6, i32 1
  %56 = ptrtoint ptr %bandwidth71 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %bw.0, ptr %bandwidth71, align 4
  %stream_id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 24
  %57 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %stream_id, align 4
  %conv = trunc i32 %58 to i16
  %data_plp_id = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 6, i32 2
  %59 = ptrtoint ptr %data_plp_id to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv, ptr %data_plp_id, align 4
  %profile74 = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 6, i32 3
  %60 = ptrtoint ptr %profile74 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %profile74, align 4
  %tobool.not.i142 = icmp eq ptr %1, null
  %tobool1.not.i143 = icmp eq ptr %dvbt2_tune_param, null
  %or.cond.i144 = or i1 %tobool.not.i142, %tobool1.not.i143
  br i1 %or.cond.i144, label %if.then64.if.end86_crit_edge, label %if.end.i147

if.then64.if.end86_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end.i147:                                      ; preds = %if.then64
  %diver_mode.i145 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %diver_mode.i145 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %diver_mode.i145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp.i146 = icmp eq i32 %62, 2
  br i1 %cmp.i146, label %if.end.i147.if.end86_crit_edge, label %if.end3.i151

if.end.i147.if.end86_crit_edge:                   ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end3.i151:                                     ; preds = %if.end.i147
  %state.i148 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 22
  %63 = ptrtoint ptr %state.i148 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %state.i148, align 4
  %.off.i149 = add i32 %64, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i149)
  %switch.i150 = icmp ult i32 %.off.i149, 2
  br i1 %switch.i150, label %if.end8.i155, label %if.end3.i151.if.end86_crit_edge

if.end3.i151.if.end86_crit_edge:                  ; preds = %if.end3.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end8.i155:                                     ; preds = %if.end3.i151
  %cancel.i152 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 28
  %call.i.i.i153 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cancel.i152, i32 noundef 4) #8
  %65 = ptrtoint ptr %cancel.i152 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 0, ptr %cancel.i152, align 4
  %66 = ptrtoint ptr %bandwidth71 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bandwidth71, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %67, label %if.end8.i155.if.end86_crit_edge [
    i32 1, label %if.end8.i155.if.end23.i156_crit_edge
    i32 5, label %if.end8.i155.if.end23.i156_crit_edge159
    i32 6, label %if.end8.i155.if.end23.i156_crit_edge160
    i32 7, label %if.end8.i155.if.end23.i156_crit_edge161
    i32 8, label %if.end8.i155.if.end23.i156_crit_edge162
  ]

if.end8.i155.if.end23.i156_crit_edge162:          ; preds = %if.end8.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i156

if.end8.i155.if.end23.i156_crit_edge161:          ; preds = %if.end8.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i156

if.end8.i155.if.end23.i156_crit_edge160:          ; preds = %if.end8.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i156

if.end8.i155.if.end23.i156_crit_edge159:          ; preds = %if.end8.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i156

if.end8.i155.if.end23.i156_crit_edge:             ; preds = %if.end8.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i156

if.end8.i155.if.end86_crit_edge:                  ; preds = %if.end8.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end23.i156:                                    ; preds = %if.end8.i155.if.end23.i156_crit_edge, %if.end8.i155.if.end23.i156_crit_edge159, %if.end8.i155.if.end23.i156_crit_edge160, %if.end8.i155.if.end23.i156_crit_edge161, %if.end8.i155.if.end23.i156_crit_edge162
  %69 = ptrtoint ptr %profile74 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %profile74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %switch52.i = icmp ult i32 %70, 2
  br i1 %switch52.i, label %if.end29.i, label %if.end23.i156.if.end86_crit_edge

if.end23.i156.if.end86_crit_edge:                 ; preds = %if.end23.i156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end29.i:                                       ; preds = %if.end23.i156
  %call.i157 = tail call i32 @cxd2880_tnrdmd_dvbt2_tune1(ptr noundef nonnull %1, ptr noundef nonnull %dvbt2_tune_param) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool30.not.i = icmp eq i32 %call.i157, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end29.i.if.end86_crit_edge

if.end29.i.if.end86_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.end32.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 1000000, i32 noundef 1001000, i32 noundef 2) #8
  %call33.i = tail call i32 @cxd2880_tnrdmd_dvbt2_tune2(ptr noundef nonnull %1, ptr noundef nonnull %dvbt2_tune_param) #8
  br label %if.end86

do.end81:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.48) #11
  %71 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_unlock(ptr noundef %72) #8
  br label %cleanup

if.end86:                                         ; preds = %if.end32.i, %if.end29.i.if.end86_crit_edge, %if.end23.i156.if.end86_crit_edge, %if.end8.i155.if.end86_crit_edge, %if.end3.i151.if.end86_crit_edge, %if.end.i147.if.end86_crit_edge, %if.then64.if.end86_crit_edge, %if.end23.i, %if.end20.i.if.end86_crit_edge, %if.end8.i.if.end86_crit_edge, %if.end3.i.if.end86_crit_edge, %if.end.i.if.end86_crit_edge, %if.then55.if.end86_crit_edge
  %ret.0 = phi i32 [ %call24.i, %if.end23.i ], [ -22, %if.then55.if.end86_crit_edge ], [ -22, %if.end.i.if.end86_crit_edge ], [ -22, %if.end3.i.if.end86_crit_edge ], [ -25, %if.end8.i.if.end86_crit_edge ], [ %call.i, %if.end20.i.if.end86_crit_edge ], [ %call33.i, %if.end32.i ], [ -22, %if.then64.if.end86_crit_edge ], [ -22, %if.end.i147.if.end86_crit_edge ], [ -22, %if.end3.i151.if.end86_crit_edge ], [ -25, %if.end8.i155.if.end86_crit_edge ], [ -22, %if.end23.i156.if.end86_crit_edge ], [ %call.i157, %if.end29.i.if.end86_crit_edge ]
  %73 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_unlock(ptr noundef %74) #8
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.48, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %do.end81, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %if.end86 ], [ -22, %do.end81 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_get_frontend(ptr noundef %fe, ptr noundef %props) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fe, null
  %tobool1.not = icmp eq ptr %props, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.58) #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend, %if.then8)) #8
          to label %do.end11 [label %if.then8], !srcloc !333

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %0 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delivery_system, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend.__UNIQUE_ID_ddebug329, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef %1) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body2
  %delivery_system13 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %2 = ptrtoint ptr %delivery_system13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delivery_system13, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %3, label %do.end11.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 16, label %sw.bb15
  ]

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call fastcc i32 @cxd2880_get_frontend_t(ptr noundef nonnull %fe, ptr noundef nonnull %props)
  br label %cleanup

sw.bb15:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call fastcc i32 @cxd2880_get_frontend_t2(ptr noundef nonnull %fe, ptr noundef nonnull %props)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb, %do.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call16, %sw.bb15 ], [ %call14, %sw.bb ], [ -22, %do.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_read_status(ptr noundef %fe, ptr noundef %status) #0 align 64 {
entry:
  %l1pre.i = alloca %struct.cxd2880_dvbt2_l1pre, align 4
  %l1post.i = alloca %struct.cxd2880_dvbt2_l1post, align 4
  %plp.i = alloca %struct.cxd2880_dvbt2_plp, align 4
  %bbheader.i = alloca %struct.cxd2880_dvbt2_bbheader, align 4
  %valid.i = alloca i8, align 1
  %plp_not_found.i = alloca i8, align 1
  %info.i = alloca %struct.cxd2880_dvbt_tpsinfo, align 4
  %data.i = alloca i8, align 1
  %sync = alloca i8, align 1
  %lock = alloca i8, align 1
  %unlock = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sync) #8
  %0 = ptrtoint ptr %sync to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %sync, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lock) #8
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %lock, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %unlock) #8
  %2 = ptrtoint ptr %unlock to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %unlock, align 1
  %tobool.not = icmp eq ptr %fe, null
  %tobool1.not = icmp eq ptr %status, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.103) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %3 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %demodulator_priv, align 4
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %status, align 4
  %state = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %4, i32 0, i32 22
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then2, label %if.end.do.body39_crit_edge

if.end.do.body39_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body39

if.then2:                                         ; preds = %if.end
  %spi_mutex = getelementptr inbounds %struct.cxd2880_priv, ptr %4, i32 0, i32 7
  %8 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %9, i32 noundef 0) #8
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %10 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delivery_system, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %11, label %do.end15 [
    i32 3, label %if.then4
    i32 16, label %if.then9
  ]

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = call i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat(ptr noundef %4, ptr noundef nonnull %sync, ptr noundef nonnull %lock, ptr noundef nonnull %unlock) #8
  br label %if.end20

if.then9:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(ptr noundef %4, ptr noundef nonnull %sync, ptr noundef nonnull %lock, ptr noundef nonnull %unlock) #8
  br label %if.end20

do.end15:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.103) #11
  %13 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_unlock(ptr noundef %14) #8
  br label %cleanup

if.end20:                                         ; preds = %if.then9, %if.then4
  %ret.0 = phi i32 [ %call6, %if.then4 ], [ %call11, %if.then9 ]
  %15 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_unlock(ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool22.not = icmp eq i32 %ret.0, 0
  br i1 %tobool22.not, label %if.end30, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %sys = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %4, i32 0, i32 25
  %17 = ptrtoint ptr %sys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sys, align 4
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.103, i32 noundef %18) #11
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %19 = ptrtoint ptr %sync to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sync, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %20)
  %cmp31 = icmp eq i8 %20, 6
  br i1 %cmp31, label %if.then33, label %if.end30.if.end34_crit_edge

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %status, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end30.if.end34_crit_edge
  %22 = ptrtoint ptr %lock to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %lock, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool35.not = icmp eq i8 %23, 0
  br i1 %tobool35.not, label %if.end34.do.body39_crit_edge, label %if.then36

if.end34.do.body39_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body39

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  %or = or i32 %25, 28
  store i32 %or, ptr %status, align 4
  br label %do.body39

do.body39:                                        ; preds = %if.then36, %if.end34.do.body39_crit_edge, %if.end.do.body39_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_read_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_read_status, %if.then45)) #8
          to label %do.end48 [label %if.then45], !srcloc !333

if.then45:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %status, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_read_status.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.103, i32 noundef %27) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then45, %do.body39
  %s = getelementptr inbounds %struct.cxd2880_priv, ptr %4, i32 0, i32 14
  %28 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp49 = icmp eq i32 %29, 0
  br i1 %cmp49, label %land.lhs.true, label %do.end48.if.end84_crit_edge

do.end48.if.end84_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

land.lhs.true:                                    ; preds = %do.end48
  %30 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status, align 4
  %32 = and i32 %31, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %32)
  %.not = icmp eq i32 %32, 18
  br i1 %.not, label %if.then55, label %land.lhs.true.if.end84_crit_edge

land.lhs.true.if.end84_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then55:                                        ; preds = %land.lhs.true
  %spi_mutex56 = getelementptr inbounds %struct.cxd2880_priv, ptr %4, i32 0, i32 7
  %33 = ptrtoint ptr %spi_mutex56 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %spi_mutex56, align 4
  call void @mutex_lock_nested(ptr noundef %34, i32 noundef 0) #8
  %delivery_system57 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %35 = ptrtoint ptr %delivery_system57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delivery_system57, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %36, label %do.end77 [
    i32 3, label %if.end.i
    i32 16, label %if.end.i131
  ]

if.end.i:                                         ; preds = %if.then55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info.i) #8
  %38 = call ptr @memset(ptr %info.i, i32 255, i32 32)
  %39 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %demodulator_priv, align 4
  %bandwidth.i = getelementptr inbounds %struct.cxd2880_priv, ptr %40, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %bandwidth.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bandwidth.i, align 4
  %call1.i = call i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(ptr noundef %40, ptr noundef nonnull %info.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end9.i_crit_edge, label %do.end6.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.114, i32 noundef %call1.i) #11
  %hierarchy.i = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info.i, i32 0, i32 1
  %43 = ptrtoint ptr %hierarchy.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %hierarchy.i, align 4
  %44 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %info.i, align 4
  %guard.i = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info.i, i32 0, i32 4
  %45 = ptrtoint ptr %guard.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %guard.i, align 4
  %rate_hp.i = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info.i, i32 0, i32 2
  %46 = ptrtoint ptr %rate_hp.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %rate_hp.i, align 4
  %rate_lp.i = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info.i, i32 0, i32 3
  %47 = ptrtoint ptr %rate_lp.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %rate_lp.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end6.i, %if.end.i.if.end9.i_crit_edge
  %hierarchy10.i = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info.i, i32 0, i32 1
  %48 = ptrtoint ptr %hierarchy10.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hierarchy10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i = icmp eq i32 %49, 0
  br i1 %cmp.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %info.i, align 4
  %mul13.i = shl i32 %51, 1
  %add.i = add i32 %mul13.i, 2
  %mul.i = mul i32 %add.i, %42
  %mul14.i = mul i32 %mul.i, 63000000
  %guard15.i = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info.i, i32 0, i32 4
  %52 = ptrtoint ptr %guard15.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %guard15.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @cxd2880_set_ber_per_period_t.denominator_tbl, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  %div.i = udiv i32 %mul14.i, %55
  %rate_hp16.i = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info.i, i32 0, i32 2
  %56 = ptrtoint ptr %rate_hp16.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rate_hp16.i, align 4
  %arrayidx17.i = getelementptr [5 x i32], ptr @cxd2880_set_ber_per_period_t.cr_table, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx17.i, align 4
  %mul19.i = mul i32 %mul.i, 1000
  %mul23.i = mul i32 %mul19.i, %59
  %div26.i = udiv i32 %mul23.i, %55
  %mul30.i = mul i32 %mul.i, 875
  %mul34.i = mul i32 %mul30.i, %59
  %div37.i = udiv i32 %mul34.i, %55
  br label %if.end107.i

if.else.i:                                        ; preds = %if.end9.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #8
  %60 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %data.i, align 1
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %40, i32 0, i32 1
  %61 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write_reg.i, align 4
  %call41.i = call i32 %64(ptr noundef %62, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.then43.i, label %if.else50.i

if.then43.i:                                      ; preds = %if.else.i
  %65 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %io.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %call46.i = call i32 %68(ptr noundef %66, i32 noundef 1, i8 noundef zeroext 103, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.then43.i.if.end51.i_crit_edge, label %if.then48.i

if.then43.i.if.end51.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51.i

if.then48.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %data.i, align 1
  br label %if.end51.i

if.else50.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %data.i, align 1
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else50.i, %if.then48.i, %if.then43.i.if.end51.i_crit_edge
  %71 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %data.i, align 1
  %73 = and i8 %72, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool52.not.i = icmp eq i8 %73, 0
  br i1 %tobool52.not.i, label %if.else84.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %info.i, align 4
  %mul56.i = shl i32 %75, 1
  %add57.i = add i32 %mul56.i, 2
  %mul54.i = mul i32 %add57.i, %42
  %mul58.i = mul i32 %mul54.i, 63000000
  %guard59.i = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info.i, i32 0, i32 4
  %76 = ptrtoint ptr %guard59.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %guard59.i, align 4
  %arrayidx60.i = getelementptr [4 x i32], ptr @cxd2880_set_ber_per_period_t.denominator_tbl, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx60.i, align 4
  %div61.i = udiv i32 %mul58.i, %79
  %rate_lp62.i = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info.i, i32 0, i32 3
  %80 = ptrtoint ptr %rate_lp62.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rate_lp62.i, align 4
  %arrayidx63.i = getelementptr [5 x i32], ptr @cxd2880_set_ber_per_period_t.cr_table, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx63.i, align 4
  %mul65.i = mul i32 %mul54.i, 1000
  %mul69.i = mul i32 %mul65.i, %83
  %div72.i = udiv i32 %mul69.i, %79
  %mul76.i = mul i32 %mul54.i, 875
  %mul80.i = mul i32 %mul76.i, %83
  %div83.i = udiv i32 %mul80.i, %79
  br label %if.end106.i

if.else84.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul86.i = mul i32 %42, 126000000
  %guard87.i = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info.i, i32 0, i32 4
  %84 = ptrtoint ptr %guard87.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %guard87.i, align 4
  %arrayidx88.i = getelementptr [4 x i32], ptr @cxd2880_set_ber_per_period_t.denominator_tbl, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx88.i, align 4
  %div89.i = udiv i32 %mul86.i, %87
  %rate_hp90.i = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %info.i, i32 0, i32 2
  %88 = ptrtoint ptr %rate_hp90.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rate_hp90.i, align 4
  %arrayidx91.i = getelementptr [5 x i32], ptr @cxd2880_set_ber_per_period_t.cr_table, i32 0, i32 %89
  %90 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx91.i, align 4
  %mul93.i = mul i32 %91, %42
  %mul94.i = mul i32 %mul93.i, 2000
  %div97.i = udiv i32 %mul94.i, %87
  %mul102.i = mul i32 %mul93.i, 1750
  %div105.i = udiv i32 %mul102.i, %87
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.else84.i, %if.then53.i
  %pre_ber_rate.0.i = phi i32 [ %div61.i, %if.then53.i ], [ %div89.i, %if.else84.i ]
  %post_ber_rate.0.i = phi i32 [ %div72.i, %if.then53.i ], [ %div97.i, %if.else84.i ]
  %ucblock_rate.0.i = phi i32 [ %div83.i, %if.then53.i ], [ %div105.i, %if.else84.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #8
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.end106.i, %if.then11.i
  %pre_ber_rate.1.i = phi i32 [ %div.i, %if.then11.i ], [ %pre_ber_rate.0.i, %if.end106.i ]
  %post_ber_rate.1.i = phi i32 [ %div26.i, %if.then11.i ], [ %post_ber_rate.0.i, %if.end106.i ]
  %ucblock_rate.1.i = phi i32 [ %div37.i, %if.then11.i ], [ %ucblock_rate.0.i, %if.end106.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %pre_ber_rate.1.i)
  %cmp108.i = icmp ult i32 %pre_ber_rate.1.i, 8192
  br i1 %cmp108.i, label %cond.end.thread.i, label %cond.end.i

cond.end.thread.i:                                ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #10
  %div11216.i = lshr i32 %pre_ber_rate.1.i, 1
  %add1137.i = add nuw nsw i32 %div11216.i, 256000
  %div1148.i = udiv i32 %add1137.i, %pre_ber_rate.1.i
  %pre_ber_interval9.i = getelementptr inbounds %struct.cxd2880_priv, ptr %40, i32 0, i32 9
  %92 = ptrtoint ptr %pre_ber_interval9.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %div1148.i, ptr %pre_ber_interval9.i, align 4
  br label %94

cond.end.i:                                       ; preds = %if.end107.i
  %call110.i = call i32 @intlog2(i32 noundef %pre_ber_rate.1.i) #8
  %shr.i = lshr i32 %call110.i, 24
  %mul111.i = shl i32 1000, %shr.i
  %div1121.i = lshr i32 %pre_ber_rate.1.i, 1
  %add113.i = add i32 %mul111.i, %div1121.i
  %div114.i = udiv i32 %add113.i, %pre_ber_rate.1.i
  %pre_ber_interval.i = getelementptr inbounds %struct.cxd2880_priv, ptr %40, i32 0, i32 9
  %93 = ptrtoint ptr %pre_ber_interval.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %div114.i, ptr %pre_ber_interval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %shr.i)
  %cmp116.i = icmp eq i32 %shr.i, 8
  %sub.i = add nsw i32 %shr.i, -12
  br i1 %cmp116.i, label %cond.end.i._crit_edge, label %cond.end.i.cxd2880_set_ber_per_period_t.exit_crit_edge

cond.end.i.cxd2880_set_ber_per_period_t.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_set_ber_per_period_t.exit

cond.end.i._crit_edge:                            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %94

94:                                               ; preds = %cond.end.i._crit_edge, %cond.end.thread.i
  br label %cxd2880_set_ber_per_period_t.exit

cxd2880_set_ber_per_period_t.exit:                ; preds = %94, %cond.end.i.cxd2880_set_ber_per_period_t.exit_crit_edge
  %95 = phi i32 [ 0, %94 ], [ %sub.i, %cond.end.i.cxd2880_set_ber_per_period_t.exit_crit_edge ]
  %call122.i = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %40, i32 noundef 30, i32 noundef %95) #8
  %call123.i = call i32 @intlog2(i32 noundef %post_ber_rate.1.i) #8
  %shr124.i = lshr i32 %call123.i, 24
  %mul126.i = shl i32 1000, %shr124.i
  %div1272.i = lshr i32 %post_ber_rate.1.i, 1
  %add128.i = add i32 %mul126.i, %div1272.i
  %div129.i = udiv i32 %add128.i, %post_ber_rate.1.i
  %post_ber_interval.i = getelementptr inbounds %struct.cxd2880_priv, ptr %40, i32 0, i32 11
  %96 = ptrtoint ptr %post_ber_interval.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %div129.i, ptr %post_ber_interval.i, align 4
  %call131.i = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %40, i32 noundef 29, i32 noundef %shr124.i) #8
  %call132.i = call i32 @intlog2(i32 noundef %ucblock_rate.1.i) #8
  %shr133.i = lshr i32 %call132.i, 24
  %mul135.i = shl i32 1000, %shr133.i
  %div1363.i = lshr i32 %ucblock_rate.1.i, 1
  %add137.i = add i32 %mul135.i, %div1363.i
  %div138.i = udiv i32 %add137.i, %ucblock_rate.1.i
  %ucblock_interval.i = getelementptr inbounds %struct.cxd2880_priv, ptr %40, i32 0, i32 13
  %97 = ptrtoint ptr %ucblock_interval.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %div138.i, ptr %ucblock_interval.i, align 4
  %call140.i = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %40, i32 noundef 31, i32 noundef %shr133.i) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info.i) #8
  %98 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %status, align 4
  %100 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %s, align 4
  br label %if.end82

if.end.i131:                                      ; preds = %if.then55
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %valid.i) #8
  %101 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %valid.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %plp_not_found.i) #8
  %102 = ptrtoint ptr %plp_not_found.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 -1, ptr %plp_not_found.i, align 1, !annotation !334
  %103 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %demodulator_priv, align 4
  %call1.i129 = call i32 @cxd2880_tnrdmd_dvbt2_check_l1post_valid(ptr noundef %104, ptr noundef nonnull %valid.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i129)
  %tobool2.not.i130 = icmp eq i32 %call1.i129, 0
  br i1 %tobool2.not.i130, label %if.end4.i, label %if.end.i131.cxd2880_check_l1post_plp.exit.thread_crit_edge

if.end.i131.cxd2880_check_l1post_plp.exit.thread_crit_edge: ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_check_l1post_plp.exit.thread

if.end4.i:                                        ; preds = %if.end.i131
  %105 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %valid.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool5.not.i = icmp eq i8 %106, 0
  br i1 %tobool5.not.i, label %if.end4.i.cxd2880_check_l1post_plp.exit.thread_crit_edge, label %if.end7.i

if.end4.i.cxd2880_check_l1post_plp.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_check_l1post_plp.exit.thread

if.end7.i:                                        ; preds = %if.end4.i
  %call9.i = call i32 @cxd2880_tnrdmd_dvbt2_mon_data_plp_error(ptr noundef %104, ptr noundef nonnull %plp_not_found.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end7.i.cxd2880_check_l1post_plp.exit.thread_crit_edge

if.end7.i.cxd2880_check_l1post_plp.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_check_l1post_plp.exit.thread

if.end12.i:                                       ; preds = %if.end7.i
  %107 = ptrtoint ptr %plp_not_found.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %plp_not_found.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool13.not.i = icmp ne i8 %108, 0
  %tune_info16.i = getelementptr inbounds %struct.cxd2880_priv, ptr %104, i32 0, i32 6, i32 4
  %. = zext i1 %tobool13.not.i to i32
  %109 = ptrtoint ptr %tune_info16.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %., ptr %tune_info16.i, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %plp_not_found.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %valid.i) #8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %l1pre.i) #8
  %110 = call ptr @memset(ptr %l1pre.i, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %l1post.i) #8
  %111 = call ptr @memset(ptr %l1post.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %plp.i) #8
  %112 = call ptr @memset(ptr %plp.i, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bbheader.i) #8
  %113 = call ptr @memset(ptr %bbheader.i, i32 255, i32 24)
  %114 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %demodulator_priv, align 4
  %bandwidth.i138 = getelementptr inbounds %struct.cxd2880_priv, ptr %115, i32 0, i32 6, i32 1
  %116 = ptrtoint ptr %bandwidth.i138 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %bandwidth.i138, align 4
  %call1.i139 = call i32 @cxd2880_tnrdmd_dvbt2_mon_l1_pre(ptr noundef %115, ptr noundef nonnull %l1pre.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i139)
  %tobool2.not.i140 = icmp eq i32 %call1.i139, 0
  br i1 %tobool2.not.i140, label %if.end9.i142, label %if.end12.i.error_ber_setting.i_crit_edge

if.end12.i.error_ber_setting.i_crit_edge:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ber_setting.i

cxd2880_check_l1post_plp.exit.thread:             ; preds = %if.end7.i.cxd2880_check_l1post_plp.exit.thread_crit_edge, %if.end4.i.cxd2880_check_l1post_plp.exit.thread_crit_edge, %if.end.i131.cxd2880_check_l1post_plp.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %plp_not_found.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %valid.i) #8
  br label %if.end82

if.end9.i142:                                     ; preds = %if.end12.i
  %call11.i = call i32 @cxd2880_tnrdmd_dvbt2_mon_active_plp(ptr noundef %115, i32 noundef 1, ptr noundef nonnull %plp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end19.i, label %if.end9.i142.error_ber_setting.i_crit_edge

if.end9.i142.error_ber_setting.i_crit_edge:       ; preds = %if.end9.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ber_setting.i

if.end19.i:                                       ; preds = %if.end9.i142
  %call21.i = call i32 @cxd2880_tnrdmd_dvbt2_mon_l1_post(ptr noundef %115, ptr noundef nonnull %l1post.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end29.i, label %if.end19.i.error_ber_setting.i_crit_edge

if.end19.i.error_ber_setting.i_crit_edge:         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ber_setting.i

if.end29.i:                                       ; preds = %if.end19.i
  %fft_mode.i = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1pre.i, i32 0, i32 5
  %118 = ptrtoint ptr %fft_mode.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %fft_mode.i, align 4
  %arrayidx.i143 = getelementptr [6 x i8], ptr @cxd2880_set_ber_per_period_t2.mode_tbl, i32 0, i32 %119
  %120 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.i143, align 1
  %conv.i = zext i8 %121 to i32
  %gi.i = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1pre.i, i32 0, i32 7
  %122 = ptrtoint ptr %gi.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %gi.i, align 4
  %arrayidx30.i = getelementptr [7 x i32], ptr @cxd2880_set_ber_per_period_t2.gi_tbl, i32 0, i32 %123
  %124 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx30.i, align 4
  %add.i144 = add i32 %125, 1024
  %mul.i145 = mul i32 %add.i144, %conv.i
  %num_symbols.i = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1pre.i, i32 0, i32 20
  %126 = ptrtoint ptr %num_symbols.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %num_symbols.i, align 2
  %conv31.i = zext i16 %127 to i32
  %arrayidx33.i = getelementptr [6 x i8], ptr @cxd2880_set_ber_per_period_t2.n_tbl, i32 0, i32 %119
  %128 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %129 to i32
  %add35.i = add nuw nsw i32 %conv34.i, %conv31.i
  %mul36.i = mul i32 %mul.i145, %add35.i
  %add37.i = add i32 %mul36.i, 2048
  %mixed.i = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1pre.i, i32 0, i32 4
  %130 = ptrtoint ptr %mixed.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %mixed.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool39.not.i = icmp eq i8 %131, 0
  br i1 %tobool39.not.i, label %if.end29.i.if.end49.i_crit_edge, label %land.lhs.true.i

if.end29.i.if.end49.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

land.lhs.true.i:                                  ; preds = %if.end29.i
  %fef_intvl.i = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %l1post.i, i32 0, i32 8
  %132 = ptrtoint ptr %fef_intvl.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %fef_intvl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool41.not.i = icmp eq i8 %133, 0
  br i1 %tobool41.not.i, label %land.lhs.true.i.if.end49.i_crit_edge, label %if.then42.i

land.lhs.true.i.if.end49.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.then42.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv40.i = zext i8 %133 to i32
  %fef_length.i = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %l1post.i, i32 0, i32 7
  %134 = ptrtoint ptr %fef_length.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %fef_length.i, align 4
  %div8.i = lshr i32 %conv40.i, 1
  %add45.i = add i32 %135, %div8.i
  %div48.i = udiv i32 %add45.i, %conv40.i
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then42.i, %land.lhs.true.i.if.end49.i_crit_edge, %if.end29.i.if.end49.i_crit_edge
  %term_b.0.i = phi i32 [ %div48.i, %if.then42.i ], [ 0, %land.lhs.true.i.if.end49.i_crit_edge ], [ 0, %if.end29.i.if.end49.i_crit_edge ]
  %136 = zext i32 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %117, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 5, label %sw.bb54.i
    i32 6, label %sw.bb59.i
    i32 7, label %sw.bb64.i
  ]

sw.bb.i:                                          ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %add50.i = add i32 %term_b.0.i, %add37.i
  %mul51.i = mul i32 %add50.i, 71
  %add52.i = add i32 %mul51.i, 65
  %div53.i = udiv i32 %add52.i, 131
  br label %sw.epilog.i

sw.bb54.i:                                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %add55.i = add i32 %term_b.0.i, %add37.i
  %mul56.i146 = mul i32 %add55.i, 7
  %add57.i147 = add i32 %mul56.i146, 20
  %div58.i = udiv i32 %add57.i147, 40
  br label %sw.epilog.i

sw.bb59.i:                                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %add60.i = add i32 %term_b.0.i, %add37.i
  %mul61.i = mul i32 %add60.i, 7
  %add62.i = add i32 %mul61.i, 24
  %div63.i = udiv i32 %add62.i, 48
  br label %sw.epilog.i

sw.bb64.i:                                        ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %add65.i = add i32 %term_b.0.i, %add37.i
  %add66.i = add i32 %add65.i, 4
  %div671.i = lshr i32 %add66.i, 3
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %add69.i = add i32 %term_b.0.i, %add37.i
  %mul70.i = mul i32 %add69.i, 7
  %add71.i = add i32 %mul70.i, 32
  %div727.i = lshr i32 %add71.i, 6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb64.i, %sw.bb59.i, %sw.bb54.i, %sw.bb.i
  %denominator.0.i = phi i32 [ %div727.i, %sw.default.i ], [ %div671.i, %sw.bb64.i ], [ %div63.i, %sw.bb59.i ], [ %div58.i, %sw.bb54.i ], [ %div53.i, %sw.bb.i ]
  %til_type.i = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp.i, i32 0, i32 14
  %137 = ptrtoint ptr %til_type.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %til_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool74.not.i = icmp eq i8 %138, 0
  br i1 %tobool74.not.i, label %sw.epilog.i.if.else91.i_crit_edge, label %land.lhs.true75.i

sw.epilog.i.if.else91.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else91.i

land.lhs.true75.i:                                ; preds = %sw.epilog.i
  %til_len.i = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp.i, i32 0, i32 13
  %139 = ptrtoint ptr %til_len.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %til_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool77.not.i = icmp eq i8 %140, 0
  br i1 %tobool77.not.i, label %land.lhs.true75.i.if.else91.i_crit_edge, label %if.then78.i

land.lhs.true75.i.if.else91.i_crit_edge:          ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else91.i

if.then78.i:                                      ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv76.i = zext i8 %140 to i32
  %num_blocks_max.i = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp.i, i32 0, i32 11
  %141 = ptrtoint ptr %num_blocks_max.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %num_blocks_max.i, align 4
  %conv79.i = zext i16 %142 to i32
  %mul80.i148 = mul i32 %conv79.i, 1000000
  %div815.i = lshr i32 %denominator.0.i, 1
  %add82.i = add i32 %mul80.i148, %div815.i
  %div83.i149 = udiv i32 %add82.i, %denominator.0.i
  br label %if.end98.i

if.else91.i:                                      ; preds = %land.lhs.true75.i.if.else91.i_crit_edge, %sw.epilog.i.if.else91.i_crit_edge
  %num_blocks_max92.i = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp.i, i32 0, i32 11
  %143 = ptrtoint ptr %num_blocks_max92.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %num_blocks_max92.i, align 4
  %conv93.i = zext i16 %144 to i32
  %mul94.i150 = mul i32 %conv93.i, 1000000
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.else91.i, %if.then78.i
  %denominator.0.sink9.i = phi i32 [ %denominator.0.i, %if.else91.i ], [ %conv76.i, %if.then78.i ]
  %mul94.sink.i = phi i32 [ %mul94.i150, %if.else91.i ], [ %div83.i149, %if.then78.i ]
  %div952.i = lshr i32 %denominator.0.sink9.i, 1
  %add96.i = add i32 %mul94.sink.i, %div952.i
  %div97.i151 = udiv i32 %add96.i, %denominator.0.sink9.i
  %call99.i = call i32 @intlog2(i32 noundef %div97.i151) #8
  %shr.i152 = lshr i32 %call99.i, 24
  %mul100.i = shl i32 1000, %shr.i152
  %div1013.i = lshr i32 %div97.i151, 1
  %add102.i = add i32 %mul100.i, %div1013.i
  %div103.i = udiv i32 %add102.i, %div97.i151
  %pre_ber_interval.i153 = getelementptr inbounds %struct.cxd2880_priv, ptr %115, i32 0, i32 9
  %145 = ptrtoint ptr %pre_ber_interval.i153 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %div103.i, ptr %pre_ber_interval.i153, align 4
  %call105.i = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %115, i32 noundef 33, i32 noundef %shr.i152) #8
  %call106.i = call i32 @intlog2(i32 noundef %div97.i151) #8
  %shr107.i = lshr i32 %call106.i, 24
  %mul109.i = shl i32 1000, %shr107.i
  %add111.i = add i32 %mul109.i, %div1013.i
  %div112.i = udiv i32 %add111.i, %div97.i151
  %post_ber_interval.i154 = getelementptr inbounds %struct.cxd2880_priv, ptr %115, i32 0, i32 11
  %146 = ptrtoint ptr %post_ber_interval.i154 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %div112.i, ptr %post_ber_interval.i154, align 4
  %call114.i = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %115, i32 noundef 32, i32 noundef %shr107.i) #8
  %call116.i = call i32 @cxd2880_tnrdmd_dvbt2_mon_bbheader(ptr noundef %115, i32 noundef 1, ptr noundef nonnull %bbheader.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i)
  %tobool117.not.i = icmp eq i32 %call116.i, 0
  br i1 %tobool117.not.i, label %if.end124.i, label %do.end121.i

do.end121.i:                                      ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  %call123.i155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.119) #11
  br label %cxd2880_set_ber_per_period_t2.exit

if.end124.i:                                      ; preds = %if.end98.i
  %plp_mode.i = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader.i, i32 0, i32 11
  %147 = ptrtoint ptr %plp_mode.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %plp_mode.i, align 4
  %149 = zext i32 %148 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %148, label %do.end158.i [
    i32 1, label %if.then126.i
    i32 2, label %if.then147.i
  ]

if.then126.i:                                     ; preds = %if.end124.i
  %issy_indicator.i = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %bbheader.i, i32 0, i32 3
  %150 = ptrtoint ptr %issy_indicator.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %issy_indicator.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool127.not.i = icmp eq i8 %151, 0
  %fec.i = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp.i, i32 0, i32 10
  %152 = ptrtoint ptr %fec.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %fec.i, align 4
  %plp_cr.i = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp.i, i32 0, i32 8
  %154 = ptrtoint ptr %plp_cr.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %plp_cr.i, align 4
  %arrayidx130.i = getelementptr [2 x [8 x i32]], ptr @cxd2880_set_ber_per_period_t2.kbch_tbl, i32 0, i32 %153, i32 %155
  %156 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx130.i, align 4
  %mul131.i = mul i32 %157, %div97.i151
  br i1 %tobool127.not.i, label %if.then128.i, label %if.else134.i

if.then128.i:                                     ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #10
  %add132.i = add i32 %mul131.i, 752
  %div133.i = udiv i32 %add132.i, 1504
  br label %if.end162.i

if.else134.i:                                     ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #10
  %add140.i = add i32 %mul131.i, 764
  %div141.i = udiv i32 %add140.i, 1528
  br label %if.end162.i

if.then147.i:                                     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #10
  %fec148.i = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp.i, i32 0, i32 10
  %158 = ptrtoint ptr %fec148.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %fec148.i, align 4
  %plp_cr150.i = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %plp.i, i32 0, i32 8
  %160 = ptrtoint ptr %plp_cr150.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %plp_cr150.i, align 4
  %arrayidx151.i = getelementptr [2 x [8 x i32]], ptr @cxd2880_set_ber_per_period_t2.kbch_tbl, i32 0, i32 %159, i32 %161
  %162 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx151.i, align 4
  %mul152.i = mul i32 %163, %div97.i151
  %add153.i = add i32 %mul152.i, 748
  %div154.i = udiv i32 %add153.i, 1496
  br label %if.end162.i

do.end158.i:                                      ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #10
  %call160.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.119) #11
  br label %cxd2880_set_ber_per_period_t2.exit

if.end162.i:                                      ; preds = %if.then147.i, %if.else134.i, %if.then128.i
  %ucblock_rate.0.i156 = phi i32 [ %div141.i, %if.else134.i ], [ %div133.i, %if.then128.i ], [ %div154.i, %if.then147.i ]
  %call163.i = call i32 @intlog2(i32 noundef %ucblock_rate.0.i156) #8
  %shr164.i = lshr i32 %call163.i, 24
  %mul166.i = shl i32 1000, %shr164.i
  %div1674.i = lshr i32 %ucblock_rate.0.i156, 1
  %add168.i = add i32 %mul166.i, %div1674.i
  %div169.i = udiv i32 %add168.i, %ucblock_rate.0.i156
  br label %cxd2880_set_ber_per_period_t2.exit

error_ber_setting.i:                              ; preds = %if.end19.i.error_ber_setting.i_crit_edge, %if.end9.i142.error_ber_setting.i_crit_edge, %if.end12.i.error_ber_setting.i_crit_edge
  %.str.127.sink.i = phi ptr [ @.str.121, %if.end12.i.error_ber_setting.i_crit_edge ], [ @.str.124, %if.end9.i142.error_ber_setting.i_crit_edge ], [ @.str.127, %if.end19.i.error_ber_setting.i_crit_edge ]
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.127.sink.i, ptr noundef nonnull @.str.119) #11
  %pre_ber_interval172.i = getelementptr inbounds %struct.cxd2880_priv, ptr %115, i32 0, i32 9
  %164 = ptrtoint ptr %pre_ber_interval172.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 1000, ptr %pre_ber_interval172.i, align 4
  %call174.i = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %115, i32 noundef 33, i32 noundef 0) #8
  %post_ber_interval175.i = getelementptr inbounds %struct.cxd2880_priv, ptr %115, i32 0, i32 11
  %165 = ptrtoint ptr %post_ber_interval175.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 1000, ptr %post_ber_interval175.i, align 4
  %call177.i = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %115, i32 noundef 32, i32 noundef 0) #8
  br label %cxd2880_set_ber_per_period_t2.exit

cxd2880_set_ber_per_period_t2.exit:               ; preds = %error_ber_setting.i, %if.end162.i, %do.end158.i, %do.end121.i
  %div169.i.sink = phi i32 [ %div169.i, %if.end162.i ], [ 1000, %error_ber_setting.i ], [ 1000, %do.end158.i ], [ 1000, %do.end121.i ]
  %shr164.i.sink = phi i32 [ %shr164.i, %if.end162.i ], [ 8, %error_ber_setting.i ], [ 8, %do.end158.i ], [ 8, %do.end121.i ]
  %ucblock_interval.i157 = getelementptr inbounds %struct.cxd2880_priv, ptr %115, i32 0, i32 13
  %166 = ptrtoint ptr %ucblock_interval.i157 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %div169.i.sink, ptr %ucblock_interval.i157, align 4
  %call171.i = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %115, i32 noundef 34, i32 noundef %shr164.i.sink) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bbheader.i) #8
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %plp.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %l1post.i) #8
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %l1pre.i) #8
  %167 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %status, align 4
  %169 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %s, align 4
  br label %if.end82

do.end77:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %call79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.103) #11
  %170 = ptrtoint ptr %spi_mutex56 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %spi_mutex56, align 4
  call void @mutex_unlock(ptr noundef %171) #8
  br label %cleanup

if.end82:                                         ; preds = %cxd2880_set_ber_per_period_t2.exit, %cxd2880_check_l1post_plp.exit.thread, %cxd2880_set_ber_per_period_t.exit
  %172 = ptrtoint ptr %spi_mutex56 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %spi_mutex56, align 4
  call void @mutex_unlock(ptr noundef %173) #8
  br label %if.end84

if.end84:                                         ; preds = %if.end82, %land.lhs.true.if.end84_crit_edge, %do.end48.if.end84_crit_edge
  %174 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %status, align 4
  call fastcc void @cxd2880_get_stats(ptr noundef nonnull %fe, i32 noundef %175)
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %do.end77, %do.end26, %do.end15, %do.end
  %retval.0 = phi i32 [ %ret.0, %do.end26 ], [ 0, %if.end84 ], [ -22, %do.end77 ], [ -22, %do.end15 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %unlock) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lock) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sync) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cxd2880_read_ber(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %ber) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_read_signal_strength(ptr noundef readonly %fe, ptr noundef writeonly %strength) #0 align 64 {
entry:
  %level = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %level) #8
  %0 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %level, align 4
  %tobool.not = icmp eq ptr %fe, null
  %tobool1.not = icmp eq ptr %strength, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.142) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %1 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %demodulator_priv, align 4
  %spi_mutex = getelementptr inbounds %struct.cxd2880_priv, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %4, i32 noundef 0) #8
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %5 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delivery_system, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %6, label %do.body7 [
    i32 3, label %if.end.if.then5_crit_edge
    i32 16, label %if.end.if.then5_crit_edge69
  ]

if.end.if.then5_crit_edge69:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %if.end.if.then5_crit_edge69
  %call6 = call i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef %2, ptr noundef nonnull %level) #8
  %8 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_unlock(ptr noundef %9) #8
  %10 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level, align 4
  %div = sdiv i32 %11, 125
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105000, i32 %11)
  %cmp21 = icmp sgt i32 %11, -105000
  %12 = call i32 @llvm.smin.i32(i32 %div, i32 -240)
  %13 = select i1 %cmp21, i32 %12, i32 -840
  %14 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %level, align 4
  %15 = mul i32 %13, 65535
  %mul = add i32 %15, 55049400
  %div28 = sdiv i32 %mul, 600
  %conv = trunc i32 %div28 to i16
  %16 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %strength, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool29.not = icmp eq i32 %call6, 0
  br i1 %tobool29.not, label %if.then5.cleanup_crit_edge, label %do.body31

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body7:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_read_signal_strength.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_read_signal_strength, %if.then13)) #8
          to label %do.end16 [label %if.then13], !srcloc !333

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_read_signal_strength.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.142) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body7
  %17 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_unlock(ptr noundef %18) #8
  br label %cleanup

do.body31:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_read_signal_strength.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_read_signal_strength, %if.then43)) #8
          to label %cleanup [label %if.then43], !srcloc !333

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_read_signal_strength.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.142, i32 noundef %call6) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %do.body31, %do.end16, %if.then5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end16 ], [ -22, %do.end ], [ %call6, %if.then43 ], [ 0, %if.then5.cleanup_crit_edge ], [ %call6, %do.body31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %level) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_read_snr(ptr noundef readonly %fe, ptr noundef writeonly %snr) #0 align 64 {
entry:
  %snrvalue = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %snrvalue) #8
  %0 = ptrtoint ptr %snrvalue to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %snrvalue, align 4
  %tobool.not = icmp eq ptr %fe, null
  %tobool1.not = icmp eq ptr %snr, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.147) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %1 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %demodulator_priv, align 4
  %spi_mutex = getelementptr inbounds %struct.cxd2880_priv, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %4, i32 noundef 0) #8
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %5 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delivery_system, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %6, label %do.end12 [
    i32 3, label %if.then2
    i32 16, label %if.then6
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = call i32 @cxd2880_tnrdmd_dvbt_mon_snr(ptr noundef %2, ptr noundef nonnull %snrvalue) #8
  br label %if.end17

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = call i32 @cxd2880_tnrdmd_dvbt2_mon_snr(ptr noundef %2, ptr noundef nonnull %snrvalue) #8
  br label %if.end17

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.147) #11
  %8 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_unlock(ptr noundef %9) #8
  br label %cleanup

if.end17:                                         ; preds = %if.then6, %if.then2
  %ret.0 = phi i32 [ %call3, %if.then2 ], [ %call8, %if.then6 ]
  %10 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_unlock(ptr noundef %11) #8
  %12 = ptrtoint ptr %snrvalue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %snrvalue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp19 = icmp slt i32 %13, 0
  br i1 %cmp19, label %if.then20, label %if.end17.if.end21_crit_edge

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %snrvalue to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %snrvalue, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  %15 = ptrtoint ptr %snrvalue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %snrvalue, align 4
  %conv = trunc i32 %16 to i16
  %17 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %snr, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool22.not = icmp eq i32 %ret.0, 0
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %do.body24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_read_snr.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_read_snr, %if.then30)) #8
          to label %cleanup [label %if.then30], !srcloc !333

if.then30:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_read_snr.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.147, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body24, %if.end21.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end12 ], [ -22, %do.end ], [ %ret.0, %if.then30 ], [ 0, %if.end21.cleanup_crit_edge ], [ %ret.0, %do.body24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %snrvalue) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxd2880_read_ucblocks(ptr noundef readonly %fe, ptr noundef %ucblocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fe, null
  %tobool1.not = icmp eq ptr %ucblocks, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.150) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %spi_mutex = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delivery_system, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %5, label %do.end12 [
    i32 3, label %if.then2
    i32 16, label %if.then6
  ]

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @cxd2880_tnrdmd_dvbt_mon_packet_error_number(ptr noundef %1, ptr noundef nonnull %ucblocks) #8
  br label %if.end17

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @cxd2880_tnrdmd_dvbt2_mon_packet_error_number(ptr noundef %1, ptr noundef nonnull %ucblocks) #8
  br label %if.end17

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.150) #11
  %7 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_unlock(ptr noundef %8) #8
  br label %cleanup

if.end17:                                         ; preds = %if.then6, %if.then2
  %ret.0 = phi i32 [ %call3, %if.then2 ], [ %call8, %if.then6 ]
  %9 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_unlock(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool19.not = icmp eq i32 %ret.0, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %do.body21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_read_ucblocks.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_read_ucblocks, %if.then27)) #8
          to label %cleanup [label %if.then27], !srcloc !333

if.then27:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_read_ucblocks.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.150, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body21, %if.end17.cleanup_crit_edge, %do.end12, %do.end
  %retval.0 = phi i32 [ -22, %do.end12 ], [ -22, %do.end ], [ %ret.0, %if.then27 ], [ 0, %if.end17.cleanup_crit_edge ], [ %ret.0, %do.body21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_integ_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_set_cfg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_sleep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_tune1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_tune2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_tune1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_tune2(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxd2880_get_frontend_t(ptr noundef %fe, ptr noundef writeonly %c) unnamed_addr #0 align 64 {
entry:
  %mode = alloca i32, align 4
  %guard = alloca i32, align 4
  %tps = alloca %struct.cxd2880_dvbt_tpsinfo, align 4
  %sense = alloca i32, align 4
  %snr = alloca i16, align 2
  %strength = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #8
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mode, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %guard) #8
  %1 = ptrtoint ptr %guard to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %guard, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tps) #8
  %2 = call ptr @memset(ptr %tps, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sense) #8
  %3 = ptrtoint ptr %sense to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %sense, align 4, !annotation !334
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %snr) #8
  %4 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %snr, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %strength) #8
  %5 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %strength, align 4
  %tobool.not = icmp eq ptr %fe, null
  %tobool1.not = icmp eq ptr %c, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.61) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %6 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %demodulator_priv, align 4
  %spi_mutex = getelementptr inbounds %struct.cxd2880_priv, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %9, i32 noundef 0) #8
  %call2 = call i32 @cxd2880_tnrdmd_dvbt_mon_mode_guard(ptr noundef %7, ptr noundef nonnull %mode, ptr noundef nonnull %guard) #8
  %10 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_unlock(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %15 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %transmission_mode, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %transmission_mode7 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %16 = ptrtoint ptr %transmission_mode7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %transmission_mode7, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %transmission_mode8 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %17 = ptrtoint ptr %transmission_mode8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %transmission_mode8, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t, %if.then15)) #8
          to label %sw.epilog [label %if.then15], !srcloc !333

if.then15:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61, i32 noundef %19) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then15, %sw.default, %sw.bb6, %sw.bb
  %20 = ptrtoint ptr %guard to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %guard, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %21, label %sw.default26 [
    i32 0, label %sw.bb19
    i32 1, label %sw.bb20
    i32 2, label %sw.bb22
    i32 3, label %sw.bb24
  ]

sw.bb19:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %23 = ptrtoint ptr %guard_interval to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %guard_interval, align 4
  br label %if.end63

sw.bb20:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %guard_interval21 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %24 = ptrtoint ptr %guard_interval21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %guard_interval21, align 4
  br label %if.end63

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %guard_interval23 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %25 = ptrtoint ptr %guard_interval23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %guard_interval23, align 4
  br label %if.end63

sw.bb24:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %guard_interval25 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %26 = ptrtoint ptr %guard_interval25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %guard_interval25, align 4
  br label %if.end63

sw.default26:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %guard_interval27 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %27 = ptrtoint ptr %guard_interval27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %guard_interval27, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t, %if.then40)) #8
          to label %if.end63 [label %if.then40], !srcloc !333

if.then40:                                        ; preds = %sw.default26
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %guard to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %guard, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.61, i32 noundef %29) #8
  br label %if.end63

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %transmission_mode45 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %30 = ptrtoint ptr %transmission_mode45 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %transmission_mode45, align 4
  %guard_interval46 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %31 = ptrtoint ptr %guard_interval46 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %guard_interval46, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t, %if.then59)) #8
          to label %if.end63 [label %if.then59], !srcloc !333

if.then59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.61, i32 noundef %call2) #8
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.else, %if.then40, %sw.default26, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb19
  %32 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_lock_nested(ptr noundef %33, i32 noundef 0) #8
  %call66 = call i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(ptr noundef %7, ptr noundef nonnull %tps) #8
  %34 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_unlock(ptr noundef %35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool68.not = icmp eq i32 %call66, 0
  br i1 %tobool68.not, label %if.then69, label %if.else181

if.then69:                                        ; preds = %if.end63
  %hierarchy = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %tps, i32 0, i32 1
  %36 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hierarchy, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %37, label %sw.default78 [
    i32 0, label %sw.bb70
    i32 1, label %sw.bb72
    i32 2, label %sw.bb74
    i32 3, label %sw.bb76
  ]

sw.bb70:                                          ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  %hierarchy71 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %39 = ptrtoint ptr %hierarchy71 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %hierarchy71, align 4
  br label %sw.epilog97

sw.bb72:                                          ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  %hierarchy73 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %40 = ptrtoint ptr %hierarchy73 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %hierarchy73, align 4
  br label %sw.epilog97

sw.bb74:                                          ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  %hierarchy75 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %41 = ptrtoint ptr %hierarchy75 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %hierarchy75, align 4
  br label %sw.epilog97

sw.bb76:                                          ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  %hierarchy77 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %42 = ptrtoint ptr %hierarchy77 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3, ptr %hierarchy77, align 4
  br label %sw.epilog97

sw.default78:                                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  %hierarchy79 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %43 = ptrtoint ptr %hierarchy79 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %hierarchy79, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t, %if.then92)) #8
          to label %sw.epilog97 [label %if.then92], !srcloc !333

if.then92:                                        ; preds = %sw.default78
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hierarchy, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.61, i32 noundef %45) #8
  br label %sw.epilog97

sw.epilog97:                                      ; preds = %if.then92, %sw.default78, %sw.bb76, %sw.bb74, %sw.bb72, %sw.bb70
  %rate_hp = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %tps, i32 0, i32 2
  %46 = ptrtoint ptr %rate_hp to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rate_hp, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %47, label %sw.default107 [
    i32 0, label %sw.bb98
    i32 1, label %sw.bb99
    i32 2, label %sw.bb101
    i32 3, label %sw.bb103
    i32 4, label %sw.bb105
  ]

sw.bb98:                                          ; preds = %sw.epilog97
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %49 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %code_rate_HP, align 4
  br label %sw.epilog126

sw.bb99:                                          ; preds = %sw.epilog97
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_HP100 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %50 = ptrtoint ptr %code_rate_HP100 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %code_rate_HP100, align 4
  br label %sw.epilog126

sw.bb101:                                         ; preds = %sw.epilog97
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_HP102 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %51 = ptrtoint ptr %code_rate_HP102 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3, ptr %code_rate_HP102, align 4
  br label %sw.epilog126

sw.bb103:                                         ; preds = %sw.epilog97
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_HP104 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %52 = ptrtoint ptr %code_rate_HP104 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 5, ptr %code_rate_HP104, align 4
  br label %sw.epilog126

sw.bb105:                                         ; preds = %sw.epilog97
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_HP106 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %53 = ptrtoint ptr %code_rate_HP106 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 7, ptr %code_rate_HP106, align 4
  br label %sw.epilog126

sw.default107:                                    ; preds = %sw.epilog97
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_HP108 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %54 = ptrtoint ptr %code_rate_HP108 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %code_rate_HP108, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t, %if.then121)) #8
          to label %sw.epilog126 [label %if.then121], !srcloc !333

if.then121:                                       ; preds = %sw.default107
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %rate_hp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rate_hp, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.61, i32 noundef %56) #8
  br label %sw.epilog126

sw.epilog126:                                     ; preds = %if.then121, %sw.default107, %sw.bb105, %sw.bb103, %sw.bb101, %sw.bb99, %sw.bb98
  %rate_lp = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %tps, i32 0, i32 3
  %57 = ptrtoint ptr %rate_lp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rate_lp, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %58, label %sw.default136 [
    i32 0, label %sw.bb127
    i32 1, label %sw.bb128
    i32 2, label %sw.bb130
    i32 3, label %sw.bb132
    i32 4, label %sw.bb134
  ]

sw.bb127:                                         ; preds = %sw.epilog126
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %60 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %code_rate_LP, align 4
  br label %sw.epilog155

sw.bb128:                                         ; preds = %sw.epilog126
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_LP129 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %61 = ptrtoint ptr %code_rate_LP129 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %code_rate_LP129, align 4
  br label %sw.epilog155

sw.bb130:                                         ; preds = %sw.epilog126
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_LP131 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %62 = ptrtoint ptr %code_rate_LP131 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 3, ptr %code_rate_LP131, align 4
  br label %sw.epilog155

sw.bb132:                                         ; preds = %sw.epilog126
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_LP133 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %63 = ptrtoint ptr %code_rate_LP133 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 5, ptr %code_rate_LP133, align 4
  br label %sw.epilog155

sw.bb134:                                         ; preds = %sw.epilog126
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_LP135 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %64 = ptrtoint ptr %code_rate_LP135 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 7, ptr %code_rate_LP135, align 4
  br label %sw.epilog155

sw.default136:                                    ; preds = %sw.epilog126
  call void @__sanitizer_cov_trace_pc() #10
  %code_rate_LP137 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %65 = ptrtoint ptr %code_rate_LP137 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %code_rate_LP137, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t, %if.then150)) #8
          to label %sw.epilog155 [label %if.then150], !srcloc !333

if.then150:                                       ; preds = %sw.default136
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %rate_lp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rate_lp, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.61, i32 noundef %67) #8
  br label %sw.epilog155

sw.epilog155:                                     ; preds = %if.then150, %sw.default136, %sw.bb134, %sw.bb132, %sw.bb130, %sw.bb128, %sw.bb127
  %68 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tps, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %69, label %sw.default161 [
    i32 0, label %sw.bb156
    i32 1, label %sw.bb157
    i32 2, label %sw.bb159
  ]

sw.bb156:                                         ; preds = %sw.epilog155
  call void @__sanitizer_cov_trace_pc() #10
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %71 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %modulation, align 4
  br label %if.end202

sw.bb157:                                         ; preds = %sw.epilog155
  call void @__sanitizer_cov_trace_pc() #10
  %modulation158 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %72 = ptrtoint ptr %modulation158 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %modulation158, align 4
  br label %if.end202

sw.bb159:                                         ; preds = %sw.epilog155
  call void @__sanitizer_cov_trace_pc() #10
  %modulation160 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %73 = ptrtoint ptr %modulation160 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 3, ptr %modulation160, align 4
  br label %if.end202

sw.default161:                                    ; preds = %sw.epilog155
  call void @__sanitizer_cov_trace_pc() #10
  %modulation162 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %74 = ptrtoint ptr %modulation162 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %modulation162, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t, %if.then175)) #8
          to label %if.end202 [label %if.then175], !srcloc !333

if.then175:                                       ; preds = %sw.default161
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %tps to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tps, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.61, i32 noundef %76) #8
  br label %if.end202

if.else181:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %hierarchy182 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %77 = ptrtoint ptr %hierarchy182 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %hierarchy182, align 4
  %code_rate_HP183 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %78 = ptrtoint ptr %code_rate_HP183 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %code_rate_HP183, align 4
  %code_rate_LP184 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %79 = ptrtoint ptr %code_rate_LP184 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %code_rate_LP184, align 4
  %modulation185 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %80 = ptrtoint ptr %modulation185 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %modulation185, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t, %if.then198)) #8
          to label %if.end202 [label %if.then198], !srcloc !333

if.then198:                                       ; preds = %if.else181
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.61, i32 noundef %call66) #8
  br label %if.end202

if.end202:                                        ; preds = %if.then198, %if.else181, %if.then175, %sw.default161, %sw.bb159, %sw.bb157, %sw.bb156
  %81 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_lock_nested(ptr noundef %82, i32 noundef 0) #8
  %call205 = call i32 @cxd2880_tnrdmd_dvbt_mon_spectrum_sense(ptr noundef %7, ptr noundef nonnull %sense) #8
  %83 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_unlock(ptr noundef %84) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool207.not = icmp eq i32 %call205, 0
  br i1 %tobool207.not, label %if.then208, label %if.else231

if.then208:                                       ; preds = %if.end202
  %85 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sense, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %86, label %sw.default212 [
    i32 0, label %sw.bb209
    i32 1, label %sw.bb210
  ]

sw.bb209:                                         ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #10
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %88 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %inversion, align 4
  br label %if.end249

sw.bb210:                                         ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #10
  %inversion211 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %89 = ptrtoint ptr %inversion211 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %inversion211, align 4
  br label %if.end249

sw.default212:                                    ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #10
  %inversion213 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %90 = ptrtoint ptr %inversion213 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %inversion213, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t, %if.then226)) #8
          to label %if.end249 [label %if.then226], !srcloc !333

if.then226:                                       ; preds = %sw.default212
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sense, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.61, i32 noundef %92) #8
  br label %if.end249

if.else231:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  %inversion232 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %93 = ptrtoint ptr %inversion232 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %inversion232, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t, %if.then245)) #8
          to label %if.end249 [label %if.then245], !srcloc !333

if.then245:                                       ; preds = %if.else231
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.61, i32 noundef %call205) #8
  br label %if.end249

if.end249:                                        ; preds = %if.then245, %if.else231, %if.then226, %sw.default212, %sw.bb210, %sw.bb209
  %94 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_lock_nested(ptr noundef %95, i32 noundef 0) #8
  %call252 = call i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef %7, ptr noundef nonnull %strength) #8
  %96 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_unlock(ptr noundef %97) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252)
  %tobool254.not = icmp eq i32 %call252, 0
  %strength256 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 42
  %98 = ptrtoint ptr %strength256 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %strength256, align 4
  %stat = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 42, i32 1
  br i1 %tobool254.not, label %if.then255, label %if.else261

if.then255:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %stat, align 1
  %100 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %strength, align 4
  %conv = sext i32 %101 to i64
  %102 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 42, i32 1, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_storeN_noabort(i32 %103, i32 8)
  store i64 %conv, ptr %102, align 1
  br label %if.end284

if.else261:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %stat, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t, %if.then280)) #8
          to label %if.end284 [label %if.then280], !srcloc !333

if.then280:                                       ; preds = %if.else261
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.61, i32 noundef %call252) #8
  br label %if.end284

if.end284:                                        ; preds = %if.then280, %if.else261, %if.then255
  %call285 = call i32 @cxd2880_read_snr(ptr noundef nonnull %fe, ptr noundef nonnull %snr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call285)
  %tobool286.not = icmp eq i32 %call285, 0
  %cnr = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 43
  %105 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %cnr, align 1
  %stat290 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 43, i32 1
  br i1 %tobool286.not, label %if.then287, label %if.else297

if.then287:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %stat290 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %stat290, align 1
  %107 = ptrtoint ptr %snr to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %snr, align 2
  %conv293 = zext i16 %108 to i64
  %109 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 43, i32 1, i32 0, i32 1
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_storeN_noabort(i32 %110, i32 8)
  store i64 %conv293, ptr %109, align 1
  br label %cleanup

if.else297:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %stat290 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %stat290, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t, %if.then316)) #8
          to label %cleanup [label %if.then316], !srcloc !333

if.then316:                                       ; preds = %if.else297
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.61, i32 noundef %call285) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then316, %if.else297, %if.then287, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then316 ], [ 0, %if.then287 ], [ 0, %if.else297 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %strength) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %snr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sense) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tps) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %guard) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxd2880_get_frontend_t2(ptr noundef %fe, ptr noundef writeonly %c) unnamed_addr #0 align 64 {
entry:
  %l1pre = alloca %struct.cxd2880_dvbt2_l1pre, align 4
  %coderate = alloca i32, align 4
  %qam = alloca i32, align 4
  %sense = alloca i32, align 4
  %snr = alloca i16, align 2
  %strength = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %l1pre) #8
  %0 = call ptr @memset(ptr %l1pre, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %coderate) #8
  %1 = ptrtoint ptr %coderate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %coderate, align 4, !annotation !334
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qam) #8
  %2 = ptrtoint ptr %qam to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %qam, align 4, !annotation !334
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sense) #8
  %3 = ptrtoint ptr %sense to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %sense, align 4, !annotation !334
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %snr) #8
  %4 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %snr, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %strength) #8
  %5 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %strength, align 4
  %tobool.not = icmp eq ptr %fe, null
  %tobool1.not = icmp eq ptr %c, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.86) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %6 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %demodulator_priv, align 4
  %spi_mutex = getelementptr inbounds %struct.cxd2880_priv, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %9, i32 noundef 0) #8
  %call2 = call i32 @cxd2880_tnrdmd_dvbt2_mon_l1_pre(ptr noundef %7, ptr noundef nonnull %l1pre) #8
  %10 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_unlock(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %fft_mode = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1pre, i32 0, i32 5
  %12 = ptrtoint ptr %fft_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fft_mode, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %13, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb6
    i32 2, label %sw.bb8
    i32 3, label %sw.bb10
    i32 4, label %sw.bb12
    i32 5, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %15 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %transmission_mode, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %transmission_mode7 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %16 = ptrtoint ptr %transmission_mode7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %transmission_mode7, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %transmission_mode9 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %17 = ptrtoint ptr %transmission_mode9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %transmission_mode9, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %transmission_mode11 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %18 = ptrtoint ptr %transmission_mode11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %transmission_mode11, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %transmission_mode13 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %19 = ptrtoint ptr %transmission_mode13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5, ptr %transmission_mode13, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %transmission_mode15 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %20 = ptrtoint ptr %transmission_mode15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 6, ptr %transmission_mode15, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %transmission_mode16 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %21 = ptrtoint ptr %transmission_mode16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %transmission_mode16, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t2, %if.then23)) #8
          to label %sw.epilog [label %if.then23], !srcloc !333

if.then23:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %fft_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fft_mode, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.86, i32 noundef %23) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then23, %sw.default, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb
  %gi = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %l1pre, i32 0, i32 7
  %24 = ptrtoint ptr %gi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gi, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %25, label %sw.default41 [
    i32 0, label %sw.bb28
    i32 1, label %sw.bb29
    i32 2, label %sw.bb31
    i32 3, label %sw.bb33
    i32 4, label %sw.bb35
    i32 5, label %sw.bb37
    i32 6, label %sw.bb39
  ]

sw.bb28:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %27 = ptrtoint ptr %guard_interval to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %guard_interval, align 4
  br label %if.end79

sw.bb29:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %guard_interval30 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %28 = ptrtoint ptr %guard_interval30 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %guard_interval30, align 4
  br label %if.end79

sw.bb31:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %guard_interval32 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %29 = ptrtoint ptr %guard_interval32 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %guard_interval32, align 4
  br label %if.end79

sw.bb33:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %guard_interval34 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %30 = ptrtoint ptr %guard_interval34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %guard_interval34, align 4
  br label %if.end79

sw.bb35:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %guard_interval36 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %31 = ptrtoint ptr %guard_interval36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %guard_interval36, align 4
  br label %if.end79

sw.bb37:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %guard_interval38 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %32 = ptrtoint ptr %guard_interval38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 6, ptr %guard_interval38, align 4
  br label %if.end79

sw.bb39:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %guard_interval40 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %33 = ptrtoint ptr %guard_interval40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 7, ptr %guard_interval40, align 4
  br label %if.end79

sw.default41:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %guard_interval42 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %34 = ptrtoint ptr %guard_interval42 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %guard_interval42, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t2, %if.then55)) #8
          to label %if.end79 [label %if.then55], !srcloc !333

if.then55:                                        ; preds = %sw.default41
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %gi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gi, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.86, i32 noundef %36) #8
  br label %if.end79

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %transmission_mode61 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %37 = ptrtoint ptr %transmission_mode61 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %transmission_mode61, align 4
  %guard_interval62 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %38 = ptrtoint ptr %guard_interval62 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %guard_interval62, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t2, %if.then75)) #8
          to label %if.end79 [label %if.then75], !srcloc !333

if.then75:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug320, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.86, i32 noundef %call2) #8
  br label %if.end79

if.end79:                                         ; preds = %if.then75, %if.else, %if.then55, %sw.default41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %sw.bb28
  %39 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_lock_nested(ptr noundef %40, i32 noundef 0) #8
  %call82 = call i32 @cxd2880_tnrdmd_dvbt2_mon_code_rate(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %coderate) #8
  %41 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_unlock(ptr noundef %42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool84.not = icmp eq i32 %call82, 0
  br i1 %tobool84.not, label %if.then85, label %if.else116

if.then85:                                        ; preds = %if.end79
  %43 = ptrtoint ptr %coderate to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %coderate, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %44, label %sw.default97 [
    i32 0, label %sw.bb86
    i32 1, label %sw.bb87
    i32 2, label %sw.bb89
    i32 3, label %sw.bb91
    i32 4, label %sw.bb93
    i32 5, label %sw.bb95
  ]

sw.bb86:                                          ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %46 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %fec_inner, align 4
  br label %if.end134

sw.bb87:                                          ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner88 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %47 = ptrtoint ptr %fec_inner88 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 10, ptr %fec_inner88, align 4
  br label %if.end134

sw.bb89:                                          ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner90 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %48 = ptrtoint ptr %fec_inner90 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %fec_inner90, align 4
  br label %if.end134

sw.bb91:                                          ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner92 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %49 = ptrtoint ptr %fec_inner92 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %fec_inner92, align 4
  br label %if.end134

sw.bb93:                                          ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner94 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %50 = ptrtoint ptr %fec_inner94 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %fec_inner94, align 4
  br label %if.end134

sw.bb95:                                          ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner96 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %51 = ptrtoint ptr %fec_inner96 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 5, ptr %fec_inner96, align 4
  br label %if.end134

sw.default97:                                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner98 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %52 = ptrtoint ptr %fec_inner98 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %fec_inner98, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t2, %if.then111)) #8
          to label %if.end134 [label %if.then111], !srcloc !333

if.then111:                                       ; preds = %sw.default97
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %coderate to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %coderate, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.86, i32 noundef %54) #8
  br label %if.end134

if.else116:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %fec_inner117 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %55 = ptrtoint ptr %fec_inner117 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %fec_inner117, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t2, %if.then130)) #8
          to label %if.end134 [label %if.then130], !srcloc !333

if.then130:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.86, i32 noundef %call82) #8
  br label %if.end134

if.end134:                                        ; preds = %if.then130, %if.else116, %if.then111, %sw.default97, %sw.bb95, %sw.bb93, %sw.bb91, %sw.bb89, %sw.bb87, %sw.bb86
  %56 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_lock_nested(ptr noundef %57, i32 noundef 0) #8
  %call137 = call i32 @cxd2880_tnrdmd_dvbt2_mon_qam(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %qam) #8
  %58 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_unlock(ptr noundef %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool139.not = icmp eq i32 %call137, 0
  br i1 %tobool139.not, label %if.then140, label %if.else167

if.then140:                                       ; preds = %if.end134
  %60 = ptrtoint ptr %qam to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %qam, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %61, label %sw.default148 [
    i32 0, label %sw.bb141
    i32 1, label %sw.bb142
    i32 2, label %sw.bb144
    i32 3, label %sw.bb146
  ]

sw.bb141:                                         ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #10
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %63 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %modulation, align 4
  br label %if.end185

sw.bb142:                                         ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #10
  %modulation143 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %64 = ptrtoint ptr %modulation143 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %modulation143, align 4
  br label %if.end185

sw.bb144:                                         ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #10
  %modulation145 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %65 = ptrtoint ptr %modulation145 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 3, ptr %modulation145, align 4
  br label %if.end185

sw.bb146:                                         ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #10
  %modulation147 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %66 = ptrtoint ptr %modulation147 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 5, ptr %modulation147, align 4
  br label %if.end185

sw.default148:                                    ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #10
  %modulation149 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %67 = ptrtoint ptr %modulation149 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %modulation149, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t2, %if.then162)) #8
          to label %if.end185 [label %if.then162], !srcloc !333

if.then162:                                       ; preds = %sw.default148
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %qam to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %qam, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.86, i32 noundef %69) #8
  br label %if.end185

if.else167:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  %modulation168 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %70 = ptrtoint ptr %modulation168 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %modulation168, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t2, %if.then181)) #8
          to label %if.end185 [label %if.then181], !srcloc !333

if.then181:                                       ; preds = %if.else167
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.86, i32 noundef %call137) #8
  br label %if.end185

if.end185:                                        ; preds = %if.then181, %if.else167, %if.then162, %sw.default148, %sw.bb146, %sw.bb144, %sw.bb142, %sw.bb141
  %71 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_lock_nested(ptr noundef %72, i32 noundef 0) #8
  %call188 = call i32 @cxd2880_tnrdmd_dvbt2_mon_spectrum_sense(ptr noundef %7, ptr noundef nonnull %sense) #8
  %73 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_unlock(ptr noundef %74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool190.not = icmp eq i32 %call188, 0
  br i1 %tobool190.not, label %if.then191, label %if.else214

if.then191:                                       ; preds = %if.end185
  %75 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sense, align 4
  %77 = zext i32 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %76, label %sw.default195 [
    i32 0, label %sw.bb192
    i32 1, label %sw.bb193
  ]

sw.bb192:                                         ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #10
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %78 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %inversion, align 4
  br label %if.end232

sw.bb193:                                         ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #10
  %inversion194 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %79 = ptrtoint ptr %inversion194 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %inversion194, align 4
  br label %if.end232

sw.default195:                                    ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #10
  %inversion196 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %80 = ptrtoint ptr %inversion196 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %inversion196, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t2, %if.then209)) #8
          to label %if.end232 [label %if.then209], !srcloc !333

if.then209:                                       ; preds = %sw.default195
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sense, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.86, i32 noundef %82) #8
  br label %if.end232

if.else214:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  %inversion215 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  %83 = ptrtoint ptr %inversion215 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %inversion215, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t2, %if.then228)) #8
          to label %if.end232 [label %if.then228], !srcloc !333

if.then228:                                       ; preds = %if.else214
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug326, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.86, i32 noundef %call188) #8
  br label %if.end232

if.end232:                                        ; preds = %if.then228, %if.else214, %if.then209, %sw.default195, %sw.bb193, %sw.bb192
  %84 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_lock_nested(ptr noundef %85, i32 noundef 0) #8
  %call235 = call i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef %7, ptr noundef nonnull %strength) #8
  %86 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %spi_mutex, align 4
  call void @mutex_unlock(ptr noundef %87) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool237.not = icmp eq i32 %call235, 0
  %strength239 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 42
  %88 = ptrtoint ptr %strength239 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %strength239, align 4
  %stat = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 42, i32 1
  br i1 %tobool237.not, label %if.then238, label %if.else244

if.then238:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %stat, align 1
  %90 = ptrtoint ptr %strength to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %strength, align 4
  %conv = sext i32 %91 to i64
  %92 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 42, i32 1, i32 0, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 8)
  store i64 %conv, ptr %92, align 1
  br label %if.end267

if.else244:                                       ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %stat, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t2, %if.then263)) #8
          to label %if.end267 [label %if.then263], !srcloc !333

if.then263:                                       ; preds = %if.else244
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug327, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.86, i32 noundef %call235) #8
  br label %if.end267

if.end267:                                        ; preds = %if.then263, %if.else244, %if.then238
  %call268 = call i32 @cxd2880_read_snr(ptr noundef nonnull %fe, ptr noundef nonnull %snr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268)
  %tobool269.not = icmp eq i32 %call268, 0
  %cnr = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 43
  %95 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %cnr, align 1
  %stat273 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 43, i32 1
  br i1 %tobool269.not, label %if.then270, label %if.else280

if.then270:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %stat273 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %stat273, align 1
  %97 = ptrtoint ptr %snr to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %snr, align 2
  %conv276 = zext i16 %98 to i64
  %99 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 43, i32 1, i32 0, i32 1
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 8)
  store i64 %conv276, ptr %99, align 1
  br label %cleanup

if.else280:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %stat273 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %stat273, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_frontend_t2, %if.then299)) #8
          to label %cleanup [label %if.then299], !srcloc !333

if.then299:                                       ; preds = %if.else280
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug328, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %call268) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then299, %if.else280, %if.then270, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then299 ], [ 0, %if.then270 ], [ 0, %if.else280 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %strength) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %snr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sense) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qam) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %coderate) #8
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %l1pre) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_mode_guard(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_spectrum_sense(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_l1_pre(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_code_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_qam(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_spectrum_sense(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxd2880_get_stats(ptr noundef %fe, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  %rdata.i151 = alloca [3 x i8], align 1
  %rdata.i125 = alloca [3 x i8], align 1
  %data.i81 = alloca [3 x i8], align 1
  %rdata.i60 = alloca [3 x i8], align 1
  %data.i = alloca [5 x i8], align 1
  %rdata.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fe, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.135) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = and i32 %status, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %2)
  %.not = icmp eq i32 %2, 18
  br i1 %.not, label %if.end34, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pre_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44
  %3 = ptrtoint ptr %pre_bit_error to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %pre_bit_error, align 2
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1
  %4 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %stat, align 1
  %pre_bit_count6 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45
  %5 = ptrtoint ptr %pre_bit_count6 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %pre_bit_count6, align 1
  %stat9 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1
  %6 = ptrtoint ptr %stat9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %stat9, align 1
  %post_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %7 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %post_bit_error, align 4
  %stat14 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %8 = ptrtoint ptr %stat14 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %stat14, align 1
  %post_bit_count17 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %9 = ptrtoint ptr %post_bit_count17 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %post_bit_count17, align 1
  %stat20 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %10 = ptrtoint ptr %stat20 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %stat20, align 1
  %block_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48
  %11 = ptrtoint ptr %block_error to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %block_error, align 2
  %stat25 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %12 = ptrtoint ptr %stat25 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %stat25, align 1
  %block_count28 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49
  %13 = ptrtoint ptr %block_count28 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %block_count28, align 1
  %stat31 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %14 = ptrtoint ptr %stat31 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %stat31, align 1
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %pre_ber_update = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %pre_ber_update to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pre_ber_update, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then35, label %if.end34.if.end99_crit_edge

if.end34.if.end99_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

if.then35:                                        ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %pre_ber_interval = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %pre_ber_interval to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pre_ber_interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %20) #8
  %add = add i32 %call2.i, %18
  %21 = ptrtoint ptr %pre_ber_update to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %pre_ber_update, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %22 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %delivery_system, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %23, label %if.then35.cleanup_crit_edge [
    i32 3, label %if.then39
    i32 16, label %if.then44
  ]

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39:                                        ; preds = %if.then35
  %spi_mutex = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %spi_mutex to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %spi_mutex, align 4
  tail call void @mutex_lock_nested(ptr noundef %26, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rdata.i) #8
  %27 = ptrtoint ptr %rdata.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %rdata.i, align 1, !annotation !334
  %28 = getelementptr inbounds [2 x i8], ptr %rdata.i, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %28, align 1, !annotation !334
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then39.cxd2880_pre_bit_err_t.exit_crit_edge, label %if.end.i27

if.then39.cxd2880_pre_bit_err_t.exit_crit_edge:   ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_pre_bit_err_t.exit

if.end.i27:                                       ; preds = %if.then39
  %diver_mode.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %diver_mode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %diver_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp.i26 = icmp eq i32 %31, 2
  br i1 %cmp.i26, label %if.end.i27.cxd2880_pre_bit_err_t.exit_crit_edge, label %if.end5.i

if.end.i27.cxd2880_pre_bit_err_t.exit_crit_edge:  ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_pre_bit_err_t.exit

if.end5.i:                                        ; preds = %if.end.i27
  %state.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 22
  %32 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp6.not.i = icmp eq i32 %33, 2
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end5.i.cxd2880_pre_bit_err_t.exit_crit_edge

if.end5.i.cxd2880_pre_bit_err_t.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_pre_bit_err_t.exit

if.end8.i:                                        ; preds = %if.end5.i
  %sys.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 25
  %34 = ptrtoint ptr %sys.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sys.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp9.not.i = icmp eq i32 %35, 1
  br i1 %cmp9.not.i, label %if.end11.i, label %if.end8.i.cxd2880_pre_bit_err_t.exit_crit_edge

if.end8.i.cxd2880_pre_bit_err_t.exit_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_pre_bit_err_t.exit

if.end11.i:                                       ; preds = %if.end8.i
  %call.i = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end11.i.cxd2880_pre_bit_err_t.exit_crit_edge

if.end11.i.cxd2880_pre_bit_err_t.exit_crit_edge:  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_pre_bit_err_t.exit

if.end14.i:                                       ; preds = %if.end11.i
  %io.i = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io.i, align 4
  %write_reg.i = getelementptr inbounds %struct.cxd2880_io, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write_reg.i, align 4
  %call16.i = tail call i32 %39(ptr noundef %37, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  %40 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io.i, align 4
  br i1 %tobool17.not.i, label %if.end23.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %write_reg20.i = getelementptr inbounds %struct.cxd2880_io, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %write_reg20.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write_reg20.i, align 4
  %call22.i = tail call i32 %43(ptr noundef %41, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %cxd2880_pre_bit_err_t.exit

if.end23.i:                                       ; preds = %if.end14.i
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %call26.i = call i32 %45(ptr noundef %41, i32 noundef 1, i8 noundef zeroext 57, ptr noundef nonnull %rdata.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end33.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io.i, align 4
  %write_reg30.i = getelementptr inbounds %struct.cxd2880_io, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %write_reg30.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write_reg30.i, align 4
  %call32.i = call i32 %49(ptr noundef %47, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %cxd2880_pre_bit_err_t.exit

if.end33.i:                                       ; preds = %if.end23.i
  %50 = ptrtoint ptr %rdata.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rdata.i, align 1
  %52 = and i8 %51, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp34.i = icmp eq i8 %52, 0
  %53 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %io.i, align 4
  br i1 %cmp34.i, label %if.then36.i, label %if.end41.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %write_reg38.i = getelementptr inbounds %struct.cxd2880_io, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %write_reg38.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_reg38.i, align 4
  %call40.i = call i32 %56(ptr noundef %54, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %cxd2880_pre_bit_err_t.exit

if.end41.i:                                       ; preds = %if.end33.i
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  %call46.i = call i32 %58(ptr noundef %54, i32 noundef 1, i8 noundef zeroext 34, ptr noundef nonnull %rdata.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end53.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %io.i, align 4
  %write_reg50.i = getelementptr inbounds %struct.cxd2880_io, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %write_reg50.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write_reg50.i, align 4
  %call52.i = call i32 %62(ptr noundef %60, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %cxd2880_pre_bit_err_t.exit

if.end53.i:                                       ; preds = %if.end41.i
  %63 = ptrtoint ptr %rdata.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %rdata.i, align 1
  %conv55.i = zext i8 %64 to i32
  %shl.i = shl nuw nsw i32 %conv55.i, 8
  %65 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %28, align 1
  %conv57.i = zext i8 %66 to i32
  %or.i = or i32 %shl.i, %conv57.i
  %67 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %call62.i = call i32 %70(ptr noundef %68, i32 noundef 1, i8 noundef zeroext 111, ptr noundef nonnull %rdata.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  %71 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io.i, align 4
  %write_reg71.i = getelementptr inbounds %struct.cxd2880_io, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %write_reg71.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write_reg71.i, align 4
  %call73.i = call i32 %74(ptr noundef %72, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br i1 %tobool63.not.i, label %if.end69.i, label %if.end53.i.cxd2880_pre_bit_err_t.exit_crit_edge

if.end53.i.cxd2880_pre_bit_err_t.exit_crit_edge:  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_pre_bit_err_t.exit

if.end69.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %rdata.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %rdata.i, align 1
  %77 = and i8 %76, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp77.i = icmp eq i8 %77, 0
  %and76.i = zext i8 %77 to i32
  %shl82.i = shl nuw nsw i32 4096, %and76.i
  %cond.i = select i1 %cmp77.i, i32 256, i32 %shl82.i
  br label %cxd2880_pre_bit_err_t.exit

cxd2880_pre_bit_err_t.exit:                       ; preds = %if.end69.i, %if.end53.i.cxd2880_pre_bit_err_t.exit_crit_edge, %if.then48.i, %if.then36.i, %if.then28.i, %if.then18.i, %if.end11.i.cxd2880_pre_bit_err_t.exit_crit_edge, %if.end8.i.cxd2880_pre_bit_err_t.exit_crit_edge, %if.end5.i.cxd2880_pre_bit_err_t.exit_crit_edge, %if.end.i27.cxd2880_pre_bit_err_t.exit_crit_edge, %if.then39.cxd2880_pre_bit_err_t.exit_crit_edge
  %pre_bit_err.0 = phi i32 [ 0, %if.then39.cxd2880_pre_bit_err_t.exit_crit_edge ], [ 0, %if.end.i27.cxd2880_pre_bit_err_t.exit_crit_edge ], [ 0, %if.then36.i ], [ %or.i, %if.end69.i ], [ %or.i, %if.end53.i.cxd2880_pre_bit_err_t.exit_crit_edge ], [ 0, %if.then48.i ], [ 0, %if.then28.i ], [ 0, %if.then18.i ], [ 0, %if.end11.i.cxd2880_pre_bit_err_t.exit_crit_edge ], [ 0, %if.end8.i.cxd2880_pre_bit_err_t.exit_crit_edge ], [ 0, %if.end5.i.cxd2880_pre_bit_err_t.exit_crit_edge ]
  %pre_bit_count.0 = phi i32 [ 0, %if.then39.cxd2880_pre_bit_err_t.exit_crit_edge ], [ 0, %if.end.i27.cxd2880_pre_bit_err_t.exit_crit_edge ], [ 0, %if.then36.i ], [ %cond.i, %if.end69.i ], [ 0, %if.end53.i.cxd2880_pre_bit_err_t.exit_crit_edge ], [ 0, %if.then48.i ], [ 0, %if.then28.i ], [ 0, %if.then18.i ], [ 0, %if.end11.i.cxd2880_pre_bit_err_t.exit_crit_edge ], [ 0, %if.end8.i.cxd2880_pre_bit_err_t.exit_crit_edge ], [ 0, %if.end5.i.cxd2880_pre_bit_err_t.exit_crit_edge ]
  %retval.0.i28 = phi i32 [ -22, %if.then39.cxd2880_pre_bit_err_t.exit_crit_edge ], [ -22, %if.end.i27.cxd2880_pre_bit_err_t.exit_crit_edge ], [ -11, %if.then36.i ], [ 0, %if.end69.i ], [ %call62.i, %if.end53.i.cxd2880_pre_bit_err_t.exit_crit_edge ], [ %call46.i, %if.then48.i ], [ %call26.i, %if.then28.i ], [ %call16.i, %if.then18.i ], [ %call.i, %if.end11.i.cxd2880_pre_bit_err_t.exit_crit_edge ], [ -22, %if.end8.i.cxd2880_pre_bit_err_t.exit_crit_edge ], [ -22, %if.end5.i.cxd2880_pre_bit_err_t.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rdata.i) #8
  br label %if.end51

if.then44:                                        ; preds = %if.then35
  %spi_mutex45 = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 7
  %78 = ptrtoint ptr %spi_mutex45 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %spi_mutex45, align 4
  tail call void @mutex_lock_nested(ptr noundef %79, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %data.i) #8
  %80 = getelementptr inbounds [5 x i8], ptr %data.i, i32 0, i32 1
  %81 = getelementptr inbounds [5 x i8], ptr %data.i, i32 0, i32 2
  %82 = getelementptr inbounds [5 x i8], ptr %data.i, i32 0, i32 3
  %83 = getelementptr inbounds [5 x i8], ptr %data.i, i32 0, i32 4
  %tobool.not.i29 = icmp eq ptr %1, null
  %84 = call ptr @memset(ptr %data.i, i32 255, i32 5)
  br i1 %tobool.not.i29, label %if.then44.cxd2880_pre_bit_err_t2.exit_crit_edge, label %if.end.i32

if.then44.cxd2880_pre_bit_err_t2.exit_crit_edge:  ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_pre_bit_err_t2.exit

if.end.i32:                                       ; preds = %if.then44
  %diver_mode.i30 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 3
  %85 = ptrtoint ptr %diver_mode.i30 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %diver_mode.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %86)
  %cmp.i31 = icmp eq i32 %86, 2
  br i1 %cmp.i31, label %if.end.i32.cxd2880_pre_bit_err_t2.exit_crit_edge, label %if.end5.i35

if.end.i32.cxd2880_pre_bit_err_t2.exit_crit_edge: ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_pre_bit_err_t2.exit

if.end5.i35:                                      ; preds = %if.end.i32
  %state.i33 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 22
  %87 = ptrtoint ptr %state.i33 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %state.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp6.not.i34 = icmp eq i32 %88, 2
  br i1 %cmp6.not.i34, label %if.end8.i38, label %if.end5.i35.cxd2880_pre_bit_err_t2.exit_crit_edge

if.end5.i35.cxd2880_pre_bit_err_t2.exit_crit_edge: ; preds = %if.end5.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_pre_bit_err_t2.exit

if.end8.i38:                                      ; preds = %if.end5.i35
  %sys.i36 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 25
  %89 = ptrtoint ptr %sys.i36 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sys.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp9.not.i37 = icmp eq i32 %90, 2
  br i1 %cmp9.not.i37, label %if.end11.i41, label %if.end8.i38.cxd2880_pre_bit_err_t2.exit_crit_edge

if.end8.i38.cxd2880_pre_bit_err_t2.exit_crit_edge: ; preds = %if.end8.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_pre_bit_err_t2.exit

if.end11.i41:                                     ; preds = %if.end8.i38
  %call.i39 = tail call i32 @slvt_freeze_reg(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool12.not.i40 = icmp eq i32 %call.i39, 0
  br i1 %tobool12.not.i40, label %if.end14.i46, label %if.end11.i41.cxd2880_pre_bit_err_t2.exit_crit_edge

if.end11.i41.cxd2880_pre_bit_err_t2.exit_crit_edge: ; preds = %if.end11.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_pre_bit_err_t2.exit

if.end14.i46:                                     ; preds = %if.end11.i41
  %io.i42 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 1
  %91 = ptrtoint ptr %io.i42 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %io.i42, align 4
  %write_reg.i43 = getelementptr inbounds %struct.cxd2880_io, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %write_reg.i43 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write_reg.i43, align 4
  %call16.i44 = tail call i32 %94(ptr noundef %92, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i44)
  %tobool17.not.i45 = icmp eq i32 %call16.i44, 0
  %95 = ptrtoint ptr %io.i42 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %io.i42, align 4
  br i1 %tobool17.not.i45, label %if.end23.i52, label %if.then18.i49

if.then18.i49:                                    ; preds = %if.end14.i46
  call void @__sanitizer_cov_trace_pc() #10
  %write_reg20.i47 = getelementptr inbounds %struct.cxd2880_io, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %write_reg20.i47 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %write_reg20.i47, align 4
  %call22.i48 = tail call i32 %98(ptr noundef %96, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %cxd2880_pre_bit_err_t2.exit

if.end23.i52:                                     ; preds = %if.end14.i46
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %96, align 4
  %call26.i50 = call i32 %100(ptr noundef %96, i32 noundef 1, i8 noundef zeroext 60, ptr noundef nonnull %data.i, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i50)
  %tobool27.not.i51 = icmp eq i32 %call26.i50, 0
  br i1 %tobool27.not.i51, label %if.end33.i56, label %if.then28.i55

if.then28.i55:                                    ; preds = %if.end23.i52
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %io.i42 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %io.i42, align 4
  %write_reg30.i53 = getelementptr inbounds %struct.cxd2880_io, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %write_reg30.i53 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %write_reg30.i53, align 4
  %call32.i54 = call i32 %104(ptr noundef %102, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %cxd2880_pre_bit_err_t2.exit

if.end33.i56:                                     ; preds = %if.end23.i52
  %105 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %data.i, align 1
  %107 = and i8 %106, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool34.not.i = icmp eq i8 %107, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %if.end40.i

if.then35.i:                                      ; preds = %if.end33.i56
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %io.i42 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %io.i42, align 4
  %write_reg37.i = getelementptr inbounds %struct.cxd2880_io, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %write_reg37.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %write_reg37.i, align 4
  %call39.i = call i32 %111(ptr noundef %109, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %cxd2880_pre_bit_err_t2.exit

if.end40.i:                                       ; preds = %if.end33.i56
  %112 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %80, align 1
  %114 = and i8 %113, 15
  %and43.i = zext i8 %114 to i32
  %shl.i57 = shl nuw nsw i32 %and43.i, 24
  %115 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %81, align 1
  %conv45.i = zext i8 %116 to i32
  %shl46.i = shl nuw nsw i32 %conv45.i, 16
  %or.i58 = or i32 %shl.i57, %shl46.i
  %117 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %82, align 1
  %conv48.i = zext i8 %118 to i32
  %shl49.i = shl nuw nsw i32 %conv48.i, 8
  %or50.i = or i32 %or.i58, %shl49.i
  %119 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %83, align 1
  %conv52.i = zext i8 %120 to i32
  %or53.i = or i32 %or50.i, %conv52.i
  %121 = ptrtoint ptr %io.i42 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %io.i42, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %call58.i = call i32 %124(ptr noundef %122, i32 noundef 1, i8 noundef zeroext -96, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end65.i, label %if.then60.i

if.then60.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %io.i42 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %io.i42, align 4
  %write_reg62.i = getelementptr inbounds %struct.cxd2880_io, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %write_reg62.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %write_reg62.i, align 4
  %call64.i = call i32 %128(ptr noundef %126, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %cxd2880_pre_bit_err_t2.exit

if.end65.i:                                       ; preds = %if.end40.i
  %129 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %data.i, align 1
  %131 = and i8 %130, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp69.i = icmp eq i8 %131, 0
  %..i = select i1 %cmp69.i, i32 16200, i32 64800
  %132 = ptrtoint ptr %io.i42 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %io.i42, align 4
  %write_reg74.i = getelementptr inbounds %struct.cxd2880_io, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %write_reg74.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %write_reg74.i, align 4
  %call76.i = call i32 %135(ptr noundef %133, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %136 = ptrtoint ptr %io.i42 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %io.i42, align 4
  %write_reg78.i = getelementptr inbounds %struct.cxd2880_io, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %write_reg78.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write_reg78.i, align 4
  %call80.i = call i32 %139(ptr noundef %137, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.end83.i, label %if.end65.i.cxd2880_pre_bit_err_t2.exit_crit_edge

if.end65.i.cxd2880_pre_bit_err_t2.exit_crit_edge: ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_pre_bit_err_t2.exit

if.end83.i:                                       ; preds = %if.end65.i
  %140 = ptrtoint ptr %io.i42 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %io.i42, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %call88.i = call i32 %143(ptr noundef %141, i32 noundef 1, i8 noundef zeroext 111, ptr noundef nonnull %data.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool89.not.i = icmp eq i32 %call88.i, 0
  br i1 %tobool89.not.i, label %if.end91.i, label %if.end83.i.cxd2880_pre_bit_err_t2.exit_crit_edge

if.end83.i.cxd2880_pre_bit_err_t2.exit_crit_edge: ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_pre_bit_err_t2.exit

if.end91.i:                                       ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %data.i, align 1
  %146 = and i8 %145, 15
  %and94.i = zext i8 %146 to i32
  %mul.i = shl nuw nsw i32 %..i, %and94.i
  br label %cxd2880_pre_bit_err_t2.exit

cxd2880_pre_bit_err_t2.exit:                      ; preds = %if.end91.i, %if.end83.i.cxd2880_pre_bit_err_t2.exit_crit_edge, %if.end65.i.cxd2880_pre_bit_err_t2.exit_crit_edge, %if.then60.i, %if.then35.i, %if.then28.i55, %if.then18.i49, %if.end11.i41.cxd2880_pre_bit_err_t2.exit_crit_edge, %if.end8.i38.cxd2880_pre_bit_err_t2.exit_crit_edge, %if.end5.i35.cxd2880_pre_bit_err_t2.exit_crit_edge, %if.end.i32.cxd2880_pre_bit_err_t2.exit_crit_edge, %if.then44.cxd2880_pre_bit_err_t2.exit_crit_edge
  %pre_bit_err.1 = phi i32 [ 0, %if.then44.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ 0, %if.end.i32.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ 0, %if.then35.i ], [ %or53.i, %if.end91.i ], [ %or53.i, %if.end83.i.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ %or53.i, %if.end65.i.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ %or53.i, %if.then60.i ], [ 0, %if.then28.i55 ], [ 0, %if.then18.i49 ], [ 0, %if.end11.i41.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ 0, %if.end8.i38.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ 0, %if.end5.i35.cxd2880_pre_bit_err_t2.exit_crit_edge ]
  %pre_bit_count.1 = phi i32 [ 0, %if.then44.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ 0, %if.end.i32.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ 0, %if.then35.i ], [ %mul.i, %if.end91.i ], [ 0, %if.end83.i.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ 0, %if.end65.i.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ 0, %if.then60.i ], [ 0, %if.then28.i55 ], [ 0, %if.then18.i49 ], [ 0, %if.end11.i41.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ 0, %if.end8.i38.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ 0, %if.end5.i35.cxd2880_pre_bit_err_t2.exit_crit_edge ]
  %retval.0.i59 = phi i32 [ -22, %if.then44.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ -22, %if.end.i32.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ -11, %if.then35.i ], [ 0, %if.end91.i ], [ %call88.i, %if.end83.i.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ %call80.i, %if.end65.i.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ %call58.i, %if.then60.i ], [ %call26.i50, %if.then28.i55 ], [ %call16.i44, %if.then18.i49 ], [ %call.i39, %if.end11.i41.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ -22, %if.end8.i38.cxd2880_pre_bit_err_t2.exit_crit_edge ], [ -22, %if.end5.i35.cxd2880_pre_bit_err_t2.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %data.i) #8
  br label %if.end51

if.end51:                                         ; preds = %cxd2880_pre_bit_err_t2.exit, %cxd2880_pre_bit_err_t.exit
  %spi_mutex45.sink = phi ptr [ %spi_mutex45, %cxd2880_pre_bit_err_t2.exit ], [ %spi_mutex, %cxd2880_pre_bit_err_t.exit ]
  %pre_bit_err.2 = phi i32 [ %pre_bit_err.1, %cxd2880_pre_bit_err_t2.exit ], [ %pre_bit_err.0, %cxd2880_pre_bit_err_t.exit ]
  %pre_bit_count.2 = phi i32 [ %pre_bit_count.1, %cxd2880_pre_bit_err_t2.exit ], [ %pre_bit_count.0, %cxd2880_pre_bit_err_t.exit ]
  %ret.0 = phi i32 [ %retval.0.i59, %cxd2880_pre_bit_err_t2.exit ], [ %retval.0.i28, %cxd2880_pre_bit_err_t.exit ]
  %147 = ptrtoint ptr %spi_mutex45.sink to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %spi_mutex45.sink, align 4
  call void @mutex_unlock(ptr noundef %148) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool52.not = icmp eq i32 %ret.0, 0
  %pre_bit_error54 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44
  %149 = ptrtoint ptr %pre_bit_error54 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 1, ptr %pre_bit_error54, align 2
  %stat57 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1
  br i1 %tobool52.not, label %if.then53, label %if.else75

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %150 = ptrtoint ptr %stat57 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 3, ptr %stat57, align 1
  %conv = zext i32 %pre_bit_err.2 to i64
  %151 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1, i32 0, i32 1
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 8)
  %153 = load i64, ptr %151, align 1
  %add63 = add i64 %153, %conv
  store i64 %add63, ptr %151, align 1
  %pre_bit_count64 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45
  %154 = ptrtoint ptr %pre_bit_count64 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %pre_bit_count64, align 1
  %stat67 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1
  %155 = ptrtoint ptr %stat67 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 3, ptr %stat67, align 1
  %conv70 = zext i32 %pre_bit_count.2 to i64
  %156 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1, i32 0, i32 1
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 8)
  %158 = load i64, ptr %156, align 1
  %add74 = add i64 %158, %conv70
  store i64 %add74, ptr %156, align 1
  br label %if.end99

if.else75:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %159 = ptrtoint ptr %stat57 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %stat57, align 1
  %pre_bit_count82 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45
  %160 = ptrtoint ptr %pre_bit_count82 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %pre_bit_count82, align 1
  %stat85 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1
  %161 = ptrtoint ptr %stat85 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %stat85, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_stats.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_stats, %if.then94)) #8
          to label %if.end99 [label %if.then94], !srcloc !333

if.then94:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_stats.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.135, i32 noundef %ret.0) #8
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %if.else75, %if.then53, %if.end34.if.end99_crit_edge
  %post_ber_update = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 10
  %162 = ptrtoint ptr %post_ber_update to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %post_ber_update, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %164 = load volatile i32, ptr @jiffies, align 128
  %sub100 = sub i32 %163, %164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub100)
  %cmp101 = icmp slt i32 %sub100, 0
  br i1 %cmp101, label %if.then103, label %if.end99.if.end181_crit_edge

if.end99.if.end181_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end181

if.then103:                                       ; preds = %if.end99
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %165 = load volatile i32, ptr @jiffies, align 128
  %post_ber_interval = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 11
  %166 = ptrtoint ptr %post_ber_interval to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %post_ber_interval, align 4
  %call2.i7 = call i32 @__msecs_to_jiffies(i32 noundef %167) #8
  %add105 = add i32 %call2.i7, %165
  %168 = ptrtoint ptr %post_ber_update to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %add105, ptr %post_ber_update, align 4
  %delivery_system107 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %169 = ptrtoint ptr %delivery_system107 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %delivery_system107, align 4
  %171 = zext i32 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %170, label %if.then103.cleanup_crit_edge [
    i32 3, label %if.then110
    i32 16, label %if.then119
  ]

if.then103.cleanup_crit_edge:                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then110:                                       ; preds = %if.then103
  %spi_mutex111 = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 7
  %172 = ptrtoint ptr %spi_mutex111 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %spi_mutex111, align 4
  call void @mutex_lock_nested(ptr noundef %173, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rdata.i60) #8
  %174 = ptrtoint ptr %rdata.i60 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 -1, ptr %rdata.i60, align 1, !annotation !334
  %175 = getelementptr inbounds [3 x i8], ptr %rdata.i60, i32 0, i32 1
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 -1, ptr %175, align 1, !annotation !334
  %177 = getelementptr inbounds [3 x i8], ptr %rdata.i60, i32 0, i32 2
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 -1, ptr %177, align 1, !annotation !334
  %tobool.not.i61 = icmp eq ptr %1, null
  br i1 %tobool.not.i61, label %if.then110.cxd2880_post_bit_err_t.exit_crit_edge, label %if.end.i64

if.then110.cxd2880_post_bit_err_t.exit_crit_edge: ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t.exit

if.end.i64:                                       ; preds = %if.then110
  %diver_mode.i62 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 3
  %179 = ptrtoint ptr %diver_mode.i62 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %diver_mode.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %180)
  %cmp.i63 = icmp eq i32 %180, 2
  br i1 %cmp.i63, label %if.end.i64.cxd2880_post_bit_err_t.exit_crit_edge, label %if.end5.i67

if.end.i64.cxd2880_post_bit_err_t.exit_crit_edge: ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t.exit

if.end5.i67:                                      ; preds = %if.end.i64
  %state.i65 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 22
  %181 = ptrtoint ptr %state.i65 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %state.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %182)
  %cmp6.not.i66 = icmp eq i32 %182, 2
  br i1 %cmp6.not.i66, label %if.end8.i70, label %if.end5.i67.cxd2880_post_bit_err_t.exit_crit_edge

if.end5.i67.cxd2880_post_bit_err_t.exit_crit_edge: ; preds = %if.end5.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t.exit

if.end8.i70:                                      ; preds = %if.end5.i67
  %sys.i68 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 25
  %183 = ptrtoint ptr %sys.i68 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %sys.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %184)
  %cmp9.not.i69 = icmp eq i32 %184, 1
  br i1 %cmp9.not.i69, label %if.end11.i74, label %if.end8.i70.cxd2880_post_bit_err_t.exit_crit_edge

if.end8.i70.cxd2880_post_bit_err_t.exit_crit_edge: ; preds = %if.end8.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t.exit

if.end11.i74:                                     ; preds = %if.end8.i70
  %io.i71 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 1
  %185 = ptrtoint ptr %io.i71 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %io.i71, align 4
  %write_reg.i72 = getelementptr inbounds %struct.cxd2880_io, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %write_reg.i72 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %write_reg.i72, align 4
  %call.i73 = call i32 %188(ptr noundef %186, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool13.not.i = icmp eq i32 %call.i73, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i74.cxd2880_post_bit_err_t.exit_crit_edge

if.end11.i74.cxd2880_post_bit_err_t.exit_crit_edge: ; preds = %if.end11.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t.exit

if.end15.i:                                       ; preds = %if.end11.i74
  %189 = ptrtoint ptr %io.i71 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %io.i71, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %190, align 4
  %call18.i = call i32 %192(ptr noundef %190, i32 noundef 1, i8 noundef zeroext 21, ptr noundef nonnull %rdata.i60, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end15.i.cxd2880_post_bit_err_t.exit_crit_edge

if.end15.i.cxd2880_post_bit_err_t.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t.exit

if.end21.i:                                       ; preds = %if.end15.i
  %193 = ptrtoint ptr %rdata.i60 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %rdata.i60, align 1
  %conv.i = zext i8 %194 to i32
  %and.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp22.i = icmp eq i32 %and.i, 0
  br i1 %cmp22.i, label %if.end21.i.cxd2880_post_bit_err_t.exit_crit_edge, label %if.end25.i

if.end21.i.cxd2880_post_bit_err_t.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t.exit

if.end25.i:                                       ; preds = %if.end21.i
  %and28.i = shl nuw nsw i32 %conv.i, 16
  %shl.i75 = and i32 %and28.i, 4128768
  %195 = ptrtoint ptr %175 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %175, align 1
  %conv30.i = zext i8 %196 to i32
  %shl31.i = shl nuw nsw i32 %conv30.i, 8
  %or.i76 = or i32 %shl31.i, %shl.i75
  %197 = ptrtoint ptr %177 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %177, align 1
  %conv33.i = zext i8 %198 to i32
  %or34.i = or i32 %or.i76, %conv33.i
  %199 = ptrtoint ptr %io.i71 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %io.i71, align 4
  %write_reg36.i = getelementptr inbounds %struct.cxd2880_io, ptr %200, i32 0, i32 2
  %201 = ptrtoint ptr %write_reg36.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %write_reg36.i, align 4
  %call38.i = call i32 %202(ptr noundef %200, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i79, label %if.end25.i.cxd2880_post_bit_err_t.exit_crit_edge

if.end25.i.cxd2880_post_bit_err_t.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t.exit

if.end41.i79:                                     ; preds = %if.end25.i
  %203 = ptrtoint ptr %io.i71 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %io.i71, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %204, align 4
  %call46.i77 = call i32 %206(ptr noundef %204, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %rdata.i60, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i77)
  %tobool47.not.i78 = icmp eq i32 %call46.i77, 0
  br i1 %tobool47.not.i78, label %if.end49.i, label %if.end41.i79.cxd2880_post_bit_err_t.exit_crit_edge

if.end41.i79.cxd2880_post_bit_err_t.exit_crit_edge: ; preds = %if.end41.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t.exit

if.end49.i:                                       ; preds = %if.end41.i79
  call void @__sanitizer_cov_trace_pc() #10
  %207 = ptrtoint ptr %rdata.i60 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %rdata.i60, align 1
  %209 = and i8 %208, 31
  %and52.i = zext i8 %209 to i32
  %mul63.i = shl i32 1632, %and52.i
  br label %cxd2880_post_bit_err_t.exit

cxd2880_post_bit_err_t.exit:                      ; preds = %if.end49.i, %if.end41.i79.cxd2880_post_bit_err_t.exit_crit_edge, %if.end25.i.cxd2880_post_bit_err_t.exit_crit_edge, %if.end21.i.cxd2880_post_bit_err_t.exit_crit_edge, %if.end15.i.cxd2880_post_bit_err_t.exit_crit_edge, %if.end11.i74.cxd2880_post_bit_err_t.exit_crit_edge, %if.end8.i70.cxd2880_post_bit_err_t.exit_crit_edge, %if.end5.i67.cxd2880_post_bit_err_t.exit_crit_edge, %if.end.i64.cxd2880_post_bit_err_t.exit_crit_edge, %if.then110.cxd2880_post_bit_err_t.exit_crit_edge
  %post_bit_err.0 = phi i32 [ 0, %if.then110.cxd2880_post_bit_err_t.exit_crit_edge ], [ 0, %if.end.i64.cxd2880_post_bit_err_t.exit_crit_edge ], [ 0, %if.end21.i.cxd2880_post_bit_err_t.exit_crit_edge ], [ %or34.i, %if.end49.i ], [ %or34.i, %if.end41.i79.cxd2880_post_bit_err_t.exit_crit_edge ], [ %or34.i, %if.end25.i.cxd2880_post_bit_err_t.exit_crit_edge ], [ 0, %if.end15.i.cxd2880_post_bit_err_t.exit_crit_edge ], [ 0, %if.end11.i74.cxd2880_post_bit_err_t.exit_crit_edge ], [ 0, %if.end8.i70.cxd2880_post_bit_err_t.exit_crit_edge ], [ 0, %if.end5.i67.cxd2880_post_bit_err_t.exit_crit_edge ]
  %post_bit_count.0 = phi i32 [ 0, %if.then110.cxd2880_post_bit_err_t.exit_crit_edge ], [ 0, %if.end.i64.cxd2880_post_bit_err_t.exit_crit_edge ], [ 0, %if.end21.i.cxd2880_post_bit_err_t.exit_crit_edge ], [ %mul63.i, %if.end49.i ], [ 0, %if.end41.i79.cxd2880_post_bit_err_t.exit_crit_edge ], [ 0, %if.end25.i.cxd2880_post_bit_err_t.exit_crit_edge ], [ 0, %if.end15.i.cxd2880_post_bit_err_t.exit_crit_edge ], [ 0, %if.end11.i74.cxd2880_post_bit_err_t.exit_crit_edge ], [ 0, %if.end8.i70.cxd2880_post_bit_err_t.exit_crit_edge ], [ 0, %if.end5.i67.cxd2880_post_bit_err_t.exit_crit_edge ]
  %retval.0.i80 = phi i32 [ -22, %if.then110.cxd2880_post_bit_err_t.exit_crit_edge ], [ -22, %if.end.i64.cxd2880_post_bit_err_t.exit_crit_edge ], [ -11, %if.end21.i.cxd2880_post_bit_err_t.exit_crit_edge ], [ 0, %if.end49.i ], [ %call46.i77, %if.end41.i79.cxd2880_post_bit_err_t.exit_crit_edge ], [ %call38.i, %if.end25.i.cxd2880_post_bit_err_t.exit_crit_edge ], [ %call18.i, %if.end15.i.cxd2880_post_bit_err_t.exit_crit_edge ], [ %call.i73, %if.end11.i74.cxd2880_post_bit_err_t.exit_crit_edge ], [ -22, %if.end8.i70.cxd2880_post_bit_err_t.exit_crit_edge ], [ -22, %if.end5.i67.cxd2880_post_bit_err_t.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rdata.i60) #8
  br label %if.end126

if.then119:                                       ; preds = %if.then103
  %spi_mutex120 = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 7
  %210 = ptrtoint ptr %spi_mutex120 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %spi_mutex120, align 4
  call void @mutex_lock_nested(ptr noundef %211, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i81) #8
  %212 = ptrtoint ptr %data.i81 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 -1, ptr %data.i81, align 1, !annotation !334
  %213 = getelementptr inbounds [3 x i8], ptr %data.i81, i32 0, i32 1
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 -1, ptr %213, align 1, !annotation !334
  %215 = getelementptr inbounds [3 x i8], ptr %data.i81, i32 0, i32 2
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 -1, ptr %215, align 1, !annotation !334
  %tobool.not.i82 = icmp eq ptr %1, null
  br i1 %tobool.not.i82, label %if.then119.cxd2880_post_bit_err_t2.exit_crit_edge, label %if.end.i85

if.then119.cxd2880_post_bit_err_t2.exit_crit_edge: ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t2.exit

if.end.i85:                                       ; preds = %if.then119
  %diver_mode.i83 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 3
  %217 = ptrtoint ptr %diver_mode.i83 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %diver_mode.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %218)
  %cmp.i84 = icmp eq i32 %218, 2
  br i1 %cmp.i84, label %if.end.i85.cxd2880_post_bit_err_t2.exit_crit_edge, label %if.end5.i88

if.end.i85.cxd2880_post_bit_err_t2.exit_crit_edge: ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t2.exit

if.end5.i88:                                      ; preds = %if.end.i85
  %state.i86 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 22
  %219 = ptrtoint ptr %state.i86 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %state.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %220)
  %cmp6.not.i87 = icmp eq i32 %220, 2
  br i1 %cmp6.not.i87, label %if.end8.i91, label %if.end5.i88.cxd2880_post_bit_err_t2.exit_crit_edge

if.end5.i88.cxd2880_post_bit_err_t2.exit_crit_edge: ; preds = %if.end5.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t2.exit

if.end8.i91:                                      ; preds = %if.end5.i88
  %sys.i89 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 25
  %221 = ptrtoint ptr %sys.i89 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %sys.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %222)
  %cmp9.not.i90 = icmp eq i32 %222, 2
  br i1 %cmp9.not.i90, label %if.end11.i94, label %if.end8.i91.cxd2880_post_bit_err_t2.exit_crit_edge

if.end8.i91.cxd2880_post_bit_err_t2.exit_crit_edge: ; preds = %if.end8.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t2.exit

if.end11.i94:                                     ; preds = %if.end8.i91
  %call.i92 = call i32 @slvt_freeze_reg(ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool12.not.i93 = icmp eq i32 %call.i92, 0
  br i1 %tobool12.not.i93, label %if.end14.i99, label %if.end11.i94.cxd2880_post_bit_err_t2.exit_crit_edge

if.end11.i94.cxd2880_post_bit_err_t2.exit_crit_edge: ; preds = %if.end11.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t2.exit

if.end14.i99:                                     ; preds = %if.end11.i94
  %io.i95 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 1
  %223 = ptrtoint ptr %io.i95 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %io.i95, align 4
  %write_reg.i96 = getelementptr inbounds %struct.cxd2880_io, ptr %224, i32 0, i32 2
  %225 = ptrtoint ptr %write_reg.i96 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %write_reg.i96, align 4
  %call16.i97 = call i32 %226(ptr noundef %224, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i97)
  %tobool17.not.i98 = icmp eq i32 %call16.i97, 0
  %227 = ptrtoint ptr %io.i95 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %io.i95, align 4
  br i1 %tobool17.not.i98, label %if.end23.i105, label %if.then18.i102

if.then18.i102:                                   ; preds = %if.end14.i99
  call void @__sanitizer_cov_trace_pc() #10
  %write_reg20.i100 = getelementptr inbounds %struct.cxd2880_io, ptr %228, i32 0, i32 2
  %229 = ptrtoint ptr %write_reg20.i100 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %write_reg20.i100, align 4
  %call22.i101 = call i32 %230(ptr noundef %228, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %cxd2880_post_bit_err_t2.exit

if.end23.i105:                                    ; preds = %if.end14.i99
  %231 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %228, align 4
  %call26.i103 = call i32 %232(ptr noundef %228, i32 noundef 1, i8 noundef zeroext 21, ptr noundef nonnull %data.i81, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i103)
  %tobool27.not.i104 = icmp eq i32 %call26.i103, 0
  br i1 %tobool27.not.i104, label %if.end33.i112, label %if.then28.i108

if.then28.i108:                                   ; preds = %if.end23.i105
  call void @__sanitizer_cov_trace_pc() #10
  %233 = ptrtoint ptr %io.i95 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %io.i95, align 4
  %write_reg30.i106 = getelementptr inbounds %struct.cxd2880_io, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %write_reg30.i106 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %write_reg30.i106, align 4
  %call32.i107 = call i32 %236(ptr noundef %234, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %cxd2880_post_bit_err_t2.exit

if.end33.i112:                                    ; preds = %if.end23.i105
  %237 = ptrtoint ptr %data.i81 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %data.i81, align 1
  %conv.i109 = zext i8 %238 to i32
  %and.i110 = and i32 %conv.i109, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %tobool34.not.i111 = icmp eq i32 %and.i110, 0
  br i1 %tobool34.not.i111, label %if.then35.i115, label %if.end40.i122

if.then35.i115:                                   ; preds = %if.end33.i112
  call void @__sanitizer_cov_trace_pc() #10
  %239 = ptrtoint ptr %io.i95 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %io.i95, align 4
  %write_reg37.i113 = getelementptr inbounds %struct.cxd2880_io, ptr %240, i32 0, i32 2
  %241 = ptrtoint ptr %write_reg37.i113 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %write_reg37.i113, align 4
  %call39.i114 = call i32 %242(ptr noundef %240, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %cxd2880_post_bit_err_t2.exit

if.end40.i122:                                    ; preds = %if.end33.i112
  %and43.i116 = shl nuw nsw i32 %conv.i109, 16
  %shl.i117 = and i32 %and43.i116, 4128768
  %243 = ptrtoint ptr %213 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %213, align 1
  %conv45.i118 = zext i8 %244 to i32
  %shl46.i119 = shl nuw nsw i32 %conv45.i118, 8
  %or.i120 = or i32 %shl46.i119, %shl.i117
  %245 = ptrtoint ptr %215 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %215, align 1
  %conv48.i121 = zext i8 %246 to i32
  %or49.i = or i32 %or.i120, %conv48.i121
  %247 = ptrtoint ptr %io.i95 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %io.i95, align 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %248, align 4
  %call54.i = call i32 %250(ptr noundef %248, i32 noundef 1, i8 noundef zeroext -99, ptr noundef nonnull %data.i81, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end61.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.end40.i122
  call void @__sanitizer_cov_trace_pc() #10
  %251 = ptrtoint ptr %io.i95 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %io.i95, align 4
  %write_reg58.i = getelementptr inbounds %struct.cxd2880_io, ptr %252, i32 0, i32 2
  %253 = ptrtoint ptr %write_reg58.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %write_reg58.i, align 4
  %call60.i = call i32 %254(ptr noundef %252, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %cxd2880_post_bit_err_t2.exit

if.end61.i:                                       ; preds = %if.end40.i122
  %255 = ptrtoint ptr %data.i81 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %data.i81, align 1
  %257 = and i8 %256, 7
  %and64.i = zext i8 %257 to i32
  %258 = ptrtoint ptr %io.i95 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %io.i95, align 4
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %259, align 4
  %call69.i = call i32 %261(ptr noundef %259, i32 noundef 1, i8 noundef zeroext -96, ptr noundef nonnull %data.i81, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.end76.i, label %if.then71.i

if.then71.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  %262 = ptrtoint ptr %io.i95 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %io.i95, align 4
  %write_reg73.i = getelementptr inbounds %struct.cxd2880_io, ptr %263, i32 0, i32 2
  %264 = ptrtoint ptr %write_reg73.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %write_reg73.i, align 4
  %call75.i = call i32 %265(ptr noundef %263, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  br label %cxd2880_post_bit_err_t2.exit

if.end76.i:                                       ; preds = %if.end61.i
  %266 = ptrtoint ptr %data.i81 to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %data.i81, align 1
  %268 = and i8 %267, 3
  %and79.i = zext i8 %268 to i32
  %269 = ptrtoint ptr %io.i95 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %io.i95, align 4
  %write_reg81.i = getelementptr inbounds %struct.cxd2880_io, ptr %270, i32 0, i32 2
  %271 = ptrtoint ptr %write_reg81.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %write_reg81.i, align 4
  %call83.i = call i32 %272(ptr noundef %270, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #8
  %273 = ptrtoint ptr %io.i95 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %io.i95, align 4
  %write_reg85.i = getelementptr inbounds %struct.cxd2880_io, ptr %274, i32 0, i32 2
  %275 = ptrtoint ptr %write_reg85.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %write_reg85.i, align 4
  %call87.i = call i32 %276(ptr noundef %274, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %if.end90.i, label %if.end76.i.cxd2880_post_bit_err_t2.exit_crit_edge

if.end76.i.cxd2880_post_bit_err_t2.exit_crit_edge: ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t2.exit

if.end90.i:                                       ; preds = %if.end76.i
  %277 = ptrtoint ptr %io.i95 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %io.i95, align 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %278, align 4
  %call95.i = call i32 %280(ptr noundef %278, i32 noundef 1, i8 noundef zeroext 114, ptr noundef nonnull %data.i81, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %if.end98.i, label %if.end90.i.cxd2880_post_bit_err_t2.exit_crit_edge

if.end90.i.cxd2880_post_bit_err_t2.exit_crit_edge: ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t2.exit

if.end98.i:                                       ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %268)
  %cmp102.i = icmp ugt i8 %268, 1
  br i1 %cmp102.i, label %if.end98.i.cxd2880_post_bit_err_t2.exit_crit_edge, label %if.end108.i

if.end98.i.cxd2880_post_bit_err_t2.exit_crit_edge: ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_post_bit_err_t2.exit

if.end108.i:                                      ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  %281 = ptrtoint ptr %data.i81 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %data.i81, align 1
  %283 = and i8 %282, 15
  %and101.i = zext i8 %283 to i32
  %arrayidx110.i = getelementptr [2 x [8 x i16]], ptr @cxd2880_post_bit_err_t2.n_bch_bits_lookup, i32 0, i32 %and79.i, i32 %and64.i
  %284 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %arrayidx110.i, align 2
  %conv111.i = zext i16 %285 to i32
  %mul.i123 = shl nuw nsw i32 %conv111.i, %and101.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or49.i, i32 %mul.i123)
  %cmp113.i = icmp ugt i32 %or49.i, %mul.i123
  %spec.select = select i1 %cmp113.i, i32 0, i32 %mul.i123
  %spec.select195 = select i1 %cmp113.i, i32 -11, i32 0
  br label %cxd2880_post_bit_err_t2.exit

cxd2880_post_bit_err_t2.exit:                     ; preds = %if.end108.i, %if.end98.i.cxd2880_post_bit_err_t2.exit_crit_edge, %if.end90.i.cxd2880_post_bit_err_t2.exit_crit_edge, %if.end76.i.cxd2880_post_bit_err_t2.exit_crit_edge, %if.then71.i, %if.then56.i, %if.then35.i115, %if.then28.i108, %if.then18.i102, %if.end11.i94.cxd2880_post_bit_err_t2.exit_crit_edge, %if.end8.i91.cxd2880_post_bit_err_t2.exit_crit_edge, %if.end5.i88.cxd2880_post_bit_err_t2.exit_crit_edge, %if.end.i85.cxd2880_post_bit_err_t2.exit_crit_edge, %if.then119.cxd2880_post_bit_err_t2.exit_crit_edge
  %post_bit_err.1 = phi i32 [ 0, %if.then119.cxd2880_post_bit_err_t2.exit_crit_edge ], [ 0, %if.end.i85.cxd2880_post_bit_err_t2.exit_crit_edge ], [ 0, %if.then35.i115 ], [ %or49.i, %if.end98.i.cxd2880_post_bit_err_t2.exit_crit_edge ], [ %or49.i, %if.end90.i.cxd2880_post_bit_err_t2.exit_crit_edge ], [ %or49.i, %if.end76.i.cxd2880_post_bit_err_t2.exit_crit_edge ], [ %or49.i, %if.then71.i ], [ %or49.i, %if.then56.i ], [ 0, %if.then28.i108 ], [ 0, %if.then18.i102 ], [ 0, %if.end11.i94.cxd2880_post_bit_err_t2.exit_crit_edge ], [ 0, %if.end8.i91.cxd2880_post_bit_err_t2.exit_crit_edge ], [ 0, %if.end5.i88.cxd2880_post_bit_err_t2.exit_crit_edge ], [ %or49.i, %if.end108.i ]
  %post_bit_count.1 = phi i32 [ 0, %if.then119.cxd2880_post_bit_err_t2.exit_crit_edge ], [ 0, %if.end.i85.cxd2880_post_bit_err_t2.exit_crit_edge ], [ 0, %if.then35.i115 ], [ 0, %if.end98.i.cxd2880_post_bit_err_t2.exit_crit_edge ], [ 0, %if.end90.i.cxd2880_post_bit_err_t2.exit_crit_edge ], [ 0, %if.end76.i.cxd2880_post_bit_err_t2.exit_crit_edge ], [ 0, %if.then71.i ], [ 0, %if.then56.i ], [ 0, %if.then28.i108 ], [ 0, %if.then18.i102 ], [ 0, %if.end11.i94.cxd2880_post_bit_err_t2.exit_crit_edge ], [ 0, %if.end8.i91.cxd2880_post_bit_err_t2.exit_crit_edge ], [ 0, %if.end5.i88.cxd2880_post_bit_err_t2.exit_crit_edge ], [ %spec.select, %if.end108.i ]
  %retval.0.i124 = phi i32 [ -22, %if.then119.cxd2880_post_bit_err_t2.exit_crit_edge ], [ -22, %if.end.i85.cxd2880_post_bit_err_t2.exit_crit_edge ], [ -11, %if.then35.i115 ], [ -11, %if.end98.i.cxd2880_post_bit_err_t2.exit_crit_edge ], [ %call95.i, %if.end90.i.cxd2880_post_bit_err_t2.exit_crit_edge ], [ %call87.i, %if.end76.i.cxd2880_post_bit_err_t2.exit_crit_edge ], [ %call69.i, %if.then71.i ], [ %call54.i, %if.then56.i ], [ %call26.i103, %if.then28.i108 ], [ %call16.i97, %if.then18.i102 ], [ %call.i92, %if.end11.i94.cxd2880_post_bit_err_t2.exit_crit_edge ], [ -22, %if.end8.i91.cxd2880_post_bit_err_t2.exit_crit_edge ], [ -22, %if.end5.i88.cxd2880_post_bit_err_t2.exit_crit_edge ], [ %spec.select195, %if.end108.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i81) #8
  br label %if.end126

if.end126:                                        ; preds = %cxd2880_post_bit_err_t2.exit, %cxd2880_post_bit_err_t.exit
  %spi_mutex120.sink = phi ptr [ %spi_mutex120, %cxd2880_post_bit_err_t2.exit ], [ %spi_mutex111, %cxd2880_post_bit_err_t.exit ]
  %post_bit_err.2 = phi i32 [ %post_bit_err.1, %cxd2880_post_bit_err_t2.exit ], [ %post_bit_err.0, %cxd2880_post_bit_err_t.exit ]
  %post_bit_count.2 = phi i32 [ %post_bit_count.1, %cxd2880_post_bit_err_t2.exit ], [ %post_bit_count.0, %cxd2880_post_bit_err_t.exit ]
  %ret.1 = phi i32 [ %retval.0.i124, %cxd2880_post_bit_err_t2.exit ], [ %retval.0.i80, %cxd2880_post_bit_err_t.exit ]
  %286 = ptrtoint ptr %spi_mutex120.sink to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %spi_mutex120.sink, align 4
  call void @mutex_unlock(ptr noundef %287) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool127.not = icmp eq i32 %ret.1, 0
  %post_bit_error129 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %288 = ptrtoint ptr %post_bit_error129 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 1, ptr %post_bit_error129, align 4
  %stat132 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  br i1 %tobool127.not, label %if.then128, label %if.else151

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %289 = ptrtoint ptr %stat132 to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 3, ptr %stat132, align 1
  %conv135 = zext i32 %post_bit_err.2 to i64
  %290 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_loadN_noabort(i32 %291, i32 8)
  %292 = load i64, ptr %290, align 1
  %add139 = add i64 %292, %conv135
  store i64 %add139, ptr %290, align 1
  %post_bit_count140 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %293 = ptrtoint ptr %post_bit_count140 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 1, ptr %post_bit_count140, align 1
  %stat143 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %294 = ptrtoint ptr %stat143 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 3, ptr %stat143, align 1
  %conv146 = zext i32 %post_bit_count.2 to i64
  %295 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_loadN_noabort(i32 %296, i32 8)
  %297 = load i64, ptr %295, align 1
  %add150 = add i64 %297, %conv146
  store i64 %add150, ptr %295, align 1
  br label %if.end181

if.else151:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %298 = ptrtoint ptr %stat132 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 0, ptr %stat132, align 1
  %post_bit_count158 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %299 = ptrtoint ptr %post_bit_count158 to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 1, ptr %post_bit_count158, align 1
  %stat161 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %300 = ptrtoint ptr %stat161 to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 0, ptr %stat161, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_stats.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_stats, %if.then176)) #8
          to label %if.end181 [label %if.then176], !srcloc !333

if.then176:                                       ; preds = %if.else151
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_stats.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.135, i32 noundef %ret.1) #8
  br label %if.end181

if.end181:                                        ; preds = %if.then176, %if.else151, %if.then128, %if.end99.if.end181_crit_edge
  %ucblock_update = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 12
  %301 = ptrtoint ptr %ucblock_update to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %ucblock_update, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %303 = load volatile i32, ptr @jiffies, align 128
  %sub182 = sub i32 %302, %303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub182)
  %cmp183 = icmp slt i32 %sub182, 0
  br i1 %cmp183, label %if.then185, label %if.end181.cleanup_crit_edge

if.end181.cleanup_crit_edge:                      ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then185:                                       ; preds = %if.end181
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %304 = load volatile i32, ptr @jiffies, align 128
  %ucblock_interval = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 13
  %305 = ptrtoint ptr %ucblock_interval to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %ucblock_interval, align 4
  %call2.i19 = call i32 @__msecs_to_jiffies(i32 noundef %306) #8
  %add187 = add i32 %call2.i19, %304
  %307 = ptrtoint ptr %ucblock_update to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %add187, ptr %ucblock_update, align 4
  %delivery_system189 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %308 = ptrtoint ptr %delivery_system189 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %delivery_system189, align 4
  %310 = zext i32 %309 to i64
  call void @__sanitizer_cov_trace_switch(i64 %310, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %309, label %if.then185.cleanup_crit_edge [
    i32 3, label %if.then192
    i32 16, label %if.then201
  ]

if.then185.cleanup_crit_edge:                     ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then192:                                       ; preds = %if.then185
  %spi_mutex193 = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 7
  %311 = ptrtoint ptr %spi_mutex193 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %spi_mutex193, align 4
  call void @mutex_lock_nested(ptr noundef %312, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rdata.i125) #8
  %313 = ptrtoint ptr %rdata.i125 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 -1, ptr %rdata.i125, align 1, !annotation !334
  %314 = getelementptr inbounds [3 x i8], ptr %rdata.i125, i32 0, i32 1
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 -1, ptr %314, align 1, !annotation !334
  %316 = getelementptr inbounds [3 x i8], ptr %rdata.i125, i32 0, i32 2
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 -1, ptr %316, align 1, !annotation !334
  %tobool.not.i126 = icmp eq ptr %1, null
  br i1 %tobool.not.i126, label %if.then192.cxd2880_read_block_err_t.exit_crit_edge, label %if.end.i129

if.then192.cxd2880_read_block_err_t.exit_crit_edge: ; preds = %if.then192
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t.exit

if.end.i129:                                      ; preds = %if.then192
  %diver_mode.i127 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 3
  %318 = ptrtoint ptr %diver_mode.i127 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %diver_mode.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %319)
  %cmp.i128 = icmp eq i32 %319, 2
  br i1 %cmp.i128, label %if.end.i129.cxd2880_read_block_err_t.exit_crit_edge, label %if.end5.i132

if.end.i129.cxd2880_read_block_err_t.exit_crit_edge: ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t.exit

if.end5.i132:                                     ; preds = %if.end.i129
  %state.i130 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 22
  %320 = ptrtoint ptr %state.i130 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %state.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %321)
  %cmp6.not.i131 = icmp eq i32 %321, 2
  br i1 %cmp6.not.i131, label %if.end8.i135, label %if.end5.i132.cxd2880_read_block_err_t.exit_crit_edge

if.end5.i132.cxd2880_read_block_err_t.exit_crit_edge: ; preds = %if.end5.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t.exit

if.end8.i135:                                     ; preds = %if.end5.i132
  %sys.i133 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 25
  %322 = ptrtoint ptr %sys.i133 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %sys.i133, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %323)
  %cmp9.not.i134 = icmp eq i32 %323, 1
  br i1 %cmp9.not.i134, label %if.end11.i140, label %if.end8.i135.cxd2880_read_block_err_t.exit_crit_edge

if.end8.i135.cxd2880_read_block_err_t.exit_crit_edge: ; preds = %if.end8.i135
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t.exit

if.end11.i140:                                    ; preds = %if.end8.i135
  %io.i136 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 1
  %324 = ptrtoint ptr %io.i136 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %io.i136, align 4
  %write_reg.i137 = getelementptr inbounds %struct.cxd2880_io, ptr %325, i32 0, i32 2
  %326 = ptrtoint ptr %write_reg.i137 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %write_reg.i137, align 4
  %call.i138 = call i32 %327(ptr noundef %325, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool13.not.i139 = icmp eq i32 %call.i138, 0
  br i1 %tobool13.not.i139, label %if.end15.i143, label %if.end11.i140.cxd2880_read_block_err_t.exit_crit_edge

if.end11.i140.cxd2880_read_block_err_t.exit_crit_edge: ; preds = %if.end11.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t.exit

if.end15.i143:                                    ; preds = %if.end11.i140
  %328 = ptrtoint ptr %io.i136 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %io.i136, align 4
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %329, align 4
  %call18.i141 = call i32 %331(ptr noundef %329, i32 noundef 1, i8 noundef zeroext 24, ptr noundef nonnull %rdata.i125, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i141)
  %tobool19.not.i142 = icmp eq i32 %call18.i141, 0
  br i1 %tobool19.not.i142, label %if.end21.i145, label %if.end15.i143.cxd2880_read_block_err_t.exit_crit_edge

if.end15.i143.cxd2880_read_block_err_t.exit_crit_edge: ; preds = %if.end15.i143
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t.exit

if.end21.i145:                                    ; preds = %if.end15.i143
  %332 = ptrtoint ptr %rdata.i125 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %rdata.i125, align 1
  %334 = and i8 %333, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %334)
  %cmp22.i144 = icmp eq i8 %334, 0
  br i1 %cmp22.i144, label %if.end21.i145.cxd2880_read_block_err_t.exit_crit_edge, label %if.end25.i149

if.end21.i145.cxd2880_read_block_err_t.exit_crit_edge: ; preds = %if.end21.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t.exit

if.end25.i149:                                    ; preds = %if.end21.i145
  %335 = ptrtoint ptr %314 to i32
  call void @__asan_load1_noabort(i32 %335)
  %336 = load i8, ptr %314, align 1
  %conv27.i = zext i8 %336 to i32
  %shl.i146 = shl nuw nsw i32 %conv27.i, 8
  %337 = ptrtoint ptr %316 to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %316, align 1
  %conv29.i = zext i8 %338 to i32
  %or.i147 = or i32 %shl.i146, %conv29.i
  %339 = ptrtoint ptr %io.i136 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %io.i136, align 4
  %write_reg31.i = getelementptr inbounds %struct.cxd2880_io, ptr %340, i32 0, i32 2
  %341 = ptrtoint ptr %write_reg31.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %write_reg31.i, align 4
  %call33.i = call i32 %342(ptr noundef %340, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i148 = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i148, label %if.end36.i, label %if.end25.i149.cxd2880_read_block_err_t.exit_crit_edge

if.end25.i149.cxd2880_read_block_err_t.exit_crit_edge: ; preds = %if.end25.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t.exit

if.end36.i:                                       ; preds = %if.end25.i149
  %343 = ptrtoint ptr %io.i136 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %io.i136, align 4
  %345 = ptrtoint ptr %344 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %344, align 4
  %call41.i = call i32 %346(ptr noundef %344, i32 noundef 1, i8 noundef zeroext 92, ptr noundef nonnull %rdata.i125, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end36.i.cxd2880_read_block_err_t.exit_crit_edge

if.end36.i.cxd2880_read_block_err_t.exit_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t.exit

if.end44.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %347 = ptrtoint ptr %rdata.i125 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %rdata.i125, align 1
  %349 = and i8 %348, 15
  %and47.i = zext i8 %349 to i32
  %shl48.i = shl nuw nsw i32 1, %and47.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i147, i32 %shl48.i)
  %cmp52.i = icmp ugt i32 %or.i147, %shl48.i
  %spec.select.i = select i1 %cmp52.i, i32 -11, i32 0
  br label %cxd2880_read_block_err_t.exit

cxd2880_read_block_err_t.exit:                    ; preds = %if.end44.i, %if.end36.i.cxd2880_read_block_err_t.exit_crit_edge, %if.end25.i149.cxd2880_read_block_err_t.exit_crit_edge, %if.end21.i145.cxd2880_read_block_err_t.exit_crit_edge, %if.end15.i143.cxd2880_read_block_err_t.exit_crit_edge, %if.end11.i140.cxd2880_read_block_err_t.exit_crit_edge, %if.end8.i135.cxd2880_read_block_err_t.exit_crit_edge, %if.end5.i132.cxd2880_read_block_err_t.exit_crit_edge, %if.end.i129.cxd2880_read_block_err_t.exit_crit_edge, %if.then192.cxd2880_read_block_err_t.exit_crit_edge
  %block_err.0 = phi i32 [ 0, %if.then192.cxd2880_read_block_err_t.exit_crit_edge ], [ 0, %if.end.i129.cxd2880_read_block_err_t.exit_crit_edge ], [ 0, %if.end21.i145.cxd2880_read_block_err_t.exit_crit_edge ], [ %or.i147, %if.end44.i ], [ %or.i147, %if.end36.i.cxd2880_read_block_err_t.exit_crit_edge ], [ %or.i147, %if.end25.i149.cxd2880_read_block_err_t.exit_crit_edge ], [ 0, %if.end15.i143.cxd2880_read_block_err_t.exit_crit_edge ], [ 0, %if.end11.i140.cxd2880_read_block_err_t.exit_crit_edge ], [ 0, %if.end8.i135.cxd2880_read_block_err_t.exit_crit_edge ], [ 0, %if.end5.i132.cxd2880_read_block_err_t.exit_crit_edge ]
  %block_count.0 = phi i32 [ 0, %if.then192.cxd2880_read_block_err_t.exit_crit_edge ], [ 0, %if.end.i129.cxd2880_read_block_err_t.exit_crit_edge ], [ 0, %if.end21.i145.cxd2880_read_block_err_t.exit_crit_edge ], [ %shl48.i, %if.end44.i ], [ 0, %if.end36.i.cxd2880_read_block_err_t.exit_crit_edge ], [ 0, %if.end25.i149.cxd2880_read_block_err_t.exit_crit_edge ], [ 0, %if.end15.i143.cxd2880_read_block_err_t.exit_crit_edge ], [ 0, %if.end11.i140.cxd2880_read_block_err_t.exit_crit_edge ], [ 0, %if.end8.i135.cxd2880_read_block_err_t.exit_crit_edge ], [ 0, %if.end5.i132.cxd2880_read_block_err_t.exit_crit_edge ]
  %retval.0.i150 = phi i32 [ -22, %if.then192.cxd2880_read_block_err_t.exit_crit_edge ], [ -22, %if.end.i129.cxd2880_read_block_err_t.exit_crit_edge ], [ -11, %if.end21.i145.cxd2880_read_block_err_t.exit_crit_edge ], [ %spec.select.i, %if.end44.i ], [ %call41.i, %if.end36.i.cxd2880_read_block_err_t.exit_crit_edge ], [ %call33.i, %if.end25.i149.cxd2880_read_block_err_t.exit_crit_edge ], [ %call18.i141, %if.end15.i143.cxd2880_read_block_err_t.exit_crit_edge ], [ %call.i138, %if.end11.i140.cxd2880_read_block_err_t.exit_crit_edge ], [ -22, %if.end8.i135.cxd2880_read_block_err_t.exit_crit_edge ], [ -22, %if.end5.i132.cxd2880_read_block_err_t.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rdata.i125) #8
  br label %if.end208

if.then201:                                       ; preds = %if.then185
  %spi_mutex202 = getelementptr inbounds %struct.cxd2880_priv, ptr %1, i32 0, i32 7
  %350 = ptrtoint ptr %spi_mutex202 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %spi_mutex202, align 4
  call void @mutex_lock_nested(ptr noundef %351, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %rdata.i151) #8
  %352 = ptrtoint ptr %rdata.i151 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 -1, ptr %rdata.i151, align 1, !annotation !334
  %353 = getelementptr inbounds [3 x i8], ptr %rdata.i151, i32 0, i32 1
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 -1, ptr %353, align 1, !annotation !334
  %355 = getelementptr inbounds [3 x i8], ptr %rdata.i151, i32 0, i32 2
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 -1, ptr %355, align 1, !annotation !334
  %tobool.not.i152 = icmp eq ptr %1, null
  br i1 %tobool.not.i152, label %if.then201.cxd2880_read_block_err_t2.exit_crit_edge, label %if.end.i155

if.then201.cxd2880_read_block_err_t2.exit_crit_edge: ; preds = %if.then201
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t2.exit

if.end.i155:                                      ; preds = %if.then201
  %diver_mode.i153 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 3
  %357 = ptrtoint ptr %diver_mode.i153 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %diver_mode.i153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %358)
  %cmp.i154 = icmp eq i32 %358, 2
  br i1 %cmp.i154, label %if.end.i155.cxd2880_read_block_err_t2.exit_crit_edge, label %if.end5.i158

if.end.i155.cxd2880_read_block_err_t2.exit_crit_edge: ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t2.exit

if.end5.i158:                                     ; preds = %if.end.i155
  %state.i156 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 22
  %359 = ptrtoint ptr %state.i156 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %state.i156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %360)
  %cmp6.not.i157 = icmp eq i32 %360, 2
  br i1 %cmp6.not.i157, label %if.end8.i161, label %if.end5.i158.cxd2880_read_block_err_t2.exit_crit_edge

if.end5.i158.cxd2880_read_block_err_t2.exit_crit_edge: ; preds = %if.end5.i158
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t2.exit

if.end8.i161:                                     ; preds = %if.end5.i158
  %sys.i159 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 25
  %361 = ptrtoint ptr %sys.i159 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %sys.i159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %362)
  %cmp9.not.i160 = icmp eq i32 %362, 2
  br i1 %cmp9.not.i160, label %if.end11.i166, label %if.end8.i161.cxd2880_read_block_err_t2.exit_crit_edge

if.end8.i161.cxd2880_read_block_err_t2.exit_crit_edge: ; preds = %if.end8.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t2.exit

if.end11.i166:                                    ; preds = %if.end8.i161
  %io.i162 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %1, i32 0, i32 1
  %363 = ptrtoint ptr %io.i162 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %io.i162, align 4
  %write_reg.i163 = getelementptr inbounds %struct.cxd2880_io, ptr %364, i32 0, i32 2
  %365 = ptrtoint ptr %write_reg.i163 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %write_reg.i163, align 4
  %call.i164 = call i32 %366(ptr noundef %364, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool13.not.i165 = icmp eq i32 %call.i164, 0
  br i1 %tobool13.not.i165, label %if.end15.i169, label %if.end11.i166.cxd2880_read_block_err_t2.exit_crit_edge

if.end11.i166.cxd2880_read_block_err_t2.exit_crit_edge: ; preds = %if.end11.i166
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t2.exit

if.end15.i169:                                    ; preds = %if.end11.i166
  %367 = ptrtoint ptr %io.i162 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %io.i162, align 4
  %369 = ptrtoint ptr %368 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %368, align 4
  %call18.i167 = call i32 %370(ptr noundef %368, i32 noundef 1, i8 noundef zeroext 24, ptr noundef nonnull %rdata.i151, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i167)
  %tobool19.not.i168 = icmp eq i32 %call18.i167, 0
  br i1 %tobool19.not.i168, label %if.end21.i171, label %if.end15.i169.cxd2880_read_block_err_t2.exit_crit_edge

if.end15.i169.cxd2880_read_block_err_t2.exit_crit_edge: ; preds = %if.end15.i169
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t2.exit

if.end21.i171:                                    ; preds = %if.end15.i169
  %371 = ptrtoint ptr %rdata.i151 to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %rdata.i151, align 1
  %373 = and i8 %372, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %373)
  %cmp22.i170 = icmp eq i8 %373, 0
  br i1 %cmp22.i170, label %if.end21.i171.cxd2880_read_block_err_t2.exit_crit_edge, label %if.end25.i179

if.end21.i171.cxd2880_read_block_err_t2.exit_crit_edge: ; preds = %if.end21.i171
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t2.exit

if.end25.i179:                                    ; preds = %if.end21.i171
  %374 = ptrtoint ptr %353 to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %353, align 1
  %conv27.i172 = zext i8 %375 to i32
  %shl.i173 = shl nuw nsw i32 %conv27.i172, 8
  %376 = ptrtoint ptr %355 to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %355, align 1
  %conv29.i174 = zext i8 %377 to i32
  %or.i175 = or i32 %shl.i173, %conv29.i174
  %378 = ptrtoint ptr %io.i162 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %io.i162, align 4
  %write_reg31.i176 = getelementptr inbounds %struct.cxd2880_io, ptr %379, i32 0, i32 2
  %380 = ptrtoint ptr %write_reg31.i176 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %write_reg31.i176, align 4
  %call33.i177 = call i32 %381(ptr noundef %379, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i177)
  %tobool34.not.i178 = icmp eq i32 %call33.i177, 0
  br i1 %tobool34.not.i178, label %if.end36.i182, label %if.end25.i179.cxd2880_read_block_err_t2.exit_crit_edge

if.end25.i179.cxd2880_read_block_err_t2.exit_crit_edge: ; preds = %if.end25.i179
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t2.exit

if.end36.i182:                                    ; preds = %if.end25.i179
  %382 = ptrtoint ptr %io.i162 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %io.i162, align 4
  %384 = ptrtoint ptr %383 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %383, align 4
  %call41.i180 = call i32 %385(ptr noundef %383, i32 noundef 1, i8 noundef zeroext -36, ptr noundef nonnull %rdata.i151, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i180)
  %tobool42.not.i181 = icmp eq i32 %call41.i180, 0
  br i1 %tobool42.not.i181, label %if.end44.i187, label %if.end36.i182.cxd2880_read_block_err_t2.exit_crit_edge

if.end36.i182.cxd2880_read_block_err_t2.exit_crit_edge: ; preds = %if.end36.i182
  call void @__sanitizer_cov_trace_pc() #10
  br label %cxd2880_read_block_err_t2.exit

if.end44.i187:                                    ; preds = %if.end36.i182
  call void @__sanitizer_cov_trace_pc() #10
  %386 = ptrtoint ptr %rdata.i151 to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %rdata.i151, align 1
  %388 = and i8 %387, 15
  %and47.i183 = zext i8 %388 to i32
  %shl48.i184 = shl nuw nsw i32 1, %and47.i183
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i175, i32 %shl48.i184)
  %cmp52.i185 = icmp ugt i32 %or.i175, %shl48.i184
  %spec.select.i186 = select i1 %cmp52.i185, i32 -11, i32 0
  br label %cxd2880_read_block_err_t2.exit

cxd2880_read_block_err_t2.exit:                   ; preds = %if.end44.i187, %if.end36.i182.cxd2880_read_block_err_t2.exit_crit_edge, %if.end25.i179.cxd2880_read_block_err_t2.exit_crit_edge, %if.end21.i171.cxd2880_read_block_err_t2.exit_crit_edge, %if.end15.i169.cxd2880_read_block_err_t2.exit_crit_edge, %if.end11.i166.cxd2880_read_block_err_t2.exit_crit_edge, %if.end8.i161.cxd2880_read_block_err_t2.exit_crit_edge, %if.end5.i158.cxd2880_read_block_err_t2.exit_crit_edge, %if.end.i155.cxd2880_read_block_err_t2.exit_crit_edge, %if.then201.cxd2880_read_block_err_t2.exit_crit_edge
  %block_err.1 = phi i32 [ 0, %if.then201.cxd2880_read_block_err_t2.exit_crit_edge ], [ 0, %if.end.i155.cxd2880_read_block_err_t2.exit_crit_edge ], [ 0, %if.end21.i171.cxd2880_read_block_err_t2.exit_crit_edge ], [ %or.i175, %if.end44.i187 ], [ %or.i175, %if.end36.i182.cxd2880_read_block_err_t2.exit_crit_edge ], [ %or.i175, %if.end25.i179.cxd2880_read_block_err_t2.exit_crit_edge ], [ 0, %if.end15.i169.cxd2880_read_block_err_t2.exit_crit_edge ], [ 0, %if.end11.i166.cxd2880_read_block_err_t2.exit_crit_edge ], [ 0, %if.end8.i161.cxd2880_read_block_err_t2.exit_crit_edge ], [ 0, %if.end5.i158.cxd2880_read_block_err_t2.exit_crit_edge ]
  %block_count.1 = phi i32 [ 0, %if.then201.cxd2880_read_block_err_t2.exit_crit_edge ], [ 0, %if.end.i155.cxd2880_read_block_err_t2.exit_crit_edge ], [ 0, %if.end21.i171.cxd2880_read_block_err_t2.exit_crit_edge ], [ %shl48.i184, %if.end44.i187 ], [ 0, %if.end36.i182.cxd2880_read_block_err_t2.exit_crit_edge ], [ 0, %if.end25.i179.cxd2880_read_block_err_t2.exit_crit_edge ], [ 0, %if.end15.i169.cxd2880_read_block_err_t2.exit_crit_edge ], [ 0, %if.end11.i166.cxd2880_read_block_err_t2.exit_crit_edge ], [ 0, %if.end8.i161.cxd2880_read_block_err_t2.exit_crit_edge ], [ 0, %if.end5.i158.cxd2880_read_block_err_t2.exit_crit_edge ]
  %retval.0.i188 = phi i32 [ -22, %if.then201.cxd2880_read_block_err_t2.exit_crit_edge ], [ -22, %if.end.i155.cxd2880_read_block_err_t2.exit_crit_edge ], [ -11, %if.end21.i171.cxd2880_read_block_err_t2.exit_crit_edge ], [ %spec.select.i186, %if.end44.i187 ], [ %call41.i180, %if.end36.i182.cxd2880_read_block_err_t2.exit_crit_edge ], [ %call33.i177, %if.end25.i179.cxd2880_read_block_err_t2.exit_crit_edge ], [ %call18.i167, %if.end15.i169.cxd2880_read_block_err_t2.exit_crit_edge ], [ %call.i164, %if.end11.i166.cxd2880_read_block_err_t2.exit_crit_edge ], [ -22, %if.end8.i161.cxd2880_read_block_err_t2.exit_crit_edge ], [ -22, %if.end5.i158.cxd2880_read_block_err_t2.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %rdata.i151) #8
  br label %if.end208

if.end208:                                        ; preds = %cxd2880_read_block_err_t2.exit, %cxd2880_read_block_err_t.exit
  %spi_mutex202.sink = phi ptr [ %spi_mutex202, %cxd2880_read_block_err_t2.exit ], [ %spi_mutex193, %cxd2880_read_block_err_t.exit ]
  %block_err.2 = phi i32 [ %block_err.1, %cxd2880_read_block_err_t2.exit ], [ %block_err.0, %cxd2880_read_block_err_t.exit ]
  %block_count.2 = phi i32 [ %block_count.1, %cxd2880_read_block_err_t2.exit ], [ %block_count.0, %cxd2880_read_block_err_t.exit ]
  %ret.2 = phi i32 [ %retval.0.i188, %cxd2880_read_block_err_t2.exit ], [ %retval.0.i150, %cxd2880_read_block_err_t.exit ]
  %389 = ptrtoint ptr %spi_mutex202.sink to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %spi_mutex202.sink, align 4
  call void @mutex_unlock(ptr noundef %390) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool209.not = icmp eq i32 %ret.2, 0
  %block_error211 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48
  %391 = ptrtoint ptr %block_error211 to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 1, ptr %block_error211, align 2
  %stat214 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  br i1 %tobool209.not, label %if.then210, label %if.else233

if.then210:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  %392 = ptrtoint ptr %stat214 to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 3, ptr %stat214, align 1
  %conv217 = zext i32 %block_err.2 to i64
  %393 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_loadN_noabort(i32 %394, i32 8)
  %395 = load i64, ptr %393, align 1
  %add221 = add i64 %395, %conv217
  store i64 %add221, ptr %393, align 1
  %block_count222 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49
  %396 = ptrtoint ptr %block_count222 to i32
  call void @__asan_store1_noabort(i32 %396)
  store i8 1, ptr %block_count222, align 1
  %stat225 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %397 = ptrtoint ptr %stat225 to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 3, ptr %stat225, align 1
  %conv228 = zext i32 %block_count.2 to i64
  %398 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %399 = ptrtoint ptr %398 to i32
  call void @__asan_loadN_noabort(i32 %399, i32 8)
  %400 = load i64, ptr %398, align 1
  %add232 = add i64 %400, %conv228
  store i64 %add232, ptr %398, align 1
  br label %cleanup

if.else233:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #10
  %401 = ptrtoint ptr %stat214 to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 0, ptr %stat214, align 1
  %block_count240 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49
  %402 = ptrtoint ptr %block_count240 to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 1, ptr %block_count240, align 1
  %stat243 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %403 = ptrtoint ptr %stat243 to i32
  call void @__asan_store1_noabort(i32 %403)
  store i8 0, ptr %stat243, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2880_get_stats.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2880_get_stats, %if.then258)) #8
          to label %cleanup [label %if.then258], !srcloc !333

if.then258:                                       ; preds = %if.else233
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxd2880_get_stats.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.135, i32 noundef %ret.2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then258, %if.else233, %if.then210, %if.then185.cleanup_crit_edge, %if.end181.cleanup_crit_edge, %if.then103.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.then4, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog2(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_check_l1post_valid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_data_plp_error(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_active_plp(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_l1_post(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_bbheader(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slvt_freeze_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_snr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_snr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_packet_error_number(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_packet_error_number(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !203, !204, !205, !207, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !225, !227, !228, !230, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !248, !250, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !308, !309, !310, !312, !313, !315, !317, !318, !319, !321, !322}
!llvm.module.flags = !{!324, !325, !326, !327, !328, !329, !330, !331}
!llvm.ident = !{!332}

!0 = !{ptr @cxd2880_attach.priv, !1, !"priv", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1882, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1886, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cxd2880_attach._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @cxd2880_attach._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1905, i32 3}
!10 = !{ptr @cxd2880_attach._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @cxd2880_attach._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1913, i32 3}
!14 = !{ptr @cxd2880_attach._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cxd2880_attach._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1920, i32 3}
!18 = !{ptr @cxd2880_attach._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cxd2880_attach._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1927, i32 3}
!22 = !{ptr @cxd2880_attach._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @cxd2880_attach._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1934, i32 3}
!26 = !{ptr @cxd2880_attach._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cxd2880_attach._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1942, i32 3}
!30 = !{ptr @cxd2880_attach._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cxd2880_attach._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1948, i32 2}
!34 = !{ptr @cxd2880_attach._entry.21, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cxd2880_attach._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.24, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__ksymtab_cxd2880_attach, !38, !"__ksymtab_cxd2880_attach", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1953, i32 1}
!39 = !{ptr @__UNIQUE_ID_description330, !40, !"__UNIQUE_ID_description330", i1 false, i1 false}
!40 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1955, i32 1}
!41 = !{ptr @__UNIQUE_ID_author331, !42, !"__UNIQUE_ID_author331", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1956, i32 1}
!43 = !{ptr @__UNIQUE_ID_file332, !44, !"__UNIQUE_ID_file332", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1957, i32 1}
!45 = !{ptr @__UNIQUE_ID_license333, !44, !"__UNIQUE_ID_license333", i1 false, i1 false}
!46 = !{ptr @cxd2880_dvbt_t2_ops, !47, !"cxd2880_dvbt_t2_ops", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1833, i32 32}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 480, i32 3}
!50 = !{ptr @cxd2880_release._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cxd2880_release._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 494, i32 3}
!54 = !{ptr @cxd2880_init._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cxd2880_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 513, i32 4}
!58 = !{ptr @cxd2880_init._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cxd2880_init._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 520, i32 3}
!62 = !{ptr @cxd2880_init._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cxd2880_init._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 529, i32 3}
!66 = !{ptr @cxd2880_init._entry.33, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cxd2880_init._entry_ptr.35, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 534, i32 2}
!70 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cxd2880_init.__UNIQUE_ID_ddebug292, !69, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!72 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 545, i32 3}
!75 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @cxd2880_sleep._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @cxd2880_sleep._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 555, i32 2}
!80 = !{ptr @cxd2880_sleep.__UNIQUE_ID_ddebug293, !79, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!81 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1390, i32 3}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @cxd2880_tune._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @cxd2880_tune._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1397, i32 4}
!89 = !{ptr @cxd2880_tune._entry.45, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @cxd2880_tune._entry_ptr.47, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1042, i32 3}
!93 = !{ptr @cxd2880_set_frontend._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @cxd2880_set_frontend._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1090, i32 2}
!97 = !{ptr @cxd2880_set_frontend._entry.49, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @cxd2880_set_frontend._entry_ptr.51, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1109, i32 3}
!101 = !{ptr @cxd2880_set_frontend._entry.52, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @cxd2880_set_frontend._entry_ptr.54, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1115, i32 2}
!105 = !{ptr @cxd2880_set_frontend._entry.55, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @cxd2880_set_frontend._entry_ptr.57, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1808, i32 3}
!109 = !{ptr @cxd2880_get_frontend._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cxd2880_get_frontend._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1812, i32 2}
!113 = !{ptr @cxd2880_get_frontend.__UNIQUE_ID_ddebug329, !112, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!114 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1420, i32 3}
!117 = !{ptr @cxd2880_get_frontend_t._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @cxd2880_get_frontend_t._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1440, i32 4}
!121 = !{ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug306, !120, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!122 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1458, i32 4}
!125 = !{ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug307, !124, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!126 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1465, i32 3}
!129 = !{ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug308, !128, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!130 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1487, i32 4}
!133 = !{ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug309, !132, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!134 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.70, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1510, i32 4}
!137 = !{ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug310, !136, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!138 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.72, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1532, i32 4}
!141 = !{ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug311, !140, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!142 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1548, i32 4}
!145 = !{ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug312, !144, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!146 = !{ptr @.str.75, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1557, i32 3}
!149 = !{ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug313, !148, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!150 = !{ptr @.str.77, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1573, i32 4}
!153 = !{ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug314, !152, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!154 = !{ptr @.str.79, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.80, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1578, i32 3}
!157 = !{ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug315, !156, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!158 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1591, i32 3}
!161 = !{ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug316, !160, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!162 = !{ptr @.str.83, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1602, i32 3}
!165 = !{ptr @cxd2880_get_frontend_t.__UNIQUE_ID_ddebug317, !164, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!166 = !{ptr @.str.85, !164, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.86, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1621, i32 3}
!169 = !{ptr @cxd2880_get_frontend_t2._entry, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @cxd2880_get_frontend_t2._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.87, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1652, i32 4}
!173 = !{ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug318, !172, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!174 = !{ptr @.str.88, !172, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.89, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1680, i32 4}
!177 = !{ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug319, !176, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!178 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.91, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1687, i32 3}
!181 = !{ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug320, !180, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!182 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.93, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1717, i32 4}
!185 = !{ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug321, !184, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!186 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.95, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1722, i32 3}
!189 = !{ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug322, !188, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!190 = !{ptr @.str.96, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.97, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1746, i32 4}
!193 = !{ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug323, !192, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!194 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.99, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1751, i32 3}
!197 = !{ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug324, !196, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!198 = !{ptr @.str.100, !196, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug325, !200, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!200 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1767, i32 4}
!201 = !{ptr @.str.101, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1772, i32 3}
!203 = !{ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug326, !202, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!204 = !{ptr @.str.102, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug327, !206, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!206 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1785, i32 3}
!207 = !{ptr @cxd2880_get_frontend_t2.__UNIQUE_ID_ddebug328, !208, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!208 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1796, i32 3}
!209 = !{ptr @.str.103, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1313, i32 3}
!211 = !{ptr @cxd2880_read_status._entry, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @cxd2880_read_status._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1334, i32 4}
!215 = !{ptr @cxd2880_read_status._entry.104, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @cxd2880_read_status._entry_ptr.106, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1341, i32 4}
!219 = !{ptr @cxd2880_read_status._entry.107, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @cxd2880_read_status._entry_ptr.109, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1355, i32 2}
!223 = !{ptr @cxd2880_read_status.__UNIQUE_ID_ddebug305, !222, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!224 = !{ptr @.str.111, !222, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @cxd2880_read_status._entry.112, !226, !"_entry", i1 false, i1 false}
!226 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1370, i32 4}
!227 = !{ptr @cxd2880_read_status._entry_ptr.113, !226, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @cxd2880_set_ber_per_period_t.cr_table, !229, !"cr_table", i1 false, i1 false}
!229 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 693, i32 19}
!230 = !{ptr @cxd2880_set_ber_per_period_t.denominator_tbl, !231, !"denominator_tbl", i1 false, i1 false}
!231 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 694, i32 19}
!232 = !{ptr @.str.114, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 697, i32 3}
!234 = !{ptr @cxd2880_set_ber_per_period_t._entry, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @cxd2880_set_ber_per_period_t._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.116, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 707, i32 3}
!238 = !{ptr @cxd2880_set_ber_per_period_t._entry.115, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @cxd2880_set_ber_per_period_t._entry_ptr.117, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.118, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1272, i32 3}
!242 = !{ptr @cxd2880_check_l1post_plp._entry, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @cxd2880_check_l1post_plp._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @cxd2880_set_ber_per_period_t2.gi_tbl, !245, !"gi_tbl", i1 false, i1 false}
!245 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 810, i32 19}
!246 = !{ptr @cxd2880_set_ber_per_period_t2.n_tbl, !247, !"n_tbl", i1 false, i1 false}
!247 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 811, i32 18}
!248 = !{ptr @cxd2880_set_ber_per_period_t2.mode_tbl, !249, !"mode_tbl", i1 false, i1 false}
!249 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 812, i32 18}
!250 = !{ptr @cxd2880_set_ber_per_period_t2.kbch_tbl, !251, !"kbch_tbl", i1 false, i1 false}
!251 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 813, i32 19}
!252 = !{ptr @.str.119, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 819, i32 3}
!254 = !{ptr @cxd2880_set_ber_per_period_t2._entry, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @cxd2880_set_ber_per_period_t2._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.121, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 828, i32 3}
!258 = !{ptr @cxd2880_set_ber_per_period_t2._entry.120, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @cxd2880_set_ber_per_period_t2._entry_ptr.122, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.124, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 835, i32 3}
!262 = !{ptr @cxd2880_set_ber_per_period_t2._entry.123, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @cxd2880_set_ber_per_period_t2._entry_ptr.125, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.127, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 841, i32 3}
!266 = !{ptr @cxd2880_set_ber_per_period_t2._entry.126, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @cxd2880_set_ber_per_period_t2._entry_ptr.128, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.130, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 909, i32 3}
!270 = !{ptr @cxd2880_set_ber_per_period_t2._entry.129, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @cxd2880_set_ber_per_period_t2._entry_ptr.131, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.133, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 928, i32 3}
!274 = !{ptr @cxd2880_set_ber_per_period_t2._entry.132, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @cxd2880_set_ber_per_period_t2._entry_ptr.134, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.135, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1131, i32 3}
!278 = !{ptr @cxd2880_get_stats._entry, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @cxd2880_get_stats._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.136, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1186, i32 4}
!282 = !{ptr @cxd2880_get_stats.__UNIQUE_ID_ddebug302, !281, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!283 = !{ptr @.str.137, !281, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.138, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1223, i32 4}
!286 = !{ptr @cxd2880_get_stats.__UNIQUE_ID_ddebug303, !285, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!287 = !{ptr @.str.139, !285, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.140, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 1257, i32 4}
!290 = !{ptr @cxd2880_get_stats.__UNIQUE_ID_ddebug304, !289, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!291 = !{ptr @.str.141, !289, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @cxd2880_post_bit_err_t2.n_bch_bits_lookup, !293, !"n_bch_bits_lookup", i1 false, i1 false}
!293 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 268, i32 19}
!294 = !{ptr @.str.142, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 569, i32 3}
!296 = !{ptr @cxd2880_read_signal_strength._entry, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @cxd2880_read_signal_strength._entry_ptr, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.143, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 581, i32 3}
!300 = !{ptr @cxd2880_read_signal_strength.__UNIQUE_ID_ddebug294, !299, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!301 = !{ptr @.str.144, !299, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.145, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 598, i32 3}
!304 = !{ptr @cxd2880_read_signal_strength.__UNIQUE_ID_ddebug299, !303, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!305 = !{ptr @.str.146, !303, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.147, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 611, i32 3}
!308 = !{ptr @cxd2880_read_snr._entry, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @cxd2880_read_snr._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @cxd2880_read_snr._entry.148, !311, !"_entry", i1 false, i1 false}
!311 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 626, i32 3}
!312 = !{ptr @cxd2880_read_snr._entry_ptr.149, !311, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @cxd2880_read_snr.__UNIQUE_ID_ddebug300, !314, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!314 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 637, i32 3}
!315 = !{ptr @.str.150, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 649, i32 3}
!317 = !{ptr @cxd2880_read_ucblocks._entry, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @cxd2880_read_ucblocks._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @cxd2880_read_ucblocks._entry.151, !320, !"_entry", i1 false, i1 false}
!320 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 664, i32 3}
!321 = !{ptr @cxd2880_read_ucblocks._entry_ptr.152, !320, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @cxd2880_read_ucblocks.__UNIQUE_ID_ddebug301, !323, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!323 = !{!"../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c", i32 671, i32 3}
!324 = !{i32 1, !"wchar_size", i32 2}
!325 = !{i32 1, !"min_enum_size", i32 4}
!326 = !{i32 8, !"branch-target-enforcement", i32 0}
!327 = !{i32 8, !"sign-return-address", i32 0}
!328 = !{i32 8, !"sign-return-address-all", i32 0}
!329 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!330 = !{i32 7, !"uwtable", i32 1}
!331 = !{i32 7, !"frame-pointer", i32 2}
!332 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!333 = !{i64 2148378066, i64 2148378071, i64 2148378084, i64 2148378128, i64 2148378162, i64 2148378183}
!334 = !{!"auto-init"}
