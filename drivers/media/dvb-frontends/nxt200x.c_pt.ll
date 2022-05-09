; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/nxt200x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/nxt200x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nxt200x_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_nxt200x_attach\09\09\09\09"
module asm "\09.long\09__crc_nxt200x_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nxt200x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22nxt200x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_nxt200x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.nxt200x_state = type { ptr, ptr, %struct.dvb_frontend, i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.nxt200x_config = type { i8, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
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
%struct.firmware = type { i32, ptr, ptr }

@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@nxt200x_attach.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nxt200x\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nxt200x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/nxt200x.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NXT info: %*ph\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nxt200x: NXT info: %*ph\0A\00", [39 x i8] zeroinitializer }, align 32
@nxt200x_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016nxt200x: NXT2002 Detected\0A\00", [35 x i8] zeroinitializer }, align 32
@nxt200x_attach._entry_ptr = internal global ptr @nxt200x_attach._entry, section ".printk_index", align 4
@nxt200x_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016nxt200x: NXT2004 Detected\0A\00", [35 x i8] zeroinitializer }, align 32
@nxt200x_attach._entry_ptr.8 = internal global ptr @nxt200x_attach._entry.6, section ".printk_index", align 4
@nxt200x_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Nextwave NXT200X VSB/QAM frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 860000000, i32 166666, i32 0, i32 0, i32 0, i32 0, i32 2138798 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @nxt200x_release, ptr null, ptr @nxt200x_init, ptr @nxt200x_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nxt200x_setup_frontend_parameters, ptr @nxt200x_get_tune_settings, ptr null, ptr @nxt200x_read_status, ptr @nxt200x_read_ber, ptr @nxt200x_read_signal_strength, ptr @nxt200x_read_snr, ptr @nxt200x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@nxt200x_attach._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013nxt200x: Unknown/Unsupported NXT chip: %*ph\0A\00", [49 x i8] zeroinitializer }, align 32
@nxt200x_attach._entry_ptr.11 = internal global ptr @nxt200x_attach._entry.9, section ".printk_index", align 4
@__param_str_debug = internal constant [14 x i8] c"nxt200x.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype309 = internal constant [27 x i8] c"nxt200x.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug310 = internal constant [65 x i8] c"nxt200x.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [90 x i8] c"nxt200x.description=NXT200X (ATSC 8VSB & ITU-T J.83 AnnexB 64/256 QAM) Demodulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author312 = internal constant [84 x i8] c"nxt200x.author=Kirk Lapray, Michael Krufky, Jean-Francois Thibert, and Taylor Jacob\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [49 x i8] c"nxt200x.file=drivers/media/dvb-frontends/nxt200x\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [20 x i8] c"nxt200x.license=GPL\00", section ".modinfo", align 1
@__kstrtab_nxt200x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_nxt200x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_nxt200x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nxt200x_attach to i32), ptr @__kstrtab_nxt200x_attach, ptr @__kstrtabns_nxt200x_attach }, section "___ksymtab+nxt200x_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nxt200x_readbytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014nxt200x: %s: i2c read error (addr 0x%02x, err == %i)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nxt200x_readbytes\00", [46 x i8] zeroinitializer }, align 32
@nxt200x_readbytes._entry_ptr = internal global ptr @nxt200x_readbytes._entry, section ".printk_index", align 4
@nxt2002_init.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nxt2002_init\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Waiting for firmware upload (%s)...\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nxt200x: %s: Waiting for firmware upload (%s)...\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb-fe-nxt2002.fw\00", [46 x i8] zeroinitializer }, align 32
@nxt2002_init.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.18, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Waiting for firmware upload(2)...\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"nxt200x: %s: Waiting for firmware upload(2)...\0A\00", [48 x i8] zeroinitializer }, align 32
@nxt2002_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.2, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013nxt200x: %s: No firmware uploaded (timeout or file not found?)\0A\00", [62 x i8] zeroinitializer }, align 32
@nxt2002_init._entry_ptr = internal global ptr @nxt2002_init._entry, section ".printk_index", align 4
@nxt2002_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 874, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013nxt200x: %s: Writing firmware to device failed\0A\00", [46 x i8] zeroinitializer }, align 32
@nxt2002_init._entry_ptr.23 = internal global ptr @nxt2002_init._entry.21, section ".printk_index", align 4
@nxt2002_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016nxt200x: %s: Firmware upload complete\0A\00", [55 x i8] zeroinitializer }, align 32
@nxt2002_init._entry_ptr.26 = internal global ptr @nxt2002_init._entry.24, section ".printk_index", align 4
@nxt2002_load_firmware.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nxt2002_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nxt200x: %s\0A\00", [19 x i8] zeroinitializer }, align 32
@nxt2002_load_firmware.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.30, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Firmware is %zu bytes\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nxt200x: Firmware is %zu bytes\0A\00", [32 x i8] zeroinitializer }, align 32
@nxt2002_load_firmware.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.32, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rambase on this nxt2002 is %04X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nxt200x: rambase on this nxt2002 is %04X\0A\00", [54 x i8] zeroinitializer }, align 32
@nxt200x_microcontroller_stop.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.28, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nxt200x_microcontroller_stop\00", [35 x i8] zeroinitializer }, align 32
@nxt200x_microcontroller_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.34, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\014nxt200x: Timeout waiting for nxt200x to stop. This is ok after firmware upload.\0A\00", [45 x i8] zeroinitializer }, align 32
@nxt200x_microcontroller_stop._entry_ptr = internal global ptr @nxt200x_microcontroller_stop._entry, section ".printk_index", align 4
@nxt200x_writebytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014nxt200x: %s: i2c wr reg=%04x: len=%d is too big!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nxt200x_writebytes\00", [45 x i8] zeroinitializer }, align 32
@nxt200x_writebytes._entry_ptr = internal global ptr @nxt200x_writebytes._entry, section ".printk_index", align 4
@nxt200x_writebytes._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014nxt200x: %s: i2c write error (addr 0x%02x, err == %i)\0A\00", [39 x i8] zeroinitializer }, align 32
@nxt200x_writebytes._entry_ptr.40 = internal global ptr @nxt200x_writebytes._entry.38, section ".printk_index", align 4
@nxt2004_init.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.15, i8 0, i8 -24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nxt2004_init\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb-fe-nxt2004.fw\00", [46 x i8] zeroinitializer }, align 32
@nxt2004_init.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.18, i8 0, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@nxt2004_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.41, ptr @.str.2, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nxt2004_init._entry_ptr = internal global ptr @nxt2004_init._entry, section ".printk_index", align 4
@nxt2004_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.41, ptr @.str.2, i32 941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nxt2004_init._entry_ptr.44 = internal global ptr @nxt2004_init._entry.43, section ".printk_index", align 4
@nxt2004_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.41, ptr @.str.2, i32 944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nxt2004_init._entry_ptr.46 = internal global ptr @nxt2004_init._entry.45, section ".printk_index", align 4
@nxt2004_load_firmware.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.28, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nxt2004_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@nxt2004_load_firmware.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.30, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@nxt2004_load_firmware.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"firmware crc is 0x%02X 0x%02X\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nxt200x: firmware crc is 0x%02X 0x%02X\0A\00", [56 x i8] zeroinitializer }, align 32
@nxt2004_microcontroller_init.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.28, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nxt2004_microcontroller_init\00", [35 x i8] zeroinitializer }, align 32
@nxt2004_microcontroller_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.50, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014nxt200x: Timeout waiting for nxt2004 to init.\0A\00", [47 x i8] zeroinitializer }, align 32
@nxt2004_microcontroller_init._entry_ptr = internal global ptr @nxt2004_microcontroller_init._entry, section ".printk_index", align 4
@nxt200x_writereg_multibyte.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.28, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nxt200x_writereg_multibyte\00", [37 x i8] zeroinitializer }, align 32
@nxt200x_writereg_multibyte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.52, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014nxt200x: Error writing multireg register 0x%02X\0A\00", [45 x i8] zeroinitializer }, align 32
@nxt200x_writereg_multibyte._entry_ptr = internal global ptr @nxt200x_writereg_multibyte._entry, section ".printk_index", align 4
@nxt200x_readreg_multibyte.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.28, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nxt200x_readreg_multibyte\00", [38 x i8] zeroinitializer }, align 32
@nxt200x_writetuner.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.28, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nxt200x_writetuner\00", [45 x i8] zeroinitializer }, align 32
@nxt200x_writetuner.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Tuner Bytes: %*ph\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nxt200x: Tuner Bytes: %*ph\0A\00", [36 x i8] zeroinitializer }, align 32
@nxt200x_writetuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.55, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014nxt200x: error writing to tuner\0A\00", [61 x i8] zeroinitializer }, align 32
@nxt200x_writetuner._entry_ptr = internal global ptr @nxt200x_writetuner._entry, section ".printk_index", align 4
@nxt200x_writetuner._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014nxt200x: timeout waiting for tuner lock\0A\00", [53 x i8] zeroinitializer }, align 32
@nxt200x_writetuner._entry_ptr.61 = internal global ptr @nxt200x_writetuner._entry.59, section ".printk_index", align 4
@nxt200x_writetuner._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014nxt200x: timeout error writing to tuner\0A\00", [53 x i8] zeroinitializer }, align 32
@nxt200x_writetuner._entry_ptr.64 = internal global ptr @nxt200x_writetuner._entry.62, section ".printk_index", align 4
@i2c_writebytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.65, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c_writebytes\00", [17 x i8] zeroinitializer }, align 32
@i2c_writebytes._entry_ptr = internal global ptr @i2c_writebytes._entry, section ".printk_index", align 4
@i2c_readbytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.66, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_readbytes\00", [18 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr = internal global ptr @i2c_readbytes._entry, section ".printk_index", align 4
@nxt200x_agc_reset.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.28, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nxt200x_agc_reset\00", [46 x i8] zeroinitializer }, align 32
@nxt200x_microcontroller_start.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.28, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nxt200x_microcontroller_start\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 5]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 55, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1142, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1148, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1152, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [12 x i8] c"nxt200x_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1185, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 1181, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 118, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 860, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 864, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 866, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 874, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 877, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 408, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 409, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 419, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 247, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 273, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 92, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 101, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 927, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 933, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 941, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 944, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 475, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 504, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 290, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 312, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 144, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 194, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 203, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 321, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 323, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 330, i32 5 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 339, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 368, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 64, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 77, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 379, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.302 = private constant [41 x i8] c"../drivers/media/dvb-frontends/nxt200x.c\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 280, i32 2 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_debug310, ptr @__UNIQUE_ID_debugtype309, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__ksymtab_nxt200x_attach, ptr @__param_debug, ptr @i2c_readbytes._entry, ptr @i2c_readbytes._entry_ptr, ptr @i2c_writebytes._entry, ptr @i2c_writebytes._entry_ptr, ptr @nxt2002_init._entry, ptr @nxt2002_init._entry.21, ptr @nxt2002_init._entry.24, ptr @nxt2002_init._entry_ptr, ptr @nxt2002_init._entry_ptr.23, ptr @nxt2002_init._entry_ptr.26, ptr @nxt2004_init._entry, ptr @nxt2004_init._entry.43, ptr @nxt2004_init._entry.45, ptr @nxt2004_init._entry_ptr, ptr @nxt2004_init._entry_ptr.44, ptr @nxt2004_init._entry_ptr.46, ptr @nxt2004_microcontroller_init._entry, ptr @nxt2004_microcontroller_init._entry_ptr, ptr @nxt200x_attach._entry, ptr @nxt200x_attach._entry.6, ptr @nxt200x_attach._entry.9, ptr @nxt200x_attach._entry_ptr, ptr @nxt200x_attach._entry_ptr.11, ptr @nxt200x_attach._entry_ptr.8, ptr @nxt200x_microcontroller_stop._entry, ptr @nxt200x_microcontroller_stop._entry_ptr, ptr @nxt200x_readbytes._entry, ptr @nxt200x_readbytes._entry_ptr, ptr @nxt200x_writebytes._entry, ptr @nxt200x_writebytes._entry.38, ptr @nxt200x_writebytes._entry_ptr, ptr @nxt200x_writebytes._entry_ptr.40, ptr @nxt200x_writereg_multibyte._entry, ptr @nxt200x_writereg_multibyte._entry_ptr, ptr @nxt200x_writetuner._entry, ptr @nxt200x_writetuner._entry.59, ptr @nxt200x_writetuner._entry.62, ptr @nxt200x_writetuner._entry_ptr, ptr @nxt200x_writetuner._entry_ptr.61, ptr @nxt200x_writetuner._entry_ptr.64, ptr @debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @nxt200x_ops, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt200x_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt200x_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt200x_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt200x_attach._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt200x_readbytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt2002_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt2002_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt2002_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt200x_microcontroller_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt200x_writebytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt200x_writebytes._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt2004_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt2004_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt2004_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt2004_microcontroller_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt200x_writereg_multibyte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt200x_writetuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt200x_writetuner._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nxt200x_writetuner._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_writebytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nxt200x_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %reg2.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #8
  %0 = call ptr @memset(ptr %buf, i32 0, i32 5)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1056) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.nxt200x_state, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %config, ptr %config1, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %i2c, ptr %call7.i.i, align 8
  %initialised = getelementptr inbounds %struct.nxt200x_state, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %initialised to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %initialised, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %initialised, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2.i) #8
  %5 = ptrtoint ptr %reg2.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %reg2.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %config, align 4
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %6, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg2.i, ptr %buf3.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags8.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 5, ptr %len9.i, align 4
  %buf11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf, ptr %buf11.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.nxt200x_readbytes.exit_crit_edge, label %do.end.i

if.end.nxt200x_readbytes.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_readbytes.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config1, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 4
  %conv16.i = zext i8 %21 to i32
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv16.i, i32 noundef %call.i) #12
  br label %nxt200x_readbytes.exit

nxt200x_readbytes.exit:                           ; preds = %do.end.i, %if.end.nxt200x_readbytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2.i) #8
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %nxt200x_readbytes.exit.do.end15_crit_edge, label %do.body5

nxt200x_readbytes.exit.do.end15_crit_edge:        ; preds = %nxt200x_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.body5:                                         ; preds = %nxt200x_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt200x_attach.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt200x_attach, %if.then10)) #8
          to label %do.end15 [label %if.then10], !srcloc !177

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt200x_attach.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.4, i32 noundef 5, ptr noundef nonnull %buf) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then10, %do.body5, %nxt200x_readbytes.exit.do.end15_crit_edge
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %buf, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %do.end15.error_crit_edge [
    i8 4, label %do.end15.sw.epilog_crit_edge
    i8 5, label %sw.bb21
  ]

do.end15.sw.epilog_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end15.error_crit_edge:                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

sw.bb21:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %do.end15.sw.epilog_crit_edge
  %.sink = phi i32 [ 2, %sw.bb21 ], [ 1, %do.end15.sw.epilog_crit_edge ]
  %.str.7.sink = phi ptr [ @.str.7, %sw.bb21 ], [ @.str.5, %do.end15.sw.epilog_crit_edge ]
  %demod_chip22 = getelementptr inbounds %struct.nxt200x_state, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %demod_chip22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %demod_chip22, align 8
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.7.sink) #12
  %demod_chip28 = getelementptr inbounds %struct.nxt200x_state, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %demod_chip28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %demod_chip28, align 8
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %28, label %sw.epilog.error_crit_edge [
    i32 1, label %sw.bb29
    i32 2, label %sw.bb60
  ]

sw.epilog.error_crit_edge:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

sw.bb29:                                          ; preds = %sw.epilog
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %31)
  %cmp32.not = icmp eq i8 %31, 4
  br i1 %cmp32.not, label %if.end35, label %sw.bb29.error_crit_edge

sw.bb29.error_crit_edge:                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end35:                                         ; preds = %sw.bb29
  %arrayidx36 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp38.not = icmp eq i8 %33, 2
  br i1 %cmp38.not, label %if.end41, label %if.end35.error_crit_edge

if.end35.error_crit_edge:                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end41:                                         ; preds = %if.end35
  %arrayidx42 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %35)
  %cmp44.not = icmp eq i8 %35, 17
  br i1 %cmp44.not, label %if.end47, label %if.end41.error_crit_edge

if.end41.error_crit_edge:                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end47:                                         ; preds = %if.end41
  %arrayidx48 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %37)
  %cmp50.not = icmp eq i8 %37, 32
  br i1 %cmp50.not, label %if.end53, label %if.end47.error_crit_edge

if.end47.error_crit_edge:                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end53:                                         ; preds = %if.end47
  %arrayidx54 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %38 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp56.not = icmp eq i8 %39, 0
  br i1 %cmp56.not, label %if.end53.sw.epilog68_crit_edge, label %if.end53.error_crit_edge

if.end53.error_crit_edge:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end53.sw.epilog68_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog68

sw.bb60:                                          ; preds = %sw.epilog
  %40 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %41)
  %cmp63.not = icmp eq i8 %41, 5
  br i1 %cmp63.not, label %sw.bb60.sw.epilog68_crit_edge, label %sw.bb60.error_crit_edge

sw.bb60.error_crit_edge:                          ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

sw.bb60.sw.epilog68_crit_edge:                    ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog68

sw.epilog68:                                      ; preds = %sw.bb60.sw.epilog68_crit_edge, %if.end53.sw.epilog68_crit_edge
  %frontend = getelementptr inbounds %struct.nxt200x_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.nxt200x_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %42 = call ptr @memcpy(ptr %ops, ptr @nxt200x_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.nxt200x_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

error:                                            ; preds = %sw.bb60.error_crit_edge, %if.end53.error_crit_edge, %if.end47.error_crit_edge, %if.end41.error_crit_edge, %if.end35.error_crit_edge, %sw.bb29.error_crit_edge, %sw.epilog.error_crit_edge, %do.end15.error_crit_edge, %entry.error_crit_edge
  call void @kfree(ptr noundef %call7.i.i) #8
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 5, ptr noundef nonnull %buf) #12
  br label %cleanup

cleanup:                                          ; preds = %error, %sw.epilog68
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %sw.epilog68 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nxt200x_release(ptr nocapture noundef readonly %fe) #0 align 64 {
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
define internal i32 @nxt200x_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %initialised = getelementptr inbounds %struct.nxt200x_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %initialised to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %initialised, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %demod_chip = getelementptr inbounds %struct.nxt200x_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %demod_chip, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %4, label %if.then.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @nxt2002_init(ptr noundef %fe)
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @nxt2004_init(ptr noundef %fe)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %ret.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  %6 = ptrtoint ptr %initialised to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load4 = load i8, ptr %initialised, align 4
  %bf.set = or i8 %bf.load4, -128
  store i8 %bf.set, ptr %initialised, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nxt200x_sleep(ptr nocapture noundef readnone %fe) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxt200x_setup_frontend_parameters(ptr noundef %fe) #0 align 64 {
entry:
  %buf2.i481 = alloca [256 x i8], align 1
  %msg.i482 = alloca %struct.i2c_msg, align 4
  %buf2.i.i = alloca [256 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf2.i467 = alloca [256 x i8], align 1
  %msg.i468 = alloca %struct.i2c_msg, align 4
  %buf2.i453 = alloca [256 x i8], align 1
  %msg.i454 = alloca %struct.i2c_msg, align 4
  %buf2.i439 = alloca [256 x i8], align 1
  %msg.i440 = alloca %struct.i2c_msg, align 4
  %buf2.i425 = alloca [256 x i8], align 1
  %msg.i426 = alloca %struct.i2c_msg, align 4
  %buf2.i411 = alloca [256 x i8], align 1
  %msg.i412 = alloca %struct.i2c_msg, align 4
  %buf2.i397 = alloca [256 x i8], align 1
  %msg.i398 = alloca %struct.i2c_msg, align 4
  %buf2.i383 = alloca [256 x i8], align 1
  %msg.i384 = alloca %struct.i2c_msg, align 4
  %buf2.i369 = alloca [256 x i8], align 1
  %msg.i370 = alloca %struct.i2c_msg, align 4
  %buf2.i355 = alloca [256 x i8], align 1
  %msg.i356 = alloca %struct.i2c_msg, align 4
  %buf2.i341 = alloca [256 x i8], align 1
  %msg.i342 = alloca %struct.i2c_msg, align 4
  %buf2.i327 = alloca [256 x i8], align 1
  %msg.i328 = alloca %struct.i2c_msg, align 4
  %buf2.i313 = alloca [256 x i8], align 1
  %msg.i314 = alloca %struct.i2c_msg, align 4
  %buf2.i299 = alloca [256 x i8], align 1
  %msg.i300 = alloca %struct.i2c_msg, align 4
  %buf2.i285 = alloca [256 x i8], align 1
  %msg.i286 = alloca %struct.i2c_msg, align 4
  %buf2.i271 = alloca [256 x i8], align 1
  %msg.i272 = alloca %struct.i2c_msg, align 4
  %buf2.i257 = alloca [256 x i8], align 1
  %msg.i258 = alloca %struct.i2c_msg, align 4
  %buf2.i = alloca [256 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca [5 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %4 = call ptr @memset(ptr %buf, i32 255, i32 5)
  tail call fastcc void @nxt200x_microcontroller_stop(ptr noundef %1)
  %demod_chip = getelementptr inbounds %struct.nxt200x_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %demod_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i) #8
  %8 = getelementptr inbounds i8, ptr %buf2.i, i32 1
  %9 = call ptr @memset(ptr %8, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  %config.i = getelementptr inbounds %struct.nxt200x_state, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %conv.i = zext i8 %15 to i16
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %10, align 4
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf2.i, ptr %buf4.i, align 4
  %19 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 20, ptr %buf2.i, align 1
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %8, align 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call12.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.not.i, label %if.then.nxt200x_writebytes.exit_crit_edge, label %do.end18.i

if.then.nxt200x_writebytes.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit

do.end18.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 4
  %conv22.i = zext i8 %26 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i, i32 noundef %call12.i) #12
  br label %nxt200x_writebytes.exit

nxt200x_writebytes.exit:                          ; preds = %do.end18.i, %if.then.nxt200x_writebytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i) #8
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i257) #8
  %28 = getelementptr inbounds i8, ptr %buf2.i257, i32 1
  %29 = call ptr @memset(ptr %28, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i258) #8
  %30 = getelementptr inbounds i8, ptr %msg.i258, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %30, align 4
  %32 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %config.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %conv.i260 = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i258 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i260, ptr %msg.i258, align 4
  %flags.i261 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i258, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i261 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i261, align 2
  store i16 2, ptr %30, align 4
  %buf4.i263 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i258, i32 0, i32 3
  %38 = ptrtoint ptr %buf4.i263 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf2.i257, ptr %buf4.i263, align 4
  %39 = ptrtoint ptr %buf2.i257 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 23, ptr %buf2.i257, align 1
  %40 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %28, align 1
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call12.i265 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %msg.i258, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i265)
  %cmp13.not.i266 = icmp eq i32 %call12.i265, 1
  br i1 %cmp13.not.i266, label %nxt200x_writebytes.exit.nxt200x_writebytes.exit270_crit_edge, label %do.end18.i269

nxt200x_writebytes.exit.nxt200x_writebytes.exit270_crit_edge: ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit270

do.end18.i269:                                    ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %config.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 4
  %conv22.i267 = zext i8 %46 to i32
  %call23.i268 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i267, i32 noundef %call12.i265) #12
  br label %nxt200x_writebytes.exit270

nxt200x_writebytes.exit270:                       ; preds = %do.end18.i269, %nxt200x_writebytes.exit.nxt200x_writebytes.exit270_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i258) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i257) #8
  br label %if.end

if.end:                                           ; preds = %nxt200x_writebytes.exit270, %entry.if.end_crit_edge
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %modulation, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %48, label %if.end.cleanup_crit_edge [
    i32 3, label %if.end.sw.bb_crit_edge
    i32 5, label %if.end.sw.bb_crit_edge495
    i32 7, label %sw.bb9
  ]

if.end.sw.bb_crit_edge495:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge495
  %config = getelementptr inbounds %struct.nxt200x_state, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %config, align 4
  %set_ts_params = getelementptr inbounds %struct.nxt200x_config, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %set_ts_params to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_ts_params, align 4
  %tobool.not = icmp eq ptr %53, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then4

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = call i32 %53(ptr noundef %fe, i32 noundef 1) #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %config10 = getelementptr inbounds %struct.nxt200x_state, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %config10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %config10, align 4
  %set_ts_params11 = getelementptr inbounds %struct.nxt200x_config, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %set_ts_params11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_ts_params11, align 4
  %tobool12.not = icmp eq ptr %57, null
  br i1 %tobool12.not, label %sw.bb9.sw.epilog_crit_edge, label %if.then13

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then13:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = call i32 %57(ptr noundef %fe, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then13, %sw.bb9.sw.epilog_crit_edge, %if.then4, %sw.bb.sw.epilog_crit_edge
  %calc_regs = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 15
  %58 = ptrtoint ptr %calc_regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %calc_regs, align 4
  %tobool18.not = icmp eq ptr %59, null
  br i1 %tobool18.not, label %sw.epilog.if.end27_crit_edge, label %if.then19

sw.epilog.if.end27_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then19:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = call i32 %59(ptr noundef %fe, ptr noundef nonnull %buf, i32 noundef 5) #8
  call fastcc void @nxt200x_writetuner(ptr noundef %1, ptr noundef nonnull %buf)
  br label %if.end27

if.end27:                                         ; preds = %if.then19, %sw.epilog.if.end27_crit_edge
  call fastcc void @nxt200x_agc_reset(ptr noundef %1)
  %60 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %modulation, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %61, label %if.end27.cleanup_crit_edge [
    i32 3, label %if.end27.sw.epilog34_crit_edge
    i32 5, label %if.end27.sw.epilog34_crit_edge496
    i32 7, label %sw.bb31
  ]

if.end27.sw.epilog34_crit_edge496:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog34

if.end27.sw.epilog34_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog34

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb31:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %sw.bb31, %if.end27.sw.epilog34_crit_edge, %if.end27.sw.epilog34_crit_edge496
  %storemerge = phi i8 [ 112, %sw.bb31 ], [ 116, %if.end27.sw.epilog34_crit_edge ], [ 116, %if.end27.sw.epilog34_crit_edge496 ]
  %63 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %storemerge, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i271) #8
  %64 = getelementptr inbounds i8, ptr %buf2.i271, i32 1
  %65 = call ptr @memset(ptr %64, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i272) #8
  %66 = getelementptr inbounds i8, ptr %msg.i272, i32 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %66, align 4
  %config.i273 = getelementptr inbounds %struct.nxt200x_state, ptr %1, i32 0, i32 1
  %68 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %config.i273, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %69, align 4
  %conv.i274 = zext i8 %71 to i16
  %72 = ptrtoint ptr %msg.i272 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i274, ptr %msg.i272, align 4
  %flags.i275 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i272, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i275 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %flags.i275, align 2
  store i16 2, ptr %66, align 4
  %buf4.i277 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i272, i32 0, i32 3
  %74 = ptrtoint ptr %buf4.i277 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %buf2.i271, ptr %buf4.i277, align 4
  %75 = ptrtoint ptr %buf2.i271 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 66, ptr %buf2.i271, align 1
  %76 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %storemerge, ptr %64, align 1
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %call12.i279 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %msg.i272, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i279)
  %cmp13.not.i280 = icmp eq i32 %call12.i279, 1
  br i1 %cmp13.not.i280, label %sw.epilog34.nxt200x_writebytes.exit284_crit_edge, label %do.end18.i283

sw.epilog34.nxt200x_writebytes.exit284_crit_edge: ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit284

do.end18.i283:                                    ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %config.i273, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 4
  %conv22.i281 = zext i8 %82 to i32
  %call23.i282 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i281, i32 noundef %call12.i279) #12
  br label %nxt200x_writebytes.exit284

nxt200x_writebytes.exit284:                       ; preds = %do.end18.i283, %sw.epilog34.nxt200x_writebytes.exit284_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i272) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i271) #8
  %83 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %demod_chip, align 4
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %84, label %nxt200x_writebytes.exit284.cleanup_crit_edge [
    i32 1, label %nxt200x_writebytes.exit284.sw.epilog43_crit_edge
    i32 2, label %sw.bb40
  ]

nxt200x_writebytes.exit284.sw.epilog43_crit_edge: ; preds = %nxt200x_writebytes.exit284
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog43

nxt200x_writebytes.exit284.cleanup_crit_edge:     ; preds = %nxt200x_writebytes.exit284
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb40:                                          ; preds = %nxt200x_writebytes.exit284
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog43

sw.epilog43:                                      ; preds = %sw.bb40, %nxt200x_writebytes.exit284.sw.epilog43_crit_edge
  %storemerge256 = phi i8 [ 7, %sw.bb40 ], [ -121, %nxt200x_writebytes.exit284.sw.epilog43_crit_edge ]
  %86 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %storemerge256, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i285) #8
  %87 = getelementptr inbounds i8, ptr %buf2.i285, i32 1
  %88 = call ptr @memset(ptr %87, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i286) #8
  %89 = getelementptr inbounds i8, ptr %msg.i286, i32 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %89, align 4
  %91 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %config.i273, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %92, align 4
  %conv.i288 = zext i8 %94 to i16
  %95 = ptrtoint ptr %msg.i286 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv.i288, ptr %msg.i286, align 4
  %flags.i289 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i286, i32 0, i32 1
  %96 = ptrtoint ptr %flags.i289 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags.i289, align 2
  store i16 2, ptr %89, align 4
  %buf4.i291 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i286, i32 0, i32 3
  %97 = ptrtoint ptr %buf4.i291 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %buf2.i285, ptr %buf4.i291, align 4
  %98 = ptrtoint ptr %buf2.i285 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 87, ptr %buf2.i285, align 1
  %99 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %storemerge256, ptr %87, align 1
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  %call12.i293 = call i32 @i2c_transfer(ptr noundef %101, ptr noundef nonnull %msg.i286, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i293)
  %cmp13.not.i294 = icmp eq i32 %call12.i293, 1
  br i1 %cmp13.not.i294, label %sw.epilog43.nxt200x_writebytes.exit298_crit_edge, label %do.end18.i297

sw.epilog43.nxt200x_writebytes.exit298_crit_edge: ; preds = %sw.epilog43
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit298

do.end18.i297:                                    ; preds = %sw.epilog43
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %config.i273, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %103, align 4
  %conv22.i295 = zext i8 %105 to i32
  %call23.i296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i295, i32 noundef %call12.i293) #12
  br label %nxt200x_writebytes.exit298

nxt200x_writebytes.exit298:                       ; preds = %do.end18.i297, %sw.epilog43.nxt200x_writebytes.exit298_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i286) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i285) #8
  %106 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 16, ptr %buf, align 2
  %107 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %2, align 1
  %108 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %demod_chip, align 4
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %109, label %nxt200x_writebytes.exit298.cleanup_crit_edge [
    i32 1, label %sw.bb49
    i32 2, label %sw.bb52
  ]

nxt200x_writebytes.exit298.cleanup_crit_edge:     ; preds = %nxt200x_writebytes.exit298
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb49:                                          ; preds = %nxt200x_writebytes.exit298
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext 88, ptr noundef nonnull %buf, i8 noundef zeroext 2)
  br label %sw.epilog56

sw.bb52:                                          ; preds = %nxt200x_writebytes.exit298
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i299) #8
  %111 = getelementptr inbounds i8, ptr %buf2.i299, i32 1
  %112 = call ptr @memset(ptr %111, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i300) #8
  %113 = getelementptr inbounds i8, ptr %msg.i300, i32 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %113, align 4
  %115 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %config.i273, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %116, align 4
  %conv.i302 = zext i8 %118 to i16
  %119 = ptrtoint ptr %msg.i300 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv.i302, ptr %msg.i300, align 4
  %flags.i303 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i300, i32 0, i32 1
  %120 = ptrtoint ptr %flags.i303 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %flags.i303, align 2
  store i16 3, ptr %113, align 4
  %buf4.i305 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i300, i32 0, i32 3
  %121 = ptrtoint ptr %buf4.i305 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %buf2.i299, ptr %buf4.i305, align 4
  %122 = ptrtoint ptr %buf2.i299 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 88, ptr %buf2.i299, align 1
  %123 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %buf, align 2
  %125 = ptrtoint ptr %111 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 2)
  store i16 %124, ptr %111, align 1
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  %call12.i307 = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %msg.i300, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i307)
  %cmp13.not.i308 = icmp eq i32 %call12.i307, 1
  br i1 %cmp13.not.i308, label %sw.bb52.nxt200x_writebytes.exit312_crit_edge, label %do.end18.i311

sw.bb52.nxt200x_writebytes.exit312_crit_edge:     ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit312

do.end18.i311:                                    ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %config.i273, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %129, align 4
  %conv22.i309 = zext i8 %131 to i32
  %call23.i310 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i309, i32 noundef %call12.i307) #12
  br label %nxt200x_writebytes.exit312

nxt200x_writebytes.exit312:                       ; preds = %do.end18.i311, %sw.bb52.nxt200x_writebytes.exit312_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i300) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i299) #8
  br label %sw.epilog56

sw.epilog56:                                      ; preds = %nxt200x_writebytes.exit312, %sw.bb49
  %132 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %modulation, align 4
  %134 = zext i32 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %133, label %sw.epilog56.cleanup_crit_edge [
    i32 3, label %sw.bb58
    i32 5, label %sw.bb60
    i32 7, label %sw.bb62
  ]

