; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cx24120.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cx24120.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx24120_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_cx24120_attach\09\09\09\09"
module asm "\09.long\09__crc_cx24120_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx24120_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cx24120_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cx24120_attach:\09\09\09\09\09"
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
%struct.cx24120_modfec_table = type { i32, i32, i32, i8 }
%struct.cx24120_modfec = type { i32, i32, i32, i8 }
%struct.cx24120_clock_ratios_table = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cx24120_state = type { ptr, ptr, %struct.dvb_frontend, i8, i8, i8, %struct.cx24120_tuning, %struct.cx24120_tuning, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.cx24120_tuning = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cx24120_cmd = type { i8, i8, [30 x i8] }
%struct.cx24120_config = type { i8, i32, %struct.cx24120_initial_mpeg_config, ptr, i16 }
%struct.cx24120_initial_mpeg_config = type { i8, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@cx24120_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016cx24120: Conexant cx24120/cx24118 - DVBS/S2 Satellite demod/tuner\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx24120_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/cx24120.c\00", [58 x i8] zeroinitializer }, align 32
@cx24120_attach._entry_ptr = internal global ptr @cx24120_attach._entry, section ".printk_index", align 4
@cx24120_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013cx24120: ### ERROR: Unable to allocate memory for cx24120_state\0A\00", [61 x i8] zeroinitializer }, align 32
@cx24120_attach._entry_ptr.5 = internal global ptr @cx24120_attach._entry.3, section ".printk_index", align 4
@cx24120_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016cx24120: Demod cx24120 rev. 0x07 detected.\0A\00", [50 x i8] zeroinitializer }, align 32
@cx24120_attach._entry_ptr.8 = internal global ptr @cx24120_attach._entry.6, section ".printk_index", align 4
@cx24120_attach._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016cx24120: Demod cx24120 rev. 0x05 detected.\0A\00", [50 x i8] zeroinitializer }, align 32
@cx24120_attach._entry_ptr.11 = internal global ptr @cx24120_attach._entry.9, section ".printk_index", align 4
@cx24120_attach._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013cx24120: ### ERROR: Unsupported demod revision: 0x%x detected.\0A\00", [62 x i8] zeroinitializer }, align 32
@cx24120_attach._entry_ptr.14 = internal global ptr @cx24120_attach._entry.12, section ".printk_index", align 4
@cx24120_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX24120/CX24118\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1011000, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1342179071 }, [8 x i8] c"\05\06\00\00\00\00\00\00", ptr null, ptr @cx24120_release, ptr null, ptr @cx24120_init, ptr @cx24120_sleep, ptr null, ptr null, ptr null, ptr @cx24120_tune, ptr @cx24120_get_algo, ptr @cx24120_set_frontend, ptr null, ptr @cx24120_get_frontend, ptr @cx24120_read_status, ptr @cx24120_read_ber, ptr @cx24120_read_signal_strength, ptr @cx24120_read_snr, ptr @cx24120_read_ucblocks, ptr null, ptr @cx24120_send_diseqc_msg, ptr null, ptr @cx24120_diseqc_send_burst, ptr @cx24120_set_tone, ptr @cx24120_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@cx24120_attach._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cx24120: Conexant cx24120/cx24118 attached.\0A\00", [49 x i8] zeroinitializer }, align 32
@cx24120_attach._entry_ptr.17 = internal global ptr @cx24120_attach._entry.15, section ".printk_index", align 4
@__kstrtab_cx24120_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx24120_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cx24120_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx24120_attach to i32), ptr @__kstrtab_cx24120_attach, ptr @__kstrtabns_cx24120_attach }, section "___ksymtab+cx24120_attach", align 4
@__UNIQUE_ID_description336 = internal constant [78 x i8] c"cx24120.description=DVB Frontend module for Conexant CX24120/CX24118 hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_author337 = internal constant [28 x i8] c"cx24120.author=Jemma Denson\00", section ".modinfo", align 1
@__UNIQUE_ID_file338 = internal constant [49 x i8] c"cx24120.file=drivers/media/dvb-frontends/cx24120\00", section ".modinfo", align 1
@__UNIQUE_ID_license339 = internal constant [20 x i8] c"cx24120.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cx24120_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013cx24120: ### ERROR: Read error: reg=0x%02x, ret=%i)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx24120_readreg\00", [16 x i8] zeroinitializer }, align 32
@cx24120_readreg._entry_ptr = internal global ptr @cx24120_readreg._entry, section ".printk_index", align 4
@cx24120_readreg.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx24120\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg=0x%02x; data=0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@cx24120_release.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 1, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx24120_release\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Clear state structure\0A\00", [41 x i8] zeroinitializer }, align 32
@cx24120_init.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 1, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx24120_init\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"requesting firmware (%s) to download...\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dvb-fe-cx24120-1.20.58.2.fw\00", [36 x i8] zeroinitializer }, align 32
@cx24120_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.2, i32 1321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013cx24120: ### ERROR: Could not load firmware (%s): %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cx24120_init._entry_ptr = internal global ptr @cx24120_init._entry, section ".printk_index", align 4
@cx24120_init.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.24, ptr @.str.2, ptr @.str.28, i8 1, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Firmware found, size %d bytes (%02x %02x .. %02x %02x)\0A\00", [40 x i8] zeroinitializer }, align 32
@cx24120_init.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.24, ptr @.str.2, ptr @.str.29, i8 1, i8 82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Firmware uploaded successfully\0A\00", [32 x i8] zeroinitializer }, align 32
@cx24120_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.2, i32 1358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013cx24120: ### ERROR: Firmware upload failed. Last byte returned=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@cx24120_init._entry_ptr.32 = internal global ptr @cx24120_init._entry.30, section ".printk_index", align 4
@cx24120_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.24, ptr @.str.2, i32 1374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013cx24120: ### ERROR: Error tuner start! :(\0A\00", [51 x i8] zeroinitializer }, align 32
@cx24120_init._entry_ptr.35 = internal global ptr @cx24120_init._entry.33, section ".printk_index", align 4
@cx24120_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.24, ptr @.str.2, i32 1381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013cx24120: ### ERROR: Error set VCO! :(\0A\00", [55 x i8] zeroinitializer }, align 32
@cx24120_init._entry_ptr.38 = internal global ptr @cx24120_init._entry.36, section ".printk_index", align 4
@cx24120_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.24, ptr @.str.2, i32 1402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013cx24120: ### ERROR: Error set bandwidth!\0A\00", [52 x i8] zeroinitializer }, align 32
@cx24120_init._entry_ptr.41 = internal global ptr @cx24120_init._entry.39, section ".printk_index", align 4
@cx24120_init.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.24, ptr @.str.2, ptr @.str.42, i8 1, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Reset-readreg 0xba: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@cx24120_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.24, ptr @.str.2, i32 1409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013cx24120: ### ERROR: Error initialising tuner!\0A\00", [47 x i8] zeroinitializer }, align 32
@cx24120_init._entry_ptr.45 = internal global ptr @cx24120_init._entry.43, section ".printk_index", align 4
@cx24120_init.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.24, ptr @.str.2, ptr @.str.46, i8 1, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Tuner initialised correctly.\0A\00", [34 x i8] zeroinitializer }, align 32
@cx24120_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.24, ptr @.str.2, i32 1421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013cx24120: ### ERROR: Error initialising mpeg output. :(\0A\00", [38 x i8] zeroinitializer }, align 32
@cx24120_init._entry_ptr.49 = internal global ptr @cx24120_init._entry.47, section ".printk_index", align 4
@cx24120_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.24, ptr @.str.2, i32 1432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013cx24120: ### ERROR: Error setting ber window\0A\00", [48 x i8] zeroinitializer }, align 32
@cx24120_init._entry_ptr.52 = internal global ptr @cx24120_init._entry.50, section ".printk_index", align 4
@cx24120_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.24, ptr @.str.2, i32 1446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016cx24120: FW version %i.%i.%i.%i\0A\00", [61 x i8] zeroinitializer }, align 32
@cx24120_init._entry_ptr.55 = internal global ptr @cx24120_init._entry.53, section ".printk_index", align 4
@cx24120_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013cx24120: ### ERROR: Write error: i2c_write error(err == %i, 0x%02x: 0x%02x)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24120_writereg\00", [47 x i8] zeroinitializer }, align 32
@cx24120_writereg._entry_ptr = internal global ptr @cx24120_writereg._entry, section ".printk_index", align 4
@cx24120_writereg.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.57, ptr @.str.2, ptr @.str.21, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cx24120_writeregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013cx24120: ### ERROR: i2c_write error(err == %i, 0x%02x)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx24120_writeregs\00", [46 x i8] zeroinitializer }, align 32
@cx24120_writeregs._entry_ptr = internal global ptr @cx24120_writeregs._entry, section ".printk_index", align 4
@cx24120_writeregs.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg=0x%02x; data=%*ph\0A\00", [41 x i8] zeroinitializer }, align 32
@cx24120_message_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013cx24120: ### ERROR: Error sending message to firmware\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx24120_message_send\00", [43 x i8] zeroinitializer }, align 32
@cx24120_message_send._entry_ptr = internal global ptr @cx24120_message_send._entry, section ".printk_index", align 4
@cx24120_message_send.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sent message 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@cx24120_set_vco.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 1, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx24120_set_vco\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"xtal=%d, vco=%d, inv_vco=%lld\0A\00", [33 x i8] zeroinitializer }, align 32
@cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 0, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cx24120_msg_mpeg_output_global_config\00", [58 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to %s MPEG output\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.66, ptr @.str.2, ptr @.str.70, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MPEG output %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@cx24120_tune.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.73, ptr @.str.2, ptr @.str.74, i8 1, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cx24120_tune\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"(%d)\0A\00", [26 x i8] zeroinitializer }, align 32
@cx24120_set_frontend.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.75, ptr @.str.2, ptr @.str.76, i8 1, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx24120_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DVB-S2\0A\00", [24 x i8] zeroinitializer }, align 32
@cx24120_set_frontend.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.75, ptr @.str.2, ptr @.str.77, i8 1, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DVB-S\0A\00", [25 x i8] zeroinitializer }, align 32
@cx24120_set_frontend.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.75, ptr @.str.2, ptr @.str.78, i8 1, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"delivery system(%d) not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@cx24120_set_frontend.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.75, ptr @.str.2, ptr @.str.79, i8 1, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"delsys      = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@cx24120_set_frontend.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.75, ptr @.str.2, ptr @.str.80, i8 1, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"modulation  = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@cx24120_set_frontend.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.75, ptr @.str.2, ptr @.str.81, i8 1, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"frequency   = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@cx24120_set_frontend.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.75, ptr @.str.2, ptr @.str.82, i8 1, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pilot       = %d (val = 0x%02x)\0A\00", [63 x i8] zeroinitializer }, align 32
@cx24120_set_frontend.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.75, ptr @.str.2, ptr @.str.83, i8 1, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"symbol_rate = %d (clkdiv/ratediv = 0x%02x/0x%02x)\0A\00", [45 x i8] zeroinitializer }, align 32
@cx24120_set_frontend.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.75, ptr @.str.2, ptr @.str.84, i8 1, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"FEC         = %d (mask/val = 0x%02x/0x%02x)\0A\00", [51 x i8] zeroinitializer }, align 32
@cx24120_set_frontend.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.75, ptr @.str.2, ptr @.str.85, i8 1, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Inversion   = %d (val = 0x%02x)\0A\00", [63 x i8] zeroinitializer }, align 32
@cx24120_set_inversion.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.86, ptr @.str.2, ptr @.str.74, i8 0, i8 -10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx24120_set_inversion\00", [42 x i8] zeroinitializer }, align 32
@cx24120_set_fec.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx24120_set_fec\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(0x%02x,0x%02x)\0A\00", [47 x i8] zeroinitializer }, align 32
@modfec_table = internal constant { [20 x %struct.cx24120_modfec_table], [64 x i8] } { [20 x %struct.cx24120_modfec_table] [%struct.cx24120_modfec_table { i32 5, i32 0, i32 1, i8 46 }, %struct.cx24120_modfec_table { i32 5, i32 0, i32 2, i8 47 }, %struct.cx24120_modfec_table { i32 5, i32 0, i32 3, i8 48 }, %struct.cx24120_modfec_table { i32 5, i32 0, i32 5, i8 49 }, %struct.cx24120_modfec_table { i32 5, i32 0, i32 6, i8 50 }, %struct.cx24120_modfec_table { i32 5, i32 0, i32 7, i8 51 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 1, i8 4 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 10, i8 5 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 2, i8 6 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 3, i8 7 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 4, i8 8 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 5, i8 9 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 8, i8 10 }, %struct.cx24120_modfec_table { i32 6, i32 0, i32 11, i8 11 }, %struct.cx24120_modfec_table { i32 6, i32 9, i32 10, i8 12 }, %struct.cx24120_modfec_table { i32 6, i32 9, i32 2, i8 13 }, %struct.cx24120_modfec_table { i32 6, i32 9, i32 3, i8 14 }, %struct.cx24120_modfec_table { i32 6, i32 9, i32 5, i8 15 }, %struct.cx24120_modfec_table { i32 6, i32 9, i32 8, i8 16 }, %struct.cx24120_modfec_table { i32 6, i32 9, i32 11, i8 17 }], [64 x i8] zeroinitializer }, align 32
@cx24120_set_pilot.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.89, ptr @.str.2, ptr @.str.74, i8 1, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx24120_set_pilot\00", [46 x i8] zeroinitializer }, align 32
@cx24120_set_symbolrate.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.90, ptr @.str.2, ptr @.str.74, i8 1, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx24120_set_symbolrate\00", [41 x i8] zeroinitializer }, align 32
@cx24120_get_frontend.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.91, ptr @.str.2, ptr @.str.92, i8 1, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx24120_get_frontend\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cx24120_get_frontend.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.91, ptr @.str.2, ptr @.str.93, i8 1, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"frequency = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@cx24120_get_fec.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx24120_get_fec\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"raw fec = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@modfec_lookup_table = internal constant { [21 x %struct.cx24120_modfec], [80 x i8] } { [21 x %struct.cx24120_modfec] [%struct.cx24120_modfec { i32 5, i32 0, i32 1, i8 1 }, %struct.cx24120_modfec { i32 5, i32 0, i32 2, i8 2 }, %struct.cx24120_modfec { i32 5, i32 0, i32 3, i8 3 }, %struct.cx24120_modfec { i32 5, i32 0, i32 4, i8 4 }, %struct.cx24120_modfec { i32 5, i32 0, i32 5, i8 5 }, %struct.cx24120_modfec { i32 5, i32 0, i32 6, i8 6 }, %struct.cx24120_modfec { i32 5, i32 0, i32 7, i8 7 }, %struct.cx24120_modfec { i32 6, i32 0, i32 1, i8 4 }, %struct.cx24120_modfec { i32 6, i32 0, i32 10, i8 5 }, %struct.cx24120_modfec { i32 6, i32 0, i32 2, i8 6 }, %struct.cx24120_modfec { i32 6, i32 0, i32 3, i8 7 }, %struct.cx24120_modfec { i32 6, i32 0, i32 4, i8 8 }, %struct.cx24120_modfec { i32 6, i32 0, i32 5, i8 9 }, %struct.cx24120_modfec { i32 6, i32 0, i32 8, i8 10 }, %struct.cx24120_modfec { i32 6, i32 0, i32 11, i8 11 }, %struct.cx24120_modfec { i32 6, i32 9, i32 10, i8 12 }, %struct.cx24120_modfec { i32 6, i32 9, i32 2, i8 13 }, %struct.cx24120_modfec { i32 6, i32 9, i32 3, i8 14 }, %struct.cx24120_modfec { i32 6, i32 9, i32 5, i8 15 }, %struct.cx24120_modfec { i32 6, i32 9, i32 8, i8 16 }, %struct.cx24120_modfec { i32 6, i32 9, i32 11, i8 17 }], [80 x i8] zeroinitializer }, align 32
@cx24120_get_fec.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.94, ptr @.str.2, ptr @.str.96, i8 0, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"couldn't find fec!\0A\00", [44 x i8] zeroinitializer }, align 32
@cx24120_get_fec.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.94, ptr @.str.2, ptr @.str.97, i8 0, i8 -49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mod(%d), fec(%d), pilot(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@cx24120_read_status.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.98, ptr @.str.2, ptr @.str.99, i8 0, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx24120_read_status\00", [44 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"status = 0x%02x\0A\00", [47 x i8] zeroinitializer }, align 32
@cx24120_get_stats.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.100, ptr @.str.2, ptr @.str.92, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx24120_get_stats\00", [46 x i8] zeroinitializer }, align 32
@cx24120_get_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.100, ptr @.str.2, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013cx24120: ### ERROR: error reading signal strength\0A\00", [43 x i8] zeroinitializer }, align 32
@cx24120_get_stats._entry_ptr = internal global ptr @cx24120_get_stats._entry, section ".printk_index", align 4
@cx24120_get_stats.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.100, ptr @.str.2, ptr @.str.102, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"signal strength from firmware = 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@cx24120_get_stats.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.100, ptr @.str.2, ptr @.str.103, i8 0, i8 -94, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read SNR index = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cx24120_get_stats.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.100, ptr @.str.2, ptr @.str.104, i8 0, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read BER index = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cx24120_get_stats.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.100, ptr @.str.2, ptr @.str.105, i8 0, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ucblocks = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@clock_ratios_table = internal constant { [33 x %struct.cx24120_clock_ratios_table], [228 x i8] } { [33 x %struct.cx24120_clock_ratios_table] [%struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 1, i32 273088, i32 254505, i32 274 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 10, i32 17272, i32 13395, i32 330 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 2, i32 24344, i32 16967, i32 367 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 3, i32 410788, i32 254505, i32 413 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 4, i32 438328, i32 254505, i32 440 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 5, i32 30464, i32 16967, i32 459 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 8, i32 487832, i32 254505, i32 490 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 0, i32 11, i32 493952, i32 254505, i32 496 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 9, i32 10, i32 328168, i32 169905, i32 494 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 9, i32 2, i32 24344, i32 11327, i32 550 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 9, i32 3, i32 410788, i32 169905, i32 618 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 9, i32 5, i32 30464, i32 11327, i32 688 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 9, i32 8, i32 487832, i32 169905, i32 735 }, %struct.cx24120_clock_ratios_table { i32 6, i32 1, i32 9, i32 11, i32 493952, i32 169905, i32 744 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 1, i32 273088, i32 260709, i32 268 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 10, i32 328168, i32 260709, i32 322 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 2, i32 121720, i32 86903, i32 358 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 3, i32 410788, i32 260709, i32 403 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 4, i32 438328, i32 260709, i32 430 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 5, i32 152320, i32 86903, i32 448 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 8, i32 487832, i32 260709, i32 479 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 0, i32 11, i32 493952, i32 260709, i32 485 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 9, i32 10, i32 328168, i32 173853, i32 483 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 9, i32 2, i32 121720, i32 57951, i32 537 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 9, i32 3, i32 410788, i32 173853, i32 604 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 9, i32 5, i32 152320, i32 57951, i32 672 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 9, i32 8, i32 487832, i32 173853, i32 718 }, %struct.cx24120_clock_ratios_table { i32 6, i32 0, i32 9, i32 11, i32 493952, i32 173853, i32 727 }, %struct.cx24120_clock_ratios_table { i32 5, i32 1, i32 0, i32 1, i32 152592, i32 152592, i32 256 }, %struct.cx24120_clock_ratios_table { i32 5, i32 1, i32 0, i32 2, i32 305184, i32 228888, i32 341 }, %struct.cx24120_clock_ratios_table { i32 5, i32 1, i32 0, i32 3, i32 457776, i32 305184, i32 384 }, %struct.cx24120_clock_ratios_table { i32 5, i32 1, i32 0, i32 5, i32 762960, i32 457776, i32 427 }, %struct.cx24120_clock_ratios_table { i32 5, i32 1, i32 0, i32 7, i32 1068144, i32 610368, i32 448 }], [228 x i8] zeroinitializer }, align 32
@cx24120_set_clock_ratios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016cx24120: Clock ratio not found - data reception in danger\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cx24120_set_clock_ratios\00", [39 x i8] zeroinitializer }, align 32
@cx24120_set_clock_ratios._entry_ptr = internal global ptr @cx24120_set_clock_ratios._entry, section ".printk_index", align 4
@cx24120_set_clock_ratios.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.107, ptr @.str.2, ptr @.str.108, i8 0, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"m=%d, n=%d; idx: %d m=%d, n=%d, rate=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@cx24120_message_sendrcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013cx24120: ### ERROR: Too many registers to read. cmd->reg = %d\00", [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx24120_message_sendrcv\00", [40 x i8] zeroinitializer }, align 32
@cx24120_message_sendrcv._entry_ptr = internal global ptr @cx24120_message_sendrcv._entry, section ".printk_index", align 4
@cx24120_calculate_ber_window.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.111, ptr @.str.2, ptr @.str.112, i8 0, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cx24120_calculate_ber_window\00", [35 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bitrate: %u, berw_usecs: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@cx24120_send_diseqc_msg.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.113, ptr @.str.2, ptr @.str.92, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx24120_send_diseqc_msg\00", [40 x i8] zeroinitializer }, align 32
@cx24120_send_diseqc_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.113, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013cx24120: ### ERROR: send 1st message(0x%x) failed\0A\00", [43 x i8] zeroinitializer }, align 32
@cx24120_send_diseqc_msg._entry_ptr = internal global ptr @cx24120_send_diseqc_msg._entry, section ".printk_index", align 4
@cx24120_send_diseqc_msg._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.113, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013cx24120: ### ERROR: send 2nd message(0x%x) failed\0A\00", [43 x i8] zeroinitializer }, align 32
@cx24120_send_diseqc_msg._entry_ptr.117 = internal global ptr @cx24120_send_diseqc_msg._entry.115, section ".printk_index", align 4
@cx24120_send_diseqc_msg.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.113, ptr @.str.2, ptr @.str.118, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"diseqc sequence sent\0A\00", [42 x i8] zeroinitializer }, align 32
@cx24120_send_diseqc_msg._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.113, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013cx24120: ### ERROR: Too long waiting for diseqc.\0A\00", [44 x i8] zeroinitializer }, align 32
@cx24120_send_diseqc_msg._entry_ptr.121 = internal global ptr @cx24120_send_diseqc_msg._entry.119, section ".printk_index", align 4
@cx24120_diseqc_send_burst.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.122, ptr @.str.2, ptr @.str.92, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx24120_diseqc_send_burst\00", [38 x i8] zeroinitializer }, align 32
@cx24120_set_tone.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.123, ptr @.str.2, ptr @.str.74, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx24120_set_tone\00", [47 x i8] zeroinitializer }, align 32
@cx24120_set_tone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.123, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cx24120: ### ERROR: Invalid tone=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@cx24120_set_tone._entry_ptr = internal global ptr @cx24120_set_tone._entry, section ".printk_index", align 4
@cx24120_set_voltage.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.125, ptr @.str.2, ptr @.str.74, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx24120_set_voltage\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.127 = internal global [9 x i64] [i64 7, i64 8, i64 17, i64 22, i64 32, i64 33, i64 34, i64 35, i64 36]
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 270, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 273, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 285, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 288, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 291, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [12 x i8] c"cx24120_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1547, i32 38 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 301, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 182, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 186, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1528, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1315, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1320, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1325, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1355, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1358, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1374, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1381, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1402, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1408, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1409, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1413, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1421, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1432, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1446, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 205, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 247, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 251, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 393, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 397, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1246, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 455, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 461, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1474, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1141, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1144, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1147, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1177, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1179, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1181, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1183, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1186, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1190, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1193, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 986, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1047, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [13 x i8] c"modfec_table\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1015, i32 42 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1082, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1108, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1504, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 1516, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 806, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [20 x i8] c"modfec_lookup_table\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 767, i32 36 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 818, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 827, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 716, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 614, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 624, i32 4 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 632, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 648, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 677, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 692, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant [19 x i8] c"clock_ratios_table\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 876, i32 48 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 941, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 954, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 409, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 853, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 554, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 571, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 587, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 594, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 601, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 492, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 514, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 517, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.504 = private constant [41 x i8] c"../drivers/media/dvb-frontends/cx24120.c\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.504, i32 537, i32 2 }
@llvm.compiler.used = appending global [157 x ptr] [ptr @__UNIQUE_ID_author337, ptr @__UNIQUE_ID_description336, ptr @__UNIQUE_ID_file338, ptr @__UNIQUE_ID_license339, ptr @__ksymtab_cx24120_attach, ptr @cx24120_attach._entry, ptr @cx24120_attach._entry.12, ptr @cx24120_attach._entry.15, ptr @cx24120_attach._entry.3, ptr @cx24120_attach._entry.6, ptr @cx24120_attach._entry.9, ptr @cx24120_attach._entry_ptr, ptr @cx24120_attach._entry_ptr.11, ptr @cx24120_attach._entry_ptr.14, ptr @cx24120_attach._entry_ptr.17, ptr @cx24120_attach._entry_ptr.5, ptr @cx24120_attach._entry_ptr.8, ptr @cx24120_get_stats._entry, ptr @cx24120_get_stats._entry_ptr, ptr @cx24120_init._entry, ptr @cx24120_init._entry.30, ptr @cx24120_init._entry.33, ptr @cx24120_init._entry.36, ptr @cx24120_init._entry.39, ptr @cx24120_init._entry.43, ptr @cx24120_init._entry.47, ptr @cx24120_init._entry.50, ptr @cx24120_init._entry.53, ptr @cx24120_init._entry_ptr, ptr @cx24120_init._entry_ptr.32, ptr @cx24120_init._entry_ptr.35, ptr @cx24120_init._entry_ptr.38, ptr @cx24120_init._entry_ptr.41, ptr @cx24120_init._entry_ptr.45, ptr @cx24120_init._entry_ptr.49, ptr @cx24120_init._entry_ptr.52, ptr @cx24120_init._entry_ptr.55, ptr @cx24120_message_send._entry, ptr @cx24120_message_send._entry_ptr, ptr @cx24120_message_sendrcv._entry, ptr @cx24120_message_sendrcv._entry_ptr, ptr @cx24120_readreg._entry, ptr @cx24120_readreg._entry_ptr, ptr @cx24120_send_diseqc_msg._entry, ptr @cx24120_send_diseqc_msg._entry.115, ptr @cx24120_send_diseqc_msg._entry.119, ptr @cx24120_send_diseqc_msg._entry_ptr, ptr @cx24120_send_diseqc_msg._entry_ptr.117, ptr @cx24120_send_diseqc_msg._entry_ptr.121, ptr @cx24120_set_clock_ratios._entry, ptr @cx24120_set_clock_ratios._entry_ptr, ptr @cx24120_set_tone._entry, ptr @cx24120_set_tone._entry_ptr, ptr @cx24120_writereg._entry, ptr @cx24120_writereg._entry_ptr, ptr @cx24120_writeregs._entry, ptr @cx24120_writeregs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @cx24120_ops, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @modfec_table, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @modfec_lookup_table, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @clock_ratios_table, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_attach._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_attach._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_attach._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_writeregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_message_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modfec_table to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @modfec_lookup_table to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_get_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_ratios_table to i32), i32 924, i32 1152, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_set_clock_ratios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_message_sendrcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_send_diseqc_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_send_diseqc_msg._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_send_diseqc_msg._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx24120_set_tone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx24120_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1152) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %error

if.end:                                           ; preds = %entry
  %config7 = getelementptr inbounds %struct.cx24120_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config7, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %call9 = tail call fastcc i32 @cx24120_readreg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext -1)
  %3 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call9, label %do.end23 [
    i32 7, label %if.end.sw.epilog_crit_edge
    i32 5, label %do.end18
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call9) #13
  br label %error

sw.epilog:                                        ; preds = %do.end18, %if.end.sw.epilog_crit_edge
  %.str.10.sink = phi ptr [ @.str.10, %do.end18 ], [ @.str.7, %if.end.sw.epilog_crit_edge ]
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.10.sink) #13
  %cold_init = getelementptr inbounds %struct.cx24120_state, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %cold_init to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cold_init, align 8
  %frontend = getelementptr inbounds %struct.cx24120_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.cx24120_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = call ptr @memcpy(ptr %ops, ptr @cx24120_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.cx24120_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  br label %cleanup

error:                                            ; preds = %do.end23, %do.end4
  tail call void @kfree(ptr noundef %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %sw.epilog
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %sw.epilog ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx24120_readreg(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  %reg.addr = alloca i8, align 1
  %buf = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #10
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #10
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %config = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %conv = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg.addr, ptr %buf1, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %12 = load i8, ptr %5, align 4
  %conv5 = zext i8 %12 to i16
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv5, ptr %arrayinit.element, align 4
  %flags6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %14 = ptrtoint ptr %flags6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags6, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %15 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len7, align 4
  %buf8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %16 = ptrtoint ptr %buf8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf, ptr %buf8, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %do.body12, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reg.addr, align 1
  %conv10 = zext i8 %20 to i32
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv10, i32 noundef %call) #13
  br label %cleanup

do.body12:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_readreg.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_readreg, %if.then17)) #10
          to label %do.end23 [label %if.then17], !srcloc !292

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %reg.addr, align 1
  %conv19 = zext i8 %24 to i32
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf, align 1
  %conv20 = zext i8 %26 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_readreg.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %conv19, i32 noundef %conv20) #10
  br label %do.end23

do.end23:                                         ; preds = %if.then17, %do.body12
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buf, align 1
  %conv24 = zext i8 %28 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %conv24, %do.end23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx24120_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_release.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_release, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !292

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_release.__UNIQUE_ID_ddebug335, ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24120_init(ptr noundef %fe) #0 align 64 {
entry:
  %cmd.i1090 = alloca %struct.cx24120_cmd, align 1
  %cmd.i1076 = alloca %struct.cx24120_cmd, align 1
  %cmd.i1072 = alloca %struct.cx24120_cmd, align 1
  %cmd.i = alloca %struct.cx24120_cmd, align 1
  %buf.i1053 = alloca [2 x i8], align 1
  %msg.i1054 = alloca %struct.i2c_msg, align 4
  %buf.i1037 = alloca [2 x i8], align 1
  %msg.i1038 = alloca %struct.i2c_msg, align 4
  %buf.i1021 = alloca [2 x i8], align 1
  %msg.i1022 = alloca %struct.i2c_msg, align 4
  %buf.i1005 = alloca [2 x i8], align 1
  %msg.i1006 = alloca %struct.i2c_msg, align 4
  %buf.i989 = alloca [2 x i8], align 1
  %msg.i990 = alloca %struct.i2c_msg, align 4
  %buf.i971 = alloca [2 x i8], align 1
  %msg.i972 = alloca %struct.i2c_msg, align 4
  %buf.i953 = alloca [2 x i8], align 1
  %msg.i954 = alloca %struct.i2c_msg, align 4
  %buf.i937 = alloca [2 x i8], align 1
  %msg.i938 = alloca %struct.i2c_msg, align 4
  %buf.i921 = alloca [2 x i8], align 1
  %msg.i922 = alloca %struct.i2c_msg, align 4
  %buf.i905 = alloca [2 x i8], align 1
  %msg.i906 = alloca %struct.i2c_msg, align 4
  %buf.i889 = alloca [2 x i8], align 1
  %msg.i890 = alloca %struct.i2c_msg, align 4
  %buf.i873 = alloca [2 x i8], align 1
  %msg.i874 = alloca %struct.i2c_msg, align 4
  %buf.i857 = alloca [2 x i8], align 1
  %msg.i858 = alloca %struct.i2c_msg, align 4
  %buf.i839 = alloca [2 x i8], align 1
  %msg.i840 = alloca %struct.i2c_msg, align 4
  %buf.i823 = alloca [2 x i8], align 1
  %msg.i824 = alloca %struct.i2c_msg, align 4
  %buf.i807 = alloca [2 x i8], align 1
  %msg.i808 = alloca %struct.i2c_msg, align 4
  %buf.i789 = alloca [2 x i8], align 1
  %msg.i790 = alloca %struct.i2c_msg, align 4
  %buf.i771 = alloca [2 x i8], align 1
  %msg.i772 = alloca %struct.i2c_msg, align 4
  %buf.i753 = alloca [2 x i8], align 1
  %msg.i754 = alloca %struct.i2c_msg, align 4
  %buf.i735 = alloca [2 x i8], align 1
  %msg.i736 = alloca %struct.i2c_msg, align 4
  %buf.i719 = alloca [2 x i8], align 1
  %msg.i720 = alloca %struct.i2c_msg, align 4
  %buf.i703 = alloca [2 x i8], align 1
  %msg.i704 = alloca %struct.i2c_msg, align 4
  %buf.i687 = alloca [2 x i8], align 1
  %msg.i688 = alloca %struct.i2c_msg, align 4
  %buf.i671 = alloca [2 x i8], align 1
  %msg.i672 = alloca %struct.i2c_msg, align 4
  %buf.i655 = alloca [2 x i8], align 1
  %msg.i656 = alloca %struct.i2c_msg, align 4
  %buf.i639 = alloca [2 x i8], align 1
  %msg.i640 = alloca %struct.i2c_msg, align 4
  %buf.i623 = alloca [2 x i8], align 1
  %msg.i624 = alloca %struct.i2c_msg, align 4
  %buf.i607 = alloca [2 x i8], align 1
  %msg.i608 = alloca %struct.i2c_msg, align 4
  %buf.i589 = alloca [2 x i8], align 1
  %msg.i590 = alloca %struct.i2c_msg, align 4
  %buf.i573 = alloca [2 x i8], align 1
  %msg.i574 = alloca %struct.i2c_msg, align 4
  %buf.i557 = alloca [2 x i8], align 1
  %msg.i558 = alloca %struct.i2c_msg, align 4
  %buf.i541 = alloca [2 x i8], align 1
  %msg.i542 = alloca %struct.i2c_msg, align 4
  %buf.i525 = alloca [2 x i8], align 1
  %msg.i526 = alloca %struct.i2c_msg, align 4
  %buf.i507 = alloca [2 x i8], align 1
  %msg.i508 = alloca %struct.i2c_msg, align 4
  %buf.i491 = alloca [2 x i8], align 1
  %msg.i492 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %fw = alloca ptr, align 4
  %cmd = alloca %struct.cx24120_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !293
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %1 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #10
  %3 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 1
  %4 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2
  %5 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 2
  %7 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 5
  %9 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 6
  %10 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 7
  %11 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 8
  %12 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 9
  %13 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 10
  %14 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 11
  %cold_init = getelementptr inbounds %struct.cx24120_state, ptr %2, i32 0, i32 3
  %15 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  %16 = ptrtoint ptr %cold_init to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cold_init, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %18 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -22, ptr %buf.i, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #10
  %21 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %21, align 4
  %config.i = getelementptr inbounds %struct.cx24120_state, ptr %2, i32 0, i32 1
  %23 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 4
  %conv.i = zext i8 %26 to i16
  %27 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %21, align 4
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %29 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %buf.i, ptr %buf1.i, align 4
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %2, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %msg.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %do.body6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i, i32 noundef 234, i32 noundef 0) #13
  br label %cx24120_writereg.exit

do.body6.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i)) #10
          to label %cx24120_writereg.exit [label %if.then11.i], !srcloc !292

if.then11.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %2, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 234, i32 noundef 0) #10
  br label %cx24120_writereg.exit

cx24120_writereg.exit:                            ; preds = %if.then11.i, %do.body6.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  call fastcc void @cx24120_test_rom(ptr noundef %2)
  %call2 = call fastcc i32 @cx24120_readreg(ptr noundef %2, i8 noundef zeroext -5)
  %34 = trunc i32 %call2 to i8
  %conv = and i8 %34, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i491) #10
  %35 = getelementptr inbounds [2 x i8], ptr %buf.i491, i32 0, i32 1
  %36 = ptrtoint ptr %buf.i491 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -5, ptr %buf.i491, align 1
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv, ptr %35, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i492) #10
  %38 = getelementptr inbounds i8, ptr %msg.i492, i32 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %38, align 4
  %40 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %config.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 4
  %conv.i494 = zext i8 %43 to i16
  %44 = ptrtoint ptr %msg.i492 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i494, ptr %msg.i492, align 4
  %flags.i495 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i492, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i495 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i495, align 2
  store i16 2, ptr %38, align 4
  %buf1.i497 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i492, i32 0, i32 3
  %46 = ptrtoint ptr %buf1.i497 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %buf.i491, ptr %buf1.i497, align 4
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %2, align 4
  %call.i498 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %msg.i492, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i498)
  %cmp.not.i499 = icmp eq i32 %call.i498, 1
  br i1 %cmp.not.i499, label %do.body6.i502, label %do.end.i501

do.end.i501:                                      ; preds = %cx24120_writereg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i = zext i8 %conv to i32
  %call5.i500 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i498, i32 noundef 251, i32 noundef %conv4.i) #13
  br label %cx24120_writereg.exit506

do.body6.i502:                                    ; preds = %cx24120_writereg.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i504)) #10
          to label %cx24120_writereg.exit506 [label %if.then11.i504], !srcloc !292

if.then11.i504:                                   ; preds = %do.body6.i502
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %2, align 4
  %dev.i503 = getelementptr inbounds %struct.i2c_adapter, ptr %50, i32 0, i32 9
  %conv14.i = zext i8 %conv to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i503, ptr noundef nonnull @.str.21, i32 noundef 251, i32 noundef %conv14.i) #10
  br label %cx24120_writereg.exit506

cx24120_writereg.exit506:                         ; preds = %if.then11.i504, %do.body6.i502, %do.end.i501
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i492) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i491) #10
  %call4 = call fastcc i32 @cx24120_readreg(ptr noundef %2, i8 noundef zeroext -4)
  %51 = trunc i32 %call4 to i8
  %conv6 = and i8 %51, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i507) #10
  %52 = getelementptr inbounds [2 x i8], ptr %buf.i507, i32 0, i32 1
  %53 = ptrtoint ptr %buf.i507 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -4, ptr %buf.i507, align 1
  %54 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv6, ptr %52, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i508) #10
  %55 = getelementptr inbounds i8, ptr %msg.i508, i32 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %55, align 4
  %57 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %config.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 4
  %conv.i510 = zext i8 %60 to i16
  %61 = ptrtoint ptr %msg.i508 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i510, ptr %msg.i508, align 4
  %flags.i511 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i508, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i511 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i511, align 2
  store i16 2, ptr %55, align 4
  %buf1.i513 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i508, i32 0, i32 3
  %63 = ptrtoint ptr %buf1.i513 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %buf.i507, ptr %buf1.i513, align 4
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %2, align 4
  %call.i514 = call i32 @i2c_transfer(ptr noundef %65, ptr noundef nonnull %msg.i508, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i514)
  %cmp.not.i515 = icmp eq i32 %call.i514, 1
  br i1 %cmp.not.i515, label %do.body6.i519, label %do.end.i518

do.end.i518:                                      ; preds = %cx24120_writereg.exit506
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i516 = zext i8 %conv6 to i32
  %call5.i517 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i514, i32 noundef 252, i32 noundef %conv4.i516) #13
  br label %cx24120_writereg.exit524

do.body6.i519:                                    ; preds = %cx24120_writereg.exit506
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i522)) #10
          to label %cx24120_writereg.exit524 [label %if.then11.i522], !srcloc !292

if.then11.i522:                                   ; preds = %do.body6.i519
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %2, align 4
  %dev.i520 = getelementptr inbounds %struct.i2c_adapter, ptr %67, i32 0, i32 9
  %conv14.i521 = zext i8 %conv6 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i520, ptr noundef nonnull @.str.21, i32 noundef 252, i32 noundef %conv14.i521) #10
  br label %cx24120_writereg.exit524

cx24120_writereg.exit524:                         ; preds = %if.then11.i522, %do.body6.i519, %do.end.i518
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i508) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i507) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i525) #10
  %68 = getelementptr inbounds [2 x i8], ptr %buf.i525, i32 0, i32 1
  %69 = ptrtoint ptr %buf.i525 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -61, ptr %buf.i525, align 1
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 4, ptr %68, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i526) #10
  %71 = getelementptr inbounds i8, ptr %msg.i526, i32 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %71, align 4
  %73 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %config.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 4
  %conv.i528 = zext i8 %76 to i16
  %77 = ptrtoint ptr %msg.i526 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv.i528, ptr %msg.i526, align 4
  %flags.i529 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i526, i32 0, i32 1
  %78 = ptrtoint ptr %flags.i529 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %flags.i529, align 2
  store i16 2, ptr %71, align 4
  %buf1.i531 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i526, i32 0, i32 3
  %79 = ptrtoint ptr %buf1.i531 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %buf.i525, ptr %buf1.i531, align 4
  %80 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %2, align 4
  %call.i532 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %msg.i526, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i532)
  %cmp.not.i533 = icmp eq i32 %call.i532, 1
  br i1 %cmp.not.i533, label %do.body6.i536, label %do.end.i535

do.end.i535:                                      ; preds = %cx24120_writereg.exit524
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i534 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i532, i32 noundef 195, i32 noundef 4) #13
  br label %cx24120_writereg.exit540

do.body6.i536:                                    ; preds = %cx24120_writereg.exit524
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i538)) #10
          to label %cx24120_writereg.exit540 [label %if.then11.i538], !srcloc !292

if.then11.i538:                                   ; preds = %do.body6.i536
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %2, align 4
  %dev.i537 = getelementptr inbounds %struct.i2c_adapter, ptr %83, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i537, ptr noundef nonnull @.str.21, i32 noundef 195, i32 noundef 4) #10
  br label %cx24120_writereg.exit540

cx24120_writereg.exit540:                         ; preds = %if.then11.i538, %do.body6.i536, %do.end.i535
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i526) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i525) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i541) #10
  %84 = getelementptr inbounds [2 x i8], ptr %buf.i541, i32 0, i32 1
  %85 = ptrtoint ptr %buf.i541 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 -60, ptr %buf.i541, align 1
  %86 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 4, ptr %84, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i542) #10
  %87 = getelementptr inbounds i8, ptr %msg.i542, i32 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %87, align 4
  %89 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %config.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %90, align 4
  %conv.i544 = zext i8 %92 to i16
  %93 = ptrtoint ptr %msg.i542 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv.i544, ptr %msg.i542, align 4
  %flags.i545 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i542, i32 0, i32 1
  %94 = ptrtoint ptr %flags.i545 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %flags.i545, align 2
  store i16 2, ptr %87, align 4
  %buf1.i547 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i542, i32 0, i32 3
  %95 = ptrtoint ptr %buf1.i547 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %buf.i541, ptr %buf1.i547, align 4
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %2, align 4
  %call.i548 = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %msg.i542, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i548)
  %cmp.not.i549 = icmp eq i32 %call.i548, 1
  br i1 %cmp.not.i549, label %do.body6.i552, label %do.end.i551

do.end.i551:                                      ; preds = %cx24120_writereg.exit540
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i550 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i548, i32 noundef 196, i32 noundef 4) #13
  br label %cx24120_writereg.exit556

do.body6.i552:                                    ; preds = %cx24120_writereg.exit540
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i554)) #10
          to label %cx24120_writereg.exit556 [label %if.then11.i554], !srcloc !292

if.then11.i554:                                   ; preds = %do.body6.i552
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %2, align 4
  %dev.i553 = getelementptr inbounds %struct.i2c_adapter, ptr %99, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i553, ptr noundef nonnull @.str.21, i32 noundef 196, i32 noundef 4) #10
  br label %cx24120_writereg.exit556

cx24120_writereg.exit556:                         ; preds = %if.then11.i554, %do.body6.i552, %do.end.i551
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i542) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i541) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i557) #10
  %100 = getelementptr inbounds [2 x i8], ptr %buf.i557, i32 0, i32 1
  %101 = ptrtoint ptr %buf.i557 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 -50, ptr %buf.i557, align 1
  %102 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %100, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i558) #10
  %103 = getelementptr inbounds i8, ptr %msg.i558, i32 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %103, align 4
  %105 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %config.i, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %106, align 4
  %conv.i560 = zext i8 %108 to i16
  %109 = ptrtoint ptr %msg.i558 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv.i560, ptr %msg.i558, align 4
  %flags.i561 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i558, i32 0, i32 1
  %110 = ptrtoint ptr %flags.i561 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %flags.i561, align 2
  store i16 2, ptr %103, align 4
  %buf1.i563 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i558, i32 0, i32 3
  %111 = ptrtoint ptr %buf1.i563 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %buf.i557, ptr %buf1.i563, align 4
  %112 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %2, align 4
  %call.i564 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %msg.i558, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i564)
  %cmp.not.i565 = icmp eq i32 %call.i564, 1
  br i1 %cmp.not.i565, label %do.body6.i568, label %do.end.i567

do.end.i567:                                      ; preds = %cx24120_writereg.exit556
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i566 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i564, i32 noundef 206, i32 noundef 0) #13
  br label %cx24120_writereg.exit572

do.body6.i568:                                    ; preds = %cx24120_writereg.exit556
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i570)) #10
          to label %cx24120_writereg.exit572 [label %if.then11.i570], !srcloc !292

if.then11.i570:                                   ; preds = %do.body6.i568
  call void @__sanitizer_cov_trace_pc() #12
  %114 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %2, align 4
  %dev.i569 = getelementptr inbounds %struct.i2c_adapter, ptr %115, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i569, ptr noundef nonnull @.str.21, i32 noundef 206, i32 noundef 0) #10
  br label %cx24120_writereg.exit572

cx24120_writereg.exit572:                         ; preds = %if.then11.i570, %do.body6.i568, %do.end.i567
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i558) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i557) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i573) #10
  %116 = getelementptr inbounds [2 x i8], ptr %buf.i573, i32 0, i32 1
  %117 = ptrtoint ptr %buf.i573 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -49, ptr %buf.i573, align 1
  %118 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i574) #10
  %119 = getelementptr inbounds i8, ptr %msg.i574, i32 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %119, align 4
  %121 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %config.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %122, align 4
  %conv.i576 = zext i8 %124 to i16
  %125 = ptrtoint ptr %msg.i574 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv.i576, ptr %msg.i574, align 4
  %flags.i577 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i574, i32 0, i32 1
  %126 = ptrtoint ptr %flags.i577 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %flags.i577, align 2
  store i16 2, ptr %119, align 4
  %buf1.i579 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i574, i32 0, i32 3
  %127 = ptrtoint ptr %buf1.i579 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %buf.i573, ptr %buf1.i579, align 4
  %128 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %2, align 4
  %call.i580 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %msg.i574, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i580)
  %cmp.not.i581 = icmp eq i32 %call.i580, 1
  br i1 %cmp.not.i581, label %do.body6.i584, label %do.end.i583

do.end.i583:                                      ; preds = %cx24120_writereg.exit572
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i582 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i580, i32 noundef 207, i32 noundef 0) #13
  br label %cx24120_writereg.exit588

do.body6.i584:                                    ; preds = %cx24120_writereg.exit572
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i586)) #10
          to label %cx24120_writereg.exit588 [label %if.then11.i586], !srcloc !292

if.then11.i586:                                   ; preds = %do.body6.i584
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %2, align 4
  %dev.i585 = getelementptr inbounds %struct.i2c_adapter, ptr %131, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i585, ptr noundef nonnull @.str.21, i32 noundef 207, i32 noundef 0) #10
  br label %cx24120_writereg.exit588

cx24120_writereg.exit588:                         ; preds = %if.then11.i586, %do.body6.i584, %do.end.i583
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i574) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i573) #10
  %call12 = call fastcc i32 @cx24120_readreg(ptr noundef %2, i8 noundef zeroext -22)
  %132 = trunc i32 %call12 to i8
  %conv14 = and i8 %132, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i589) #10
  %133 = getelementptr inbounds [2 x i8], ptr %buf.i589, i32 0, i32 1
  %134 = ptrtoint ptr %buf.i589 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -22, ptr %buf.i589, align 1
  %135 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv14, ptr %133, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i590) #10
  %136 = getelementptr inbounds i8, ptr %msg.i590, i32 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -1, ptr %136, align 4
  %138 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %config.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %139, align 4
  %conv.i592 = zext i8 %141 to i16
  %142 = ptrtoint ptr %msg.i590 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv.i592, ptr %msg.i590, align 4
  %flags.i593 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i590, i32 0, i32 1
  %143 = ptrtoint ptr %flags.i593 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 0, ptr %flags.i593, align 2
  store i16 2, ptr %136, align 4
  %buf1.i595 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i590, i32 0, i32 3
  %144 = ptrtoint ptr %buf1.i595 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %buf.i589, ptr %buf1.i595, align 4
  %145 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %2, align 4
  %call.i596 = call i32 @i2c_transfer(ptr noundef %146, ptr noundef nonnull %msg.i590, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i596)
  %cmp.not.i597 = icmp eq i32 %call.i596, 1
  br i1 %cmp.not.i597, label %do.body6.i601, label %do.end.i600

do.end.i600:                                      ; preds = %cx24120_writereg.exit588
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i598 = zext i8 %conv14 to i32
  %call5.i599 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i596, i32 noundef 234, i32 noundef %conv4.i598) #13
  br label %cx24120_writereg.exit606

do.body6.i601:                                    ; preds = %cx24120_writereg.exit588
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i604)) #10
          to label %cx24120_writereg.exit606 [label %if.then11.i604], !srcloc !292

if.then11.i604:                                   ; preds = %do.body6.i601
  call void @__sanitizer_cov_trace_pc() #12
  %147 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %2, align 4
  %dev.i602 = getelementptr inbounds %struct.i2c_adapter, ptr %148, i32 0, i32 9
  %conv14.i603 = zext i8 %conv14 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i602, ptr noundef nonnull @.str.21, i32 noundef 234, i32 noundef %conv14.i603) #10
  br label %cx24120_writereg.exit606

cx24120_writereg.exit606:                         ; preds = %if.then11.i604, %do.body6.i601, %do.end.i600
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i590) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i589) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i607) #10
  %149 = getelementptr inbounds [2 x i8], ptr %buf.i607, i32 0, i32 1
  %150 = ptrtoint ptr %buf.i607 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 -21, ptr %buf.i607, align 1
  %151 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 12, ptr %149, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i608) #10
  %152 = getelementptr inbounds i8, ptr %msg.i608, i32 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 -1, ptr %152, align 4
  %154 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %config.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %155, align 4
  %conv.i610 = zext i8 %157 to i16
  %158 = ptrtoint ptr %msg.i608 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv.i610, ptr %msg.i608, align 4
  %flags.i611 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i608, i32 0, i32 1
  %159 = ptrtoint ptr %flags.i611 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 0, ptr %flags.i611, align 2
  store i16 2, ptr %152, align 4
  %buf1.i613 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i608, i32 0, i32 3
  %160 = ptrtoint ptr %buf1.i613 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %buf.i607, ptr %buf1.i613, align 4
  %161 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %2, align 4
  %call.i614 = call i32 @i2c_transfer(ptr noundef %162, ptr noundef nonnull %msg.i608, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i614)
  %cmp.not.i615 = icmp eq i32 %call.i614, 1
  br i1 %cmp.not.i615, label %do.body6.i618, label %do.end.i617

do.end.i617:                                      ; preds = %cx24120_writereg.exit606
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i616 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i614, i32 noundef 235, i32 noundef 12) #13
  br label %cx24120_writereg.exit622

do.body6.i618:                                    ; preds = %cx24120_writereg.exit606
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i620)) #10
          to label %cx24120_writereg.exit622 [label %if.then11.i620], !srcloc !292

if.then11.i620:                                   ; preds = %do.body6.i618
  call void @__sanitizer_cov_trace_pc() #12
  %163 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %2, align 4
  %dev.i619 = getelementptr inbounds %struct.i2c_adapter, ptr %164, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i619, ptr noundef nonnull @.str.21, i32 noundef 235, i32 noundef 12) #10
  br label %cx24120_writereg.exit622

cx24120_writereg.exit622:                         ; preds = %if.then11.i620, %do.body6.i618, %do.end.i617
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i608) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i607) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i623) #10
  %165 = getelementptr inbounds [2 x i8], ptr %buf.i623, i32 0, i32 1
  %166 = ptrtoint ptr %buf.i623 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 -20, ptr %buf.i623, align 1
  %167 = ptrtoint ptr %165 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 6, ptr %165, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i624) #10
  %168 = getelementptr inbounds i8, ptr %msg.i624, i32 4
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 -1, ptr %168, align 4
  %170 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %config.i, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %171, align 4
  %conv.i626 = zext i8 %173 to i16
  %174 = ptrtoint ptr %msg.i624 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 %conv.i626, ptr %msg.i624, align 4
  %flags.i627 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i624, i32 0, i32 1
  %175 = ptrtoint ptr %flags.i627 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 0, ptr %flags.i627, align 2
  store i16 2, ptr %168, align 4
  %buf1.i629 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i624, i32 0, i32 3
  %176 = ptrtoint ptr %buf1.i629 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %buf.i623, ptr %buf1.i629, align 4
  %177 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %2, align 4
  %call.i630 = call i32 @i2c_transfer(ptr noundef %178, ptr noundef nonnull %msg.i624, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i630)
  %cmp.not.i631 = icmp eq i32 %call.i630, 1
  br i1 %cmp.not.i631, label %do.body6.i634, label %do.end.i633

do.end.i633:                                      ; preds = %cx24120_writereg.exit622
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i632 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i630, i32 noundef 236, i32 noundef 6) #13
  br label %cx24120_writereg.exit638

do.body6.i634:                                    ; preds = %cx24120_writereg.exit622
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i636)) #10
          to label %cx24120_writereg.exit638 [label %if.then11.i636], !srcloc !292

if.then11.i636:                                   ; preds = %do.body6.i634
  call void @__sanitizer_cov_trace_pc() #12
  %179 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %2, align 4
  %dev.i635 = getelementptr inbounds %struct.i2c_adapter, ptr %180, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i635, ptr noundef nonnull @.str.21, i32 noundef 236, i32 noundef 6) #10
  br label %cx24120_writereg.exit638

cx24120_writereg.exit638:                         ; preds = %if.then11.i636, %do.body6.i634, %do.end.i633
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i624) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i623) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i639) #10
  %181 = getelementptr inbounds [2 x i8], ptr %buf.i639, i32 0, i32 1
  %182 = ptrtoint ptr %buf.i639 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 -19, ptr %buf.i639, align 1
  %183 = ptrtoint ptr %181 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 5, ptr %181, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i640) #10
  %184 = getelementptr inbounds i8, ptr %msg.i640, i32 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -1, ptr %184, align 4
  %186 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %config.i, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %187, align 4
  %conv.i642 = zext i8 %189 to i16
  %190 = ptrtoint ptr %msg.i640 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv.i642, ptr %msg.i640, align 4
  %flags.i643 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i640, i32 0, i32 1
  %191 = ptrtoint ptr %flags.i643 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 0, ptr %flags.i643, align 2
  store i16 2, ptr %184, align 4
  %buf1.i645 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i640, i32 0, i32 3
  %192 = ptrtoint ptr %buf1.i645 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %buf.i639, ptr %buf1.i645, align 4
  %193 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %2, align 4
  %call.i646 = call i32 @i2c_transfer(ptr noundef %194, ptr noundef nonnull %msg.i640, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i646)
  %cmp.not.i647 = icmp eq i32 %call.i646, 1
  br i1 %cmp.not.i647, label %do.body6.i650, label %do.end.i649

do.end.i649:                                      ; preds = %cx24120_writereg.exit638
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i648 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i646, i32 noundef 237, i32 noundef 5) #13
  br label %cx24120_writereg.exit654

do.body6.i650:                                    ; preds = %cx24120_writereg.exit638
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i652)) #10
          to label %cx24120_writereg.exit654 [label %if.then11.i652], !srcloc !292

if.then11.i652:                                   ; preds = %do.body6.i650
  call void @__sanitizer_cov_trace_pc() #12
  %195 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %2, align 4
  %dev.i651 = getelementptr inbounds %struct.i2c_adapter, ptr %196, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i651, ptr noundef nonnull @.str.21, i32 noundef 237, i32 noundef 5) #10
  br label %cx24120_writereg.exit654

cx24120_writereg.exit654:                         ; preds = %if.then11.i652, %do.body6.i650, %do.end.i649
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i640) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i639) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i655) #10
  %197 = getelementptr inbounds [2 x i8], ptr %buf.i655, i32 0, i32 1
  %198 = ptrtoint ptr %buf.i655 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 -18, ptr %buf.i655, align 1
  %199 = ptrtoint ptr %197 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 3, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i656) #10
  %200 = getelementptr inbounds i8, ptr %msg.i656, i32 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 -1, ptr %200, align 4
  %202 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %config.i, align 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %203, align 4
  %conv.i658 = zext i8 %205 to i16
  %206 = ptrtoint ptr %msg.i656 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %conv.i658, ptr %msg.i656, align 4
  %flags.i659 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i656, i32 0, i32 1
  %207 = ptrtoint ptr %flags.i659 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 0, ptr %flags.i659, align 2
  store i16 2, ptr %200, align 4
  %buf1.i661 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i656, i32 0, i32 3
  %208 = ptrtoint ptr %buf1.i661 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %buf.i655, ptr %buf1.i661, align 4
  %209 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %2, align 4
  %call.i662 = call i32 @i2c_transfer(ptr noundef %210, ptr noundef nonnull %msg.i656, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i662)
  %cmp.not.i663 = icmp eq i32 %call.i662, 1
  br i1 %cmp.not.i663, label %do.body6.i666, label %do.end.i665