sw.epilog56.cleanup_crit_edge:                    ; preds = %sw.epilog56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb58:                                          ; preds = %sw.epilog56
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 104, ptr %buf, align 2
  br label %sw.epilog65

sw.bb60:                                          ; preds = %sw.epilog56
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 100, ptr %buf, align 2
  br label %sw.epilog65

sw.bb62:                                          ; preds = %sw.epilog56
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 96, ptr %buf, align 2
  br label %sw.epilog65

sw.epilog65:                                      ; preds = %sw.bb62, %sw.bb60, %sw.bb58
  %138 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %2, align 1
  %139 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %demod_chip, align 4
  %141 = zext i32 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %140, label %sw.epilog65.cleanup_crit_edge [
    i32 1, label %sw.bb68
    i32 2, label %sw.bb71
  ]

sw.epilog65.cleanup_crit_edge:                    ; preds = %sw.epilog65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb68:                                          ; preds = %sw.epilog65
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext 92, ptr noundef nonnull %buf, i8 noundef zeroext 2)
  br label %sw.epilog75

sw.bb71:                                          ; preds = %sw.epilog65
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i313) #8
  %142 = getelementptr inbounds i8, ptr %buf2.i313, i32 1
  %143 = call ptr @memset(ptr %142, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i314) #8
  %144 = getelementptr inbounds i8, ptr %msg.i314, i32 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 -1, ptr %144, align 4
  %146 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %config.i273, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %147, align 4
  %conv.i316 = zext i8 %149 to i16
  %150 = ptrtoint ptr %msg.i314 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv.i316, ptr %msg.i314, align 4
  %flags.i317 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i314, i32 0, i32 1
  %151 = ptrtoint ptr %flags.i317 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %flags.i317, align 2
  store i16 3, ptr %144, align 4
  %buf4.i319 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i314, i32 0, i32 3
  %152 = ptrtoint ptr %buf4.i319 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %buf2.i313, ptr %buf4.i319, align 4
  %153 = ptrtoint ptr %buf2.i313 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 92, ptr %buf2.i313, align 1
  %154 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %buf, align 2
  %156 = ptrtoint ptr %142 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 2)
  store i16 %155, ptr %142, align 1
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %1, align 4
  %call12.i321 = call i32 @i2c_transfer(ptr noundef %158, ptr noundef nonnull %msg.i314, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i321)
  %cmp13.not.i322 = icmp eq i32 %call12.i321, 1
  br i1 %cmp13.not.i322, label %sw.bb71.nxt200x_writebytes.exit326_crit_edge, label %do.end18.i325

sw.bb71.nxt200x_writebytes.exit326_crit_edge:     ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit326

do.end18.i325:                                    ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #10
  %159 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %config.i273, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %160, align 4
  %conv22.i323 = zext i8 %162 to i32
  %call23.i324 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i323, i32 noundef %call12.i321) #12
  br label %nxt200x_writebytes.exit326

nxt200x_writebytes.exit326:                       ; preds = %do.end18.i325, %sw.bb71.nxt200x_writebytes.exit326_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i314) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i313) #8
  br label %sw.epilog75

sw.epilog75:                                      ; preds = %nxt200x_writebytes.exit326, %sw.bb68
  %163 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 5, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i327) #8
  %164 = getelementptr inbounds i8, ptr %buf2.i327, i32 1
  %165 = call ptr @memset(ptr %164, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i328) #8
  %166 = getelementptr inbounds i8, ptr %msg.i328, i32 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 -1, ptr %166, align 4
  %168 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %config.i273, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %169, align 4
  %conv.i330 = zext i8 %171 to i16
  %172 = ptrtoint ptr %msg.i328 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv.i330, ptr %msg.i328, align 4
  %flags.i331 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i328, i32 0, i32 1
  %173 = ptrtoint ptr %flags.i331 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 0, ptr %flags.i331, align 2
  store i16 2, ptr %166, align 4
  %buf4.i333 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i328, i32 0, i32 3
  %174 = ptrtoint ptr %buf4.i333 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %buf2.i327, ptr %buf4.i333, align 4
  %175 = ptrtoint ptr %buf2.i327 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 67, ptr %buf2.i327, align 1
  %176 = ptrtoint ptr %164 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 5, ptr %164, align 1
  %177 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %1, align 4
  %call12.i335 = call i32 @i2c_transfer(ptr noundef %178, ptr noundef nonnull %msg.i328, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i335)
  %cmp13.not.i336 = icmp eq i32 %call12.i335, 1
  br i1 %cmp13.not.i336, label %sw.epilog75.nxt200x_writebytes.exit340_crit_edge, label %do.end18.i339

sw.epilog75.nxt200x_writebytes.exit340_crit_edge: ; preds = %sw.epilog75
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit340

do.end18.i339:                                    ; preds = %sw.epilog75
  call void @__sanitizer_cov_trace_pc() #10
  %179 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %config.i273, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %180, align 4
  %conv22.i337 = zext i8 %182 to i32
  %call23.i338 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i337, i32 noundef %call12.i335) #12
  br label %nxt200x_writebytes.exit340

nxt200x_writebytes.exit340:                       ; preds = %do.end18.i339, %sw.epilog75.nxt200x_writebytes.exit340_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i328) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i327) #8
  %183 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %demod_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %184)
  %cmp80 = icmp eq i32 %184, 2
  br i1 %cmp80, label %if.then81, label %nxt200x_writebytes.exit340.if.end86_crit_edge

nxt200x_writebytes.exit340.if.end86_crit_edge:    ; preds = %nxt200x_writebytes.exit340
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then81:                                        ; preds = %nxt200x_writebytes.exit340
  %185 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %buf, align 2
  %186 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i341) #8
  %187 = getelementptr inbounds i8, ptr %buf2.i341, i32 1
  %188 = call ptr @memset(ptr %187, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i342) #8
  %189 = getelementptr inbounds i8, ptr %msg.i342, i32 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 -1, ptr %189, align 4
  %191 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %config.i273, align 4
  %193 = ptrtoint ptr %192 to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %192, align 4
  %conv.i344 = zext i8 %194 to i16
  %195 = ptrtoint ptr %msg.i342 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv.i344, ptr %msg.i342, align 4
  %flags.i345 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i342, i32 0, i32 1
  %196 = ptrtoint ptr %flags.i345 to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 0, ptr %flags.i345, align 2
  store i16 3, ptr %189, align 4
  %buf4.i347 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i342, i32 0, i32 3
  %197 = ptrtoint ptr %buf4.i347 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %buf2.i341, ptr %buf4.i347, align 4
  %198 = ptrtoint ptr %buf2.i341 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 70, ptr %buf2.i341, align 1
  %199 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %buf, align 2
  %201 = ptrtoint ptr %187 to i32
  call void @__asan_storeN_noabort(i32 %201, i32 2)
  store i16 %200, ptr %187, align 1
  %202 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %1, align 4
  %call12.i349 = call i32 @i2c_transfer(ptr noundef %203, ptr noundef nonnull %msg.i342, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i349)
  %cmp13.not.i350 = icmp eq i32 %call12.i349, 1
  br i1 %cmp13.not.i350, label %if.then81.nxt200x_writebytes.exit354_crit_edge, label %do.end18.i353

if.then81.nxt200x_writebytes.exit354_crit_edge:   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit354

do.end18.i353:                                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  %204 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %config.i273, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %205, align 4
  %conv22.i351 = zext i8 %207 to i32
  %call23.i352 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i351, i32 noundef %call12.i349) #12
  br label %nxt200x_writebytes.exit354

nxt200x_writebytes.exit354:                       ; preds = %do.end18.i353, %if.then81.nxt200x_writebytes.exit354_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i342) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i341) #8
  %208 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %208)
  %.pr = load i32, ptr %demod_chip, align 4
  br label %if.end86

if.end86:                                         ; preds = %nxt200x_writebytes.exit354, %nxt200x_writebytes.exit340.if.end86_crit_edge
  %209 = phi i32 [ %.pr, %nxt200x_writebytes.exit354 ], [ %184, %nxt200x_writebytes.exit340.if.end86_crit_edge ]
  %210 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 -128, ptr %buf, align 2
  %211 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 0, ptr %2, align 1
  %212 = zext i32 %209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %212, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %209, label %if.end86.cleanup_crit_edge [
    i32 1, label %sw.bb90
    i32 2, label %sw.bb93
  ]

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb90:                                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext 75, ptr noundef nonnull %buf, i8 noundef zeroext 2)
  br label %sw.epilog97

sw.bb93:                                          ; preds = %if.end86
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i355) #8
  %213 = getelementptr inbounds i8, ptr %buf2.i355, i32 1
  %214 = call ptr @memset(ptr %213, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i356) #8
  %215 = getelementptr inbounds i8, ptr %msg.i356, i32 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 -1, ptr %215, align 4
  %217 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %config.i273, align 4
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %218, align 4
  %conv.i358 = zext i8 %220 to i16
  %221 = ptrtoint ptr %msg.i356 to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %conv.i358, ptr %msg.i356, align 4
  %flags.i359 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i356, i32 0, i32 1
  %222 = ptrtoint ptr %flags.i359 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 0, ptr %flags.i359, align 2
  store i16 3, ptr %215, align 4
  %buf4.i361 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i356, i32 0, i32 3
  %223 = ptrtoint ptr %buf4.i361 to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %buf2.i355, ptr %buf4.i361, align 4
  %224 = ptrtoint ptr %buf2.i355 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 75, ptr %buf2.i355, align 1
  %225 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %buf, align 2
  %227 = ptrtoint ptr %213 to i32
  call void @__asan_storeN_noabort(i32 %227, i32 2)
  store i16 %226, ptr %213, align 1
  %228 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %1, align 4
  %call12.i363 = call i32 @i2c_transfer(ptr noundef %229, ptr noundef nonnull %msg.i356, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i363)
  %cmp13.not.i364 = icmp eq i32 %call12.i363, 1
  br i1 %cmp13.not.i364, label %sw.bb93.nxt200x_writebytes.exit368_crit_edge, label %do.end18.i367

sw.bb93.nxt200x_writebytes.exit368_crit_edge:     ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit368

do.end18.i367:                                    ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #10
  %230 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %config.i273, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %231, align 4
  %conv22.i365 = zext i8 %233 to i32
  %call23.i366 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i365, i32 noundef %call12.i363) #12
  br label %nxt200x_writebytes.exit368

nxt200x_writebytes.exit368:                       ; preds = %do.end18.i367, %sw.bb93.nxt200x_writebytes.exit368_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i356) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i355) #8
  br label %sw.epilog97

sw.epilog97:                                      ; preds = %nxt200x_writebytes.exit368, %sw.bb90
  %234 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 0, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i369) #8
  %235 = getelementptr inbounds i8, ptr %buf2.i369, i32 1
  %236 = call ptr @memset(ptr %235, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i370) #8
  %237 = getelementptr inbounds i8, ptr %msg.i370, i32 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 -1, ptr %237, align 4
  %239 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %config.i273, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %240, align 4
  %conv.i372 = zext i8 %242 to i16
  %243 = ptrtoint ptr %msg.i370 to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 %conv.i372, ptr %msg.i370, align 4
  %flags.i373 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i370, i32 0, i32 1
  %244 = ptrtoint ptr %flags.i373 to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 0, ptr %flags.i373, align 2
  store i16 2, ptr %237, align 4
  %buf4.i375 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i370, i32 0, i32 3
  %245 = ptrtoint ptr %buf4.i375 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %buf2.i369, ptr %buf4.i375, align 4
  %246 = ptrtoint ptr %buf2.i369 to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 77, ptr %buf2.i369, align 1
  %247 = ptrtoint ptr %235 to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 0, ptr %235, align 1
  %248 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %1, align 4
  %call12.i377 = call i32 @i2c_transfer(ptr noundef %249, ptr noundef nonnull %msg.i370, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i377)
  %cmp13.not.i378 = icmp eq i32 %call12.i377, 1
  br i1 %cmp13.not.i378, label %sw.epilog97.nxt200x_writebytes.exit382_crit_edge, label %do.end18.i381

sw.epilog97.nxt200x_writebytes.exit382_crit_edge: ; preds = %sw.epilog97
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit382

do.end18.i381:                                    ; preds = %sw.epilog97
  call void @__sanitizer_cov_trace_pc() #10
  %250 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %config.i273, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %251, align 4
  %conv22.i379 = zext i8 %253 to i32
  %call23.i380 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i379, i32 noundef %call12.i377) #12
  br label %nxt200x_writebytes.exit382

nxt200x_writebytes.exit382:                       ; preds = %do.end18.i381, %sw.epilog97.nxt200x_writebytes.exit382_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i370) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i369) #8
  %254 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 68, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i383) #8
  %255 = getelementptr inbounds i8, ptr %buf2.i383, i32 1
  %256 = call ptr @memset(ptr %255, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i384) #8
  %257 = getelementptr inbounds i8, ptr %msg.i384, i32 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 -1, ptr %257, align 4
  %259 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %config.i273, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %260, align 4
  %conv.i386 = zext i8 %262 to i16
  %263 = ptrtoint ptr %msg.i384 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 %conv.i386, ptr %msg.i384, align 4
  %flags.i387 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i384, i32 0, i32 1
  %264 = ptrtoint ptr %flags.i387 to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 0, ptr %flags.i387, align 2
  store i16 2, ptr %257, align 4
  %buf4.i389 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i384, i32 0, i32 3
  %265 = ptrtoint ptr %buf4.i389 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %buf2.i383, ptr %buf4.i389, align 4
  %266 = ptrtoint ptr %buf2.i383 to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 85, ptr %buf2.i383, align 1
  %267 = ptrtoint ptr %255 to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 68, ptr %255, align 1
  %268 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %1, align 4
  %call12.i391 = call i32 @i2c_transfer(ptr noundef %269, ptr noundef nonnull %msg.i384, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i391)
  %cmp13.not.i392 = icmp eq i32 %call12.i391, 1
  br i1 %cmp13.not.i392, label %nxt200x_writebytes.exit382.nxt200x_writebytes.exit396_crit_edge, label %do.end18.i395

nxt200x_writebytes.exit382.nxt200x_writebytes.exit396_crit_edge: ; preds = %nxt200x_writebytes.exit382
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit396

do.end18.i395:                                    ; preds = %nxt200x_writebytes.exit382
  call void @__sanitizer_cov_trace_pc() #10
  %270 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %config.i273, align 4
  %272 = ptrtoint ptr %271 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %271, align 4
  %conv22.i393 = zext i8 %273 to i32
  %call23.i394 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i393, i32 noundef %call12.i391) #12
  br label %nxt200x_writebytes.exit396

nxt200x_writebytes.exit396:                       ; preds = %do.end18.i395, %nxt200x_writebytes.exit382.nxt200x_writebytes.exit396_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i384) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i383) #8
  %274 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 4, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i397) #8
  %275 = getelementptr inbounds i8, ptr %buf2.i397, i32 1
  %276 = getelementptr inbounds i8, ptr %buf2.i397, i32 2
  %277 = call ptr @memset(ptr %276, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i398) #8
  %278 = getelementptr inbounds i8, ptr %msg.i398, i32 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 196607, ptr %278, align 4
  %280 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %config.i273, align 4
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %281, align 4
  %conv.i400 = zext i8 %283 to i16
  %284 = ptrtoint ptr %msg.i398 to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 %conv.i400, ptr %msg.i398, align 4
  %flags.i401 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i398, i32 0, i32 1
  %285 = ptrtoint ptr %flags.i401 to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 0, ptr %flags.i401, align 2
  %buf4.i403 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i398, i32 0, i32 3
  %286 = ptrtoint ptr %buf4.i403 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %buf2.i397, ptr %buf4.i403, align 4
  %287 = ptrtoint ptr %buf2.i397 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 65, ptr %buf2.i397, align 1
  %288 = ptrtoint ptr %275 to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 4, ptr %275, align 1
  %289 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %1, align 4
  %call12.i405 = call i32 @i2c_transfer(ptr noundef %290, ptr noundef nonnull %msg.i398, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i405)
  %cmp13.not.i406 = icmp eq i32 %call12.i405, 1
  br i1 %cmp13.not.i406, label %nxt200x_writebytes.exit396.nxt200x_writebytes.exit410_crit_edge, label %do.end18.i409

nxt200x_writebytes.exit396.nxt200x_writebytes.exit410_crit_edge: ; preds = %nxt200x_writebytes.exit396
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit410

do.end18.i409:                                    ; preds = %nxt200x_writebytes.exit396
  call void @__sanitizer_cov_trace_pc() #10
  %291 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %config.i273, align 4
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %292, align 4
  %conv22.i407 = zext i8 %294 to i32
  %call23.i408 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i407, i32 noundef %call12.i405) #12
  br label %nxt200x_writebytes.exit410

nxt200x_writebytes.exit410:                       ; preds = %do.end18.i409, %nxt200x_writebytes.exit396.nxt200x_writebytes.exit410_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i398) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i397) #8
  %295 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %demod_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %296)
  %cmp108 = icmp eq i32 %296, 2
  br i1 %cmp108, label %if.then109, label %nxt200x_writebytes.exit410.if.end148_crit_edge

nxt200x_writebytes.exit410.if.end148_crit_edge:   ; preds = %nxt200x_writebytes.exit410
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.then109:                                       ; preds = %nxt200x_writebytes.exit410
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %297 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 36, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %298 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 16, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %299 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 0, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %300 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 4, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %301 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 0, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -127, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %302 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 -128, ptr %buf, align 2
  %303 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 0, ptr %2, align 1
  %304 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 0, ptr %3, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -126, ptr noundef nonnull %buf, i8 noundef zeroext 3)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -120, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %305 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %305)
  store i8 17, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -120, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %306 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 68, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  br label %if.end148

if.end148:                                        ; preds = %if.then109, %nxt200x_writebytes.exit410.if.end148_crit_edge
  %307 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %modulation, align 4
  %309 = zext i32 %308 to i64
  call void @__sanitizer_cov_trace_switch(i64 %309, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %308, label %if.end148.cleanup_crit_edge [
    i32 3, label %sw.bb150
    i32 5, label %sw.bb152
    i32 7, label %sw.bb154
  ]

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb150:                                         ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %310 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 2, ptr %buf, align 2
  br label %sw.epilog157

sw.bb152:                                         ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %311 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 3, ptr %buf, align 2
  br label %sw.epilog157

sw.bb154:                                         ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %312 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 0, ptr %buf, align 2
  br label %sw.epilog157

sw.epilog157:                                     ; preds = %sw.bb154, %sw.bb152, %sw.bb150
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i411) #8
  %313 = getelementptr inbounds i8, ptr %buf2.i411, i32 1
  %314 = getelementptr inbounds i8, ptr %buf2.i411, i32 2
  %315 = call ptr @memset(ptr %314, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i412) #8
  %316 = getelementptr inbounds i8, ptr %msg.i412, i32 4
  %317 = ptrtoint ptr %316 to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 196607, ptr %316, align 4
  %318 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %config.i273, align 4
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %319, align 4
  %conv.i414 = zext i8 %321 to i16
  %322 = ptrtoint ptr %msg.i412 to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 %conv.i414, ptr %msg.i412, align 4
  %flags.i415 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i412, i32 0, i32 1
  %323 = ptrtoint ptr %flags.i415 to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 0, ptr %flags.i415, align 2
  %buf4.i417 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i412, i32 0, i32 3
  %324 = ptrtoint ptr %buf4.i417 to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %buf2.i411, ptr %buf4.i417, align 4
  %325 = ptrtoint ptr %buf2.i411 to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 48, ptr %buf2.i411, align 1
  %326 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %buf, align 2
  %328 = ptrtoint ptr %313 to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %327, ptr %313, align 1
  %329 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %1, align 4
  %call12.i419 = call i32 @i2c_transfer(ptr noundef %330, ptr noundef nonnull %msg.i412, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i419)
  %cmp13.not.i420 = icmp eq i32 %call12.i419, 1
  br i1 %cmp13.not.i420, label %sw.epilog157.nxt200x_writebytes.exit424_crit_edge, label %do.end18.i423

sw.epilog157.nxt200x_writebytes.exit424_crit_edge: ; preds = %sw.epilog157
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit424

do.end18.i423:                                    ; preds = %sw.epilog157
  call void @__sanitizer_cov_trace_pc() #10
  %331 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %config.i273, align 4
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %332, align 4
  %conv22.i421 = zext i8 %334 to i32
  %call23.i422 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i421, i32 noundef %call12.i419) #12
  br label %nxt200x_writebytes.exit424

nxt200x_writebytes.exit424:                       ; preds = %do.end18.i423, %sw.epilog157.nxt200x_writebytes.exit424_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i412) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i411) #8
  %335 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 0, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i425) #8
  %336 = getelementptr inbounds i8, ptr %buf2.i425, i32 1
  %337 = getelementptr inbounds i8, ptr %buf2.i425, i32 2
  %338 = call ptr @memset(ptr %337, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i426) #8
  %339 = getelementptr inbounds i8, ptr %msg.i426, i32 4
  %340 = ptrtoint ptr %339 to i32
  call void @__asan_store4_noabort(i32 %340)
  store i32 196607, ptr %339, align 4
  %341 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %config.i273, align 4
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %342, align 4
  %conv.i428 = zext i8 %344 to i16
  %345 = ptrtoint ptr %msg.i426 to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 %conv.i428, ptr %msg.i426, align 4
  %flags.i429 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i426, i32 0, i32 1
  %346 = ptrtoint ptr %flags.i429 to i32
  call void @__asan_store2_noabort(i32 %346)
  store i16 0, ptr %flags.i429, align 2
  %buf4.i431 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i426, i32 0, i32 3
  %347 = ptrtoint ptr %buf4.i431 to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %buf2.i425, ptr %buf4.i431, align 4
  %348 = ptrtoint ptr %buf2.i425 to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 65, ptr %buf2.i425, align 1
  %349 = ptrtoint ptr %336 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 0, ptr %336, align 1
  %350 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %1, align 4
  %call12.i433 = call i32 @i2c_transfer(ptr noundef %351, ptr noundef nonnull %msg.i426, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i433)
  %cmp13.not.i434 = icmp eq i32 %call12.i433, 1
  br i1 %cmp13.not.i434, label %nxt200x_writebytes.exit424.nxt200x_writebytes.exit438_crit_edge, label %do.end18.i437

nxt200x_writebytes.exit424.nxt200x_writebytes.exit438_crit_edge: ; preds = %nxt200x_writebytes.exit424
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit438

do.end18.i437:                                    ; preds = %nxt200x_writebytes.exit424
  call void @__sanitizer_cov_trace_pc() #10
  %352 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %config.i273, align 4
  %354 = ptrtoint ptr %353 to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %353, align 4
  %conv22.i435 = zext i8 %355 to i32
  %call23.i436 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i435, i32 noundef %call12.i433) #12
  br label %nxt200x_writebytes.exit438

nxt200x_writebytes.exit438:                       ; preds = %do.end18.i437, %nxt200x_writebytes.exit424.nxt200x_writebytes.exit438_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i426) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i425) #8
  %356 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 -128, ptr %buf, align 2
  %357 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 0, ptr %2, align 1
  %358 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %demod_chip, align 4
  %360 = zext i32 %359 to i64
  call void @__sanitizer_cov_trace_switch(i64 %360, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %359, label %nxt200x_writebytes.exit438.cleanup_crit_edge [
    i32 1, label %sw.bb166
    i32 2, label %sw.bb171
  ]

nxt200x_writebytes.exit438.cleanup_crit_edge:     ; preds = %nxt200x_writebytes.exit438
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb166:                                         ; preds = %nxt200x_writebytes.exit438
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext 73, ptr noundef nonnull %buf, i8 noundef zeroext 2)
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext 75, ptr noundef nonnull %buf, i8 noundef zeroext 2)
  br label %sw.epilog177

sw.bb171:                                         ; preds = %nxt200x_writebytes.exit438
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i439) #8
  %361 = getelementptr inbounds i8, ptr %buf2.i439, i32 1
  %362 = getelementptr inbounds i8, ptr %buf2.i439, i32 3
  %363 = call ptr @memset(ptr %362, i32 255, i32 253)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i440) #8
  %364 = getelementptr inbounds i8, ptr %msg.i440, i32 4
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 262143, ptr %364, align 4
  %366 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %config.i273, align 4
  %368 = ptrtoint ptr %367 to i32
  call void @__asan_load1_noabort(i32 %368)
  %369 = load i8, ptr %367, align 4
  %conv.i442 = zext i8 %369 to i16
  %370 = ptrtoint ptr %msg.i440 to i32
  call void @__asan_store2_noabort(i32 %370)
  store i16 %conv.i442, ptr %msg.i440, align 4
  %flags.i443 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i440, i32 0, i32 1
  %371 = ptrtoint ptr %flags.i443 to i32
  call void @__asan_store2_noabort(i32 %371)
  store i16 0, ptr %flags.i443, align 2
  %buf4.i445 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i440, i32 0, i32 3
  %372 = ptrtoint ptr %buf4.i445 to i32
  call void @__asan_store4_noabort(i32 %372)
  store ptr %buf2.i439, ptr %buf4.i445, align 4
  %373 = ptrtoint ptr %buf2.i439 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 73, ptr %buf2.i439, align 1
  %374 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %374)
  %375 = load i16, ptr %buf, align 2
  %376 = ptrtoint ptr %361 to i32
  call void @__asan_storeN_noabort(i32 %376, i32 2)
  store i16 %375, ptr %361, align 1
  %377 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %1, align 4
  %call12.i447 = call i32 @i2c_transfer(ptr noundef %378, ptr noundef nonnull %msg.i440, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i447)
  %cmp13.not.i448 = icmp eq i32 %call12.i447, 1
  br i1 %cmp13.not.i448, label %sw.bb171.nxt200x_writebytes.exit452_crit_edge, label %do.end18.i451

sw.bb171.nxt200x_writebytes.exit452_crit_edge:    ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit452

do.end18.i451:                                    ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #10
  %379 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %config.i273, align 4
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %380, align 4
  %conv22.i449 = zext i8 %382 to i32
  %call23.i450 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i449, i32 noundef %call12.i447) #12
  br label %nxt200x_writebytes.exit452

nxt200x_writebytes.exit452:                       ; preds = %do.end18.i451, %sw.bb171.nxt200x_writebytes.exit452_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i440) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i439) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i453) #8
  %383 = getelementptr inbounds i8, ptr %buf2.i453, i32 1
  %384 = getelementptr inbounds i8, ptr %buf2.i453, i32 3
  %385 = call ptr @memset(ptr %384, i32 255, i32 253)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i454) #8
  %386 = getelementptr inbounds i8, ptr %msg.i454, i32 4
  %387 = ptrtoint ptr %386 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 262143, ptr %386, align 4
  %388 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %config.i273, align 4
  %390 = ptrtoint ptr %389 to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %389, align 4
  %conv.i456 = zext i8 %391 to i16
  %392 = ptrtoint ptr %msg.i454 to i32
  call void @__asan_store2_noabort(i32 %392)
  store i16 %conv.i456, ptr %msg.i454, align 4
  %flags.i457 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i454, i32 0, i32 1
  %393 = ptrtoint ptr %flags.i457 to i32
  call void @__asan_store2_noabort(i32 %393)
  store i16 0, ptr %flags.i457, align 2
  %buf4.i459 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i454, i32 0, i32 3
  %394 = ptrtoint ptr %buf4.i459 to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr %buf2.i453, ptr %buf4.i459, align 4
  %395 = ptrtoint ptr %buf2.i453 to i32
  call void @__asan_store1_noabort(i32 %395)
  store i8 75, ptr %buf2.i453, align 1
  %396 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %396)
  %397 = load i16, ptr %buf, align 2
  %398 = ptrtoint ptr %383 to i32
  call void @__asan_storeN_noabort(i32 %398, i32 2)
  store i16 %397, ptr %383, align 1
  %399 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %1, align 4
  %call12.i461 = call i32 @i2c_transfer(ptr noundef %400, ptr noundef nonnull %msg.i454, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i461)
  %cmp13.not.i462 = icmp eq i32 %call12.i461, 1
  br i1 %cmp13.not.i462, label %nxt200x_writebytes.exit452.nxt200x_writebytes.exit466_crit_edge, label %do.end18.i465

nxt200x_writebytes.exit452.nxt200x_writebytes.exit466_crit_edge: ; preds = %nxt200x_writebytes.exit452
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit466

do.end18.i465:                                    ; preds = %nxt200x_writebytes.exit452
  call void @__sanitizer_cov_trace_pc() #10
  %401 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %config.i273, align 4
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %402, align 4
  %conv22.i463 = zext i8 %404 to i32
  %call23.i464 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i463, i32 noundef %call12.i461) #12
  br label %nxt200x_writebytes.exit466

nxt200x_writebytes.exit466:                       ; preds = %do.end18.i465, %nxt200x_writebytes.exit452.nxt200x_writebytes.exit466_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i454) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i453) #8
  br label %sw.epilog177

sw.epilog177:                                     ; preds = %nxt200x_writebytes.exit466, %sw.bb166
  %405 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 4, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i467) #8
  %406 = getelementptr inbounds i8, ptr %buf2.i467, i32 1
  %407 = getelementptr inbounds i8, ptr %buf2.i467, i32 2
  %408 = call ptr @memset(ptr %407, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i468) #8
  %409 = getelementptr inbounds i8, ptr %msg.i468, i32 4
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 196607, ptr %409, align 4
  %411 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %config.i273, align 4
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %412, align 4
  %conv.i470 = zext i8 %414 to i16
  %415 = ptrtoint ptr %msg.i468 to i32
  call void @__asan_store2_noabort(i32 %415)
  store i16 %conv.i470, ptr %msg.i468, align 4
  %flags.i471 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i468, i32 0, i32 1
  %416 = ptrtoint ptr %flags.i471 to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 0, ptr %flags.i471, align 2
  %buf4.i473 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i468, i32 0, i32 3
  %417 = ptrtoint ptr %buf4.i473 to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %buf2.i467, ptr %buf4.i473, align 4
  %418 = ptrtoint ptr %buf2.i467 to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 65, ptr %buf2.i467, align 1
  %419 = ptrtoint ptr %406 to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 4, ptr %406, align 1
  %420 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %1, align 4
  %call12.i475 = call i32 @i2c_transfer(ptr noundef %421, ptr noundef nonnull %msg.i468, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i475)
  %cmp13.not.i476 = icmp eq i32 %call12.i475, 1
  br i1 %cmp13.not.i476, label %sw.epilog177.nxt200x_writebytes.exit480_crit_edge, label %do.end18.i479

sw.epilog177.nxt200x_writebytes.exit480_crit_edge: ; preds = %sw.epilog177
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit480

do.end18.i479:                                    ; preds = %sw.epilog177
  call void @__sanitizer_cov_trace_pc() #10
  %422 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %config.i273, align 4
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %423, align 4
  %conv22.i477 = zext i8 %425 to i32
  %call23.i478 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i477, i32 noundef %call12.i475) #12
  br label %nxt200x_writebytes.exit480

nxt200x_writebytes.exit480:                       ; preds = %do.end18.i479, %sw.epilog177.nxt200x_writebytes.exit480_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i468) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i467) #8
  %426 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %426)
  %tobool.not.i = icmp eq i32 %426, 0
  br i1 %tobool.not.i, label %nxt200x_writebytes.exit480.do.end8.i_crit_edge, label %do.body1.i

nxt200x_writebytes.exit480.do.end8.i_crit_edge:   ; preds = %nxt200x_writebytes.exit480
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

do.body1.i:                                       ; preds = %nxt200x_writebytes.exit480
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt200x_microcontroller_start.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt200x_setup_frontend_parameters, %if.then5.i)) #8
          to label %do.end8.i [label %if.then5.i], !srcloc !177

if.then5.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt200x_microcontroller_start.__UNIQUE_ID_ddebug293, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.68) #8
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then5.i, %do.body1.i, %nxt200x_writebytes.exit480.do.end8.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i.i) #8
  %427 = getelementptr inbounds i8, ptr %buf2.i.i, i32 1
  %428 = getelementptr inbounds i8, ptr %buf2.i.i, i32 2
  %429 = call ptr @memset(ptr %428, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %430 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %431 = ptrtoint ptr %430 to i32
  call void @__asan_store4_noabort(i32 %431)
  store i32 196607, ptr %430, align 4
  %432 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %config.i273, align 4
  %434 = ptrtoint ptr %433 to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %433, align 4
  %conv.i.i = zext i8 %435 to i16
  %436 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %436)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %437 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %437)
  store i16 0, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %438 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store ptr %buf2.i.i, ptr %buf4.i.i, align 4
  %439 = ptrtoint ptr %buf2.i.i to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 34, ptr %buf2.i.i, align 1
  %440 = ptrtoint ptr %427 to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 0, ptr %427, align 1
  %441 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %1, align 4
  %call12.i.i = call i32 @i2c_transfer(ptr noundef %442, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i.i)
  %cmp13.not.i.i = icmp eq i32 %call12.i.i, 1
  br i1 %cmp13.not.i.i, label %do.end8.i.nxt200x_microcontroller_start.exit_crit_edge, label %do.end18.i.i

do.end8.i.nxt200x_microcontroller_start.exit_crit_edge: ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_microcontroller_start.exit