do.end.i665:                                      ; preds = %cx24120_writereg.exit654
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i664 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i662, i32 noundef 238, i32 noundef 3) #13
  br label %cx24120_writereg.exit670

do.body6.i666:                                    ; preds = %cx24120_writereg.exit654
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i668)) #10
          to label %cx24120_writereg.exit670 [label %if.then11.i668], !srcloc !292

if.then11.i668:                                   ; preds = %do.body6.i666
  call void @__sanitizer_cov_trace_pc() #12
  %211 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %2, align 4
  %dev.i667 = getelementptr inbounds %struct.i2c_adapter, ptr %212, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i667, ptr noundef nonnull @.str.21, i32 noundef 238, i32 noundef 3) #10
  br label %cx24120_writereg.exit670

cx24120_writereg.exit670:                         ; preds = %if.then11.i668, %do.body6.i666, %do.end.i665
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i656) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i655) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i671) #10
  %213 = getelementptr inbounds [2 x i8], ptr %buf.i671, i32 0, i32 1
  %214 = ptrtoint ptr %buf.i671 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 -17, ptr %buf.i671, align 1
  %215 = ptrtoint ptr %213 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 5, ptr %213, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i672) #10
  %216 = getelementptr inbounds i8, ptr %msg.i672, i32 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 -1, ptr %216, align 4
  %218 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %config.i, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %219, align 4
  %conv.i674 = zext i8 %221 to i16
  %222 = ptrtoint ptr %msg.i672 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %conv.i674, ptr %msg.i672, align 4
  %flags.i675 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i672, i32 0, i32 1
  %223 = ptrtoint ptr %flags.i675 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 0, ptr %flags.i675, align 2
  store i16 2, ptr %216, align 4
  %buf1.i677 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i672, i32 0, i32 3
  %224 = ptrtoint ptr %buf1.i677 to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %buf.i671, ptr %buf1.i677, align 4
  %225 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %2, align 4
  %call.i678 = call i32 @i2c_transfer(ptr noundef %226, ptr noundef nonnull %msg.i672, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i678)
  %cmp.not.i679 = icmp eq i32 %call.i678, 1
  br i1 %cmp.not.i679, label %do.body6.i682, label %do.end.i681

do.end.i681:                                      ; preds = %cx24120_writereg.exit670
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i680 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i678, i32 noundef 239, i32 noundef 5) #13
  br label %cx24120_writereg.exit686

do.body6.i682:                                    ; preds = %cx24120_writereg.exit670
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i684)) #10
          to label %cx24120_writereg.exit686 [label %if.then11.i684], !srcloc !292

if.then11.i684:                                   ; preds = %do.body6.i682
  call void @__sanitizer_cov_trace_pc() #12
  %227 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %2, align 4
  %dev.i683 = getelementptr inbounds %struct.i2c_adapter, ptr %228, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i683, ptr noundef nonnull @.str.21, i32 noundef 239, i32 noundef 5) #10
  br label %cx24120_writereg.exit686

cx24120_writereg.exit686:                         ; preds = %if.then11.i684, %do.body6.i682, %do.end.i681
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i672) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i671) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i687) #10
  %229 = getelementptr inbounds [2 x i8], ptr %buf.i687, i32 0, i32 1
  %230 = ptrtoint ptr %buf.i687 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 -13, ptr %buf.i687, align 1
  %231 = ptrtoint ptr %229 to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 3, ptr %229, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i688) #10
  %232 = getelementptr inbounds i8, ptr %msg.i688, i32 4
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 -1, ptr %232, align 4
  %234 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %config.i, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %235, align 4
  %conv.i690 = zext i8 %237 to i16
  %238 = ptrtoint ptr %msg.i688 to i32
  call void @__asan_store2_noabort(i32 %238)
  store i16 %conv.i690, ptr %msg.i688, align 4
  %flags.i691 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i688, i32 0, i32 1
  %239 = ptrtoint ptr %flags.i691 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 0, ptr %flags.i691, align 2
  store i16 2, ptr %232, align 4
  %buf1.i693 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i688, i32 0, i32 3
  %240 = ptrtoint ptr %buf1.i693 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %buf.i687, ptr %buf1.i693, align 4
  %241 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %2, align 4
  %call.i694 = call i32 @i2c_transfer(ptr noundef %242, ptr noundef nonnull %msg.i688, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i694)
  %cmp.not.i695 = icmp eq i32 %call.i694, 1
  br i1 %cmp.not.i695, label %do.body6.i698, label %do.end.i697

do.end.i697:                                      ; preds = %cx24120_writereg.exit686
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i696 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i694, i32 noundef 243, i32 noundef 3) #13
  br label %cx24120_writereg.exit702

do.body6.i698:                                    ; preds = %cx24120_writereg.exit686
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i700)) #10
          to label %cx24120_writereg.exit702 [label %if.then11.i700], !srcloc !292

if.then11.i700:                                   ; preds = %do.body6.i698
  call void @__sanitizer_cov_trace_pc() #12
  %243 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %2, align 4
  %dev.i699 = getelementptr inbounds %struct.i2c_adapter, ptr %244, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i699, ptr noundef nonnull @.str.21, i32 noundef 243, i32 noundef 3) #10
  br label %cx24120_writereg.exit702

cx24120_writereg.exit702:                         ; preds = %if.then11.i700, %do.body6.i698, %do.end.i697
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i688) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i687) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i703) #10
  %245 = getelementptr inbounds [2 x i8], ptr %buf.i703, i32 0, i32 1
  %246 = ptrtoint ptr %buf.i703 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 -12, ptr %buf.i703, align 1
  %247 = ptrtoint ptr %245 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 68, ptr %245, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i704) #10
  %248 = getelementptr inbounds i8, ptr %msg.i704, i32 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 -1, ptr %248, align 4
  %250 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %config.i, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %251, align 4
  %conv.i706 = zext i8 %253 to i16
  %254 = ptrtoint ptr %msg.i704 to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %conv.i706, ptr %msg.i704, align 4
  %flags.i707 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i704, i32 0, i32 1
  %255 = ptrtoint ptr %flags.i707 to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 0, ptr %flags.i707, align 2
  store i16 2, ptr %248, align 4
  %buf1.i709 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i704, i32 0, i32 3
  %256 = ptrtoint ptr %buf1.i709 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %buf.i703, ptr %buf1.i709, align 4
  %257 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %2, align 4
  %call.i710 = call i32 @i2c_transfer(ptr noundef %258, ptr noundef nonnull %msg.i704, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i710)
  %cmp.not.i711 = icmp eq i32 %call.i710, 1
  br i1 %cmp.not.i711, label %do.body6.i714, label %do.end.i713

do.end.i713:                                      ; preds = %cx24120_writereg.exit702
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i712 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i710, i32 noundef 244, i32 noundef 68) #13
  br label %cx24120_writereg.exit718

do.body6.i714:                                    ; preds = %cx24120_writereg.exit702
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i716)) #10
          to label %cx24120_writereg.exit718 [label %if.then11.i716], !srcloc !292

if.then11.i716:                                   ; preds = %do.body6.i714
  call void @__sanitizer_cov_trace_pc() #12
  %259 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %2, align 4
  %dev.i715 = getelementptr inbounds %struct.i2c_adapter, ptr %260, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i715, ptr noundef nonnull @.str.21, i32 noundef 244, i32 noundef 68) #10
  br label %cx24120_writereg.exit718

cx24120_writereg.exit718:                         ; preds = %if.then11.i716, %do.body6.i714, %do.end.i713
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i704) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i703) #10
  %261 = getelementptr inbounds [2 x i8], ptr %buf.i719, i32 0, i32 1
  %262 = getelementptr inbounds i8, ptr %msg.i720, i32 4
  %flags.i723 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i720, i32 0, i32 1
  %buf1.i725 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i720, i32 0, i32 3
  %263 = getelementptr inbounds [2 x i8], ptr %buf.i735, i32 0, i32 1
  %264 = getelementptr inbounds i8, ptr %msg.i736, i32 4
  %flags.i739 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i736, i32 0, i32 1
  %buf1.i741 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i736, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cx24120_writereg.exit752.for.body_crit_edge, %cx24120_writereg.exit718
  %i.01110 = phi i32 [ 0, %cx24120_writereg.exit718 ], [ %inc, %cx24120_writereg.exit752.for.body_crit_edge ]
  %265 = trunc i32 %i.01110 to i8
  %conv24 = add i8 %265, -16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i719) #10
  %266 = ptrtoint ptr %buf.i719 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 %conv24, ptr %buf.i719, align 1
  %267 = ptrtoint ptr %261 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 4, ptr %261, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i720) #10
  %268 = ptrtoint ptr %262 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 -1, ptr %262, align 4
  %269 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %config.i, align 4
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %270, align 4
  %conv.i722 = zext i8 %272 to i16
  %273 = ptrtoint ptr %msg.i720 to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 %conv.i722, ptr %msg.i720, align 4
  %274 = ptrtoint ptr %flags.i723 to i32
  call void @__asan_store2_noabort(i32 %274)
  store i16 0, ptr %flags.i723, align 2
  store i16 2, ptr %262, align 4
  %275 = ptrtoint ptr %buf1.i725 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %buf.i719, ptr %buf1.i725, align 4
  %276 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %2, align 4
  %call.i726 = call i32 @i2c_transfer(ptr noundef %277, ptr noundef nonnull %msg.i720, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i726)
  %cmp.not.i727 = icmp eq i32 %call.i726, 1
  br i1 %cmp.not.i727, label %do.body6.i730, label %do.end.i729

do.end.i729:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv3.i = zext i8 %conv24 to i32
  %call5.i728 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i726, i32 noundef %conv3.i, i32 noundef 4) #13
  br label %cx24120_writereg.exit734

do.body6.i730:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i732)) #10
          to label %cx24120_writereg.exit734 [label %if.then11.i732], !srcloc !292

if.then11.i732:                                   ; preds = %do.body6.i730
  call void @__sanitizer_cov_trace_pc() #12
  %278 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %2, align 4
  %dev.i731 = getelementptr inbounds %struct.i2c_adapter, ptr %279, i32 0, i32 9
  %conv13.i = zext i8 %conv24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i731, ptr noundef nonnull @.str.21, i32 noundef %conv13.i, i32 noundef 4) #10
  br label %cx24120_writereg.exit734

cx24120_writereg.exit734:                         ; preds = %if.then11.i732, %do.body6.i730, %do.end.i729
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i720) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i719) #10
  %conv27 = add i8 %265, -26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i735) #10
  %280 = ptrtoint ptr %buf.i735 to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %conv27, ptr %buf.i735, align 1
  %281 = ptrtoint ptr %263 to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 2, ptr %263, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i736) #10
  %282 = ptrtoint ptr %264 to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 -1, ptr %264, align 4
  %283 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %config.i, align 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %284, align 4
  %conv.i738 = zext i8 %286 to i16
  %287 = ptrtoint ptr %msg.i736 to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 %conv.i738, ptr %msg.i736, align 4
  %288 = ptrtoint ptr %flags.i739 to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 0, ptr %flags.i739, align 2
  store i16 2, ptr %264, align 4
  %289 = ptrtoint ptr %buf1.i741 to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %buf.i735, ptr %buf1.i741, align 4
  %290 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %2, align 4
  %call.i742 = call i32 @i2c_transfer(ptr noundef %291, ptr noundef nonnull %msg.i736, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i742)
  %cmp.not.i743 = icmp eq i32 %call.i742, 1
  br i1 %cmp.not.i743, label %do.body6.i747, label %do.end.i746

do.end.i746:                                      ; preds = %cx24120_writereg.exit734
  call void @__sanitizer_cov_trace_pc() #12
  %conv3.i744 = zext i8 %conv27 to i32
  %call5.i745 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i742, i32 noundef %conv3.i744, i32 noundef 2) #13
  br label %cx24120_writereg.exit752

do.body6.i747:                                    ; preds = %cx24120_writereg.exit734
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i750)) #10
          to label %cx24120_writereg.exit752 [label %if.then11.i750], !srcloc !292

if.then11.i750:                                   ; preds = %do.body6.i747
  call void @__sanitizer_cov_trace_pc() #12
  %292 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %2, align 4
  %dev.i748 = getelementptr inbounds %struct.i2c_adapter, ptr %293, i32 0, i32 9
  %conv13.i749 = zext i8 %conv27 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i748, ptr noundef nonnull @.str.21, i32 noundef %conv13.i749, i32 noundef 2) #10
  br label %cx24120_writereg.exit752

cx24120_writereg.exit752:                         ; preds = %if.then11.i750, %do.body6.i747, %do.end.i746
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i736) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i735) #10
  %inc = add nuw nsw i32 %i.01110, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %cx24120_writereg.exit752.for.body_crit_edge

cx24120_writereg.exit752.for.body_crit_edge:      ; preds = %cx24120_writereg.exit752
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cx24120_writereg.exit752
  %conv30 = or i8 %132, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i753) #10
  %294 = getelementptr inbounds [2 x i8], ptr %buf.i753, i32 0, i32 1
  %295 = ptrtoint ptr %buf.i753 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 -22, ptr %buf.i753, align 1
  %296 = ptrtoint ptr %294 to i32
  call void @__asan_store1_noabort(i32 %296)
  store i8 %conv30, ptr %294, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i754) #10
  %297 = getelementptr inbounds i8, ptr %msg.i754, i32 4
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 -1, ptr %297, align 4
  %299 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %config.i, align 4
  %301 = ptrtoint ptr %300 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %300, align 4
  %conv.i756 = zext i8 %302 to i16
  %303 = ptrtoint ptr %msg.i754 to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 %conv.i756, ptr %msg.i754, align 4
  %flags.i757 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i754, i32 0, i32 1
  %304 = ptrtoint ptr %flags.i757 to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 0, ptr %flags.i757, align 2
  store i16 2, ptr %297, align 4
  %buf1.i759 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i754, i32 0, i32 3
  %305 = ptrtoint ptr %buf1.i759 to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %buf.i753, ptr %buf1.i759, align 4
  %306 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %2, align 4
  %call.i760 = call i32 @i2c_transfer(ptr noundef %307, ptr noundef nonnull %msg.i754, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i760)
  %cmp.not.i761 = icmp eq i32 %call.i760, 1
  br i1 %cmp.not.i761, label %do.body6.i765, label %do.end.i764

do.end.i764:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i762 = zext i8 %conv30 to i32
  %call5.i763 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i760, i32 noundef 234, i32 noundef %conv4.i762) #13
  br label %cx24120_writereg.exit770

do.body6.i765:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i768)) #10
          to label %cx24120_writereg.exit770 [label %if.then11.i768], !srcloc !292

if.then11.i768:                                   ; preds = %do.body6.i765
  call void @__sanitizer_cov_trace_pc() #12
  %308 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %2, align 4
  %dev.i766 = getelementptr inbounds %struct.i2c_adapter, ptr %309, i32 0, i32 9
  %conv14.i767 = zext i8 %conv30 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i766, ptr noundef nonnull @.str.21, i32 noundef 234, i32 noundef %conv14.i767) #10
  br label %cx24120_writereg.exit770

cx24120_writereg.exit770:                         ; preds = %if.then11.i768, %do.body6.i765, %do.end.i764
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i754) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i753) #10
  %310 = getelementptr inbounds [2 x i8], ptr %buf.i771, i32 0, i32 1
  %311 = getelementptr inbounds i8, ptr %msg.i772, i32 4
  %flags.i775 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i772, i32 0, i32 1
  %buf1.i777 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i772, i32 0, i32 3
  %312 = getelementptr inbounds [2 x i8], ptr %buf.i789, i32 0, i32 1
  %313 = getelementptr inbounds i8, ptr %msg.i790, i32 4
  %flags.i793 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i790, i32 0, i32 1
  %buf1.i795 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i790, i32 0, i32 3
  br label %for.body35

for.body35:                                       ; preds = %cx24120_writereg.exit806.for.body35_crit_edge, %cx24120_writereg.exit770
  %i.11111 = phi i32 [ 0, %cx24120_writereg.exit770 ], [ %add43, %cx24120_writereg.exit806.for.body35_crit_edge ]
  %314 = trunc i32 %i.11111 to i8
  %conv37 = add nuw nsw i8 %314, -59
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i771) #10
  %315 = ptrtoint ptr %buf.i771 to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 %conv37, ptr %buf.i771, align 1
  %316 = ptrtoint ptr %310 to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 0, ptr %310, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i772) #10
  %317 = ptrtoint ptr %311 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 -1, ptr %311, align 4
  %318 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %config.i, align 4
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %319, align 4
  %conv.i774 = zext i8 %321 to i16
  %322 = ptrtoint ptr %msg.i772 to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 %conv.i774, ptr %msg.i772, align 4
  %323 = ptrtoint ptr %flags.i775 to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 0, ptr %flags.i775, align 2
  store i16 2, ptr %311, align 4
  %324 = ptrtoint ptr %buf1.i777 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %buf.i771, ptr %buf1.i777, align 4
  %325 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %2, align 4
  %call.i778 = call i32 @i2c_transfer(ptr noundef %326, ptr noundef nonnull %msg.i772, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i778)
  %cmp.not.i779 = icmp eq i32 %call.i778, 1
  br i1 %cmp.not.i779, label %do.body6.i783, label %do.end.i782

do.end.i782:                                      ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  %conv3.i780 = zext i8 %conv37 to i32
  %call5.i781 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i778, i32 noundef %conv3.i780, i32 noundef 0) #13
  br label %cx24120_writereg.exit788

do.body6.i783:                                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i786)) #10
          to label %cx24120_writereg.exit788 [label %if.then11.i786], !srcloc !292

if.then11.i786:                                   ; preds = %do.body6.i783
  call void @__sanitizer_cov_trace_pc() #12
  %327 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %2, align 4
  %dev.i784 = getelementptr inbounds %struct.i2c_adapter, ptr %328, i32 0, i32 9
  %conv13.i785 = zext i8 %conv37 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i784, ptr noundef nonnull @.str.21, i32 noundef %conv13.i785, i32 noundef 0) #10
  br label %cx24120_writereg.exit788

cx24120_writereg.exit788:                         ; preds = %if.then11.i786, %do.body6.i783, %do.end.i782
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i772) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i771) #10
  %conv40 = add nuw nsw i8 %314, -58
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i789) #10
  %329 = ptrtoint ptr %buf.i789 to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 %conv40, ptr %buf.i789, align 1
  %330 = ptrtoint ptr %312 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 0, ptr %312, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i790) #10
  %331 = ptrtoint ptr %313 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 -1, ptr %313, align 4
  %332 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %config.i, align 4
  %334 = ptrtoint ptr %333 to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %333, align 4
  %conv.i792 = zext i8 %335 to i16
  %336 = ptrtoint ptr %msg.i790 to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 %conv.i792, ptr %msg.i790, align 4
  %337 = ptrtoint ptr %flags.i793 to i32
  call void @__asan_store2_noabort(i32 %337)
  store i16 0, ptr %flags.i793, align 2
  store i16 2, ptr %313, align 4
  %338 = ptrtoint ptr %buf1.i795 to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr %buf.i789, ptr %buf1.i795, align 4
  %339 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %2, align 4
  %call.i796 = call i32 @i2c_transfer(ptr noundef %340, ptr noundef nonnull %msg.i790, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i796)
  %cmp.not.i797 = icmp eq i32 %call.i796, 1
  br i1 %cmp.not.i797, label %do.body6.i801, label %do.end.i800

do.end.i800:                                      ; preds = %cx24120_writereg.exit788
  call void @__sanitizer_cov_trace_pc() #12
  %conv3.i798 = zext i8 %conv40 to i32
  %call5.i799 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i796, i32 noundef %conv3.i798, i32 noundef 0) #13
  br label %cx24120_writereg.exit806

do.body6.i801:                                    ; preds = %cx24120_writereg.exit788
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i804)) #10
          to label %cx24120_writereg.exit806 [label %if.then11.i804], !srcloc !292

if.then11.i804:                                   ; preds = %do.body6.i801
  call void @__sanitizer_cov_trace_pc() #12
  %341 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %2, align 4
  %dev.i802 = getelementptr inbounds %struct.i2c_adapter, ptr %342, i32 0, i32 9
  %conv13.i803 = zext i8 %conv40 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i802, ptr noundef nonnull @.str.21, i32 noundef %conv13.i803, i32 noundef 0) #10
  br label %cx24120_writereg.exit806

cx24120_writereg.exit806:                         ; preds = %if.then11.i804, %do.body6.i801, %do.end.i800
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i790) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i789) #10
  %add43 = add nuw nsw i32 %i.11111, 2
  %cmp33 = icmp ult i32 %i.11111, 4
  br i1 %cmp33, label %cx24120_writereg.exit806.for.body35_crit_edge, label %for.end44

cx24120_writereg.exit806.for.body35_crit_edge:    ; preds = %cx24120_writereg.exit806
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body35

for.end44:                                        ; preds = %cx24120_writereg.exit806
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i807) #10
  %343 = getelementptr inbounds [2 x i8], ptr %buf.i807, i32 0, i32 1
  %344 = ptrtoint ptr %buf.i807 to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 -28, ptr %buf.i807, align 1
  %345 = ptrtoint ptr %343 to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 3, ptr %343, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i808) #10
  %346 = getelementptr inbounds i8, ptr %msg.i808, i32 4
  %347 = ptrtoint ptr %346 to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 -1, ptr %346, align 4
  %348 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %config.i, align 4
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %349, align 4
  %conv.i810 = zext i8 %351 to i16
  %352 = ptrtoint ptr %msg.i808 to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 %conv.i810, ptr %msg.i808, align 4
  %flags.i811 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i808, i32 0, i32 1
  %353 = ptrtoint ptr %flags.i811 to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 0, ptr %flags.i811, align 2
  store i16 2, ptr %346, align 4
  %buf1.i813 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i808, i32 0, i32 3
  %354 = ptrtoint ptr %buf1.i813 to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %buf.i807, ptr %buf1.i813, align 4
  %355 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %2, align 4
  %call.i814 = call i32 @i2c_transfer(ptr noundef %356, ptr noundef nonnull %msg.i808, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i814)
  %cmp.not.i815 = icmp eq i32 %call.i814, 1
  br i1 %cmp.not.i815, label %do.body6.i818, label %do.end.i817

do.end.i817:                                      ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i816 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i814, i32 noundef 228, i32 noundef 3) #13
  br label %cx24120_writereg.exit822

do.body6.i818:                                    ; preds = %for.end44
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i820)) #10
          to label %cx24120_writereg.exit822 [label %if.then11.i820], !srcloc !292

if.then11.i820:                                   ; preds = %do.body6.i818
  call void @__sanitizer_cov_trace_pc() #12
  %357 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %2, align 4
  %dev.i819 = getelementptr inbounds %struct.i2c_adapter, ptr %358, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i819, ptr noundef nonnull @.str.21, i32 noundef 228, i32 noundef 3) #10
  br label %cx24120_writereg.exit822

cx24120_writereg.exit822:                         ; preds = %if.then11.i820, %do.body6.i818, %do.end.i817
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i808) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i807) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i823) #10
  %359 = getelementptr inbounds [2 x i8], ptr %buf.i823, i32 0, i32 1
  %360 = ptrtoint ptr %buf.i823 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 -21, ptr %buf.i823, align 1
  %361 = ptrtoint ptr %359 to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 10, ptr %359, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i824) #10
  %362 = getelementptr inbounds i8, ptr %msg.i824, i32 4
  %363 = ptrtoint ptr %362 to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 -1, ptr %362, align 4
  %364 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %config.i, align 4
  %366 = ptrtoint ptr %365 to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %365, align 4
  %conv.i826 = zext i8 %367 to i16
  %368 = ptrtoint ptr %msg.i824 to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 %conv.i826, ptr %msg.i824, align 4
  %flags.i827 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i824, i32 0, i32 1
  %369 = ptrtoint ptr %flags.i827 to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 0, ptr %flags.i827, align 2
  store i16 2, ptr %362, align 4
  %buf1.i829 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i824, i32 0, i32 3
  %370 = ptrtoint ptr %buf1.i829 to i32
  call void @__asan_store4_noabort(i32 %370)
  store ptr %buf.i823, ptr %buf1.i829, align 4
  %371 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %2, align 4
  %call.i830 = call i32 @i2c_transfer(ptr noundef %372, ptr noundef nonnull %msg.i824, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i830)
  %cmp.not.i831 = icmp eq i32 %call.i830, 1
  br i1 %cmp.not.i831, label %do.body6.i834, label %do.end.i833

do.end.i833:                                      ; preds = %cx24120_writereg.exit822
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i832 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i830, i32 noundef 235, i32 noundef 10) #13
  br label %cx24120_writereg.exit838

do.body6.i834:                                    ; preds = %cx24120_writereg.exit822
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i836)) #10
          to label %cx24120_writereg.exit838 [label %if.then11.i836], !srcloc !292

if.then11.i836:                                   ; preds = %do.body6.i834
  call void @__sanitizer_cov_trace_pc() #12
  %373 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %2, align 4
  %dev.i835 = getelementptr inbounds %struct.i2c_adapter, ptr %374, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i835, ptr noundef nonnull @.str.21, i32 noundef 235, i32 noundef 10) #10
  br label %cx24120_writereg.exit838

cx24120_writereg.exit838:                         ; preds = %if.then11.i836, %do.body6.i834, %do.end.i833
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i824) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i823) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_init.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then51)) #10
          to label %do.end [label %if.then51], !srcloc !292

if.then51:                                        ; preds = %cx24120_writereg.exit838
  call void @__sanitizer_cov_trace_pc() #12
  %375 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %2, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %376, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_init.__UNIQUE_ID_ddebug327, ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26) #10
  br label %do.end

do.end:                                           ; preds = %if.then51, %cx24120_writereg.exit838
  %377 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %config.i, align 4
  %request_firmware = getelementptr inbounds %struct.cx24120_config, ptr %378, i32 0, i32 3
  %379 = ptrtoint ptr %request_firmware to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %request_firmware, align 4
  %call53 = call i32 %380(ptr noundef %fe, ptr noundef nonnull %fw, ptr noundef nonnull @.str.26) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.body62, label %do.end58

do.end58:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %call53) #13
  br label %cleanup

do.body62:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_init.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then74)) #10
          to label %do.end92 [label %if.then74], !srcloc !292

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #12
  %381 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %2, align 4
  %dev76 = getelementptr inbounds %struct.i2c_adapter, ptr %382, i32 0, i32 9
  %383 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %fw, align 4
  %385 = ptrtoint ptr %384 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %384, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %384, i32 0, i32 1
  %387 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %data, align 4
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %388, align 1
  %conv77 = zext i8 %390 to i32
  %arrayidx79 = getelementptr i8, ptr %388, i32 1
  %391 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %arrayidx79, align 1
  %conv80 = zext i8 %392 to i32
  %sub = add i32 %386, -2
  %arrayidx83 = getelementptr i8, ptr %388, i32 %sub
  %393 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %394 to i32
  %sub87 = add i32 %386, -1
  %arrayidx88 = getelementptr i8, ptr %388, i32 %sub87
  %395 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %396 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_init.__UNIQUE_ID_ddebug328, ptr noundef %dev76, ptr noundef nonnull @.str.28, i32 noundef %386, i32 noundef %conv77, i32 noundef %conv80, i32 noundef %conv84, i32 noundef %conv89) #10
  br label %do.end92

do.end92:                                         ; preds = %if.then74, %do.body62
  call fastcc void @cx24120_test_rom(ptr noundef %2)
  %call94 = call fastcc i32 @cx24120_readreg(ptr noundef %2, i8 noundef zeroext -5)
  %397 = trunc i32 %call94 to i8
  %conv96 = and i8 %397, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i839) #10
  %398 = getelementptr inbounds [2 x i8], ptr %buf.i839, i32 0, i32 1
  %399 = ptrtoint ptr %buf.i839 to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 -5, ptr %buf.i839, align 1
  %400 = ptrtoint ptr %398 to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 %conv96, ptr %398, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i840) #10
  %401 = getelementptr inbounds i8, ptr %msg.i840, i32 4
  %402 = ptrtoint ptr %401 to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 -1, ptr %401, align 4
  %403 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %config.i, align 4
  %405 = ptrtoint ptr %404 to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %404, align 4
  %conv.i842 = zext i8 %406 to i16
  %407 = ptrtoint ptr %msg.i840 to i32
  call void @__asan_store2_noabort(i32 %407)
  store i16 %conv.i842, ptr %msg.i840, align 4
  %flags.i843 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i840, i32 0, i32 1
  %408 = ptrtoint ptr %flags.i843 to i32
  call void @__asan_store2_noabort(i32 %408)
  store i16 0, ptr %flags.i843, align 2
  store i16 2, ptr %401, align 4
  %buf1.i845 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i840, i32 0, i32 3
  %409 = ptrtoint ptr %buf1.i845 to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %buf.i839, ptr %buf1.i845, align 4
  %410 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %2, align 4
  %call.i846 = call i32 @i2c_transfer(ptr noundef %411, ptr noundef nonnull %msg.i840, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i846)
  %cmp.not.i847 = icmp eq i32 %call.i846, 1
  br i1 %cmp.not.i847, label %do.body6.i851, label %do.end.i850

do.end.i850:                                      ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i848 = zext i8 %conv96 to i32
  %call5.i849 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i846, i32 noundef 251, i32 noundef %conv4.i848) #13
  br label %cx24120_writereg.exit856

do.body6.i851:                                    ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i854)) #10
          to label %cx24120_writereg.exit856 [label %if.then11.i854], !srcloc !292

if.then11.i854:                                   ; preds = %do.body6.i851
  call void @__sanitizer_cov_trace_pc() #12
  %412 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %2, align 4
  %dev.i852 = getelementptr inbounds %struct.i2c_adapter, ptr %413, i32 0, i32 9
  %conv14.i853 = zext i8 %conv96 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i852, ptr noundef nonnull @.str.21, i32 noundef 251, i32 noundef %conv14.i853) #10
  br label %cx24120_writereg.exit856

cx24120_writereg.exit856:                         ; preds = %if.then11.i854, %do.body6.i851, %do.end.i850
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i840) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i839) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i857) #10
  %414 = getelementptr inbounds [2 x i8], ptr %buf.i857, i32 0, i32 1
  %415 = ptrtoint ptr %buf.i857 to i32
  call void @__asan_store1_noabort(i32 %415)
  store i8 -32, ptr %buf.i857, align 1
  %416 = ptrtoint ptr %414 to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 118, ptr %414, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i858) #10
  %417 = getelementptr inbounds i8, ptr %msg.i858, i32 4
  %418 = ptrtoint ptr %417 to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 -1, ptr %417, align 4
  %419 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %config.i, align 4
  %421 = ptrtoint ptr %420 to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %420, align 4
  %conv.i860 = zext i8 %422 to i16
  %423 = ptrtoint ptr %msg.i858 to i32
  call void @__asan_store2_noabort(i32 %423)
  store i16 %conv.i860, ptr %msg.i858, align 4
  %flags.i861 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i858, i32 0, i32 1
  %424 = ptrtoint ptr %flags.i861 to i32
  call void @__asan_store2_noabort(i32 %424)
  store i16 0, ptr %flags.i861, align 2
  store i16 2, ptr %417, align 4
  %buf1.i863 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i858, i32 0, i32 3
  %425 = ptrtoint ptr %buf1.i863 to i32
  call void @__asan_store4_noabort(i32 %425)
  store ptr %buf.i857, ptr %buf1.i863, align 4
  %426 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %2, align 4
  %call.i864 = call i32 @i2c_transfer(ptr noundef %427, ptr noundef nonnull %msg.i858, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i864)
  %cmp.not.i865 = icmp eq i32 %call.i864, 1
  br i1 %cmp.not.i865, label %do.body6.i868, label %do.end.i867

do.end.i867:                                      ; preds = %cx24120_writereg.exit856
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i866 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i864, i32 noundef 224, i32 noundef 118) #13
  br label %cx24120_writereg.exit872

do.body6.i868:                                    ; preds = %cx24120_writereg.exit856
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i870)) #10
          to label %cx24120_writereg.exit872 [label %if.then11.i870], !srcloc !292

if.then11.i870:                                   ; preds = %do.body6.i868
  call void @__sanitizer_cov_trace_pc() #12
  %428 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %2, align 4
  %dev.i869 = getelementptr inbounds %struct.i2c_adapter, ptr %429, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i869, ptr noundef nonnull @.str.21, i32 noundef 224, i32 noundef 118) #10
  br label %cx24120_writereg.exit872

cx24120_writereg.exit872:                         ; preds = %if.then11.i870, %do.body6.i868, %do.end.i867
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i858) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i857) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i873) #10
  %430 = getelementptr inbounds [2 x i8], ptr %buf.i873, i32 0, i32 1
  %431 = ptrtoint ptr %buf.i873 to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 -9, ptr %buf.i873, align 1
  %432 = ptrtoint ptr %430 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 -127, ptr %430, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i874) #10
  %433 = getelementptr inbounds i8, ptr %msg.i874, i32 4
  %434 = ptrtoint ptr %433 to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 -1, ptr %433, align 4
  %435 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %config.i, align 4
  %437 = ptrtoint ptr %436 to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %436, align 4
  %conv.i876 = zext i8 %438 to i16
  %439 = ptrtoint ptr %msg.i874 to i32
  call void @__asan_store2_noabort(i32 %439)
  store i16 %conv.i876, ptr %msg.i874, align 4
  %flags.i877 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i874, i32 0, i32 1
  %440 = ptrtoint ptr %flags.i877 to i32
  call void @__asan_store2_noabort(i32 %440)
  store i16 0, ptr %flags.i877, align 2
  store i16 2, ptr %433, align 4
  %buf1.i879 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i874, i32 0, i32 3
  %441 = ptrtoint ptr %buf1.i879 to i32
  call void @__asan_store4_noabort(i32 %441)
  store ptr %buf.i873, ptr %buf1.i879, align 4
  %442 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %2, align 4
  %call.i880 = call i32 @i2c_transfer(ptr noundef %443, ptr noundef nonnull %msg.i874, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i880)
  %cmp.not.i881 = icmp eq i32 %call.i880, 1
  br i1 %cmp.not.i881, label %do.body6.i884, label %do.end.i883

do.end.i883:                                      ; preds = %cx24120_writereg.exit872
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i882 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i880, i32 noundef 247, i32 noundef 129) #13
  br label %cx24120_writereg.exit888

do.body6.i884:                                    ; preds = %cx24120_writereg.exit872
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i886)) #10
          to label %cx24120_writereg.exit888 [label %if.then11.i886], !srcloc !292

if.then11.i886:                                   ; preds = %do.body6.i884
  call void @__sanitizer_cov_trace_pc() #12
  %444 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %2, align 4
  %dev.i885 = getelementptr inbounds %struct.i2c_adapter, ptr %445, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i885, ptr noundef nonnull @.str.21, i32 noundef 247, i32 noundef 129) #10
  br label %cx24120_writereg.exit888

cx24120_writereg.exit888:                         ; preds = %if.then11.i886, %do.body6.i884, %do.end.i883
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i874) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i873) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i889) #10
  %446 = getelementptr inbounds [2 x i8], ptr %buf.i889, i32 0, i32 1
  %447 = ptrtoint ptr %buf.i889 to i32
  call void @__asan_store1_noabort(i32 %447)
  store i8 -8, ptr %buf.i889, align 1
  %448 = ptrtoint ptr %446 to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 0, ptr %446, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i890) #10
  %449 = getelementptr inbounds i8, ptr %msg.i890, i32 4
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 -1, ptr %449, align 4
  %451 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %config.i, align 4
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_load1_noabort(i32 %453)
  %454 = load i8, ptr %452, align 4
  %conv.i892 = zext i8 %454 to i16
  %455 = ptrtoint ptr %msg.i890 to i32
  call void @__asan_store2_noabort(i32 %455)
  store i16 %conv.i892, ptr %msg.i890, align 4
  %flags.i893 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i890, i32 0, i32 1
  %456 = ptrtoint ptr %flags.i893 to i32
  call void @__asan_store2_noabort(i32 %456)
  store i16 0, ptr %flags.i893, align 2
  store i16 2, ptr %449, align 4
  %buf1.i895 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i890, i32 0, i32 3
  %457 = ptrtoint ptr %buf1.i895 to i32
  call void @__asan_store4_noabort(i32 %457)
  store ptr %buf.i889, ptr %buf1.i895, align 4
  %458 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %2, align 4
  %call.i896 = call i32 @i2c_transfer(ptr noundef %459, ptr noundef nonnull %msg.i890, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i896)
  %cmp.not.i897 = icmp eq i32 %call.i896, 1
  br i1 %cmp.not.i897, label %do.body6.i900, label %do.end.i899

do.end.i899:                                      ; preds = %cx24120_writereg.exit888
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i898 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i896, i32 noundef 248, i32 noundef 0) #13
  br label %cx24120_writereg.exit904

do.body6.i900:                                    ; preds = %cx24120_writereg.exit888
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i902)) #10
          to label %cx24120_writereg.exit904 [label %if.then11.i902], !srcloc !292

if.then11.i902:                                   ; preds = %do.body6.i900
  call void @__sanitizer_cov_trace_pc() #12
  %460 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %2, align 4
  %dev.i901 = getelementptr inbounds %struct.i2c_adapter, ptr %461, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i901, ptr noundef nonnull @.str.21, i32 noundef 248, i32 noundef 0) #10
  br label %cx24120_writereg.exit904

cx24120_writereg.exit904:                         ; preds = %if.then11.i902, %do.body6.i900, %do.end.i899
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i890) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i889) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i905) #10
  %462 = getelementptr inbounds [2 x i8], ptr %buf.i905, i32 0, i32 1
  %463 = ptrtoint ptr %buf.i905 to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 -7, ptr %buf.i905, align 1
  %464 = ptrtoint ptr %462 to i32
  call void @__asan_store1_noabort(i32 %464)
  store i8 0, ptr %462, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i906) #10
  %465 = getelementptr inbounds i8, ptr %msg.i906, i32 4
  %466 = ptrtoint ptr %465 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 -1, ptr %465, align 4
  %467 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %config.i, align 4
  %469 = ptrtoint ptr %468 to i32
  call void @__asan_load1_noabort(i32 %469)
  %470 = load i8, ptr %468, align 4
  %conv.i908 = zext i8 %470 to i16
  %471 = ptrtoint ptr %msg.i906 to i32
  call void @__asan_store2_noabort(i32 %471)
  store i16 %conv.i908, ptr %msg.i906, align 4
  %flags.i909 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i906, i32 0, i32 1
  %472 = ptrtoint ptr %flags.i909 to i32
  call void @__asan_store2_noabort(i32 %472)
  store i16 0, ptr %flags.i909, align 2
  store i16 2, ptr %465, align 4
  %buf1.i911 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i906, i32 0, i32 3
  %473 = ptrtoint ptr %buf1.i911 to i32
  call void @__asan_store4_noabort(i32 %473)
  store ptr %buf.i905, ptr %buf1.i911, align 4
  %474 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %2, align 4
  %call.i912 = call i32 @i2c_transfer(ptr noundef %475, ptr noundef nonnull %msg.i906, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i912)
  %cmp.not.i913 = icmp eq i32 %call.i912, 1
  br i1 %cmp.not.i913, label %do.body6.i916, label %do.end.i915

do.end.i915:                                      ; preds = %cx24120_writereg.exit904
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i914 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i912, i32 noundef 249, i32 noundef 0) #13
  br label %cx24120_writereg.exit920

do.body6.i916:                                    ; preds = %cx24120_writereg.exit904
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i918)) #10
          to label %cx24120_writereg.exit920 [label %if.then11.i918], !srcloc !292

if.then11.i918:                                   ; preds = %do.body6.i916
  call void @__sanitizer_cov_trace_pc() #12
  %476 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %2, align 4
  %dev.i917 = getelementptr inbounds %struct.i2c_adapter, ptr %477, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i917, ptr noundef nonnull @.str.21, i32 noundef 249, i32 noundef 0) #10
  br label %cx24120_writereg.exit920

cx24120_writereg.exit920:                         ; preds = %if.then11.i918, %do.body6.i916, %do.end.i915
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i906) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i905) #10
  %478 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %fw, align 4
  %data102 = getelementptr inbounds %struct.firmware, ptr %479, i32 0, i32 1
  %480 = ptrtoint ptr %data102 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %data102, align 4
  %482 = ptrtoint ptr %479 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %479, align 4
  %484 = trunc i32 %483 to i16
  %conv105 = add i16 %484, -1
  call fastcc void @cx24120_writeregs(ptr noundef %2, i8 noundef zeroext -6, ptr noundef %481, i16 noundef zeroext %conv105, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i921) #10
  %485 = getelementptr inbounds [2 x i8], ptr %buf.i921, i32 0, i32 1
  %486 = ptrtoint ptr %buf.i921 to i32
  call void @__asan_store1_noabort(i32 %486)
  store i8 -9, ptr %buf.i921, align 1
  %487 = ptrtoint ptr %485 to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 -64, ptr %485, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i922) #10
  %488 = getelementptr inbounds i8, ptr %msg.i922, i32 4
  %489 = ptrtoint ptr %488 to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 -1, ptr %488, align 4
  %490 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %config.i, align 4
  %492 = ptrtoint ptr %491 to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %491, align 4
  %conv.i924 = zext i8 %493 to i16
  %494 = ptrtoint ptr %msg.i922 to i32
  call void @__asan_store2_noabort(i32 %494)
  store i16 %conv.i924, ptr %msg.i922, align 4
  %flags.i925 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i922, i32 0, i32 1
  %495 = ptrtoint ptr %flags.i925 to i32
  call void @__asan_store2_noabort(i32 %495)
  store i16 0, ptr %flags.i925, align 2
  store i16 2, ptr %488, align 4
  %buf1.i927 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i922, i32 0, i32 3
  %496 = ptrtoint ptr %buf1.i927 to i32
  call void @__asan_store4_noabort(i32 %496)
  store ptr %buf.i921, ptr %buf1.i927, align 4
  %497 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %2, align 4
  %call.i928 = call i32 @i2c_transfer(ptr noundef %498, ptr noundef nonnull %msg.i922, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i928)
  %cmp.not.i929 = icmp eq i32 %call.i928, 1
  br i1 %cmp.not.i929, label %do.body6.i932, label %do.end.i931

do.end.i931:                                      ; preds = %cx24120_writereg.exit920
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i930 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i928, i32 noundef 247, i32 noundef 192) #13
  br label %cx24120_writereg.exit936

do.body6.i932:                                    ; preds = %cx24120_writereg.exit920
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i934)) #10
          to label %cx24120_writereg.exit936 [label %if.then11.i934], !srcloc !292

if.then11.i934:                                   ; preds = %do.body6.i932
  call void @__sanitizer_cov_trace_pc() #12
  %499 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %2, align 4
  %dev.i933 = getelementptr inbounds %struct.i2c_adapter, ptr %500, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i933, ptr noundef nonnull @.str.21, i32 noundef 247, i32 noundef 192) #10
  br label %cx24120_writereg.exit936

cx24120_writereg.exit936:                         ; preds = %if.then11.i934, %do.body6.i932, %do.end.i931
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i922) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i921) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i937) #10
  %501 = getelementptr inbounds [2 x i8], ptr %buf.i937, i32 0, i32 1
  %502 = ptrtoint ptr %buf.i937 to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 -32, ptr %buf.i937, align 1
  %503 = ptrtoint ptr %501 to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 0, ptr %501, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i938) #10
  %504 = getelementptr inbounds i8, ptr %msg.i938, i32 4
  %505 = ptrtoint ptr %504 to i32
  call void @__asan_store4_noabort(i32 %505)
  store i32 -1, ptr %504, align 4
  %506 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %config.i, align 4
  %508 = ptrtoint ptr %507 to i32
  call void @__asan_load1_noabort(i32 %508)
  %509 = load i8, ptr %507, align 4
  %conv.i940 = zext i8 %509 to i16
  %510 = ptrtoint ptr %msg.i938 to i32
  call void @__asan_store2_noabort(i32 %510)
  store i16 %conv.i940, ptr %msg.i938, align 4
  %flags.i941 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i938, i32 0, i32 1
  %511 = ptrtoint ptr %flags.i941 to i32
  call void @__asan_store2_noabort(i32 %511)
  store i16 0, ptr %flags.i941, align 2
  store i16 2, ptr %504, align 4
  %buf1.i943 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i938, i32 0, i32 3
  %512 = ptrtoint ptr %buf1.i943 to i32
  call void @__asan_store4_noabort(i32 %512)
  store ptr %buf.i937, ptr %buf1.i943, align 4
  %513 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %2, align 4
  %call.i944 = call i32 @i2c_transfer(ptr noundef %514, ptr noundef nonnull %msg.i938, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i944)
  %cmp.not.i945 = icmp eq i32 %call.i944, 1
  br i1 %cmp.not.i945, label %do.body6.i948, label %do.end.i947

do.end.i947:                                      ; preds = %cx24120_writereg.exit936
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i946 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i944, i32 noundef 224, i32 noundef 0) #13
  br label %cx24120_writereg.exit952

do.body6.i948:                                    ; preds = %cx24120_writereg.exit936
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i950)) #10
          to label %cx24120_writereg.exit952 [label %if.then11.i950], !srcloc !292

if.then11.i950:                                   ; preds = %do.body6.i948
  call void @__sanitizer_cov_trace_pc() #12
  %515 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %2, align 4
  %dev.i949 = getelementptr inbounds %struct.i2c_adapter, ptr %516, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i949, ptr noundef nonnull @.str.21, i32 noundef 224, i32 noundef 0) #10
  br label %cx24120_writereg.exit952

cx24120_writereg.exit952:                         ; preds = %if.then11.i950, %do.body6.i948, %do.end.i947
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i938) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i937) #10
  %517 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %fw, align 4
  %519 = ptrtoint ptr %518 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %518, align 4
  %521 = trunc i32 %520 to i8
  %conv112 = add i8 %521, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i953) #10
  %522 = getelementptr inbounds [2 x i8], ptr %buf.i953, i32 0, i32 1
  %523 = ptrtoint ptr %buf.i953 to i32
  call void @__asan_store1_noabort(i32 %523)
  store i8 -8, ptr %buf.i953, align 1
  %524 = ptrtoint ptr %522 to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 %conv112, ptr %522, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i954) #10
  %525 = getelementptr inbounds i8, ptr %msg.i954, i32 4
  %526 = ptrtoint ptr %525 to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 -1, ptr %525, align 4
  %527 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %config.i, align 4
  %529 = ptrtoint ptr %528 to i32
  call void @__asan_load1_noabort(i32 %529)
  %530 = load i8, ptr %528, align 4
  %conv.i956 = zext i8 %530 to i16
  %531 = ptrtoint ptr %msg.i954 to i32
  call void @__asan_store2_noabort(i32 %531)
  store i16 %conv.i956, ptr %msg.i954, align 4
  %flags.i957 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i954, i32 0, i32 1
  %532 = ptrtoint ptr %flags.i957 to i32
  call void @__asan_store2_noabort(i32 %532)
  store i16 0, ptr %flags.i957, align 2
  store i16 2, ptr %525, align 4
  %buf1.i959 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i954, i32 0, i32 3
  %533 = ptrtoint ptr %buf1.i959 to i32
  call void @__asan_store4_noabort(i32 %533)
  store ptr %buf.i953, ptr %buf1.i959, align 4
  %534 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %2, align 4
  %call.i960 = call i32 @i2c_transfer(ptr noundef %535, ptr noundef nonnull %msg.i954, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i960)
  %cmp.not.i961 = icmp eq i32 %call.i960, 1
  br i1 %cmp.not.i961, label %do.body6.i965, label %do.end.i964

do.end.i964:                                      ; preds = %cx24120_writereg.exit952
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i962 = zext i8 %conv112 to i32
  %call5.i963 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i960, i32 noundef 248, i32 noundef %conv4.i962) #13
  br label %cx24120_writereg.exit970

do.body6.i965:                                    ; preds = %cx24120_writereg.exit952
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i968)) #10
          to label %cx24120_writereg.exit970 [label %if.then11.i968], !srcloc !292

if.then11.i968:                                   ; preds = %do.body6.i965
  call void @__sanitizer_cov_trace_pc() #12
  %536 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %2, align 4
  %dev.i966 = getelementptr inbounds %struct.i2c_adapter, ptr %537, i32 0, i32 9
  %conv14.i967 = zext i8 %conv112 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i966, ptr noundef nonnull @.str.21, i32 noundef 248, i32 noundef %conv14.i967) #10
  br label %cx24120_writereg.exit970

cx24120_writereg.exit970:                         ; preds = %if.then11.i968, %do.body6.i965, %do.end.i964
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i954) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i953) #10
  %538 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %fw, align 4
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %539, align 4
  %sub115 = add i32 %541, 65534
  %shr = lshr i32 %sub115, 8
  %conv117 = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i971) #10
  %542 = getelementptr inbounds [2 x i8], ptr %buf.i971, i32 0, i32 1
  %543 = ptrtoint ptr %buf.i971 to i32
  call void @__asan_store1_noabort(i32 %543)
  store i8 -7, ptr %buf.i971, align 1
  %544 = ptrtoint ptr %542 to i32
  call void @__asan_store1_noabort(i32 %544)
  store i8 %conv117, ptr %542, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i972) #10
  %545 = getelementptr inbounds i8, ptr %msg.i972, i32 4
  %546 = ptrtoint ptr %545 to i32
  call void @__asan_store4_noabort(i32 %546)
  store i32 -1, ptr %545, align 4
  %547 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %config.i, align 4
  %549 = ptrtoint ptr %548 to i32
  call void @__asan_load1_noabort(i32 %549)
  %550 = load i8, ptr %548, align 4
  %conv.i974 = zext i8 %550 to i16
  %551 = ptrtoint ptr %msg.i972 to i32
  call void @__asan_store2_noabort(i32 %551)
  store i16 %conv.i974, ptr %msg.i972, align 4
  %flags.i975 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i972, i32 0, i32 1
  %552 = ptrtoint ptr %flags.i975 to i32
  call void @__asan_store2_noabort(i32 %552)
  store i16 0, ptr %flags.i975, align 2
  store i16 2, ptr %545, align 4
  %buf1.i977 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i972, i32 0, i32 3
  %553 = ptrtoint ptr %buf1.i977 to i32
  call void @__asan_store4_noabort(i32 %553)
  store ptr %buf.i971, ptr %buf1.i977, align 4
  %554 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %2, align 4
  %call.i978 = call i32 @i2c_transfer(ptr noundef %555, ptr noundef nonnull %msg.i972, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i978)
  %cmp.not.i979 = icmp eq i32 %call.i978, 1
  br i1 %cmp.not.i979, label %do.body6.i983, label %do.end.i982

do.end.i982:                                      ; preds = %cx24120_writereg.exit970
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i980 = and i32 %shr, 255
  %call5.i981 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i978, i32 noundef 249, i32 noundef %conv4.i980) #13
  br label %cx24120_writereg.exit988

do.body6.i983:                                    ; preds = %cx24120_writereg.exit970
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i986)) #10
          to label %cx24120_writereg.exit988 [label %if.then11.i986], !srcloc !292

if.then11.i986:                                   ; preds = %do.body6.i983
  call void @__sanitizer_cov_trace_pc() #12
  %556 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %2, align 4
  %dev.i984 = getelementptr inbounds %struct.i2c_adapter, ptr %557, i32 0, i32 9
  %conv14.i985 = and i32 %shr, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i984, ptr noundef nonnull @.str.21, i32 noundef 249, i32 noundef %conv14.i985) #10
  br label %cx24120_writereg.exit988

cx24120_writereg.exit988:                         ; preds = %if.then11.i986, %do.body6.i983, %do.end.i982
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i972) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i971) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i989) #10
  %558 = getelementptr inbounds [2 x i8], ptr %buf.i989, i32 0, i32 1
  %559 = ptrtoint ptr %buf.i989 to i32
  call void @__asan_store1_noabort(i32 %559)
  store i8 -9, ptr %buf.i989, align 1
  %560 = ptrtoint ptr %558 to i32
  call void @__asan_store1_noabort(i32 %560)
  store i8 0, ptr %558, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i990) #10
  %561 = getelementptr inbounds i8, ptr %msg.i990, i32 4
  %562 = ptrtoint ptr %561 to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 -1, ptr %561, align 4
  %563 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %config.i, align 4
  %565 = ptrtoint ptr %564 to i32
  call void @__asan_load1_noabort(i32 %565)
  %566 = load i8, ptr %564, align 4
  %conv.i992 = zext i8 %566 to i16
  %567 = ptrtoint ptr %msg.i990 to i32
  call void @__asan_store2_noabort(i32 %567)
  store i16 %conv.i992, ptr %msg.i990, align 4
  %flags.i993 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i990, i32 0, i32 1
  %568 = ptrtoint ptr %flags.i993 to i32
  call void @__asan_store2_noabort(i32 %568)
  store i16 0, ptr %flags.i993, align 2
  store i16 2, ptr %561, align 4
  %buf1.i995 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i990, i32 0, i32 3
  %569 = ptrtoint ptr %buf1.i995 to i32
  call void @__asan_store4_noabort(i32 %569)
  store ptr %buf.i989, ptr %buf1.i995, align 4
  %570 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %2, align 4
  %call.i996 = call i32 @i2c_transfer(ptr noundef %571, ptr noundef nonnull %msg.i990, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i996)
  %cmp.not.i997 = icmp eq i32 %call.i996, 1
  br i1 %cmp.not.i997, label %do.body6.i1000, label %do.end.i999

do.end.i999:                                      ; preds = %cx24120_writereg.exit988
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i998 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i996, i32 noundef 247, i32 noundef 0) #13
  br label %cx24120_writereg.exit1004

do.body6.i1000:                                   ; preds = %cx24120_writereg.exit988
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i1002)) #10
          to label %cx24120_writereg.exit1004 [label %if.then11.i1002], !srcloc !292

if.then11.i1002:                                  ; preds = %do.body6.i1000
  call void @__sanitizer_cov_trace_pc() #12
  %572 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %2, align 4
  %dev.i1001 = getelementptr inbounds %struct.i2c_adapter, ptr %573, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i1001, ptr noundef nonnull @.str.21, i32 noundef 247, i32 noundef 0) #10
  br label %cx24120_writereg.exit1004

cx24120_writereg.exit1004:                        ; preds = %if.then11.i1002, %do.body6.i1000, %do.end.i999
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i990) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i989) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1005) #10
  %574 = getelementptr inbounds [2 x i8], ptr %buf.i1005, i32 0, i32 1
  %575 = ptrtoint ptr %buf.i1005 to i32
  call void @__asan_store1_noabort(i32 %575)
  store i8 -36, ptr %buf.i1005, align 1
  %576 = ptrtoint ptr %574 to i32
  call void @__asan_store1_noabort(i32 %576)
  store i8 0, ptr %574, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1006) #10
  %577 = getelementptr inbounds i8, ptr %msg.i1006, i32 4
  %578 = ptrtoint ptr %577 to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 -1, ptr %577, align 4
  %579 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %config.i, align 4
  %581 = ptrtoint ptr %580 to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %580, align 4
  %conv.i1008 = zext i8 %582 to i16
  %583 = ptrtoint ptr %msg.i1006 to i32
  call void @__asan_store2_noabort(i32 %583)
  store i16 %conv.i1008, ptr %msg.i1006, align 4
  %flags.i1009 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1006, i32 0, i32 1
  %584 = ptrtoint ptr %flags.i1009 to i32
  call void @__asan_store2_noabort(i32 %584)
  store i16 0, ptr %flags.i1009, align 2
  store i16 2, ptr %577, align 4
  %buf1.i1011 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1006, i32 0, i32 3
  %585 = ptrtoint ptr %buf1.i1011 to i32
  call void @__asan_store4_noabort(i32 %585)
  store ptr %buf.i1005, ptr %buf1.i1011, align 4
  %586 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %2, align 4
  %call.i1012 = call i32 @i2c_transfer(ptr noundef %587, ptr noundef nonnull %msg.i1006, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i1012)
  %cmp.not.i1013 = icmp eq i32 %call.i1012, 1
  br i1 %cmp.not.i1013, label %do.body6.i1016, label %do.end.i1015