do.end18.i.i:                                     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %443 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %config.i273, align 4
  %445 = ptrtoint ptr %444 to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %444, align 4
  %conv22.i.i = zext i8 %446 to i32
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i.i, i32 noundef %call12.i.i) #12
  br label %nxt200x_microcontroller_start.exit

nxt200x_microcontroller_start.exit:               ; preds = %do.end18.i.i, %do.end8.i.nxt200x_microcontroller_start.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i.i) #8
  %447 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %demod_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %448)
  %cmp182 = icmp eq i32 %448, 2
  br i1 %cmp182, label %if.then183, label %nxt200x_microcontroller_start.exit.cleanup_crit_edge

nxt200x_microcontroller_start.exit.cleanup_crit_edge: ; preds = %nxt200x_microcontroller_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then183:                                       ; preds = %nxt200x_microcontroller_start.exit
  call fastcc void @nxt2004_microcontroller_init(ptr noundef %1)
  %449 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %449)
  store i8 -16, ptr %buf, align 2
  %450 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i481) #8
  %451 = getelementptr inbounds i8, ptr %buf2.i481, i32 1
  %452 = getelementptr inbounds i8, ptr %buf2.i481, i32 3
  %453 = call ptr @memset(ptr %452, i32 255, i32 253)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i482) #8
  %454 = getelementptr inbounds i8, ptr %msg.i482, i32 4
  %455 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 262143, ptr %454, align 4
  %456 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %config.i273, align 4
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %457, align 4
  %conv.i484 = zext i8 %459 to i16
  %460 = ptrtoint ptr %msg.i482 to i32
  call void @__asan_store2_noabort(i32 %460)
  store i16 %conv.i484, ptr %msg.i482, align 4
  %flags.i485 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i482, i32 0, i32 1
  %461 = ptrtoint ptr %flags.i485 to i32
  call void @__asan_store2_noabort(i32 %461)
  store i16 0, ptr %flags.i485, align 2
  %buf4.i487 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i482, i32 0, i32 3
  %462 = ptrtoint ptr %buf4.i487 to i32
  call void @__asan_store4_noabort(i32 %462)
  store ptr %buf2.i481, ptr %buf4.i487, align 4
  %463 = ptrtoint ptr %buf2.i481 to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 92, ptr %buf2.i481, align 1
  %464 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %464)
  %465 = load i16, ptr %buf, align 2
  %466 = ptrtoint ptr %451 to i32
  call void @__asan_storeN_noabort(i32 %466, i32 2)
  store i16 %465, ptr %451, align 1
  %467 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %1, align 4
  %call12.i489 = call i32 @i2c_transfer(ptr noundef %468, ptr noundef nonnull %msg.i482, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i489)
  %cmp13.not.i490 = icmp eq i32 %call12.i489, 1
  br i1 %cmp13.not.i490, label %if.then183.nxt200x_writebytes.exit494_crit_edge, label %do.end18.i493

if.then183.nxt200x_writebytes.exit494_crit_edge:  ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit494

do.end18.i493:                                    ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #10
  %469 = ptrtoint ptr %config.i273 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %config.i273, align 4
  %471 = ptrtoint ptr %470 to i32
  call void @__asan_load1_noabort(i32 %471)
  %472 = load i8, ptr %470, align 4
  %conv22.i491 = zext i8 %472 to i32
  %call23.i492 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i491, i32 noundef %call12.i489) #12
  br label %nxt200x_writebytes.exit494

nxt200x_writebytes.exit494:                       ; preds = %do.end18.i493, %if.then183.nxt200x_writebytes.exit494_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i482) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i481) #8
  br label %cleanup

cleanup:                                          ; preds = %nxt200x_writebytes.exit494, %nxt200x_microcontroller_start.exit.cleanup_crit_edge, %nxt200x_writebytes.exit438.cleanup_crit_edge, %if.end148.cleanup_crit_edge, %if.end86.cleanup_crit_edge, %sw.epilog65.cleanup_crit_edge, %sw.epilog56.cleanup_crit_edge, %nxt200x_writebytes.exit298.cleanup_crit_edge, %nxt200x_writebytes.exit284.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ], [ -22, %nxt200x_writebytes.exit284.cleanup_crit_edge ], [ -22, %nxt200x_writebytes.exit298.cleanup_crit_edge ], [ -22, %sw.epilog56.cleanup_crit_edge ], [ -22, %sw.epilog65.cleanup_crit_edge ], [ -22, %if.end86.cleanup_crit_edge ], [ -22, %if.end148.cleanup_crit_edge ], [ -22, %nxt200x_writebytes.exit438.cleanup_crit_edge ], [ 0, %nxt200x_writebytes.exit494 ], [ 0, %nxt200x_microcontroller_start.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @nxt200x_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 500, ptr %fesettings, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %1 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %step_size, align 4
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 2
  %2 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxt200x_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  %reg2.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %lock = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %lock) #8
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %lock, align 1, !annotation !178
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2.i) #8
  %3 = ptrtoint ptr %reg2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 49, ptr %reg2.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.nxt200x_state, ptr %1, i32 0, i32 1
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
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg2.i, ptr %buf3.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = load i8, ptr %7, align 4
  %conv7.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv7.i, ptr %arrayinit.element.i, align 4
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags8.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len9.i, align 4
  %buf11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %lock, ptr %buf11.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %entry.nxt200x_readbytes.exit_crit_edge, label %do.end.i

entry.nxt200x_readbytes.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_readbytes.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %conv16.i = zext i8 %24 to i32
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv16.i, i32 noundef %call.i) #12
  br label %nxt200x_readbytes.exit

nxt200x_readbytes.exit:                           ; preds = %do.end.i, %entry.nxt200x_readbytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2.i) #8
  %25 = ptrtoint ptr %lock to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %lock, align 1
  %27 = and i8 %26, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  %spec.store.select = select i1 %tobool.not, i32 0, i32 31
  %28 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.store.select, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxt200x_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #0 align 64 {
entry:
  %b = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %b) #8
  %2 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %b, align 1, !annotation !178
  %3 = getelementptr inbounds [3 x i8], ptr %b, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !178
  %5 = getelementptr inbounds [3 x i8], ptr %b, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !178
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -26, ptr noundef nonnull %b, i8 noundef zeroext 3)
  %7 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %b, align 1
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %3, align 1
  %conv2 = zext i8 %10 to i32
  %11 = shl nuw nsw i32 %conv, 11
  %12 = shl nuw nsw i32 %conv2, 3
  %mul = or i32 %12, %11
  %13 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %ber, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %b) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxt200x_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %buf2.i = alloca [256 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %b = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b) #8
  %2 = getelementptr inbounds [2 x i8], ptr %b, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !178
  %4 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i) #8
  %5 = getelementptr inbounds i8, ptr %buf2.i, i32 1
  %6 = getelementptr inbounds i8, ptr %buf2.i, i32 2
  %7 = call ptr @memset(ptr %6, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196607, ptr %8, align 4
  %config.i = getelementptr inbounds %struct.nxt200x_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf2.i, ptr %buf4.i, align 4
  %17 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -95, ptr %buf2.i, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %5, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call12.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.not.i, label %entry.nxt200x_writebytes.exit_crit_edge, label %do.end18.i

entry.nxt200x_writebytes.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit

do.end18.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %conv22.i = zext i8 %24 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i, i32 noundef %call12.i) #12
  br label %nxt200x_writebytes.exit

nxt200x_writebytes.exit:                          ; preds = %do.end18.i, %entry.nxt200x_writebytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i) #8
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -90, ptr noundef nonnull %b, i8 noundef zeroext 2)
  %25 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b, align 1
  %conv = zext i8 %26 to i16
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %2, align 1
  %conv5 = zext i8 %28 to i16
  %.neg = mul i16 %conv, -4096
  %.neg10 = mul nsw i16 %conv5, -16
  %.neg11 = add i16 %.neg, -16
  %and = add i16 %.neg11, %.neg10
  %29 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %and, ptr %strength, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxt200x_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  %buf2.i = alloca [256 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %b = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b) #8
  %2 = getelementptr inbounds [2 x i8], ptr %b, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !178
  %4 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %b, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i) #8
  %5 = getelementptr inbounds i8, ptr %buf2.i, i32 1
  %6 = getelementptr inbounds i8, ptr %buf2.i, i32 2
  %7 = call ptr @memset(ptr %6, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196607, ptr %8, align 4
  %config.i = getelementptr inbounds %struct.nxt200x_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf2.i, ptr %buf4.i, align 4
  %17 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -95, ptr %buf2.i, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %5, align 1
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call12.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.not.i, label %entry.nxt200x_writebytes.exit_crit_edge, label %do.end18.i

entry.nxt200x_writebytes.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit

do.end18.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %conv22.i = zext i8 %24 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i, i32 noundef %call12.i) #12
  br label %nxt200x_writebytes.exit

nxt200x_writebytes.exit:                          ; preds = %do.end18.i, %entry.nxt200x_writebytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i) #8
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -90, ptr noundef nonnull %b, i8 noundef zeroext 2)
  %25 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %b, align 1
  %conv = zext i8 %26 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %2, align 1
  %conv5 = zext i8 %28 to i32
  %or = or i32 %shl, %conv5
  %sub = sub nsw i32 32767, %or
  %conv9 = and i32 %sub, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32512, i32 %conv9)
  %cmp = icmp ugt i32 %conv9, 32512
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  %29 = mul nuw nsw i32 %conv9, 6000
  %mul = add nsw i32 %29, -195072000
  %div49 = udiv i32 %mul, 255
  %add = add nuw nsw i32 %div49, 24000
  br label %if.end39

if.else:                                          ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 32448, i32 %conv9)
  %cmp14 = icmp ugt i32 %conv9, 32448
  br i1 %cmp14, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %30 = mul nuw nsw i32 %conv9, 6000
  %mul19 = add nsw i32 %30, -194688000
  %div205052 = lshr i32 %mul19, 6
  %add21 = add nuw nsw i32 %div205052, 18000
  br label %if.end39

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 31744, i32 %conv9)
  %cmp24 = icmp ugt i32 %conv9, 31744
  br i1 %cmp24, label %if.then26, label %if.else32

if.then26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  %31 = mul nuw nsw i32 %conv9, 6000
  %mul29 = add nsw i32 %31, -190464000
  %div3051 = udiv i32 %mul29, 704
  %add31 = add nuw nsw i32 %div3051, 12000
  br label %if.end39

if.else32:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  %mul35 = mul nuw nsw i32 %conv9, 12000
  %div36 = udiv i32 %mul35, 31744
  br label %if.end39

if.end39:                                         ; preds = %if.else32, %if.then26, %if.then16, %if.then
  %snrdb.0 = phi i32 [ %add, %if.then ], [ %add21, %if.then16 ], [ %add31, %if.then26 ], [ %div36, %if.else32 ]
  %snrdb.0.tr = trunc i32 %snrdb.0 to i16
  %conv41 = shl i16 %snrdb.0.tr, 1
  %32 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv41, ptr %snr, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nxt200x_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #0 align 64 {
entry:
  %b = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %b) #8
  %2 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %b, align 1, !annotation !178
  %3 = getelementptr inbounds [3 x i8], ptr %b, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !178
  %5 = getelementptr inbounds [3 x i8], ptr %b, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !178
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -26, ptr noundef nonnull %b, i8 noundef zeroext 3)
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %5, align 1
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %ucblocks, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %b) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nxt2002_init(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  %buf2.i151 = alloca [256 x i8], align 1
  %msg.i152 = alloca %struct.i2c_msg, align 4
  %buf2.i137 = alloca [256 x i8], align 1
  %msg.i138 = alloca %struct.i2c_msg, align 4
  %buf2.i123 = alloca [256 x i8], align 1
  %msg.i124 = alloca %struct.i2c_msg, align 4
  %buf2.i109 = alloca [256 x i8], align 1
  %msg.i110 = alloca %struct.i2c_msg, align 4
  %buf2.i95 = alloca [256 x i8], align 1
  %msg.i96 = alloca %struct.i2c_msg, align 4
  %buf2.i81 = alloca [256 x i8], align 1
  %msg.i82 = alloca %struct.i2c_msg, align 4
  %buf2.i = alloca [256 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !178
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt2002_init.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt2002_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt2002_init.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %call3 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.17, ptr noundef %6) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt2002_init.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt2002_init, %if.then16)) #8
          to label %do.end19 [label %if.then16], !srcloc !177

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt2002_init.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.14) #8
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool20.not = icmp eq i32 %call3, 0
  br i1 %tobool20.not, label %if.end27, label %do.end24

do.end24:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.14) #12
  br label %cleanup

if.end27:                                         ; preds = %do.end19
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw, align 4
  call fastcc void @nxt2002_load_firmware(ptr noundef %fe, ptr noundef %8)
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %10) #8
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.14) #12
  call fastcc void @nxt200x_microcontroller_stop(ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i) #8
  %11 = getelementptr inbounds i8, ptr %buf2.i, i32 1
  %12 = getelementptr inbounds i8, ptr %buf2.i, i32 2
  %13 = call ptr @memset(ptr %12, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 196607, ptr %14, align 4
  %config.i = getelementptr inbounds %struct.nxt200x_state, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %config.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %conv.i = zext i8 %19 to i16
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf2.i, ptr %buf4.i, align 4
  %23 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 43, ptr %buf2.i, align 1
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %11, align 1
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call12.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.not.i, label %if.end27.nxt200x_writebytes.exit_crit_edge, label %do.end18.i

if.end27.nxt200x_writebytes.exit_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit

do.end18.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  %conv22.i = zext i8 %30 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i, i32 noundef %call12.i) #12
  br label %nxt200x_writebytes.exit

nxt200x_writebytes.exit:                          ; preds = %do.end18.i, %if.end27.nxt200x_writebytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i) #8
  call fastcc void @nxt200x_microcontroller_stop(ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i81) #8
  %31 = getelementptr inbounds i8, ptr %buf2.i81, i32 1
  %32 = getelementptr inbounds i8, ptr %buf2.i81, i32 2
  %33 = call ptr @memset(ptr %32, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i82) #8
  %34 = getelementptr inbounds i8, ptr %msg.i82, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 196607, ptr %34, align 4
  %36 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 4
  %conv.i84 = zext i8 %39 to i16
  %40 = ptrtoint ptr %msg.i82 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i84, ptr %msg.i82, align 4
  %flags.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i85 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i85, align 2
  %buf4.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82, i32 0, i32 3
  %42 = ptrtoint ptr %buf4.i87 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %buf2.i81, ptr %buf4.i87, align 4
  %43 = ptrtoint ptr %buf2.i81 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 8, ptr %buf2.i81, align 1
  %44 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 15, ptr %31, align 1
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call12.i89 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i82, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i89)
  %cmp13.not.i90 = icmp eq i32 %call12.i89, 1
  br i1 %cmp13.not.i90, label %nxt200x_writebytes.exit.nxt200x_writebytes.exit94_crit_edge, label %do.end18.i93

nxt200x_writebytes.exit.nxt200x_writebytes.exit94_crit_edge: ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit94

do.end18.i93:                                     ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  %conv22.i91 = zext i8 %50 to i32
  %call23.i92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i91, i32 noundef %call12.i89) #12
  br label %nxt200x_writebytes.exit94

nxt200x_writebytes.exit94:                        ; preds = %do.end18.i93, %nxt200x_writebytes.exit.nxt200x_writebytes.exit94_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i82) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i81) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i95) #8
  %51 = getelementptr inbounds i8, ptr %buf2.i95, i32 1
  %52 = getelementptr inbounds i8, ptr %buf2.i95, i32 2
  %53 = call ptr @memset(ptr %52, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i96) #8
  %54 = getelementptr inbounds i8, ptr %msg.i96, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 196607, ptr %54, align 4
  %56 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 4
  %conv.i98 = zext i8 %59 to i16
  %60 = ptrtoint ptr %msg.i96 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i98, ptr %msg.i96, align 4
  %flags.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i96, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i99 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i99, align 2
  %buf4.i101 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i96, i32 0, i32 3
  %62 = ptrtoint ptr %buf4.i101 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %buf2.i95, ptr %buf4.i101, align 4
  %63 = ptrtoint ptr %buf2.i95 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 8, ptr %buf2.i95, align 1
  %64 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %51, align 1
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %call12.i103 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %msg.i96, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i103)
  %cmp13.not.i104 = icmp eq i32 %call12.i103, 1
  br i1 %cmp13.not.i104, label %nxt200x_writebytes.exit94.nxt200x_writebytes.exit108_crit_edge, label %do.end18.i107

nxt200x_writebytes.exit94.nxt200x_writebytes.exit108_crit_edge: ; preds = %nxt200x_writebytes.exit94
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit108

do.end18.i107:                                    ; preds = %nxt200x_writebytes.exit94
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %config.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 4
  %conv22.i105 = zext i8 %70 to i32
  %call23.i106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i105, i32 noundef %call12.i103) #12
  br label %nxt200x_writebytes.exit108

nxt200x_writebytes.exit108:                       ; preds = %do.end18.i107, %nxt200x_writebytes.exit94.nxt200x_writebytes.exit108_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i96) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i95) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i109) #8
  %71 = getelementptr inbounds i8, ptr %buf2.i109, i32 1
  %72 = getelementptr inbounds i8, ptr %buf2.i109, i32 2
  %73 = call ptr @memset(ptr %72, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i110) #8
  %74 = getelementptr inbounds i8, ptr %msg.i110, i32 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 196607, ptr %74, align 4
  %76 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %config.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %77, align 4
  %conv.i112 = zext i8 %79 to i16
  %80 = ptrtoint ptr %msg.i110 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv.i112, ptr %msg.i110, align 4
  %flags.i113 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110, i32 0, i32 1
  %81 = ptrtoint ptr %flags.i113 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %flags.i113, align 2
  %buf4.i115 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i110, i32 0, i32 3
  %82 = ptrtoint ptr %buf4.i115 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %buf2.i109, ptr %buf4.i115, align 4
  %83 = ptrtoint ptr %buf2.i109 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 87, ptr %buf2.i109, align 1
  %84 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -15, ptr %71, align 1
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %call12.i117 = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %msg.i110, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i117)
  %cmp13.not.i118 = icmp eq i32 %call12.i117, 1
  br i1 %cmp13.not.i118, label %nxt200x_writebytes.exit108.nxt200x_writebytes.exit122_crit_edge, label %do.end18.i121

nxt200x_writebytes.exit108.nxt200x_writebytes.exit122_crit_edge: ; preds = %nxt200x_writebytes.exit108
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit122

do.end18.i121:                                    ; preds = %nxt200x_writebytes.exit108
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %config.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %88, align 4
  %conv22.i119 = zext i8 %90 to i32
  %call23.i120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i119, i32 noundef %call12.i117) #12
  br label %nxt200x_writebytes.exit122

nxt200x_writebytes.exit122:                       ; preds = %do.end18.i121, %nxt200x_writebytes.exit108.nxt200x_writebytes.exit122_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i110) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i109) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i123) #8
  %91 = getelementptr inbounds i8, ptr %buf2.i123, i32 1
  %92 = getelementptr inbounds i8, ptr %buf2.i123, i32 2
  %93 = call ptr @memset(ptr %92, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i124) #8
  %94 = getelementptr inbounds i8, ptr %msg.i124, i32 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 196607, ptr %94, align 4
  %96 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %config.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %97, align 4
  %conv.i126 = zext i8 %99 to i16
  %100 = ptrtoint ptr %msg.i124 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv.i126, ptr %msg.i124, align 4
  %flags.i127 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i124, i32 0, i32 1
  %101 = ptrtoint ptr %flags.i127 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %flags.i127, align 2
  %buf4.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i124, i32 0, i32 3
  %102 = ptrtoint ptr %buf4.i129 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %buf2.i123, ptr %buf4.i129, align 4
  %103 = ptrtoint ptr %buf2.i123 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 9, ptr %buf2.i123, align 1
  %104 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 32, ptr %91, align 1
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %call12.i131 = call i32 @i2c_transfer(ptr noundef %106, ptr noundef nonnull %msg.i124, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i131)
  %cmp13.not.i132 = icmp eq i32 %call12.i131, 1
  br i1 %cmp13.not.i132, label %nxt200x_writebytes.exit122.nxt200x_writebytes.exit136_crit_edge, label %do.end18.i135

nxt200x_writebytes.exit122.nxt200x_writebytes.exit136_crit_edge: ; preds = %nxt200x_writebytes.exit122
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit136

do.end18.i135:                                    ; preds = %nxt200x_writebytes.exit122
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %config.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %108, align 4
  %conv22.i133 = zext i8 %110 to i32
  %call23.i134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i133, i32 noundef %call12.i131) #12
  br label %nxt200x_writebytes.exit136

nxt200x_writebytes.exit136:                       ; preds = %do.end18.i135, %nxt200x_writebytes.exit122.nxt200x_writebytes.exit136_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i124) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i123) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i137) #8
  %111 = getelementptr inbounds i8, ptr %buf2.i137, i32 1
  %112 = getelementptr inbounds i8, ptr %buf2.i137, i32 3
  %113 = call ptr @memset(ptr %112, i32 255, i32 253)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i138) #8
  %114 = getelementptr inbounds i8, ptr %msg.i138, i32 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 262143, ptr %114, align 4
  %116 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %config.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %117, align 4
  %conv.i140 = zext i8 %119 to i16
  %120 = ptrtoint ptr %msg.i138 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv.i140, ptr %msg.i138, align 4
  %flags.i141 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i138, i32 0, i32 1
  %121 = ptrtoint ptr %flags.i141 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 0, ptr %flags.i141, align 2
  %buf4.i143 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i138, i32 0, i32 3
  %122 = ptrtoint ptr %buf4.i143 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %buf2.i137, ptr %buf4.i143, align 4
  %123 = ptrtoint ptr %buf2.i137 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -23, ptr %buf2.i137, align 1
  %124 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 126, ptr %111, align 1
  %buf.sroa.17.0.arrayidx10.i144.sroa_idx = getelementptr inbounds [256 x i8], ptr %buf2.i137, i32 0, i32 2
  %125 = ptrtoint ptr %buf.sroa.17.0.arrayidx10.i144.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %buf.sroa.17.0.arrayidx10.i144.sroa_idx, align 1
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  %call12.i145 = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %msg.i138, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i145)
  %cmp13.not.i146 = icmp eq i32 %call12.i145, 1
  br i1 %cmp13.not.i146, label %nxt200x_writebytes.exit136.nxt200x_writebytes.exit150_crit_edge, label %do.end18.i149

nxt200x_writebytes.exit136.nxt200x_writebytes.exit150_crit_edge: ; preds = %nxt200x_writebytes.exit136
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit150

do.end18.i149:                                    ; preds = %nxt200x_writebytes.exit136
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %config.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %129, align 4
  %conv22.i147 = zext i8 %131 to i32
  %call23.i148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i147, i32 noundef %call12.i145) #12
  br label %nxt200x_writebytes.exit150

nxt200x_writebytes.exit150:                       ; preds = %do.end18.i149, %nxt200x_writebytes.exit136.nxt200x_writebytes.exit150_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i138) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i137) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i151) #8
  %132 = getelementptr inbounds i8, ptr %buf2.i151, i32 1
  %133 = getelementptr inbounds i8, ptr %buf2.i151, i32 2
  %134 = call ptr @memset(ptr %133, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i152) #8
  %135 = getelementptr inbounds i8, ptr %msg.i152, i32 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 196607, ptr %135, align 4
  %137 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %config.i, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %138, align 4
  %conv.i154 = zext i8 %140 to i16
  %141 = ptrtoint ptr %msg.i152 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv.i154, ptr %msg.i152, align 4
  %flags.i155 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i152, i32 0, i32 1
  %142 = ptrtoint ptr %flags.i155 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 0, ptr %flags.i155, align 2
  %buf4.i157 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i152, i32 0, i32 3
  %143 = ptrtoint ptr %buf4.i157 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %buf2.i151, ptr %buf4.i157, align 4
  %144 = ptrtoint ptr %buf2.i151 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -52, ptr %buf2.i151, align 1
  %145 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %132, align 1
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %1, align 4
  %call12.i159 = call i32 @i2c_transfer(ptr noundef %147, ptr noundef nonnull %msg.i152, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i159)
  %cmp13.not.i160 = icmp eq i32 %call12.i159, 1
  br i1 %cmp13.not.i160, label %nxt200x_writebytes.exit150.nxt200x_writebytes.exit164_crit_edge, label %do.end18.i163

nxt200x_writebytes.exit150.nxt200x_writebytes.exit164_crit_edge: ; preds = %nxt200x_writebytes.exit150
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit164

do.end18.i163:                                    ; preds = %nxt200x_writebytes.exit150
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %config.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %149, align 4
  %conv22.i161 = zext i8 %151 to i32
  %call23.i162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i161, i32 noundef %call12.i159) #12
  br label %nxt200x_writebytes.exit164

nxt200x_writebytes.exit164:                       ; preds = %do.end18.i163, %nxt200x_writebytes.exit150.nxt200x_writebytes.exit164_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i152) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i151) #8
  br label %cleanup

cleanup:                                          ; preds = %nxt200x_writebytes.exit164, %do.end24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nxt2004_init(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  %buf2.i595 = alloca [256 x i8], align 1
  %msg.i596 = alloca %struct.i2c_msg, align 4
  %buf2.i581 = alloca [256 x i8], align 1
  %msg.i582 = alloca %struct.i2c_msg, align 4
  %buf2.i567 = alloca [256 x i8], align 1
  %msg.i568 = alloca %struct.i2c_msg, align 4
  %buf2.i553 = alloca [256 x i8], align 1
  %msg.i554 = alloca %struct.i2c_msg, align 4
  %buf2.i539 = alloca [256 x i8], align 1
  %msg.i540 = alloca %struct.i2c_msg, align 4
  %buf2.i525 = alloca [256 x i8], align 1
  %msg.i526 = alloca %struct.i2c_msg, align 4
  %buf2.i511 = alloca [256 x i8], align 1
  %msg.i512 = alloca %struct.i2c_msg, align 4
  %buf2.i497 = alloca [256 x i8], align 1
  %msg.i498 = alloca %struct.i2c_msg, align 4
  %reg2.i479 = alloca [1 x i8], align 1
  %msg.i480 = alloca [2 x %struct.i2c_msg], align 4
  %buf2.i465 = alloca [256 x i8], align 1
  %msg.i466 = alloca %struct.i2c_msg, align 4
  %buf2.i451 = alloca [256 x i8], align 1
  %msg.i452 = alloca %struct.i2c_msg, align 4
  %buf2.i437 = alloca [256 x i8], align 1
  %msg.i438 = alloca %struct.i2c_msg, align 4
  %buf2.i423 = alloca [256 x i8], align 1
  %msg.i424 = alloca %struct.i2c_msg, align 4
  %reg2.i405 = alloca [1 x i8], align 1
  %msg.i406 = alloca [2 x %struct.i2c_msg], align 4
  %buf2.i391 = alloca [256 x i8], align 1
  %msg.i392 = alloca %struct.i2c_msg, align 4
  %reg2.i = alloca [1 x i8], align 1
  %msg.i387 = alloca [2 x %struct.i2c_msg], align 4
  %buf2.i373 = alloca [256 x i8], align 1
  %msg.i374 = alloca %struct.i2c_msg, align 4
  %buf2.i359 = alloca [256 x i8], align 1
  %msg.i360 = alloca %struct.i2c_msg, align 4
  %buf2.i345 = alloca [256 x i8], align 1
  %msg.i346 = alloca %struct.i2c_msg, align 4
  %buf2.i331 = alloca [256 x i8], align 1
  %msg.i332 = alloca %struct.i2c_msg, align 4
  %buf2.i317 = alloca [256 x i8], align 1
  %msg.i318 = alloca %struct.i2c_msg, align 4
  %buf2.i303 = alloca [256 x i8], align 1
  %msg.i304 = alloca %struct.i2c_msg, align 4
  %buf2.i289 = alloca [256 x i8], align 1
  %msg.i290 = alloca %struct.i2c_msg, align 4
  %buf2.i275 = alloca [256 x i8], align 1
  %msg.i276 = alloca %struct.i2c_msg, align 4
  %buf2.i = alloca [256 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %fw = alloca ptr, align 4
  %buf = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !178
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !178
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 2, !annotation !178
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i) #8
  %8 = getelementptr inbounds i8, ptr %buf2.i, i32 1
  %9 = getelementptr inbounds i8, ptr %buf2.i, i32 2
  %10 = call ptr @memset(ptr %9, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 196607, ptr %11, align 4
  %config.i = getelementptr inbounds %struct.nxt200x_state, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4
  %conv.i = zext i8 %16 to i16
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %19 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf2.i, ptr %buf4.i, align 4
  %20 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 30, ptr %buf2.i, align 1
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %8, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call12.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.not.i, label %entry.nxt200x_writebytes.exit_crit_edge, label %do.end18.i

entry.nxt200x_writebytes.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit

do.end18.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 4
  %conv22.i = zext i8 %27 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i, i32 noundef %call12.i) #12
  br label %nxt200x_writebytes.exit

nxt200x_writebytes.exit:                          ; preds = %do.end18.i, %entry.nxt200x_writebytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt2004_init.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt2004_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !177

if.then:                                          ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt2004_init.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %nxt200x_writebytes.exit
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent, align 8
  %call4 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.42, ptr noundef %31) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt2004_init.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt2004_init, %if.then17)) #8
          to label %do.end20 [label %if.then17], !srcloc !177

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt2004_init.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.41) #8
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool21.not = icmp eq i32 %call4, 0
  br i1 %tobool21.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.41) #12
  br label %cleanup

if.end28:                                         ; preds = %do.end20
  %32 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fw, align 4
  call fastcc void @nxt2004_load_firmware(ptr noundef %fe, ptr noundef %33)
  %34 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %35) #8
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.41) #12
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i275) #8
  %37 = getelementptr inbounds i8, ptr %buf2.i275, i32 1
  %38 = call ptr @memset(ptr %37, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i276) #8
  %39 = getelementptr inbounds i8, ptr %msg.i276, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %39, align 4
  %41 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %config.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4
  %conv.i278 = zext i8 %44 to i16
  %45 = ptrtoint ptr %msg.i276 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i278, ptr %msg.i276, align 4
  %flags.i279 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i276, i32 0, i32 1
  %46 = ptrtoint ptr %flags.i279 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i279, align 2
  store i16 2, ptr %39, align 4
  %buf4.i281 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i276, i32 0, i32 3
  %47 = ptrtoint ptr %buf4.i281 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf2.i275, ptr %buf4.i281, align 4
  %48 = ptrtoint ptr %buf2.i275 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 25, ptr %buf2.i275, align 1
  %49 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %37, align 1
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call12.i283 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i276, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i283)
  %cmp13.not.i284 = icmp eq i32 %call12.i283, 1
  br i1 %cmp13.not.i284, label %if.end28.nxt200x_writebytes.exit288_crit_edge, label %do.end18.i287

if.end28.nxt200x_writebytes.exit288_crit_edge:    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit288

do.end18.i287:                                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %config.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 4
  %conv22.i285 = zext i8 %55 to i32
  %call23.i286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i285, i32 noundef %call12.i283) #12
  br label %nxt200x_writebytes.exit288

nxt200x_writebytes.exit288:                       ; preds = %do.end18.i287, %if.end28.nxt200x_writebytes.exit288_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i276) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i275) #8
  call fastcc void @nxt2004_microcontroller_init(ptr noundef %1)
  call fastcc void @nxt200x_microcontroller_stop(ptr noundef %1)
  call fastcc void @nxt200x_microcontroller_stop(ptr noundef %1)
  call fastcc void @nxt2004_microcontroller_init(ptr noundef %1)
  call fastcc void @nxt200x_microcontroller_stop(ptr noundef %1)
  %56 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -1, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %57 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %58 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -41, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i289) #8
  %59 = getelementptr inbounds i8, ptr %buf2.i289, i32 1
  %60 = call ptr @memset(ptr %59, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i290) #8
  %61 = getelementptr inbounds i8, ptr %msg.i290, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %61, align 4
  %63 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %config.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 4
  %conv.i292 = zext i8 %66 to i16
  %67 = ptrtoint ptr %msg.i290 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i292, ptr %msg.i290, align 4
  %flags.i293 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i290, i32 0, i32 1
  %68 = ptrtoint ptr %flags.i293 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %flags.i293, align 2
  store i16 2, ptr %61, align 4
  %buf4.i295 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i290, i32 0, i32 3
  %69 = ptrtoint ptr %buf4.i295 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %buf2.i289, ptr %buf4.i295, align 4
  %70 = ptrtoint ptr %buf2.i289 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 87, ptr %buf2.i289, align 1
  %71 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -41, ptr %59, align 1
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %call12.i297 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %msg.i290, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i297)
  %cmp13.not.i298 = icmp eq i32 %call12.i297, 1
  br i1 %cmp13.not.i298, label %nxt200x_writebytes.exit288.nxt200x_writebytes.exit302_crit_edge, label %do.end18.i301

nxt200x_writebytes.exit288.nxt200x_writebytes.exit302_crit_edge: ; preds = %nxt200x_writebytes.exit288
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit302

do.end18.i301:                                    ; preds = %nxt200x_writebytes.exit288
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %config.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 4
  %conv22.i299 = zext i8 %77 to i32
  %call23.i300 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i299, i32 noundef %call12.i297) #12
  br label %nxt200x_writebytes.exit302

nxt200x_writebytes.exit302:                       ; preds = %do.end18.i301, %nxt200x_writebytes.exit288.nxt200x_writebytes.exit302_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i290) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i289) #8
  %78 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 7, ptr %buf, align 2
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -2, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i303) #8
  %80 = getelementptr inbounds i8, ptr %buf2.i303, i32 1
  %81 = call ptr @memset(ptr %80, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i304) #8
  %82 = getelementptr inbounds i8, ptr %msg.i304, i32 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %82, align 4
  %84 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %config.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 4
  %conv.i306 = zext i8 %87 to i16
  %88 = ptrtoint ptr %msg.i304 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv.i306, ptr %msg.i304, align 4
  %flags.i307 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i304, i32 0, i32 1
  %89 = ptrtoint ptr %flags.i307 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %flags.i307, align 2
  store i16 3, ptr %82, align 4
  %buf4.i309 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i304, i32 0, i32 3
  %90 = ptrtoint ptr %buf4.i309 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %buf2.i303, ptr %buf4.i309, align 4
  %91 = ptrtoint ptr %buf2.i303 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 53, ptr %buf2.i303, align 1
  %92 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %buf, align 2
  %94 = ptrtoint ptr %80 to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 %93, ptr %80, align 1
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  %call12.i311 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %msg.i304, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i311)
  %cmp13.not.i312 = icmp eq i32 %call12.i311, 1
  br i1 %cmp13.not.i312, label %nxt200x_writebytes.exit302.nxt200x_writebytes.exit316_crit_edge, label %do.end18.i315

nxt200x_writebytes.exit302.nxt200x_writebytes.exit316_crit_edge: ; preds = %nxt200x_writebytes.exit302
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit316

do.end18.i315:                                    ; preds = %nxt200x_writebytes.exit302
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %config.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %98, align 4
  %conv22.i313 = zext i8 %100 to i32
  %call23.i314 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i313, i32 noundef %call12.i311) #12
  br label %nxt200x_writebytes.exit316

nxt200x_writebytes.exit316:                       ; preds = %do.end18.i315, %nxt200x_writebytes.exit302.nxt200x_writebytes.exit316_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i304) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i303) #8
  %101 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 18, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i317) #8
  %102 = getelementptr inbounds i8, ptr %buf2.i317, i32 1
  %103 = call ptr @memset(ptr %102, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i318) #8
  %104 = getelementptr inbounds i8, ptr %msg.i318, i32 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 -1, ptr %104, align 4
  %106 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %config.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %107, align 4
  %conv.i320 = zext i8 %109 to i16
  %110 = ptrtoint ptr %msg.i318 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.i320, ptr %msg.i318, align 4
  %flags.i321 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i318, i32 0, i32 1
  %111 = ptrtoint ptr %flags.i321 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %flags.i321, align 2
  store i16 2, ptr %104, align 4
  %buf4.i323 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i318, i32 0, i32 3
  %112 = ptrtoint ptr %buf4.i323 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %buf2.i317, ptr %buf4.i323, align 4
  %113 = ptrtoint ptr %buf2.i317 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 52, ptr %buf2.i317, align 1
  %114 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 18, ptr %102, align 1
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %1, align 4
  %call12.i325 = call i32 @i2c_transfer(ptr noundef %116, ptr noundef nonnull %msg.i318, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i325)
  %cmp13.not.i326 = icmp eq i32 %call12.i325, 1
  br i1 %cmp13.not.i326, label %nxt200x_writebytes.exit316.nxt200x_writebytes.exit330_crit_edge, label %do.end18.i329

nxt200x_writebytes.exit316.nxt200x_writebytes.exit330_crit_edge: ; preds = %nxt200x_writebytes.exit316
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit330

do.end18.i329:                                    ; preds = %nxt200x_writebytes.exit316
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %config.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %118, align 4
  %conv22.i327 = zext i8 %120 to i32
  %call23.i328 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i327, i32 noundef %call12.i325) #12
  br label %nxt200x_writebytes.exit330

nxt200x_writebytes.exit330:                       ; preds = %do.end18.i329, %nxt200x_writebytes.exit316.nxt200x_writebytes.exit330_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i318) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i317) #8
  %121 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 -128, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i331) #8
  %122 = getelementptr inbounds i8, ptr %buf2.i331, i32 1
  %123 = call ptr @memset(ptr %122, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i332) #8
  %124 = getelementptr inbounds i8, ptr %msg.i332, i32 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 -1, ptr %124, align 4
  %126 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %config.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %127, align 4
  %conv.i334 = zext i8 %129 to i16
  %130 = ptrtoint ptr %msg.i332 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv.i334, ptr %msg.i332, align 4
  %flags.i335 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i332, i32 0, i32 1
  %131 = ptrtoint ptr %flags.i335 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %flags.i335, align 2
  store i16 2, ptr %124, align 4
  %buf4.i337 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i332, i32 0, i32 3
  %132 = ptrtoint ptr %buf4.i337 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %buf2.i331, ptr %buf4.i337, align 4
  %133 = ptrtoint ptr %buf2.i331 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 33, ptr %buf2.i331, align 1
  %134 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -128, ptr %122, align 1
  %135 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %1, align 4
  %call12.i339 = call i32 @i2c_transfer(ptr noundef %136, ptr noundef nonnull %msg.i332, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i339)
  %cmp13.not.i340 = icmp eq i32 %call12.i339, 1
  br i1 %cmp13.not.i340, label %nxt200x_writebytes.exit330.nxt200x_writebytes.exit344_crit_edge, label %do.end18.i343

nxt200x_writebytes.exit330.nxt200x_writebytes.exit344_crit_edge: ; preds = %nxt200x_writebytes.exit330
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit344

do.end18.i343:                                    ; preds = %nxt200x_writebytes.exit330
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %config.i, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %138, align 4
  %conv22.i341 = zext i8 %140 to i32
  %call23.i342 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i341, i32 noundef %call12.i339) #12
  br label %nxt200x_writebytes.exit344

nxt200x_writebytes.exit344:                       ; preds = %do.end18.i343, %nxt200x_writebytes.exit330.nxt200x_writebytes.exit344_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i332) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i331) #8
  %141 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 33, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i345) #8
  %142 = getelementptr inbounds i8, ptr %buf2.i345, i32 1
  %143 = call ptr @memset(ptr %142, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i346) #8
  %144 = getelementptr inbounds i8, ptr %msg.i346, i32 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 -1, ptr %144, align 4
  %146 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %config.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %147, align 4
  %conv.i348 = zext i8 %149 to i16
  %150 = ptrtoint ptr %msg.i346 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv.i348, ptr %msg.i346, align 4
  %flags.i349 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i346, i32 0, i32 1
  %151 = ptrtoint ptr %flags.i349 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %flags.i349, align 2
  store i16 2, ptr %144, align 4
  %buf4.i351 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i346, i32 0, i32 3
  %152 = ptrtoint ptr %buf4.i351 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %buf2.i345, ptr %buf4.i351, align 4
  %153 = ptrtoint ptr %buf2.i345 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 10, ptr %buf2.i345, align 1
  %154 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 33, ptr %142, align 1
  %155 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %1, align 4
  %call12.i353 = call i32 @i2c_transfer(ptr noundef %156, ptr noundef nonnull %msg.i346, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i353)
  %cmp13.not.i354 = icmp eq i32 %call12.i353, 1
  br i1 %cmp13.not.i354, label %nxt200x_writebytes.exit344.nxt200x_writebytes.exit358_crit_edge, label %do.end18.i357

nxt200x_writebytes.exit344.nxt200x_writebytes.exit358_crit_edge: ; preds = %nxt200x_writebytes.exit344
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit358

do.end18.i357:                                    ; preds = %nxt200x_writebytes.exit344
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %config.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %158, align 4
  %conv22.i355 = zext i8 %160 to i32
  %call23.i356 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i355, i32 noundef %call12.i353) #12
  br label %nxt200x_writebytes.exit358

nxt200x_writebytes.exit358:                       ; preds = %do.end18.i357, %nxt200x_writebytes.exit344.nxt200x_writebytes.exit358_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i346) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i345) #8
  %161 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 1, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %162 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 126, ptr %buf, align 2
  %163 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i359) #8
  %164 = getelementptr inbounds i8, ptr %buf2.i359, i32 1
  %165 = call ptr @memset(ptr %164, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i360) #8
  %166 = getelementptr inbounds i8, ptr %msg.i360, i32 4
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 -1, ptr %166, align 4
  %168 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %config.i, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %169, align 4
  %conv.i362 = zext i8 %171 to i16
  %172 = ptrtoint ptr %msg.i360 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv.i362, ptr %msg.i360, align 4
  %flags.i363 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i360, i32 0, i32 1
  %173 = ptrtoint ptr %flags.i363 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 0, ptr %flags.i363, align 2
  store i16 3, ptr %166, align 4
  %buf4.i365 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i360, i32 0, i32 3
  %174 = ptrtoint ptr %buf4.i365 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %buf2.i359, ptr %buf4.i365, align 4
  %175 = ptrtoint ptr %buf2.i359 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 -23, ptr %buf2.i359, align 1
  %176 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %buf, align 2
  %178 = ptrtoint ptr %164 to i32
  call void @__asan_storeN_noabort(i32 %178, i32 2)
  store i16 %177, ptr %164, align 1
  %179 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %1, align 4
  %call12.i367 = call i32 @i2c_transfer(ptr noundef %180, ptr noundef nonnull %msg.i360, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i367)
  %cmp13.not.i368 = icmp eq i32 %call12.i367, 1
  br i1 %cmp13.not.i368, label %nxt200x_writebytes.exit358.nxt200x_writebytes.exit372_crit_edge, label %do.end18.i371

nxt200x_writebytes.exit358.nxt200x_writebytes.exit372_crit_edge: ; preds = %nxt200x_writebytes.exit358
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit372

do.end18.i371:                                    ; preds = %nxt200x_writebytes.exit358
  call void @__sanitizer_cov_trace_pc() #10
  %181 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %config.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %182, align 4
  %conv22.i369 = zext i8 %184 to i32
  %call23.i370 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i369, i32 noundef %call12.i367) #12
  br label %nxt200x_writebytes.exit372

nxt200x_writebytes.exit372:                       ; preds = %do.end18.i371, %nxt200x_writebytes.exit358.nxt200x_writebytes.exit372_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i360) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i359) #8
  %185 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i373) #8
  %186 = getelementptr inbounds i8, ptr %buf2.i373, i32 1
  %187 = call ptr @memset(ptr %186, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i374) #8
  %188 = getelementptr inbounds i8, ptr %msg.i374, i32 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 -1, ptr %188, align 4
  %190 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %config.i, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %191, align 4
  %conv.i376 = zext i8 %193 to i16
  %194 = ptrtoint ptr %msg.i374 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv.i376, ptr %msg.i374, align 4
  %flags.i377 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i374, i32 0, i32 1
  %195 = ptrtoint ptr %flags.i377 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 0, ptr %flags.i377, align 2
  store i16 2, ptr %188, align 4
  %buf4.i379 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i374, i32 0, i32 3
  %196 = ptrtoint ptr %buf4.i379 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %buf2.i373, ptr %buf4.i379, align 4
  %197 = ptrtoint ptr %buf2.i373 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 -52, ptr %buf2.i373, align 1
  %198 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %186, align 1
  %199 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %1, align 4
  %call12.i381 = call i32 @i2c_transfer(ptr noundef %200, ptr noundef nonnull %msg.i374, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i381)
  %cmp13.not.i382 = icmp eq i32 %call12.i381, 1
  br i1 %cmp13.not.i382, label %nxt200x_writebytes.exit372.nxt200x_writebytes.exit386_crit_edge, label %do.end18.i385

nxt200x_writebytes.exit372.nxt200x_writebytes.exit386_crit_edge: ; preds = %nxt200x_writebytes.exit372
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit386

do.end18.i385:                                    ; preds = %nxt200x_writebytes.exit372
  call void @__sanitizer_cov_trace_pc() #10
  %201 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %config.i, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %202, align 4
  %conv22.i383 = zext i8 %204 to i32
  %call23.i384 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i383, i32 noundef %call12.i381) #12
  br label %nxt200x_writebytes.exit386

nxt200x_writebytes.exit386:                       ; preds = %do.end18.i385, %nxt200x_writebytes.exit372.nxt200x_writebytes.exit386_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i374) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i373) #8
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %205 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 0, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %206 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 16, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %207 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %208 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 1, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %209 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 112, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -127, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %210 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 49, ptr %buf, align 2
  %211 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 94, ptr %3, align 1
  %212 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 102, ptr %5, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -126, ptr noundef nonnull %buf, i8 noundef zeroext 3)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -120, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %213 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 17, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -120, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %214 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 64, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2.i) #8
  %215 = ptrtoint ptr %reg2.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 16, ptr %reg2.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i387) #8
  %216 = getelementptr inbounds i8, ptr %msg.i387, i32 4
  %217 = call ptr @memset(ptr %216, i32 255, i32 16)
  %218 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %config.i, align 4
  %220 = ptrtoint ptr %219 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %219, align 4
  %conv.i389 = zext i8 %221 to i16
  %222 = ptrtoint ptr %msg.i387 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %conv.i389, ptr %msg.i387, align 4
  %flags.i390 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i387, i32 0, i32 1
  %223 = ptrtoint ptr %flags.i390 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 0, ptr %flags.i390, align 2
  %224 = ptrtoint ptr %216 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 1, ptr %216, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i387, i32 0, i32 3
  %225 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %reg2.i, ptr %buf3.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i387, i32 1
  %226 = load i8, ptr %219, align 4
  %conv7.i = zext i8 %226 to i16
  %227 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %conv7.i, ptr %arrayinit.element.i, align 4
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i387, i32 1, i32 1
  %228 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 1, ptr %flags8.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i387, i32 1, i32 2
  %229 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 1, ptr %len9.i, align 4
  %buf11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i387, i32 1, i32 3
  %230 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %buf, ptr %buf11.i, align 4
  %231 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %232, ptr noundef nonnull %msg.i387, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %nxt200x_writebytes.exit386.nxt200x_readbytes.exit_crit_edge, label %do.end.i

nxt200x_writebytes.exit386.nxt200x_readbytes.exit_crit_edge: ; preds = %nxt200x_writebytes.exit386
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_readbytes.exit

do.end.i:                                         ; preds = %nxt200x_writebytes.exit386
  call void @__sanitizer_cov_trace_pc() #10
  %233 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %config.i, align 4
  %235 = ptrtoint ptr %234 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %234, align 4
  %conv16.i = zext i8 %236 to i32
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv16.i, i32 noundef %call.i) #12
  br label %nxt200x_readbytes.exit

nxt200x_readbytes.exit:                           ; preds = %do.end.i, %nxt200x_writebytes.exit386.nxt200x_readbytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i387) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2.i) #8
  %237 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 16, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i391) #8
  %238 = getelementptr inbounds i8, ptr %buf2.i391, i32 1
  %239 = getelementptr inbounds i8, ptr %buf2.i391, i32 2
  %240 = call ptr @memset(ptr %239, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i392) #8
  %241 = getelementptr inbounds i8, ptr %msg.i392, i32 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 196607, ptr %241, align 4
  %243 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %config.i, align 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %244, align 4
  %conv.i394 = zext i8 %246 to i16
  %247 = ptrtoint ptr %msg.i392 to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %conv.i394, ptr %msg.i392, align 4
  %flags.i395 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i392, i32 0, i32 1
  %248 = ptrtoint ptr %flags.i395 to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 0, ptr %flags.i395, align 2
  %buf4.i397 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i392, i32 0, i32 3
  %249 = ptrtoint ptr %buf4.i397 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %buf2.i391, ptr %buf4.i397, align 4
  %250 = ptrtoint ptr %buf2.i391 to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 16, ptr %buf2.i391, align 1
  %251 = ptrtoint ptr %238 to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 16, ptr %238, align 1
  %252 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %1, align 4
  %call12.i399 = call i32 @i2c_transfer(ptr noundef %253, ptr noundef nonnull %msg.i392, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i399)
  %cmp13.not.i400 = icmp eq i32 %call12.i399, 1
  br i1 %cmp13.not.i400, label %nxt200x_readbytes.exit.nxt200x_writebytes.exit404_crit_edge, label %do.end18.i403

nxt200x_readbytes.exit.nxt200x_writebytes.exit404_crit_edge: ; preds = %nxt200x_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit404

do.end18.i403:                                    ; preds = %nxt200x_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  %254 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %config.i, align 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %255, align 4
  %conv22.i401 = zext i8 %257 to i32
  %call23.i402 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i401, i32 noundef %call12.i399) #12
  br label %nxt200x_writebytes.exit404

nxt200x_writebytes.exit404:                       ; preds = %do.end18.i403, %nxt200x_readbytes.exit.nxt200x_writebytes.exit404_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i392) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i391) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2.i405) #8
  %258 = ptrtoint ptr %reg2.i405 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 10, ptr %reg2.i405, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i406) #8
  %259 = getelementptr inbounds i8, ptr %msg.i406, i32 4
  %260 = call ptr @memset(ptr %259, i32 255, i32 16)
  %261 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %config.i, align 4
  %263 = ptrtoint ptr %262 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %262, align 4
  %conv.i408 = zext i8 %264 to i16
  %265 = ptrtoint ptr %msg.i406 to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 %conv.i408, ptr %msg.i406, align 4
  %flags.i409 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i406, i32 0, i32 1
  %266 = ptrtoint ptr %flags.i409 to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 0, ptr %flags.i409, align 2
  %267 = ptrtoint ptr %259 to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 1, ptr %259, align 4
  %buf3.i411 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i406, i32 0, i32 3
  %268 = ptrtoint ptr %buf3.i411 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %reg2.i405, ptr %buf3.i411, align 4
  %arrayinit.element.i412 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i406, i32 1
  %269 = load i8, ptr %262, align 4
  %conv7.i413 = zext i8 %269 to i16
  %270 = ptrtoint ptr %arrayinit.element.i412 to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %conv7.i413, ptr %arrayinit.element.i412, align 4
  %flags8.i414 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i406, i32 1, i32 1
  %271 = ptrtoint ptr %flags8.i414 to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 1, ptr %flags8.i414, align 2
  %len9.i415 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i406, i32 1, i32 2
  %272 = ptrtoint ptr %len9.i415 to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 1, ptr %len9.i415, align 4
  %buf11.i416 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i406, i32 1, i32 3
  %273 = ptrtoint ptr %buf11.i416 to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %buf, ptr %buf11.i416, align 4
  %274 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %1, align 4
  %call.i417 = call i32 @i2c_transfer(ptr noundef %275, ptr noundef nonnull %msg.i406, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i417)
  %cmp.not.i418 = icmp eq i32 %call.i417, 2
  br i1 %cmp.not.i418, label %nxt200x_writebytes.exit404.nxt200x_readbytes.exit422_crit_edge, label %do.end.i421

nxt200x_writebytes.exit404.nxt200x_readbytes.exit422_crit_edge: ; preds = %nxt200x_writebytes.exit404
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_readbytes.exit422

do.end.i421:                                      ; preds = %nxt200x_writebytes.exit404
  call void @__sanitizer_cov_trace_pc() #10
  %276 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %config.i, align 4
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %277, align 4
  %conv16.i419 = zext i8 %279 to i32
  %call17.i420 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv16.i419, i32 noundef %call.i417) #12
  br label %nxt200x_readbytes.exit422

nxt200x_readbytes.exit422:                        ; preds = %do.end.i421, %nxt200x_writebytes.exit404.nxt200x_readbytes.exit422_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i406) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2.i405) #8
  %280 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 33, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i423) #8
  %281 = getelementptr inbounds i8, ptr %buf2.i423, i32 1
  %282 = getelementptr inbounds i8, ptr %buf2.i423, i32 2
  %283 = call ptr @memset(ptr %282, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i424) #8
  %284 = getelementptr inbounds i8, ptr %msg.i424, i32 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 196607, ptr %284, align 4
  %286 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %config.i, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %287, align 4
  %conv.i426 = zext i8 %289 to i16
  %290 = ptrtoint ptr %msg.i424 to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 %conv.i426, ptr %msg.i424, align 4
  %flags.i427 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i424, i32 0, i32 1
  %291 = ptrtoint ptr %flags.i427 to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 0, ptr %flags.i427, align 2
  %buf4.i429 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i424, i32 0, i32 3
  %292 = ptrtoint ptr %buf4.i429 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %buf2.i423, ptr %buf4.i429, align 4
  %293 = ptrtoint ptr %buf2.i423 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 10, ptr %buf2.i423, align 1
  %294 = ptrtoint ptr %281 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 33, ptr %281, align 1
  %295 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %1, align 4
  %call12.i431 = call i32 @i2c_transfer(ptr noundef %296, ptr noundef nonnull %msg.i424, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i431)
  %cmp13.not.i432 = icmp eq i32 %call12.i431, 1
  br i1 %cmp13.not.i432, label %nxt200x_readbytes.exit422.nxt200x_writebytes.exit436_crit_edge, label %do.end18.i435

nxt200x_readbytes.exit422.nxt200x_writebytes.exit436_crit_edge: ; preds = %nxt200x_readbytes.exit422
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit436

do.end18.i435:                                    ; preds = %nxt200x_readbytes.exit422
  call void @__sanitizer_cov_trace_pc() #10
  %297 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %config.i, align 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %298, align 4
  %conv22.i433 = zext i8 %300 to i32
  %call23.i434 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i433, i32 noundef %call12.i431) #12
  br label %nxt200x_writebytes.exit436

nxt200x_writebytes.exit436:                       ; preds = %do.end18.i435, %nxt200x_readbytes.exit422.nxt200x_writebytes.exit436_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i424) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i423) #8
  call fastcc void @nxt2004_microcontroller_init(ptr noundef %1)
  %301 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 33, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i437) #8
  %302 = getelementptr inbounds i8, ptr %buf2.i437, i32 1
  %303 = getelementptr inbounds i8, ptr %buf2.i437, i32 2
  %304 = call ptr @memset(ptr %303, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i438) #8
  %305 = getelementptr inbounds i8, ptr %msg.i438, i32 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 196607, ptr %305, align 4
  %307 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %config.i, align 4
  %309 = ptrtoint ptr %308 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %308, align 4
  %conv.i440 = zext i8 %310 to i16
  %311 = ptrtoint ptr %msg.i438 to i32
  call void @__asan_store2_noabort(i32 %311)
  store i16 %conv.i440, ptr %msg.i438, align 4
  %flags.i441 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i438, i32 0, i32 1
  %312 = ptrtoint ptr %flags.i441 to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 0, ptr %flags.i441, align 2
  %buf4.i443 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i438, i32 0, i32 3
  %313 = ptrtoint ptr %buf4.i443 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %buf2.i437, ptr %buf4.i443, align 4
  %314 = ptrtoint ptr %buf2.i437 to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 10, ptr %buf2.i437, align 1
  %315 = ptrtoint ptr %302 to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 33, ptr %302, align 1
  %316 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %1, align 4
  %call12.i445 = call i32 @i2c_transfer(ptr noundef %317, ptr noundef nonnull %msg.i438, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i445)
  %cmp13.not.i446 = icmp eq i32 %call12.i445, 1
  br i1 %cmp13.not.i446, label %nxt200x_writebytes.exit436.nxt200x_writebytes.exit450_crit_edge, label %do.end18.i449

nxt200x_writebytes.exit436.nxt200x_writebytes.exit450_crit_edge: ; preds = %nxt200x_writebytes.exit436
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit450

do.end18.i449:                                    ; preds = %nxt200x_writebytes.exit436
  call void @__sanitizer_cov_trace_pc() #10
  %318 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %config.i, align 4
  %320 = ptrtoint ptr %319 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %319, align 4
  %conv22.i447 = zext i8 %321 to i32
  %call23.i448 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i447, i32 noundef %call12.i445) #12
  br label %nxt200x_writebytes.exit450

nxt200x_writebytes.exit450:                       ; preds = %do.end18.i449, %nxt200x_writebytes.exit436.nxt200x_writebytes.exit450_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i438) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i437) #8
  %322 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 126, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i451) #8
  %323 = getelementptr inbounds i8, ptr %buf2.i451, i32 1
  %324 = getelementptr inbounds i8, ptr %buf2.i451, i32 2
  %325 = call ptr @memset(ptr %324, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i452) #8
  %326 = getelementptr inbounds i8, ptr %msg.i452, i32 4
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 196607, ptr %326, align 4
  %328 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %config.i, align 4
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %329, align 4
  %conv.i454 = zext i8 %331 to i16
  %332 = ptrtoint ptr %msg.i452 to i32
  call void @__asan_store2_noabort(i32 %332)
  store i16 %conv.i454, ptr %msg.i452, align 4
  %flags.i455 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i452, i32 0, i32 1
  %333 = ptrtoint ptr %flags.i455 to i32
  call void @__asan_store2_noabort(i32 %333)
  store i16 0, ptr %flags.i455, align 2
  %buf4.i457 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i452, i32 0, i32 3
  %334 = ptrtoint ptr %buf4.i457 to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %buf2.i451, ptr %buf4.i457, align 4
  %335 = ptrtoint ptr %buf2.i451 to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 -23, ptr %buf2.i451, align 1
  %336 = ptrtoint ptr %323 to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 126, ptr %323, align 1
  %337 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %1, align 4
  %call12.i459 = call i32 @i2c_transfer(ptr noundef %338, ptr noundef nonnull %msg.i452, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i459)
  %cmp13.not.i460 = icmp eq i32 %call12.i459, 1
  br i1 %cmp13.not.i460, label %nxt200x_writebytes.exit450.nxt200x_writebytes.exit464_crit_edge, label %do.end18.i463

nxt200x_writebytes.exit450.nxt200x_writebytes.exit464_crit_edge: ; preds = %nxt200x_writebytes.exit450
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit464

do.end18.i463:                                    ; preds = %nxt200x_writebytes.exit450
  call void @__sanitizer_cov_trace_pc() #10
  %339 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %config.i, align 4
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %340, align 4
  %conv22.i461 = zext i8 %342 to i32
  %call23.i462 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i461, i32 noundef %call12.i459) #12
  br label %nxt200x_writebytes.exit464

nxt200x_writebytes.exit464:                       ; preds = %do.end18.i463, %nxt200x_writebytes.exit450.nxt200x_writebytes.exit464_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i452) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i451) #8
  %343 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 0, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i465) #8
  %344 = getelementptr inbounds i8, ptr %buf2.i465, i32 1
  %345 = getelementptr inbounds i8, ptr %buf2.i465, i32 2
  %346 = call ptr @memset(ptr %345, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i466) #8
  %347 = getelementptr inbounds i8, ptr %msg.i466, i32 4
  %348 = ptrtoint ptr %347 to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 196607, ptr %347, align 4
  %349 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %config.i, align 4
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %350, align 4
  %conv.i468 = zext i8 %352 to i16
  %353 = ptrtoint ptr %msg.i466 to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 %conv.i468, ptr %msg.i466, align 4
  %flags.i469 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i466, i32 0, i32 1
  %354 = ptrtoint ptr %flags.i469 to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 0, ptr %flags.i469, align 2
  %buf4.i471 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i466, i32 0, i32 3
  %355 = ptrtoint ptr %buf4.i471 to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr %buf2.i465, ptr %buf4.i471, align 4
  %356 = ptrtoint ptr %buf2.i465 to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 -22, ptr %buf2.i465, align 1
  %357 = ptrtoint ptr %344 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 0, ptr %344, align 1
  %358 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %1, align 4
  %call12.i473 = call i32 @i2c_transfer(ptr noundef %359, ptr noundef nonnull %msg.i466, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i473)
  %cmp13.not.i474 = icmp eq i32 %call12.i473, 1
  br i1 %cmp13.not.i474, label %nxt200x_writebytes.exit464.nxt200x_writebytes.exit478_crit_edge, label %do.end18.i477

nxt200x_writebytes.exit464.nxt200x_writebytes.exit478_crit_edge: ; preds = %nxt200x_writebytes.exit464
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit478

do.end18.i477:                                    ; preds = %nxt200x_writebytes.exit464
  call void @__sanitizer_cov_trace_pc() #10
  %360 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %config.i, align 4
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %361, align 4
  %conv22.i475 = zext i8 %363 to i32
  %call23.i476 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i475, i32 noundef %call12.i473) #12
  br label %nxt200x_writebytes.exit478

nxt200x_writebytes.exit478:                       ; preds = %do.end18.i477, %nxt200x_writebytes.exit464.nxt200x_writebytes.exit478_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i466) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i465) #8
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %364 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 0, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %365 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 0, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %366 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 16, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %367 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 0, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %368 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 4, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %369 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 0, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -127, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %370 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %370)
  store i8 -128, ptr %buf, align 2
  %371 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 0, ptr %3, align 1
  %372 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 0, ptr %5, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -126, ptr noundef nonnull %buf, i8 noundef zeroext 3)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -120, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %373 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 17, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -120, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %374 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 68, ptr %buf, align 2
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %1, i8 noundef zeroext -128, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2.i479) #8
  %375 = ptrtoint ptr %reg2.i479 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 16, ptr %reg2.i479, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i480) #8
  %376 = getelementptr inbounds i8, ptr %msg.i480, i32 4
  %377 = call ptr @memset(ptr %376, i32 255, i32 16)
  %378 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %config.i, align 4
  %380 = ptrtoint ptr %379 to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %379, align 4
  %conv.i482 = zext i8 %381 to i16
  %382 = ptrtoint ptr %msg.i480 to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 %conv.i482, ptr %msg.i480, align 4
  %flags.i483 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i480, i32 0, i32 1
  %383 = ptrtoint ptr %flags.i483 to i32
  call void @__asan_store2_noabort(i32 %383)
  store i16 0, ptr %flags.i483, align 2
  %384 = ptrtoint ptr %376 to i32
  call void @__asan_store2_noabort(i32 %384)
  store i16 1, ptr %376, align 4
  %buf3.i485 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i480, i32 0, i32 3
  %385 = ptrtoint ptr %buf3.i485 to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %reg2.i479, ptr %buf3.i485, align 4
  %arrayinit.element.i486 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i480, i32 1
  %386 = load i8, ptr %379, align 4
  %conv7.i487 = zext i8 %386 to i16
  %387 = ptrtoint ptr %arrayinit.element.i486 to i32
  call void @__asan_store2_noabort(i32 %387)
  store i16 %conv7.i487, ptr %arrayinit.element.i486, align 4
  %flags8.i488 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i480, i32 1, i32 1
  %388 = ptrtoint ptr %flags8.i488 to i32
  call void @__asan_store2_noabort(i32 %388)
  store i16 1, ptr %flags8.i488, align 2
  %len9.i489 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i480, i32 1, i32 2
  %389 = ptrtoint ptr %len9.i489 to i32
  call void @__asan_store2_noabort(i32 %389)
  store i16 1, ptr %len9.i489, align 4
  %buf11.i490 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i480, i32 1, i32 3
  %390 = ptrtoint ptr %buf11.i490 to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr %buf, ptr %buf11.i490, align 4
  %391 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %1, align 4
  %call.i491 = call i32 @i2c_transfer(ptr noundef %392, ptr noundef nonnull %msg.i480, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i491)
  %cmp.not.i492 = icmp eq i32 %call.i491, 2
  br i1 %cmp.not.i492, label %nxt200x_writebytes.exit478.nxt200x_readbytes.exit496_crit_edge, label %do.end.i495

nxt200x_writebytes.exit478.nxt200x_readbytes.exit496_crit_edge: ; preds = %nxt200x_writebytes.exit478
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_readbytes.exit496

do.end.i495:                                      ; preds = %nxt200x_writebytes.exit478
  call void @__sanitizer_cov_trace_pc() #10
  %393 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %config.i, align 4
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %394, align 4
  %conv16.i493 = zext i8 %396 to i32
  %call17.i494 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv16.i493, i32 noundef %call.i491) #12
  br label %nxt200x_readbytes.exit496

nxt200x_readbytes.exit496:                        ; preds = %do.end.i495, %nxt200x_writebytes.exit478.nxt200x_readbytes.exit496_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i480) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2.i479) #8
  %397 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 18, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i497) #8
  %398 = getelementptr inbounds i8, ptr %buf2.i497, i32 1
  %399 = getelementptr inbounds i8, ptr %buf2.i497, i32 2
  %400 = call ptr @memset(ptr %399, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i498) #8
  %401 = getelementptr inbounds i8, ptr %msg.i498, i32 4
  %402 = ptrtoint ptr %401 to i32
  call void @__asan_store4_noabort(i32 %402)
  store i32 196607, ptr %401, align 4
  %403 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %config.i, align 4
  %405 = ptrtoint ptr %404 to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %404, align 4
  %conv.i500 = zext i8 %406 to i16
  %407 = ptrtoint ptr %msg.i498 to i32
  call void @__asan_store2_noabort(i32 %407)
  store i16 %conv.i500, ptr %msg.i498, align 4
  %flags.i501 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i498, i32 0, i32 1
  %408 = ptrtoint ptr %flags.i501 to i32
  call void @__asan_store2_noabort(i32 %408)
  store i16 0, ptr %flags.i501, align 2
  %buf4.i503 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i498, i32 0, i32 3
  %409 = ptrtoint ptr %buf4.i503 to i32
  call void @__asan_store4_noabort(i32 %409)
  store ptr %buf2.i497, ptr %buf4.i503, align 4
  %410 = ptrtoint ptr %buf2.i497 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 16, ptr %buf2.i497, align 1
  %411 = ptrtoint ptr %398 to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 18, ptr %398, align 1
  %412 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %1, align 4
  %call12.i505 = call i32 @i2c_transfer(ptr noundef %413, ptr noundef nonnull %msg.i498, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i505)
  %cmp13.not.i506 = icmp eq i32 %call12.i505, 1
  br i1 %cmp13.not.i506, label %nxt200x_readbytes.exit496.nxt200x_writebytes.exit510_crit_edge, label %do.end18.i509