do.end.i1015:                                     ; preds = %cx24120_writereg.exit1004
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i1014 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i1012, i32 noundef 220, i32 noundef 0) #13
  br label %cx24120_writereg.exit1020

do.body6.i1016:                                   ; preds = %cx24120_writereg.exit1004
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i1018)) #10
          to label %cx24120_writereg.exit1020 [label %if.then11.i1018], !srcloc !292

if.then11.i1018:                                  ; preds = %do.body6.i1016
  call void @__sanitizer_cov_trace_pc() #12
  %588 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %2, align 4
  %dev.i1017 = getelementptr inbounds %struct.i2c_adapter, ptr %589, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i1017, ptr noundef nonnull @.str.21, i32 noundef 220, i32 noundef 0) #10
  br label %cx24120_writereg.exit1020

cx24120_writereg.exit1020:                        ; preds = %if.then11.i1018, %do.body6.i1016, %do.end.i1015
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1006) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1005) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1021) #10
  %590 = getelementptr inbounds [2 x i8], ptr %buf.i1021, i32 0, i32 1
  %591 = ptrtoint ptr %buf.i1021 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 -36, ptr %buf.i1021, align 1
  %592 = ptrtoint ptr %590 to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 7, ptr %590, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1022) #10
  %593 = getelementptr inbounds i8, ptr %msg.i1022, i32 4
  %594 = ptrtoint ptr %593 to i32
  call void @__asan_store4_noabort(i32 %594)
  store i32 -1, ptr %593, align 4
  %595 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %config.i, align 4
  %597 = ptrtoint ptr %596 to i32
  call void @__asan_load1_noabort(i32 %597)
  %598 = load i8, ptr %596, align 4
  %conv.i1024 = zext i8 %598 to i16
  %599 = ptrtoint ptr %msg.i1022 to i32
  call void @__asan_store2_noabort(i32 %599)
  store i16 %conv.i1024, ptr %msg.i1022, align 4
  %flags.i1025 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1022, i32 0, i32 1
  %600 = ptrtoint ptr %flags.i1025 to i32
  call void @__asan_store2_noabort(i32 %600)
  store i16 0, ptr %flags.i1025, align 2
  store i16 2, ptr %593, align 4
  %buf1.i1027 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1022, i32 0, i32 3
  %601 = ptrtoint ptr %buf1.i1027 to i32
  call void @__asan_store4_noabort(i32 %601)
  store ptr %buf.i1021, ptr %buf1.i1027, align 4
  %602 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %2, align 4
  %call.i1028 = call i32 @i2c_transfer(ptr noundef %603, ptr noundef nonnull %msg.i1022, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i1028)
  %cmp.not.i1029 = icmp eq i32 %call.i1028, 1
  br i1 %cmp.not.i1029, label %do.body6.i1032, label %do.end.i1031

do.end.i1031:                                     ; preds = %cx24120_writereg.exit1020
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i1030 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i1028, i32 noundef 220, i32 noundef 7) #13
  br label %cx24120_writereg.exit1036

do.body6.i1032:                                   ; preds = %cx24120_writereg.exit1020
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i1034)) #10
          to label %cx24120_writereg.exit1036 [label %if.then11.i1034], !srcloc !292

if.then11.i1034:                                  ; preds = %do.body6.i1032
  call void @__sanitizer_cov_trace_pc() #12
  %604 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %2, align 4
  %dev.i1033 = getelementptr inbounds %struct.i2c_adapter, ptr %605, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i1033, ptr noundef nonnull @.str.21, i32 noundef 220, i32 noundef 7) #10
  br label %cx24120_writereg.exit1036

cx24120_writereg.exit1036:                        ; preds = %if.then11.i1034, %do.body6.i1032, %do.end.i1031
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1022) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1021) #10
  call void @msleep(i32 noundef 500) #10
  %call122 = call fastcc i32 @cx24120_readreg(ptr noundef %2, i8 noundef zeroext -31)
  %606 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %fw, align 4
  %data125 = getelementptr inbounds %struct.firmware, ptr %607, i32 0, i32 1
  %608 = ptrtoint ptr %data125 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %data125, align 4
  %610 = ptrtoint ptr %607 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %607, align 4
  %sub127 = add i32 %611, -1
  %arrayidx128 = getelementptr i8, ptr %609, i32 %sub127
  %612 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %612)
  %613 = load i8, ptr %arrayidx128, align 1
  %614 = trunc i32 %call122 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %613, i8 %614)
  %cmp130 = icmp eq i8 %613, %614
  br i1 %cmp130, label %do.body133, label %do.end153

do.body133:                                       ; preds = %cx24120_writereg.exit1036
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_init.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then145)) #10
          to label %if.end156 [label %if.then145], !srcloc !292

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #12
  %615 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %2, align 4
  %dev147 = getelementptr inbounds %struct.i2c_adapter, ptr %616, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_init.__UNIQUE_ID_ddebug329, ptr noundef %dev147, ptr noundef nonnull @.str.29) #10
  br label %if.end156

do.end153:                                        ; preds = %cx24120_writereg.exit1036
  call void @__sanitizer_cov_trace_pc() #12
  %call155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 0) #13
  br label %if.end156

if.end156:                                        ; preds = %do.end153, %if.then145, %do.body133
  %ret.0 = phi i32 [ -121, %do.end153 ], [ 0, %if.then145 ], [ 0, %do.body133 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1037) #10
  %617 = getelementptr inbounds [2 x i8], ptr %buf.i1037, i32 0, i32 1
  %618 = ptrtoint ptr %buf.i1037 to i32
  call void @__asan_store1_noabort(i32 %618)
  store i8 -36, ptr %buf.i1037, align 1
  %619 = ptrtoint ptr %617 to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 0, ptr %617, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1038) #10
  %620 = getelementptr inbounds i8, ptr %msg.i1038, i32 4
  %621 = ptrtoint ptr %620 to i32
  call void @__asan_store4_noabort(i32 %621)
  store i32 -1, ptr %620, align 4
  %622 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %config.i, align 4
  %624 = ptrtoint ptr %623 to i32
  call void @__asan_load1_noabort(i32 %624)
  %625 = load i8, ptr %623, align 4
  %conv.i1040 = zext i8 %625 to i16
  %626 = ptrtoint ptr %msg.i1038 to i32
  call void @__asan_store2_noabort(i32 %626)
  store i16 %conv.i1040, ptr %msg.i1038, align 4
  %flags.i1041 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1038, i32 0, i32 1
  %627 = ptrtoint ptr %flags.i1041 to i32
  call void @__asan_store2_noabort(i32 %627)
  store i16 0, ptr %flags.i1041, align 2
  store i16 2, ptr %620, align 4
  %buf1.i1043 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1038, i32 0, i32 3
  %628 = ptrtoint ptr %buf1.i1043 to i32
  call void @__asan_store4_noabort(i32 %628)
  store ptr %buf.i1037, ptr %buf1.i1043, align 4
  %629 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %2, align 4
  %call.i1044 = call i32 @i2c_transfer(ptr noundef %630, ptr noundef nonnull %msg.i1038, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i1044)
  %cmp.not.i1045 = icmp eq i32 %call.i1044, 1
  br i1 %cmp.not.i1045, label %do.body6.i1048, label %do.end.i1047

do.end.i1047:                                     ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i1046 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i1044, i32 noundef 220, i32 noundef 0) #13
  br label %cx24120_writereg.exit1052

do.body6.i1048:                                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i1050)) #10
          to label %cx24120_writereg.exit1052 [label %if.then11.i1050], !srcloc !292

if.then11.i1050:                                  ; preds = %do.body6.i1048
  call void @__sanitizer_cov_trace_pc() #12
  %631 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %2, align 4
  %dev.i1049 = getelementptr inbounds %struct.i2c_adapter, ptr %632, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i1049, ptr noundef nonnull @.str.21, i32 noundef 220, i32 noundef 0) #10
  br label %cx24120_writereg.exit1052

cx24120_writereg.exit1052:                        ; preds = %if.then11.i1050, %do.body6.i1048, %do.end.i1047
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1038) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1037) #10
  %633 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %634) #10
  br i1 %cmp130, label %if.end161, label %cx24120_writereg.exit1052.cleanup_crit_edge

cx24120_writereg.exit1052.cleanup_crit_edge:      ; preds = %cx24120_writereg.exit1052
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end161:                                        ; preds = %cx24120_writereg.exit1052
  %635 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %635)
  store i8 27, ptr %cmd, align 1
  %636 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %636)
  store i8 3, ptr %3, align 1
  %637 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %637)
  store i8 0, ptr %4, align 1
  %638 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %638)
  store i8 0, ptr %5, align 1
  %639 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %639)
  store i8 0, ptr %6, align 1
  %call167 = call fastcc i32 @cx24120_message_send(ptr noundef %2, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %cmp168.not = icmp eq i32 %call167, 0
  br i1 %cmp168.not, label %if.end176, label %do.end173

do.end173:                                        ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #12
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #13
  br label %cleanup

if.end176:                                        ; preds = %if.end161
  %call177 = call fastcc i32 @cx24120_set_vco(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp178.not = icmp eq i32 %call177, 0
  br i1 %cmp178.not, label %if.end186, label %do.end183

do.end183:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  %call185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #13
  br label %cleanup

if.end186:                                        ; preds = %if.end176
  %640 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %640)
  store i8 21, ptr %cmd, align 1
  %641 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %641)
  store i8 12, ptr %3, align 1
  %642 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %642, i32 4)
  store i32 0, ptr %4, align 1
  %643 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %643)
  store i8 5, ptr %7, align 1
  %644 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %644)
  store i8 2, ptr %8, align 1
  %645 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %645)
  store i8 2, ptr %9, align 1
  %646 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %646)
  store i8 0, ptr %10, align 1
  %647 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %647)
  store i8 5, ptr %11, align 1
  %648 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %648)
  store i8 2, ptr %12, align 1
  %649 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %649)
  store i8 2, ptr %13, align 1
  %650 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %650)
  store i8 0, ptr %14, align 1
  %call213 = call fastcc i32 @cx24120_message_send(ptr noundef %2, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.end221, label %do.end218

do.end218:                                        ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  %call220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #13
  br label %cleanup

if.end221:                                        ; preds = %if.end186
  %call222 = call fastcc i32 @cx24120_readreg(ptr noundef %2, i8 noundef zeroext -70)
  %conv224 = and i32 %call222, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv224)
  %cmp225.not = icmp eq i32 %conv224, 0
  br i1 %cmp225.not, label %do.body252, label %do.body228

do.body228:                                       ; preds = %if.end221
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_init.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then240)) #10
          to label %do.end248 [label %if.then240], !srcloc !292

if.then240:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #12
  %651 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %2, align 4
  %dev242 = getelementptr inbounds %struct.i2c_adapter, ptr %652, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_init.__UNIQUE_ID_ddebug330, ptr noundef %dev242, ptr noundef nonnull @.str.42, i32 noundef 0) #10
  br label %do.end248

do.end248:                                        ; preds = %if.then240, %do.body228
  %call250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #13
  br label %cleanup

do.body252:                                       ; preds = %if.end221
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_init.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then264)) #10
          to label %do.end269 [label %if.then264], !srcloc !292

if.then264:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #12
  %653 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %2, align 4
  %dev266 = getelementptr inbounds %struct.i2c_adapter, ptr %654, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_init.__UNIQUE_ID_ddebug331, ptr noundef %dev266, ptr noundef nonnull @.str.46) #10
  br label %do.end269

do.end269:                                        ; preds = %if.then264, %do.body252
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1053) #10
  %655 = getelementptr inbounds [2 x i8], ptr %buf.i1053, i32 0, i32 1
  %656 = ptrtoint ptr %buf.i1053 to i32
  call void @__asan_store1_noabort(i32 %656)
  store i8 -21, ptr %buf.i1053, align 1
  %657 = ptrtoint ptr %655 to i32
  call void @__asan_store1_noabort(i32 %657)
  store i8 10, ptr %655, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1054) #10
  %658 = getelementptr inbounds i8, ptr %msg.i1054, i32 4
  %659 = ptrtoint ptr %658 to i32
  call void @__asan_store4_noabort(i32 %659)
  store i32 196607, ptr %658, align 4
  %660 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %config.i, align 4
  %662 = ptrtoint ptr %661 to i32
  call void @__asan_load1_noabort(i32 %662)
  %663 = load i8, ptr %661, align 4
  %conv.i1056 = zext i8 %663 to i16
  %664 = ptrtoint ptr %msg.i1054 to i32
  call void @__asan_store2_noabort(i32 %664)
  store i16 %conv.i1056, ptr %msg.i1054, align 4
  %flags.i1057 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1054, i32 0, i32 1
  %665 = ptrtoint ptr %flags.i1057 to i32
  call void @__asan_store2_noabort(i32 %665)
  store i16 0, ptr %flags.i1057, align 2
  %buf1.i1059 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1054, i32 0, i32 3
  %666 = ptrtoint ptr %buf1.i1059 to i32
  call void @__asan_store4_noabort(i32 %666)
  store ptr %buf.i1053, ptr %buf1.i1059, align 4
  %667 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %2, align 4
  %call.i1060 = call i32 @i2c_transfer(ptr noundef %668, ptr noundef nonnull %msg.i1054, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i1060)
  %cmp.not.i1061 = icmp eq i32 %call.i1060, 1
  br i1 %cmp.not.i1061, label %do.body6.i1064, label %do.end.i1063

do.end.i1063:                                     ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i1062 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i1060, i32 noundef 235, i32 noundef 10) #13
  br label %cx24120_writereg.exit1068

do.body6.i1064:                                   ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %if.then11.i1066)) #10
          to label %cx24120_writereg.exit1068 [label %if.then11.i1066], !srcloc !292

if.then11.i1066:                                  ; preds = %do.body6.i1064
  call void @__sanitizer_cov_trace_pc() #12
  %669 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %2, align 4
  %dev.i1065 = getelementptr inbounds %struct.i2c_adapter, ptr %670, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i1065, ptr noundef nonnull @.str.21, i32 noundef 235, i32 noundef 10) #10
  br label %cx24120_writereg.exit1068

cx24120_writereg.exit1068:                        ; preds = %if.then11.i1066, %do.body6.i1064, %do.end.i1063
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1054) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1053) #10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i) #10
  %671 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i, i32 0, i32 1
  %672 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i, i32 0, i32 2
  %673 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i, i32 0, i32 2, i32 1
  %674 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i, i32 0, i32 2, i32 2
  %675 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i, i32 0, i32 2, i32 3
  %676 = getelementptr inbounds i8, ptr %cmd.i, i32 6
  %677 = call ptr @memset(ptr %676, i32 255, i32 26)
  %678 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %678)
  store i8 19, ptr %cmd.i, align 1
  %679 = ptrtoint ptr %671 to i32
  call void @__asan_store1_noabort(i32 %679)
  store i8 4, ptr %671, align 1
  %680 = ptrtoint ptr %672 to i32
  call void @__asan_store1_noabort(i32 %680)
  store i8 1, ptr %672, align 1
  %681 = ptrtoint ptr %673 to i32
  call void @__asan_store1_noabort(i32 %681)
  store i8 0, ptr %673, align 1
  %682 = ptrtoint ptr %674 to i32
  call void @__asan_store1_noabort(i32 %682)
  store i8 -1, ptr %674, align 1
  %683 = ptrtoint ptr %675 to i32
  call void @__asan_store1_noabort(i32 %683)
  store i8 1, ptr %675, align 1
  %call.i1069 = call fastcc i32 @cx24120_message_send(ptr noundef %2, ptr noundef nonnull %cmd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1069)
  %cmp.not.i1070 = icmp eq i32 %call.i1069, 0
  br i1 %cmp.not.i1070, label %if.end17.i, label %do.body.i

do.body.i:                                        ; preds = %cx24120_writereg.exit1068
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %cx24120_msg_mpeg_output_global_config.exit.thread1109)) #10
          to label %do.end284.critedge [label %cx24120_msg_mpeg_output_global_config.exit.thread1109], !srcloc !292

cx24120_msg_mpeg_output_global_config.exit.thread1109: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %684 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %2, align 4
  %dev.i1071 = getelementptr inbounds %struct.i2c_adapter, ptr %685, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug294, ptr noundef %dev.i1071, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.69) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #10
  br label %do.end284

if.end17.i:                                       ; preds = %cx24120_writereg.exit1068
  %mpeg_enabled.i = getelementptr inbounds %struct.cx24120_state, ptr %2, i32 0, i32 4
  %686 = ptrtoint ptr %mpeg_enabled.i to i32
  call void @__asan_store1_noabort(i32 %686)
  store i8 0, ptr %mpeg_enabled.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_init, %cx24120_msg_mpeg_output_global_config.exit.thread)) #10
          to label %lor.lhs.false.critedge [label %cx24120_msg_mpeg_output_global_config.exit.thread], !srcloc !292

cx24120_msg_mpeg_output_global_config.exit.thread: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %687 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %2, align 4
  %dev32.i = getelementptr inbounds %struct.i2c_adapter, ptr %688, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug295, ptr noundef %dev32.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.72) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #10
  br label %lor.lhs.false

lor.lhs.false.critedge:                           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.lhs.false.critedge, %cx24120_msg_mpeg_output_global_config.exit.thread
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i1072) #10
  %689 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1072, i32 0, i32 1
  %690 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1072, i32 0, i32 2
  %691 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1072, i32 0, i32 2, i32 1
  %692 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1072, i32 0, i32 2, i32 2
  %693 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1072, i32 0, i32 2, i32 3
  %694 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1072, i32 0, i32 2, i32 4
  %695 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1072, i32 0, i32 2, i32 5
  %696 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1072, i32 0, i32 2, i32 6
  %697 = getelementptr inbounds i8, ptr %cmd.i1072, i32 9
  %698 = call ptr @memset(ptr %697, i32 255, i32 23)
  %699 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %config.i, align 4
  %initial_mpeg_config.i = getelementptr inbounds %struct.cx24120_config, ptr %700, i32 0, i32 2
  %701 = ptrtoint ptr %initial_mpeg_config.i to i32
  call void @__asan_load1_noabort(i32 %701)
  %i.sroa.0.0.copyload.i = load i8, ptr %initial_mpeg_config.i, align 4
  %i.sroa.6.0.initial_mpeg_config.sroa_idx.i = getelementptr inbounds %struct.cx24120_config, ptr %700, i32 0, i32 2, i32 1
  %702 = ptrtoint ptr %i.sroa.6.0.initial_mpeg_config.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %702)
  %i.sroa.6.0.copyload.i = load i8, ptr %i.sroa.6.0.initial_mpeg_config.sroa_idx.i, align 1
  %i.sroa.9.0.initial_mpeg_config.sroa_idx.i = getelementptr inbounds %struct.cx24120_config, ptr %700, i32 0, i32 2, i32 2
  %703 = ptrtoint ptr %i.sroa.9.0.initial_mpeg_config.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %703)
  %i.sroa.9.0.copyload.i = load i8, ptr %i.sroa.9.0.initial_mpeg_config.sroa_idx.i, align 2
  %704 = ptrtoint ptr %cmd.i1072 to i32
  call void @__asan_store1_noabort(i32 %704)
  store i8 20, ptr %cmd.i1072, align 1
  %705 = ptrtoint ptr %689 to i32
  call void @__asan_store1_noabort(i32 %705)
  store i8 7, ptr %689, align 1
  %706 = ptrtoint ptr %690 to i32
  call void @__asan_store1_noabort(i32 %706)
  store i8 0, ptr %690, align 1
  %trunc.i = trunc i8 %i.sroa.0.0.copyload.i to i2
  %rev.i = call i2 @llvm.bitreverse.i2(i2 %trunc.i) #10
  %conv4.i1074 = zext i2 %rev.i to i8
  %707 = ptrtoint ptr %691 to i32
  call void @__asan_store1_noabort(i32 %707)
  store i8 %conv4.i1074, ptr %691, align 1
  %708 = ptrtoint ptr %692 to i32
  call void @__asan_store1_noabort(i32 %708)
  store i8 5, ptr %692, align 1
  %709 = ptrtoint ptr %693 to i32
  call void @__asan_store1_noabort(i32 %709)
  store i8 2, ptr %693, align 1
  %710 = lshr i8 %i.sroa.6.0.copyload.i, 1
  %and13.i = and i8 %710, 1
  %711 = ptrtoint ptr %694 to i32
  call void @__asan_store1_noabort(i32 %711)
  store i8 %and13.i, ptr %694, align 1
  %712 = and i8 %i.sroa.6.0.copyload.i, -16
  %713 = and i8 %i.sroa.9.0.copyload.i, 15
  %or2231.i = or i8 %713, %712
  %714 = ptrtoint ptr %695 to i32
  call void @__asan_store1_noabort(i32 %714)
  store i8 %or2231.i, ptr %695, align 1
  %715 = ptrtoint ptr %696 to i32
  call void @__asan_store1_noabort(i32 %715)
  store i8 16, ptr %696, align 1
  %call.i1075 = call fastcc i32 @cx24120_message_send(ptr noundef %2, ptr noundef nonnull %cmd.i1072) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i1072) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1075)
  %tobool274.not = icmp eq i32 %call.i1075, 0
  br i1 %tobool274.not, label %lor.lhs.false275, label %lor.lhs.false.do.end284_crit_edge

lor.lhs.false.do.end284_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end284

lor.lhs.false275:                                 ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i1076) #10
  %716 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1076, i32 0, i32 1
  %717 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1076, i32 0, i32 2
  %718 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1076, i32 0, i32 2, i32 1
  %719 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1076, i32 0, i32 2, i32 2
  %720 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1076, i32 0, i32 2, i32 3
  %721 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1076, i32 0, i32 2, i32 4
  %722 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1076, i32 0, i32 2, i32 5
  %723 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1076, i32 0, i32 2, i32 6
  %724 = getelementptr inbounds i8, ptr %cmd.i1076, i32 9
  %725 = call ptr @memset(ptr %724, i32 255, i32 23)
  %726 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %config.i, align 4
  %initial_mpeg_config.i1078 = getelementptr inbounds %struct.cx24120_config, ptr %727, i32 0, i32 2
  %728 = ptrtoint ptr %initial_mpeg_config.i1078 to i32
  call void @__asan_load1_noabort(i32 %728)
  %i.sroa.0.0.copyload.i1079 = load i8, ptr %initial_mpeg_config.i1078, align 4
  %i.sroa.6.0.initial_mpeg_config.sroa_idx.i1080 = getelementptr inbounds %struct.cx24120_config, ptr %727, i32 0, i32 2, i32 1
  %729 = ptrtoint ptr %i.sroa.6.0.initial_mpeg_config.sroa_idx.i1080 to i32
  call void @__asan_load1_noabort(i32 %729)
  %i.sroa.6.0.copyload.i1081 = load i8, ptr %i.sroa.6.0.initial_mpeg_config.sroa_idx.i1080, align 1
  %i.sroa.9.0.initial_mpeg_config.sroa_idx.i1082 = getelementptr inbounds %struct.cx24120_config, ptr %727, i32 0, i32 2, i32 2
  %730 = ptrtoint ptr %i.sroa.9.0.initial_mpeg_config.sroa_idx.i1082 to i32
  call void @__asan_load1_noabort(i32 %730)
  %i.sroa.9.0.copyload.i1083 = load i8, ptr %i.sroa.9.0.initial_mpeg_config.sroa_idx.i1082, align 2
  %731 = ptrtoint ptr %cmd.i1076 to i32
  call void @__asan_store1_noabort(i32 %731)
  store i8 20, ptr %cmd.i1076, align 1
  %732 = ptrtoint ptr %716 to i32
  call void @__asan_store1_noabort(i32 %732)
  store i8 7, ptr %716, align 1
  %733 = ptrtoint ptr %717 to i32
  call void @__asan_store1_noabort(i32 %733)
  store i8 1, ptr %717, align 1
  %trunc.i1084 = trunc i8 %i.sroa.0.0.copyload.i1079 to i2
  %rev.i1085 = call i2 @llvm.bitreverse.i2(i2 %trunc.i1084) #10
  %conv4.i1086 = zext i2 %rev.i1085 to i8
  %734 = ptrtoint ptr %718 to i32
  call void @__asan_store1_noabort(i32 %734)
  store i8 %conv4.i1086, ptr %718, align 1
  %735 = ptrtoint ptr %719 to i32
  call void @__asan_store1_noabort(i32 %735)
  store i8 5, ptr %719, align 1
  %736 = ptrtoint ptr %720 to i32
  call void @__asan_store1_noabort(i32 %736)
  store i8 2, ptr %720, align 1
  %737 = lshr i8 %i.sroa.6.0.copyload.i1081, 1
  %and13.i1087 = and i8 %737, 1
  %738 = ptrtoint ptr %721 to i32
  call void @__asan_store1_noabort(i32 %738)
  store i8 %and13.i1087, ptr %721, align 1
  %739 = and i8 %i.sroa.6.0.copyload.i1081, -16
  %740 = and i8 %i.sroa.9.0.copyload.i1083, 15
  %or2231.i1088 = or i8 %740, %739
  %741 = ptrtoint ptr %722 to i32
  call void @__asan_store1_noabort(i32 %741)
  store i8 %or2231.i1088, ptr %722, align 1
  %742 = ptrtoint ptr %723 to i32
  call void @__asan_store1_noabort(i32 %742)
  store i8 16, ptr %723, align 1
  %call.i1089 = call fastcc i32 @cx24120_message_send(ptr noundef %2, ptr noundef nonnull %cmd.i1076) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i1076) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1089)
  %tobool277.not = icmp eq i32 %call.i1089, 0
  br i1 %tobool277.not, label %lor.lhs.false278, label %lor.lhs.false275.do.end284_crit_edge

lor.lhs.false275.do.end284_crit_edge:             ; preds = %lor.lhs.false275
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end284

lor.lhs.false278:                                 ; preds = %lor.lhs.false275
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i1090) #10
  %743 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1090, i32 0, i32 1
  %744 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1090, i32 0, i32 2
  %745 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1090, i32 0, i32 2, i32 1
  %746 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1090, i32 0, i32 2, i32 2
  %747 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1090, i32 0, i32 2, i32 3
  %748 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1090, i32 0, i32 2, i32 4
  %749 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1090, i32 0, i32 2, i32 5
  %750 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i1090, i32 0, i32 2, i32 6
  %751 = getelementptr inbounds i8, ptr %cmd.i1090, i32 9
  %752 = call ptr @memset(ptr %751, i32 255, i32 23)
  %753 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %config.i, align 4
  %initial_mpeg_config.i1092 = getelementptr inbounds %struct.cx24120_config, ptr %754, i32 0, i32 2
  %755 = ptrtoint ptr %initial_mpeg_config.i1092 to i32
  call void @__asan_load1_noabort(i32 %755)
  %i.sroa.0.0.copyload.i1093 = load i8, ptr %initial_mpeg_config.i1092, align 4
  %i.sroa.6.0.initial_mpeg_config.sroa_idx.i1094 = getelementptr inbounds %struct.cx24120_config, ptr %754, i32 0, i32 2, i32 1
  %756 = ptrtoint ptr %i.sroa.6.0.initial_mpeg_config.sroa_idx.i1094 to i32
  call void @__asan_load1_noabort(i32 %756)
  %i.sroa.6.0.copyload.i1095 = load i8, ptr %i.sroa.6.0.initial_mpeg_config.sroa_idx.i1094, align 1
  %i.sroa.9.0.initial_mpeg_config.sroa_idx.i1096 = getelementptr inbounds %struct.cx24120_config, ptr %754, i32 0, i32 2, i32 2
  %757 = ptrtoint ptr %i.sroa.9.0.initial_mpeg_config.sroa_idx.i1096 to i32
  call void @__asan_load1_noabort(i32 %757)
  %i.sroa.9.0.copyload.i1097 = load i8, ptr %i.sroa.9.0.initial_mpeg_config.sroa_idx.i1096, align 2
  %758 = ptrtoint ptr %cmd.i1090 to i32
  call void @__asan_store1_noabort(i32 %758)
  store i8 20, ptr %cmd.i1090, align 1
  %759 = ptrtoint ptr %743 to i32
  call void @__asan_store1_noabort(i32 %759)
  store i8 7, ptr %743, align 1
  %760 = ptrtoint ptr %744 to i32
  call void @__asan_store1_noabort(i32 %760)
  store i8 2, ptr %744, align 1
  %trunc.i1098 = trunc i8 %i.sroa.0.0.copyload.i1093 to i2
  %rev.i1099 = call i2 @llvm.bitreverse.i2(i2 %trunc.i1098) #10
  %conv4.i1100 = zext i2 %rev.i1099 to i8
  %761 = ptrtoint ptr %745 to i32
  call void @__asan_store1_noabort(i32 %761)
  store i8 %conv4.i1100, ptr %745, align 1
  %762 = ptrtoint ptr %746 to i32
  call void @__asan_store1_noabort(i32 %762)
  store i8 5, ptr %746, align 1
  %763 = ptrtoint ptr %747 to i32
  call void @__asan_store1_noabort(i32 %763)
  store i8 2, ptr %747, align 1
  %764 = lshr i8 %i.sroa.6.0.copyload.i1095, 1
  %and13.i1101 = and i8 %764, 1
  %765 = ptrtoint ptr %748 to i32
  call void @__asan_store1_noabort(i32 %765)
  store i8 %and13.i1101, ptr %748, align 1
  %766 = and i8 %i.sroa.6.0.copyload.i1095, -16
  %767 = and i8 %i.sroa.9.0.copyload.i1097, 15
  %or2231.i1102 = or i8 %767, %766
  %768 = ptrtoint ptr %749 to i32
  call void @__asan_store1_noabort(i32 %768)
  store i8 %or2231.i1102, ptr %749, align 1
  %769 = ptrtoint ptr %750 to i32
  call void @__asan_store1_noabort(i32 %769)
  store i8 16, ptr %750, align 1
  %call.i1103 = call fastcc i32 @cx24120_message_send(ptr noundef %2, ptr noundef nonnull %cmd.i1090) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i1090) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1103)
  %tobool280.not = icmp eq i32 %call.i1103, 0
  br i1 %tobool280.not, label %if.end287, label %lor.lhs.false278.do.end284_crit_edge