nxt200x_readbytes.exit496.nxt200x_writebytes.exit510_crit_edge: ; preds = %nxt200x_readbytes.exit496
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit510

do.end18.i509:                                    ; preds = %nxt200x_readbytes.exit496
  call void @__sanitizer_cov_trace_pc() #10
  %414 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %config.i, align 4
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %415, align 4
  %conv22.i507 = zext i8 %417 to i32
  %call23.i508 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i507, i32 noundef %call12.i505) #12
  br label %nxt200x_writebytes.exit510

nxt200x_writebytes.exit510:                       ; preds = %do.end18.i509, %nxt200x_readbytes.exit496.nxt200x_writebytes.exit510_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i498) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i497) #8
  %418 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 4, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i511) #8
  %419 = getelementptr inbounds i8, ptr %buf2.i511, i32 1
  %420 = getelementptr inbounds i8, ptr %buf2.i511, i32 2
  %421 = call ptr @memset(ptr %420, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i512) #8
  %422 = getelementptr inbounds i8, ptr %msg.i512, i32 4
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 196607, ptr %422, align 4
  %424 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %config.i, align 4
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %425, align 4
  %conv.i514 = zext i8 %427 to i16
  %428 = ptrtoint ptr %msg.i512 to i32
  call void @__asan_store2_noabort(i32 %428)
  store i16 %conv.i514, ptr %msg.i512, align 4
  %flags.i515 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i512, i32 0, i32 1
  %429 = ptrtoint ptr %flags.i515 to i32
  call void @__asan_store2_noabort(i32 %429)
  store i16 0, ptr %flags.i515, align 2
  %buf4.i517 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i512, i32 0, i32 3
  %430 = ptrtoint ptr %buf4.i517 to i32
  call void @__asan_store4_noabort(i32 %430)
  store ptr %buf2.i511, ptr %buf4.i517, align 4
  %431 = ptrtoint ptr %buf2.i511 to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 19, ptr %buf2.i511, align 1
  %432 = ptrtoint ptr %419 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 4, ptr %419, align 1
  %433 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %1, align 4
  %call12.i519 = call i32 @i2c_transfer(ptr noundef %434, ptr noundef nonnull %msg.i512, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i519)
  %cmp13.not.i520 = icmp eq i32 %call12.i519, 1
  br i1 %cmp13.not.i520, label %nxt200x_writebytes.exit510.nxt200x_writebytes.exit524_crit_edge, label %do.end18.i523

nxt200x_writebytes.exit510.nxt200x_writebytes.exit524_crit_edge: ; preds = %nxt200x_writebytes.exit510
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit524

do.end18.i523:                                    ; preds = %nxt200x_writebytes.exit510
  call void @__sanitizer_cov_trace_pc() #10
  %435 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %config.i, align 4
  %437 = ptrtoint ptr %436 to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %436, align 4
  %conv22.i521 = zext i8 %438 to i32
  %call23.i522 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i521, i32 noundef %call12.i519) #12
  br label %nxt200x_writebytes.exit524

nxt200x_writebytes.exit524:                       ; preds = %do.end18.i523, %nxt200x_writebytes.exit510.nxt200x_writebytes.exit524_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i512) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i511) #8
  %439 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 0, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i525) #8
  %440 = getelementptr inbounds i8, ptr %buf2.i525, i32 1
  %441 = getelementptr inbounds i8, ptr %buf2.i525, i32 2
  %442 = call ptr @memset(ptr %441, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i526) #8
  %443 = getelementptr inbounds i8, ptr %msg.i526, i32 4
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_store4_noabort(i32 %444)
  store i32 196607, ptr %443, align 4
  %445 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %config.i, align 4
  %447 = ptrtoint ptr %446 to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %446, align 4
  %conv.i528 = zext i8 %448 to i16
  %449 = ptrtoint ptr %msg.i526 to i32
  call void @__asan_store2_noabort(i32 %449)
  store i16 %conv.i528, ptr %msg.i526, align 4
  %flags.i529 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i526, i32 0, i32 1
  %450 = ptrtoint ptr %flags.i529 to i32
  call void @__asan_store2_noabort(i32 %450)
  store i16 0, ptr %flags.i529, align 2
  %buf4.i531 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i526, i32 0, i32 3
  %451 = ptrtoint ptr %buf4.i531 to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr %buf2.i525, ptr %buf4.i531, align 4
  %452 = ptrtoint ptr %buf2.i525 to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 22, ptr %buf2.i525, align 1
  %453 = ptrtoint ptr %440 to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 0, ptr %440, align 1
  %454 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %1, align 4
  %call12.i533 = call i32 @i2c_transfer(ptr noundef %455, ptr noundef nonnull %msg.i526, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i533)
  %cmp13.not.i534 = icmp eq i32 %call12.i533, 1
  br i1 %cmp13.not.i534, label %nxt200x_writebytes.exit524.nxt200x_writebytes.exit538_crit_edge, label %do.end18.i537

nxt200x_writebytes.exit524.nxt200x_writebytes.exit538_crit_edge: ; preds = %nxt200x_writebytes.exit524
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit538

do.end18.i537:                                    ; preds = %nxt200x_writebytes.exit524
  call void @__sanitizer_cov_trace_pc() #10
  %456 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %config.i, align 4
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %457, align 4
  %conv22.i535 = zext i8 %459 to i32
  %call23.i536 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i535, i32 noundef %call12.i533) #12
  br label %nxt200x_writebytes.exit538

nxt200x_writebytes.exit538:                       ; preds = %do.end18.i537, %nxt200x_writebytes.exit524.nxt200x_writebytes.exit538_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i526) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i525) #8
  %460 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %460)
  store i8 4, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i539) #8
  %461 = getelementptr inbounds i8, ptr %buf2.i539, i32 1
  %462 = getelementptr inbounds i8, ptr %buf2.i539, i32 2
  %463 = call ptr @memset(ptr %462, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i540) #8
  %464 = getelementptr inbounds i8, ptr %msg.i540, i32 4
  %465 = ptrtoint ptr %464 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 196607, ptr %464, align 4
  %466 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %config.i, align 4
  %468 = ptrtoint ptr %467 to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %467, align 4
  %conv.i542 = zext i8 %469 to i16
  %470 = ptrtoint ptr %msg.i540 to i32
  call void @__asan_store2_noabort(i32 %470)
  store i16 %conv.i542, ptr %msg.i540, align 4
  %flags.i543 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i540, i32 0, i32 1
  %471 = ptrtoint ptr %flags.i543 to i32
  call void @__asan_store2_noabort(i32 %471)
  store i16 0, ptr %flags.i543, align 2
  %buf4.i545 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i540, i32 0, i32 3
  %472 = ptrtoint ptr %buf4.i545 to i32
  call void @__asan_store4_noabort(i32 %472)
  store ptr %buf2.i539, ptr %buf4.i545, align 4
  %473 = ptrtoint ptr %buf2.i539 to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 20, ptr %buf2.i539, align 1
  %474 = ptrtoint ptr %461 to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 4, ptr %461, align 1
  %475 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %1, align 4
  %call12.i547 = call i32 @i2c_transfer(ptr noundef %476, ptr noundef nonnull %msg.i540, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i547)
  %cmp13.not.i548 = icmp eq i32 %call12.i547, 1
  br i1 %cmp13.not.i548, label %nxt200x_writebytes.exit538.nxt200x_writebytes.exit552_crit_edge, label %do.end18.i551

nxt200x_writebytes.exit538.nxt200x_writebytes.exit552_crit_edge: ; preds = %nxt200x_writebytes.exit538
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit552

do.end18.i551:                                    ; preds = %nxt200x_writebytes.exit538
  call void @__sanitizer_cov_trace_pc() #10
  %477 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %config.i, align 4
  %479 = ptrtoint ptr %478 to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %478, align 4
  %conv22.i549 = zext i8 %480 to i32
  %call23.i550 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i549, i32 noundef %call12.i547) #12
  br label %nxt200x_writebytes.exit552

nxt200x_writebytes.exit552:                       ; preds = %do.end18.i551, %nxt200x_writebytes.exit538.nxt200x_writebytes.exit552_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i540) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i539) #8
  %481 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 0, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i553) #8
  %482 = getelementptr inbounds i8, ptr %buf2.i553, i32 1
  %483 = getelementptr inbounds i8, ptr %buf2.i553, i32 2
  %484 = call ptr @memset(ptr %483, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i554) #8
  %485 = getelementptr inbounds i8, ptr %msg.i554, i32 4
  %486 = ptrtoint ptr %485 to i32
  call void @__asan_store4_noabort(i32 %486)
  store i32 196607, ptr %485, align 4
  %487 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %config.i, align 4
  %489 = ptrtoint ptr %488 to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %488, align 4
  %conv.i556 = zext i8 %490 to i16
  %491 = ptrtoint ptr %msg.i554 to i32
  call void @__asan_store2_noabort(i32 %491)
  store i16 %conv.i556, ptr %msg.i554, align 4
  %flags.i557 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i554, i32 0, i32 1
  %492 = ptrtoint ptr %flags.i557 to i32
  call void @__asan_store2_noabort(i32 %492)
  store i16 0, ptr %flags.i557, align 2
  %buf4.i559 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i554, i32 0, i32 3
  %493 = ptrtoint ptr %buf4.i559 to i32
  call void @__asan_store4_noabort(i32 %493)
  store ptr %buf2.i553, ptr %buf4.i559, align 4
  %494 = ptrtoint ptr %buf2.i553 to i32
  call void @__asan_store1_noabort(i32 %494)
  store i8 20, ptr %buf2.i553, align 1
  %495 = ptrtoint ptr %482 to i32
  call void @__asan_store1_noabort(i32 %495)
  store i8 0, ptr %482, align 1
  %496 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %1, align 4
  %call12.i561 = call i32 @i2c_transfer(ptr noundef %497, ptr noundef nonnull %msg.i554, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i561)
  %cmp13.not.i562 = icmp eq i32 %call12.i561, 1
  br i1 %cmp13.not.i562, label %nxt200x_writebytes.exit552.nxt200x_writebytes.exit566_crit_edge, label %do.end18.i565

nxt200x_writebytes.exit552.nxt200x_writebytes.exit566_crit_edge: ; preds = %nxt200x_writebytes.exit552
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit566

do.end18.i565:                                    ; preds = %nxt200x_writebytes.exit552
  call void @__sanitizer_cov_trace_pc() #10
  %498 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %config.i, align 4
  %500 = ptrtoint ptr %499 to i32
  call void @__asan_load1_noabort(i32 %500)
  %501 = load i8, ptr %499, align 4
  %conv22.i563 = zext i8 %501 to i32
  %call23.i564 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i563, i32 noundef %call12.i561) #12
  br label %nxt200x_writebytes.exit566

nxt200x_writebytes.exit566:                       ; preds = %do.end18.i565, %nxt200x_writebytes.exit552.nxt200x_writebytes.exit566_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i554) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i553) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i567) #8
  %502 = getelementptr inbounds i8, ptr %buf2.i567, i32 1
  %503 = getelementptr inbounds i8, ptr %buf2.i567, i32 2
  %504 = call ptr @memset(ptr %503, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i568) #8
  %505 = getelementptr inbounds i8, ptr %msg.i568, i32 4
  %506 = ptrtoint ptr %505 to i32
  call void @__asan_store4_noabort(i32 %506)
  store i32 196607, ptr %505, align 4
  %507 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %config.i, align 4
  %509 = ptrtoint ptr %508 to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %508, align 4
  %conv.i570 = zext i8 %510 to i16
  %511 = ptrtoint ptr %msg.i568 to i32
  call void @__asan_store2_noabort(i32 %511)
  store i16 %conv.i570, ptr %msg.i568, align 4
  %flags.i571 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i568, i32 0, i32 1
  %512 = ptrtoint ptr %flags.i571 to i32
  call void @__asan_store2_noabort(i32 %512)
  store i16 0, ptr %flags.i571, align 2
  %buf4.i573 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i568, i32 0, i32 3
  %513 = ptrtoint ptr %buf4.i573 to i32
  call void @__asan_store4_noabort(i32 %513)
  store ptr %buf2.i567, ptr %buf4.i573, align 4
  %514 = ptrtoint ptr %buf2.i567 to i32
  call void @__asan_store1_noabort(i32 %514)
  store i8 23, ptr %buf2.i567, align 1
  %515 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %buf, align 2
  %517 = ptrtoint ptr %502 to i32
  call void @__asan_store1_noabort(i32 %517)
  store i8 %516, ptr %502, align 1
  %518 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %1, align 4
  %call12.i575 = call i32 @i2c_transfer(ptr noundef %519, ptr noundef nonnull %msg.i568, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i575)
  %cmp13.not.i576 = icmp eq i32 %call12.i575, 1
  br i1 %cmp13.not.i576, label %nxt200x_writebytes.exit566.nxt200x_writebytes.exit580_crit_edge, label %do.end18.i579

nxt200x_writebytes.exit566.nxt200x_writebytes.exit580_crit_edge: ; preds = %nxt200x_writebytes.exit566
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit580

do.end18.i579:                                    ; preds = %nxt200x_writebytes.exit566
  call void @__sanitizer_cov_trace_pc() #10
  %520 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %config.i, align 4
  %522 = ptrtoint ptr %521 to i32
  call void @__asan_load1_noabort(i32 %522)
  %523 = load i8, ptr %521, align 4
  %conv22.i577 = zext i8 %523 to i32
  %call23.i578 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i577, i32 noundef %call12.i575) #12
  br label %nxt200x_writebytes.exit580

nxt200x_writebytes.exit580:                       ; preds = %do.end18.i579, %nxt200x_writebytes.exit566.nxt200x_writebytes.exit580_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i568) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i567) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i581) #8
  %524 = getelementptr inbounds i8, ptr %buf2.i581, i32 1
  %525 = getelementptr inbounds i8, ptr %buf2.i581, i32 2
  %526 = call ptr @memset(ptr %525, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i582) #8
  %527 = getelementptr inbounds i8, ptr %msg.i582, i32 4
  %528 = ptrtoint ptr %527 to i32
  call void @__asan_store4_noabort(i32 %528)
  store i32 196607, ptr %527, align 4
  %529 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %config.i, align 4
  %531 = ptrtoint ptr %530 to i32
  call void @__asan_load1_noabort(i32 %531)
  %532 = load i8, ptr %530, align 4
  %conv.i584 = zext i8 %532 to i16
  %533 = ptrtoint ptr %msg.i582 to i32
  call void @__asan_store2_noabort(i32 %533)
  store i16 %conv.i584, ptr %msg.i582, align 4
  %flags.i585 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i582, i32 0, i32 1
  %534 = ptrtoint ptr %flags.i585 to i32
  call void @__asan_store2_noabort(i32 %534)
  store i16 0, ptr %flags.i585, align 2
  %buf4.i587 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i582, i32 0, i32 3
  %535 = ptrtoint ptr %buf4.i587 to i32
  call void @__asan_store4_noabort(i32 %535)
  store ptr %buf2.i581, ptr %buf4.i587, align 4
  %536 = ptrtoint ptr %buf2.i581 to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 20, ptr %buf2.i581, align 1
  %537 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %buf, align 2
  %539 = ptrtoint ptr %524 to i32
  call void @__asan_store1_noabort(i32 %539)
  store i8 %538, ptr %524, align 1
  %540 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %1, align 4
  %call12.i589 = call i32 @i2c_transfer(ptr noundef %541, ptr noundef nonnull %msg.i582, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i589)
  %cmp13.not.i590 = icmp eq i32 %call12.i589, 1
  br i1 %cmp13.not.i590, label %nxt200x_writebytes.exit580.nxt200x_writebytes.exit594_crit_edge, label %do.end18.i593

nxt200x_writebytes.exit580.nxt200x_writebytes.exit594_crit_edge: ; preds = %nxt200x_writebytes.exit580
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit594

do.end18.i593:                                    ; preds = %nxt200x_writebytes.exit580
  call void @__sanitizer_cov_trace_pc() #10
  %542 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %config.i, align 4
  %544 = ptrtoint ptr %543 to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %543, align 4
  %conv22.i591 = zext i8 %545 to i32
  %call23.i592 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i591, i32 noundef %call12.i589) #12
  br label %nxt200x_writebytes.exit594

nxt200x_writebytes.exit594:                       ; preds = %do.end18.i593, %nxt200x_writebytes.exit580.nxt200x_writebytes.exit594_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i582) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i581) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i595) #8
  %546 = getelementptr inbounds i8, ptr %buf2.i595, i32 1
  %547 = getelementptr inbounds i8, ptr %buf2.i595, i32 2
  %548 = call ptr @memset(ptr %547, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i596) #8
  %549 = getelementptr inbounds i8, ptr %msg.i596, i32 4
  %550 = ptrtoint ptr %549 to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 196607, ptr %549, align 4
  %551 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %config.i, align 4
  %553 = ptrtoint ptr %552 to i32
  call void @__asan_load1_noabort(i32 %553)
  %554 = load i8, ptr %552, align 4
  %conv.i598 = zext i8 %554 to i16
  %555 = ptrtoint ptr %msg.i596 to i32
  call void @__asan_store2_noabort(i32 %555)
  store i16 %conv.i598, ptr %msg.i596, align 4
  %flags.i599 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i596, i32 0, i32 1
  %556 = ptrtoint ptr %flags.i599 to i32
  call void @__asan_store2_noabort(i32 %556)
  store i16 0, ptr %flags.i599, align 2
  %buf4.i601 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i596, i32 0, i32 3
  %557 = ptrtoint ptr %buf4.i601 to i32
  call void @__asan_store4_noabort(i32 %557)
  store ptr %buf2.i595, ptr %buf4.i601, align 4
  %558 = ptrtoint ptr %buf2.i595 to i32
  call void @__asan_store1_noabort(i32 %558)
  store i8 23, ptr %buf2.i595, align 1
  %559 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %559)
  %560 = load i8, ptr %buf, align 2
  %561 = ptrtoint ptr %546 to i32
  call void @__asan_store1_noabort(i32 %561)
  store i8 %560, ptr %546, align 1
  %562 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %1, align 4
  %call12.i603 = call i32 @i2c_transfer(ptr noundef %563, ptr noundef nonnull %msg.i596, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i603)
  %cmp13.not.i604 = icmp eq i32 %call12.i603, 1
  br i1 %cmp13.not.i604, label %nxt200x_writebytes.exit594.nxt200x_writebytes.exit608_crit_edge, label %do.end18.i607

nxt200x_writebytes.exit594.nxt200x_writebytes.exit608_crit_edge: ; preds = %nxt200x_writebytes.exit594
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit608

do.end18.i607:                                    ; preds = %nxt200x_writebytes.exit594
  call void @__sanitizer_cov_trace_pc() #10
  %564 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %config.i, align 4
  %566 = ptrtoint ptr %565 to i32
  call void @__asan_load1_noabort(i32 %566)
  %567 = load i8, ptr %565, align 4
  %conv22.i605 = zext i8 %567 to i32
  %call23.i606 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i605, i32 noundef %call12.i603) #12
  br label %nxt200x_writebytes.exit608

nxt200x_writebytes.exit608:                       ; preds = %do.end18.i607, %nxt200x_writebytes.exit594.nxt200x_writebytes.exit608_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i596) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i595) #8
  br label %cleanup

cleanup:                                          ; preds = %nxt200x_writebytes.exit608, %do.end25
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nxt2002_load_firmware(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %fw) unnamed_addr #0 align 64 {
entry:
  %buf2.i87 = alloca [256 x i8], align 1
  %msg.i88 = alloca %struct.i2c_msg, align 4
  %reg2.i69 = alloca [1 x i8], align 1
  %msg.i70 = alloca [2 x %struct.i2c_msg], align 4
  %buf2.i55 = alloca [256 x i8], align 1
  %msg.i56 = alloca %struct.i2c_msg, align 4
  %buf2.i40 = alloca [256 x i8], align 1
  %msg.i41 = alloca %struct.i2c_msg, align 4
  %buf2.i25 = alloca [256 x i8], align 1
  %msg.i26 = alloca %struct.i2c_msg, align 4
  %buf2.i11 = alloca [256 x i8], align 1
  %msg.i12 = alloca %struct.i2c_msg, align 4
  %buf2.i = alloca [256 x i8], align 1
  %msg.i7 = alloca %struct.i2c_msg, align 4
  %reg2.i = alloca [1 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 2, !annotation !178
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !178
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 2, !annotation !178
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.do.body9_crit_edge, label %do.body1

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt2002_load_firmware.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt2002_load_firmware, %if.then5)) #8
          to label %do.body9 [label %if.then5], !srcloc !177

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt2002_load_firmware.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27) #8
  br label %do.body9

do.body9:                                         ; preds = %if.then5, %do.body1, %entry.do.body9_crit_edge
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %do.body9.do.end30_crit_edge, label %do.body12

do.body9.do.end30_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

do.body12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt2002_load_firmware.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt2002_load_firmware, %if.then24)) #8
          to label %do.end30 [label %if.then24], !srcloc !177

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt2002_load_firmware.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.31, i32 noundef %10) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.body12, %do.body9.do.end30_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2.i) #8
  %11 = ptrtoint ptr %reg2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %reg2.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 16)
  %config.i = getelementptr inbounds %struct.nxt200x_state, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4
  %conv.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i, align 2
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %12, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %reg2.i, ptr %buf3.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %22 = load i8, ptr %15, align 4
  %conv7.i = zext i8 %22 to i16
  %23 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv7.i, ptr %arrayinit.element.i, align 4
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %24 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %flags8.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %25 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %len9.i, align 4
  %buf11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %26 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf, ptr %buf11.i, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %do.end30.nxt200x_readbytes.exit_crit_edge, label %do.end.i

do.end30.nxt200x_readbytes.exit_crit_edge:        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_readbytes.exit

do.end.i:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 4
  %conv16.i = zext i8 %32 to i32
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv16.i, i32 noundef %call.i) #12
  br label %nxt200x_readbytes.exit

nxt200x_readbytes.exit:                           ; preds = %do.end.i, %do.end30.nxt200x_readbytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2.i) #8
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %buf, align 2
  %35 = and i8 %34, 16
  %36 = zext i8 %35 to i32
  %37 = shl nuw nsw i32 %36, 8
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool36.not = icmp eq i32 %38, 0
  br i1 %tobool36.not, label %nxt200x_readbytes.exit.do.end57_crit_edge, label %do.body38

nxt200x_readbytes.exit.do.end57_crit_edge:        ; preds = %nxt200x_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57

do.body38:                                        ; preds = %nxt200x_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt2002_load_firmware.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt2002_load_firmware, %if.then50)) #8
          to label %do.end57 [label %if.then50], !srcloc !177

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt2002_load_firmware.__UNIQUE_ID_ddebug300, ptr noundef nonnull @.str.33, i32 noundef %37) #8
  br label %do.end57

do.end57:                                         ; preds = %if.then50, %do.body38, %nxt200x_readbytes.exit.do.end57_crit_edge
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -128, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i) #8
  %40 = getelementptr inbounds i8, ptr %buf2.i, i32 1
  %41 = getelementptr inbounds i8, ptr %buf2.i, i32 2
  %42 = call ptr @memset(ptr %41, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i7) #8
  %43 = getelementptr inbounds i8, ptr %msg.i7, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 196607, ptr %43, align 4
  %45 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %config.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 4
  %conv.i9 = zext i8 %48 to i16
  %49 = ptrtoint ptr %msg.i7 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i9, ptr %msg.i7, align 4
  %flags.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i10 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i10, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 0, i32 3
  %51 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf2.i, ptr %buf4.i, align 4
  %52 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 43, ptr %buf2.i, align 1
  %53 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -128, ptr %40, align 1
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %call12.i = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msg.i7, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.not.i, label %do.end57.nxt200x_writebytes.exit_crit_edge, label %do.end18.i

do.end57.nxt200x_writebytes.exit_crit_edge:       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit

do.end18.i:                                       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 4
  %conv22.i = zext i8 %59 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i, i32 noundef %call12.i) #12
  br label %nxt200x_writebytes.exit

nxt200x_writebytes.exit:                          ; preds = %do.end18.i, %do.end57.nxt200x_writebytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i7) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i) #8
  %60 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp115.not = icmp eq i32 %61, 0
  br i1 %cmp115.not, label %nxt200x_writebytes.exit.for.end_crit_edge, label %for.body.lr.ph

nxt200x_writebytes.exit.for.end_crit_edge:        ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %nxt200x_writebytes.exit
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %62 = getelementptr inbounds i8, ptr %buf2.i25, i32 1
  %63 = getelementptr inbounds i8, ptr %msg.i26, i32 4
  %flags.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 1
  %buf4.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i26, i32 0, i32 3
  %64 = getelementptr inbounds i8, ptr %buf2.i11, i32 1
  %65 = getelementptr inbounds i8, ptr %msg.i12, i32 4
  %flags.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 0, i32 1
  %buf4.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i12, i32 0, i32 3
  %66 = getelementptr inbounds i8, ptr %buf2.i40, i32 1
  %67 = getelementptr inbounds i8, ptr %msg.i41, i32 4
  %flags.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41, i32 0, i32 1
  %buf4.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i41, i32 0, i32 3
  %68 = getelementptr inbounds i8, ptr %buf2.i55, i32 1
  %69 = getelementptr inbounds i8, ptr %msg.i56, i32 4
  %flags.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 0, i32 1
  %buf4.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 0, i32 3
  %70 = getelementptr inbounds i8, ptr %msg.i70, i32 4
  %flags.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 0, i32 1
  %buf3.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 0, i32 3
  %arrayinit.element.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 1
  %flags8.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 1, i32 1
  %len9.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 1, i32 2
  %buf11.i80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i70, i32 1, i32 3
  %71 = getelementptr inbounds i8, ptr %buf2.i87, i32 1
  %72 = getelementptr inbounds i8, ptr %msg.i88, i32 4
  %flags.i91 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i88, i32 0, i32 1
  %buf4.i93 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i88, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv61120 = phi i32 [ 0, %for.body.lr.ph ], [ %conv61, %for.inc.for.body_crit_edge ]
  %written.0119 = phi i8 [ 0, %for.body.lr.ph ], [ %written.1, %for.inc.for.body_crit_edge ]
  %chunkpos.0118 = phi i8 [ 0, %for.body.lr.ph ], [ %inc82113, %for.inc.for.body_crit_edge ]
  %position.0117 = phi i16 [ 0, %for.body.lr.ph ], [ %inc135, %for.inc.for.body_crit_edge ]
  %crc.0116 = phi i16 [ 0, %for.body.lr.ph ], [ %crc.addr.1.7.i, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %written.0119)
  %cmp65 = icmp eq i8 %written.0119, 0
  br i1 %cmp65, label %if.then67, label %if.end81

if.then67:                                        ; preds = %for.body
  %add = add nuw nsw i32 %conv61120, %37
  %73 = lshr i32 %add, 8
  %conv70 = trunc i32 %73 to i8
  %74 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv70, ptr %buf, align 2
  %conv76 = trunc i32 %add to i8
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv76, ptr %3, align 1
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -127, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i11) #8
  %77 = call ptr @memset(ptr %64, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i12) #8
  %78 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %65, align 4
  %79 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %config.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 4
  %conv.i14 = zext i8 %82 to i16
  %83 = ptrtoint ptr %msg.i12 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.i14, ptr %msg.i12, align 4
  %84 = ptrtoint ptr %flags.i15 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %flags.i15, align 2
  store i16 4, ptr %65, align 4
  %85 = ptrtoint ptr %buf4.i17 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %buf2.i11, ptr %buf4.i17, align 4
  %86 = ptrtoint ptr %buf2.i11 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 41, ptr %buf2.i11, align 1
  %87 = call ptr @memcpy(ptr %64, ptr %buf, i32 3)
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %1, align 4
  %call12.i19 = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %msg.i12, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i19)
  %cmp13.not.i20 = icmp eq i32 %call12.i19, 1
  br i1 %cmp13.not.i20, label %if.then67.if.end81.thread_crit_edge, label %do.end18.i23

if.then67.if.end81.thread_crit_edge:              ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81.thread

do.end18.i23:                                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %config.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %91, align 4
  %conv22.i21 = zext i8 %93 to i32
  %call23.i22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i21, i32 noundef %call12.i19) #12
  br label %if.end81.thread

if.end81.thread:                                  ; preds = %do.end18.i23, %if.then67.if.end81.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i12) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i11) #8
  br label %if.end90

if.end81:                                         ; preds = %for.body
  %inc = add i8 %written.0119, 1
  %inc82 = add i8 %chunkpos.0118, 1
  %94 = and i8 %inc, 3
  %rem = zext i8 %94 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp84 = icmp eq i8 %94, 0
  br i1 %cmp84, label %if.then86, label %if.end81.if.end90_crit_edge

if.end81.if.end90_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then86:                                        ; preds = %if.end81
  %95 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data, align 4
  %sub = add nsw i32 %conv61120, -3
  %arrayidx88 = getelementptr i8, ptr %96, i32 %sub
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i25) #8
  %97 = call ptr @memset(ptr %62, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i26) #8
  %98 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %63, align 4
  %99 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %config.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %100, align 4
  %conv.i28 = zext i8 %102 to i16
  %103 = ptrtoint ptr %msg.i26 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv.i28, ptr %msg.i26, align 4
  %104 = ptrtoint ptr %flags.i29 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %flags.i29, align 2
  store i16 5, ptr %63, align 4
  %105 = ptrtoint ptr %buf4.i31 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %buf2.i25, ptr %buf4.i31, align 4
  %106 = ptrtoint ptr %buf2.i25 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %inc82, ptr %buf2.i25, align 1
  %107 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %arrayidx88, align 1
  %109 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %108, ptr %62, align 1
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %call12.i33 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %msg.i26, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i33)
  %cmp13.not.i34 = icmp eq i32 %call12.i33, 1
  br i1 %cmp13.not.i34, label %if.then86.nxt200x_writebytes.exit38_crit_edge, label %do.end18.i37

if.then86.nxt200x_writebytes.exit38_crit_edge:    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit38

do.end18.i37:                                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %config.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %113, align 4
  %conv22.i35 = zext i8 %115 to i32
  %call23.i36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i35, i32 noundef %call12.i33) #12
  br label %nxt200x_writebytes.exit38

nxt200x_writebytes.exit38:                        ; preds = %do.end18.i37, %if.then86.nxt200x_writebytes.exit38_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i26) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i25) #8
  br label %if.end90

if.end90:                                         ; preds = %nxt200x_writebytes.exit38, %if.end81.if.end90_crit_edge, %if.end81.thread
  %rem114 = phi i32 [ 1, %if.end81.thread ], [ 0, %nxt200x_writebytes.exit38 ], [ %rem, %if.end81.if.end90_crit_edge ]
  %116 = phi i8 [ 1, %if.end81.thread ], [ 0, %nxt200x_writebytes.exit38 ], [ %94, %if.end81.if.end90_crit_edge ]
  %inc82113 = phi i8 [ 41, %if.end81.thread ], [ %inc82, %nxt200x_writebytes.exit38 ], [ %inc82, %if.end81.if.end90_crit_edge ]
  %inc112 = phi i8 [ 1, %if.end81.thread ], [ %inc, %nxt200x_writebytes.exit38 ], [ %inc, %if.end81.if.end90_crit_edge ]
  %chunkpos.1111 = phi i8 [ 40, %if.end81.thread ], [ %chunkpos.0118, %nxt200x_writebytes.exit38 ], [ %chunkpos.0118, %if.end81.if.end90_crit_edge ]
  %crc.1110 = phi i16 [ 0, %if.end81.thread ], [ %crc.0116, %nxt200x_writebytes.exit38 ], [ %crc.0116, %if.end81.if.end90_crit_edge ]
  %117 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data, align 4
  %arrayidx92 = getelementptr i8, ptr %118, i32 %conv61120
  %119 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx92, align 1
  %conv3.i = zext i8 %120 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %conv7.i39 = zext i16 %crc.1110 to i32
  %xor.i = xor i32 %shl.i, %conv7.i39
  %and9.i = and i32 %xor.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  %shl11.i = shl i16 %crc.1110, 1
  %xor12.i = xor i16 %shl11.i, 4129
  %crc.addr.1.i = select i1 %tobool.not.i, i16 %shl11.i, i16 %xor12.i
  %conv8.i = shl nuw nsw i32 %conv3.i, 9
  %conv7.1.i = zext i16 %crc.addr.1.i to i32
  %xor.1.i = xor i32 %conv8.i, %conv7.1.i
  %and9.1.i = and i32 %xor.1.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.1.i)
  %tobool.not.1.i = icmp eq i32 %and9.1.i, 0
  %shl11.1.i = shl i16 %crc.addr.1.i, 1
  %xor12.1.i = xor i16 %shl11.1.i, 4129
  %crc.addr.1.1.i = select i1 %tobool.not.1.i, i16 %shl11.1.i, i16 %xor12.1.i
  %conv8.1.i = shl nuw nsw i32 %conv3.i, 10
  %conv7.2.i = zext i16 %crc.addr.1.1.i to i32
  %xor.2.i = xor i32 %conv8.1.i, %conv7.2.i
  %and9.2.i = and i32 %xor.2.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.2.i)
  %tobool.not.2.i = icmp eq i32 %and9.2.i, 0
  %shl11.2.i = shl i16 %crc.addr.1.1.i, 1
  %xor12.2.i = xor i16 %shl11.2.i, 4129
  %crc.addr.1.2.i = select i1 %tobool.not.2.i, i16 %shl11.2.i, i16 %xor12.2.i
  %shl18.1.i = shl nuw nsw i32 %conv3.i, 11
  %conv7.3.i = zext i16 %crc.addr.1.2.i to i32
  %xor.3.i = xor i32 %shl18.1.i, %conv7.3.i
  %and9.3.i = and i32 %xor.3.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.3.i)
  %tobool.not.3.i = icmp eq i32 %and9.3.i, 0
  %shl11.3.i = shl i16 %crc.addr.1.2.i, 1
  %xor12.3.i = xor i16 %shl11.3.i, 4129
  %crc.addr.1.3.i = select i1 %tobool.not.3.i, i16 %shl11.3.i, i16 %xor12.3.i
  %shl18.2.i = shl nuw nsw i32 %conv3.i, 12
  %conv7.4.i = zext i16 %crc.addr.1.3.i to i32
  %xor.4.i = xor i32 %shl18.2.i, %conv7.4.i
  %and9.4.i = and i32 %xor.4.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.4.i)
  %tobool.not.4.i = icmp eq i32 %and9.4.i, 0
  %shl11.4.i = shl i16 %crc.addr.1.3.i, 1
  %xor12.4.i = xor i16 %shl11.4.i, 4129
  %crc.addr.1.4.i = select i1 %tobool.not.4.i, i16 %shl11.4.i, i16 %xor12.4.i
  %shl18.3.i = shl nuw nsw i32 %conv3.i, 13
  %conv7.5.i = zext i16 %crc.addr.1.4.i to i32
  %xor.5.i = xor i32 %shl18.3.i, %conv7.5.i
  %and9.5.i = and i32 %xor.5.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.5.i)
  %tobool.not.5.i = icmp eq i32 %and9.5.i, 0
  %shl11.5.i = shl i16 %crc.addr.1.4.i, 1
  %xor12.5.i = xor i16 %shl11.5.i, 4129
  %crc.addr.1.5.i = select i1 %tobool.not.5.i, i16 %shl11.5.i, i16 %xor12.5.i
  %shl18.4.i = shl nuw nsw i32 %conv3.i, 14
  %conv7.6.i = zext i16 %crc.addr.1.5.i to i32
  %xor.6.i = xor i32 %shl18.4.i, %conv7.6.i
  %and9.6.i = and i32 %xor.6.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.6.i)
  %tobool.not.6.i = icmp eq i32 %and9.6.i, 0
  %shl11.6.i = shl i16 %crc.addr.1.5.i, 1
  %xor12.6.i = xor i16 %shl11.6.i, 4129
  %crc.addr.1.6.i = select i1 %tobool.not.6.i, i16 %shl11.6.i, i16 %xor12.6.i
  %shl18.5.i = shl nuw nsw i32 %conv3.i, 15
  %conv7.7.i = zext i16 %crc.addr.1.6.i to i32
  %xor.7.i = xor i32 %shl18.5.i, %conv7.7.i
  %and9.7.i = and i32 %xor.7.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.7.i)
  %tobool.not.7.i = icmp eq i32 %and9.7.i, 0
  %shl11.7.i = shl i16 %crc.addr.1.6.i, 1
  %xor12.7.i = xor i16 %shl11.7.i, 4129
  %crc.addr.1.7.i = select i1 %tobool.not.7.i, i16 %shl11.7.i, i16 %xor12.7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %inc112)
  %cmp95 = icmp eq i8 %inc112, -1
  %.pre = add nuw nsw i32 %conv61120, 1
  br i1 %cmp95, label %if.end90.if.then102_crit_edge, label %lor.lhs.false

if.end90.if.then102_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then102

lor.lhs.false:                                    ; preds = %if.end90
  %121 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.pre, i32 %122)
  %cmp100 = icmp eq i32 %.pre, %122
  br i1 %cmp100, label %lor.lhs.false.if.then102_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.if.then102_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then102

if.then102:                                       ; preds = %lor.lhs.false.if.then102_crit_edge, %if.end90.if.then102_crit_edge
  %add104 = sub nuw nsw i8 5, %116
  %sub107 = add i8 %add104, %chunkpos.1111
  %add114 = sub nsw i32 %.pre, %rem114
  %arrayidx115 = getelementptr i8, ptr %118, i32 %add114
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i40) #8
  %123 = call ptr @memset(ptr %66, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i41) #8
  %124 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 -1, ptr %67, align 4
  %125 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %config.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %126, align 4
  %conv.i43 = zext i8 %128 to i16
  %129 = ptrtoint ptr %msg.i41 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv.i43, ptr %msg.i41, align 4
  %130 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %flags.i44, align 2
  %narrow = add nuw nsw i8 %116, 1
  %conv3.i46 = zext i8 %narrow to i16
  store i16 %conv3.i46, ptr %67, align 4
  %131 = ptrtoint ptr %buf4.i47 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %buf2.i40, ptr %buf4.i47, align 4
  %132 = ptrtoint ptr %buf2.i40 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %sub107, ptr %buf2.i40, align 1
  %133 = call ptr @memcpy(ptr %66, ptr %arrayidx115, i32 %rem114)
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 4
  %call12.i49 = call i32 @i2c_transfer(ptr noundef %135, ptr noundef nonnull %msg.i41, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i49)
  %cmp13.not.i50 = icmp eq i32 %call12.i49, 1
  br i1 %cmp13.not.i50, label %if.then102.nxt200x_writebytes.exit54_crit_edge, label %do.end18.i53

if.then102.nxt200x_writebytes.exit54_crit_edge:   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit54

do.end18.i53:                                     ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %config.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %137, align 4
  %conv22.i51 = zext i8 %139 to i32
  %call23.i52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i51, i32 noundef %call12.i49) #12
  br label %nxt200x_writebytes.exit54

nxt200x_writebytes.exit54:                        ; preds = %do.end18.i53, %if.then102.nxt200x_writebytes.exit54_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i41) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i40) #8
  %140 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %buf, align 2
  %conv125 = trunc i16 %crc.addr.1.7.i to i8
  %141 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv125, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i55) #8
  %142 = call ptr @memset(ptr %68, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i56) #8
  %143 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -1, ptr %69, align 4
  %144 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %config.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %145, align 4
  %conv.i58 = zext i8 %147 to i16
  %148 = ptrtoint ptr %msg.i56 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv.i58, ptr %msg.i56, align 4
  %149 = ptrtoint ptr %flags.i59 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 0, ptr %flags.i59, align 2
  store i16 3, ptr %69, align 4
  %150 = ptrtoint ptr %buf4.i61 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %buf2.i55, ptr %buf4.i61, align 4
  %151 = ptrtoint ptr %buf2.i55 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 44, ptr %buf2.i55, align 1
  %152 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %buf, align 2
  %154 = ptrtoint ptr %68 to i32
  call void @__asan_storeN_noabort(i32 %154, i32 2)
  store i16 %153, ptr %68, align 1
  %155 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %1, align 4
  %call12.i63 = call i32 @i2c_transfer(ptr noundef %156, ptr noundef nonnull %msg.i56, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i63)
  %cmp13.not.i64 = icmp eq i32 %call12.i63, 1
  br i1 %cmp13.not.i64, label %nxt200x_writebytes.exit54.nxt200x_writebytes.exit68_crit_edge, label %do.end18.i67

nxt200x_writebytes.exit54.nxt200x_writebytes.exit68_crit_edge: ; preds = %nxt200x_writebytes.exit54
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit68

do.end18.i67:                                     ; preds = %nxt200x_writebytes.exit54
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %config.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %158, align 4
  %conv22.i65 = zext i8 %160 to i32
  %call23.i66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i65, i32 noundef %call12.i63) #12
  br label %nxt200x_writebytes.exit68

nxt200x_writebytes.exit68:                        ; preds = %do.end18.i67, %nxt200x_writebytes.exit54.nxt200x_writebytes.exit68_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i56) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i55) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2.i69) #8
  %161 = ptrtoint ptr %reg2.i69 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 42, ptr %reg2.i69, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i70) #8
  %162 = call ptr @memset(ptr %70, i32 255, i32 16)
  %163 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %config.i, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %164, align 4
  %conv.i72 = zext i8 %166 to i16
  %167 = ptrtoint ptr %msg.i70 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv.i72, ptr %msg.i70, align 4
  %168 = ptrtoint ptr %flags.i73 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 0, ptr %flags.i73, align 2
  %169 = ptrtoint ptr %70 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 1, ptr %70, align 4
  %170 = ptrtoint ptr %buf3.i75 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %reg2.i69, ptr %buf3.i75, align 4
  %171 = load i8, ptr %164, align 4
  %conv7.i77 = zext i8 %171 to i16
  %172 = ptrtoint ptr %arrayinit.element.i76 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv7.i77, ptr %arrayinit.element.i76, align 4
  %173 = ptrtoint ptr %flags8.i78 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 1, ptr %flags8.i78, align 2
  %174 = ptrtoint ptr %len9.i79 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 1, ptr %len9.i79, align 4
  %175 = ptrtoint ptr %buf11.i80 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %buf, ptr %buf11.i80, align 4
  %176 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %1, align 4
  %call.i81 = call i32 @i2c_transfer(ptr noundef %177, ptr noundef nonnull %msg.i70, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i81)
  %cmp.not.i82 = icmp eq i32 %call.i81, 2
  br i1 %cmp.not.i82, label %nxt200x_writebytes.exit68.nxt200x_readbytes.exit86_crit_edge, label %do.end.i85

nxt200x_writebytes.exit68.nxt200x_readbytes.exit86_crit_edge: ; preds = %nxt200x_writebytes.exit68
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_readbytes.exit86

do.end.i85:                                       ; preds = %nxt200x_writebytes.exit68
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %config.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %179, align 4
  %conv16.i83 = zext i8 %181 to i32
  %call17.i84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv16.i83, i32 noundef %call.i81) #12
  br label %nxt200x_readbytes.exit86

nxt200x_readbytes.exit86:                         ; preds = %do.end.i85, %nxt200x_writebytes.exit68.nxt200x_readbytes.exit86_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i70) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2.i69) #8
  %182 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 -128, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i87) #8
  %183 = call ptr @memset(ptr %71, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i88) #8
  %184 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 -1, ptr %72, align 4
  %185 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %config.i, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %186, align 4
  %conv.i90 = zext i8 %188 to i16
  %189 = ptrtoint ptr %msg.i88 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv.i90, ptr %msg.i88, align 4
  %190 = ptrtoint ptr %flags.i91 to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %flags.i91, align 2
  store i16 2, ptr %72, align 4
  %191 = ptrtoint ptr %buf4.i93 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %buf2.i87, ptr %buf4.i93, align 4
  %192 = ptrtoint ptr %buf2.i87 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 43, ptr %buf2.i87, align 1
  %193 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 -128, ptr %71, align 1
  %194 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %1, align 4
  %call12.i95 = call i32 @i2c_transfer(ptr noundef %195, ptr noundef nonnull %msg.i88, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i95)
  %cmp13.not.i96 = icmp eq i32 %call12.i95, 1
  br i1 %cmp13.not.i96, label %nxt200x_readbytes.exit86.nxt200x_writebytes.exit100_crit_edge, label %do.end18.i99

nxt200x_readbytes.exit86.nxt200x_writebytes.exit100_crit_edge: ; preds = %nxt200x_readbytes.exit86
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit100

do.end18.i99:                                     ; preds = %nxt200x_readbytes.exit86
  call void @__sanitizer_cov_trace_pc() #10
  %196 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %config.i, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %197, align 4
  %conv22.i97 = zext i8 %199 to i32
  %call23.i98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i97, i32 noundef %call12.i95) #12
  br label %nxt200x_writebytes.exit100

nxt200x_writebytes.exit100:                       ; preds = %do.end18.i99, %nxt200x_readbytes.exit86.nxt200x_writebytes.exit100_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i88) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i87) #8
  br label %for.inc

for.inc:                                          ; preds = %nxt200x_writebytes.exit100, %lor.lhs.false.for.inc_crit_edge
  %written.1 = phi i8 [ 0, %nxt200x_writebytes.exit100 ], [ %inc112, %lor.lhs.false.for.inc_crit_edge ]
  %inc135 = add i16 %position.0117, 1
  %conv61 = zext i16 %inc135 to i32
  %200 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %fw, align 4
  %cmp = icmp ugt i32 %201, %conv61
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %nxt200x_writebytes.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nxt200x_microcontroller_stop(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %reg2.i = alloca [1 x i8], align 1
  %msg.i30 = alloca [2 x %struct.i2c_msg], align 4
  %buf2.i = alloca [256 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #8
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt200x_microcontroller_stop.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt200x_microcontroller_stop, %if.then5)) #8
          to label %do.end8 [label %if.then5], !srcloc !177

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt200x_microcontroller_stop.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.34) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %demod_chip = getelementptr inbounds %struct.nxt200x_state, ptr %state, i32 0, i32 3
  %1 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %demod_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch.selectcmp = icmp eq i32 %2, 2
  %switch.select = select i1 %switch.selectcmp, i32 16, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %switch.selectcmp28 = icmp eq i32 %2, 1
  %switch.select29 = select i1 %switch.selectcmp28, i32 64, i32 %switch.select
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -128, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i) #8
  %4 = getelementptr inbounds i8, ptr %buf2.i, i32 1
  %5 = getelementptr inbounds i8, ptr %buf2.i, i32 2
  %6 = call ptr @memset(ptr %5, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196607, ptr %7, align 4
  %config.i = getelementptr inbounds %struct.nxt200x_state, ptr %state, i32 0, i32 1
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
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf2.i, ptr %buf4.i, align 4
  %16 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 34, ptr %buf2.i, align 1
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -128, ptr %4, align 1
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %call12.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.not.i, label %do.end8.nxt200x_writebytes.exit_crit_edge, label %do.end18.i

do.end8.nxt200x_writebytes.exit_crit_edge:        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit

do.end18.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4
  %conv22.i = zext i8 %23 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i, i32 noundef %call12.i) #12
  br label %nxt200x_writebytes.exit

nxt200x_writebytes.exit:                          ; preds = %do.end18.i, %do.end8.nxt200x_writebytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i) #8
  %24 = getelementptr inbounds i8, ptr %msg.i30, i32 4
  %flags.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30, i32 0, i32 1
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30, i32 1
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30, i32 1, i32 1
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30, i32 1, i32 2
  %buf11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i30, i32 1, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %nxt200x_writebytes.exit
  %counter.035 = phi i8 [ 0, %nxt200x_writebytes.exit ], [ %inc, %if.end17.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2.i) #8
  %25 = ptrtoint ptr %reg2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 49, ptr %reg2.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i30) #8
  %26 = call ptr @memset(ptr %24, i32 255, i32 16)
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  %conv.i32 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i30 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i32, ptr %msg.i30, align 4
  %32 = ptrtoint ptr %flags.i33 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i33, align 2
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %24, align 4
  %34 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %reg2.i, ptr %buf3.i, align 4
  %35 = load i8, ptr %28, align 4
  %conv7.i = zext i8 %35 to i16
  %36 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv7.i, ptr %arrayinit.element.i, align 4
  %37 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 1, ptr %flags8.i, align 2
  %38 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %len9.i, align 4
  %39 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf, ptr %buf11.i, align 4
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i30, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %while.body.nxt200x_readbytes.exit_crit_edge, label %do.end.i

while.body.nxt200x_readbytes.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_readbytes.exit

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 4
  %conv16.i = zext i8 %45 to i32
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv16.i, i32 noundef %call.i) #12
  br label %nxt200x_readbytes.exit

nxt200x_readbytes.exit:                           ; preds = %do.end.i, %while.body.nxt200x_readbytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i30) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2.i) #8
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %buf, align 1
  %conv13 = zext i8 %47 to i32
  %and = and i32 %switch.select29, %conv13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end17, label %nxt200x_readbytes.exit.cleanup_crit_edge

nxt200x_readbytes.exit.cleanup_crit_edge:         ; preds = %nxt200x_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %nxt200x_readbytes.exit
  call void @msleep(i32 noundef 10) #8
  %inc = add nuw nsw i8 %counter.035, 1
  %cmp = icmp ult i8 %counter.035, 19
  br i1 %cmp, label %if.end17.while.body_crit_edge, label %do.end20

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.end20:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %nxt200x_readbytes.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nxt2004_load_firmware(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %fw) unnamed_addr #0 align 64 {
entry:
  %buf2.i55 = alloca [256 x i8], align 1
  %msg.i56 = alloca %struct.i2c_msg, align 4
  %reg2.i = alloca [1 x i8], align 1
  %msg.i50 = alloca [2 x %struct.i2c_msg], align 4
  %buf2.i36 = alloca [256 x i8], align 1
  %msg.i37 = alloca %struct.i2c_msg, align 4
  %buf2.i21 = alloca [256 x i8], align 1
  %msg.i22 = alloca %struct.i2c_msg, align 4
  %buf2.i7 = alloca [256 x i8], align 1
  %msg.i8 = alloca %struct.i2c_msg, align 4
  %buf2.i = alloca [256 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #8
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 2, !annotation !178
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !178
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 2, !annotation !178
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.do.body9_crit_edge, label %do.body1

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt2004_load_firmware.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt2004_load_firmware, %if.then5)) #8
          to label %do.body9 [label %if.then5], !srcloc !177

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt2004_load_firmware.__UNIQUE_ID_ddebug301, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.47) #8
  br label %do.body9

do.body9:                                         ; preds = %if.then5, %do.body1, %entry.do.body9_crit_edge
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %do.body9.do.end30_crit_edge, label %do.body12

do.body9.do.end30_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

do.body12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt2004_load_firmware.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt2004_load_firmware, %if.then24)) #8
          to label %do.end30 [label %if.then24], !srcloc !177

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt2004_load_firmware.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.31, i32 noundef %10) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.body12, %do.body9.do.end30_crit_edge
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i) #8
  %11 = getelementptr inbounds i8, ptr %buf2.i, i32 1
  %12 = getelementptr inbounds i8, ptr %buf2.i, i32 2
  %13 = call ptr @memset(ptr %12, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 196607, ptr %14, align 4
  %config.i = getelementptr inbounds %struct.nxt200x_state, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %config.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %conv.i = zext i8 %19 to i16
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf2.i, ptr %buf4.i, align 4
  %23 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 43, ptr %buf2.i, align 1
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -128, ptr %11, align 1
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call12.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.not.i, label %do.end30.nxt200x_writebytes.exit_crit_edge, label %do.end18.i

do.end30.nxt200x_writebytes.exit_crit_edge:       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit

do.end18.i:                                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  %conv22.i = zext i8 %30 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i, i32 noundef %call12.i) #12
  br label %nxt200x_writebytes.exit

nxt200x_writebytes.exit:                          ; preds = %do.end18.i, %do.end30.nxt200x_writebytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i) #8
  %31 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp72.not = icmp eq i32 %32, 0
  br i1 %cmp72.not, label %nxt200x_writebytes.exit.for.end_crit_edge, label %for.body.lr.ph

nxt200x_writebytes.exit.for.end_crit_edge:        ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %nxt200x_writebytes.exit
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %conv75 = phi i32 [ 0, %for.body.lr.ph ], [ %conv, %for.body.for.body_crit_edge ]
  %position.074 = phi i16 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %crc.073 = phi i16 [ 0, %for.body.lr.ph ], [ %crc.addr.1.7.i, %for.body.for.body_crit_edge ]
  %arrayidx34 = getelementptr i8, ptr %34, i32 %conv75
  %35 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx34, align 1
  %conv3.i = zext i8 %36 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %conv7.i = zext i16 %crc.073 to i32
  %xor.i = xor i32 %shl.i, %conv7.i
  %and9.i = and i32 %xor.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  %shl11.i = shl i16 %crc.073, 1
  %xor12.i = xor i16 %shl11.i, 4129
  %crc.addr.1.i = select i1 %tobool.not.i, i16 %shl11.i, i16 %xor12.i
  %conv8.i = shl nuw nsw i32 %conv3.i, 9
  %conv7.1.i = zext i16 %crc.addr.1.i to i32
  %xor.1.i = xor i32 %conv8.i, %conv7.1.i
  %and9.1.i = and i32 %xor.1.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.1.i)
  %tobool.not.1.i = icmp eq i32 %and9.1.i, 0
  %shl11.1.i = shl i16 %crc.addr.1.i, 1
  %xor12.1.i = xor i16 %shl11.1.i, 4129
  %crc.addr.1.1.i = select i1 %tobool.not.1.i, i16 %shl11.1.i, i16 %xor12.1.i
  %conv8.1.i = shl nuw nsw i32 %conv3.i, 10
  %conv7.2.i = zext i16 %crc.addr.1.1.i to i32
  %xor.2.i = xor i32 %conv8.1.i, %conv7.2.i
  %and9.2.i = and i32 %xor.2.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.2.i)
  %tobool.not.2.i = icmp eq i32 %and9.2.i, 0
  %shl11.2.i = shl i16 %crc.addr.1.1.i, 1
  %xor12.2.i = xor i16 %shl11.2.i, 4129
  %crc.addr.1.2.i = select i1 %tobool.not.2.i, i16 %shl11.2.i, i16 %xor12.2.i
  %shl18.1.i = shl nuw nsw i32 %conv3.i, 11
  %conv7.3.i = zext i16 %crc.addr.1.2.i to i32
  %xor.3.i = xor i32 %shl18.1.i, %conv7.3.i
  %and9.3.i = and i32 %xor.3.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.3.i)
  %tobool.not.3.i = icmp eq i32 %and9.3.i, 0
  %shl11.3.i = shl i16 %crc.addr.1.2.i, 1
  %xor12.3.i = xor i16 %shl11.3.i, 4129
  %crc.addr.1.3.i = select i1 %tobool.not.3.i, i16 %shl11.3.i, i16 %xor12.3.i
  %shl18.2.i = shl nuw nsw i32 %conv3.i, 12
  %conv7.4.i = zext i16 %crc.addr.1.3.i to i32
  %xor.4.i = xor i32 %shl18.2.i, %conv7.4.i
  %and9.4.i = and i32 %xor.4.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.4.i)
  %tobool.not.4.i = icmp eq i32 %and9.4.i, 0
  %shl11.4.i = shl i16 %crc.addr.1.3.i, 1
  %xor12.4.i = xor i16 %shl11.4.i, 4129
  %crc.addr.1.4.i = select i1 %tobool.not.4.i, i16 %shl11.4.i, i16 %xor12.4.i
  %shl18.3.i = shl nuw nsw i32 %conv3.i, 13
  %conv7.5.i = zext i16 %crc.addr.1.4.i to i32
  %xor.5.i = xor i32 %shl18.3.i, %conv7.5.i
  %and9.5.i = and i32 %xor.5.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.5.i)
  %tobool.not.5.i = icmp eq i32 %and9.5.i, 0
  %shl11.5.i = shl i16 %crc.addr.1.4.i, 1
  %xor12.5.i = xor i16 %shl11.5.i, 4129
  %crc.addr.1.5.i = select i1 %tobool.not.5.i, i16 %shl11.5.i, i16 %xor12.5.i
  %shl18.4.i = shl nuw nsw i32 %conv3.i, 14
  %conv7.6.i = zext i16 %crc.addr.1.5.i to i32
  %xor.6.i = xor i32 %shl18.4.i, %conv7.6.i
  %and9.6.i = and i32 %xor.6.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.6.i)
  %tobool.not.6.i = icmp eq i32 %and9.6.i, 0
  %shl11.6.i = shl i16 %crc.addr.1.5.i, 1
  %xor12.6.i = xor i16 %shl11.6.i, 4129
  %crc.addr.1.6.i = select i1 %tobool.not.6.i, i16 %shl11.6.i, i16 %xor12.6.i
  %shl18.5.i = shl nuw nsw i32 %conv3.i, 15
  %conv7.7.i = zext i16 %crc.addr.1.6.i to i32
  %xor.7.i = xor i32 %shl18.5.i, %conv7.7.i
  %and9.7.i = and i32 %xor.7.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.7.i)
  %tobool.not.7.i = icmp eq i32 %and9.7.i, 0
  %shl11.7.i = shl i16 %crc.addr.1.6.i, 1
  %xor12.7.i = xor i16 %shl11.7.i, 4129
  %crc.addr.1.7.i = select i1 %tobool.not.7.i, i16 %shl11.7.i, i16 %xor12.7.i
  %inc = add i16 %position.074, 1
  %conv = zext i16 %inc to i32
  %cmp = icmp ugt i32 %32, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %extract = lshr i16 %crc.addr.1.7.i, 8
  %extract.t78 = trunc i16 %extract to i8
  %extract.t = trunc i16 %crc.addr.1.7.i to i8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %nxt200x_writebytes.exit.for.end_crit_edge
  %crc.0.lcssa.off0 = phi i8 [ 0, %nxt200x_writebytes.exit.for.end_crit_edge ], [ %extract.t, %for.end.loopexit ]
  %crc.0.lcssa.off8 = phi i8 [ 0, %nxt200x_writebytes.exit.for.end_crit_edge ], [ %extract.t78, %for.end.loopexit ]
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 16, ptr %buf, align 2
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %3, align 1
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -127, ptr %5, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i7) #8
  %40 = getelementptr inbounds i8, ptr %buf2.i7, i32 1
  %41 = getelementptr inbounds i8, ptr %buf2.i7, i32 4
  %42 = call ptr @memset(ptr %41, i32 255, i32 252)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i8) #8
  %43 = getelementptr inbounds i8, ptr %msg.i8, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 327679, ptr %43, align 4
  %45 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %config.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 4
  %conv.i10 = zext i8 %48 to i16
  %49 = ptrtoint ptr %msg.i8 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i10, ptr %msg.i8, align 4
  %flags.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i11 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i11, align 2
  %buf4.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 3
  %51 = ptrtoint ptr %buf4.i13 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf2.i7, ptr %buf4.i13, align 4
  %52 = ptrtoint ptr %buf2.i7 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 41, ptr %buf2.i7, align 1
  %53 = call ptr @memcpy(ptr %40, ptr %buf, i32 3)
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %call12.i15 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %msg.i8, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i15)
  %cmp13.not.i16 = icmp eq i32 %call12.i15, 1
  br i1 %cmp13.not.i16, label %for.end.nxt200x_writebytes.exit20_crit_edge, label %do.end18.i19

for.end.nxt200x_writebytes.exit20_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit20

do.end18.i19:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 4
  %conv22.i17 = zext i8 %59 to i32
  %call23.i18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i17, i32 noundef %call12.i15) #12
  br label %nxt200x_writebytes.exit20

nxt200x_writebytes.exit20:                        ; preds = %do.end18.i19, %for.end.nxt200x_writebytes.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i8) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i7) #8
  %60 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp4876.not = icmp eq i32 %61, 0
  br i1 %cmp4876.not, label %nxt200x_writebytes.exit20.for.end77_crit_edge, label %for.body50.lr.ph

nxt200x_writebytes.exit20.for.end77_crit_edge:    ; preds = %nxt200x_writebytes.exit20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end77

for.body50.lr.ph:                                 ; preds = %nxt200x_writebytes.exit20
  %data51 = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %62 = getelementptr inbounds i8, ptr %buf2.i21, i32 1
  %63 = getelementptr inbounds i8, ptr %msg.i22, i32 4
  %flags.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 0, i32 1
  %buf4.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 0, i32 3
  br label %for.body50

for.body50:                                       ; preds = %nxt200x_writebytes.exit35.for.body50_crit_edge, %for.body50.lr.ph
  %64 = phi i32 [ %61, %for.body50.lr.ph ], [ %87, %nxt200x_writebytes.exit35.for.body50_crit_edge ]
  %conv4677 = phi i32 [ 0, %for.body50.lr.ph ], [ %conv46, %nxt200x_writebytes.exit35.for.body50_crit_edge ]
  %65 = ptrtoint ptr %data51 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data51, align 4
  %arrayidx53 = getelementptr i8, ptr %66, i32 %conv4677
  %sub = sub i32 %64, %conv4677
  %67 = call i32 @llvm.umin.i32(i32 %sub, i32 255)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i21) #8
  %68 = call ptr @memset(ptr %62, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i22) #8
  %69 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %63, align 4
  %70 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %config.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 4
  %conv.i24 = zext i8 %73 to i16
  %74 = ptrtoint ptr %msg.i22 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i24, ptr %msg.i22, align 4
  %75 = ptrtoint ptr %flags.i25 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %flags.i25, align 2
  %76 = trunc i32 %67 to i16
  %conv3.i27 = add nuw nsw i16 %76, 1
  store i16 %conv3.i27, ptr %63, align 4
  %77 = ptrtoint ptr %buf4.i28 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buf2.i21, ptr %buf4.i28, align 4
  %78 = ptrtoint ptr %buf2.i21 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 44, ptr %buf2.i21, align 1
  %79 = call ptr @memcpy(ptr %62, ptr %arrayidx53, i32 %67)
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %call12.i30 = call i32 @i2c_transfer(ptr noundef %81, ptr noundef nonnull %msg.i22, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i30)
  %cmp13.not.i31 = icmp eq i32 %call12.i30, 1
  br i1 %cmp13.not.i31, label %for.body50.nxt200x_writebytes.exit35_crit_edge, label %do.end18.i34

for.body50.nxt200x_writebytes.exit35_crit_edge:   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit35

do.end18.i34:                                     ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %config.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 4
  %conv22.i32 = zext i8 %85 to i32
  %call23.i33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i32, i32 noundef %call12.i30) #12
  br label %nxt200x_writebytes.exit35

nxt200x_writebytes.exit35:                        ; preds = %do.end18.i34, %for.body50.nxt200x_writebytes.exit35_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i22) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i21) #8
  %86 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fw, align 4
  %sub65 = sub i32 %87, %conv4677
  %88 = call i32 @llvm.umin.i32(i32 %sub65, i32 255)
  %add = add nuw nsw i32 %88, %conv4677
  %conv46 = and i32 %add, 65535
  %cmp48 = icmp ugt i32 %87, %conv46
  br i1 %cmp48, label %nxt200x_writebytes.exit35.for.body50_crit_edge, label %nxt200x_writebytes.exit35.for.end77_crit_edge

nxt200x_writebytes.exit35.for.end77_crit_edge:    ; preds = %nxt200x_writebytes.exit35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end77

nxt200x_writebytes.exit35.for.body50_crit_edge:   ; preds = %nxt200x_writebytes.exit35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body50

for.end77:                                        ; preds = %nxt200x_writebytes.exit35.for.end77_crit_edge, %nxt200x_writebytes.exit20.for.end77_crit_edge
  %89 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %crc.0.lcssa.off8, ptr %buf, align 2
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %crc.0.lcssa.off0, ptr %3, align 1
  %91 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool87.not = icmp eq i32 %91, 0
  br i1 %tobool87.not, label %for.end77.do.end111_crit_edge, label %do.body89

for.end77.do.end111_crit_edge:                    ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end111

do.body89:                                        ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt2004_load_firmware.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt2004_load_firmware, %if.then101)) #8
          to label %do.end111 [label %if.then101], !srcloc !177

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %buf, align 2
  %conv103 = zext i8 %93 to i32
  %94 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %3, align 1
  %conv105 = zext i8 %95 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt2004_load_firmware.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.49, i32 noundef %conv103, i32 noundef %conv105) #8
  br label %do.end111

do.end111:                                        ; preds = %if.then101, %do.body89, %for.end77.do.end111_crit_edge
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i36) #8
  %96 = getelementptr inbounds i8, ptr %buf2.i36, i32 1
  %97 = getelementptr inbounds i8, ptr %buf2.i36, i32 3
  %98 = call ptr @memset(ptr %97, i32 255, i32 253)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i37) #8
  %99 = getelementptr inbounds i8, ptr %msg.i37, i32 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 262143, ptr %99, align 4
  %101 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %config.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 4
  %conv.i39 = zext i8 %104 to i16
  %105 = ptrtoint ptr %msg.i37 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i39, ptr %msg.i37, align 4
  %flags.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i40, align 2
  %buf4.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i37, i32 0, i32 3
  %107 = ptrtoint ptr %buf4.i42 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %buf2.i36, ptr %buf4.i42, align 4
  %108 = ptrtoint ptr %buf2.i36 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 44, ptr %buf2.i36, align 1
  %109 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %buf, align 2
  %111 = ptrtoint ptr %96 to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 %110, ptr %96, align 1
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %call12.i44 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %msg.i37, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i44)
  %cmp13.not.i45 = icmp eq i32 %call12.i44, 1
  br i1 %cmp13.not.i45, label %do.end111.nxt200x_writebytes.exit49_crit_edge, label %do.end18.i48

do.end111.nxt200x_writebytes.exit49_crit_edge:    ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit49

do.end18.i48:                                     ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %config.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %115, align 4
  %conv22.i46 = zext i8 %117 to i32
  %call23.i47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i46, i32 noundef %call12.i44) #12
  br label %nxt200x_writebytes.exit49