lor.lhs.false278.do.end284_crit_edge:             ; preds = %lor.lhs.false278
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end284

do.end284.critedge:                               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #10
  br label %do.end284

do.end284:                                        ; preds = %do.end284.critedge, %lor.lhs.false278.do.end284_crit_edge, %lor.lhs.false275.do.end284_crit_edge, %lor.lhs.false.do.end284_crit_edge, %cx24120_msg_mpeg_output_global_config.exit.thread1109
  %call286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #13
  br label %cleanup

if.end287:                                        ; preds = %lor.lhs.false278
  %770 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %770)
  store i8 60, ptr %cmd, align 1
  %771 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %771)
  store i8 3, ptr %3, align 1
  %772 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %772)
  store i8 0, ptr %4, align 1
  %773 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %773)
  store i8 16, ptr %5, align 1
  %774 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %774)
  store i8 16, ptr %6, align 1
  %call296 = call fastcc i32 @cx24120_message_send(ptr noundef %2, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call296)
  %tobool297.not = icmp eq i32 %call296, 0
  br i1 %tobool297.not, label %if.end304, label %do.end301

do.end301:                                        ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #12
  %call303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #13
  br label %cleanup

if.end304:                                        ; preds = %if.end287
  %775 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %775)
  store i8 53, ptr %cmd, align 1
  %776 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %776)
  store i8 1, ptr %3, align 1
  %777 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %777)
  store i8 0, ptr %4, align 1
  %call314 = call fastcc i32 @cx24120_message_send(ptr noundef %2, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314)
  %cmp315.not = icmp eq i32 %call314, 0
  br i1 %cmp315.not, label %if.end318, label %if.end304.cleanup_crit_edge

if.end304.cleanup_crit_edge:                      ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end318:                                        ; preds = %if.end304
  %call319 = call fastcc i32 @cx24120_readreg(ptr noundef %2, i8 noundef zeroext 51)
  %778 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %778)
  store i8 1, ptr %4, align 1
  %call314.1 = call fastcc i32 @cx24120_message_send(ptr noundef %2, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314.1)
  %cmp315.not.1 = icmp eq i32 %call314.1, 0
  br i1 %cmp315.not.1, label %if.end318.1, label %if.end318.cleanup_crit_edge

if.end318.cleanup_crit_edge:                      ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end318.1:                                      ; preds = %if.end318
  %call319.1 = call fastcc i32 @cx24120_readreg(ptr noundef %2, i8 noundef zeroext 51)
  %779 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %779)
  store i8 2, ptr %4, align 1
  %call314.2 = call fastcc i32 @cx24120_message_send(ptr noundef %2, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314.2)
  %cmp315.not.2 = icmp eq i32 %call314.2, 0
  br i1 %cmp315.not.2, label %if.end318.2, label %if.end318.1.cleanup_crit_edge

if.end318.1.cleanup_crit_edge:                    ; preds = %if.end318.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end318.2:                                      ; preds = %if.end318.1
  %call319.2 = call fastcc i32 @cx24120_readreg(ptr noundef %2, i8 noundef zeroext 51)
  %780 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %780)
  store i8 3, ptr %4, align 1
  %call314.3 = call fastcc i32 @cx24120_message_send(ptr noundef %2, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314.3)
  %cmp315.not.3 = icmp eq i32 %call314.3, 0
  br i1 %cmp315.not.3, label %if.end318.3, label %if.end318.2.cleanup_crit_edge

if.end318.2.cleanup_crit_edge:                    ; preds = %if.end318.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end318.3:                                      ; preds = %if.end318.2
  call void @__sanitizer_cov_trace_pc() #12
  %call319.3 = call fastcc i32 @cx24120_readreg(ptr noundef %2, i8 noundef zeroext 51)
  %conv330 = and i32 %call319, 255
  %conv332 = and i32 %call319.1, 255
  %conv334 = and i32 %call319.2, 255
  %conv336 = and i32 %call319.3, 255
  %call337 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %conv330, i32 noundef %conv332, i32 noundef %conv334, i32 noundef %conv336) #13
  %strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %781 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %781)
  store i8 1, ptr %strength, align 4
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %782 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %782)
  store i8 0, ptr %stat, align 1
  %cnr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %783 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %783)
  store i8 1, ptr %cnr, align 1
  %stat343 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %784 = ptrtoint ptr %stat343 to i32
  call void @__asan_store1_noabort(i32 %784)
  store i8 0, ptr %stat343, align 1
  %post_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %785 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %785)
  store i8 1, ptr %post_bit_error, align 4
  %stat348 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %786 = ptrtoint ptr %stat348 to i32
  call void @__asan_store1_noabort(i32 %786)
  store i8 0, ptr %stat348, align 1
  %post_bit_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %787 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %787)
  store i8 1, ptr %post_bit_count, align 1
  %stat353 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %788 = ptrtoint ptr %stat353 to i32
  call void @__asan_store1_noabort(i32 %788)
  store i8 0, ptr %stat353, align 1
  %block_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48
  %789 = ptrtoint ptr %block_error to i32
  call void @__asan_store1_noabort(i32 %789)
  store i8 1, ptr %block_error, align 2
  %stat358 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %790 = ptrtoint ptr %stat358 to i32
  call void @__asan_store1_noabort(i32 %790)
  store i8 0, ptr %stat358, align 1
  %block_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49
  %791 = ptrtoint ptr %block_count to i32
  call void @__asan_store1_noabort(i32 %791)
  store i8 1, ptr %block_count, align 1
  %stat363 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %792 = ptrtoint ptr %stat363 to i32
  call void @__asan_store1_noabort(i32 %792)
  store i8 0, ptr %stat363, align 1
  %793 = ptrtoint ptr %cold_init to i32
  call void @__asan_store1_noabort(i32 %793)
  store i8 1, ptr %cold_init, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end318.3, %if.end318.2.cleanup_crit_edge, %if.end318.1.cleanup_crit_edge, %if.end318.cleanup_crit_edge, %if.end304.cleanup_crit_edge, %do.end301, %do.end284, %do.end248, %do.end218, %do.end183, %do.end173, %cx24120_writereg.exit1052.cleanup_crit_edge, %do.end58, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call53, %do.end58 ], [ -121, %do.end173 ], [ %call177, %do.end183 ], [ -121, %do.end218 ], [ -121, %do.end248 ], [ -121, %do.end284 ], [ -121, %do.end301 ], [ 0, %if.end318.3 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %cx24120_writereg.exit1052.cleanup_crit_edge ], [ %call314, %if.end304.cleanup_crit_edge ], [ %call314.1, %if.end318.cleanup_crit_edge ], [ %call314.2, %if.end318.1.cleanup_crit_edge ], [ %call314.3, %if.end318.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx24120_sleep(ptr nocapture noundef readnone %fe) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24120_tune(ptr nocapture noundef %fe, i1 noundef zeroext %re_tune, i32 noundef %mode_flags, ptr nocapture noundef readnone %delay, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_tune.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_tune, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !292

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  %conv = zext i1 %re_tune to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_tune.__UNIQUE_ID_ddebug332, ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %conv) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  br i1 %re_tune, label %if.then6, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then6:                                         ; preds = %do.end
  %call7 = tail call i32 @cx24120_set_frontend(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end11_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %call12 = tail call i32 @cx24120_read_status(ptr noundef %fe, ptr noundef %status)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call7, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx24120_get_algo(ptr nocapture noundef readnone %fe) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24120_set_frontend(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %buf.i414 = alloca [2 x i8], align 1
  %msg.i415 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %cmd = alloca %struct.cx24120_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #10
  %2 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2
  %4 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %5 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 2
  %6 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 5
  %9 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 6
  %10 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 7
  %11 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 8
  %12 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 9
  %13 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 10
  %14 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 11
  %15 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 12
  %16 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 13
  %17 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 14
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %18 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  %19 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delivery_system, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %20, label %do.body22 [
    i32 6, label %do.body
    i32 5, label %do.body4
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then)) #10
          to label %sw.epilog [label %if.then], !srcloc !292

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_frontend.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.76) #10
  br label %sw.epilog

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then16)) #10
          to label %sw.epilog [label %if.then16], !srcloc !292

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %dev18 = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_frontend.__UNIQUE_ID_ddebug317, ptr noundef %dev18, ptr noundef nonnull @.str.77) #10
  br label %sw.epilog

do.body22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then34)) #10
          to label %cleanup [label %if.then34], !srcloc !292

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %dev36 = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %delivery_system, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_frontend.__UNIQUE_ID_ddebug318, ptr noundef %dev36, ptr noundef nonnull @.str.78, i32 noundef %29) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.then16, %do.body4, %if.then, %do.body
  %30 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delivery_system, align 4
  %dnxt = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7
  %delsys = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 4
  %32 = ptrtoint ptr %delsys to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %delsys, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %modulation, align 4
  %modulation43 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 5
  %35 = ptrtoint ptr %modulation43 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %modulation43, align 4
  %36 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dtv_property_cache, align 4
  %38 = ptrtoint ptr %dnxt to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dnxt, align 4
  %pilot = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 13
  %39 = ptrtoint ptr %pilot to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pilot, align 4
  %pilot47 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 6
  %41 = ptrtoint ptr %pilot47 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %pilot47, align 4
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %42 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %inversion, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_inversion.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then.i)) #10
          to label %do.end.i [label %if.then.i], !srcloc !292

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %45, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_inversion.__UNIQUE_ID_ddebug312, ptr noundef %dev.i, ptr noundef nonnull @.str.74, i32 noundef %43) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %46 = icmp ult i32 %43, 3
  br i1 %46, label %switch.lookup, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %do.end.i
  %switch.cast = trunc i32 %43 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 787456, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %inversion_val8.i = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 11
  %47 = ptrtoint ptr %inversion_val8.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %switch.masked, ptr %inversion_val8.i, align 4
  %inversion10.i = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 2
  %48 = ptrtoint ptr %inversion10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %43, ptr %inversion10.i, align 4
  %49 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %modulation, align 4
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %51 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %fec_inner, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_fec.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then.i401)) #10
          to label %do.end.i402 [label %if.then.i401], !srcloc !292

if.then.i401:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %dev.i400 = getelementptr inbounds %struct.i2c_adapter, ptr %54, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_fec.__UNIQUE_ID_ddebug313, ptr noundef %dev.i400, ptr noundef nonnull @.str.88, i32 noundef %50, i32 noundef %52) #10
  br label %do.end.i402

do.end.i402:                                      ; preds = %if.then.i401, %switch.lookup
  %fec3.i = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 3
  %55 = ptrtoint ptr %fec3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %fec3.i, align 4
  %56 = ptrtoint ptr %delsys to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %delsys, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i402
  %idx.03.i = phi i32 [ 0, %do.end.i402 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [20 x %struct.cx24120_modfec_table], ptr @modfec_table, i32 0, i32 %idx.03.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %57)
  %cmp6.not.i = icmp eq i32 %59, %57
  br i1 %cmp6.not.i, label %if.end8.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end8.i:                                        ; preds = %for.body.i
  %mod10.i = getelementptr [20 x %struct.cx24120_modfec_table], ptr @modfec_table, i32 0, i32 %idx.03.i, i32 1
  %60 = ptrtoint ptr %mod10.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mod10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %50)
  %cmp11.not.i = icmp eq i32 %61, %50
  br i1 %cmp11.not.i, label %if.end13.i, label %if.end8.i.for.inc.i_crit_edge

if.end8.i.for.inc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end8.i
  %fec15.i = getelementptr [20 x %struct.cx24120_modfec_table], ptr @modfec_table, i32 0, i32 %idx.03.i, i32 2
  %62 = ptrtoint ptr %fec15.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %fec15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %52)
  %cmp16.not.i = icmp eq i32 %63, %52
  br i1 %cmp16.not.i, label %if.end18.i, label %if.end13.i.for.inc.i_crit_edge

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %fec_mask.i = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 8
  %64 = ptrtoint ptr %fec_mask.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %fec_mask.i, align 1
  %val.i = getelementptr [20 x %struct.cx24120_modfec_table], ptr @modfec_table, i32 0, i32 %idx.03.i, i32 3
  %65 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %val.i, align 4
  %fec_val.i = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 7
  %67 = ptrtoint ptr %fec_val.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %fec_val.i, align 4
  br label %cx24120_set_fec.exit

for.inc.i:                                        ; preds = %if.end13.i.for.inc.i_crit_edge, %if.end8.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %idx.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %57)
  %cmp24.i = icmp eq i32 %57, 6
  br i1 %cmp24.i, label %if.then25.i, label %if.else.i

if.then25.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %fec_mask27.i = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 8
  %68 = ptrtoint ptr %fec_mask27.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %fec_mask27.i, align 1
  %fec_val29.i = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 7
  %69 = ptrtoint ptr %fec_val29.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %fec_val29.i, align 4
  br label %cx24120_set_fec.exit

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %fec_val31.i = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 7
  %70 = ptrtoint ptr %fec_val31.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 46, ptr %fec_val31.i, align 4
  %fec_mask33.i = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 8
  %71 = ptrtoint ptr %fec_mask33.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -84, ptr %fec_mask33.i, align 1
  br label %cx24120_set_fec.exit

cx24120_set_fec.exit:                             ; preds = %if.else.i, %if.then25.i, %if.end18.i
  %72 = ptrtoint ptr %pilot to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pilot, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_pilot.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then.i404)) #10
          to label %cx24120_set_pilot.exit [label %if.then.i404], !srcloc !292

if.then.i404:                                     ; preds = %cx24120_set_fec.exit
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %dev.i403 = getelementptr inbounds %struct.i2c_adapter, ptr %75, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_pilot.__UNIQUE_ID_ddebug314, ptr noundef %dev.i403, ptr noundef nonnull @.str.74, i32 noundef %73) #10
  br label %cx24120_set_pilot.exit

cx24120_set_pilot.exit:                           ; preds = %if.then.i404, %cx24120_set_fec.exit
  %76 = ptrtoint ptr %delsys to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %delsys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %77)
  %cmp.not.i = icmp eq i32 %77, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %switch.selectcmp.i = icmp eq i32 %73, 0
  %switch.select.i = select i1 %switch.selectcmp.i, i8 64, i8 -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %switch.selectcmp2.i = icmp eq i32 %73, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, i8 0, i8 %switch.select.i
  %.sink.i405 = select i1 %cmp.not.i, i8 %switch.select3.i, i8 0
  %pilot_val7.i = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 12
  %78 = ptrtoint ptr %pilot_val7.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %.sink.i405, ptr %pilot_val7.i, align 1
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %79 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %symbol_rate, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_symbolrate.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then.i408)) #10
          to label %cx24120_set_symbolrate.exit [label %if.then.i408], !srcloc !292

if.then.i408:                                     ; preds = %cx24120_set_pilot.exit
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %dev.i407 = getelementptr inbounds %struct.i2c_adapter, ptr %82, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_symbolrate.__UNIQUE_ID_ddebug315, ptr noundef %dev.i407, ptr noundef nonnull @.str.74, i32 noundef %80) #10
  br label %cx24120_set_symbolrate.exit

cx24120_set_symbolrate.exit:                      ; preds = %if.then.i408, %cx24120_set_pilot.exit
  %symbol_rate.i = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 1
  %83 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %80, ptr %symbol_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31000000, i32 %80)
  %cmp.i = icmp ugt i32 %80, 31000000
  %spec.select.i = select i1 %cmp.i, i8 2, i8 3
  %spec.select3.i = select i1 %cmp.i, i8 4, i8 6
  %84 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 9
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %spec.select.i, ptr %84, align 2
  %86 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 7, i32 10
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %spec.select3.i, ptr %86, align 1
  %88 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %demodulator_priv, align 4
  %dcur.i = getelementptr inbounds %struct.cx24120_state, ptr %89, i32 0, i32 6
  %dnxt.i = getelementptr inbounds %struct.cx24120_state, ptr %89, i32 0, i32 7
  %90 = call ptr @memcpy(ptr %dcur.i, ptr %dnxt.i, i32 36)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then77)) #10
          to label %do.body84 [label %if.then77], !srcloc !292

if.then77:                                        ; preds = %cx24120_set_symbolrate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %dev79 = getelementptr inbounds %struct.i2c_adapter, ptr %92, i32 0, i32 9
  %delsys80 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 4
  %93 = ptrtoint ptr %delsys80 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delsys80, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_frontend.__UNIQUE_ID_ddebug319, ptr noundef %dev79, ptr noundef nonnull @.str.79, i32 noundef %94) #10
  br label %do.body84

do.body84:                                        ; preds = %if.then77, %cx24120_set_symbolrate.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then96)) #10
          to label %do.body104 [label %if.then96], !srcloc !292

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %dev98 = getelementptr inbounds %struct.i2c_adapter, ptr %96, i32 0, i32 9
  %modulation100 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 5
  %97 = ptrtoint ptr %modulation100 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %modulation100, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_frontend.__UNIQUE_ID_ddebug320, ptr noundef %dev98, ptr noundef nonnull @.str.80, i32 noundef %98) #10
  br label %do.body104

do.body104:                                       ; preds = %if.then96, %do.body84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then116)) #10
          to label %do.body124 [label %if.then116], !srcloc !292

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %dev118 = getelementptr inbounds %struct.i2c_adapter, ptr %100, i32 0, i32 9
  %dcur119 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6
  %101 = ptrtoint ptr %dcur119 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dcur119, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_frontend.__UNIQUE_ID_ddebug321, ptr noundef %dev118, ptr noundef nonnull @.str.81, i32 noundef %102) #10
  br label %do.body124

do.body124:                                       ; preds = %if.then116, %do.body104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then136)) #10
          to label %do.body145 [label %if.then136], !srcloc !292

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  %dev138 = getelementptr inbounds %struct.i2c_adapter, ptr %104, i32 0, i32 9
  %pilot140 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 6
  %105 = ptrtoint ptr %pilot140 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pilot140, align 4
  %pilot_val = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 12
  %107 = ptrtoint ptr %pilot_val to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %pilot_val, align 1
  %conv = zext i8 %108 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_frontend.__UNIQUE_ID_ddebug322, ptr noundef %dev138, ptr noundef nonnull @.str.82, i32 noundef %106, i32 noundef %conv) #10
  br label %do.body145

do.body145:                                       ; preds = %if.then136, %do.body124
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then157)) #10
          to label %do.body169 [label %if.then157], !srcloc !292

if.then157:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 4
  %dev159 = getelementptr inbounds %struct.i2c_adapter, ptr %110, i32 0, i32 9
  %symbol_rate161 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 1
  %111 = ptrtoint ptr %symbol_rate161 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %symbol_rate161, align 4
  %clkdiv = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 9
  %113 = ptrtoint ptr %clkdiv to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %clkdiv, align 2
  %conv163 = zext i8 %114 to i32
  %ratediv = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 10
  %115 = ptrtoint ptr %ratediv to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %ratediv, align 1
  %conv165 = zext i8 %116 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_frontend.__UNIQUE_ID_ddebug323, ptr noundef %dev159, ptr noundef nonnull @.str.83, i32 noundef %112, i32 noundef %conv163, i32 noundef %conv165) #10
  br label %do.body169

do.body169:                                       ; preds = %if.then157, %do.body145
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then181)) #10
          to label %do.body192 [label %if.then181], !srcloc !292

if.then181:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #12
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 4
  %dev183 = getelementptr inbounds %struct.i2c_adapter, ptr %118, i32 0, i32 9
  %fec = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 3
  %119 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %fec, align 4
  %fec_mask = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 8
  %121 = ptrtoint ptr %fec_mask to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %fec_mask, align 1
  %conv186 = zext i8 %122 to i32
  %fec_val = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 7
  %123 = ptrtoint ptr %fec_val to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %fec_val, align 4
  %conv188 = zext i8 %124 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_frontend.__UNIQUE_ID_ddebug324, ptr noundef %dev183, ptr noundef nonnull @.str.84, i32 noundef %120, i32 noundef %conv186, i32 noundef %conv188) #10
  br label %do.body192

do.body192:                                       ; preds = %if.then181, %do.body169
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then204)) #10
          to label %do.end213 [label %if.then204], !srcloc !292

if.then204:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 4
  %dev206 = getelementptr inbounds %struct.i2c_adapter, ptr %126, i32 0, i32 9
  %inversion208 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 2
  %127 = ptrtoint ptr %inversion208 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %inversion208, align 4
  %inversion_val = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 11
  %129 = ptrtoint ptr %inversion_val to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %inversion_val, align 4
  %conv210 = zext i8 %130 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_frontend.__UNIQUE_ID_ddebug325, ptr noundef %dev206, ptr noundef nonnull @.str.85, i32 noundef %128, i32 noundef %conv210) #10
  br label %do.end213

do.end213:                                        ; preds = %if.then204, %do.body192
  %need_clock_set = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 5
  %131 = ptrtoint ptr %need_clock_set to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %need_clock_set, align 2
  %132 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 17, ptr %cmd, align 1
  %133 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 15, ptr %2, align 1
  %134 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %3, align 1
  %dcur214 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6
  %135 = ptrtoint ptr %dcur214 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dcur214, align 4
  %and = lshr i32 %136, 16
  %conv216 = trunc i32 %and to i8
  %137 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv216, ptr %4, align 1
  %and221 = lshr i32 %136, 8
  %conv223 = trunc i32 %and221 to i8
  %138 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv223, ptr %5, align 1
  %conv229 = trunc i32 %136 to i8
  %139 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv229, ptr %6, align 1
  %symbol_rate233 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 1
  %140 = ptrtoint ptr %symbol_rate233 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %symbol_rate233, align 4
  %div = udiv i32 %141, 1000
  %and234 = lshr i32 %div, 8
  %conv236 = trunc i32 %and234 to i8
  %142 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv236, ptr %7, align 1
  %conv243 = trunc i32 %div to i8
  %143 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %conv243, ptr %8, align 1
  %inversion247 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 2
  %144 = ptrtoint ptr %inversion247 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %inversion247, align 4
  %conv248 = trunc i32 %145 to i8
  %146 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv248, ptr %9, align 1
  %fec_val252 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 7
  %147 = ptrtoint ptr %fec_val252 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %fec_val252, align 4
  %pilot_val255 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 12
  %149 = ptrtoint ptr %pilot_val255 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %pilot_val255, align 1
  %or371 = or i8 %150, %148
  %151 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %or371, ptr %10, align 1
  %152 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 19, ptr %11, align 1
  %153 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 -120, ptr %12, align 1
  %154 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %13, align 1
  %fec_mask267 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 8
  %155 = ptrtoint ptr %fec_mask267 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %fec_mask267, align 1
  %157 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %14, align 1
  %ratediv271 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 10
  %158 = ptrtoint ptr %ratediv271 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %ratediv271, align 1
  %160 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %159, ptr %15, align 1
  %clkdiv275 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 9
  %161 = ptrtoint ptr %clkdiv275 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %clkdiv275, align 2
  %163 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %16, align 1
  %164 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %17, align 1
  %call280 = call fastcc i32 @cx24120_message_send(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call280)
  %cmp281.not = icmp eq i32 %call280, 0
  br i1 %cmp281.not, label %if.end284, label %do.end213.cleanup_crit_edge

do.end213.cleanup_crit_edge:                      ; preds = %do.end213
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end284:                                        ; preds = %do.end213
  %165 = ptrtoint ptr %clkdiv275 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %clkdiv275, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %167 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %168 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 -26, ptr %buf.i, align 1
  %169 = ptrtoint ptr %167 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %166, ptr %167, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #10
  %170 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 196607, ptr %170, align 4
  %config.i = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 1
  %172 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %config.i, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %173, align 4
  %conv.i = zext i8 %175 to i16
  %176 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %177 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %178 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %buf.i, ptr %buf1.i, align 4
  %179 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %180, ptr noundef nonnull %msg.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i410 = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i410, label %do.body6.i, label %do.end.i411

do.end.i411:                                      ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i = zext i8 %166 to i32
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i, i32 noundef 230, i32 noundef %conv4.i) #13
  br label %cx24120_writereg.exit

do.body6.i:                                       ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then11.i)) #10
          to label %cx24120_writereg.exit [label %if.then11.i], !srcloc !292

if.then11.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %1, align 4
  %dev.i412 = getelementptr inbounds %struct.i2c_adapter, ptr %182, i32 0, i32 9
  %conv14.i = zext i8 %166 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i412, ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef %conv14.i) #10
  br label %cx24120_writereg.exit

cx24120_writereg.exit:                            ; preds = %if.then11.i, %do.body6.i, %do.end.i411
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  %call288 = call fastcc i32 @cx24120_readreg(ptr noundef %1, i8 noundef zeroext -16)
  %183 = ptrtoint ptr %ratediv271 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %ratediv271, align 1
  %185 = trunc i32 %call288 to i8
  %186 = and i8 %185, -16
  %conv294 = or i8 %186, %184
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i414) #10
  %187 = getelementptr inbounds [2 x i8], ptr %buf.i414, i32 0, i32 1
  %188 = ptrtoint ptr %buf.i414 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 -16, ptr %buf.i414, align 1
  %189 = ptrtoint ptr %187 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %conv294, ptr %187, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i415) #10
  %190 = getelementptr inbounds i8, ptr %msg.i415, i32 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 196607, ptr %190, align 4
  %192 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %config.i, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %193, align 4
  %conv.i417 = zext i8 %195 to i16
  %196 = ptrtoint ptr %msg.i415 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %conv.i417, ptr %msg.i415, align 4
  %flags.i418 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i415, i32 0, i32 1
  %197 = ptrtoint ptr %flags.i418 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 0, ptr %flags.i418, align 2
  %buf1.i420 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i415, i32 0, i32 3
  %198 = ptrtoint ptr %buf1.i420 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %buf.i414, ptr %buf1.i420, align 4
  %199 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %1, align 4
  %call.i421 = call i32 @i2c_transfer(ptr noundef %200, ptr noundef nonnull %msg.i415, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i421)
  %cmp.not.i422 = icmp eq i32 %call.i421, 1
  br i1 %cmp.not.i422, label %do.body6.i426, label %do.end.i425

do.end.i425:                                      ; preds = %cx24120_writereg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i423 = zext i8 %conv294 to i32
  %call5.i424 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i421, i32 noundef 240, i32 noundef %conv4.i423) #13
  br label %cx24120_writereg.exit431

do.body6.i426:                                    ; preds = %cx24120_writereg.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_frontend, %if.then11.i429)) #10
          to label %cx24120_writereg.exit431 [label %if.then11.i429], !srcloc !292

if.then11.i429:                                   ; preds = %do.body6.i426
  call void @__sanitizer_cov_trace_pc() #12
  %201 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %1, align 4
  %dev.i427 = getelementptr inbounds %struct.i2c_adapter, ptr %202, i32 0, i32 9
  %conv14.i428 = zext i8 %conv294 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i427, ptr noundef nonnull @.str.21, i32 noundef 240, i32 noundef %conv14.i428) #10
  br label %cx24120_writereg.exit431

cx24120_writereg.exit431:                         ; preds = %if.then11.i429, %do.body6.i426, %do.end.i425
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i415) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i414) #10
  br label %cleanup

cleanup:                                          ; preds = %cx24120_writereg.exit431, %do.end213.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.then34, %do.body22
  %retval.0 = phi i32 [ 0, %cx24120_writereg.exit431 ], [ -22, %if.then34 ], [ %call280, %do.end213.cleanup_crit_edge ], [ -22, %do.body22 ], [ -22, %do.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24120_get_frontend(ptr nocapture noundef %fe, ptr nocapture noundef %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_get_frontend.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_get_frontend, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !292

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_get_frontend.__UNIQUE_ID_ddebug333, ptr noundef %dev, ptr noundef nonnull @.str.92) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @cx24120_readreg(ptr noundef %1, i8 noundef zeroext 58)
  %and = and i32 %call3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %call7 = tail call fastcc i32 @cx24120_readreg(ptr noundef %1, i8 noundef zeroext 54)
  %call8 = tail call fastcc i32 @cx24120_readreg(ptr noundef %1, i8 noundef zeroext 53)
  %call10 = tail call fastcc i32 @cx24120_readreg(ptr noundef %1, i8 noundef zeroext 52)
  %conv12 = shl i32 %call10, 16
  %shl = and i32 %conv12, 16711680
  %conv13 = shl i32 %call8, 8
  %shl14 = and i32 %conv13, 65280
  %conv15 = and i32 %call7, 255
  %or = or i32 %shl14, %conv15
  %or16 = or i32 %or, %shl
  %4 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or16, ptr %c, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_get_frontend.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_get_frontend, %if.then29)) #10
          to label %do.end35 [label %if.then29], !srcloc !292

if.then29:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %dev31 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %c, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_get_frontend.__UNIQUE_ID_ddebug334, ptr noundef %dev31, ptr noundef nonnull @.str.93, i32 noundef %8) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then29, %if.end6
  %call36 = tail call fastcc i32 @cx24120_get_fec(ptr noundef %fe)
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24120_read_status(ptr nocapture noundef %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %cmd.i = alloca %struct.cx24120_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @cx24120_readreg(ptr noundef %1, i8 noundef zeroext 58)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_read_status.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_read_status, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !292

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_read_status.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.99, i32 noundef %call) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = and i32 %call, 3
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %status, align 4
  %and11 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.end.if.end15_crit_edge, label %if.then13

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %or14 = or i32 %7, 12
  store i32 %or14, ptr %status, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end.if.end15_crit_edge
  %and16 = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %or19 = or i32 %9, 16
  store i32 %or19, ptr %status, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %fe_status = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fe_status, align 4
  tail call fastcc void @cx24120_get_stats(ptr noundef %1)
  %need_clock_set = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %need_clock_set to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %need_clock_set, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  br i1 %tobool21.not, label %if.end20.if.end30_crit_edge, label %land.lhs.true

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end20
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  %and22 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %land.lhs.true.if.end30_crit_edge, label %if.then24

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then24:                                        ; preds = %land.lhs.true
  tail call fastcc void @cx24120_set_clock_ratios(ptr noundef %fe)
  %mpeg_enabled = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %mpeg_enabled to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mpeg_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool25.not = icmp eq i8 %18, 0
  br i1 %tobool25.not, label %if.then26, label %if.then24.if.end28_crit_edge

if.then24.if.end28_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then26:                                        ; preds = %if.then24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i) #10
  %19 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i, i32 0, i32 2
  %21 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i, i32 0, i32 2, i32 1
  %22 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i, i32 0, i32 2, i32 2
  %23 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i, i32 0, i32 2, i32 3
  %24 = getelementptr inbounds i8, ptr %cmd.i, i32 6
  %25 = call ptr @memset(ptr %24, i32 255, i32 26)
  %26 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 19, ptr %cmd.i, align 1
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 4, ptr %19, align 1
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %20, align 1
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %21, align 1
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %22, align 1
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %23, align 1
  %call.i = call fastcc i32 @cx24120_message_send(ptr noundef %1, ptr noundef nonnull %cmd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end17.i, label %do.body.i

do.body.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_read_status, %if.then13.i)) #10
          to label %cx24120_msg_mpeg_output_global_config.exit [label %if.then13.i], !srcloc !292

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68) #10
  br label %cx24120_msg_mpeg_output_global_config.exit

if.end17.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %mpeg_enabled to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %mpeg_enabled, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_read_status, %if.then30.i)) #10
          to label %cx24120_msg_mpeg_output_global_config.exit [label %if.then30.i], !srcloc !292

if.then30.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %dev32.i = getelementptr inbounds %struct.i2c_adapter, ptr %36, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug295, ptr noundef %dev32.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #10
  br label %cx24120_msg_mpeg_output_global_config.exit

cx24120_msg_mpeg_output_global_config.exit:       ; preds = %if.then30.i, %if.end17.i, %if.then13.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #10
  br label %if.end28

if.end28:                                         ; preds = %cx24120_msg_mpeg_output_global_config.exit, %if.then24.if.end28_crit_edge
  %37 = ptrtoint ptr %need_clock_set to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %need_clock_set, align 2
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %land.lhs.true.if.end30_crit_edge, %if.end20.if.end30_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx24120_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ber, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %3 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %demodulator_priv, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %5, align 1
  %ber_prev = getelementptr inbounds %struct.cx24120_state, ptr %4, i32 0, i32 11
  %8 = ptrtoint ptr %ber_prev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ber_prev, align 4
  %10 = trunc i64 %7 to i32
  %conv6 = sub i32 %10, %9
  %11 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv6, ptr %ber, align 4
  %12 = load i64, ptr %5, align 1
  %conv10 = trunc i64 %12 to i32
  store i32 %conv10, ptr %ber_prev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx24120_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal_strength) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.not = icmp eq i8 %1, 2
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %2, align 1
  %conv5 = trunc i64 %4 to i16
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %storemerge = phi i16 [ %conv5, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %5 = ptrtoint ptr %signal_strength to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %storemerge, ptr %signal_strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24120_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #10
  %5 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %remainder.i, align 4, !annotation !293
  %call.i = call i64 @div_s64_rem(i64 noundef %4, i32 noundef 100, ptr noundef nonnull %remainder.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #10
  %conv5 = trunc i64 %call.i to i16
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %storemerge = phi i16 [ %conv5, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %storemerge, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx24120_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %2 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %demodulator_priv, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %4, align 1
  %ucb_offset = getelementptr inbounds %struct.cx24120_state, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %ucb_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ucb_offset, align 4
  %9 = trunc i64 %6 to i32
  %conv6 = sub i32 %9, %8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %storemerge = phi i32 [ %conv6, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  %10 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24120_send_diseqc_msg(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  %cmd = alloca %struct.cx24120_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #10
  %2 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2
  %4 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %5 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 2
  %6 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 5
  %9 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 6
  %10 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 7
  %11 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 8
  %12 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 9
  %13 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 10
  %14 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_send_diseqc_msg.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_send_diseqc_msg, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !292

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_send_diseqc_msg.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.92) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 32, ptr %cmd, align 1
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 11, ptr %2, align 1
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %3, align 1
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %4, align 1
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %5, align 1
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 22, ptr %6, align 1
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 40, ptr %7, align 1
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %8, align 1
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %9, align 1
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 20, ptr %10, align 1
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 25, ptr %11, align 1
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 20, ptr %12, align 1
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 30, ptr %13, align 1
  %call23 = call fastcc i32 @cx24120_message_send(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end32, label %do.end28

do.end28:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cmd, align 1
  %conv = zext i8 %31 to i32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %conv) #13
  br label %cleanup

if.end32:                                         ; preds = %do.end
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 33, ptr %cmd, align 1
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %d, i32 0, i32 1
  %33 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %msg_len, align 1
  %add = add i8 %34, 6
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %add, ptr %2, align 1
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %3, align 1
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %4, align 1
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %5, align 1
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %6, align 1
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %7, align 1
  %41 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %34, ptr %8, align 1
  %conv53 = zext i8 %34 to i32
  %42 = call ptr @memcpy(ptr %9, ptr %d, i32 %conv53)
  %call54 = call fastcc i32 @cx24120_message_send(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end32.do.body65_crit_edge, label %do.end59

if.end32.do.body65_crit_edge:                     ; preds = %if.end32
  br label %do.body65

do.end59:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cmd, align 1
  %conv62 = zext i8 %44 to i32
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %conv62) #13
  br label %cleanup

do.body65:                                        ; preds = %if.end87.do.body65_crit_edge, %if.end32.do.body65_crit_edge
  %back_count.0 = phi i32 [ %sub, %if.end87.do.body65_crit_edge ], [ 500, %if.end32.do.body65_crit_edge ]
  %call66 = tail call fastcc i32 @cx24120_readreg(ptr noundef %1, i8 noundef zeroext -109)
  %and = and i32 %call66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool67.not = icmp eq i32 %and, 0
  br i1 %tobool67.not, label %do.body69, label %if.end87

do.body69:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_send_diseqc_msg.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_send_diseqc_msg, %if.then81)) #10
          to label %cleanup [label %if.then81], !srcloc !292

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %dev83 = getelementptr inbounds %struct.i2c_adapter, ptr %46, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_send_diseqc_msg.__UNIQUE_ID_ddebug300, ptr noundef %dev83, ptr noundef nonnull @.str.118) #10
  br label %cleanup

if.end87:                                         ; preds = %do.body65
  tail call void @msleep(i32 noundef 20) #10
  %sub = add nsw i32 %back_count.0, -20
  %tobool89.not = icmp eq i32 %sub, 0
  br i1 %tobool89.not, label %do.end93, label %if.end87.do.body65_crit_edge

if.end87.do.body65_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body65

do.end93:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end93, %if.then81, %do.body69, %do.end59, %do.end28
  %retval.0 = phi i32 [ -121, %do.end28 ], [ -121, %do.end59 ], [ -110, %do.end93 ], [ 0, %if.then81 ], [ 0, %do.body69 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24120_diseqc_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %burst) #0 align 64 {
entry:
  %cmd = alloca %struct.cx24120_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #10
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_diseqc_send_burst.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_diseqc_send_burst, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !292

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_diseqc_send_burst.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.92) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2
  %7 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 36, ptr %cmd, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %7, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %burst)
  %cmp = icmp eq i32 %burst, 1
  %conv = zext i1 %cmp to i8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %5, align 1
  %call5 = call fastcc i32 @cx24120_message_send(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #10
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24120_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  %cmd = alloca %struct.cx24120_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #10
  %2 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2
  %4 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %5 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 2
  %6 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 3
  %7 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_tone.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_tone, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !292

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_tone.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %tone) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tone)
  %switch = icmp ult i32 %tone, 2
  br i1 %switch, label %if.end10, label %do.end7

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %tone) #13
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 35, ptr %cmd, align 1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %2, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %3, align 1
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %4, align 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tone)
  %cmp15 = icmp eq i32 %tone, 0
  %conv = zext i1 %cmp15 to i8
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %6, align 1
  %call18 = call fastcc i32 @cx24120_message_send(ptr noundef %1, ptr noundef nonnull %cmd)
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7
  %retval.0 = phi i32 [ -22, %do.end7 ], [ %call18, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx24120_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  %cmd = alloca %struct.cx24120_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #10
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_voltage.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_voltage, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !292

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_voltage.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %voltage) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2
  %7 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 1
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 34, ptr %cmd, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %7, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %voltage)
  %cmp = icmp eq i32 %voltage, 1
  %conv = zext i1 %cmp to i8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %5, align 1
  %call5 = call fastcc i32 @cx24120_message_send(ptr noundef %1, ptr noundef nonnull %cmd)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #10
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx24120_test_rom(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cx24120_readreg(ptr noundef %state, i8 noundef zeroext -3)
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc i32 @cx24120_readreg(ptr noundef %state, i8 noundef zeroext -33)
  %0 = trunc i32 %call1 to i8
  %conv = and i8 %0, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %1 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -33, ptr %buf.i, align 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #10
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 196607, ptr %4, align 4
  %config.i = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 1
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
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i, ptr %buf1.i, align 4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %do.body6.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i = zext i8 %conv to i32
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i, i32 noundef 223, i32 noundef %conv4.i) #13
  br label %cx24120_writereg.exit

do.body6.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_test_rom, %if.then11.i)) #10
          to label %cx24120_writereg.exit [label %if.then11.i], !srcloc !292

if.then11.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 9
  %conv14.i = zext i8 %conv to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 223, i32 noundef %conv14.i) #10
  br label %cx24120_writereg.exit

cx24120_writereg.exit:                            ; preds = %if.then11.i, %do.body6.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  br label %if.end

if.end:                                           ; preds = %cx24120_writereg.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx24120_writeregs(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg, ptr nocapture noundef readonly %values, i16 noundef zeroext %len, i8 noundef zeroext %incr) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %i2c_wr_max = getelementptr inbounds %struct.cx24120_config, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i2c_wr_max to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %i2c_wr_max, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.not = icmp eq i16 %3, 0
  %len. = select i1 %cmp.not, i16 %len, i16 %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #10
  %4 = getelementptr inbounds i8, ptr %msg, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 4
  %conv8 = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv8, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len9 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %len9, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %conv10 = zext i16 %len. to i32
  %add = add nuw nsw i32 %conv10, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i, ptr %buf, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len)
  %tobool13.not2 = icmp eq i16 %len, 0
  br i1 %tobool13.not2, label %while.cond.preheader.out_crit_edge, label %while.body.lr.ph

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %incr)
  %tobool37.not = icmp eq i8 %incr, 0
  br label %while.body

while.body:                                       ; preds = %do.end69.while.body_crit_edge, %while.body.lr.ph
  %reg.addr.05 = phi i8 [ %reg, %while.body.lr.ph ], [ %reg.addr.1, %do.end69.while.body_crit_edge ]
  %values.addr.04 = phi ptr [ %values, %while.body.lr.ph ], [ %add.ptr, %do.end69.while.body_crit_edge ]
  %len.addr.03 = phi i16 [ %len, %while.body.lr.ph ], [ %sub, %do.end69.while.body_crit_edge ]
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %reg.addr.05, ptr %13, align 1
  %15 = call i16 @llvm.umin.i16(i16 %len.addr.03, i16 %len.)
  %16 = ptrtoint ptr %len9 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %len9, align 4
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf, align 4
  %arrayidx28 = getelementptr i8, ptr %18, i32 1
  %conv30 = zext i16 %15 to i32
  %19 = call ptr @memcpy(ptr %arrayidx28, ptr %values.addr.04, i32 %conv30)
  %20 = load i16, ptr %len9, align 4
  %conv32 = zext i16 %20 to i32
  %sub = sub i16 %len.addr.03, %20
  %add.ptr = getelementptr i8, ptr %values.addr.04, i32 %conv32
  %21 = trunc i16 %20 to i8
  %conv43 = select i1 %tobool37.not, i8 0, i8 %21
  %reg.addr.1 = add i8 %conv43, %reg.addr.05
  %inc = add i16 %20, 1
  store i16 %inc, ptr %len9, align 4
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state, align 4
  %call46 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call46)
  %cmp47.not = icmp eq i32 %call46, 1
  br i1 %cmp47.not, label %do.body53, label %do.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %conv50 = zext i8 %reg.addr.1 to i32
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %call46, i32 noundef %conv50) #13
  br label %out

do.body53:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writeregs.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_writeregs, %if.then59)) #10
          to label %do.end69 [label %if.then59], !srcloc !292

if.then59:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 9
  %conv61 = zext i8 %reg.addr.1 to i32
  %26 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %len9, align 4
  %conv63 = zext i16 %27 to i32
  %sub64 = add nsw i32 %conv63, -1
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf, align 4
  %add.ptr66 = getelementptr i8, ptr %29, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writeregs.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %conv61, i32 noundef %sub64, ptr noundef %add.ptr66) #10
  br label %do.end69

do.end69:                                         ; preds = %if.then59, %do.body53
  %tobool13.not = icmp eq i16 %sub, 0
  br i1 %tobool13.not, label %do.end69.out_crit_edge, label %do.end69.while.body_crit_edge

do.end69.while.body_crit_edge:                    ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.end69.out_crit_edge:                           ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %do.end69.out_crit_edge, %do.end, %while.cond.preheader.out_crit_edge
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %31) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx24120_message_send(ptr nocapture noundef %state, ptr nocapture noundef readonly %cmd) unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca %struct.cx24120_cmd, align 1
  %buf.i35 = alloca [2 x i8], align 1
  %msg.i36 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mpeg_enabled = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %mpeg_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mpeg_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmd, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %3, label %if.then.if.end_crit_edge [
    i8 17, label %if.then.sw.bb.i_crit_edge
    i8 22, label %if.then.sw.bb.i_crit_edge55
    i8 32, label %if.then.sw.bb.i_crit_edge56
    i8 33, label %if.then.sw.bb.i_crit_edge57
    i8 34, label %if.then.sw.bb.i_crit_edge58
    i8 35, label %if.then.sw.bb.i_crit_edge59
    i8 36, label %if.then.sw.bb.i_crit_edge60
  ]

if.then.sw.bb.i_crit_edge60:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge59:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge58:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge57:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge56:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge55:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb.i:                                          ; preds = %if.then.sw.bb.i_crit_edge, %if.then.sw.bb.i_crit_edge55, %if.then.sw.bb.i_crit_edge56, %if.then.sw.bb.i_crit_edge57, %if.then.sw.bb.i_crit_edge58, %if.then.sw.bb.i_crit_edge59, %if.then.sw.bb.i_crit_edge60
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd.i) #10
  %5 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i, i32 0, i32 2, i32 1
  %8 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i, i32 0, i32 2, i32 2
  %9 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd.i, i32 0, i32 2, i32 3
  %10 = getelementptr inbounds i8, ptr %cmd.i, i32 6
  %11 = call ptr @memset(ptr %10, i32 255, i32 26)
  %12 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 19, ptr %cmd.i, align 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %5, align 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %6, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %7, align 1
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %8, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %9, align 1
  %call.i52 = call fastcc i32 @cx24120_message_send(ptr noundef %state, ptr noundef nonnull %cmd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %cmp.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %cmp.not.i53, label %if.end17.i, label %do.body.i

do.body.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_message_send, %if.then13.i)) #10
          to label %cx24120_msg_mpeg_output_global_config.exit [label %if.then13.i], !srcloc !292

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %dev.i54 = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug294, ptr noundef %dev.i54, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.69) #10
  br label %cx24120_msg_mpeg_output_global_config.exit

if.end17.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %mpeg_enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %mpeg_enabled, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_message_send, %if.then30.i)) #10
          to label %cx24120_msg_mpeg_output_global_config.exit [label %if.then30.i], !srcloc !292

if.then30.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state, align 4
  %dev32.i = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug295, ptr noundef %dev32.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.72) #10
  br label %cx24120_msg_mpeg_output_global_config.exit

cx24120_msg_mpeg_output_global_config.exit:       ; preds = %if.then30.i, %if.end17.i, %if.then13.i, %do.body.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd.i) #10
  br label %if.end

if.end:                                           ; preds = %cx24120_msg_mpeg_output_global_config.exit, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %23 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cmd, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #10
  %25 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %buf.i, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #10
  %28 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 196607, ptr %28, align 4
  %config.i = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 1
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv.i = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %36 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i, ptr %buf1.i, align 4
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %state, align 4
  %call.i33 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i33)
  %cmp.not.i = icmp eq i32 %call.i33, 1
  br i1 %cmp.not.i, label %do.body6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv4.i = zext i8 %24 to i32
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i33, i32 noundef 0, i32 noundef %conv4.i) #13
  br label %cx24120_writereg.exit

do.body6.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_message_send, %if.then11.i)) #10
          to label %cx24120_writereg.exit [label %if.then11.i], !srcloc !292

if.then11.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %40, i32 0, i32 9
  %conv14.i = zext i8 %24 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef %conv14.i) #10
  br label %cx24120_writereg.exit

cx24120_writereg.exit:                            ; preds = %if.then11.i, %do.body6.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #10
  %arg = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2
  %len = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 1
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %len, align 1
  %conv = zext i8 %42 to i16
  call fastcc void @cx24120_writeregs(ptr noundef %state, i8 noundef zeroext 1, ptr noundef %arg, i16 noundef zeroext %conv, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i35) #10
  %43 = getelementptr inbounds [2 x i8], ptr %buf.i35, i32 0, i32 1
  %44 = ptrtoint ptr %buf.i35 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 31, ptr %buf.i35, align 1
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i36) #10
  %46 = getelementptr inbounds i8, ptr %msg.i36, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 196607, ptr %46, align 4
  %48 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv.i38 = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i36 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i38, ptr %msg.i36, align 4
  %flags.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i39 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i39, align 2
  %buf1.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 0, i32 3
  %54 = ptrtoint ptr %buf1.i41 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buf.i35, ptr %buf1.i41, align 4
  %55 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %state, align 4
  %call.i42 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i36, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i42)
  %cmp.not.i43 = icmp eq i32 %call.i42, 1
  br i1 %cmp.not.i43, label %do.body6.i46, label %do.end.i45

do.end.i45:                                       ; preds = %cx24120_writereg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call.i42, i32 noundef 31, i32 noundef 1) #13
  br label %cx24120_writereg.exit50

do.body6.i46:                                     ; preds = %cx24120_writereg.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_message_send, %if.then11.i48)) #10
          to label %cx24120_writereg.exit50 [label %if.then11.i48], !srcloc !292

if.then11.i48:                                    ; preds = %do.body6.i46
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %state, align 4
  %dev.i47 = getelementptr inbounds %struct.i2c_adapter, ptr %58, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_writereg.__UNIQUE_ID_ddebug291, ptr noundef %dev.i47, ptr noundef nonnull @.str.21, i32 noundef 31, i32 noundef 1) #10
  br label %cx24120_writereg.exit50

cx24120_writereg.exit50:                          ; preds = %if.then11.i48, %do.body6.i46, %do.end.i45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i36) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i35) #10
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %cx24120_writereg.exit50
  %ficus.0 = phi i32 [ 1000, %cx24120_writereg.exit50 ], [ %sub, %while.body.while.cond_crit_edge ]
  %call4 = call fastcc i32 @cx24120_readreg(ptr noundef %state, i8 noundef zeroext 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body10, label %while.body

while.body:                                       ; preds = %while.cond
  call void @msleep(i32 noundef 20) #10
  %sub = add nsw i32 %ficus.0, -20
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %do.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #13
  br label %cleanup

do.body10:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_message_send.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_message_send, %if.then16)) #10
          to label %cleanup [label %if.then16], !srcloc !292

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %state, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %cmd, align 1
  %conv18 = zext i8 %62 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_message_send.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %conv18) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body10, %do.end
  %retval.0 = phi i32 [ -121, %do.end ], [ 0, %if.then16 ], [ 0, %do.body10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx24120_set_vco(ptr nocapture noundef %state) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.cx24120_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #10
  %config = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 1
  %0 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  %1 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %config, align 4
  %xtal_khz1 = getelementptr inbounds %struct.cx24120_config, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %xtal_khz1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xtal_khz1, align 4
  %mul2 = mul i32 %4, 40
  %div338 = lshr exact i32 %mul2, 1
  %conv = zext i32 %div338 to i64
  %add = or i64 %conv, 17179869184
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul2, i64 %add) #16, !srcloc !294
  %asmresult1.i = extractvalue { i64, i64 } %5, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_vco.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_vco, %if.then197)) #10
          to label %do.end [label %if.then197], !srcloc !292

if.then197:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_vco.__UNIQUE_ID_ddebug326, ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %4, i32 noundef %mul2, i64 noundef %asmresult1.i) #10
  br label %do.end

do.end:                                           ; preds = %if.then197, %entry
  %8 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 11
  %9 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 10
  %10 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 9
  %11 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 8
  %12 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 7
  %13 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 6
  %14 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 4
  %16 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 3
  %17 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 2
  %18 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %19 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2
  %20 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 1
  %mul = shl i32 %4, 2
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 16, ptr %cmd, align 1
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 12, ptr %20, align 1
  %shr199 = lshr i32 %mul2, 16
  %conv201 = trunc i32 %shr199 to i8
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv201, ptr %19, align 1
  %shr202 = lshr i32 %mul2, 8
  %conv204 = trunc i32 %shr202 to i8
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv204, ptr %18, align 1
  %conv208 = trunc i32 %mul2 to i8
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv208, ptr %17, align 1
  %shr211 = lshr i64 %asmresult1.i, 8
  %conv213 = trunc i64 %shr211 to i8
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv213, ptr %16, align 1
  %conv217 = trunc i64 %asmresult1.i to i8
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv217, ptr %15, align 1
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %14, align 1
  %shr222 = lshr i32 %mul, 8
  %conv224 = trunc i32 %shr222 to i8
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv224, ptr %13, align 1
  %conv228 = trunc i32 %mul to i8
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv228, ptr %12, align 1
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %11, align 1
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %10, align 1
  %shr235 = lshr i32 %4, 16
  %conv237 = trunc i32 %shr235 to i8
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv237, ptr %9, align 1
  %conv241 = trunc i32 %4 to i8
  %34 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv241, ptr %8, align 1
  %call244 = call fastcc i32 @cx24120_message_send(ptr noundef %state, ptr noundef nonnull %cmd)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #10
  ret i32 %call244
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx24120_get_fec(ptr nocapture noundef %fe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc i32 @cx24120_readreg(ptr noundef %1, i8 noundef zeroext 57)
  %and = and i32 %call, 63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_get_fec.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_get_fec, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !292

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_get_fec.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef %and) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %delsys4 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %delsys4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delsys4, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %idx.094 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [21 x %struct.cx24120_modfec], ptr @modfec_lookup_table, i32 0, i32 %idx.094
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp5.not = icmp eq i32 %7, %5
  br i1 %cmp5.not, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %val = getelementptr [21 x %struct.cx24120_modfec], ptr @modfec_lookup_table, i32 0, i32 %idx.094, i32 3
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val, align 4
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp9.not = icmp eq i32 %and, %conv
  br i1 %cmp9.not, label %if.end34, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.094, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %do.body16, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body16:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_get_fec.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_get_fec, %if.then28)) #10
          to label %cleanup [label %if.then28], !srcloc !292

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev30 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_get_fec.__UNIQUE_ID_ddebug308, ptr noundef %dev30, ptr noundef nonnull @.str.96) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %mod = getelementptr [21 x %struct.cx24120_modfec], ptr @modfec_lookup_table, i32 0, i32 %idx.094, i32 1
  %12 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mod, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %modulation, align 4
  %fec37 = getelementptr [21 x %struct.cx24120_modfec], ptr @modfec_lookup_table, i32 0, i32 %idx.094, i32 2
  %15 = ptrtoint ptr %fec37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fec37, align 4
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %17 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fec_inner, align 4
  %and38 = lshr i32 %call, 7
  %and38.lobit = and i32 %and38, 1
  %18 = xor i32 %and38.lobit, 1
  %pilot = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 13
  %19 = ptrtoint ptr %pilot to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pilot, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_get_fec.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_get_fec, %if.then52)) #10
          to label %cleanup [label %if.then52], !srcloc !292

if.then52:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %dev54 = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %modulation, align 4
  %24 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fec_inner, align 4
  %26 = ptrtoint ptr %pilot to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pilot, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_get_fec.__UNIQUE_ID_ddebug309, ptr noundef %dev54, ptr noundef nonnull @.str.97, i32 noundef %23, i32 noundef %25, i32 noundef %27) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end34, %if.then28, %do.body16
  %retval.0 = phi i32 [ -22, %if.then28 ], [ 0, %if.then52 ], [ -22, %do.body16 ], [ 0, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx24120_get_stats(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.cx24120_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #10
  %0 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2
  %2 = call ptr @memset(ptr %cmd, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_get_stats.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_get_stats, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !292

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_get_stats.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.92) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fe_status = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 8
  %5 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fe_status, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 26, ptr %cmd, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %0, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %1, align 1
  %call5 = call fastcc i32 @cx24120_message_send(ptr noundef %state, ptr noundef nonnull %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #13
  br label %cleanup

if.end12:                                         ; preds = %if.then4
  %call13 = tail call fastcc i32 @cx24120_readreg(ptr noundef %state, i8 noundef zeroext 58)
  %10 = shl i32 %call13, 2
  %conv15 = and i32 %10, 65280
  %call16 = tail call fastcc i32 @cx24120_readreg(ptr noundef %state, i8 noundef zeroext 59)
  %or = or i32 %conv15, %call16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_get_stats.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_get_stats, %if.then31)) #10
          to label %do.end37 [label %if.then31], !srcloc !292

if.then31:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %dev33 = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 9
  %conv34 = and i32 %or, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_get_stats.__UNIQUE_ID_ddebug302, ptr noundef %dev33, ptr noundef nonnull @.str.102, i32 noundef %conv34) #10
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %if.end12
  %13 = trunc i32 %or to i16
  %14 = mul i16 %13, -100
  %conv39 = add i16 %14, 28788
  %stat = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 42, i32 1
  %15 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %stat, align 1
  %conv41 = zext i16 %conv39 to i64
  %16 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 42, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 8)
  store i64 %conv41, ptr %16, align 1
  br label %if.end49

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %stat46 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 42, i32 1
  %18 = ptrtoint ptr %stat46 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %stat46, align 1
  br label %if.end49