nxt200x_writebytes.exit49:                        ; preds = %do.end18.i48, %do.end111.nxt200x_writebytes.exit49_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i37) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i36) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2.i) #8
  %118 = ptrtoint ptr %reg2.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 44, ptr %reg2.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i50) #8
  %119 = getelementptr inbounds i8, ptr %msg.i50, i32 4
  %120 = call ptr @memset(ptr %119, i32 255, i32 16)
  %121 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %config.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %122, align 4
  %conv.i52 = zext i8 %124 to i16
  %125 = ptrtoint ptr %msg.i50 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv.i52, ptr %msg.i50, align 4
  %flags.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 0, i32 1
  %126 = ptrtoint ptr %flags.i53 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %flags.i53, align 2
  %127 = ptrtoint ptr %119 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 1, ptr %119, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 0, i32 3
  %128 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %reg2.i, ptr %buf3.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1
  %129 = load i8, ptr %122, align 4
  %conv7.i54 = zext i8 %129 to i16
  %130 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv7.i54, ptr %arrayinit.element.i, align 4
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1, i32 1
  %131 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 1, ptr %flags8.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1, i32 2
  %132 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 1, ptr %len9.i, align 4
  %buf11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i50, i32 1, i32 3
  %133 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %buf, ptr %buf11.i, align 4
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %135, ptr noundef nonnull %msg.i50, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %nxt200x_writebytes.exit49.nxt200x_readbytes.exit_crit_edge, label %do.end.i

nxt200x_writebytes.exit49.nxt200x_readbytes.exit_crit_edge: ; preds = %nxt200x_writebytes.exit49
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_readbytes.exit

do.end.i:                                         ; preds = %nxt200x_writebytes.exit49
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %config.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %137, align 4
  %conv16.i = zext i8 %139 to i32
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv16.i, i32 noundef %call.i) #12
  br label %nxt200x_readbytes.exit

nxt200x_readbytes.exit:                           ; preds = %do.end.i, %nxt200x_writebytes.exit49.nxt200x_readbytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i50) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2.i) #8
  %140 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 -128, ptr %buf, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i55) #8
  %141 = getelementptr inbounds i8, ptr %buf2.i55, i32 1
  %142 = getelementptr inbounds i8, ptr %buf2.i55, i32 2
  %143 = call ptr @memset(ptr %142, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i56) #8
  %144 = getelementptr inbounds i8, ptr %msg.i56, i32 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 196607, ptr %144, align 4
  %146 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %config.i, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %147, align 4
  %conv.i58 = zext i8 %149 to i16
  %150 = ptrtoint ptr %msg.i56 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv.i58, ptr %msg.i56, align 4
  %flags.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 0, i32 1
  %151 = ptrtoint ptr %flags.i59 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %flags.i59, align 2
  %buf4.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 0, i32 3
  %152 = ptrtoint ptr %buf4.i61 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %buf2.i55, ptr %buf4.i61, align 4
  %153 = ptrtoint ptr %buf2.i55 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 43, ptr %buf2.i55, align 1
  %154 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -128, ptr %141, align 1
  %155 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %1, align 4
  %call12.i63 = call i32 @i2c_transfer(ptr noundef %156, ptr noundef nonnull %msg.i56, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i63)
  %cmp13.not.i64 = icmp eq i32 %call12.i63, 1
  br i1 %cmp13.not.i64, label %nxt200x_readbytes.exit.nxt200x_writebytes.exit68_crit_edge, label %do.end18.i67

nxt200x_readbytes.exit.nxt200x_writebytes.exit68_crit_edge: ; preds = %nxt200x_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit68

do.end18.i67:                                     ; preds = %nxt200x_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %config.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %158, align 4
  %conv22.i65 = zext i8 %160 to i32
  %call23.i66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i65, i32 noundef %call12.i63) #12
  br label %nxt200x_writebytes.exit68

nxt200x_writebytes.exit68:                        ; preds = %do.end18.i67, %nxt200x_readbytes.exit.nxt200x_writebytes.exit68_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i56) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i55) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nxt2004_microcontroller_init(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %reg2.i = alloca [1 x i8], align 1
  %msg.i107 = alloca [2 x %struct.i2c_msg], align 4
  %buf2.i93 = alloca [256 x i8], align 1
  %msg.i94 = alloca %struct.i2c_msg, align 4
  %buf2.i79 = alloca [256 x i8], align 1
  %msg.i80 = alloca %struct.i2c_msg, align 4
  %buf2.i65 = alloca [256 x i8], align 1
  %msg.i66 = alloca %struct.i2c_msg, align 4
  %buf2.i51 = alloca [256 x i8], align 1
  %msg.i52 = alloca %struct.i2c_msg, align 4
  %buf2.i = alloca [256 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 7
  %7 = getelementptr inbounds [9 x i8], ptr %buf, i32 0, i32 8
  %8 = call ptr @memset(ptr %buf, i32 255, i32 9)
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt2004_microcontroller_init.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt2004_microcontroller_init, %if.then5)) #8
          to label %do.end8 [label %if.then5], !srcloc !177

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt2004_microcontroller_init.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.50) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i) #8
  %10 = getelementptr inbounds i8, ptr %buf2.i, i32 1
  %11 = getelementptr inbounds i8, ptr %buf2.i, i32 2
  %12 = call ptr @memset(ptr %11, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 196607, ptr %13, align 4
  %config.i = getelementptr inbounds %struct.nxt200x_state, ptr %state, i32 0, i32 1
  %15 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  %conv.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf2.i, ptr %buf4.i, align 4
  %22 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 43, ptr %buf2.i, align 1
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %10, align 1
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state, align 4
  %call12.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.not.i, label %do.end8.nxt200x_writebytes.exit_crit_edge, label %do.end18.i

do.end8.nxt200x_writebytes.exit_crit_edge:        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit

do.end18.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  %conv22.i = zext i8 %29 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i, i32 noundef %call12.i) #12
  br label %nxt200x_writebytes.exit

nxt200x_writebytes.exit:                          ; preds = %do.end18.i, %do.end8.nxt200x_writebytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i) #8
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 112, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i51) #8
  %31 = getelementptr inbounds i8, ptr %buf2.i51, i32 1
  %32 = getelementptr inbounds i8, ptr %buf2.i51, i32 2
  %33 = call ptr @memset(ptr %32, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i52) #8
  %34 = getelementptr inbounds i8, ptr %msg.i52, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 196607, ptr %34, align 4
  %36 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %37, align 4
  %conv.i54 = zext i8 %39 to i16
  %40 = ptrtoint ptr %msg.i52 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i54, ptr %msg.i52, align 4
  %flags.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i55 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i55, align 2
  %buf4.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i52, i32 0, i32 3
  %42 = ptrtoint ptr %buf4.i57 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %buf2.i51, ptr %buf4.i57, align 4
  %43 = ptrtoint ptr %buf2.i51 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 52, ptr %buf2.i51, align 1
  %44 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 112, ptr %31, align 1
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state, align 4
  %call12.i59 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i52, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i59)
  %cmp13.not.i60 = icmp eq i32 %call12.i59, 1
  br i1 %cmp13.not.i60, label %nxt200x_writebytes.exit.nxt200x_writebytes.exit64_crit_edge, label %do.end18.i63

nxt200x_writebytes.exit.nxt200x_writebytes.exit64_crit_edge: ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit64

do.end18.i63:                                     ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  %conv22.i61 = zext i8 %50 to i32
  %call23.i62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i61, i32 noundef %call12.i59) #12
  br label %nxt200x_writebytes.exit64

nxt200x_writebytes.exit64:                        ; preds = %do.end18.i63, %nxt200x_writebytes.exit.nxt200x_writebytes.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i52) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i51) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i65) #8
  %51 = getelementptr inbounds i8, ptr %buf2.i65, i32 1
  %52 = getelementptr inbounds i8, ptr %buf2.i65, i32 2
  %53 = call ptr @memset(ptr %52, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i66) #8
  %54 = getelementptr inbounds i8, ptr %msg.i66, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 196607, ptr %54, align 4
  %56 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 4
  %conv.i68 = zext i8 %59 to i16
  %60 = ptrtoint ptr %msg.i66 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i68, ptr %msg.i66, align 4
  %flags.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %flags.i69, align 2
  %buf4.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 3
  %62 = ptrtoint ptr %buf4.i71 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %buf2.i65, ptr %buf4.i71, align 4
  %63 = ptrtoint ptr %buf2.i65 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 53, ptr %buf2.i65, align 1
  %64 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 4, ptr %51, align 1
  %65 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %state, align 4
  %call12.i73 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %msg.i66, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i73)
  %cmp13.not.i74 = icmp eq i32 %call12.i73, 1
  br i1 %cmp13.not.i74, label %nxt200x_writebytes.exit64.nxt200x_writebytes.exit78_crit_edge, label %do.end18.i77

nxt200x_writebytes.exit64.nxt200x_writebytes.exit78_crit_edge: ; preds = %nxt200x_writebytes.exit64
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit78

do.end18.i77:                                     ; preds = %nxt200x_writebytes.exit64
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %config.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 4
  %conv22.i75 = zext i8 %70 to i32
  %call23.i76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i75, i32 noundef %call12.i73) #12
  br label %nxt200x_writebytes.exit78

nxt200x_writebytes.exit78:                        ; preds = %do.end18.i77, %nxt200x_writebytes.exit64.nxt200x_writebytes.exit78_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i66) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i65) #8
  %71 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %buf, align 1
  %72 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 35, ptr %0, align 1
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 69, ptr %1, align 1
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 103, ptr %2, align 1
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -119, ptr %3, align 1
  %76 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -85, ptr %4, align 1
  %77 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 -51, ptr %5, align 1
  %78 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 -17, ptr %6, align 1
  %79 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -64, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i79) #8
  %80 = getelementptr inbounds i8, ptr %buf2.i79, i32 1
  %81 = getelementptr inbounds i8, ptr %buf2.i79, i32 10
  %82 = call ptr @memset(ptr %81, i32 255, i32 246)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i80) #8
  %83 = getelementptr inbounds i8, ptr %msg.i80, i32 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 720895, ptr %83, align 4
  %85 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %config.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %86, align 4
  %conv.i82 = zext i8 %88 to i16
  %89 = ptrtoint ptr %msg.i80 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i82, ptr %msg.i80, align 4
  %flags.i83 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i80, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i83 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %flags.i83, align 2
  %buf4.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i80, i32 0, i32 3
  %91 = ptrtoint ptr %buf4.i85 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %buf2.i79, ptr %buf4.i85, align 4
  %92 = ptrtoint ptr %buf2.i79 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 54, ptr %buf2.i79, align 1
  %93 = call ptr @memcpy(ptr %80, ptr %buf, i32 9)
  %94 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %state, align 4
  %call12.i87 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %msg.i80, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i87)
  %cmp13.not.i88 = icmp eq i32 %call12.i87, 1
  br i1 %cmp13.not.i88, label %nxt200x_writebytes.exit78.nxt200x_writebytes.exit92_crit_edge, label %do.end18.i91

nxt200x_writebytes.exit78.nxt200x_writebytes.exit92_crit_edge: ; preds = %nxt200x_writebytes.exit78
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit92

do.end18.i91:                                     ; preds = %nxt200x_writebytes.exit78
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %config.i, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %97, align 4
  %conv22.i89 = zext i8 %99 to i32
  %call23.i90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i89, i32 noundef %call12.i87) #12
  br label %nxt200x_writebytes.exit92

nxt200x_writebytes.exit92:                        ; preds = %do.end18.i91, %nxt200x_writebytes.exit78.nxt200x_writebytes.exit92_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i80) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i79) #8
  %100 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -128, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i93) #8
  %101 = getelementptr inbounds i8, ptr %buf2.i93, i32 1
  %102 = getelementptr inbounds i8, ptr %buf2.i93, i32 2
  %103 = call ptr @memset(ptr %102, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i94) #8
  %104 = getelementptr inbounds i8, ptr %msg.i94, i32 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 196607, ptr %104, align 4
  %106 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %config.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %107, align 4
  %conv.i96 = zext i8 %109 to i16
  %110 = ptrtoint ptr %msg.i94 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.i96, ptr %msg.i94, align 4
  %flags.i97 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 0, i32 1
  %111 = ptrtoint ptr %flags.i97 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %flags.i97, align 2
  %buf4.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i94, i32 0, i32 3
  %112 = ptrtoint ptr %buf4.i99 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %buf2.i93, ptr %buf4.i99, align 4
  %113 = ptrtoint ptr %buf2.i93 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 33, ptr %buf2.i93, align 1
  %114 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -128, ptr %101, align 1
  %115 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %state, align 4
  %call12.i101 = call i32 @i2c_transfer(ptr noundef %116, ptr noundef nonnull %msg.i94, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i101)
  %cmp13.not.i102 = icmp eq i32 %call12.i101, 1
  br i1 %cmp13.not.i102, label %nxt200x_writebytes.exit92.nxt200x_writebytes.exit106_crit_edge, label %do.end18.i105

nxt200x_writebytes.exit92.nxt200x_writebytes.exit106_crit_edge: ; preds = %nxt200x_writebytes.exit92
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit106

do.end18.i105:                                    ; preds = %nxt200x_writebytes.exit92
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %config.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %118, align 4
  %conv22.i103 = zext i8 %120 to i32
  %call23.i104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i103, i32 noundef %call12.i101) #12
  br label %nxt200x_writebytes.exit106

nxt200x_writebytes.exit106:                       ; preds = %do.end18.i105, %nxt200x_writebytes.exit92.nxt200x_writebytes.exit106_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i94) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i93) #8
  %121 = getelementptr inbounds i8, ptr %msg.i107, i32 4
  %flags.i110 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i107, i32 0, i32 1
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i107, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i107, i32 1
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i107, i32 1, i32 1
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i107, i32 1, i32 2
  %buf11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i107, i32 1, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end38.while.body_crit_edge, %nxt200x_writebytes.exit106
  %counter.0112 = phi i8 [ 0, %nxt200x_writebytes.exit106 ], [ %inc, %if.end38.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2.i) #8
  %122 = ptrtoint ptr %reg2.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 33, ptr %reg2.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i107) #8
  %123 = call ptr @memset(ptr %121, i32 255, i32 16)
  %124 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %config.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %125, align 4
  %conv.i109 = zext i8 %127 to i16
  %128 = ptrtoint ptr %msg.i107 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv.i109, ptr %msg.i107, align 4
  %129 = ptrtoint ptr %flags.i110 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %flags.i110, align 2
  %130 = ptrtoint ptr %121 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 1, ptr %121, align 4
  %131 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %reg2.i, ptr %buf3.i, align 4
  %132 = load i8, ptr %125, align 4
  %conv7.i = zext i8 %132 to i16
  %133 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv7.i, ptr %arrayinit.element.i, align 4
  %134 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 1, ptr %flags8.i, align 2
  %135 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 1, ptr %len9.i, align 4
  %136 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %buf, ptr %buf11.i, align 4
  %137 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %138, ptr noundef nonnull %msg.i107, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %while.body.nxt200x_readbytes.exit_crit_edge, label %do.end.i

while.body.nxt200x_readbytes.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_readbytes.exit

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %config.i, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %140, align 4
  %conv16.i = zext i8 %142 to i32
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv16.i, i32 noundef %call.i) #12
  br label %nxt200x_readbytes.exit

nxt200x_readbytes.exit:                           ; preds = %do.end.i, %while.body.nxt200x_readbytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i107) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2.i) #8
  %143 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp35 = icmp eq i8 %144, 0
  br i1 %cmp35, label %nxt200x_readbytes.exit.cleanup_crit_edge, label %if.end38

nxt200x_readbytes.exit.cleanup_crit_edge:         ; preds = %nxt200x_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %nxt200x_readbytes.exit
  call void @msleep(i32 noundef 10) #8
  %inc = add nuw nsw i8 %counter.0112, 1
  %cmp = icmp ult i8 %counter.0112, 19
  br i1 %cmp, label %if.end38.while.body_crit_edge, label %do.end41

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.end41:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %nxt200x_readbytes.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nxt200x_writereg_multibyte(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg, ptr nocapture noundef readonly %data, i8 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  %reg2.i = alloca [1 x i8], align 1
  %msg.i44 = alloca [2 x %struct.i2c_msg], align 4
  %buf2.i30 = alloca [256 x i8], align 1
  %msg.i31 = alloca %struct.i2c_msg, align 4
  %buf2.i16 = alloca [256 x i8], align 1
  %msg.i17 = alloca %struct.i2c_msg, align 4
  %buf2.i2 = alloca [256 x i8], align 1
  %msg.i3 = alloca %struct.i2c_msg, align 4
  %buf2.i = alloca [256 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #8
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !178
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt200x_writereg_multibyte.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt200x_writereg_multibyte, %if.then5)) #8
          to label %do.end8 [label %if.then5], !srcloc !177

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt200x_writereg_multibyte.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.52) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i) #8
  %2 = getelementptr inbounds i8, ptr %buf2.i, i32 1
  %3 = getelementptr inbounds i8, ptr %buf2.i, i32 2
  %4 = call ptr @memset(ptr %3, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.nxt200x_state, ptr %state, i32 0, i32 1
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
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf2.i, ptr %buf4.i, align 4
  %14 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 53, ptr %buf2.i, align 1
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %reg, ptr %2, align 1
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %call12.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.not.i, label %do.end8.nxt200x_writebytes.exit_crit_edge, label %do.end18.i

do.end8.nxt200x_writebytes.exit_crit_edge:        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit

do.end18.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 4
  %conv22.i = zext i8 %21 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i, i32 noundef %call12.i) #12
  br label %nxt200x_writebytes.exit

nxt200x_writebytes.exit:                          ; preds = %do.end18.i, %do.end8.nxt200x_writebytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i2) #8
  %22 = getelementptr inbounds i8, ptr %buf2.i2, i32 1
  %23 = call ptr @memset(ptr %22, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i3) #8
  %24 = getelementptr inbounds i8, ptr %msg.i3, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %24, align 4
  %26 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 4
  %conv.i5 = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i3 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i5, ptr %msg.i3, align 4
  %flags.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i6 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i6, align 2
  %32 = zext i8 %len to i16
  %conv3.i = add nuw nsw i16 %32, 1
  store i16 %conv3.i, ptr %24, align 4
  %buf4.i8 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i3, i32 0, i32 3
  %33 = ptrtoint ptr %buf4.i8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf2.i2, ptr %buf4.i8, align 4
  %conv2.i = zext i8 %len to i32
  %34 = ptrtoint ptr %buf2.i2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 54, ptr %buf2.i2, align 1
  %35 = call ptr @memcpy(ptr %22, ptr %data, i32 %conv2.i)
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %state, align 4
  %call12.i10 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i3, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i10)
  %cmp13.not.i11 = icmp eq i32 %call12.i10, 1
  br i1 %cmp13.not.i11, label %nxt200x_writebytes.exit.nxt200x_writebytes.exit15_crit_edge, label %do.end18.i14

nxt200x_writebytes.exit.nxt200x_writebytes.exit15_crit_edge: ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit15

do.end18.i14:                                     ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %config.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 4
  %conv22.i12 = zext i8 %41 to i32
  %call23.i13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i12, i32 noundef %call12.i10) #12
  br label %nxt200x_writebytes.exit15

nxt200x_writebytes.exit15:                        ; preds = %do.end18.i14, %nxt200x_writebytes.exit.nxt200x_writebytes.exit15_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i3) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i2) #8
  %demod_chip = getelementptr inbounds %struct.nxt200x_state, ptr %state, i32 0, i32 3
  %42 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %demod_chip, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %43, label %nxt200x_writebytes.exit15.cleanup_crit_edge [
    i32 1, label %nxt200x_writebytes.exit15.sw.epilog_crit_edge
    i32 2, label %sw.bb11
  ]

nxt200x_writebytes.exit15.sw.epilog_crit_edge:    ; preds = %nxt200x_writebytes.exit15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

nxt200x_writebytes.exit15.cleanup_crit_edge:      ; preds = %nxt200x_writebytes.exit15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb11:                                          ; preds = %nxt200x_writebytes.exit15
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %reg to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %and17 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %spec.select = select i1 %tobool18.not, i8 80, i8 48
  %attr.0 = select i1 %tobool12.not, i8 48, i8 %spec.select
  %or27 = or i8 %attr.0, %len
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %nxt200x_writebytes.exit15.sw.epilog_crit_edge
  %storemerge1 = phi i8 [ %or27, %sw.bb11 ], [ %len, %nxt200x_writebytes.exit15.sw.epilog_crit_edge ]
  %storemerge = phi i8 [ -128, %sw.bb11 ], [ 2, %nxt200x_writebytes.exit15.sw.epilog_crit_edge ]
  %45 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %storemerge, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i16) #8
  %46 = getelementptr inbounds i8, ptr %buf2.i16, i32 1
  %47 = getelementptr inbounds i8, ptr %buf2.i16, i32 2
  %48 = call ptr @memset(ptr %47, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i17) #8
  %49 = getelementptr inbounds i8, ptr %msg.i17, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 196607, ptr %49, align 4
  %51 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %config.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 4
  %conv.i19 = zext i8 %54 to i16
  %55 = ptrtoint ptr %msg.i17 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i19, ptr %msg.i17, align 4
  %flags.i20 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i20 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i20, align 2
  %buf4.i22 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i17, i32 0, i32 3
  %57 = ptrtoint ptr %buf4.i22 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %buf2.i16, ptr %buf4.i22, align 4
  %58 = ptrtoint ptr %buf2.i16 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 52, ptr %buf2.i16, align 1
  %59 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %storemerge1, ptr %46, align 1
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %state, align 4
  %call12.i24 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msg.i17, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i24)
  %cmp13.not.i25 = icmp eq i32 %call12.i24, 1
  br i1 %cmp13.not.i25, label %sw.epilog.nxt200x_writebytes.exit29_crit_edge, label %do.end18.i28

sw.epilog.nxt200x_writebytes.exit29_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit29

do.end18.i28:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %63, align 4
  %conv22.i26 = zext i8 %65 to i32
  %call23.i27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i26, i32 noundef %call12.i24) #12
  br label %nxt200x_writebytes.exit29

nxt200x_writebytes.exit29:                        ; preds = %do.end18.i28, %sw.epilog.nxt200x_writebytes.exit29_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i17) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i16) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i30) #8
  %66 = getelementptr inbounds i8, ptr %buf2.i30, i32 1
  %67 = getelementptr inbounds i8, ptr %buf2.i30, i32 2
  %68 = call ptr @memset(ptr %67, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i31) #8
  %69 = getelementptr inbounds i8, ptr %msg.i31, i32 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 196607, ptr %69, align 4
  %71 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config.i, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %72, align 4
  %conv.i33 = zext i8 %74 to i16
  %75 = ptrtoint ptr %msg.i31 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i33, ptr %msg.i31, align 4
  %flags.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 1
  %76 = ptrtoint ptr %flags.i34 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i34, align 2
  %buf4.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31, i32 0, i32 3
  %77 = ptrtoint ptr %buf4.i36 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buf2.i30, ptr %buf4.i36, align 4
  %78 = ptrtoint ptr %buf2.i30 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 33, ptr %buf2.i30, align 1
  %79 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %buf, align 1
  %81 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %66, align 1
  %82 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %state, align 4
  %call12.i38 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msg.i31, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i38)
  %cmp13.not.i39 = icmp eq i32 %call12.i38, 1
  br i1 %cmp13.not.i39, label %nxt200x_writebytes.exit29.nxt200x_writebytes.exit43_crit_edge, label %do.end18.i42

nxt200x_writebytes.exit29.nxt200x_writebytes.exit43_crit_edge: ; preds = %nxt200x_writebytes.exit29
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit43

do.end18.i42:                                     ; preds = %nxt200x_writebytes.exit29
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %config.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 4
  %conv22.i40 = zext i8 %87 to i32
  %call23.i41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i40, i32 noundef %call12.i38) #12
  br label %nxt200x_writebytes.exit43

nxt200x_writebytes.exit43:                        ; preds = %do.end18.i42, %nxt200x_writebytes.exit29.nxt200x_writebytes.exit43_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i31) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i30) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2.i) #8
  %88 = ptrtoint ptr %reg2.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 33, ptr %reg2.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i44) #8
  %89 = getelementptr inbounds i8, ptr %msg.i44, i32 4
  %90 = call ptr @memset(ptr %89, i32 255, i32 16)
  %91 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %config.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %92, align 4
  %conv.i46 = zext i8 %94 to i16
  %95 = ptrtoint ptr %msg.i44 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv.i46, ptr %msg.i44, align 4
  %flags.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 0, i32 1
  %96 = ptrtoint ptr %flags.i47 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags.i47, align 2
  %97 = ptrtoint ptr %89 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 1, ptr %89, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 0, i32 3
  %98 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %reg2.i, ptr %buf3.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 1
  %99 = load i8, ptr %92, align 4
  %conv7.i = zext i8 %99 to i16
  %100 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv7.i, ptr %arrayinit.element.i, align 4
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 1, i32 1
  %101 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 1, ptr %flags8.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 1, i32 2
  %102 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 1, ptr %len9.i, align 4
  %buf11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44, i32 1, i32 3
  %103 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %buf, ptr %buf11.i, align 4
  %104 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %msg.i44, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %nxt200x_writebytes.exit43.nxt200x_readbytes.exit_crit_edge, label %do.end.i

nxt200x_writebytes.exit43.nxt200x_readbytes.exit_crit_edge: ; preds = %nxt200x_writebytes.exit43
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_readbytes.exit

do.end.i:                                         ; preds = %nxt200x_writebytes.exit43
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %config.i, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %107, align 4
  %conv16.i = zext i8 %109 to i32
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv16.i, i32 noundef %call.i) #12
  br label %nxt200x_readbytes.exit

nxt200x_readbytes.exit:                           ; preds = %do.end.i, %nxt200x_writebytes.exit43.nxt200x_readbytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i44) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2.i) #8
  %110 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %demod_chip, align 4
  %112 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %111, label %nxt200x_readbytes.exit.cleanup_crit_edge [
    i32 1, label %sw.bb33
    i32 2, label %sw.bb39
  ]

nxt200x_readbytes.exit.cleanup_crit_edge:         ; preds = %nxt200x_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb33:                                          ; preds = %nxt200x_readbytes.exit
  %113 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %buf, align 1
  %115 = and i8 %114, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %cmp = icmp eq i8 %115, 0
  br i1 %cmp, label %sw.bb33.cleanup_crit_edge, label %sw.bb33.do.end49_crit_edge

sw.bb33.do.end49_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb39:                                          ; preds = %nxt200x_readbytes.exit
  %116 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %cmp41 = icmp eq i8 %117, 0
  br i1 %cmp41, label %sw.bb39.cleanup_crit_edge, label %sw.bb39.do.end49_crit_edge

sw.bb39.do.end49_crit_edge:                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end49

sw.bb39.cleanup_crit_edge:                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end49:                                         ; preds = %sw.bb39.do.end49_crit_edge, %sw.bb33.do.end49_crit_edge
  %conv51 = zext i8 %reg to i32
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %conv51) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %sw.bb39.cleanup_crit_edge, %sw.bb33.cleanup_crit_edge, %nxt200x_readbytes.exit.cleanup_crit_edge, %nxt200x_writebytes.exit15.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nxt200x_readreg_multibyte(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg, ptr noundef %data, i8 noundef zeroext %len) unnamed_addr #0 align 64 {
entry:
  %reg2.i47 = alloca [1 x i8], align 1
  %msg.i48 = alloca [2 x %struct.i2c_msg], align 4
  %buf2.i33 = alloca [256 x i8], align 1
  %msg.i34 = alloca %struct.i2c_msg, align 4
  %buf2.i19 = alloca [256 x i8], align 1
  %msg.i20 = alloca %struct.i2c_msg, align 4
  %reg2.i = alloca [1 x i8], align 1
  %msg.i15 = alloca [2 x %struct.i2c_msg], align 4
  %buf2.i1 = alloca [256 x i8], align 1
  %msg.i2 = alloca %struct.i2c_msg, align 4
  %buf2.i = alloca [256 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt200x_readreg_multibyte.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt200x_readreg_multibyte, %if.then5)) #8
          to label %do.end8 [label %if.then5], !srcloc !177

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt200x_readreg_multibyte.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.54) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i) #8
  %1 = getelementptr inbounds i8, ptr %buf2.i, i32 1
  %2 = getelementptr inbounds i8, ptr %buf2.i, i32 2
  %3 = call ptr @memset(ptr %2, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 196607, ptr %4, align 4
  %config.i = getelementptr inbounds %struct.nxt200x_state, ptr %state, i32 0, i32 1
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
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf2.i, ptr %buf4.i, align 4
  %13 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 53, ptr %buf2.i, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %reg, ptr %1, align 1
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state, align 4
  %call12.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.not.i, label %do.end8.nxt200x_writebytes.exit_crit_edge, label %do.end18.i

do.end8.nxt200x_writebytes.exit_crit_edge:        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit

do.end18.i:                                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 4
  %conv22.i = zext i8 %20 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i, i32 noundef %call12.i) #12
  br label %nxt200x_writebytes.exit

nxt200x_writebytes.exit:                          ; preds = %do.end18.i, %do.end8.nxt200x_writebytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i) #8
  %demod_chip = getelementptr inbounds %struct.nxt200x_state, ptr %state, i32 0, i32 3
  %21 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %demod_chip, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %22, label %nxt200x_writebytes.exit.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb13
  ]

nxt200x_writebytes.exit.cleanup_crit_edge:        ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %nxt200x_writebytes.exit
  %24 = and i8 %len, -128
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i1) #8
  %25 = getelementptr inbounds i8, ptr %buf2.i1, i32 1
  %26 = getelementptr inbounds i8, ptr %buf2.i1, i32 2
  %27 = call ptr @memset(ptr %26, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #8
  %28 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 196607, ptr %28, align 4
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 4
  %conv.i4 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i4, ptr %msg.i2, align 4
  %flags.i5 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i5 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i5, align 2
  %buf4.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %36 = ptrtoint ptr %buf4.i7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf2.i1, ptr %buf4.i7, align 4
  %37 = ptrtoint ptr %buf2.i1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 52, ptr %buf2.i1, align 1
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %24, ptr %25, align 1
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state, align 4
  %call12.i9 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i9)
  %cmp13.not.i10 = icmp eq i32 %call12.i9, 1
  br i1 %cmp13.not.i10, label %sw.bb.nxt200x_writebytes.exit14_crit_edge, label %do.end18.i13

sw.bb.nxt200x_writebytes.exit14_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit14

do.end18.i13:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %config.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 4
  %conv22.i11 = zext i8 %44 to i32
  %call23.i12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i11, i32 noundef %call12.i9) #12
  br label %nxt200x_writebytes.exit14

nxt200x_writebytes.exit14:                        ; preds = %do.end18.i13, %sw.bb.nxt200x_writebytes.exit14_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i1) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2.i) #8
  %45 = ptrtoint ptr %reg2.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %reg, ptr %reg2.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i15) #8
  %46 = getelementptr inbounds i8, ptr %msg.i15, i32 4
  %47 = call ptr @memset(ptr %46, i32 255, i32 16)
  %48 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 4
  %conv.i17 = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i15 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i17, ptr %msg.i15, align 4
  %flags.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i18 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i18, align 2
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1, ptr %46, align 4
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 3
  %55 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %reg2.i, ptr %buf3.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1
  %56 = load i8, ptr %49, align 4
  %conv7.i = zext i8 %56 to i16
  %57 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv7.i, ptr %arrayinit.element.i, align 4
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1, i32 1
  %58 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %flags8.i, align 2
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1, i32 2
  %conv10.i = zext i8 %len to i16
  %59 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv10.i, ptr %len9.i, align 4
  %buf11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 1, i32 3
  %60 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %data, ptr %buf11.i, align 4
  %61 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %62, ptr noundef nonnull %msg.i15, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %nxt200x_writebytes.exit14.nxt200x_readbytes.exit_crit_edge, label %do.end.i

nxt200x_writebytes.exit14.nxt200x_readbytes.exit_crit_edge: ; preds = %nxt200x_writebytes.exit14
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_readbytes.exit

do.end.i:                                         ; preds = %nxt200x_writebytes.exit14
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %config.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 4
  %conv16.i = zext i8 %66 to i32
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv16.i, i32 noundef %call.i) #12
  br label %nxt200x_readbytes.exit

nxt200x_readbytes.exit:                           ; preds = %do.end.i, %nxt200x_writebytes.exit14.nxt200x_readbytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i15) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2.i) #8
  br label %cleanup