if.end49:                                         ; preds = %if.else, %do.end37
  %19 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fe_status, align 4
  %and51 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else85, label %if.then53

if.then53:                                        ; preds = %if.end49
  %call54 = tail call fastcc i32 @cx24120_readreg(ptr noundef %state, i8 noundef zeroext 64)
  %shl55 = shl i32 %call54, 8
  %call56 = tail call fastcc i32 @cx24120_readreg(ptr noundef %state, i8 noundef zeroext 65)
  %or57 = or i32 %shl55, %call56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_get_stats.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_get_stats, %if.then70)) #10
          to label %do.end75 [label %if.then70], !srcloc !292

if.then70:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state, align 4
  %dev72 = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_get_stats.__UNIQUE_ID_ddebug303, ptr noundef %dev72, ptr noundef nonnull @.str.103, i32 noundef %or57) #10
  br label %do.end75

do.end75:                                         ; preds = %if.then70, %if.then53
  %mul76 = mul i32 %or57, 100
  %stat78 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 43, i32 1
  %23 = ptrtoint ptr %stat78 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %stat78, align 1
  %conv81 = sext i32 %mul76 to i64
  %24 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 43, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %conv81, ptr %24, align 1
  br label %if.end90

if.else85:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %stat87 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 43, i32 1
  %26 = ptrtoint ptr %stat87 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %stat87, align 1
  br label %if.end90

if.end90:                                         ; preds = %if.else85, %do.end75
  %27 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fe_status, align 4
  %and92 = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.then94, label %if.end107

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %stat95 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 46, i32 1
  %29 = ptrtoint ptr %stat95 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %stat95, align 1
  %stat98 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 47, i32 1
  %30 = ptrtoint ptr %stat98 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %stat98, align 1
  %stat101 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 48, i32 1
  %31 = ptrtoint ptr %stat101 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %stat101, align 1
  %stat104 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 49, i32 1
  %32 = ptrtoint ptr %stat104 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %stat104, align 1
  br label %cleanup

if.end107:                                        ; preds = %if.end90
  %ber_jiffies_stats = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 13
  %33 = ptrtoint ptr %ber_jiffies_stats to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ber_jiffies_stats, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %34, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp108 = icmp slt i32 %sub, 0
  br i1 %cmp108, label %if.then110, label %if.end107.if.end160_crit_edge

if.end107.if.end160_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160

if.then110:                                       ; preds = %if.end107
  %berw_usecs = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 10
  %36 = ptrtoint ptr %berw_usecs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %berw_usecs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %add111 = add i32 %37, 500
  %div = udiv i32 %add111, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %div) #10
  %add113 = add i32 %call2.i, %38
  %39 = ptrtoint ptr %ber_jiffies_stats to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add113, ptr %ber_jiffies_stats, align 4
  %call115 = tail call fastcc i32 @cx24120_readreg(ptr noundef %state, i8 noundef zeroext 71)
  %shl116 = shl i32 %call115, 24
  %call117 = tail call fastcc i32 @cx24120_readreg(ptr noundef %state, i8 noundef zeroext 72)
  %shl118 = shl i32 %call117, 16
  %or119 = or i32 %shl118, %shl116
  %call120 = tail call fastcc i32 @cx24120_readreg(ptr noundef %state, i8 noundef zeroext 73)
  %shl121 = shl i32 %call120, 8
  %or122 = or i32 %or119, %shl121
  %call123 = tail call fastcc i32 @cx24120_readreg(ptr noundef %state, i8 noundef zeroext 74)
  %or124 = or i32 %or122, %call123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_get_stats.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_get_stats, %if.then137)) #10
          to label %do.end142 [label %if.then137], !srcloc !292

if.then137:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %state, align 4
  %dev139 = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_get_stats.__UNIQUE_ID_ddebug304, ptr noundef %dev139, ptr noundef nonnull @.str.104, i32 noundef %or124) #10
  br label %do.end142

do.end142:                                        ; preds = %if.then137, %if.then110
  %stat144 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 46, i32 1
  %42 = ptrtoint ptr %stat144 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %stat144, align 1
  %conv147 = zext i32 %or124 to i64
  %43 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 46, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %45 = load i64, ptr %43, align 1
  %add151 = add i64 %45, %conv147
  store i64 %add151, ptr %43, align 1
  %stat153 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 47, i32 1
  %46 = ptrtoint ptr %stat153 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %stat153, align 1
  %47 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 47, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %47, align 1
  %add159 = add i64 %49, 109051904
  store i64 %add159, ptr %47, align 1
  br label %if.end160

if.end160:                                        ; preds = %do.end142, %if.end107.if.end160_crit_edge
  %per_jiffies_stats = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 14
  %50 = ptrtoint ptr %per_jiffies_stats to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %per_jiffies_stats, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %sub161 = sub i32 %51, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub161)
  %cmp162 = icmp slt i32 %sub161, 0
  br i1 %cmp162, label %if.then164, label %if.end160.cleanup_crit_edge

if.end160.cleanup_crit_edge:                      ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then164:                                       ; preds = %if.end160
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %add166 = add i32 %53, 100
  %54 = ptrtoint ptr %per_jiffies_stats to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add166, ptr %per_jiffies_stats, align 4
  %call168 = tail call fastcc i32 @cx24120_readreg(ptr noundef %state, i8 noundef zeroext 80)
  %conv170 = shl i32 %call168, 8
  %call171 = tail call fastcc i32 @cx24120_readreg(ptr noundef %state, i8 noundef zeroext 81)
  %or173 = or i32 %conv170, %call171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_get_stats.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_get_stats, %if.then187)) #10
          to label %do.end193 [label %if.then187], !srcloc !292

if.then187:                                       ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %state, align 4
  %dev189 = getelementptr inbounds %struct.i2c_adapter, ptr %56, i32 0, i32 9
  %conv190 = and i32 %or173, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_get_stats.__UNIQUE_ID_ddebug305, ptr noundef %dev189, ptr noundef nonnull @.str.105, i32 noundef %conv190) #10
  br label %do.end193

do.end193:                                        ; preds = %if.then187, %if.then164
  %conv194 = and i32 %or173, 65535
  %ucb_offset = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 12
  %57 = ptrtoint ptr %ucb_offset to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ucb_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv194, i32 %58)
  %cmp195 = icmp ult i32 %conv194, %58
  br i1 %cmp195, label %if.then197, label %do.end193.if.end203_crit_edge

do.end193.if.end203_crit_edge:                    ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end203

if.then197:                                       ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #12
  %59 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 48, i32 1, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %59, align 1
  %conv201 = trunc i64 %61 to i32
  %62 = ptrtoint ptr %ucb_offset to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv201, ptr %ucb_offset, align 4
  br label %if.end203

if.end203:                                        ; preds = %if.then197, %do.end193.if.end203_crit_edge
  %stat205 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 48, i32 1
  %63 = ptrtoint ptr %stat205 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 3, ptr %stat205, align 1
  %64 = ptrtoint ptr %ucb_offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ucb_offset, align 4
  %add210 = add i32 %65, %conv194
  %conv211 = zext i32 %add210 to i64
  %66 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 48, i32 1, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 8)
  store i64 %conv211, ptr %66, align 1
  %stat216 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 49, i32 1
  %68 = ptrtoint ptr %stat216 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %stat216, align 1
  %bitrate = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 9
  %69 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bitrate, align 4
  %div220 = udiv i32 %70, 1664
  %conv221 = zext i32 %div220 to i64
  %71 = getelementptr inbounds %struct.cx24120_state, ptr %state, i32 0, i32 2, i32 8, i32 49, i32 1, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 8)
  %73 = load i64, ptr %71, align 1
  %add225 = add i64 %73, %conv221
  store i64 %add225, ptr %71, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end203, %if.end160.cleanup_crit_edge, %if.then94, %do.end9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx24120_set_clock_ratios(ptr nocapture noundef %fe) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca %struct.cx24120_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmd) #10
  %2 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 1
  %3 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2
  %4 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 1
  %5 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 2
  %6 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 5
  %9 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 6
  %10 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 7
  %11 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 8
  %12 = getelementptr inbounds %struct.cx24120_cmd, ptr %cmd, i32 0, i32 2, i32 9
  %13 = getelementptr inbounds i8, ptr %cmd, i32 3
  %14 = call ptr @memset(ptr %13, i32 255, i32 29)
  %call = tail call fastcc i32 @cx24120_get_fec(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %delsys2 = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 6, i32 4
  %15 = ptrtoint ptr %delsys2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delsys2, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %fec_inner = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %pilot15 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %idx.0162 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %idx.0162
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %16)
  %cmp3.not = icmp eq i32 %18, %16
  br i1 %cmp3.not, label %if.end5, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %mod = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %idx.0162, i32 2
  %19 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mod, align 4
  %21 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %modulation, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp7.not = icmp eq i32 %20, %22
  br i1 %cmp7.not, label %if.end9, label %if.end5.for.inc_crit_edge

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end9:                                          ; preds = %if.end5
  %fec = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %idx.0162, i32 3
  %23 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fec, align 4
  %25 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fec_inner, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp11.not = icmp eq i32 %24, %26
  br i1 %cmp11.not, label %if.end13, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end13:                                         ; preds = %if.end9
  %pilot = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %idx.0162, i32 1
  %27 = ptrtoint ptr %pilot to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pilot, align 4
  %29 = ptrtoint ptr %pilot15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pilot15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp16.not = icmp eq i32 %28, %30
  br i1 %cmp16.not, label %if.end22, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end13.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %if.end5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.0162, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106) #13
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %31 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 22, ptr %cmd, align 1
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %2, align 1
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %3, align 1
  %call3.i = call fastcc i32 @cx24120_message_send(ptr noundef %1, ptr noundef nonnull %cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.not.i, label %do.body28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body28:                                        ; preds = %if.end22
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %2, align 1
  %conv15.i = add i8 %35, 1
  %call16.i = tail call fastcc i32 @cx24120_readreg(ptr noundef %1, i8 noundef zeroext %conv15.i) #10
  %conv17.i = trunc i32 %call16.i to i8
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv17.i, ptr %3, align 1
  %conv15.1.i = add i8 %35, 2
  %call16.1.i = tail call fastcc i32 @cx24120_readreg(ptr noundef %1, i8 noundef zeroext %conv15.1.i) #10
  %conv17.1.i = trunc i32 %call16.1.i to i8
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv17.1.i, ptr %4, align 1
  %conv15.2.i = add i8 %35, 3
  %call16.2.i = tail call fastcc i32 @cx24120_readreg(ptr noundef %1, i8 noundef zeroext %conv15.2.i) #10
  %conv17.2.i = trunc i32 %call16.2.i to i8
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv17.2.i, ptr %5, align 1
  %conv15.3.i = add i8 %35, 4
  %call16.3.i = tail call fastcc i32 @cx24120_readreg(ptr noundef %1, i8 noundef zeroext %conv15.3.i) #10
  %conv17.3.i = trunc i32 %call16.3.i to i8
  %39 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv17.3.i, ptr %6, align 1
  %conv15.4.i = add i8 %35, 5
  %call16.4.i = tail call fastcc i32 @cx24120_readreg(ptr noundef %1, i8 noundef zeroext %conv15.4.i) #10
  %conv17.4.i = trunc i32 %call16.4.i to i8
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv17.4.i, ptr %7, align 1
  %conv15.5.i = add i8 %35, 6
  %call16.5.i = tail call fastcc i32 @cx24120_readreg(ptr noundef %1, i8 noundef zeroext %conv15.5.i) #10
  %conv17.5.i = trunc i32 %call16.5.i to i8
  %41 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv17.5.i, ptr %8, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_set_clock_ratios.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_clock_ratios, %if.then33)) #10
          to label %do.end62 [label %if.then33], !srcloc !292

if.then33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %5, align 1
  %conv = zext i8 %45 to i32
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %4, align 1
  %conv38 = zext i8 %47 to i32
  %shl = shl nuw nsw i32 %conv38, 8
  %or = or i32 %shl, %conv
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %3, align 1
  %conv41 = zext i8 %49 to i32
  %shl42 = shl nuw nsw i32 %conv41, 16
  %or43 = or i32 %or, %shl42
  %50 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %8, align 1
  %conv46 = zext i8 %51 to i32
  %52 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %7, align 1
  %conv49 = zext i8 %53 to i32
  %shl50 = shl nuw nsw i32 %conv49, 8
  %or51 = or i32 %shl50, %conv46
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %6, align 1
  %conv54 = zext i8 %55 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %or56 = or i32 %or51, %shl55
  %m_rat = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %idx.0162, i32 4
  %56 = ptrtoint ptr %m_rat to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %m_rat, align 4
  %n_rat = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %idx.0162, i32 5
  %58 = ptrtoint ptr %n_rat to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n_rat, align 4
  %rate = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %idx.0162, i32 6
  %60 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_set_clock_ratios.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.108, i32 noundef %or43, i32 noundef %or56, i32 noundef %idx.0162, i32 noundef %57, i32 noundef %59, i32 noundef %61) #10
  br label %do.end62

do.end62:                                         ; preds = %if.then33, %do.body28
  %62 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 23, ptr %cmd, align 1
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 10, ptr %2, align 1
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %3, align 1
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 16, ptr %4, align 1
  %m_rat70 = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %idx.0162, i32 4
  %66 = ptrtoint ptr %m_rat70 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %m_rat70, align 4
  %shr = lshr i32 %67, 16
  %conv71 = trunc i32 %shr to i8
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv71, ptr %5, align 1
  %shr76 = lshr i32 %67, 8
  %conv78 = trunc i32 %shr76 to i8
  %69 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv78, ptr %6, align 1
  %conv85 = trunc i32 %67 to i8
  %70 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv85, ptr %7, align 1
  %n_rat89 = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %idx.0162, i32 5
  %71 = ptrtoint ptr %n_rat89 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %n_rat89, align 4
  %shr90 = lshr i32 %72, 16
  %conv92 = trunc i32 %shr90 to i8
  %73 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv92, ptr %8, align 1
  %shr97 = lshr i32 %72, 8
  %conv99 = trunc i32 %shr97 to i8
  %74 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv99, ptr %9, align 1
  %conv106 = trunc i32 %72 to i8
  %75 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv106, ptr %10, align 1
  %rate110 = getelementptr [33 x %struct.cx24120_clock_ratios_table], ptr @clock_ratios_table, i32 0, i32 %idx.0162, i32 6
  %76 = ptrtoint ptr %rate110 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rate110, align 4
  %shr111 = lshr i32 %77, 8
  %conv113 = trunc i32 %shr111 to i8
  %78 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv113, ptr %11, align 1
  %conv120 = trunc i32 %77 to i8
  %79 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv120, ptr %12, align 1
  %call123 = call fastcc i32 @cx24120_message_send(ptr noundef %1, ptr noundef nonnull %cmd)
  %symbol_rate.i = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 2, i32 8, i32 10
  %80 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %symbol_rate.i, align 4
  %conv.i = zext i32 %81 to i64
  %conv1.i = zext i32 %77 to i64
  %mul.i = mul nuw i64 %conv.i, %conv1.i
  %shr.i = lshr i64 %mul.i, 8
  %conv185.i = trunc i64 %shr.i to i32
  %bitrate.i = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 9
  %82 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv185.i, ptr %bitrate.i, align 4
  %83 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv185.i, i64 109051904000000) #16, !srcloc !294
  %asmresult1.i.i = extractvalue { i64, i64 } %83, 1
  %extract.t = trunc i64 %asmresult1.i.i to i32
  %berw_usecs.i = getelementptr inbounds %struct.cx24120_state, ptr %1, i32 0, i32 10
  %84 = ptrtoint ptr %berw_usecs.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %extract.t, ptr %berw_usecs.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx24120_calculate_ber_window.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx24120_set_clock_ratios, %if.then418.i)) #10
          to label %cleanup [label %if.then418.i], !srcloc !292

if.then418.i:                                     ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %86, i32 0, i32 9
  %87 = ptrtoint ptr %bitrate.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bitrate.i, align 4
  %89 = ptrtoint ptr %berw_usecs.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %berw_usecs.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx24120_calculate_ber_window.__UNIQUE_ID_ddebug310, ptr noundef %dev.i, ptr noundef nonnull @.str.112, i32 noundef %88, i32 noundef %90) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then418.i, %do.end62, %if.end22.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmd) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !112, !113, !114, !115, !117, !118, !120, !121, !122, !123, !125, !126, !128, !129, !130, !132, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !183, !185, !187, !188, !190, !191, !193, !194, !195, !197, !198, !200, !201, !202, !204, !205, !207, !208, !210, !212, !213, !214, !216, !217, !219, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !237, !238, !240, !241, !243, !245, !246, !247, !248, !250, !251, !252, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !268, !269, !270, !272, !273, !275, !276, !278, !279, !280, !282}
!llvm.module.flags = !{!283, !284, !285, !286, !287, !288, !289, !290}
!llvm.ident = !{!291}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 270, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cx24120_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cx24120_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 273, i32 3}
!8 = !{ptr @cx24120_attach._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cx24120_attach._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 285, i32 3}
!12 = !{ptr @cx24120_attach._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @cx24120_attach._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 288, i32 3}
!16 = !{ptr @cx24120_attach._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @cx24120_attach._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 291, i32 3}
!20 = !{ptr @cx24120_attach._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @cx24120_attach._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 301, i32 2}
!24 = !{ptr @cx24120_attach._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @cx24120_attach._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_cx24120_attach, !27, !"__ksymtab_cx24120_attach", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 308, i32 1}
!28 = !{ptr @__UNIQUE_ID_description336, !29, !"__UNIQUE_ID_description336", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1587, i32 1}
!30 = !{ptr @__UNIQUE_ID_author337, !31, !"__UNIQUE_ID_author337", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1588, i32 1}
!32 = !{ptr @__UNIQUE_ID_file338, !33, !"__UNIQUE_ID_file338", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1589, i32 1}
!34 = !{ptr @__UNIQUE_ID_license339, !33, !"__UNIQUE_ID_license339", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 182, i32 3}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cx24120_readreg._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @cx24120_readreg._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 186, i32 2}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cx24120_readreg.__UNIQUE_ID_ddebug290, !41, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!44 = !{ptr @cx24120_ops, !45, !"cx24120_ops", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1547, i32 38}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1528, i32 2}
!48 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cx24120_release.__UNIQUE_ID_ddebug335, !47, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1315, i32 2}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @cx24120_init.__UNIQUE_ID_ddebug327, !51, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!54 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1320, i32 3}
!57 = !{ptr @cx24120_init._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cx24120_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1325, i32 2}
!61 = !{ptr @cx24120_init.__UNIQUE_ID_ddebug328, !60, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1355, i32 3}
!64 = !{ptr @cx24120_init.__UNIQUE_ID_ddebug329, !63, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1358, i32 3}
!67 = !{ptr @cx24120_init._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @cx24120_init._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1374, i32 3}
!71 = !{ptr @cx24120_init._entry.33, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cx24120_init._entry_ptr.35, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1381, i32 3}
!75 = !{ptr @cx24120_init._entry.36, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @cx24120_init._entry_ptr.38, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1402, i32 3}
!79 = !{ptr @cx24120_init._entry.39, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @cx24120_init._entry_ptr.41, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1408, i32 3}
!83 = !{ptr @cx24120_init.__UNIQUE_ID_ddebug330, !82, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1409, i32 3}
!86 = !{ptr @cx24120_init._entry.43, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @cx24120_init._entry_ptr.45, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1413, i32 2}
!90 = !{ptr @cx24120_init.__UNIQUE_ID_ddebug331, !89, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!91 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1421, i32 3}
!93 = !{ptr @cx24120_init._entry.47, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @cx24120_init._entry_ptr.49, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1432, i32 3}
!97 = !{ptr @cx24120_init._entry.50, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @cx24120_init._entry_ptr.52, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1446, i32 2}
!101 = !{ptr @cx24120_init._entry.53, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @cx24120_init._entry_ptr.55, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 205, i32 3}
!105 = !{ptr @.str.57, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @cx24120_writereg._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @cx24120_writereg._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @cx24120_writereg.__UNIQUE_ID_ddebug291, !109, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 210, i32 2}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 247, i32 4}
!112 = !{ptr @.str.59, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @cx24120_writeregs._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @cx24120_writeregs._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.60, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 251, i32 3}
!117 = !{ptr @cx24120_writeregs.__UNIQUE_ID_ddebug292, !116, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 393, i32 4}
!120 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @cx24120_message_send._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @cx24120_message_send._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 397, i32 2}
!125 = !{ptr @cx24120_message_send.__UNIQUE_ID_ddebug293, !124, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1246, i32 2}
!128 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @cx24120_set_vco.__UNIQUE_ID_ddebug326, !127, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 455, i32 3}
!132 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug294, !131, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!134 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.69, !131, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 461, i32 2}
!138 = !{ptr @cx24120_msg_mpeg_output_global_config.__UNIQUE_ID_ddebug295, !137, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!139 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1474, i32 2}
!143 = !{ptr @.str.74, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @cx24120_tune.__UNIQUE_ID_ddebug332, !142, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!145 = !{ptr @.str.75, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1141, i32 3}
!147 = !{ptr @.str.76, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug316, !146, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1144, i32 3}
!151 = !{ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug317, !150, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!152 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1147, i32 3}
!154 = !{ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug318, !153, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!155 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1177, i32 2}
!157 = !{ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug319, !156, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!158 = !{ptr @.str.80, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1179, i32 2}
!160 = !{ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug320, !159, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!161 = !{ptr @.str.81, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1181, i32 2}
!163 = !{ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug321, !162, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1183, i32 2}
!166 = !{ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug322, !165, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1186, i32 2}
!169 = !{ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug323, !168, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1190, i32 2}
!172 = !{ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug324, !171, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!173 = !{ptr @.str.85, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1193, i32 2}
!175 = !{ptr @cx24120_set_frontend.__UNIQUE_ID_ddebug325, !174, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 986, i32 2}
!178 = !{ptr @cx24120_set_inversion.__UNIQUE_ID_ddebug312, !177, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!179 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1047, i32 2}
!181 = !{ptr @.str.88, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @cx24120_set_fec.__UNIQUE_ID_ddebug313, !180, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!183 = !{ptr @modfec_table, !184, !"modfec_table", i1 false, i1 false}
!184 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1015, i32 42}
!185 = !{ptr @.str.89, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1082, i32 2}
!187 = !{ptr @cx24120_set_pilot.__UNIQUE_ID_ddebug314, !186, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1108, i32 2}
!190 = !{ptr @cx24120_set_symbolrate.__UNIQUE_ID_ddebug315, !189, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!191 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1504, i32 2}
!193 = !{ptr @.str.92, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @cx24120_get_frontend.__UNIQUE_ID_ddebug333, !192, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!195 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 1516, i32 2}
!197 = !{ptr @cx24120_get_frontend.__UNIQUE_ID_ddebug334, !196, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 806, i32 2}
!200 = !{ptr @.str.95, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @cx24120_get_fec.__UNIQUE_ID_ddebug307, !199, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!202 = !{ptr @.str.96, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 818, i32 3}
!204 = !{ptr @cx24120_get_fec.__UNIQUE_ID_ddebug308, !203, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!205 = !{ptr @.str.97, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 827, i32 2}
!207 = !{ptr @cx24120_get_fec.__UNIQUE_ID_ddebug309, !206, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!208 = !{ptr @modfec_lookup_table, !209, !"modfec_lookup_table", i1 false, i1 false}
!209 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 767, i32 36}
!210 = !{ptr @.str.98, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 716, i32 2}
!212 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @cx24120_read_status.__UNIQUE_ID_ddebug306, !211, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!214 = !{ptr @.str.100, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 614, i32 2}
!216 = !{ptr @cx24120_get_stats.__UNIQUE_ID_ddebug301, !215, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!217 = !{ptr @.str.101, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 624, i32 4}
!219 = !{ptr @cx24120_get_stats._entry, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @cx24120_get_stats._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.102, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 632, i32 3}
!223 = !{ptr @cx24120_get_stats.__UNIQUE_ID_ddebug302, !222, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!224 = !{ptr @.str.103, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 648, i32 3}
!226 = !{ptr @cx24120_get_stats.__UNIQUE_ID_ddebug303, !225, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!227 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 677, i32 3}
!229 = !{ptr @cx24120_get_stats.__UNIQUE_ID_ddebug304, !228, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!230 = !{ptr @.str.105, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 692, i32 3}
!232 = !{ptr @cx24120_get_stats.__UNIQUE_ID_ddebug305, !231, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!233 = !{ptr @.str.106, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 941, i32 3}
!235 = !{ptr @.str.107, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @cx24120_set_clock_ratios._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @cx24120_set_clock_ratios._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.108, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 954, i32 2}
!240 = !{ptr @cx24120_set_clock_ratios.__UNIQUE_ID_ddebug311, !239, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!241 = !{ptr @clock_ratios_table, !242, !"clock_ratios_table", i1 false, i1 false}
!242 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 876, i32 48}
!243 = !{ptr @.str.109, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 409, i32 3}
!245 = !{ptr @.str.110, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @cx24120_message_sendrcv._entry, !244, !"_entry", i1 false, i1 false}
!247 = !{ptr @cx24120_message_sendrcv._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.111, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 853, i32 2}
!250 = !{ptr @.str.112, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @cx24120_calculate_ber_window.__UNIQUE_ID_ddebug310, !249, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!252 = !{ptr @.str.113, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 554, i32 2}
!254 = !{ptr @cx24120_send_diseqc_msg.__UNIQUE_ID_ddebug299, !253, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!255 = !{ptr @.str.114, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 571, i32 3}
!257 = !{ptr @cx24120_send_diseqc_msg._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @cx24120_send_diseqc_msg._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.116, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 587, i32 3}
!261 = !{ptr @cx24120_send_diseqc_msg._entry.115, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @cx24120_send_diseqc_msg._entry_ptr.117, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.118, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 594, i32 4}
!265 = !{ptr @cx24120_send_diseqc_msg.__UNIQUE_ID_ddebug300, !264, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!266 = !{ptr @.str.120, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 601, i32 2}
!268 = !{ptr @cx24120_send_diseqc_msg._entry.119, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @cx24120_send_diseqc_msg._entry_ptr.121, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.122, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 492, i32 2}
!272 = !{ptr @cx24120_diseqc_send_burst.__UNIQUE_ID_ddebug296, !271, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!273 = !{ptr @.str.123, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 514, i32 2}
!275 = !{ptr @cx24120_set_tone.__UNIQUE_ID_ddebug297, !274, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!276 = !{ptr @.str.124, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 517, i32 3}
!278 = !{ptr @cx24120_set_tone._entry, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @cx24120_set_tone._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.125, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/dvb-frontends/cx24120.c", i32 537, i32 2}
!282 = !{ptr @cx24120_set_voltage.__UNIQUE_ID_ddebug298, !281, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!283 = !{i32 1, !"wchar_size", i32 2}
!284 = !{i32 1, !"min_enum_size", i32 4}
!285 = !{i32 8, !"branch-target-enforcement", i32 0}
!286 = !{i32 8, !"sign-return-address", i32 0}
!287 = !{i32 8, !"sign-return-address-all", i32 0}
!288 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!289 = !{i32 7, !"uwtable", i32 1}
!290 = !{i32 7, !"frame-pointer", i32 2}
!291 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!292 = !{i64 2148241757, i64 2148241762, i64 2148241775, i64 2148241819, i64 2148241853, i64 2148241874}
!293 = !{!"auto-init"}
!294 = !{i64 2148470816, i64 2148471096, i64 2148471430, i64 2148471764}