sw.bb13:                                          ; preds = %nxt200x_writebytes.exit
  %conv14 = zext i8 %reg to i32
  %and15 = and i32 %conv14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %and21 = and i32 %conv14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %spec.select = select i1 %tobool22.not, i8 64, i8 32
  %attr.0 = select i1 %tobool16.not, i8 32, i8 %spec.select
  %conv30 = zext i8 %len to i32
  %or = or i8 %attr.0, %len
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i19) #8
  %67 = getelementptr inbounds i8, ptr %buf2.i19, i32 1
  %68 = getelementptr inbounds i8, ptr %buf2.i19, i32 2
  %69 = call ptr @memset(ptr %68, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i20) #8
  %70 = getelementptr inbounds i8, ptr %msg.i20, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 196607, ptr %70, align 4
  %72 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %config.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 4
  %conv.i22 = zext i8 %75 to i16
  %76 = ptrtoint ptr %msg.i20 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i22, ptr %msg.i20, align 4
  %flags.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 0, i32 1
  %77 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %flags.i23, align 2
  %buf4.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 0, i32 3
  %78 = ptrtoint ptr %buf4.i25 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %buf2.i19, ptr %buf4.i25, align 4
  %79 = ptrtoint ptr %buf2.i19 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 52, ptr %buf2.i19, align 1
  %80 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %or, ptr %67, align 1
  %81 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %state, align 4
  %call12.i27 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %msg.i20, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i27)
  %cmp13.not.i28 = icmp eq i32 %call12.i27, 1
  br i1 %cmp13.not.i28, label %sw.bb13.nxt200x_writebytes.exit32_crit_edge, label %do.end18.i31

sw.bb13.nxt200x_writebytes.exit32_crit_edge:      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit32

do.end18.i31:                                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %config.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %84, align 4
  %conv22.i29 = zext i8 %86 to i32
  %call23.i30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i29, i32 noundef %call12.i27) #12
  br label %nxt200x_writebytes.exit32

nxt200x_writebytes.exit32:                        ; preds = %do.end18.i31, %sw.bb13.nxt200x_writebytes.exit32_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i20) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i19) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i33) #8
  %87 = getelementptr inbounds i8, ptr %buf2.i33, i32 1
  %88 = getelementptr inbounds i8, ptr %buf2.i33, i32 2
  %89 = call ptr @memset(ptr %88, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i34) #8
  %90 = getelementptr inbounds i8, ptr %msg.i34, i32 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 196607, ptr %90, align 4
  %92 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %config.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %93, align 4
  %conv.i36 = zext i8 %95 to i16
  %96 = ptrtoint ptr %msg.i34 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i36, ptr %msg.i34, align 4
  %flags.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 1
  %97 = ptrtoint ptr %flags.i37 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %flags.i37, align 2
  %buf4.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 3
  %98 = ptrtoint ptr %buf4.i39 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %buf2.i33, ptr %buf4.i39, align 4
  %99 = ptrtoint ptr %buf2.i33 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 33, ptr %buf2.i33, align 1
  %100 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -128, ptr %87, align 1
  %101 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %state, align 4
  %call12.i41 = call i32 @i2c_transfer(ptr noundef %102, ptr noundef nonnull %msg.i34, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i41)
  %cmp13.not.i42 = icmp eq i32 %call12.i41, 1
  br i1 %cmp13.not.i42, label %nxt200x_writebytes.exit32.nxt200x_writebytes.exit46_crit_edge, label %do.end18.i45

nxt200x_writebytes.exit32.nxt200x_writebytes.exit46_crit_edge: ; preds = %nxt200x_writebytes.exit32
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit46

do.end18.i45:                                     ; preds = %nxt200x_writebytes.exit32
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %config.i, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %104, align 4
  %conv22.i43 = zext i8 %106 to i32
  %call23.i44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i43, i32 noundef %call12.i41) #12
  br label %nxt200x_writebytes.exit46

nxt200x_writebytes.exit46:                        ; preds = %do.end18.i45, %nxt200x_writebytes.exit32.nxt200x_writebytes.exit46_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i34) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i33) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len)
  %cmp68.not = icmp eq i8 %len, 0
  br i1 %cmp68.not, label %nxt200x_writebytes.exit46.cleanup_crit_edge, label %for.body.lr.ph

nxt200x_writebytes.exit46.cleanup_crit_edge:      ; preds = %nxt200x_writebytes.exit46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %nxt200x_writebytes.exit46
  %107 = getelementptr inbounds i8, ptr %msg.i48, i32 4
  %flags.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 1
  %buf3.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 3
  %arrayinit.element.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1
  %flags8.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1, i32 1
  %len9.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1, i32 2
  %buf11.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1, i32 3
  br label %for.body

for.body:                                         ; preds = %nxt200x_readbytes.exit64.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %nxt200x_readbytes.exit64.for.body_crit_edge ]
  %108 = trunc i32 %i.069 to i8
  %conv36 = add i8 %108, 54
  %arrayidx = getelementptr i8, ptr %data, i32 %i.069
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2.i47) #8
  %109 = ptrtoint ptr %reg2.i47 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv36, ptr %reg2.i47, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i48) #8
  %110 = call ptr @memset(ptr %107, i32 255, i32 16)
  %111 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %config.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %112, align 4
  %conv.i50 = zext i8 %114 to i16
  %115 = ptrtoint ptr %msg.i48 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv.i50, ptr %msg.i48, align 4
  %116 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %flags.i51, align 2
  %117 = ptrtoint ptr %107 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 1, ptr %107, align 4
  %118 = ptrtoint ptr %buf3.i53 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %reg2.i47, ptr %buf3.i53, align 4
  %119 = load i8, ptr %112, align 4
  %conv7.i55 = zext i8 %119 to i16
  %120 = ptrtoint ptr %arrayinit.element.i54 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv7.i55, ptr %arrayinit.element.i54, align 4
  %121 = ptrtoint ptr %flags8.i56 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 1, ptr %flags8.i56, align 2
  %122 = ptrtoint ptr %len9.i57 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 1, ptr %len9.i57, align 4
  %123 = ptrtoint ptr %buf11.i58 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %arrayidx, ptr %buf11.i58, align 4
  %124 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %state, align 4
  %call.i59 = call i32 @i2c_transfer(ptr noundef %125, ptr noundef nonnull %msg.i48, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i59)
  %cmp.not.i60 = icmp eq i32 %call.i59, 2
  br i1 %cmp.not.i60, label %for.body.nxt200x_readbytes.exit64_crit_edge, label %do.end.i63

for.body.nxt200x_readbytes.exit64_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_readbytes.exit64

do.end.i63:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %config.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %127, align 4
  %conv16.i61 = zext i8 %129 to i32
  %call17.i62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv16.i61, i32 noundef %call.i59) #12
  br label %nxt200x_readbytes.exit64

nxt200x_readbytes.exit64:                         ; preds = %do.end.i63, %for.body.nxt200x_readbytes.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i48) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2.i47) #8
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %conv30
  br i1 %exitcond.not, label %nxt200x_readbytes.exit64.cleanup_crit_edge, label %nxt200x_readbytes.exit64.for.body_crit_edge

nxt200x_readbytes.exit64.for.body_crit_edge:      ; preds = %nxt200x_readbytes.exit64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

nxt200x_readbytes.exit64.cleanup_crit_edge:       ; preds = %nxt200x_readbytes.exit64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %nxt200x_readbytes.exit64.cleanup_crit_edge, %nxt200x_writebytes.exit46.cleanup_crit_edge, %nxt200x_readbytes.exit, %nxt200x_writebytes.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nxt200x_writetuner(ptr nocapture noundef readonly %state, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  %reg2.i = alloca [1 x i8], align 1
  %msg.i75 = alloca [2 x %struct.i2c_msg], align 4
  %buf2.i61 = alloca [256 x i8], align 1
  %msg.i62 = alloca %struct.i2c_msg, align 4
  %buf2.i47 = alloca [256 x i8], align 1
  %msg.i48 = alloca %struct.i2c_msg, align 4
  %buf2.i33 = alloca [256 x i8], align 1
  %msg.i34 = alloca %struct.i2c_msg, align 4
  %buf2.i19 = alloca [256 x i8], align 1
  %msg.i20 = alloca %struct.i2c_msg, align 4
  %buf2.i = alloca [256 x i8], align 1
  %msg.i15 = alloca %struct.i2c_msg, align 4
  %msg.i5 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #8
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !178
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body9_crit_edge, label %do.body1

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt200x_writetuner.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt200x_writetuner, %if.then5)) #8
          to label %do.body9 [label %if.then5], !srcloc !177

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt200x_writetuner.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.55) #8
  br label %do.body9

do.body9:                                         ; preds = %if.then5, %do.body1, %entry.do.body9_crit_edge
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool10.not = icmp eq i32 %2, 0
  br i1 %tobool10.not, label %do.body9.do.end30_crit_edge, label %do.body12

do.body9.do.end30_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

do.body12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt200x_writetuner.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt200x_writetuner, %if.then24)) #8
          to label %do.end30 [label %if.then24], !srcloc !177

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %data, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt200x_writetuner.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.57, i32 noundef 4, ptr noundef %add.ptr) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.body12, %do.body9.do.end30_crit_edge
  %demod_chip = getelementptr inbounds %struct.nxt200x_state, ptr %state, i32 0, i32 3
  %3 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %demod_chip, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %4, label %do.end30.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb53
  ]

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %do.end30
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 1
  %add.ptr31 = getelementptr i8, ptr %data, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 327679, ptr %8, align 4
  %conv.i = zext i8 %7 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr31, ptr %buf4.i, align 4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %i2c_writebytes.exit.thread, label %do.end37

i2c_writebytes.exit.thread:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  br label %if.end40

do.end37:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i = zext i8 %7 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.65, i32 noundef %conv6.i, i32 noundef %call.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %i2c_writebytes.exit.thread
  %15 = getelementptr inbounds i8, ptr %msg.i5, i32 4
  %flags.i7 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 0, i32 1
  %buf4.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end47.while.body_crit_edge, %if.end40
  %count.089 = phi i8 [ 0, %if.end40 ], [ %inc, %if.end47.while.body_crit_edge ]
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i5) #8
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 131071, ptr %15, align 4
  %conv.i6 = zext i8 %17 to i16
  %19 = ptrtoint ptr %msg.i5 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i6, ptr %msg.i5, align 4
  %20 = ptrtoint ptr %flags.i7 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags.i7, align 2
  %21 = ptrtoint ptr %buf4.i9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf, ptr %buf4.i9, align 4
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state, align 4
  %call.i10 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg.i5, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i10)
  %cmp.not.i11 = icmp eq i32 %call.i10, 1
  br i1 %cmp.not.i11, label %while.body.i2c_readbytes.exit_crit_edge, label %do.end.i14

while.body.i2c_readbytes.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_readbytes.exit

do.end.i14:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i12 = zext i8 %17 to i32
  %call7.i13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.66, i32 noundef %conv6.i12, i32 noundef %call.i10) #12
  br label %i2c_readbytes.exit

i2c_readbytes.exit:                               ; preds = %do.end.i14, %while.body.i2c_readbytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i5) #8
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buf, align 1
  %26 = and i8 %25, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool45.not = icmp eq i8 %26, 0
  br i1 %tobool45.not, label %if.end47, label %i2c_readbytes.exit.cleanup_crit_edge

i2c_readbytes.exit.cleanup_crit_edge:             ; preds = %i2c_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %i2c_readbytes.exit
  call void @msleep(i32 noundef 100) #8
  %inc = add nuw nsw i8 %count.089, 1
  %cmp = icmp ult i8 %count.089, 19
  br i1 %cmp, label %if.end47.while.body_crit_edge, label %if.end47.cleanup.sink.split_crit_edge

if.end47.cleanup.sink.split_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end47.while.body_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

sw.bb53:                                          ; preds = %do.end30
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 3, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i) #8
  %28 = getelementptr inbounds i8, ptr %buf2.i, i32 1
  %29 = getelementptr inbounds i8, ptr %buf2.i, i32 2
  %30 = call ptr @memset(ptr %29, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i15) #8
  %31 = getelementptr inbounds i8, ptr %msg.i15, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 196607, ptr %31, align 4
  %config.i = getelementptr inbounds %struct.nxt200x_state, ptr %state, i32 0, i32 1
  %33 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %config.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4
  %conv.i16 = zext i8 %36 to i16
  %37 = ptrtoint ptr %msg.i15 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i16, ptr %msg.i15, align 4
  %flags.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i17, align 2
  %buf4.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i15, i32 0, i32 3
  %39 = ptrtoint ptr %buf4.i18 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf2.i, ptr %buf4.i18, align 4
  %40 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 32, ptr %buf2.i, align 1
  %41 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 3, ptr %28, align 1
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state, align 4
  %call12.i = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %msg.i15, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.not.i, label %sw.bb53.nxt200x_writebytes.exit_crit_edge, label %do.end18.i

sw.bb53.nxt200x_writebytes.exit_crit_edge:        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit

do.end18.i:                                       ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %config.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 4
  %conv22.i = zext i8 %47 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i, i32 noundef %call12.i) #12
  br label %nxt200x_writebytes.exit

nxt200x_writebytes.exit:                          ; preds = %do.end18.i, %sw.bb53.nxt200x_writebytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i15) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i) #8
  %48 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 4, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i19) #8
  %49 = getelementptr inbounds i8, ptr %buf2.i19, i32 1
  %50 = getelementptr inbounds i8, ptr %buf2.i19, i32 2
  %51 = call ptr @memset(ptr %50, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i20) #8
  %52 = getelementptr inbounds i8, ptr %msg.i20, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 196607, ptr %52, align 4
  %54 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %config.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 4
  %conv.i22 = zext i8 %57 to i16
  %58 = ptrtoint ptr %msg.i20 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i22, ptr %msg.i20, align 4
  %flags.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 0, i32 1
  %59 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %flags.i23, align 2
  %buf4.i25 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i20, i32 0, i32 3
  %60 = ptrtoint ptr %buf4.i25 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %buf2.i19, ptr %buf4.i25, align 4
  %61 = ptrtoint ptr %buf2.i19 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 52, ptr %buf2.i19, align 1
  %62 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 4, ptr %49, align 1
  %63 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %state, align 4
  %call12.i27 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %msg.i20, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i27)
  %cmp13.not.i28 = icmp eq i32 %call12.i27, 1
  br i1 %cmp13.not.i28, label %nxt200x_writebytes.exit.nxt200x_writebytes.exit32_crit_edge, label %do.end18.i31

nxt200x_writebytes.exit.nxt200x_writebytes.exit32_crit_edge: ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit32

do.end18.i31:                                     ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %config.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %66, align 4
  %conv22.i29 = zext i8 %68 to i32
  %call23.i30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i29, i32 noundef %call12.i27) #12
  br label %nxt200x_writebytes.exit32

nxt200x_writebytes.exit32:                        ; preds = %do.end18.i31, %nxt200x_writebytes.exit.nxt200x_writebytes.exit32_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i20) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i19) #8
  %add.ptr56 = getelementptr i8, ptr %data, i32 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i33) #8
  %69 = getelementptr inbounds i8, ptr %buf2.i33, i32 1
  %70 = getelementptr inbounds i8, ptr %buf2.i33, i32 5
  %71 = call ptr @memset(ptr %70, i32 255, i32 251)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i34) #8
  %72 = getelementptr inbounds i8, ptr %msg.i34, i32 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 393215, ptr %72, align 4
  %74 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %config.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %75, align 4
  %conv.i36 = zext i8 %77 to i16
  %78 = ptrtoint ptr %msg.i34 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv.i36, ptr %msg.i34, align 4
  %flags.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i37 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i37, align 2
  %buf4.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i34, i32 0, i32 3
  %80 = ptrtoint ptr %buf4.i39 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %buf2.i33, ptr %buf4.i39, align 4
  %81 = ptrtoint ptr %buf2.i33 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 54, ptr %buf2.i33, align 1
  %82 = ptrtoint ptr %add.ptr56 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %add.ptr56, align 1
  %84 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %83, ptr %69, align 1
  %85 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %state, align 4
  %call12.i41 = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %msg.i34, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i41)
  %cmp13.not.i42 = icmp eq i32 %call12.i41, 1
  br i1 %cmp13.not.i42, label %nxt200x_writebytes.exit32.nxt200x_writebytes.exit46_crit_edge, label %do.end18.i45

nxt200x_writebytes.exit32.nxt200x_writebytes.exit46_crit_edge: ; preds = %nxt200x_writebytes.exit32
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit46

do.end18.i45:                                     ; preds = %nxt200x_writebytes.exit32
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %config.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %88, align 4
  %conv22.i43 = zext i8 %90 to i32
  %call23.i44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i43, i32 noundef %call12.i41) #12
  br label %nxt200x_writebytes.exit46

nxt200x_writebytes.exit46:                        ; preds = %do.end18.i45, %nxt200x_writebytes.exit32.nxt200x_writebytes.exit46_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i34) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i33) #8
  %91 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %data, align 1
  %shl = shl i8 %92, 1
  %93 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %shl, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i47) #8
  %94 = getelementptr inbounds i8, ptr %buf2.i47, i32 1
  %95 = getelementptr inbounds i8, ptr %buf2.i47, i32 2
  %96 = call ptr @memset(ptr %95, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i48) #8
  %97 = getelementptr inbounds i8, ptr %msg.i48, i32 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 196607, ptr %97, align 4
  %99 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %config.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %100, align 4
  %conv.i50 = zext i8 %102 to i16
  %103 = ptrtoint ptr %msg.i48 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv.i50, ptr %msg.i48, align 4
  %flags.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 1
  %104 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %flags.i51, align 2
  %buf4.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 3
  %105 = ptrtoint ptr %buf4.i53 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %buf2.i47, ptr %buf4.i53, align 4
  %106 = ptrtoint ptr %buf2.i47 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 53, ptr %buf2.i47, align 1
  %107 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %shl, ptr %94, align 1
  %108 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %state, align 4
  %call12.i55 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %msg.i48, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i55)
  %cmp13.not.i56 = icmp eq i32 %call12.i55, 1
  br i1 %cmp13.not.i56, label %nxt200x_writebytes.exit46.nxt200x_writebytes.exit60_crit_edge, label %do.end18.i59

nxt200x_writebytes.exit46.nxt200x_writebytes.exit60_crit_edge: ; preds = %nxt200x_writebytes.exit46
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit60

do.end18.i59:                                     ; preds = %nxt200x_writebytes.exit46
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %config.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %111, align 4
  %conv22.i57 = zext i8 %113 to i32
  %call23.i58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i57, i32 noundef %call12.i55) #12
  br label %nxt200x_writebytes.exit60

nxt200x_writebytes.exit60:                        ; preds = %do.end18.i59, %nxt200x_writebytes.exit46.nxt200x_writebytes.exit60_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i48) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i47) #8
  %114 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 -128, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i61) #8
  %115 = getelementptr inbounds i8, ptr %buf2.i61, i32 1
  %116 = getelementptr inbounds i8, ptr %buf2.i61, i32 2
  %117 = call ptr @memset(ptr %116, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i62) #8
  %118 = getelementptr inbounds i8, ptr %msg.i62, i32 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 196607, ptr %118, align 4
  %120 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %config.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %121, align 4
  %conv.i64 = zext i8 %123 to i16
  %124 = ptrtoint ptr %msg.i62 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv.i64, ptr %msg.i62, align 4
  %flags.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 0, i32 1
  %125 = ptrtoint ptr %flags.i65 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %flags.i65, align 2
  %buf4.i67 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 0, i32 3
  %126 = ptrtoint ptr %buf4.i67 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %buf2.i61, ptr %buf4.i67, align 4
  %127 = ptrtoint ptr %buf2.i61 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 33, ptr %buf2.i61, align 1
  %128 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 -128, ptr %115, align 1
  %129 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %state, align 4
  %call12.i69 = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %msg.i62, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i69)
  %cmp13.not.i70 = icmp eq i32 %call12.i69, 1
  br i1 %cmp13.not.i70, label %nxt200x_writebytes.exit60.nxt200x_writebytes.exit74_crit_edge, label %do.end18.i73

nxt200x_writebytes.exit60.nxt200x_writebytes.exit74_crit_edge: ; preds = %nxt200x_writebytes.exit60
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit74

do.end18.i73:                                     ; preds = %nxt200x_writebytes.exit60
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %config.i, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %132, align 4
  %conv22.i71 = zext i8 %134 to i32
  %call23.i72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i71, i32 noundef %call12.i69) #12
  br label %nxt200x_writebytes.exit74

nxt200x_writebytes.exit74:                        ; preds = %do.end18.i73, %nxt200x_writebytes.exit60.nxt200x_writebytes.exit74_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i62) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i61) #8
  %135 = getelementptr inbounds i8, ptr %msg.i75, i32 4
  %flags.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 0, i32 1
  %buf3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 1
  %flags8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 1, i32 1
  %len9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 1, i32 2
  %buf11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i75, i32 1, i32 3
  br label %while.body67

while.body67:                                     ; preds = %if.end74.while.body67_crit_edge, %nxt200x_writebytes.exit74
  %count.188 = phi i8 [ 0, %nxt200x_writebytes.exit74 ], [ %inc75, %if.end74.while.body67_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg2.i) #8
  %136 = ptrtoint ptr %reg2.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 33, ptr %reg2.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i75) #8
  %137 = call ptr @memset(ptr %135, i32 255, i32 16)
  %138 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %config.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %139, align 4
  %conv.i77 = zext i8 %141 to i16
  %142 = ptrtoint ptr %msg.i75 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv.i77, ptr %msg.i75, align 4
  %143 = ptrtoint ptr %flags.i78 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 0, ptr %flags.i78, align 2
  %144 = ptrtoint ptr %135 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 1, ptr %135, align 4
  %145 = ptrtoint ptr %buf3.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %reg2.i, ptr %buf3.i, align 4
  %146 = load i8, ptr %139, align 4
  %conv7.i = zext i8 %146 to i16
  %147 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv7.i, ptr %arrayinit.element.i, align 4
  %148 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 1, ptr %flags8.i, align 2
  %149 = ptrtoint ptr %len9.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 1, ptr %len9.i, align 4
  %150 = ptrtoint ptr %buf11.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %buf, ptr %buf11.i, align 4
  %151 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %state, align 4
  %call.i80 = call i32 @i2c_transfer(ptr noundef %152, ptr noundef nonnull %msg.i75, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i80)
  %cmp.not.i81 = icmp eq i32 %call.i80, 2
  br i1 %cmp.not.i81, label %while.body67.nxt200x_readbytes.exit_crit_edge, label %do.end.i82

while.body67.nxt200x_readbytes.exit_crit_edge:    ; preds = %while.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_readbytes.exit

do.end.i82:                                       ; preds = %while.body67
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %config.i, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %154, align 4
  %conv16.i = zext i8 %156 to i32
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv16.i, i32 noundef %call.i80) #12
  br label %nxt200x_readbytes.exit

nxt200x_readbytes.exit:                           ; preds = %do.end.i82, %while.body67.nxt200x_readbytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i75) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg2.i) #8
  %157 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %158)
  %cmp71 = icmp sgt i8 %158, -1
  br i1 %cmp71, label %nxt200x_readbytes.exit.cleanup_crit_edge, label %if.end74

nxt200x_readbytes.exit.cleanup_crit_edge:         ; preds = %nxt200x_readbytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end74:                                         ; preds = %nxt200x_readbytes.exit
  call void @msleep(i32 noundef 100) #8
  %inc75 = add nuw nsw i8 %count.188, 1
  %cmp65 = icmp ult i8 %count.188, 19
  br i1 %cmp65, label %if.end74.while.body67_crit_edge, label %if.end74.cleanup.sink.split_crit_edge

if.end74.cleanup.sink.split_crit_edge:            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end74.while.body67_crit_edge:                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body67

cleanup.sink.split:                               ; preds = %if.end74.cleanup.sink.split_crit_edge, %if.end47.cleanup.sink.split_crit_edge
  %.str.60.sink = phi ptr [ @.str.60, %if.end47.cleanup.sink.split_crit_edge ], [ @.str.63, %if.end74.cleanup.sink.split_crit_edge ]
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.60.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %nxt200x_readbytes.exit.cleanup_crit_edge, %i2c_readbytes.exit.cleanup_crit_edge, %do.end30.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nxt200x_agc_reset(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  %buf2.i20 = alloca [256 x i8], align 1
  %msg.i21 = alloca %struct.i2c_msg, align 4
  %buf2.i = alloca [256 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #8
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !178
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nxt200x_agc_reset.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nxt200x_agc_reset, %if.then5)) #8
          to label %do.end8 [label %if.then5], !srcloc !177

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nxt200x_agc_reset.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.67) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  %demod_chip = getelementptr inbounds %struct.nxt200x_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %demod_chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %demod_chip, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %3, label %do.end8.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
  ]

do.end8.sw.epilog_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i) #8
  %5 = getelementptr inbounds i8, ptr %buf2.i, i32 1
  %6 = getelementptr inbounds i8, ptr %buf2.i, i32 2
  %7 = call ptr @memset(ptr %6, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196607, ptr %8, align 4
  %config.i = getelementptr inbounds %struct.nxt200x_state, ptr %state, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf2.i, ptr %buf4.i, align 4
  %17 = ptrtoint ptr %buf2.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 8, ptr %buf2.i, align 1
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %5, align 1
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state, align 4
  %call12.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 1
  br i1 %cmp13.not.i, label %sw.bb.nxt200x_writebytes.exit_crit_edge, label %do.end18.i

sw.bb.nxt200x_writebytes.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit

do.end18.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %config.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %conv22.i = zext i8 %24 to i32
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i, i32 noundef %call12.i) #12
  br label %nxt200x_writebytes.exit

nxt200x_writebytes.exit:                          ; preds = %do.end18.i, %sw.bb.nxt200x_writebytes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i) #8
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %buf, align 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2.i20) #8
  %26 = getelementptr inbounds i8, ptr %buf2.i20, i32 1
  %27 = getelementptr inbounds i8, ptr %buf2.i20, i32 2
  %28 = call ptr @memset(ptr %27, i32 255, i32 254)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i21) #8
  %29 = getelementptr inbounds i8, ptr %msg.i21, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 196607, ptr %29, align 4
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  %conv.i23 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i21 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i23, ptr %msg.i21, align 4
  %flags.i24 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i24 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i24, align 2
  %buf4.i26 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21, i32 0, i32 3
  %37 = ptrtoint ptr %buf4.i26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buf2.i20, ptr %buf4.i26, align 4
  %38 = ptrtoint ptr %buf2.i20 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %buf2.i20, align 1
  %39 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %26, align 1
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %state, align 4
  %call12.i28 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i21, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12.i28)
  %cmp13.not.i29 = icmp eq i32 %call12.i28, 1
  br i1 %cmp13.not.i29, label %nxt200x_writebytes.exit.nxt200x_writebytes.exit33_crit_edge, label %do.end18.i32

nxt200x_writebytes.exit.nxt200x_writebytes.exit33_crit_edge: ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nxt200x_writebytes.exit33

do.end18.i32:                                     ; preds = %nxt200x_writebytes.exit
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 4
  %conv22.i30 = zext i8 %45 to i32
  %call23.i31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv22.i30, i32 noundef %call12.i28) #12
  br label %nxt200x_writebytes.exit33

nxt200x_writebytes.exit33:                        ; preds = %do.end18.i32, %nxt200x_writebytes.exit.nxt200x_writebytes.exit33_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i21) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2.i20) #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nxt200x_readreg_multibyte(ptr noundef %state, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 8, ptr %buf, align 1
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %state, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  %47 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %buf, align 1
  call fastcc void @nxt200x_writereg_multibyte(ptr noundef %state, i8 noundef zeroext 8, ptr noundef nonnull %buf, i8 noundef zeroext 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %nxt200x_writebytes.exit33, %do.end8.sw.epilog_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !24, !26, !28, !30, !31, !33, !35, !37, !38, !39, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !115, !116, !117, !119, !120, !122, !123, !124, !126, !127, !129, !130, !131, !133, !134, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !166, !167}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 1142, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nxt200x_attach.__UNIQUE_ID_ddebug308, !1, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 1148, i32 4}
!9 = !{ptr @nxt200x_attach._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @nxt200x_attach._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 1152, i32 4}
!13 = !{ptr @nxt200x_attach._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @nxt200x_attach._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 1181, i32 2}
!17 = !{ptr @nxt200x_attach._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @nxt200x_attach._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__param_debug, !20, !"__param_debug", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 1212, i32 1}
!21 = !{ptr @__UNIQUE_ID_debugtype309, !20, !"__UNIQUE_ID_debugtype309", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_debug310, !23, !"__UNIQUE_ID_debug310", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 1213, i32 1}
!24 = !{ptr @__UNIQUE_ID_description311, !25, !"__UNIQUE_ID_description311", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 1215, i32 1}
!26 = !{ptr @__UNIQUE_ID_author312, !27, !"__UNIQUE_ID_author312", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 1216, i32 1}
!28 = !{ptr @__UNIQUE_ID_file313, !29, !"__UNIQUE_ID_file313", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 1217, i32 1}
!30 = !{ptr @__UNIQUE_ID_license314, !29, !"__UNIQUE_ID_license314", i1 false, i1 false}
!31 = !{ptr @__ksymtab_nxt200x_attach, !32, !"__ksymtab_nxt200x_attach", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 1219, i32 1}
!33 = !{ptr @debug, !34, !"debug", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 55, i32 12}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 118, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @nxt200x_readbytes._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @nxt200x_readbytes._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @nxt200x_ops, !41, !"nxt200x_ops", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 1185, i32 38}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 860, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nxt2002_init.__UNIQUE_ID_ddebug304, !43, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!46 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 864, i32 2}
!50 = !{ptr @nxt2002_init.__UNIQUE_ID_ddebug305, !49, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!51 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 866, i32 3}
!54 = !{ptr @nxt2002_init._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @nxt2002_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 874, i32 3}
!58 = !{ptr @nxt2002_init._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @nxt2002_init._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 877, i32 2}
!62 = !{ptr @nxt2002_init._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @nxt2002_init._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 408, i32 2}
!66 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @nxt2002_load_firmware.__UNIQUE_ID_ddebug298, !65, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!68 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 409, i32 2}
!71 = !{ptr @nxt2002_load_firmware.__UNIQUE_ID_ddebug299, !70, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!72 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 419, i32 2}
!75 = !{ptr @nxt2002_load_firmware.__UNIQUE_ID_ddebug300, !74, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!76 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 247, i32 2}
!79 = !{ptr @nxt200x_microcontroller_stop.__UNIQUE_ID_ddebug292, !78, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 273, i32 2}
!82 = !{ptr @nxt200x_microcontroller_stop._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @nxt200x_microcontroller_stop._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 92, i32 3}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @nxt200x_writebytes._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @nxt200x_writebytes._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 101, i32 3}
!91 = !{ptr @nxt200x_writebytes._entry.38, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @nxt200x_writebytes._entry_ptr.40, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 927, i32 2}
!95 = !{ptr @nxt2004_init.__UNIQUE_ID_ddebug306, !94, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!96 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @nxt2004_init.__UNIQUE_ID_ddebug307, !98, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 931, i32 2}
!99 = !{ptr @nxt2004_init._entry, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 933, i32 3}
!101 = !{ptr @nxt2004_init._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @nxt2004_init._entry.43, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 941, i32 3}
!104 = !{ptr @nxt2004_init._entry_ptr.44, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @nxt2004_init._entry.45, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 944, i32 2}
!107 = !{ptr @nxt2004_init._entry_ptr.46, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 475, i32 2}
!110 = !{ptr @nxt2004_load_firmware.__UNIQUE_ID_ddebug301, !109, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!111 = !{ptr @nxt2004_load_firmware.__UNIQUE_ID_ddebug302, !112, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 476, i32 2}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 504, i32 2}
!115 = !{ptr @nxt2004_load_firmware.__UNIQUE_ID_ddebug303, !114, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!116 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 290, i32 2}
!119 = !{ptr @nxt2004_microcontroller_init.__UNIQUE_ID_ddebug294, !118, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 312, i32 2}
!122 = !{ptr @nxt2004_microcontroller_init._entry, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @nxt2004_microcontroller_init._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 144, i32 2}
!126 = !{ptr @nxt200x_writereg_multibyte.__UNIQUE_ID_ddebug290, !125, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 194, i32 2}
!129 = !{ptr @nxt200x_writereg_multibyte._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @nxt200x_writereg_multibyte._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 203, i32 2}
!133 = !{ptr @nxt200x_readreg_multibyte.__UNIQUE_ID_ddebug291, !132, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!134 = !{ptr @.str.55, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 321, i32 2}
!136 = !{ptr @nxt200x_writetuner.__UNIQUE_ID_ddebug295, !135, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 323, i32 2}
!139 = !{ptr @nxt200x_writetuner.__UNIQUE_ID_ddebug296, !138, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!140 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 330, i32 5}
!143 = !{ptr @nxt200x_writetuner._entry, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @nxt200x_writetuner._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 339, i32 4}
!147 = !{ptr @nxt200x_writetuner._entry.59, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @nxt200x_writetuner._entry_ptr.61, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 368, i32 4}
!151 = !{ptr @nxt200x_writetuner._entry.62, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @nxt200x_writetuner._entry_ptr.64, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 64, i32 3}
!155 = !{ptr @i2c_writebytes._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @i2c_writebytes._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 77, i32 3}
!159 = !{ptr @i2c_readbytes._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @i2c_readbytes._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.67, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 379, i32 2}
!163 = !{ptr @nxt200x_agc_reset.__UNIQUE_ID_ddebug297, !162, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!164 = !{ptr @.str.68, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/dvb-frontends/nxt200x.c", i32 280, i32 2}
!166 = !{ptr @nxt200x_microcontroller_start.__UNIQUE_ID_ddebug293, !165, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!167 = !{ptr @__param_str_debug, !20, !"__param_str_debug", i1 false, i1 false}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = !{i64 2148719034, i64 2148719039, i64 2148719052, i64 2148719096, i64 2148719130, i64 2148719151}
!178 = !{!"auto-init"}
