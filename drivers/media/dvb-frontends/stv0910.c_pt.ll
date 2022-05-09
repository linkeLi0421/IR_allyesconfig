; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/stv0910.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv0910.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+stv0910_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_stv0910_attach\09\09\09\09"
module asm "\09.long\09__crc_stv0910_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv0910_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv0910_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv0910_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.slookup = type { i16, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.stv0910_cfg = type { i32, i8, i8, i8, i8, i8 }
%struct.stv = type { ptr, %struct.dvb_frontend, i32, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [6 x i8] }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.stv_base = type { %struct.list_head, i8, ptr, %struct.mutex, %struct.mutex, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@stv0910_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&base->i2c_lock\00", [16 x i8] zeroinitializer }, align 32
@stv0910_attach.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&base->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@stv0910_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1809, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No demod found at adr %02X on %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv0910_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/stv0910.c\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stv0910_attach._entry_ptr = internal global ptr @stv0910_attach._entry, section ".printk_index", align 4
@stvlist = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @stvlist, ptr @stvlist }, [24 x i8] zeroinitializer }, align 32
@stv0910_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"ST STV0910\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 100000, i32 70000000, i32 0, i32 335545857 }, [8 x i8] c"\05\06\04\00\00\00\00\00", ptr null, ptr @release, ptr null, ptr null, ptr @sleep, ptr null, ptr null, ptr null, ptr @tune, ptr @get_algo, ptr @set_parameters, ptr null, ptr @get_frontend, ptr @read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @send_master_cmd, ptr null, ptr @send_burst, ptr @set_tone, ptr null, ptr null, ptr null, ptr @gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@stv0910_attach._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1820, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s demod found at adr %02X on %s\0A\00", [62 x i8] zeroinitializer }, align 32
@stv0910_attach._entry_ptr.10 = internal global ptr @stv0910_attach._entry.8, section ".printk_index", align 4
@__kstrtab_stv0910_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv0910_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv0910_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv0910_attach to i32), ptr @__kstrtab_stv0910_attach, ptr @__kstrtabns_stv0910_attach }, section "___ksymtab_gpl+stv0910_attach", align 4
@__UNIQUE_ID_description290 = internal constant [61 x i8] c"stv0910.description=ST STV0910 multistandard frontend driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [57 x i8] c"stv0910.author=Ralph and Marcus Metzler, Manfred Voelkel\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"stv0910.file=drivers/media/dvb-frontends/stv0910\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [23 x i8] c"stv0910.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@i2c_read_regs16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 158, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"i2c read error ([%02x] %04x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c_read_regs16\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@i2c_read_regs16._entry_ptr = internal global ptr @i2c_read_regs16._entry, section ".printk_index", align 4
@write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 141, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"i2c write error ([%02x] %04x: %02x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write_reg\00", [22 x i8] zeroinitializer }, align 32
@write_reg._entry_ptr = internal global ptr @write_reg._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__const.get_frontend.modcod2mod = private unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 11, i32 11, i32 11, i32 11, i32 11, i32 0, i32 0, i32 0], align 4
@__const.get_frontend.modcod2fec = private unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 12, i32 1, i32 10, i32 2, i32 3, i32 4, i32 5, i32 8, i32 11, i32 10, i32 2, i32 3, i32 5, i32 8, i32 11, i32 2, i32 3, i32 4, i32 5, i32 8, i32 11, i32 3, i32 4, i32 5, i32 8, i32 11, i32 0, i32 0, i32 0], align 4
@set_vth.vthlookup_table = internal constant { [5 x %struct.slookup], [56 x i8] } { [5 x %struct.slookup] [%struct.slookup { i16 250, i32 8780 }, %struct.slookup { i16 100, i32 7405 }, %struct.slookup { i16 40, i32 6330 }, %struct.slookup { i16 12, i32 5224 }, %struct.slookup { i16 5, i32 4236 }], [56 x i8] zeroinitializer }, align 32
@s2car_loop = internal constant { [280 x i8], [72 x i8] } { [280 x i8] c"\0C<\0B<*,*\1C:;\0C<\0B<*,:\0C:+\1C<\1B<:\1C:;:+\0C\1C+\1C\0B,\0B\0C*+\1C\1C+\1C\0B,\0B\0C*+,,+\1C\0B,\0B\0C*+<,;,\1B\1C\1B;:\1B\0D<;,\1B\1C\1B;:\1B\1D<\0C,+\1C\1B;\0B\1B=\0D\0C,+\0C++\0B\0B\1E\0D\1C,;\0C++\1B\0B(\09(\09(\09(\08('\19)\19)\19)8\19(\09\1A\0B\1A:\0A*9*9\1A++\1B\1B\0B\1B\1A\0B\1A\1A\0C\0C;;\1B\1B*\0B**\0C\1C\0C;+\1B:\0B**\0A\0A\0A\0A\1A\0A9\0A)\0A\0A\0A\0A\0A\0B\0A*\0A\1A\0A\0A\0A\0A\0A\1B\0A:\0A*\0A\0A\0A\0A\0A\1B\0A:\0A*\0A\0A\0A\0A\0A+\0A\0B\0A:\0A\0A\0A\0A\0A+\0A\0B\0A:\0A\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09", [72 x i8] zeroinitializer }, align 32
@padc_lookup = internal constant { [16 x %struct.slookup], [32 x i8] } { [16 x %struct.slookup] [%struct.slookup { i16 0, i32 118000 }, %struct.slookup { i16 -100, i32 93600 }, %struct.slookup { i16 -200, i32 74500 }, %struct.slookup { i16 -300, i32 59100 }, %struct.slookup { i16 -400, i32 47000 }, %struct.slookup { i16 -500, i32 37300 }, %struct.slookup { i16 -600, i32 29650 }, %struct.slookup { i16 -700, i32 23520 }, %struct.slookup { i16 -900, i32 14850 }, %struct.slookup { i16 -1100, i32 9380 }, %struct.slookup { i16 -1300, i32 5910 }, %struct.slookup { i16 -1500, i32 3730 }, %struct.slookup { i16 -1700, i32 2354 }, %struct.slookup { i16 -1900, i32 1485 }, %struct.slookup { i16 -2000, i32 1179 }, %struct.slookup { i16 -2100, i32 1000 }], [32 x i8] zeroinitializer }, align 32
@s2_sn_lookup = internal constant { [60 x %struct.slookup], [96 x i8] } { [60 x %struct.slookup] [%struct.slookup { i16 -30, i32 13950 }, %struct.slookup { i16 -25, i32 13580 }, %struct.slookup { i16 -20, i32 13150 }, %struct.slookup { i16 -15, i32 12760 }, %struct.slookup { i16 -10, i32 12345 }, %struct.slookup { i16 -5, i32 11900 }, %struct.slookup { i16 0, i32 11520 }, %struct.slookup { i16 5, i32 11080 }, %struct.slookup { i16 10, i32 10630 }, %struct.slookup { i16 15, i32 10210 }, %struct.slookup { i16 20, i32 9790 }, %struct.slookup { i16 25, i32 9390 }, %struct.slookup { i16 30, i32 8970 }, %struct.slookup { i16 35, i32 8575 }, %struct.slookup { i16 40, i32 8180 }, %struct.slookup { i16 45, i32 7800 }, %struct.slookup { i16 50, i32 7430 }, %struct.slookup { i16 55, i32 7080 }, %struct.slookup { i16 60, i32 6720 }, %struct.slookup { i16 65, i32 6320 }, %struct.slookup { i16 70, i32 6060 }, %struct.slookup { i16 75, i32 5760 }, %struct.slookup { i16 80, i32 5480 }, %struct.slookup { i16 85, i32 5200 }, %struct.slookup { i16 90, i32 4930 }, %struct.slookup { i16 95, i32 4680 }, %struct.slookup { i16 100, i32 4425 }, %struct.slookup { i16 105, i32 4210 }, %struct.slookup { i16 110, i32 3980 }, %struct.slookup { i16 115, i32 3765 }, %struct.slookup { i16 120, i32 3570 }, %struct.slookup { i16 125, i32 3315 }, %struct.slookup { i16 130, i32 3140 }, %struct.slookup { i16 135, i32 2980 }, %struct.slookup { i16 140, i32 2820 }, %struct.slookup { i16 145, i32 2670 }, %struct.slookup { i16 150, i32 2535 }, %struct.slookup { i16 160, i32 2270 }, %struct.slookup { i16 170, i32 2035 }, %struct.slookup { i16 180, i32 1825 }, %struct.slookup { i16 190, i32 1650 }, %struct.slookup { i16 200, i32 1485 }, %struct.slookup { i16 210, i32 1340 }, %struct.slookup { i16 220, i32 1212 }, %struct.slookup { i16 230, i32 1100 }, %struct.slookup { i16 240, i32 1000 }, %struct.slookup { i16 250, i32 910 }, %struct.slookup { i16 260, i32 836 }, %struct.slookup { i16 270, i32 772 }, %struct.slookup { i16 280, i32 718 }, %struct.slookup { i16 290, i32 671 }, %struct.slookup { i16 300, i32 635 }, %struct.slookup { i16 310, i32 602 }, %struct.slookup { i16 320, i32 575 }, %struct.slookup { i16 330, i32 550 }, %struct.slookup { i16 350, i32 517 }, %struct.slookup { i16 400, i32 480 }, %struct.slookup { i16 450, i32 466 }, %struct.slookup { i16 500, i32 464 }, %struct.slookup { i16 510, i32 463 }], [96 x i8] zeroinitializer }, align 32
@s1_sn_lookup = internal constant { [54 x %struct.slookup], [112 x i8] } { [54 x %struct.slookup] [%struct.slookup { i16 0, i32 9242 }, %struct.slookup { i16 5, i32 9105 }, %struct.slookup { i16 10, i32 8950 }, %struct.slookup { i16 15, i32 8780 }, %struct.slookup { i16 20, i32 8566 }, %struct.slookup { i16 25, i32 8366 }, %struct.slookup { i16 30, i32 8146 }, %struct.slookup { i16 35, i32 7908 }, %struct.slookup { i16 40, i32 7666 }, %struct.slookup { i16 45, i32 7405 }, %struct.slookup { i16 50, i32 7136 }, %struct.slookup { i16 55, i32 6861 }, %struct.slookup { i16 60, i32 6576 }, %struct.slookup { i16 65, i32 6330 }, %struct.slookup { i16 70, i32 6048 }, %struct.slookup { i16 75, i32 5768 }, %struct.slookup { i16 80, i32 5492 }, %struct.slookup { i16 85, i32 5224 }, %struct.slookup { i16 90, i32 4959 }, %struct.slookup { i16 95, i32 4709 }, %struct.slookup { i16 100, i32 4467 }, %struct.slookup { i16 105, i32 4236 }, %struct.slookup { i16 110, i32 4013 }, %struct.slookup { i16 115, i32 3800 }, %struct.slookup { i16 120, i32 3598 }, %struct.slookup { i16 125, i32 3406 }, %struct.slookup { i16 130, i32 3225 }, %struct.slookup { i16 135, i32 3052 }, %struct.slookup { i16 140, i32 2889 }, %struct.slookup { i16 145, i32 2733 }, %struct.slookup { i16 150, i32 2587 }, %struct.slookup { i16 160, i32 2318 }, %struct.slookup { i16 170, i32 2077 }, %struct.slookup { i16 180, i32 1862 }, %struct.slookup { i16 190, i32 1670 }, %struct.slookup { i16 200, i32 1499 }, %struct.slookup { i16 210, i32 1347 }, %struct.slookup { i16 220, i32 1213 }, %struct.slookup { i16 230, i32 1095 }, %struct.slookup { i16 240, i32 992 }, %struct.slookup { i16 250, i32 900 }, %struct.slookup { i16 260, i32 826 }, %struct.slookup { i16 270, i32 758 }, %struct.slookup { i16 280, i32 702 }, %struct.slookup { i16 290, i32 653 }, %struct.slookup { i16 300, i32 613 }, %struct.slookup { i16 310, i32 579 }, %struct.slookup { i16 320, i32 550 }, %struct.slookup { i16 330, i32 526 }, %struct.slookup { i16 350, i32 490 }, %struct.slookup { i16 400, i32 445 }, %struct.slookup { i16 450, i32 430 }, %struct.slookup { i16 500, i32 426 }, %struct.slookup { i16 510, i32 425 }], [112 x i8] zeroinitializer }, align 32
@dvbs2_nbch.nbch = internal constant { [29 x [2 x i32]], [56 x i8] } { [29 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 16200, i32 3240], [2 x i32] [i32 21600, i32 5400], [2 x i32] [i32 25920, i32 6480], [2 x i32] [i32 32400, i32 7200], [2 x i32] [i32 38880, i32 9720], [2 x i32] [i32 43200, i32 10800], [2 x i32] [i32 48600, i32 11880], [2 x i32] [i32 51840, i32 12600], [2 x i32] [i32 54000, i32 13320], [2 x i32] [i32 57600, i32 14400], [2 x i32] [i32 58320, i32 16000], [2 x i32] [i32 43200, i32 9720], [2 x i32] [i32 48600, i32 10800], [2 x i32] [i32 51840, i32 11880], [2 x i32] [i32 54000, i32 13320], [2 x i32] [i32 57600, i32 14400], [2 x i32] [i32 58320, i32 16000], [2 x i32] [i32 43200, i32 10800], [2 x i32] [i32 48600, i32 11880], [2 x i32] [i32 51840, i32 12600], [2 x i32] [i32 54000, i32 13320], [2 x i32] [i32 57600, i32 14400], [2 x i32] [i32 58320, i32 16000], [2 x i32] [i32 48600, i32 11880], [2 x i32] [i32 51840, i32 12600], [2 x i32] [i32 54000, i32 13320], [2 x i32] [i32 57600, i32 14400], [2 x i32] [i32 58320, i32 16000]], [56 x i8] zeroinitializer }, align 32
@gate_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 1252, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s() write_reg failure (enable=%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gate_ctrl\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gate_ctrl._entry_ptr = internal global ptr @gate_ctrl._entry, section ".printk_index", align 4
@switch.table.enable_puncture_rate = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01\02\04/\08/ ", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2147483648, i64 4294967295]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [7 x i64] [i64 5, i64 32, i64 13, i64 18, i64 21, i64 24, i64 26]
@__sancov_gen_cov_switch_values.21 = internal global [7 x i64] [i64 5, i64 32, i64 13, i64 18, i64 21, i64 24, i64 26]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1804, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1805, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1808, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [8 x i8] c"stvlist\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 28, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"stv0910_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1715, i32 38 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1819, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 157, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 140, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [16 x i8] c"vthlookup_table\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 980, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant [11 x i8] c"s2car_loop\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 359, i32 17 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"padc_lookup\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 337, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant [13 x i8] c"s2_sn_lookup\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 274, i32 29 }
@___asan_gen_.101 = private unnamed_addr constant [13 x i8] c"s1_sn_lookup\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 217, i32 29 }
@___asan_gen_.104 = private unnamed_addr constant [5 x i8] c"nbch\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 701, i32 19 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [41 x i8] c"../drivers/media/dvb-frontends/stv0910.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 1250, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [34 x i8] c"switch.table.enable_puncture_rate\00", align 1
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_stv0910_attach, ptr @gate_ctrl._entry, ptr @gate_ctrl._entry_ptr, ptr @i2c_read_regs16._entry, ptr @i2c_read_regs16._entry_ptr, ptr @stv0910_attach._entry, ptr @stv0910_attach._entry.8, ptr @stv0910_attach._entry_ptr, ptr @stv0910_attach._entry_ptr.10, ptr @write_reg._entry, ptr @write_reg._entry_ptr, ptr @stv0910_attach.__key, ptr @.str, ptr @stv0910_attach.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @stvlist, ptr @stv0910_ops, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @set_vth.vthlookup_table, ptr @s2car_loop, ptr @padc_lookup, ptr @s2_sn_lookup, ptr @s1_sn_lookup, ptr @dvbs2_nbch.nbch, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @switch.table.enable_puncture_rate], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0910_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0910_attach.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0910_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stvlist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0910_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv0910_attach._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_read_regs16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_vth.vthlookup_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2car_loop to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padc_lookup to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2_sn_lookup to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s1_sn_lookup to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbs2_nbch.nbch to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gate_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.enable_puncture_rate to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @stv0910_attach(ptr noundef %i2c, ptr nocapture noundef readonly %cfg, i32 noundef %nr) #0 align 64 {
entry:
  %data.i39.i.i = alloca [3 x i8], align 1
  %msg.i40.i.i = alloca %struct.i2c_msg, align 4
  %data.i20.i.i = alloca [3 x i8], align 1
  %msg.i21.i.i = alloca %struct.i2c_msg, align 4
  %data.i1.i.i = alloca [3 x i8], align 1
  %msg.i2.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i808.i = alloca [3 x i8], align 1
  %msg.i.i809.i = alloca %struct.i2c_msg, align 4
  %data.i792.i = alloca [3 x i8], align 1
  %msg.i793.i = alloca %struct.i2c_msg, align 4
  %data.i776.i = alloca [3 x i8], align 1
  %msg.i777.i = alloca %struct.i2c_msg, align 4
  %data.i760.i = alloca [3 x i8], align 1
  %msg.i761.i = alloca %struct.i2c_msg, align 4
  %data.i744.i = alloca [3 x i8], align 1
  %msg.i745.i = alloca %struct.i2c_msg, align 4
  %data.i727.i = alloca [3 x i8], align 1
  %msg.i728.i = alloca %struct.i2c_msg, align 4
  %data.i710.i = alloca [3 x i8], align 1
  %msg.i711.i = alloca %struct.i2c_msg, align 4
  %data.i693.i = alloca [3 x i8], align 1
  %msg.i694.i = alloca %struct.i2c_msg, align 4
  %data.i676.i = alloca [3 x i8], align 1
  %msg.i677.i = alloca %struct.i2c_msg, align 4
  %data.i659.i = alloca [3 x i8], align 1
  %msg.i660.i = alloca %struct.i2c_msg, align 4
  %data.i642.i = alloca [3 x i8], align 1
  %msg.i643.i = alloca %struct.i2c_msg, align 4
  %data.i625.i = alloca [3 x i8], align 1
  %msg.i626.i = alloca %struct.i2c_msg, align 4
  %data.i609.i = alloca [3 x i8], align 1
  %msg.i610.i = alloca %struct.i2c_msg, align 4
  %data.i593.i = alloca [3 x i8], align 1
  %msg.i594.i = alloca %struct.i2c_msg, align 4
  %data.i576.i = alloca [3 x i8], align 1
  %msg.i577.i = alloca %struct.i2c_msg, align 4
  %data.i559.i = alloca [3 x i8], align 1
  %msg.i560.i = alloca %struct.i2c_msg, align 4
  %data.i542.i = alloca [3 x i8], align 1
  %msg.i543.i = alloca %struct.i2c_msg, align 4
  %data.i526.i = alloca [3 x i8], align 1
  %msg.i527.i = alloca %struct.i2c_msg, align 4
  %data.i510.i = alloca [3 x i8], align 1
  %msg.i511.i = alloca %struct.i2c_msg, align 4
  %data.i493.i = alloca [3 x i8], align 1
  %msg.i494.i = alloca %struct.i2c_msg, align 4
  %data.i476.i = alloca [3 x i8], align 1
  %msg.i477.i = alloca %struct.i2c_msg, align 4
  %data.i23.i.i = alloca [3 x i8], align 1
  %msg.i24.i.i = alloca %struct.i2c_msg, align 4
  %data.i7.i.i = alloca [3 x i8], align 1
  %msg.i8.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i.i = alloca [3 x i8], align 1
  %msg.i.i469.i = alloca %struct.i2c_msg, align 4
  %data.i453.i = alloca [3 x i8], align 1
  %msg.i454.i = alloca %struct.i2c_msg, align 4
  %data.i437.i = alloca [3 x i8], align 1
  %msg.i438.i = alloca %struct.i2c_msg, align 4
  %data.i421.i = alloca [3 x i8], align 1
  %msg.i422.i = alloca %struct.i2c_msg, align 4
  %data.i405.i = alloca [3 x i8], align 1
  %msg.i406.i = alloca %struct.i2c_msg, align 4
  %data.i389.i = alloca [3 x i8], align 1
  %msg.i390.i = alloca %struct.i2c_msg, align 4
  %data.i373.i = alloca [3 x i8], align 1
  %msg.i374.i = alloca %struct.i2c_msg, align 4
  %data.i357.i = alloca [3 x i8], align 1
  %msg.i358.i = alloca %struct.i2c_msg, align 4
  %data.i341.i = alloca [3 x i8], align 1
  %msg.i342.i = alloca %struct.i2c_msg, align 4
  %data.i325.i = alloca [3 x i8], align 1
  %msg.i326.i = alloca %struct.i2c_msg, align 4
  %data.i309.i = alloca [3 x i8], align 1
  %msg.i310.i = alloca %struct.i2c_msg, align 4
  %data.i293.i = alloca [3 x i8], align 1
  %msg.i294.i = alloca %struct.i2c_msg, align 4
  %data.i277.i = alloca [3 x i8], align 1
  %msg.i278.i = alloca %struct.i2c_msg, align 4
  %data.i261.i = alloca [3 x i8], align 1
  %msg.i262.i = alloca %struct.i2c_msg, align 4
  %data.i245.i = alloca [3 x i8], align 1
  %msg.i246.i = alloca %struct.i2c_msg, align 4
  %data.i229.i = alloca [3 x i8], align 1
  %msg.i230.i = alloca %struct.i2c_msg, align 4
  %data.i213.i = alloca [3 x i8], align 1
  %msg.i214.i = alloca %struct.i2c_msg, align 4
  %data.i197.i = alloca [3 x i8], align 1
  %msg.i198.i = alloca %struct.i2c_msg, align 4
  %data.i181.i = alloca [3 x i8], align 1
  %msg.i182.i = alloca %struct.i2c_msg, align 4
  %data.i165.i = alloca [3 x i8], align 1
  %msg.i166.i = alloca %struct.i2c_msg, align 4
  %data.i149.i = alloca [3 x i8], align 1
  %msg.i150.i = alloca %struct.i2c_msg, align 4
  %data.i133.i = alloca [3 x i8], align 1
  %msg.i134.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [3 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i = alloca [2 x i8], align 1
  %msgs.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %id.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1148) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parallel = getelementptr inbounds %struct.stv0910_cfg, ptr %cfg, i32 0, i32 2
  %1 = ptrtoint ptr %parallel to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %parallel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  %conv2 = select i1 %tobool1.not, i8 96, i8 32
  %tscfgh = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %tscfgh to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %tscfgh, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %cmp = icmp eq i8 %2, 2
  %conv7 = select i1 %cmp, i8 2, i8 0
  %tsgeneral = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %tsgeneral to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv7, ptr %tsgeneral, align 4
  %rptlvl = getelementptr inbounds %struct.stv0910_cfg, ptr %cfg, i32 0, i32 3
  %5 = ptrtoint ptr %rptlvl to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rptlvl, align 2
  %7 = shl i8 %6, 4
  %8 = and i8 %7, 112
  %9 = or i8 %8, 10
  %i2crpt = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %i2crpt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %i2crpt, align 2
  %tsspeed = getelementptr inbounds %struct.stv0910_cfg, ptr %cfg, i32 0, i32 5
  %11 = ptrtoint ptr %tsspeed to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tsspeed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not = icmp eq i8 %12, 0
  %spec.select = select i1 %tobool12.not, i8 40, i8 %12
  %tsspeed17 = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %tsspeed17 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %spec.select, ptr %tsspeed17, align 1
  %nr18 = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %nr18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %nr, ptr %nr18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %tobool20.not = icmp eq i32 %nr, 0
  %conv22 = select i1 %tobool20.not, i16 512, i16 0
  %regoff = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %regoff to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv22, ptr %regoff, align 8
  %search_range = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %search_range to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16000000, ptr %search_range, align 4
  %demod_bits = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 17
  %17 = ptrtoint ptr %demod_bits to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 16, ptr %demod_bits, align 8
  %receive_mode = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 13
  %18 = ptrtoint ptr %receive_mode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %receive_mode, align 8
  %cur_scrambling_code = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 27
  %19 = ptrtoint ptr %cur_scrambling_code to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %cur_scrambling_code, align 8
  %single = getelementptr inbounds %struct.stv0910_cfg, ptr %cfg, i32 0, i32 4
  %20 = ptrtoint ptr %single to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %single, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool24.not = icmp ne i8 %21, 0
  %conv26 = zext i1 %tobool24.not to i8
  %single27 = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %single27 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv26, ptr %single27, align 2
  %adr = getelementptr inbounds %struct.stv0910_cfg, ptr %cfg, i32 0, i32 1
  %23 = ptrtoint ptr %adr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %adr, align 4
  %p.015.i = load ptr, ptr @stvlist, align 4
  %cmp.not16.i = icmp eq ptr %p.015.i, @stvlist
  br i1 %cmp.not16.i, label %if.end.if.else_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %p.017.i = phi ptr [ %p.0.i, %for.inc.i.for.body.i_crit_edge ], [ %p.015.i, %if.end.for.body.i_crit_edge ]
  %i2c1.i = getelementptr inbounds %struct.stv_base, ptr %p.017.i, i32 0, i32 2
  %25 = ptrtoint ptr %i2c1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c1.i, align 4
  %cmp2.i = icmp eq ptr %26, %i2c
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %adr3.i = getelementptr inbounds %struct.stv_base, ptr %p.017.i, i32 0, i32 1
  %27 = ptrtoint ptr %adr3.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %adr3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %24)
  %cmp5.i = icmp eq i8 %28, %24
  br i1 %cmp5.i, label %match_base.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %29 = ptrtoint ptr %p.017.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %p.0.i = load ptr, ptr %p.017.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, @stvlist
  br i1 %cmp.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

match_base.exit:                                  ; preds = %land.lhs.true.i
  %tobool29.not = icmp eq ptr %p.017.i, null
  br i1 %tobool29.not, label %match_base.exit.if.else_crit_edge, label %if.then30

match_base.exit.if.else_crit_edge:                ; preds = %match_base.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then30:                                        ; preds = %match_base.exit
  call void @__sanitizer_cov_trace_pc() #8
  %count = getelementptr inbounds %struct.stv_base, ptr %p.017.i, i32 0, i32 5
  %30 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %count, align 4
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %p.017.i, ptr %call7.i.i, align 8
  br label %if.end62

if.else:                                          ; preds = %match_base.exit.if.else_crit_edge, %for.inc.i.if.else_crit_edge, %if.end.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i130 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 212) #9
  %tobool33.not = icmp eq ptr %call7.i.i130, null
  br i1 %tobool33.not, label %if.else.fail_crit_edge, label %if.end35

if.else.fail_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end35:                                         ; preds = %if.else
  %i2c36 = getelementptr inbounds %struct.stv_base, ptr %call7.i.i130, i32 0, i32 2
  %34 = ptrtoint ptr %i2c36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %i2c, ptr %i2c36, align 4
  %35 = ptrtoint ptr %adr to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %adr, align 4
  %adr38 = getelementptr inbounds %struct.stv_base, ptr %call7.i.i130, i32 0, i32 1
  %37 = ptrtoint ptr %adr38 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %adr38, align 8
  %count39 = getelementptr inbounds %struct.stv_base, ptr %call7.i.i130, i32 0, i32 5
  %38 = ptrtoint ptr %count39 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %count39, align 8
  %39 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool40.not = icmp eq i32 %40, 0
  %spec.select129 = select i1 %tobool40.not, i32 30000000, i32 %40
  %extclk = getelementptr inbounds %struct.stv_base, ptr %call7.i.i130, i32 0, i32 6
  %41 = ptrtoint ptr %extclk to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %spec.select129, ptr %extclk, align 4
  %i2c_lock = getelementptr inbounds %struct.stv_base, ptr %call7.i.i130, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %i2c_lock, ptr noundef nonnull @.str, ptr noundef nonnull @stv0910_attach.__key) #6
  %reg_lock = getelementptr inbounds %struct.stv_base, ptr %call7.i.i130, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @stv0910_attach.__key.1) #6
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i130, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id.i) #6
  %43 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %id.i, align 1, !annotation !69
  %44 = ptrtoint ptr %receive_mode to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %receive_mode, align 8
  %started.i = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 11
  %45 = ptrtoint ptr %started.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %started.i, align 8
  %46 = ptrtoint ptr %i2c36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i2c36, align 4
  %48 = ptrtoint ptr %adr38 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %adr38, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i) #6
  %50 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -15, ptr %msg.i.i.i, align 1
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %50, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  %53 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %54 = call ptr @memset(ptr %53, i32 255, i32 16)
  %conv5.i.i.i = zext i8 %49 to i16
  %55 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv5.i.i.i, ptr %msgs.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i.i.i, align 2
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 2, ptr %53, align 4
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %msg.i.i.i, ptr %buf.i.i.i, align 4
  %arrayinit.element6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1
  %59 = ptrtoint ptr %arrayinit.element6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv5.i.i.i, ptr %arrayinit.element6.i.i.i, align 4
  %flags9.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 1
  %60 = ptrtoint ptr %flags9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %flags9.i.i.i, align 2
  %len10.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 2
  %61 = ptrtoint ptr %len10.i.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1, ptr %len10.i.i.i, align 4
  %buf12.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 3
  %62 = ptrtoint ptr %buf12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %id.i, ptr %buf12.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msgs.i.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i.i, label %if.end.i, label %read_reg.exit.thread.i

read_reg.exit.thread.i:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %47, i32 0, i32 9
  %conv15.i.i.i = zext i8 %49 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i.i, i32 noundef 61696) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i) #6
  br label %do.end56

if.end.i:                                         ; preds = %if.end35
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i) #6
  %63 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %64)
  %cmp1.not.i = icmp eq i8 %64, 81
  br i1 %cmp1.not.i, label %if.end4.i, label %if.end.i.do.end56_crit_edge

if.end.i.do.end56_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end56

if.end4.i:                                        ; preds = %if.end.i
  %65 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call7.i.i, align 8
  %i2c.i131.i = getelementptr inbounds %struct.stv_base, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %i2c.i131.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %i2c.i131.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #6
  %69 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %70 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %71 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -15, ptr %data.i.i, align 1
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 42, ptr %69, align 1
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 36, ptr %70, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %74 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 262143, ptr %74, align 4
  %adr.i132.i = getelementptr inbounds %struct.stv_base, ptr %66, i32 0, i32 1
  %76 = ptrtoint ptr %adr.i132.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %adr.i132.i, align 4
  %conv6.i.i = zext i8 %77 to i16
  %78 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv6.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %80 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %data.i.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end4.i.write_reg.exit.i_crit_edge, label %do.end.i.i

if.end4.i.write_reg.exit.i_crit_edge:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit.i

do.end.i.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %68, i32 0, i32 9
  %81 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call7.i.i, align 8
  %adr9.i.i = getelementptr inbounds %struct.stv_base, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %adr9.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %adr9.i.i, align 4
  %conv10.i.i = zext i8 %84 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i.i, i32 noundef 61738, i32 noundef 36) #10
  br label %write_reg.exit.i

write_reg.exit.i:                                 ; preds = %do.end.i.i, %if.end4.i.write_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #6
  %85 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call7.i.i, align 8
  %i2c.i135.i = getelementptr inbounds %struct.stv_base, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %i2c.i135.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %i2c.i135.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i133.i) #6
  %89 = getelementptr inbounds [3 x i8], ptr %data.i133.i, i32 0, i32 1
  %90 = getelementptr inbounds [3 x i8], ptr %data.i133.i, i32 0, i32 2
  %91 = ptrtoint ptr %data.i133.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -15, ptr %data.i133.i, align 1
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 43, ptr %89, align 1
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 36, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i134.i) #6
  %94 = getelementptr inbounds i8, ptr %msg.i134.i, i32 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 262143, ptr %94, align 4
  %adr.i136.i = getelementptr inbounds %struct.stv_base, ptr %86, i32 0, i32 1
  %96 = ptrtoint ptr %adr.i136.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %adr.i136.i, align 4
  %conv6.i137.i = zext i8 %97 to i16
  %98 = ptrtoint ptr %msg.i134.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv6.i137.i, ptr %msg.i134.i, align 4
  %flags.i138.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i134.i, i32 0, i32 1
  %99 = ptrtoint ptr %flags.i138.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 0, ptr %flags.i138.i, align 2
  %buf.i140.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i134.i, i32 0, i32 3
  %100 = ptrtoint ptr %buf.i140.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %data.i133.i, ptr %buf.i140.i, align 4
  %call.i141.i = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %msg.i134.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i141.i)
  %cmp.not.i142.i = icmp eq i32 %call.i141.i, 1
  br i1 %cmp.not.i142.i, label %write_reg.exit.i.write_reg.exit148.i_crit_edge, label %do.end.i146.i

write_reg.exit.i.write_reg.exit148.i_crit_edge:   ; preds = %write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit148.i

do.end.i146.i:                                    ; preds = %write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i143.i = getelementptr inbounds %struct.i2c_adapter, ptr %88, i32 0, i32 9
  %101 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call7.i.i, align 8
  %adr9.i144.i = getelementptr inbounds %struct.stv_base, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %adr9.i144.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %adr9.i144.i, align 4
  %conv10.i145.i = zext i8 %104 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i143.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i145.i, i32 noundef 61739, i32 noundef 36) #10
  br label %write_reg.exit148.i

write_reg.exit148.i:                              ; preds = %do.end.i146.i, %write_reg.exit.i.write_reg.exit148.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i134.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i133.i) #6
  %105 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call7.i.i, align 8
  %i2c.i151.i = getelementptr inbounds %struct.stv_base, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %i2c.i151.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %i2c.i151.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i149.i) #6
  %109 = getelementptr inbounds [3 x i8], ptr %data.i149.i, i32 0, i32 1
  %110 = getelementptr inbounds [3 x i8], ptr %data.i149.i, i32 0, i32 2
  %111 = ptrtoint ptr %data.i149.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -15, ptr %data.i149.i, align 1
  %112 = ptrtoint ptr %109 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 41, ptr %109, align 1
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -120, ptr %110, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i150.i) #6
  %114 = getelementptr inbounds i8, ptr %msg.i150.i, i32 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 262143, ptr %114, align 4
  %adr.i152.i = getelementptr inbounds %struct.stv_base, ptr %106, i32 0, i32 1
  %116 = ptrtoint ptr %adr.i152.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %adr.i152.i, align 4
  %conv6.i153.i = zext i8 %117 to i16
  %118 = ptrtoint ptr %msg.i150.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv6.i153.i, ptr %msg.i150.i, align 4
  %flags.i154.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i150.i, i32 0, i32 1
  %119 = ptrtoint ptr %flags.i154.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %flags.i154.i, align 2
  %buf.i156.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i150.i, i32 0, i32 3
  %120 = ptrtoint ptr %buf.i156.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %data.i149.i, ptr %buf.i156.i, align 4
  %call.i157.i = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %msg.i150.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i157.i)
  %cmp.not.i158.i = icmp eq i32 %call.i157.i, 1
  br i1 %cmp.not.i158.i, label %write_reg.exit148.i.write_reg.exit164.i_crit_edge, label %do.end.i162.i

write_reg.exit148.i.write_reg.exit164.i_crit_edge: ; preds = %write_reg.exit148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit164.i

do.end.i162.i:                                    ; preds = %write_reg.exit148.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i159.i = getelementptr inbounds %struct.i2c_adapter, ptr %108, i32 0, i32 9
  %121 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call7.i.i, align 8
  %adr9.i160.i = getelementptr inbounds %struct.stv_base, ptr %122, i32 0, i32 1
  %123 = ptrtoint ptr %adr9.i160.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %adr9.i160.i, align 4
  %conv10.i161.i = zext i8 %124 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i159.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i161.i, i32 noundef 61737, i32 noundef 136) #10
  br label %write_reg.exit164.i

write_reg.exit164.i:                              ; preds = %do.end.i162.i, %write_reg.exit148.i.write_reg.exit164.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i150.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i149.i) #6
  %125 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %call7.i.i, align 8
  %i2c.i167.i = getelementptr inbounds %struct.stv_base, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %i2c.i167.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %i2c.i167.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i165.i) #6
  %129 = getelementptr inbounds [3 x i8], ptr %data.i165.i, i32 0, i32 1
  %130 = getelementptr inbounds [3 x i8], ptr %data.i165.i, i32 0, i32 2
  %131 = ptrtoint ptr %data.i165.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 -15, ptr %data.i165.i, align 1
  %132 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 28, ptr %129, align 1
  %133 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %130, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i166.i) #6
  %134 = getelementptr inbounds i8, ptr %msg.i166.i, i32 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 262143, ptr %134, align 4
  %adr.i168.i = getelementptr inbounds %struct.stv_base, ptr %126, i32 0, i32 1
  %136 = ptrtoint ptr %adr.i168.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %adr.i168.i, align 4
  %conv6.i169.i = zext i8 %137 to i16
  %138 = ptrtoint ptr %msg.i166.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %conv6.i169.i, ptr %msg.i166.i, align 4
  %flags.i170.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i166.i, i32 0, i32 1
  %139 = ptrtoint ptr %flags.i170.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %flags.i170.i, align 2
  %buf.i172.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i166.i, i32 0, i32 3
  %140 = ptrtoint ptr %buf.i172.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %data.i165.i, ptr %buf.i172.i, align 4
  %call.i173.i = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %msg.i166.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i173.i)
  %cmp.not.i174.i = icmp eq i32 %call.i173.i, 1
  br i1 %cmp.not.i174.i, label %write_reg.exit164.i.write_reg.exit180.i_crit_edge, label %do.end.i178.i

write_reg.exit164.i.write_reg.exit180.i_crit_edge: ; preds = %write_reg.exit164.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit180.i

do.end.i178.i:                                    ; preds = %write_reg.exit164.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i175.i = getelementptr inbounds %struct.i2c_adapter, ptr %128, i32 0, i32 9
  %141 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %call7.i.i, align 8
  %adr9.i176.i = getelementptr inbounds %struct.stv_base, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %adr9.i176.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %adr9.i176.i, align 4
  %conv10.i177.i = zext i8 %144 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i175.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i177.i, i32 noundef 61724, i32 noundef 0) #10
  br label %write_reg.exit180.i

write_reg.exit180.i:                              ; preds = %do.end.i178.i, %write_reg.exit164.i.write_reg.exit180.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i166.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i165.i) #6
  %145 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %call7.i.i, align 8
  %i2c.i183.i = getelementptr inbounds %struct.stv_base, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %i2c.i183.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %i2c.i183.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i181.i) #6
  %149 = getelementptr inbounds [3 x i8], ptr %data.i181.i, i32 0, i32 1
  %150 = getelementptr inbounds [3 x i8], ptr %data.i181.i, i32 0, i32 2
  %151 = ptrtoint ptr %data.i181.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 -15, ptr %data.i181.i, align 1
  %152 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 26, ptr %149, align 1
  %153 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 5, ptr %150, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i182.i) #6
  %154 = getelementptr inbounds i8, ptr %msg.i182.i, i32 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 262143, ptr %154, align 4
  %adr.i184.i = getelementptr inbounds %struct.stv_base, ptr %146, i32 0, i32 1
  %156 = ptrtoint ptr %adr.i184.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %adr.i184.i, align 4
  %conv6.i185.i = zext i8 %157 to i16
  %158 = ptrtoint ptr %msg.i182.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv6.i185.i, ptr %msg.i182.i, align 4
  %flags.i186.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i182.i, i32 0, i32 1
  %159 = ptrtoint ptr %flags.i186.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 0, ptr %flags.i186.i, align 2
  %buf.i188.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i182.i, i32 0, i32 3
  %160 = ptrtoint ptr %buf.i188.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %data.i181.i, ptr %buf.i188.i, align 4
  %call.i189.i = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %msg.i182.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i189.i)
  %cmp.not.i190.i = icmp eq i32 %call.i189.i, 1
  br i1 %cmp.not.i190.i, label %write_reg.exit180.i.write_reg.exit196.i_crit_edge, label %do.end.i194.i

write_reg.exit180.i.write_reg.exit196.i_crit_edge: ; preds = %write_reg.exit180.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit196.i

do.end.i194.i:                                    ; preds = %write_reg.exit180.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i191.i = getelementptr inbounds %struct.i2c_adapter, ptr %148, i32 0, i32 9
  %161 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %call7.i.i, align 8
  %adr9.i192.i = getelementptr inbounds %struct.stv_base, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %adr9.i192.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %adr9.i192.i, align 4
  %conv10.i193.i = zext i8 %164 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i191.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i193.i, i32 noundef 61722, i32 noundef 5) #10
  br label %write_reg.exit196.i

write_reg.exit196.i:                              ; preds = %do.end.i194.i, %write_reg.exit180.i.write_reg.exit196.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i182.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i181.i) #6
  %165 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %call7.i.i, align 8
  %i2c.i199.i = getelementptr inbounds %struct.stv_base, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %i2c.i199.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %i2c.i199.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i197.i) #6
  %169 = getelementptr inbounds [3 x i8], ptr %data.i197.i, i32 0, i32 1
  %170 = getelementptr inbounds [3 x i8], ptr %data.i197.i, i32 0, i32 2
  %171 = ptrtoint ptr %data.i197.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 -15, ptr %data.i197.i, align 1
  %172 = ptrtoint ptr %169 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 -74, ptr %169, align 1
  %173 = ptrtoint ptr %170 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 2, ptr %170, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i198.i) #6
  %174 = getelementptr inbounds i8, ptr %msg.i198.i, i32 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 262143, ptr %174, align 4
  %adr.i200.i = getelementptr inbounds %struct.stv_base, ptr %166, i32 0, i32 1
  %176 = ptrtoint ptr %adr.i200.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %adr.i200.i, align 4
  %conv6.i201.i = zext i8 %177 to i16
  %178 = ptrtoint ptr %msg.i198.i to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %conv6.i201.i, ptr %msg.i198.i, align 4
  %flags.i202.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i198.i, i32 0, i32 1
  %179 = ptrtoint ptr %flags.i202.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 0, ptr %flags.i202.i, align 2
  %buf.i204.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i198.i, i32 0, i32 3
  %180 = ptrtoint ptr %buf.i204.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %data.i197.i, ptr %buf.i204.i, align 4
  %call.i205.i = call i32 @i2c_transfer(ptr noundef %168, ptr noundef nonnull %msg.i198.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i205.i)
  %cmp.not.i206.i = icmp eq i32 %call.i205.i, 1
  br i1 %cmp.not.i206.i, label %write_reg.exit196.i.write_reg.exit212.i_crit_edge, label %do.end.i210.i

write_reg.exit196.i.write_reg.exit212.i_crit_edge: ; preds = %write_reg.exit196.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit212.i

do.end.i210.i:                                    ; preds = %write_reg.exit196.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i207.i = getelementptr inbounds %struct.i2c_adapter, ptr %168, i32 0, i32 9
  %181 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %call7.i.i, align 8
  %adr9.i208.i = getelementptr inbounds %struct.stv_base, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %adr9.i208.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %adr9.i208.i, align 4
  %conv10.i209.i = zext i8 %184 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i207.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i209.i, i32 noundef 61878, i32 noundef 2) #10
  br label %write_reg.exit212.i

write_reg.exit212.i:                              ; preds = %do.end.i210.i, %write_reg.exit196.i.write_reg.exit212.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i198.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i197.i) #6
  %185 = ptrtoint ptr %tsgeneral to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %tsgeneral, align 4
  %187 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %call7.i.i, align 8
  %i2c.i215.i = getelementptr inbounds %struct.stv_base, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %i2c.i215.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %i2c.i215.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i213.i) #6
  %191 = getelementptr inbounds [3 x i8], ptr %data.i213.i, i32 0, i32 1
  %192 = getelementptr inbounds [3 x i8], ptr %data.i213.i, i32 0, i32 2
  %193 = ptrtoint ptr %data.i213.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 -10, ptr %data.i213.i, align 1
  %194 = ptrtoint ptr %191 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 48, ptr %191, align 1
  %195 = ptrtoint ptr %192 to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %186, ptr %192, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i214.i) #6
  %196 = getelementptr inbounds i8, ptr %msg.i214.i, i32 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 262143, ptr %196, align 4
  %adr.i216.i = getelementptr inbounds %struct.stv_base, ptr %188, i32 0, i32 1
  %198 = ptrtoint ptr %adr.i216.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %adr.i216.i, align 4
  %conv6.i217.i = zext i8 %199 to i16
  %200 = ptrtoint ptr %msg.i214.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %conv6.i217.i, ptr %msg.i214.i, align 4
  %flags.i218.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i214.i, i32 0, i32 1
  %201 = ptrtoint ptr %flags.i218.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 0, ptr %flags.i218.i, align 2
  %buf.i220.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i214.i, i32 0, i32 3
  %202 = ptrtoint ptr %buf.i220.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %data.i213.i, ptr %buf.i220.i, align 4
  %call.i221.i = call i32 @i2c_transfer(ptr noundef %190, ptr noundef nonnull %msg.i214.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i221.i)
  %cmp.not.i222.i = icmp eq i32 %call.i221.i, 1
  br i1 %cmp.not.i222.i, label %write_reg.exit212.i.write_reg.exit228.i_crit_edge, label %do.end.i226.i

write_reg.exit212.i.write_reg.exit228.i_crit_edge: ; preds = %write_reg.exit212.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit228.i

do.end.i226.i:                                    ; preds = %write_reg.exit212.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i223.i = getelementptr inbounds %struct.i2c_adapter, ptr %190, i32 0, i32 9
  %203 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %call7.i.i, align 8
  %adr9.i224.i = getelementptr inbounds %struct.stv_base, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %adr9.i224.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %adr9.i224.i, align 4
  %conv10.i225.i = zext i8 %206 to i32
  %conv12.i.i = zext i8 %186 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i223.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i225.i, i32 noundef 63024, i32 noundef %conv12.i.i) #10
  br label %write_reg.exit228.i

write_reg.exit228.i:                              ; preds = %do.end.i226.i, %write_reg.exit212.i.write_reg.exit228.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i214.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i213.i) #6
  %207 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %call7.i.i, align 8
  %i2c.i231.i = getelementptr inbounds %struct.stv_base, ptr %208, i32 0, i32 2
  %209 = ptrtoint ptr %i2c.i231.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %i2c.i231.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i229.i) #6
  %211 = getelementptr inbounds [3 x i8], ptr %data.i229.i, i32 0, i32 1
  %212 = getelementptr inbounds [3 x i8], ptr %data.i229.i, i32 0, i32 2
  %213 = ptrtoint ptr %data.i229.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 -6, ptr %data.i229.i, align 1
  %214 = ptrtoint ptr %211 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 -128, ptr %211, align 1
  %215 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 2, ptr %212, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i230.i) #6
  %216 = getelementptr inbounds i8, ptr %msg.i230.i, i32 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 262143, ptr %216, align 4
  %adr.i232.i = getelementptr inbounds %struct.stv_base, ptr %208, i32 0, i32 1
  %218 = ptrtoint ptr %adr.i232.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %adr.i232.i, align 4
  %conv6.i233.i = zext i8 %219 to i16
  %220 = ptrtoint ptr %msg.i230.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %conv6.i233.i, ptr %msg.i230.i, align 4
  %flags.i234.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i230.i, i32 0, i32 1
  %221 = ptrtoint ptr %flags.i234.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 0, ptr %flags.i234.i, align 2
  %buf.i236.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i230.i, i32 0, i32 3
  %222 = ptrtoint ptr %buf.i236.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %data.i229.i, ptr %buf.i236.i, align 4
  %call.i237.i = call i32 @i2c_transfer(ptr noundef %210, ptr noundef nonnull %msg.i230.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i237.i)
  %cmp.not.i238.i = icmp eq i32 %call.i237.i, 1
  br i1 %cmp.not.i238.i, label %write_reg.exit228.i.write_reg.exit244.i_crit_edge, label %do.end.i242.i

write_reg.exit228.i.write_reg.exit244.i_crit_edge: ; preds = %write_reg.exit228.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit244.i

do.end.i242.i:                                    ; preds = %write_reg.exit228.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i239.i = getelementptr inbounds %struct.i2c_adapter, ptr %210, i32 0, i32 9
  %223 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %call7.i.i, align 8
  %adr9.i240.i = getelementptr inbounds %struct.stv_base, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %adr9.i240.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %adr9.i240.i, align 4
  %conv10.i241.i = zext i8 %226 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i239.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i241.i, i32 noundef 64128, i32 noundef 2) #10
  br label %write_reg.exit244.i

write_reg.exit244.i:                              ; preds = %do.end.i242.i, %write_reg.exit228.i.write_reg.exit244.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i230.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i229.i) #6
  %227 = ptrtoint ptr %single27 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %single27, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool.not.i = icmp eq i8 %228, 0
  %229 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %call7.i.i, align 8
  %i2c.i263.i = getelementptr inbounds %struct.stv_base, ptr %230, i32 0, i32 2
  %231 = ptrtoint ptr %i2c.i263.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %i2c.i263.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then13.i

if.then13.i:                                      ; preds = %write_reg.exit244.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i245.i) #6
  %233 = getelementptr inbounds [3 x i8], ptr %data.i245.i, i32 0, i32 1
  %234 = getelementptr inbounds [3 x i8], ptr %data.i245.i, i32 0, i32 2
  %235 = ptrtoint ptr %data.i245.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 -6, ptr %data.i245.i, align 1
  %236 = ptrtoint ptr %233 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 -122, ptr %233, align 1
  %237 = ptrtoint ptr %234 to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 20, ptr %234, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i246.i) #6
  %238 = getelementptr inbounds i8, ptr %msg.i246.i, i32 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 262143, ptr %238, align 4
  %adr.i248.i = getelementptr inbounds %struct.stv_base, ptr %230, i32 0, i32 1
  %240 = ptrtoint ptr %adr.i248.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %adr.i248.i, align 4
  %conv6.i249.i = zext i8 %241 to i16
  %242 = ptrtoint ptr %msg.i246.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 %conv6.i249.i, ptr %msg.i246.i, align 4
  %flags.i250.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i246.i, i32 0, i32 1
  %243 = ptrtoint ptr %flags.i250.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 0, ptr %flags.i250.i, align 2
  %buf.i252.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i246.i, i32 0, i32 3
  %244 = ptrtoint ptr %buf.i252.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %data.i245.i, ptr %buf.i252.i, align 4
  %call.i253.i = call i32 @i2c_transfer(ptr noundef %232, ptr noundef nonnull %msg.i246.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i253.i)
  %cmp.not.i254.i = icmp eq i32 %call.i253.i, 1
  br i1 %cmp.not.i254.i, label %if.then13.i.write_reg.exit260.i_crit_edge, label %do.end.i258.i

if.then13.i.write_reg.exit260.i_crit_edge:        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit260.i

do.end.i258.i:                                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i255.i = getelementptr inbounds %struct.i2c_adapter, ptr %232, i32 0, i32 9
  %245 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %call7.i.i, align 8
  %adr9.i256.i = getelementptr inbounds %struct.stv_base, ptr %246, i32 0, i32 1
  %247 = ptrtoint ptr %adr9.i256.i to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %adr9.i256.i, align 4
  %conv10.i257.i = zext i8 %248 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i255.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i257.i, i32 noundef 64134, i32 noundef 20) #10
  br label %write_reg.exit260.i

write_reg.exit260.i:                              ; preds = %do.end.i258.i, %if.then13.i.write_reg.exit260.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i246.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i245.i) #6
  br label %if.end16.i

if.else.i:                                        ; preds = %write_reg.exit244.i
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i261.i) #6
  %249 = getelementptr inbounds [3 x i8], ptr %data.i261.i, i32 0, i32 1
  %250 = getelementptr inbounds [3 x i8], ptr %data.i261.i, i32 0, i32 2
  %251 = ptrtoint ptr %data.i261.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 -6, ptr %data.i261.i, align 1
  %252 = ptrtoint ptr %249 to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 -122, ptr %249, align 1
  %253 = ptrtoint ptr %250 to i32
  call void @__asan_store1_noabort(i32 %253)
  store i8 21, ptr %250, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i262.i) #6
  %254 = getelementptr inbounds i8, ptr %msg.i262.i, i32 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 262143, ptr %254, align 4
  %adr.i264.i = getelementptr inbounds %struct.stv_base, ptr %230, i32 0, i32 1
  %256 = ptrtoint ptr %adr.i264.i to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %adr.i264.i, align 4
  %conv6.i265.i = zext i8 %257 to i16
  %258 = ptrtoint ptr %msg.i262.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 %conv6.i265.i, ptr %msg.i262.i, align 4
  %flags.i266.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i262.i, i32 0, i32 1
  %259 = ptrtoint ptr %flags.i266.i to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 0, ptr %flags.i266.i, align 2
  %buf.i268.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i262.i, i32 0, i32 3
  %260 = ptrtoint ptr %buf.i268.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr %data.i261.i, ptr %buf.i268.i, align 4
  %call.i269.i = call i32 @i2c_transfer(ptr noundef %232, ptr noundef nonnull %msg.i262.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i269.i)
  %cmp.not.i270.i = icmp eq i32 %call.i269.i, 1
  br i1 %cmp.not.i270.i, label %if.else.i.write_reg.exit276.i_crit_edge, label %do.end.i274.i

if.else.i.write_reg.exit276.i_crit_edge:          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit276.i

do.end.i274.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i271.i = getelementptr inbounds %struct.i2c_adapter, ptr %232, i32 0, i32 9
  %261 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %call7.i.i, align 8
  %adr9.i272.i = getelementptr inbounds %struct.stv_base, ptr %262, i32 0, i32 1
  %263 = ptrtoint ptr %adr9.i272.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %adr9.i272.i, align 4
  %conv10.i273.i = zext i8 %264 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i271.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i273.i, i32 noundef 64134, i32 noundef 21) #10
  br label %write_reg.exit276.i

write_reg.exit276.i:                              ; preds = %do.end.i274.i, %if.else.i.write_reg.exit276.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i262.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i261.i) #6
  br label %if.end16.i

if.end16.i:                                       ; preds = %write_reg.exit276.i, %write_reg.exit260.i
  %265 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %call7.i.i, align 8
  %i2c.i279.i = getelementptr inbounds %struct.stv_base, ptr %266, i32 0, i32 2
  %267 = ptrtoint ptr %i2c.i279.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %i2c.i279.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i277.i) #6
  %269 = getelementptr inbounds [3 x i8], ptr %data.i277.i, i32 0, i32 1
  %270 = getelementptr inbounds [3 x i8], ptr %data.i277.i, i32 0, i32 2
  %271 = ptrtoint ptr %data.i277.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 -12, ptr %data.i277.i, align 1
  %272 = ptrtoint ptr %269 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 -31, ptr %269, align 1
  %273 = ptrtoint ptr %270 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 2, ptr %270, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i278.i) #6
  %274 = getelementptr inbounds i8, ptr %msg.i278.i, i32 4
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 262143, ptr %274, align 4
  %adr.i280.i = getelementptr inbounds %struct.stv_base, ptr %266, i32 0, i32 1
  %276 = ptrtoint ptr %adr.i280.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %adr.i280.i, align 4
  %conv6.i281.i = zext i8 %277 to i16
  %278 = ptrtoint ptr %msg.i278.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 %conv6.i281.i, ptr %msg.i278.i, align 4
  %flags.i282.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i278.i, i32 0, i32 1
  %279 = ptrtoint ptr %flags.i282.i to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 0, ptr %flags.i282.i, align 2
  %buf.i284.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i278.i, i32 0, i32 3
  %280 = ptrtoint ptr %buf.i284.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %data.i277.i, ptr %buf.i284.i, align 4
  %call.i285.i = call i32 @i2c_transfer(ptr noundef %268, ptr noundef nonnull %msg.i278.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i285.i)
  %cmp.not.i286.i = icmp eq i32 %call.i285.i, 1
  br i1 %cmp.not.i286.i, label %if.end16.i.write_reg.exit292.i_crit_edge, label %do.end.i290.i

if.end16.i.write_reg.exit292.i_crit_edge:         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit292.i

do.end.i290.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i287.i = getelementptr inbounds %struct.i2c_adapter, ptr %268, i32 0, i32 9
  %281 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %call7.i.i, align 8
  %adr9.i288.i = getelementptr inbounds %struct.stv_base, ptr %282, i32 0, i32 1
  %283 = ptrtoint ptr %adr9.i288.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %adr9.i288.i, align 4
  %conv10.i289.i = zext i8 %284 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i287.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i289.i, i32 noundef 62689, i32 noundef 2) #10
  br label %write_reg.exit292.i

write_reg.exit292.i:                              ; preds = %do.end.i290.i, %if.end16.i.write_reg.exit292.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i278.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i277.i) #6
  %285 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %call7.i.i, align 8
  %i2c.i295.i = getelementptr inbounds %struct.stv_base, ptr %286, i32 0, i32 2
  %287 = ptrtoint ptr %i2c.i295.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %i2c.i295.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i293.i) #6
  %289 = getelementptr inbounds [3 x i8], ptr %data.i293.i, i32 0, i32 1
  %290 = getelementptr inbounds [3 x i8], ptr %data.i293.i, i32 0, i32 2
  %291 = ptrtoint ptr %data.i293.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 -14, ptr %data.i293.i, align 1
  %292 = ptrtoint ptr %289 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 -31, ptr %289, align 1
  %293 = ptrtoint ptr %290 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 -126, ptr %290, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i294.i) #6
  %294 = getelementptr inbounds i8, ptr %msg.i294.i, i32 4
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 262143, ptr %294, align 4
  %adr.i296.i = getelementptr inbounds %struct.stv_base, ptr %286, i32 0, i32 1
  %296 = ptrtoint ptr %adr.i296.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %adr.i296.i, align 4
  %conv6.i297.i = zext i8 %297 to i16
  %298 = ptrtoint ptr %msg.i294.i to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %conv6.i297.i, ptr %msg.i294.i, align 4
  %flags.i298.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i294.i, i32 0, i32 1
  %299 = ptrtoint ptr %flags.i298.i to i32
  call void @__asan_store2_noabort(i32 %299)
  store i16 0, ptr %flags.i298.i, align 2
  %buf.i300.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i294.i, i32 0, i32 3
  %300 = ptrtoint ptr %buf.i300.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %data.i293.i, ptr %buf.i300.i, align 4
  %call.i301.i = call i32 @i2c_transfer(ptr noundef %288, ptr noundef nonnull %msg.i294.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i301.i)
  %cmp.not.i302.i = icmp eq i32 %call.i301.i, 1
  br i1 %cmp.not.i302.i, label %write_reg.exit292.i.write_reg.exit308.i_crit_edge, label %do.end.i306.i

write_reg.exit292.i.write_reg.exit308.i_crit_edge: ; preds = %write_reg.exit292.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit308.i

do.end.i306.i:                                    ; preds = %write_reg.exit292.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i303.i = getelementptr inbounds %struct.i2c_adapter, ptr %288, i32 0, i32 9
  %301 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %call7.i.i, align 8
  %adr9.i304.i = getelementptr inbounds %struct.stv_base, ptr %302, i32 0, i32 1
  %303 = ptrtoint ptr %adr9.i304.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %adr9.i304.i, align 4
  %conv10.i305.i = zext i8 %304 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i303.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i305.i, i32 noundef 62177, i32 noundef 130) #10
  br label %write_reg.exit308.i

write_reg.exit308.i:                              ; preds = %do.end.i306.i, %write_reg.exit292.i.write_reg.exit308.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i294.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i293.i) #6
  %305 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %call7.i.i, align 8
  %i2c.i311.i = getelementptr inbounds %struct.stv_base, ptr %306, i32 0, i32 2
  %307 = ptrtoint ptr %i2c.i311.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %i2c.i311.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i309.i) #6
  %309 = getelementptr inbounds [3 x i8], ptr %data.i309.i, i32 0, i32 1
  %310 = getelementptr inbounds [3 x i8], ptr %data.i309.i, i32 0, i32 2
  %311 = ptrtoint ptr %data.i309.i to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 -12, ptr %data.i309.i, align 1
  %312 = ptrtoint ptr %309 to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 -110, ptr %309, align 1
  %313 = ptrtoint ptr %310 to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 2, ptr %310, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i310.i) #6
  %314 = getelementptr inbounds i8, ptr %msg.i310.i, i32 4
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 262143, ptr %314, align 4
  %adr.i312.i = getelementptr inbounds %struct.stv_base, ptr %306, i32 0, i32 1
  %316 = ptrtoint ptr %adr.i312.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %adr.i312.i, align 4
  %conv6.i313.i = zext i8 %317 to i16
  %318 = ptrtoint ptr %msg.i310.i to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 %conv6.i313.i, ptr %msg.i310.i, align 4
  %flags.i314.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i310.i, i32 0, i32 1
  %319 = ptrtoint ptr %flags.i314.i to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 0, ptr %flags.i314.i, align 2
  %buf.i316.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i310.i, i32 0, i32 3
  %320 = ptrtoint ptr %buf.i316.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr %data.i309.i, ptr %buf.i316.i, align 4
  %call.i317.i = call i32 @i2c_transfer(ptr noundef %308, ptr noundef nonnull %msg.i310.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i317.i)
  %cmp.not.i318.i = icmp eq i32 %call.i317.i, 1
  br i1 %cmp.not.i318.i, label %write_reg.exit308.i.write_reg.exit324.i_crit_edge, label %do.end.i322.i

write_reg.exit308.i.write_reg.exit324.i_crit_edge: ; preds = %write_reg.exit308.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit324.i

do.end.i322.i:                                    ; preds = %write_reg.exit308.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i319.i = getelementptr inbounds %struct.i2c_adapter, ptr %308, i32 0, i32 9
  %321 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %call7.i.i, align 8
  %adr9.i320.i = getelementptr inbounds %struct.stv_base, ptr %322, i32 0, i32 1
  %323 = ptrtoint ptr %adr9.i320.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %adr9.i320.i, align 4
  %conv10.i321.i = zext i8 %324 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i319.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i321.i, i32 noundef 62610, i32 noundef 2) #10
  br label %write_reg.exit324.i

write_reg.exit324.i:                              ; preds = %do.end.i322.i, %write_reg.exit308.i.write_reg.exit324.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i310.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i309.i) #6
  %325 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %call7.i.i, align 8
  %i2c.i327.i = getelementptr inbounds %struct.stv_base, ptr %326, i32 0, i32 2
  %327 = ptrtoint ptr %i2c.i327.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %i2c.i327.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i325.i) #6
  %329 = getelementptr inbounds [3 x i8], ptr %data.i325.i, i32 0, i32 1
  %330 = getelementptr inbounds [3 x i8], ptr %data.i325.i, i32 0, i32 2
  %331 = ptrtoint ptr %data.i325.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 -14, ptr %data.i325.i, align 1
  %332 = ptrtoint ptr %329 to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 -110, ptr %329, align 1
  %333 = ptrtoint ptr %330 to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 2, ptr %330, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i326.i) #6
  %334 = getelementptr inbounds i8, ptr %msg.i326.i, i32 4
  %335 = ptrtoint ptr %334 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 262143, ptr %334, align 4
  %adr.i328.i = getelementptr inbounds %struct.stv_base, ptr %326, i32 0, i32 1
  %336 = ptrtoint ptr %adr.i328.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %adr.i328.i, align 4
  %conv6.i329.i = zext i8 %337 to i16
  %338 = ptrtoint ptr %msg.i326.i to i32
  call void @__asan_store2_noabort(i32 %338)
  store i16 %conv6.i329.i, ptr %msg.i326.i, align 4
  %flags.i330.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i326.i, i32 0, i32 1
  %339 = ptrtoint ptr %flags.i330.i to i32
  call void @__asan_store2_noabort(i32 %339)
  store i16 0, ptr %flags.i330.i, align 2
  %buf.i332.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i326.i, i32 0, i32 3
  %340 = ptrtoint ptr %buf.i332.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr %data.i325.i, ptr %buf.i332.i, align 4
  %call.i333.i = call i32 @i2c_transfer(ptr noundef %328, ptr noundef nonnull %msg.i326.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i333.i)
  %cmp.not.i334.i = icmp eq i32 %call.i333.i, 1
  br i1 %cmp.not.i334.i, label %write_reg.exit324.i.write_reg.exit340.i_crit_edge, label %do.end.i338.i

write_reg.exit324.i.write_reg.exit340.i_crit_edge: ; preds = %write_reg.exit324.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit340.i

do.end.i338.i:                                    ; preds = %write_reg.exit324.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i335.i = getelementptr inbounds %struct.i2c_adapter, ptr %328, i32 0, i32 9
  %341 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %call7.i.i, align 8
  %adr9.i336.i = getelementptr inbounds %struct.stv_base, ptr %342, i32 0, i32 1
  %343 = ptrtoint ptr %adr9.i336.i to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %adr9.i336.i, align 4
  %conv10.i337.i = zext i8 %344 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i335.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i337.i, i32 noundef 62098, i32 noundef 2) #10
  br label %write_reg.exit340.i

write_reg.exit340.i:                              ; preds = %do.end.i338.i, %write_reg.exit324.i.write_reg.exit340.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i326.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i325.i) #6
  %345 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %call7.i.i, align 8
  %i2c.i343.i = getelementptr inbounds %struct.stv_base, ptr %346, i32 0, i32 2
  %347 = ptrtoint ptr %i2c.i343.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %i2c.i343.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i341.i) #6
  %349 = getelementptr inbounds [3 x i8], ptr %data.i341.i, i32 0, i32 1
  %350 = getelementptr inbounds [3 x i8], ptr %data.i341.i, i32 0, i32 2
  %351 = ptrtoint ptr %data.i341.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 -12, ptr %data.i341.i, align 1
  %352 = ptrtoint ptr %349 to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 31, ptr %349, align 1
  %353 = ptrtoint ptr %350 to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 4, ptr %350, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i342.i) #6
  %354 = getelementptr inbounds i8, ptr %msg.i342.i, i32 4
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 262143, ptr %354, align 4
  %adr.i344.i = getelementptr inbounds %struct.stv_base, ptr %346, i32 0, i32 1
  %356 = ptrtoint ptr %adr.i344.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %adr.i344.i, align 4
  %conv6.i345.i = zext i8 %357 to i16
  %358 = ptrtoint ptr %msg.i342.i to i32
  call void @__asan_store2_noabort(i32 %358)
  store i16 %conv6.i345.i, ptr %msg.i342.i, align 4
  %flags.i346.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i342.i, i32 0, i32 1
  %359 = ptrtoint ptr %flags.i346.i to i32
  call void @__asan_store2_noabort(i32 %359)
  store i16 0, ptr %flags.i346.i, align 2
  %buf.i348.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i342.i, i32 0, i32 3
  %360 = ptrtoint ptr %buf.i348.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store ptr %data.i341.i, ptr %buf.i348.i, align 4
  %call.i349.i = call i32 @i2c_transfer(ptr noundef %348, ptr noundef nonnull %msg.i342.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i349.i)
  %cmp.not.i350.i = icmp eq i32 %call.i349.i, 1
  br i1 %cmp.not.i350.i, label %write_reg.exit340.i.write_reg.exit356.i_crit_edge, label %do.end.i354.i

write_reg.exit340.i.write_reg.exit356.i_crit_edge: ; preds = %write_reg.exit340.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit356.i

do.end.i354.i:                                    ; preds = %write_reg.exit340.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i351.i = getelementptr inbounds %struct.i2c_adapter, ptr %348, i32 0, i32 9
  %361 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %call7.i.i, align 8
  %adr9.i352.i = getelementptr inbounds %struct.stv_base, ptr %362, i32 0, i32 1
  %363 = ptrtoint ptr %adr9.i352.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %adr9.i352.i, align 4
  %conv10.i353.i = zext i8 %364 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i351.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i353.i, i32 noundef 62495, i32 noundef 4) #10
  br label %write_reg.exit356.i

write_reg.exit356.i:                              ; preds = %do.end.i354.i, %write_reg.exit340.i.write_reg.exit356.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i342.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i341.i) #6
  %365 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %call7.i.i, align 8
  %i2c.i359.i = getelementptr inbounds %struct.stv_base, ptr %366, i32 0, i32 2
  %367 = ptrtoint ptr %i2c.i359.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %i2c.i359.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i357.i) #6
  %369 = getelementptr inbounds [3 x i8], ptr %data.i357.i, i32 0, i32 1
  %370 = getelementptr inbounds [3 x i8], ptr %data.i357.i, i32 0, i32 2
  %371 = ptrtoint ptr %data.i357.i to i32
  call void @__asan_store1_noabort(i32 %371)
  store i8 -14, ptr %data.i357.i, align 1
  %372 = ptrtoint ptr %369 to i32
  call void @__asan_store1_noabort(i32 %372)
  store i8 31, ptr %369, align 1
  %373 = ptrtoint ptr %370 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 4, ptr %370, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i358.i) #6
  %374 = getelementptr inbounds i8, ptr %msg.i358.i, i32 4
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 262143, ptr %374, align 4
  %adr.i360.i = getelementptr inbounds %struct.stv_base, ptr %366, i32 0, i32 1
  %376 = ptrtoint ptr %adr.i360.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %adr.i360.i, align 4
  %conv6.i361.i = zext i8 %377 to i16
  %378 = ptrtoint ptr %msg.i358.i to i32
  call void @__asan_store2_noabort(i32 %378)
  store i16 %conv6.i361.i, ptr %msg.i358.i, align 4
  %flags.i362.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i358.i, i32 0, i32 1
  %379 = ptrtoint ptr %flags.i362.i to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 0, ptr %flags.i362.i, align 2
  %buf.i364.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i358.i, i32 0, i32 3
  %380 = ptrtoint ptr %buf.i364.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store ptr %data.i357.i, ptr %buf.i364.i, align 4
  %call.i365.i = call i32 @i2c_transfer(ptr noundef %368, ptr noundef nonnull %msg.i358.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i365.i)
  %cmp.not.i366.i = icmp eq i32 %call.i365.i, 1
  br i1 %cmp.not.i366.i, label %write_reg.exit356.i.write_reg.exit372.i_crit_edge, label %do.end.i370.i

write_reg.exit356.i.write_reg.exit372.i_crit_edge: ; preds = %write_reg.exit356.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit372.i

do.end.i370.i:                                    ; preds = %write_reg.exit356.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i367.i = getelementptr inbounds %struct.i2c_adapter, ptr %368, i32 0, i32 9
  %381 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %call7.i.i, align 8
  %adr9.i368.i = getelementptr inbounds %struct.stv_base, ptr %382, i32 0, i32 1
  %383 = ptrtoint ptr %adr9.i368.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %adr9.i368.i, align 4
  %conv10.i369.i = zext i8 %384 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i367.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i369.i, i32 noundef 61983, i32 noundef 4) #10
  br label %write_reg.exit372.i

write_reg.exit372.i:                              ; preds = %do.end.i370.i, %write_reg.exit356.i.write_reg.exit372.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i358.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i357.i) #6
  %385 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %call7.i.i, align 8
  %i2c.i375.i = getelementptr inbounds %struct.stv_base, ptr %386, i32 0, i32 2
  %387 = ptrtoint ptr %i2c.i375.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %i2c.i375.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i373.i) #6
  %389 = getelementptr inbounds [3 x i8], ptr %data.i373.i, i32 0, i32 1
  %390 = getelementptr inbounds [3 x i8], ptr %data.i373.i, i32 0, i32 2
  %391 = ptrtoint ptr %data.i373.i to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 -1, ptr %data.i373.i, align 1
  %392 = ptrtoint ptr %389 to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 17, ptr %389, align 1
  %393 = ptrtoint ptr %390 to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 -128, ptr %390, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i374.i) #6
  %394 = getelementptr inbounds i8, ptr %msg.i374.i, i32 4
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 262143, ptr %394, align 4
  %adr.i376.i = getelementptr inbounds %struct.stv_base, ptr %386, i32 0, i32 1
  %396 = ptrtoint ptr %adr.i376.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %adr.i376.i, align 4
  %conv6.i377.i = zext i8 %397 to i16
  %398 = ptrtoint ptr %msg.i374.i to i32
  call void @__asan_store2_noabort(i32 %398)
  store i16 %conv6.i377.i, ptr %msg.i374.i, align 4
  %flags.i378.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i374.i, i32 0, i32 1
  %399 = ptrtoint ptr %flags.i378.i to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 0, ptr %flags.i378.i, align 2
  %buf.i380.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i374.i, i32 0, i32 3
  %400 = ptrtoint ptr %buf.i380.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store ptr %data.i373.i, ptr %buf.i380.i, align 4
  %call.i381.i = call i32 @i2c_transfer(ptr noundef %388, ptr noundef nonnull %msg.i374.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i381.i)
  %cmp.not.i382.i = icmp eq i32 %call.i381.i, 1
  br i1 %cmp.not.i382.i, label %write_reg.exit372.i.write_reg.exit388.i_crit_edge, label %do.end.i386.i

write_reg.exit372.i.write_reg.exit388.i_crit_edge: ; preds = %write_reg.exit372.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit388.i

do.end.i386.i:                                    ; preds = %write_reg.exit372.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i383.i = getelementptr inbounds %struct.i2c_adapter, ptr %388, i32 0, i32 9
  %401 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %call7.i.i, align 8
  %adr9.i384.i = getelementptr inbounds %struct.stv_base, ptr %402, i32 0, i32 1
  %403 = ptrtoint ptr %adr9.i384.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %adr9.i384.i, align 4
  %conv10.i385.i = zext i8 %404 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i383.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i385.i, i32 noundef 65297, i32 noundef 128) #10
  br label %write_reg.exit388.i

write_reg.exit388.i:                              ; preds = %do.end.i386.i, %write_reg.exit372.i.write_reg.exit388.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i374.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i373.i) #6
  %405 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %call7.i.i, align 8
  %i2c.i391.i = getelementptr inbounds %struct.stv_base, ptr %406, i32 0, i32 2
  %407 = ptrtoint ptr %i2c.i391.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %i2c.i391.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i389.i) #6
  %409 = getelementptr inbounds [3 x i8], ptr %data.i389.i, i32 0, i32 1
  %410 = getelementptr inbounds [3 x i8], ptr %data.i389.i, i32 0, i32 2
  %411 = ptrtoint ptr %data.i389.i to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 -1, ptr %data.i389.i, align 1
  %412 = ptrtoint ptr %409 to i32
  call void @__asan_store1_noabort(i32 %412)
  store i8 17, ptr %409, align 1
  %413 = ptrtoint ptr %410 to i32
  call void @__asan_store1_noabort(i32 %413)
  store i8 0, ptr %410, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i390.i) #6
  %414 = getelementptr inbounds i8, ptr %msg.i390.i, i32 4
  %415 = ptrtoint ptr %414 to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 262143, ptr %414, align 4
  %adr.i392.i = getelementptr inbounds %struct.stv_base, ptr %406, i32 0, i32 1
  %416 = ptrtoint ptr %adr.i392.i to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %adr.i392.i, align 4
  %conv6.i393.i = zext i8 %417 to i16
  %418 = ptrtoint ptr %msg.i390.i to i32
  call void @__asan_store2_noabort(i32 %418)
  store i16 %conv6.i393.i, ptr %msg.i390.i, align 4
  %flags.i394.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i390.i, i32 0, i32 1
  %419 = ptrtoint ptr %flags.i394.i to i32
  call void @__asan_store2_noabort(i32 %419)
  store i16 0, ptr %flags.i394.i, align 2
  %buf.i396.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i390.i, i32 0, i32 3
  %420 = ptrtoint ptr %buf.i396.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store ptr %data.i389.i, ptr %buf.i396.i, align 4
  %call.i397.i = call i32 @i2c_transfer(ptr noundef %408, ptr noundef nonnull %msg.i390.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i397.i)
  %cmp.not.i398.i = icmp eq i32 %call.i397.i, 1
  br i1 %cmp.not.i398.i, label %write_reg.exit388.i.write_reg.exit404.i_crit_edge, label %do.end.i402.i

write_reg.exit388.i.write_reg.exit404.i_crit_edge: ; preds = %write_reg.exit388.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit404.i

do.end.i402.i:                                    ; preds = %write_reg.exit388.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i399.i = getelementptr inbounds %struct.i2c_adapter, ptr %408, i32 0, i32 9
  %421 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %call7.i.i, align 8
  %adr9.i400.i = getelementptr inbounds %struct.stv_base, ptr %422, i32 0, i32 1
  %423 = ptrtoint ptr %adr9.i400.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %adr9.i400.i, align 4
  %conv10.i401.i = zext i8 %424 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i399.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i401.i, i32 noundef 65297, i32 noundef 0) #10
  br label %write_reg.exit404.i

write_reg.exit404.i:                              ; preds = %do.end.i402.i, %write_reg.exit388.i.write_reg.exit404.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i390.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i389.i) #6
  %425 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %call7.i.i, align 8
  %i2c.i407.i = getelementptr inbounds %struct.stv_base, ptr %426, i32 0, i32 2
  %427 = ptrtoint ptr %i2c.i407.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %i2c.i407.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i405.i) #6
  %429 = getelementptr inbounds [3 x i8], ptr %data.i405.i, i32 0, i32 1
  %430 = getelementptr inbounds [3 x i8], ptr %data.i405.i, i32 0, i32 2
  %431 = ptrtoint ptr %data.i405.i to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 -11, ptr %data.i405.i, align 1
  %432 = ptrtoint ptr %429 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 70, ptr %429, align 1
  %433 = ptrtoint ptr %430 to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 0, ptr %430, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i406.i) #6
  %434 = getelementptr inbounds i8, ptr %msg.i406.i, i32 4
  %435 = ptrtoint ptr %434 to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 262143, ptr %434, align 4
  %adr.i408.i = getelementptr inbounds %struct.stv_base, ptr %426, i32 0, i32 1
  %436 = ptrtoint ptr %adr.i408.i to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %adr.i408.i, align 4
  %conv6.i409.i = zext i8 %437 to i16
  %438 = ptrtoint ptr %msg.i406.i to i32
  call void @__asan_store2_noabort(i32 %438)
  store i16 %conv6.i409.i, ptr %msg.i406.i, align 4
  %flags.i410.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i406.i, i32 0, i32 1
  %439 = ptrtoint ptr %flags.i410.i to i32
  call void @__asan_store2_noabort(i32 %439)
  store i16 0, ptr %flags.i410.i, align 2
  %buf.i412.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i406.i, i32 0, i32 3
  %440 = ptrtoint ptr %buf.i412.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store ptr %data.i405.i, ptr %buf.i412.i, align 4
  %call.i413.i = call i32 @i2c_transfer(ptr noundef %428, ptr noundef nonnull %msg.i406.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i413.i)
  %cmp.not.i414.i = icmp eq i32 %call.i413.i, 1
  br i1 %cmp.not.i414.i, label %write_reg.exit404.i.write_reg.exit420.i_crit_edge, label %do.end.i418.i

write_reg.exit404.i.write_reg.exit420.i_crit_edge: ; preds = %write_reg.exit404.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit420.i

do.end.i418.i:                                    ; preds = %write_reg.exit404.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i415.i = getelementptr inbounds %struct.i2c_adapter, ptr %428, i32 0, i32 9
  %441 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %call7.i.i, align 8
  %adr9.i416.i = getelementptr inbounds %struct.stv_base, ptr %442, i32 0, i32 1
  %443 = ptrtoint ptr %adr9.i416.i to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %adr9.i416.i, align 4
  %conv10.i417.i = zext i8 %444 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i415.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i417.i, i32 noundef 62790, i32 noundef 0) #10
  br label %write_reg.exit420.i

write_reg.exit420.i:                              ; preds = %do.end.i418.i, %write_reg.exit404.i.write_reg.exit420.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i406.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i405.i) #6
  %445 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %call7.i.i, align 8
  %i2c.i423.i = getelementptr inbounds %struct.stv_base, ptr %446, i32 0, i32 2
  %447 = ptrtoint ptr %i2c.i423.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %i2c.i423.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i421.i) #6
  %449 = getelementptr inbounds [3 x i8], ptr %data.i421.i, i32 0, i32 1
  %450 = getelementptr inbounds [3 x i8], ptr %data.i421.i, i32 0, i32 2
  %451 = ptrtoint ptr %data.i421.i to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 -13, ptr %data.i421.i, align 1
  %452 = ptrtoint ptr %449 to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 70, ptr %449, align 1
  %453 = ptrtoint ptr %450 to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 0, ptr %450, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i422.i) #6
  %454 = getelementptr inbounds i8, ptr %msg.i422.i, i32 4
  %455 = ptrtoint ptr %454 to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 262143, ptr %454, align 4
  %adr.i424.i = getelementptr inbounds %struct.stv_base, ptr %446, i32 0, i32 1
  %456 = ptrtoint ptr %adr.i424.i to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %adr.i424.i, align 4
  %conv6.i425.i = zext i8 %457 to i16
  %458 = ptrtoint ptr %msg.i422.i to i32
  call void @__asan_store2_noabort(i32 %458)
  store i16 %conv6.i425.i, ptr %msg.i422.i, align 4
  %flags.i426.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i422.i, i32 0, i32 1
  %459 = ptrtoint ptr %flags.i426.i to i32
  call void @__asan_store2_noabort(i32 %459)
  store i16 0, ptr %flags.i426.i, align 2
  %buf.i428.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i422.i, i32 0, i32 3
  %460 = ptrtoint ptr %buf.i428.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store ptr %data.i421.i, ptr %buf.i428.i, align 4
  %call.i429.i = call i32 @i2c_transfer(ptr noundef %448, ptr noundef nonnull %msg.i422.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i429.i)
  %cmp.not.i430.i = icmp eq i32 %call.i429.i, 1
  br i1 %cmp.not.i430.i, label %write_reg.exit420.i.write_reg.exit436.i_crit_edge, label %do.end.i434.i

write_reg.exit420.i.write_reg.exit436.i_crit_edge: ; preds = %write_reg.exit420.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit436.i

do.end.i434.i:                                    ; preds = %write_reg.exit420.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i431.i = getelementptr inbounds %struct.i2c_adapter, ptr %448, i32 0, i32 9
  %461 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %call7.i.i, align 8
  %adr9.i432.i = getelementptr inbounds %struct.stv_base, ptr %462, i32 0, i32 1
  %463 = ptrtoint ptr %adr9.i432.i to i32
  call void @__asan_load1_noabort(i32 %463)
  %464 = load i8, ptr %adr9.i432.i, align 4
  %conv10.i433.i = zext i8 %464 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i431.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i433.i, i32 noundef 62278, i32 noundef 0) #10
  br label %write_reg.exit436.i

write_reg.exit436.i:                              ; preds = %do.end.i434.i, %write_reg.exit420.i.write_reg.exit436.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i422.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i421.i) #6
  %465 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %call7.i.i, align 8
  %i2c.i439.i = getelementptr inbounds %struct.stv_base, ptr %466, i32 0, i32 2
  %467 = ptrtoint ptr %i2c.i439.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %i2c.i439.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i437.i) #6
  %469 = getelementptr inbounds [3 x i8], ptr %data.i437.i, i32 0, i32 1
  %470 = getelementptr inbounds [3 x i8], ptr %data.i437.i, i32 0, i32 2
  %471 = ptrtoint ptr %data.i437.i to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 -12, ptr %data.i437.i, align 1
  %472 = ptrtoint ptr %469 to i32
  call void @__asan_store1_noabort(i32 %472)
  store i8 90, ptr %469, align 1
  %473 = ptrtoint ptr %470 to i32
  call void @__asan_store1_noabort(i32 %473)
  store i8 -128, ptr %470, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i438.i) #6
  %474 = getelementptr inbounds i8, ptr %msg.i438.i, i32 4
  %475 = ptrtoint ptr %474 to i32
  call void @__asan_store4_noabort(i32 %475)
  store i32 262143, ptr %474, align 4
  %adr.i440.i = getelementptr inbounds %struct.stv_base, ptr %466, i32 0, i32 1
  %476 = ptrtoint ptr %adr.i440.i to i32
  call void @__asan_load1_noabort(i32 %476)
  %477 = load i8, ptr %adr.i440.i, align 4
  %conv6.i441.i = zext i8 %477 to i16
  %478 = ptrtoint ptr %msg.i438.i to i32
  call void @__asan_store2_noabort(i32 %478)
  store i16 %conv6.i441.i, ptr %msg.i438.i, align 4
  %flags.i442.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i438.i, i32 0, i32 1
  %479 = ptrtoint ptr %flags.i442.i to i32
  call void @__asan_store2_noabort(i32 %479)
  store i16 0, ptr %flags.i442.i, align 2
  %buf.i444.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i438.i, i32 0, i32 3
  %480 = ptrtoint ptr %buf.i444.i to i32
  call void @__asan_store4_noabort(i32 %480)
  store ptr %data.i437.i, ptr %buf.i444.i, align 4
  %call.i445.i = call i32 @i2c_transfer(ptr noundef %468, ptr noundef nonnull %msg.i438.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i445.i)
  %cmp.not.i446.i = icmp eq i32 %call.i445.i, 1
  br i1 %cmp.not.i446.i, label %write_reg.exit436.i.write_reg.exit452.i_crit_edge, label %do.end.i450.i

write_reg.exit436.i.write_reg.exit452.i_crit_edge: ; preds = %write_reg.exit436.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit452.i

do.end.i450.i:                                    ; preds = %write_reg.exit436.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i447.i = getelementptr inbounds %struct.i2c_adapter, ptr %468, i32 0, i32 9
  %481 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %call7.i.i, align 8
  %adr9.i448.i = getelementptr inbounds %struct.stv_base, ptr %482, i32 0, i32 1
  %483 = ptrtoint ptr %adr9.i448.i to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %adr9.i448.i, align 4
  %conv10.i449.i = zext i8 %484 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i447.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i449.i, i32 noundef 62554, i32 noundef 128) #10
  br label %write_reg.exit452.i

write_reg.exit452.i:                              ; preds = %do.end.i450.i, %write_reg.exit436.i.write_reg.exit452.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i438.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i437.i) #6
  %485 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %call7.i.i, align 8
  %i2c.i455.i = getelementptr inbounds %struct.stv_base, ptr %486, i32 0, i32 2
  %487 = ptrtoint ptr %i2c.i455.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %i2c.i455.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i453.i) #6
  %489 = getelementptr inbounds [3 x i8], ptr %data.i453.i, i32 0, i32 1
  %490 = getelementptr inbounds [3 x i8], ptr %data.i453.i, i32 0, i32 2
  %491 = ptrtoint ptr %data.i453.i to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 -14, ptr %data.i453.i, align 1
  %492 = ptrtoint ptr %489 to i32
  call void @__asan_store1_noabort(i32 %492)
  store i8 90, ptr %489, align 1
  %493 = ptrtoint ptr %490 to i32
  call void @__asan_store1_noabort(i32 %493)
  store i8 -128, ptr %490, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i454.i) #6
  %494 = getelementptr inbounds i8, ptr %msg.i454.i, i32 4
  %495 = ptrtoint ptr %494 to i32
  call void @__asan_store4_noabort(i32 %495)
  store i32 262143, ptr %494, align 4
  %adr.i456.i = getelementptr inbounds %struct.stv_base, ptr %486, i32 0, i32 1
  %496 = ptrtoint ptr %adr.i456.i to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %adr.i456.i, align 4
  %conv6.i457.i = zext i8 %497 to i16
  %498 = ptrtoint ptr %msg.i454.i to i32
  call void @__asan_store2_noabort(i32 %498)
  store i16 %conv6.i457.i, ptr %msg.i454.i, align 4
  %flags.i458.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i454.i, i32 0, i32 1
  %499 = ptrtoint ptr %flags.i458.i to i32
  call void @__asan_store2_noabort(i32 %499)
  store i16 0, ptr %flags.i458.i, align 2
  %buf.i460.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i454.i, i32 0, i32 3
  %500 = ptrtoint ptr %buf.i460.i to i32
  call void @__asan_store4_noabort(i32 %500)
  store ptr %data.i453.i, ptr %buf.i460.i, align 4
  %call.i461.i = call i32 @i2c_transfer(ptr noundef %488, ptr noundef nonnull %msg.i454.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i461.i)
  %cmp.not.i462.i = icmp eq i32 %call.i461.i, 1
  br i1 %cmp.not.i462.i, label %write_reg.exit452.i.write_reg.exit468.i_crit_edge, label %do.end.i466.i

write_reg.exit452.i.write_reg.exit468.i_crit_edge: ; preds = %write_reg.exit452.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit468.i

do.end.i466.i:                                    ; preds = %write_reg.exit452.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i463.i = getelementptr inbounds %struct.i2c_adapter, ptr %488, i32 0, i32 9
  %501 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %call7.i.i, align 8
  %adr9.i464.i = getelementptr inbounds %struct.stv_base, ptr %502, i32 0, i32 1
  %503 = ptrtoint ptr %adr9.i464.i to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %adr9.i464.i, align 4
  %conv10.i465.i = zext i8 %504 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i463.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i465.i, i32 noundef 62042, i32 noundef 128) #10
  br label %write_reg.exit468.i

write_reg.exit468.i:                              ; preds = %do.end.i466.i, %write_reg.exit452.i.write_reg.exit468.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i454.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i453.i) #6
  %505 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %call7.i.i, align 8
  %extclk.i.i = getelementptr inbounds %struct.stv_base, ptr %506, i32 0, i32 6
  %507 = ptrtoint ptr %extclk.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %extclk.i.i, align 4
  %509 = add i32 %508, -8000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 70000000, i32 %509)
  %510 = icmp ult i32 %509, 70000000
  br i1 %510, label %write_reg.exit468.i.if.end123.i.i_crit_edge, label %if.else.i.i

write_reg.exit468.i.if.end123.i.i_crit_edge:      ; preds = %write_reg.exit468.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123.i.i

if.else.i.i:                                      ; preds = %write_reg.exit468.i
  %511 = add i32 %508, -7000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %511)
  %512 = icmp ult i32 %511, 1000000
  br i1 %512, label %if.else.i.i.if.end123.i.i_crit_edge, label %if.else9.i.i

if.else.i.i.if.end123.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123.i.i

if.else9.i.i:                                     ; preds = %if.else.i.i
  %513 = add i32 %508, -6000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %513)
  %514 = icmp ult i32 %513, 1000000
  br i1 %514, label %if.else9.i.i.if.end123.i.i_crit_edge, label %if.else19.i.i

if.else9.i.i.if.end123.i.i_crit_edge:             ; preds = %if.else9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123.i.i

if.else19.i.i:                                    ; preds = %if.else9.i.i
  %515 = add i32 %508, -5000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %515)
  %516 = icmp ult i32 %515, 1000000
  br i1 %516, label %if.else19.i.i.if.end123.i.i_crit_edge, label %if.else29.i.i

if.else19.i.i.if.end123.i.i_crit_edge:            ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123.i.i

if.else29.i.i:                                    ; preds = %if.else19.i.i
  %517 = add i32 %508, -4000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %517)
  %518 = icmp ult i32 %517, 1000000
  br i1 %518, label %if.else29.i.i.if.end123.i.i_crit_edge, label %if.else44.i.i

if.else29.i.i.if.end123.i.i_crit_edge:            ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123.i.i

if.else44.i.i:                                    ; preds = %if.else29.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %519 = add i32 %508, -3000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %519)
  %520 = icmp ult i32 %519, 1000000
  %spec.select.i.i = select i1 %520, i8 -87, i8 57
  br label %if.end123.i.i

if.end123.i.i:                                    ; preds = %if.else44.i.i, %if.else29.i.i.if.end123.i.i_crit_edge, %if.else19.i.i.if.end123.i.i_crit_edge, %if.else9.i.i.if.end123.i.i_crit_edge, %if.else.i.i.if.end123.i.i_crit_edge, %write_reg.exit468.i.if.end123.i.i_crit_edge
  %cp.0.i.i = phi i8 [ 57, %write_reg.exit468.i.if.end123.i.i_crit_edge ], [ 65, %if.else.i.i.if.end123.i.i_crit_edge ], [ 81, %if.else9.i.i.if.end123.i.i_crit_edge ], [ 97, %if.else19.i.i.if.end123.i.i_crit_edge ], [ 121, %if.else29.i.i.if.end123.i.i_crit_edge ], [ %spec.select.i.i, %if.else44.i.i ]
  %div.i.i = udiv i32 %508, 1000000
  %div3.rhs.trunc.i.i = trunc i32 %div.i.i to i16
  %div340.i.i = udiv i16 540, %div3.rhs.trunc.i.i
  %i2c.i.i.i = getelementptr inbounds %struct.stv_base, ptr %506, i32 0, i32 2
  %521 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i.i) #6
  %523 = getelementptr inbounds [3 x i8], ptr %data.i.i.i, i32 0, i32 1
  %524 = getelementptr inbounds [3 x i8], ptr %data.i.i.i, i32 0, i32 2
  %525 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 -15, ptr %data.i.i.i, align 1
  %526 = ptrtoint ptr %523 to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 -77, ptr %523, align 1
  %527 = ptrtoint ptr %524 to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 %cp.0.i.i, ptr %524, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i469.i) #6
  %528 = getelementptr inbounds i8, ptr %msg.i.i469.i, i32 4
  %529 = ptrtoint ptr %528 to i32
  call void @__asan_store4_noabort(i32 %529)
  store i32 262143, ptr %528, align 4
  %adr.i.i.i = getelementptr inbounds %struct.stv_base, ptr %506, i32 0, i32 1
  %530 = ptrtoint ptr %adr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %530)
  %531 = load i8, ptr %adr.i.i.i, align 4
  %conv6.i.i.i = zext i8 %531 to i16
  %532 = ptrtoint ptr %msg.i.i469.i to i32
  call void @__asan_store2_noabort(i32 %532)
  store i16 %conv6.i.i.i, ptr %msg.i.i469.i, align 4
  %flags.i.i470.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i469.i, i32 0, i32 1
  %533 = ptrtoint ptr %flags.i.i470.i to i32
  call void @__asan_store2_noabort(i32 %533)
  store i16 0, ptr %flags.i.i470.i, align 2
  %buf.i.i471.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i469.i, i32 0, i32 3
  %534 = ptrtoint ptr %buf.i.i471.i to i32
  call void @__asan_store4_noabort(i32 %534)
  store ptr %data.i.i.i, ptr %buf.i.i471.i, align 4
  %call.i.i472.i = call i32 @i2c_transfer(ptr noundef %522, ptr noundef nonnull %msg.i.i469.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i472.i)
  %cmp.not.i.i473.i = icmp eq i32 %call.i.i472.i, 1
  br i1 %cmp.not.i.i473.i, label %if.end123.i.i.write_reg.exit.i.i_crit_edge, label %do.end.i.i475.i

if.end123.i.i.write_reg.exit.i.i_crit_edge:       ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit.i.i

do.end.i.i475.i:                                  ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i474.i = getelementptr inbounds %struct.i2c_adapter, ptr %522, i32 0, i32 9
  %535 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %call7.i.i, align 8
  %adr9.i.i.i = getelementptr inbounds %struct.stv_base, ptr %536, i32 0, i32 1
  %537 = ptrtoint ptr %adr9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %adr9.i.i.i, align 4
  %conv10.i.i.i = zext i8 %538 to i32
  %conv12.i.i.i = zext i8 %cp.0.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i474.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i.i.i, i32 noundef 61875, i32 noundef %conv12.i.i.i) #10
  br label %write_reg.exit.i.i

write_reg.exit.i.i:                               ; preds = %do.end.i.i475.i, %if.end123.i.i.write_reg.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i469.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i.i) #6
  %539 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %call7.i.i, align 8
  %i2c.i9.i.i = getelementptr inbounds %struct.stv_base, ptr %540, i32 0, i32 2
  %541 = ptrtoint ptr %i2c.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %i2c.i9.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i7.i.i) #6
  %543 = getelementptr inbounds [3 x i8], ptr %data.i7.i.i, i32 0, i32 1
  %544 = getelementptr inbounds [3 x i8], ptr %data.i7.i.i, i32 0, i32 2
  %545 = ptrtoint ptr %data.i7.i.i to i32
  call void @__asan_store1_noabort(i32 %545)
  store i8 -15, ptr %data.i7.i.i, align 1
  %546 = ptrtoint ptr %543 to i32
  call void @__asan_store1_noabort(i32 %546)
  store i8 -75, ptr %543, align 1
  %547 = ptrtoint ptr %544 to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 4, ptr %544, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i8.i.i) #6
  %548 = getelementptr inbounds i8, ptr %msg.i8.i.i, i32 4
  %549 = ptrtoint ptr %548 to i32
  call void @__asan_store4_noabort(i32 %549)
  store i32 262143, ptr %548, align 4
  %adr.i10.i.i = getelementptr inbounds %struct.stv_base, ptr %540, i32 0, i32 1
  %550 = ptrtoint ptr %adr.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %550)
  %551 = load i8, ptr %adr.i10.i.i, align 4
  %conv6.i11.i.i = zext i8 %551 to i16
  %552 = ptrtoint ptr %msg.i8.i.i to i32
  call void @__asan_store2_noabort(i32 %552)
  store i16 %conv6.i11.i.i, ptr %msg.i8.i.i, align 4
  %flags.i12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8.i.i, i32 0, i32 1
  %553 = ptrtoint ptr %flags.i12.i.i to i32
  call void @__asan_store2_noabort(i32 %553)
  store i16 0, ptr %flags.i12.i.i, align 2
  %buf.i14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8.i.i, i32 0, i32 3
  %554 = ptrtoint ptr %buf.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %554)
  store ptr %data.i7.i.i, ptr %buf.i14.i.i, align 4
  %call.i15.i.i = call i32 @i2c_transfer(ptr noundef %542, ptr noundef nonnull %msg.i8.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i15.i.i)
  %cmp.not.i16.i.i = icmp eq i32 %call.i15.i.i, 1
  br i1 %cmp.not.i16.i.i, label %write_reg.exit.i.i.write_reg.exit22.i.i_crit_edge, label %do.end.i20.i.i

write_reg.exit.i.i.write_reg.exit22.i.i_crit_edge: ; preds = %write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit22.i.i

do.end.i20.i.i:                                   ; preds = %write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i17.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %542, i32 0, i32 9
  %555 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %call7.i.i, align 8
  %adr9.i18.i.i = getelementptr inbounds %struct.stv_base, ptr %556, i32 0, i32 1
  %557 = ptrtoint ptr %adr9.i18.i.i to i32
  call void @__asan_load1_noabort(i32 %557)
  %558 = load i8, ptr %adr9.i18.i.i, align 4
  %conv10.i19.i.i = zext i8 %558 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i17.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i19.i.i, i32 noundef 61877, i32 noundef 4) #10
  br label %write_reg.exit22.i.i

write_reg.exit22.i.i:                             ; preds = %do.end.i20.i.i, %write_reg.exit.i.i.write_reg.exit22.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i8.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i7.i.i) #6
  %conv126.i.i = trunc i16 %div340.i.i to i8
  %559 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %call7.i.i, align 8
  %i2c.i25.i.i = getelementptr inbounds %struct.stv_base, ptr %560, i32 0, i32 2
  %561 = ptrtoint ptr %i2c.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %i2c.i25.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i23.i.i) #6
  %563 = getelementptr inbounds [3 x i8], ptr %data.i23.i.i, i32 0, i32 1
  %564 = getelementptr inbounds [3 x i8], ptr %data.i23.i.i, i32 0, i32 2
  %565 = ptrtoint ptr %data.i23.i.i to i32
  call void @__asan_store1_noabort(i32 %565)
  store i8 -15, ptr %data.i23.i.i, align 1
  %566 = ptrtoint ptr %563 to i32
  call void @__asan_store1_noabort(i32 %566)
  store i8 -76, ptr %563, align 1
  %567 = ptrtoint ptr %564 to i32
  call void @__asan_store1_noabort(i32 %567)
  store i8 %conv126.i.i, ptr %564, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i24.i.i) #6
  %568 = getelementptr inbounds i8, ptr %msg.i24.i.i, i32 4
  %569 = ptrtoint ptr %568 to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 262143, ptr %568, align 4
  %adr.i26.i.i = getelementptr inbounds %struct.stv_base, ptr %560, i32 0, i32 1
  %570 = ptrtoint ptr %adr.i26.i.i to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %adr.i26.i.i, align 4
  %conv6.i27.i.i = zext i8 %571 to i16
  %572 = ptrtoint ptr %msg.i24.i.i to i32
  call void @__asan_store2_noabort(i32 %572)
  store i16 %conv6.i27.i.i, ptr %msg.i24.i.i, align 4
  %flags.i28.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24.i.i, i32 0, i32 1
  %573 = ptrtoint ptr %flags.i28.i.i to i32
  call void @__asan_store2_noabort(i32 %573)
  store i16 0, ptr %flags.i28.i.i, align 2
  %buf.i30.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24.i.i, i32 0, i32 3
  %574 = ptrtoint ptr %buf.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %574)
  store ptr %data.i23.i.i, ptr %buf.i30.i.i, align 4
  %call.i31.i.i = call i32 @i2c_transfer(ptr noundef %562, ptr noundef nonnull %msg.i24.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i31.i.i)
  %cmp.not.i32.i.i = icmp eq i32 %call.i31.i.i, 1
  br i1 %cmp.not.i32.i.i, label %write_reg.exit22.i.i.set_mclock.exit.i_crit_edge, label %do.end.i37.i.i

write_reg.exit22.i.i.set_mclock.exit.i_crit_edge: ; preds = %write_reg.exit22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_mclock.exit.i

do.end.i37.i.i:                                   ; preds = %write_reg.exit22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i33.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %562, i32 0, i32 9
  %575 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %call7.i.i, align 8
  %adr9.i34.i.i = getelementptr inbounds %struct.stv_base, ptr %576, i32 0, i32 1
  %577 = ptrtoint ptr %adr9.i34.i.i to i32
  call void @__asan_load1_noabort(i32 %577)
  %578 = load i8, ptr %adr9.i34.i.i, align 4
  %conv10.i35.i.i = zext i8 %578 to i32
  %conv126.mask.i.i = and i16 %div340.i.i, 255
  %conv12.i36.i.i = zext i16 %conv126.mask.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i33.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i35.i.i, i32 noundef 61876, i32 noundef %conv12.i36.i.i) #10
  br label %set_mclock.exit.i

set_mclock.exit.i:                                ; preds = %do.end.i37.i.i, %write_reg.exit22.i.i.set_mclock.exit.i_crit_edge
  %div3.zext.i.i = zext i16 %div340.i.i to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i24.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i23.i.i) #6
  %mul128.i.i = shl nuw nsw i32 %div.i.i, 1
  %mul129.i.i = mul nuw nsw i32 %mul128.i.i, %div3.zext.i.i
  %div1321.i.i = lshr i32 %mul129.i.i, 3
  %mul133.i.i = mul i32 %div1321.i.i, 1000000
  %579 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %call7.i.i, align 8
  %mclk.i.i = getelementptr inbounds %struct.stv_base, ptr %580, i32 0, i32 7
  %581 = ptrtoint ptr %mclk.i.i to i32
  call void @__asan_store4_noabort(i32 %581)
  store i32 %mul133.i.i, ptr %mclk.i.i, align 4
  %582 = ptrtoint ptr %tscfgh to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %tscfgh, align 1
  %584 = or i8 %583, 1
  %585 = load ptr, ptr %call7.i.i, align 8
  %i2c.i478.i = getelementptr inbounds %struct.stv_base, ptr %585, i32 0, i32 2
  %586 = ptrtoint ptr %i2c.i478.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %i2c.i478.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i476.i) #6
  %588 = getelementptr inbounds [3 x i8], ptr %data.i476.i, i32 0, i32 1
  %589 = getelementptr inbounds [3 x i8], ptr %data.i476.i, i32 0, i32 2
  %590 = ptrtoint ptr %data.i476.i to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 -11, ptr %data.i476.i, align 1
  %591 = ptrtoint ptr %588 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 114, ptr %588, align 1
  %592 = ptrtoint ptr %589 to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 %584, ptr %589, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i477.i) #6
  %593 = getelementptr inbounds i8, ptr %msg.i477.i, i32 4
  %594 = ptrtoint ptr %593 to i32
  call void @__asan_store4_noabort(i32 %594)
  store i32 262143, ptr %593, align 4
  %adr.i479.i = getelementptr inbounds %struct.stv_base, ptr %585, i32 0, i32 1
  %595 = ptrtoint ptr %adr.i479.i to i32
  call void @__asan_load1_noabort(i32 %595)
  %596 = load i8, ptr %adr.i479.i, align 4
  %conv6.i480.i = zext i8 %596 to i16
  %597 = ptrtoint ptr %msg.i477.i to i32
  call void @__asan_store2_noabort(i32 %597)
  store i16 %conv6.i480.i, ptr %msg.i477.i, align 4
  %flags.i481.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i477.i, i32 0, i32 1
  %598 = ptrtoint ptr %flags.i481.i to i32
  call void @__asan_store2_noabort(i32 %598)
  store i16 0, ptr %flags.i481.i, align 2
  %buf.i483.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i477.i, i32 0, i32 3
  %599 = ptrtoint ptr %buf.i483.i to i32
  call void @__asan_store4_noabort(i32 %599)
  store ptr %data.i476.i, ptr %buf.i483.i, align 4
  %call.i484.i = call i32 @i2c_transfer(ptr noundef %587, ptr noundef nonnull %msg.i477.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i484.i)
  %cmp.not.i485.i = icmp eq i32 %call.i484.i, 1
  br i1 %cmp.not.i485.i, label %set_mclock.exit.i.write_reg.exit492.i_crit_edge, label %do.end.i490.i

set_mclock.exit.i.write_reg.exit492.i_crit_edge:  ; preds = %set_mclock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit492.i

do.end.i490.i:                                    ; preds = %set_mclock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i486.i = getelementptr inbounds %struct.i2c_adapter, ptr %587, i32 0, i32 9
  %600 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %call7.i.i, align 8
  %adr9.i487.i = getelementptr inbounds %struct.stv_base, ptr %601, i32 0, i32 1
  %602 = ptrtoint ptr %adr9.i487.i to i32
  call void @__asan_load1_noabort(i32 %602)
  %603 = load i8, ptr %adr9.i487.i, align 4
  %conv10.i488.i = zext i8 %603 to i32
  %conv12.i489.i = zext i8 %584 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i486.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i488.i, i32 noundef 62834, i32 noundef %conv12.i489.i) #10
  br label %write_reg.exit492.i

write_reg.exit492.i:                              ; preds = %do.end.i490.i, %set_mclock.exit.i.write_reg.exit492.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i477.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i476.i) #6
  %604 = ptrtoint ptr %tscfgh to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %tscfgh, align 1
  %606 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %call7.i.i, align 8
  %i2c.i495.i = getelementptr inbounds %struct.stv_base, ptr %607, i32 0, i32 2
  %608 = ptrtoint ptr %i2c.i495.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %i2c.i495.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i493.i) #6
  %610 = getelementptr inbounds [3 x i8], ptr %data.i493.i, i32 0, i32 1
  %611 = getelementptr inbounds [3 x i8], ptr %data.i493.i, i32 0, i32 2
  %612 = ptrtoint ptr %data.i493.i to i32
  call void @__asan_store1_noabort(i32 %612)
  store i8 -11, ptr %data.i493.i, align 1
  %613 = ptrtoint ptr %610 to i32
  call void @__asan_store1_noabort(i32 %613)
  store i8 114, ptr %610, align 1
  %614 = ptrtoint ptr %611 to i32
  call void @__asan_store1_noabort(i32 %614)
  store i8 %605, ptr %611, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i494.i) #6
  %615 = getelementptr inbounds i8, ptr %msg.i494.i, i32 4
  %616 = ptrtoint ptr %615 to i32
  call void @__asan_store4_noabort(i32 %616)
  store i32 262143, ptr %615, align 4
  %adr.i496.i = getelementptr inbounds %struct.stv_base, ptr %607, i32 0, i32 1
  %617 = ptrtoint ptr %adr.i496.i to i32
  call void @__asan_load1_noabort(i32 %617)
  %618 = load i8, ptr %adr.i496.i, align 4
  %conv6.i497.i = zext i8 %618 to i16
  %619 = ptrtoint ptr %msg.i494.i to i32
  call void @__asan_store2_noabort(i32 %619)
  store i16 %conv6.i497.i, ptr %msg.i494.i, align 4
  %flags.i498.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i494.i, i32 0, i32 1
  %620 = ptrtoint ptr %flags.i498.i to i32
  call void @__asan_store2_noabort(i32 %620)
  store i16 0, ptr %flags.i498.i, align 2
  %buf.i500.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i494.i, i32 0, i32 3
  %621 = ptrtoint ptr %buf.i500.i to i32
  call void @__asan_store4_noabort(i32 %621)
  store ptr %data.i493.i, ptr %buf.i500.i, align 4
  %call.i501.i = call i32 @i2c_transfer(ptr noundef %609, ptr noundef nonnull %msg.i494.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i501.i)
  %cmp.not.i502.i = icmp eq i32 %call.i501.i, 1
  br i1 %cmp.not.i502.i, label %write_reg.exit492.i.write_reg.exit509.i_crit_edge, label %do.end.i507.i

write_reg.exit492.i.write_reg.exit509.i_crit_edge: ; preds = %write_reg.exit492.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit509.i

do.end.i507.i:                                    ; preds = %write_reg.exit492.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i503.i = getelementptr inbounds %struct.i2c_adapter, ptr %609, i32 0, i32 9
  %622 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %call7.i.i, align 8
  %adr9.i504.i = getelementptr inbounds %struct.stv_base, ptr %623, i32 0, i32 1
  %624 = ptrtoint ptr %adr9.i504.i to i32
  call void @__asan_load1_noabort(i32 %624)
  %625 = load i8, ptr %adr9.i504.i, align 4
  %conv10.i505.i = zext i8 %625 to i32
  %conv12.i506.i = zext i8 %605 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i503.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i505.i, i32 noundef 62834, i32 noundef %conv12.i506.i) #10
  br label %write_reg.exit509.i

write_reg.exit509.i:                              ; preds = %do.end.i507.i, %write_reg.exit492.i.write_reg.exit509.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i494.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i493.i) #6
  %626 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %call7.i.i, align 8
  %i2c.i512.i = getelementptr inbounds %struct.stv_base, ptr %627, i32 0, i32 2
  %628 = ptrtoint ptr %i2c.i512.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %i2c.i512.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i510.i) #6
  %630 = getelementptr inbounds [3 x i8], ptr %data.i510.i, i32 0, i32 1
  %631 = getelementptr inbounds [3 x i8], ptr %data.i510.i, i32 0, i32 2
  %632 = ptrtoint ptr %data.i510.i to i32
  call void @__asan_store1_noabort(i32 %632)
  store i8 -11, ptr %data.i510.i, align 1
  %633 = ptrtoint ptr %630 to i32
  call void @__asan_store1_noabort(i32 %633)
  store i8 115, ptr %630, align 1
  %634 = ptrtoint ptr %631 to i32
  call void @__asan_store1_noabort(i32 %634)
  store i8 -64, ptr %631, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i511.i) #6
  %635 = getelementptr inbounds i8, ptr %msg.i511.i, i32 4
  %636 = ptrtoint ptr %635 to i32
  call void @__asan_store4_noabort(i32 %636)
  store i32 262143, ptr %635, align 4
  %adr.i513.i = getelementptr inbounds %struct.stv_base, ptr %627, i32 0, i32 1
  %637 = ptrtoint ptr %adr.i513.i to i32
  call void @__asan_load1_noabort(i32 %637)
  %638 = load i8, ptr %adr.i513.i, align 4
  %conv6.i514.i = zext i8 %638 to i16
  %639 = ptrtoint ptr %msg.i511.i to i32
  call void @__asan_store2_noabort(i32 %639)
  store i16 %conv6.i514.i, ptr %msg.i511.i, align 4
  %flags.i515.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i511.i, i32 0, i32 1
  %640 = ptrtoint ptr %flags.i515.i to i32
  call void @__asan_store2_noabort(i32 %640)
  store i16 0, ptr %flags.i515.i, align 2
  %buf.i517.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i511.i, i32 0, i32 3
  %641 = ptrtoint ptr %buf.i517.i to i32
  call void @__asan_store4_noabort(i32 %641)
  store ptr %data.i510.i, ptr %buf.i517.i, align 4
  %call.i518.i = call i32 @i2c_transfer(ptr noundef %629, ptr noundef nonnull %msg.i511.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i518.i)
  %cmp.not.i519.i = icmp eq i32 %call.i518.i, 1
  br i1 %cmp.not.i519.i, label %write_reg.exit509.i.write_reg.exit525.i_crit_edge, label %do.end.i523.i

write_reg.exit509.i.write_reg.exit525.i_crit_edge: ; preds = %write_reg.exit509.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit525.i

do.end.i523.i:                                    ; preds = %write_reg.exit509.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i520.i = getelementptr inbounds %struct.i2c_adapter, ptr %629, i32 0, i32 9
  %642 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %call7.i.i, align 8
  %adr9.i521.i = getelementptr inbounds %struct.stv_base, ptr %643, i32 0, i32 1
  %644 = ptrtoint ptr %adr9.i521.i to i32
  call void @__asan_load1_noabort(i32 %644)
  %645 = load i8, ptr %adr9.i521.i, align 4
  %conv10.i522.i = zext i8 %645 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i520.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i522.i, i32 noundef 62835, i32 noundef 192) #10
  br label %write_reg.exit525.i

write_reg.exit525.i:                              ; preds = %do.end.i523.i, %write_reg.exit509.i.write_reg.exit525.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i511.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i510.i) #6
  %646 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %call7.i.i, align 8
  %i2c.i528.i = getelementptr inbounds %struct.stv_base, ptr %647, i32 0, i32 2
  %648 = ptrtoint ptr %i2c.i528.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %i2c.i528.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i526.i) #6
  %650 = getelementptr inbounds [3 x i8], ptr %data.i526.i, i32 0, i32 1
  %651 = getelementptr inbounds [3 x i8], ptr %data.i526.i, i32 0, i32 2
  %652 = ptrtoint ptr %data.i526.i to i32
  call void @__asan_store1_noabort(i32 %652)
  store i8 -11, ptr %data.i526.i, align 1
  %653 = ptrtoint ptr %650 to i32
  call void @__asan_store1_noabort(i32 %653)
  store i8 116, ptr %650, align 1
  %654 = ptrtoint ptr %651 to i32
  call void @__asan_store1_noabort(i32 %654)
  store i8 32, ptr %651, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i527.i) #6
  %655 = getelementptr inbounds i8, ptr %msg.i527.i, i32 4
  %656 = ptrtoint ptr %655 to i32
  call void @__asan_store4_noabort(i32 %656)
  store i32 262143, ptr %655, align 4
  %adr.i529.i = getelementptr inbounds %struct.stv_base, ptr %647, i32 0, i32 1
  %657 = ptrtoint ptr %adr.i529.i to i32
  call void @__asan_load1_noabort(i32 %657)
  %658 = load i8, ptr %adr.i529.i, align 4
  %conv6.i530.i = zext i8 %658 to i16
  %659 = ptrtoint ptr %msg.i527.i to i32
  call void @__asan_store2_noabort(i32 %659)
  store i16 %conv6.i530.i, ptr %msg.i527.i, align 4
  %flags.i531.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i527.i, i32 0, i32 1
  %660 = ptrtoint ptr %flags.i531.i to i32
  call void @__asan_store2_noabort(i32 %660)
  store i16 0, ptr %flags.i531.i, align 2
  %buf.i533.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i527.i, i32 0, i32 3
  %661 = ptrtoint ptr %buf.i533.i to i32
  call void @__asan_store4_noabort(i32 %661)
  store ptr %data.i526.i, ptr %buf.i533.i, align 4
  %call.i534.i = call i32 @i2c_transfer(ptr noundef %649, ptr noundef nonnull %msg.i527.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i534.i)
  %cmp.not.i535.i = icmp eq i32 %call.i534.i, 1
  br i1 %cmp.not.i535.i, label %write_reg.exit525.i.write_reg.exit541.i_crit_edge, label %do.end.i539.i

write_reg.exit525.i.write_reg.exit541.i_crit_edge: ; preds = %write_reg.exit525.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit541.i

do.end.i539.i:                                    ; preds = %write_reg.exit525.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i536.i = getelementptr inbounds %struct.i2c_adapter, ptr %649, i32 0, i32 9
  %662 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %call7.i.i, align 8
  %adr9.i537.i = getelementptr inbounds %struct.stv_base, ptr %663, i32 0, i32 1
  %664 = ptrtoint ptr %adr9.i537.i to i32
  call void @__asan_load1_noabort(i32 %664)
  %665 = load i8, ptr %adr9.i537.i, align 4
  %conv10.i538.i = zext i8 %665 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i536.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i538.i, i32 noundef 62836, i32 noundef 32) #10
  br label %write_reg.exit541.i

write_reg.exit541.i:                              ; preds = %do.end.i539.i, %write_reg.exit525.i.write_reg.exit541.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i527.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i526.i) #6
  %666 = ptrtoint ptr %tsspeed17 to i32
  call void @__asan_load1_noabort(i32 %666)
  %667 = load i8, ptr %tsspeed17, align 1
  %668 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %call7.i.i, align 8
  %i2c.i544.i = getelementptr inbounds %struct.stv_base, ptr %669, i32 0, i32 2
  %670 = ptrtoint ptr %i2c.i544.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %i2c.i544.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i542.i) #6
  %672 = getelementptr inbounds [3 x i8], ptr %data.i542.i, i32 0, i32 1
  %673 = getelementptr inbounds [3 x i8], ptr %data.i542.i, i32 0, i32 2
  %674 = ptrtoint ptr %data.i542.i to i32
  call void @__asan_store1_noabort(i32 %674)
  store i8 -11, ptr %data.i542.i, align 1
  %675 = ptrtoint ptr %672 to i32
  call void @__asan_store1_noabort(i32 %675)
  store i8 -128, ptr %672, align 1
  %676 = ptrtoint ptr %673 to i32
  call void @__asan_store1_noabort(i32 %676)
  store i8 %667, ptr %673, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i543.i) #6
  %677 = getelementptr inbounds i8, ptr %msg.i543.i, i32 4
  %678 = ptrtoint ptr %677 to i32
  call void @__asan_store4_noabort(i32 %678)
  store i32 262143, ptr %677, align 4
  %adr.i545.i = getelementptr inbounds %struct.stv_base, ptr %669, i32 0, i32 1
  %679 = ptrtoint ptr %adr.i545.i to i32
  call void @__asan_load1_noabort(i32 %679)
  %680 = load i8, ptr %adr.i545.i, align 4
  %conv6.i546.i = zext i8 %680 to i16
  %681 = ptrtoint ptr %msg.i543.i to i32
  call void @__asan_store2_noabort(i32 %681)
  store i16 %conv6.i546.i, ptr %msg.i543.i, align 4
  %flags.i547.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i543.i, i32 0, i32 1
  %682 = ptrtoint ptr %flags.i547.i to i32
  call void @__asan_store2_noabort(i32 %682)
  store i16 0, ptr %flags.i547.i, align 2
  %buf.i549.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i543.i, i32 0, i32 3
  %683 = ptrtoint ptr %buf.i549.i to i32
  call void @__asan_store4_noabort(i32 %683)
  store ptr %data.i542.i, ptr %buf.i549.i, align 4
  %call.i550.i = call i32 @i2c_transfer(ptr noundef %671, ptr noundef nonnull %msg.i543.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i550.i)
  %cmp.not.i551.i = icmp eq i32 %call.i550.i, 1
  br i1 %cmp.not.i551.i, label %write_reg.exit541.i.write_reg.exit558.i_crit_edge, label %do.end.i556.i

write_reg.exit541.i.write_reg.exit558.i_crit_edge: ; preds = %write_reg.exit541.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit558.i

do.end.i556.i:                                    ; preds = %write_reg.exit541.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i552.i = getelementptr inbounds %struct.i2c_adapter, ptr %671, i32 0, i32 9
  %684 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %call7.i.i, align 8
  %adr9.i553.i = getelementptr inbounds %struct.stv_base, ptr %685, i32 0, i32 1
  %686 = ptrtoint ptr %adr9.i553.i to i32
  call void @__asan_load1_noabort(i32 %686)
  %687 = load i8, ptr %adr9.i553.i, align 4
  %conv10.i554.i = zext i8 %687 to i32
  %conv12.i555.i = zext i8 %667 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i552.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i554.i, i32 noundef 62848, i32 noundef %conv12.i555.i) #10
  br label %write_reg.exit558.i

write_reg.exit558.i:                              ; preds = %do.end.i556.i, %write_reg.exit541.i.write_reg.exit558.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i543.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i542.i) #6
  %688 = ptrtoint ptr %tscfgh to i32
  call void @__asan_load1_noabort(i32 %688)
  %689 = load i8, ptr %tscfgh, align 1
  %690 = or i8 %689, 1
  %691 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %call7.i.i, align 8
  %i2c.i561.i = getelementptr inbounds %struct.stv_base, ptr %692, i32 0, i32 2
  %693 = ptrtoint ptr %i2c.i561.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %i2c.i561.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i559.i) #6
  %695 = getelementptr inbounds [3 x i8], ptr %data.i559.i, i32 0, i32 1
  %696 = getelementptr inbounds [3 x i8], ptr %data.i559.i, i32 0, i32 2
  %697 = ptrtoint ptr %data.i559.i to i32
  call void @__asan_store1_noabort(i32 %697)
  store i8 -13, ptr %data.i559.i, align 1
  %698 = ptrtoint ptr %695 to i32
  call void @__asan_store1_noabort(i32 %698)
  store i8 114, ptr %695, align 1
  %699 = ptrtoint ptr %696 to i32
  call void @__asan_store1_noabort(i32 %699)
  store i8 %690, ptr %696, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i560.i) #6
  %700 = getelementptr inbounds i8, ptr %msg.i560.i, i32 4
  %701 = ptrtoint ptr %700 to i32
  call void @__asan_store4_noabort(i32 %701)
  store i32 262143, ptr %700, align 4
  %adr.i562.i = getelementptr inbounds %struct.stv_base, ptr %692, i32 0, i32 1
  %702 = ptrtoint ptr %adr.i562.i to i32
  call void @__asan_load1_noabort(i32 %702)
  %703 = load i8, ptr %adr.i562.i, align 4
  %conv6.i563.i = zext i8 %703 to i16
  %704 = ptrtoint ptr %msg.i560.i to i32
  call void @__asan_store2_noabort(i32 %704)
  store i16 %conv6.i563.i, ptr %msg.i560.i, align 4
  %flags.i564.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i560.i, i32 0, i32 1
  %705 = ptrtoint ptr %flags.i564.i to i32
  call void @__asan_store2_noabort(i32 %705)
  store i16 0, ptr %flags.i564.i, align 2
  %buf.i566.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i560.i, i32 0, i32 3
  %706 = ptrtoint ptr %buf.i566.i to i32
  call void @__asan_store4_noabort(i32 %706)
  store ptr %data.i559.i, ptr %buf.i566.i, align 4
  %call.i567.i = call i32 @i2c_transfer(ptr noundef %694, ptr noundef nonnull %msg.i560.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i567.i)
  %cmp.not.i568.i = icmp eq i32 %call.i567.i, 1
  br i1 %cmp.not.i568.i, label %write_reg.exit558.i.write_reg.exit575.i_crit_edge, label %do.end.i573.i

write_reg.exit558.i.write_reg.exit575.i_crit_edge: ; preds = %write_reg.exit558.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit575.i

do.end.i573.i:                                    ; preds = %write_reg.exit558.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i569.i = getelementptr inbounds %struct.i2c_adapter, ptr %694, i32 0, i32 9
  %707 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %call7.i.i, align 8
  %adr9.i570.i = getelementptr inbounds %struct.stv_base, ptr %708, i32 0, i32 1
  %709 = ptrtoint ptr %adr9.i570.i to i32
  call void @__asan_load1_noabort(i32 %709)
  %710 = load i8, ptr %adr9.i570.i, align 4
  %conv10.i571.i = zext i8 %710 to i32
  %conv12.i572.i = zext i8 %690 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i569.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i571.i, i32 noundef 62322, i32 noundef %conv12.i572.i) #10
  br label %write_reg.exit575.i

write_reg.exit575.i:                              ; preds = %do.end.i573.i, %write_reg.exit558.i.write_reg.exit575.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i560.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i559.i) #6
  %711 = ptrtoint ptr %tscfgh to i32
  call void @__asan_load1_noabort(i32 %711)
  %712 = load i8, ptr %tscfgh, align 1
  %713 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %call7.i.i, align 8
  %i2c.i578.i = getelementptr inbounds %struct.stv_base, ptr %714, i32 0, i32 2
  %715 = ptrtoint ptr %i2c.i578.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %i2c.i578.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i576.i) #6
  %717 = getelementptr inbounds [3 x i8], ptr %data.i576.i, i32 0, i32 1
  %718 = getelementptr inbounds [3 x i8], ptr %data.i576.i, i32 0, i32 2
  %719 = ptrtoint ptr %data.i576.i to i32
  call void @__asan_store1_noabort(i32 %719)
  store i8 -13, ptr %data.i576.i, align 1
  %720 = ptrtoint ptr %717 to i32
  call void @__asan_store1_noabort(i32 %720)
  store i8 114, ptr %717, align 1
  %721 = ptrtoint ptr %718 to i32
  call void @__asan_store1_noabort(i32 %721)
  store i8 %712, ptr %718, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i577.i) #6
  %722 = getelementptr inbounds i8, ptr %msg.i577.i, i32 4
  %723 = ptrtoint ptr %722 to i32
  call void @__asan_store4_noabort(i32 %723)
  store i32 262143, ptr %722, align 4
  %adr.i579.i = getelementptr inbounds %struct.stv_base, ptr %714, i32 0, i32 1
  %724 = ptrtoint ptr %adr.i579.i to i32
  call void @__asan_load1_noabort(i32 %724)
  %725 = load i8, ptr %adr.i579.i, align 4
  %conv6.i580.i = zext i8 %725 to i16
  %726 = ptrtoint ptr %msg.i577.i to i32
  call void @__asan_store2_noabort(i32 %726)
  store i16 %conv6.i580.i, ptr %msg.i577.i, align 4
  %flags.i581.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i577.i, i32 0, i32 1
  %727 = ptrtoint ptr %flags.i581.i to i32
  call void @__asan_store2_noabort(i32 %727)
  store i16 0, ptr %flags.i581.i, align 2
  %buf.i583.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i577.i, i32 0, i32 3
  %728 = ptrtoint ptr %buf.i583.i to i32
  call void @__asan_store4_noabort(i32 %728)
  store ptr %data.i576.i, ptr %buf.i583.i, align 4
  %call.i584.i = call i32 @i2c_transfer(ptr noundef %716, ptr noundef nonnull %msg.i577.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i584.i)
  %cmp.not.i585.i = icmp eq i32 %call.i584.i, 1
  br i1 %cmp.not.i585.i, label %write_reg.exit575.i.write_reg.exit592.i_crit_edge, label %do.end.i590.i

write_reg.exit575.i.write_reg.exit592.i_crit_edge: ; preds = %write_reg.exit575.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit592.i

do.end.i590.i:                                    ; preds = %write_reg.exit575.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i586.i = getelementptr inbounds %struct.i2c_adapter, ptr %716, i32 0, i32 9
  %729 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %call7.i.i, align 8
  %adr9.i587.i = getelementptr inbounds %struct.stv_base, ptr %730, i32 0, i32 1
  %731 = ptrtoint ptr %adr9.i587.i to i32
  call void @__asan_load1_noabort(i32 %731)
  %732 = load i8, ptr %adr9.i587.i, align 4
  %conv10.i588.i = zext i8 %732 to i32
  %conv12.i589.i = zext i8 %712 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i586.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i588.i, i32 noundef 62322, i32 noundef %conv12.i589.i) #10
  br label %write_reg.exit592.i

write_reg.exit592.i:                              ; preds = %do.end.i590.i, %write_reg.exit575.i.write_reg.exit592.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i577.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i576.i) #6
  %733 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %call7.i.i, align 8
  %i2c.i595.i = getelementptr inbounds %struct.stv_base, ptr %734, i32 0, i32 2
  %735 = ptrtoint ptr %i2c.i595.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %i2c.i595.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i593.i) #6
  %737 = getelementptr inbounds [3 x i8], ptr %data.i593.i, i32 0, i32 1
  %738 = getelementptr inbounds [3 x i8], ptr %data.i593.i, i32 0, i32 2
  %739 = ptrtoint ptr %data.i593.i to i32
  call void @__asan_store1_noabort(i32 %739)
  store i8 -13, ptr %data.i593.i, align 1
  %740 = ptrtoint ptr %737 to i32
  call void @__asan_store1_noabort(i32 %740)
  store i8 115, ptr %737, align 1
  %741 = ptrtoint ptr %738 to i32
  call void @__asan_store1_noabort(i32 %741)
  store i8 -64, ptr %738, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i594.i) #6
  %742 = getelementptr inbounds i8, ptr %msg.i594.i, i32 4
  %743 = ptrtoint ptr %742 to i32
  call void @__asan_store4_noabort(i32 %743)
  store i32 262143, ptr %742, align 4
  %adr.i596.i = getelementptr inbounds %struct.stv_base, ptr %734, i32 0, i32 1
  %744 = ptrtoint ptr %adr.i596.i to i32
  call void @__asan_load1_noabort(i32 %744)
  %745 = load i8, ptr %adr.i596.i, align 4
  %conv6.i597.i = zext i8 %745 to i16
  %746 = ptrtoint ptr %msg.i594.i to i32
  call void @__asan_store2_noabort(i32 %746)
  store i16 %conv6.i597.i, ptr %msg.i594.i, align 4
  %flags.i598.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i594.i, i32 0, i32 1
  %747 = ptrtoint ptr %flags.i598.i to i32
  call void @__asan_store2_noabort(i32 %747)
  store i16 0, ptr %flags.i598.i, align 2
  %buf.i600.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i594.i, i32 0, i32 3
  %748 = ptrtoint ptr %buf.i600.i to i32
  call void @__asan_store4_noabort(i32 %748)
  store ptr %data.i593.i, ptr %buf.i600.i, align 4
  %call.i601.i = call i32 @i2c_transfer(ptr noundef %736, ptr noundef nonnull %msg.i594.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i601.i)
  %cmp.not.i602.i = icmp eq i32 %call.i601.i, 1
  br i1 %cmp.not.i602.i, label %write_reg.exit592.i.write_reg.exit608.i_crit_edge, label %do.end.i606.i

write_reg.exit592.i.write_reg.exit608.i_crit_edge: ; preds = %write_reg.exit592.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit608.i

do.end.i606.i:                                    ; preds = %write_reg.exit592.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i603.i = getelementptr inbounds %struct.i2c_adapter, ptr %736, i32 0, i32 9
  %749 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %call7.i.i, align 8
  %adr9.i604.i = getelementptr inbounds %struct.stv_base, ptr %750, i32 0, i32 1
  %751 = ptrtoint ptr %adr9.i604.i to i32
  call void @__asan_load1_noabort(i32 %751)
  %752 = load i8, ptr %adr9.i604.i, align 4
  %conv10.i605.i = zext i8 %752 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i603.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i605.i, i32 noundef 62323, i32 noundef 192) #10
  br label %write_reg.exit608.i

write_reg.exit608.i:                              ; preds = %do.end.i606.i, %write_reg.exit592.i.write_reg.exit608.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i594.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i593.i) #6
  %753 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %call7.i.i, align 8
  %i2c.i611.i = getelementptr inbounds %struct.stv_base, ptr %754, i32 0, i32 2
  %755 = ptrtoint ptr %i2c.i611.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %i2c.i611.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i609.i) #6
  %757 = getelementptr inbounds [3 x i8], ptr %data.i609.i, i32 0, i32 1
  %758 = getelementptr inbounds [3 x i8], ptr %data.i609.i, i32 0, i32 2
  %759 = ptrtoint ptr %data.i609.i to i32
  call void @__asan_store1_noabort(i32 %759)
  store i8 -13, ptr %data.i609.i, align 1
  %760 = ptrtoint ptr %757 to i32
  call void @__asan_store1_noabort(i32 %760)
  store i8 116, ptr %757, align 1
  %761 = ptrtoint ptr %758 to i32
  call void @__asan_store1_noabort(i32 %761)
  store i8 32, ptr %758, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i610.i) #6
  %762 = getelementptr inbounds i8, ptr %msg.i610.i, i32 4
  %763 = ptrtoint ptr %762 to i32
  call void @__asan_store4_noabort(i32 %763)
  store i32 262143, ptr %762, align 4
  %adr.i612.i = getelementptr inbounds %struct.stv_base, ptr %754, i32 0, i32 1
  %764 = ptrtoint ptr %adr.i612.i to i32
  call void @__asan_load1_noabort(i32 %764)
  %765 = load i8, ptr %adr.i612.i, align 4
  %conv6.i613.i = zext i8 %765 to i16
  %766 = ptrtoint ptr %msg.i610.i to i32
  call void @__asan_store2_noabort(i32 %766)
  store i16 %conv6.i613.i, ptr %msg.i610.i, align 4
  %flags.i614.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i610.i, i32 0, i32 1
  %767 = ptrtoint ptr %flags.i614.i to i32
  call void @__asan_store2_noabort(i32 %767)
  store i16 0, ptr %flags.i614.i, align 2
  %buf.i616.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i610.i, i32 0, i32 3
  %768 = ptrtoint ptr %buf.i616.i to i32
  call void @__asan_store4_noabort(i32 %768)
  store ptr %data.i609.i, ptr %buf.i616.i, align 4
  %call.i617.i = call i32 @i2c_transfer(ptr noundef %756, ptr noundef nonnull %msg.i610.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i617.i)
  %cmp.not.i618.i = icmp eq i32 %call.i617.i, 1
  br i1 %cmp.not.i618.i, label %write_reg.exit608.i.write_reg.exit624.i_crit_edge, label %do.end.i622.i

write_reg.exit608.i.write_reg.exit624.i_crit_edge: ; preds = %write_reg.exit608.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit624.i

do.end.i622.i:                                    ; preds = %write_reg.exit608.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i619.i = getelementptr inbounds %struct.i2c_adapter, ptr %756, i32 0, i32 9
  %769 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %call7.i.i, align 8
  %adr9.i620.i = getelementptr inbounds %struct.stv_base, ptr %770, i32 0, i32 1
  %771 = ptrtoint ptr %adr9.i620.i to i32
  call void @__asan_load1_noabort(i32 %771)
  %772 = load i8, ptr %adr9.i620.i, align 4
  %conv10.i621.i = zext i8 %772 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i619.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i621.i, i32 noundef 62324, i32 noundef 32) #10
  br label %write_reg.exit624.i

write_reg.exit624.i:                              ; preds = %do.end.i622.i, %write_reg.exit608.i.write_reg.exit624.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i610.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i609.i) #6
  %773 = ptrtoint ptr %tsspeed17 to i32
  call void @__asan_load1_noabort(i32 %773)
  %774 = load i8, ptr %tsspeed17, align 1
  %775 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %call7.i.i, align 8
  %i2c.i627.i = getelementptr inbounds %struct.stv_base, ptr %776, i32 0, i32 2
  %777 = ptrtoint ptr %i2c.i627.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %i2c.i627.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i625.i) #6
  %779 = getelementptr inbounds [3 x i8], ptr %data.i625.i, i32 0, i32 1
  %780 = getelementptr inbounds [3 x i8], ptr %data.i625.i, i32 0, i32 2
  %781 = ptrtoint ptr %data.i625.i to i32
  call void @__asan_store1_noabort(i32 %781)
  store i8 -13, ptr %data.i625.i, align 1
  %782 = ptrtoint ptr %779 to i32
  call void @__asan_store1_noabort(i32 %782)
  store i8 -128, ptr %779, align 1
  %783 = ptrtoint ptr %780 to i32
  call void @__asan_store1_noabort(i32 %783)
  store i8 %774, ptr %780, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i626.i) #6
  %784 = getelementptr inbounds i8, ptr %msg.i626.i, i32 4
  %785 = ptrtoint ptr %784 to i32
  call void @__asan_store4_noabort(i32 %785)
  store i32 262143, ptr %784, align 4
  %adr.i628.i = getelementptr inbounds %struct.stv_base, ptr %776, i32 0, i32 1
  %786 = ptrtoint ptr %adr.i628.i to i32
  call void @__asan_load1_noabort(i32 %786)
  %787 = load i8, ptr %adr.i628.i, align 4
  %conv6.i629.i = zext i8 %787 to i16
  %788 = ptrtoint ptr %msg.i626.i to i32
  call void @__asan_store2_noabort(i32 %788)
  store i16 %conv6.i629.i, ptr %msg.i626.i, align 4
  %flags.i630.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i626.i, i32 0, i32 1
  %789 = ptrtoint ptr %flags.i630.i to i32
  call void @__asan_store2_noabort(i32 %789)
  store i16 0, ptr %flags.i630.i, align 2
  %buf.i632.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i626.i, i32 0, i32 3
  %790 = ptrtoint ptr %buf.i632.i to i32
  call void @__asan_store4_noabort(i32 %790)
  store ptr %data.i625.i, ptr %buf.i632.i, align 4
  %call.i633.i = call i32 @i2c_transfer(ptr noundef %778, ptr noundef nonnull %msg.i626.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i633.i)
  %cmp.not.i634.i = icmp eq i32 %call.i633.i, 1
  br i1 %cmp.not.i634.i, label %write_reg.exit624.i.write_reg.exit641.i_crit_edge, label %do.end.i639.i

write_reg.exit624.i.write_reg.exit641.i_crit_edge: ; preds = %write_reg.exit624.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit641.i

do.end.i639.i:                                    ; preds = %write_reg.exit624.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i635.i = getelementptr inbounds %struct.i2c_adapter, ptr %778, i32 0, i32 9
  %791 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %call7.i.i, align 8
  %adr9.i636.i = getelementptr inbounds %struct.stv_base, ptr %792, i32 0, i32 1
  %793 = ptrtoint ptr %adr9.i636.i to i32
  call void @__asan_load1_noabort(i32 %793)
  %794 = load i8, ptr %adr9.i636.i, align 4
  %conv10.i637.i = zext i8 %794 to i32
  %conv12.i638.i = zext i8 %774 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i635.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i637.i, i32 noundef 62336, i32 noundef %conv12.i638.i) #10
  br label %write_reg.exit641.i

write_reg.exit641.i:                              ; preds = %do.end.i639.i, %write_reg.exit624.i.write_reg.exit641.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i626.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i625.i) #6
  %795 = ptrtoint ptr %tscfgh to i32
  call void @__asan_load1_noabort(i32 %795)
  %796 = load i8, ptr %tscfgh, align 1
  %797 = or i8 %796, 1
  %798 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %call7.i.i, align 8
  %i2c.i644.i = getelementptr inbounds %struct.stv_base, ptr %799, i32 0, i32 2
  %800 = ptrtoint ptr %i2c.i644.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %i2c.i644.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i642.i) #6
  %802 = getelementptr inbounds [3 x i8], ptr %data.i642.i, i32 0, i32 1
  %803 = getelementptr inbounds [3 x i8], ptr %data.i642.i, i32 0, i32 2
  %804 = ptrtoint ptr %data.i642.i to i32
  call void @__asan_store1_noabort(i32 %804)
  store i8 -11, ptr %data.i642.i, align 1
  %805 = ptrtoint ptr %802 to i32
  call void @__asan_store1_noabort(i32 %805)
  store i8 114, ptr %802, align 1
  %806 = ptrtoint ptr %803 to i32
  call void @__asan_store1_noabort(i32 %806)
  store i8 %797, ptr %803, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i643.i) #6
  %807 = getelementptr inbounds i8, ptr %msg.i643.i, i32 4
  %808 = ptrtoint ptr %807 to i32
  call void @__asan_store4_noabort(i32 %808)
  store i32 262143, ptr %807, align 4
  %adr.i645.i = getelementptr inbounds %struct.stv_base, ptr %799, i32 0, i32 1
  %809 = ptrtoint ptr %adr.i645.i to i32
  call void @__asan_load1_noabort(i32 %809)
  %810 = load i8, ptr %adr.i645.i, align 4
  %conv6.i646.i = zext i8 %810 to i16
  %811 = ptrtoint ptr %msg.i643.i to i32
  call void @__asan_store2_noabort(i32 %811)
  store i16 %conv6.i646.i, ptr %msg.i643.i, align 4
  %flags.i647.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i643.i, i32 0, i32 1
  %812 = ptrtoint ptr %flags.i647.i to i32
  call void @__asan_store2_noabort(i32 %812)
  store i16 0, ptr %flags.i647.i, align 2
  %buf.i649.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i643.i, i32 0, i32 3
  %813 = ptrtoint ptr %buf.i649.i to i32
  call void @__asan_store4_noabort(i32 %813)
  store ptr %data.i642.i, ptr %buf.i649.i, align 4
  %call.i650.i = call i32 @i2c_transfer(ptr noundef %801, ptr noundef nonnull %msg.i643.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i650.i)
  %cmp.not.i651.i = icmp eq i32 %call.i650.i, 1
  br i1 %cmp.not.i651.i, label %write_reg.exit641.i.write_reg.exit658.i_crit_edge, label %do.end.i656.i

write_reg.exit641.i.write_reg.exit658.i_crit_edge: ; preds = %write_reg.exit641.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit658.i

do.end.i656.i:                                    ; preds = %write_reg.exit641.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i652.i = getelementptr inbounds %struct.i2c_adapter, ptr %801, i32 0, i32 9
  %814 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %call7.i.i, align 8
  %adr9.i653.i = getelementptr inbounds %struct.stv_base, ptr %815, i32 0, i32 1
  %816 = ptrtoint ptr %adr9.i653.i to i32
  call void @__asan_load1_noabort(i32 %816)
  %817 = load i8, ptr %adr9.i653.i, align 4
  %conv10.i654.i = zext i8 %817 to i32
  %conv12.i655.i = zext i8 %797 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i652.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i654.i, i32 noundef 62834, i32 noundef %conv12.i655.i) #10
  br label %write_reg.exit658.i

write_reg.exit658.i:                              ; preds = %do.end.i656.i, %write_reg.exit641.i.write_reg.exit658.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i643.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i642.i) #6
  %818 = ptrtoint ptr %tscfgh to i32
  call void @__asan_load1_noabort(i32 %818)
  %819 = load i8, ptr %tscfgh, align 1
  %820 = or i8 %819, 1
  %821 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load ptr, ptr %call7.i.i, align 8
  %i2c.i661.i = getelementptr inbounds %struct.stv_base, ptr %822, i32 0, i32 2
  %823 = ptrtoint ptr %i2c.i661.i to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %i2c.i661.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i659.i) #6
  %825 = getelementptr inbounds [3 x i8], ptr %data.i659.i, i32 0, i32 1
  %826 = getelementptr inbounds [3 x i8], ptr %data.i659.i, i32 0, i32 2
  %827 = ptrtoint ptr %data.i659.i to i32
  call void @__asan_store1_noabort(i32 %827)
  store i8 -13, ptr %data.i659.i, align 1
  %828 = ptrtoint ptr %825 to i32
  call void @__asan_store1_noabort(i32 %828)
  store i8 114, ptr %825, align 1
  %829 = ptrtoint ptr %826 to i32
  call void @__asan_store1_noabort(i32 %829)
  store i8 %820, ptr %826, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i660.i) #6
  %830 = getelementptr inbounds i8, ptr %msg.i660.i, i32 4
  %831 = ptrtoint ptr %830 to i32
  call void @__asan_store4_noabort(i32 %831)
  store i32 262143, ptr %830, align 4
  %adr.i662.i = getelementptr inbounds %struct.stv_base, ptr %822, i32 0, i32 1
  %832 = ptrtoint ptr %adr.i662.i to i32
  call void @__asan_load1_noabort(i32 %832)
  %833 = load i8, ptr %adr.i662.i, align 4
  %conv6.i663.i = zext i8 %833 to i16
  %834 = ptrtoint ptr %msg.i660.i to i32
  call void @__asan_store2_noabort(i32 %834)
  store i16 %conv6.i663.i, ptr %msg.i660.i, align 4
  %flags.i664.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i660.i, i32 0, i32 1
  %835 = ptrtoint ptr %flags.i664.i to i32
  call void @__asan_store2_noabort(i32 %835)
  store i16 0, ptr %flags.i664.i, align 2
  %buf.i666.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i660.i, i32 0, i32 3
  %836 = ptrtoint ptr %buf.i666.i to i32
  call void @__asan_store4_noabort(i32 %836)
  store ptr %data.i659.i, ptr %buf.i666.i, align 4
  %call.i667.i = call i32 @i2c_transfer(ptr noundef %824, ptr noundef nonnull %msg.i660.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i667.i)
  %cmp.not.i668.i = icmp eq i32 %call.i667.i, 1
  br i1 %cmp.not.i668.i, label %write_reg.exit658.i.write_reg.exit675.i_crit_edge, label %do.end.i673.i

write_reg.exit658.i.write_reg.exit675.i_crit_edge: ; preds = %write_reg.exit658.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit675.i

do.end.i673.i:                                    ; preds = %write_reg.exit658.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i669.i = getelementptr inbounds %struct.i2c_adapter, ptr %824, i32 0, i32 9
  %837 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load ptr, ptr %call7.i.i, align 8
  %adr9.i670.i = getelementptr inbounds %struct.stv_base, ptr %838, i32 0, i32 1
  %839 = ptrtoint ptr %adr9.i670.i to i32
  call void @__asan_load1_noabort(i32 %839)
  %840 = load i8, ptr %adr9.i670.i, align 4
  %conv10.i671.i = zext i8 %840 to i32
  %conv12.i672.i = zext i8 %820 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i669.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i671.i, i32 noundef 62322, i32 noundef %conv12.i672.i) #10
  br label %write_reg.exit675.i

write_reg.exit675.i:                              ; preds = %do.end.i673.i, %write_reg.exit658.i.write_reg.exit675.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i660.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i659.i) #6
  %841 = ptrtoint ptr %tscfgh to i32
  call void @__asan_load1_noabort(i32 %841)
  %842 = load i8, ptr %tscfgh, align 1
  %843 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %call7.i.i, align 8
  %i2c.i678.i = getelementptr inbounds %struct.stv_base, ptr %844, i32 0, i32 2
  %845 = ptrtoint ptr %i2c.i678.i to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %i2c.i678.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i676.i) #6
  %847 = getelementptr inbounds [3 x i8], ptr %data.i676.i, i32 0, i32 1
  %848 = getelementptr inbounds [3 x i8], ptr %data.i676.i, i32 0, i32 2
  %849 = ptrtoint ptr %data.i676.i to i32
  call void @__asan_store1_noabort(i32 %849)
  store i8 -11, ptr %data.i676.i, align 1
  %850 = ptrtoint ptr %847 to i32
  call void @__asan_store1_noabort(i32 %850)
  store i8 114, ptr %847, align 1
  %851 = ptrtoint ptr %848 to i32
  call void @__asan_store1_noabort(i32 %851)
  store i8 %842, ptr %848, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i677.i) #6
  %852 = getelementptr inbounds i8, ptr %msg.i677.i, i32 4
  %853 = ptrtoint ptr %852 to i32
  call void @__asan_store4_noabort(i32 %853)
  store i32 262143, ptr %852, align 4
  %adr.i679.i = getelementptr inbounds %struct.stv_base, ptr %844, i32 0, i32 1
  %854 = ptrtoint ptr %adr.i679.i to i32
  call void @__asan_load1_noabort(i32 %854)
  %855 = load i8, ptr %adr.i679.i, align 4
  %conv6.i680.i = zext i8 %855 to i16
  %856 = ptrtoint ptr %msg.i677.i to i32
  call void @__asan_store2_noabort(i32 %856)
  store i16 %conv6.i680.i, ptr %msg.i677.i, align 4
  %flags.i681.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i677.i, i32 0, i32 1
  %857 = ptrtoint ptr %flags.i681.i to i32
  call void @__asan_store2_noabort(i32 %857)
  store i16 0, ptr %flags.i681.i, align 2
  %buf.i683.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i677.i, i32 0, i32 3
  %858 = ptrtoint ptr %buf.i683.i to i32
  call void @__asan_store4_noabort(i32 %858)
  store ptr %data.i676.i, ptr %buf.i683.i, align 4
  %call.i684.i = call i32 @i2c_transfer(ptr noundef %846, ptr noundef nonnull %msg.i677.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i684.i)
  %cmp.not.i685.i = icmp eq i32 %call.i684.i, 1
  br i1 %cmp.not.i685.i, label %write_reg.exit675.i.write_reg.exit692.i_crit_edge, label %do.end.i690.i

write_reg.exit675.i.write_reg.exit692.i_crit_edge: ; preds = %write_reg.exit675.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit692.i

do.end.i690.i:                                    ; preds = %write_reg.exit675.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i686.i = getelementptr inbounds %struct.i2c_adapter, ptr %846, i32 0, i32 9
  %859 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load ptr, ptr %call7.i.i, align 8
  %adr9.i687.i = getelementptr inbounds %struct.stv_base, ptr %860, i32 0, i32 1
  %861 = ptrtoint ptr %adr9.i687.i to i32
  call void @__asan_load1_noabort(i32 %861)
  %862 = load i8, ptr %adr9.i687.i, align 4
  %conv10.i688.i = zext i8 %862 to i32
  %conv12.i689.i = zext i8 %842 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i686.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i688.i, i32 noundef 62834, i32 noundef %conv12.i689.i) #10
  br label %write_reg.exit692.i

write_reg.exit692.i:                              ; preds = %do.end.i690.i, %write_reg.exit675.i.write_reg.exit692.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i677.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i676.i) #6
  %863 = ptrtoint ptr %tscfgh to i32
  call void @__asan_load1_noabort(i32 %863)
  %864 = load i8, ptr %tscfgh, align 1
  %865 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load ptr, ptr %call7.i.i, align 8
  %i2c.i695.i = getelementptr inbounds %struct.stv_base, ptr %866, i32 0, i32 2
  %867 = ptrtoint ptr %i2c.i695.i to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load ptr, ptr %i2c.i695.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i693.i) #6
  %869 = getelementptr inbounds [3 x i8], ptr %data.i693.i, i32 0, i32 1
  %870 = getelementptr inbounds [3 x i8], ptr %data.i693.i, i32 0, i32 2
  %871 = ptrtoint ptr %data.i693.i to i32
  call void @__asan_store1_noabort(i32 %871)
  store i8 -13, ptr %data.i693.i, align 1
  %872 = ptrtoint ptr %869 to i32
  call void @__asan_store1_noabort(i32 %872)
  store i8 114, ptr %869, align 1
  %873 = ptrtoint ptr %870 to i32
  call void @__asan_store1_noabort(i32 %873)
  store i8 %864, ptr %870, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i694.i) #6
  %874 = getelementptr inbounds i8, ptr %msg.i694.i, i32 4
  %875 = ptrtoint ptr %874 to i32
  call void @__asan_store4_noabort(i32 %875)
  store i32 262143, ptr %874, align 4
  %adr.i696.i = getelementptr inbounds %struct.stv_base, ptr %866, i32 0, i32 1
  %876 = ptrtoint ptr %adr.i696.i to i32
  call void @__asan_load1_noabort(i32 %876)
  %877 = load i8, ptr %adr.i696.i, align 4
  %conv6.i697.i = zext i8 %877 to i16
  %878 = ptrtoint ptr %msg.i694.i to i32
  call void @__asan_store2_noabort(i32 %878)
  store i16 %conv6.i697.i, ptr %msg.i694.i, align 4
  %flags.i698.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i694.i, i32 0, i32 1
  %879 = ptrtoint ptr %flags.i698.i to i32
  call void @__asan_store2_noabort(i32 %879)
  store i16 0, ptr %flags.i698.i, align 2
  %buf.i700.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i694.i, i32 0, i32 3
  %880 = ptrtoint ptr %buf.i700.i to i32
  call void @__asan_store4_noabort(i32 %880)
  store ptr %data.i693.i, ptr %buf.i700.i, align 4
  %call.i701.i = call i32 @i2c_transfer(ptr noundef %868, ptr noundef nonnull %msg.i694.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i701.i)
  %cmp.not.i702.i = icmp eq i32 %call.i701.i, 1
  br i1 %cmp.not.i702.i, label %write_reg.exit692.i.write_reg.exit709.i_crit_edge, label %do.end.i707.i

write_reg.exit692.i.write_reg.exit709.i_crit_edge: ; preds = %write_reg.exit692.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit709.i

do.end.i707.i:                                    ; preds = %write_reg.exit692.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i703.i = getelementptr inbounds %struct.i2c_adapter, ptr %868, i32 0, i32 9
  %881 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load ptr, ptr %call7.i.i, align 8
  %adr9.i704.i = getelementptr inbounds %struct.stv_base, ptr %882, i32 0, i32 1
  %883 = ptrtoint ptr %adr9.i704.i to i32
  call void @__asan_load1_noabort(i32 %883)
  %884 = load i8, ptr %adr9.i704.i, align 4
  %conv10.i705.i = zext i8 %884 to i32
  %conv12.i706.i = zext i8 %864 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i703.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i705.i, i32 noundef 62322, i32 noundef %conv12.i706.i) #10
  br label %write_reg.exit709.i

write_reg.exit709.i:                              ; preds = %do.end.i707.i, %write_reg.exit692.i.write_reg.exit709.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i694.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i693.i) #6
  %885 = ptrtoint ptr %i2crpt to i32
  call void @__asan_load1_noabort(i32 %885)
  %886 = load i8, ptr %i2crpt, align 2
  %887 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %call7.i.i, align 8
  %i2c.i712.i = getelementptr inbounds %struct.stv_base, ptr %888, i32 0, i32 2
  %889 = ptrtoint ptr %i2c.i712.i to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %i2c.i712.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i710.i) #6
  %891 = getelementptr inbounds [3 x i8], ptr %data.i710.i, i32 0, i32 1
  %892 = getelementptr inbounds [3 x i8], ptr %data.i710.i, i32 0, i32 2
  %893 = ptrtoint ptr %data.i710.i to i32
  call void @__asan_store1_noabort(i32 %893)
  store i8 -15, ptr %data.i710.i, align 1
  %894 = ptrtoint ptr %891 to i32
  call void @__asan_store1_noabort(i32 %894)
  store i8 42, ptr %891, align 1
  %895 = ptrtoint ptr %892 to i32
  call void @__asan_store1_noabort(i32 %895)
  store i8 %886, ptr %892, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i711.i) #6
  %896 = getelementptr inbounds i8, ptr %msg.i711.i, i32 4
  %897 = ptrtoint ptr %896 to i32
  call void @__asan_store4_noabort(i32 %897)
  store i32 262143, ptr %896, align 4
  %adr.i713.i = getelementptr inbounds %struct.stv_base, ptr %888, i32 0, i32 1
  %898 = ptrtoint ptr %adr.i713.i to i32
  call void @__asan_load1_noabort(i32 %898)
  %899 = load i8, ptr %adr.i713.i, align 4
  %conv6.i714.i = zext i8 %899 to i16
  %900 = ptrtoint ptr %msg.i711.i to i32
  call void @__asan_store2_noabort(i32 %900)
  store i16 %conv6.i714.i, ptr %msg.i711.i, align 4
  %flags.i715.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i711.i, i32 0, i32 1
  %901 = ptrtoint ptr %flags.i715.i to i32
  call void @__asan_store2_noabort(i32 %901)
  store i16 0, ptr %flags.i715.i, align 2
  %buf.i717.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i711.i, i32 0, i32 3
  %902 = ptrtoint ptr %buf.i717.i to i32
  call void @__asan_store4_noabort(i32 %902)
  store ptr %data.i710.i, ptr %buf.i717.i, align 4
  %call.i718.i = call i32 @i2c_transfer(ptr noundef %890, ptr noundef nonnull %msg.i711.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i718.i)
  %cmp.not.i719.i = icmp eq i32 %call.i718.i, 1
  br i1 %cmp.not.i719.i, label %write_reg.exit709.i.write_reg.exit726.i_crit_edge, label %do.end.i724.i

write_reg.exit709.i.write_reg.exit726.i_crit_edge: ; preds = %write_reg.exit709.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit726.i

do.end.i724.i:                                    ; preds = %write_reg.exit709.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i720.i = getelementptr inbounds %struct.i2c_adapter, ptr %890, i32 0, i32 9
  %903 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load ptr, ptr %call7.i.i, align 8
  %adr9.i721.i = getelementptr inbounds %struct.stv_base, ptr %904, i32 0, i32 1
  %905 = ptrtoint ptr %adr9.i721.i to i32
  call void @__asan_load1_noabort(i32 %905)
  %906 = load i8, ptr %adr9.i721.i, align 4
  %conv10.i722.i = zext i8 %906 to i32
  %conv12.i723.i = zext i8 %886 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i720.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i722.i, i32 noundef 61738, i32 noundef %conv12.i723.i) #10
  br label %write_reg.exit726.i

write_reg.exit726.i:                              ; preds = %do.end.i724.i, %write_reg.exit709.i.write_reg.exit726.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i711.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i710.i) #6
  %907 = ptrtoint ptr %i2crpt to i32
  call void @__asan_load1_noabort(i32 %907)
  %908 = load i8, ptr %i2crpt, align 2
  %909 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load ptr, ptr %call7.i.i, align 8
  %i2c.i729.i = getelementptr inbounds %struct.stv_base, ptr %910, i32 0, i32 2
  %911 = ptrtoint ptr %i2c.i729.i to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load ptr, ptr %i2c.i729.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i727.i) #6
  %913 = getelementptr inbounds [3 x i8], ptr %data.i727.i, i32 0, i32 1
  %914 = getelementptr inbounds [3 x i8], ptr %data.i727.i, i32 0, i32 2
  %915 = ptrtoint ptr %data.i727.i to i32
  call void @__asan_store1_noabort(i32 %915)
  store i8 -15, ptr %data.i727.i, align 1
  %916 = ptrtoint ptr %913 to i32
  call void @__asan_store1_noabort(i32 %916)
  store i8 43, ptr %913, align 1
  %917 = ptrtoint ptr %914 to i32
  call void @__asan_store1_noabort(i32 %917)
  store i8 %908, ptr %914, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i728.i) #6
  %918 = getelementptr inbounds i8, ptr %msg.i728.i, i32 4
  %919 = ptrtoint ptr %918 to i32
  call void @__asan_store4_noabort(i32 %919)
  store i32 262143, ptr %918, align 4
  %adr.i730.i = getelementptr inbounds %struct.stv_base, ptr %910, i32 0, i32 1
  %920 = ptrtoint ptr %adr.i730.i to i32
  call void @__asan_load1_noabort(i32 %920)
  %921 = load i8, ptr %adr.i730.i, align 4
  %conv6.i731.i = zext i8 %921 to i16
  %922 = ptrtoint ptr %msg.i728.i to i32
  call void @__asan_store2_noabort(i32 %922)
  store i16 %conv6.i731.i, ptr %msg.i728.i, align 4
  %flags.i732.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i728.i, i32 0, i32 1
  %923 = ptrtoint ptr %flags.i732.i to i32
  call void @__asan_store2_noabort(i32 %923)
  store i16 0, ptr %flags.i732.i, align 2
  %buf.i734.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i728.i, i32 0, i32 3
  %924 = ptrtoint ptr %buf.i734.i to i32
  call void @__asan_store4_noabort(i32 %924)
  store ptr %data.i727.i, ptr %buf.i734.i, align 4
  %call.i735.i = call i32 @i2c_transfer(ptr noundef %912, ptr noundef nonnull %msg.i728.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i735.i)
  %cmp.not.i736.i = icmp eq i32 %call.i735.i, 1
  br i1 %cmp.not.i736.i, label %write_reg.exit726.i.write_reg.exit743.i_crit_edge, label %do.end.i741.i

write_reg.exit726.i.write_reg.exit743.i_crit_edge: ; preds = %write_reg.exit726.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit743.i

do.end.i741.i:                                    ; preds = %write_reg.exit726.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i737.i = getelementptr inbounds %struct.i2c_adapter, ptr %912, i32 0, i32 9
  %925 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %call7.i.i, align 8
  %adr9.i738.i = getelementptr inbounds %struct.stv_base, ptr %926, i32 0, i32 1
  %927 = ptrtoint ptr %adr9.i738.i to i32
  call void @__asan_load1_noabort(i32 %927)
  %928 = load i8, ptr %adr9.i738.i, align 4
  %conv10.i739.i = zext i8 %928 to i32
  %conv12.i740.i = zext i8 %908 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i737.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i739.i, i32 noundef 61739, i32 noundef %conv12.i740.i) #10
  br label %write_reg.exit743.i

write_reg.exit743.i:                              ; preds = %do.end.i741.i, %write_reg.exit726.i.write_reg.exit743.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i728.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i727.i) #6
  %929 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %call7.i.i, align 8
  %i2c.i746.i = getelementptr inbounds %struct.stv_base, ptr %930, i32 0, i32 2
  %931 = ptrtoint ptr %i2c.i746.i to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %i2c.i746.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i744.i) #6
  %933 = getelementptr inbounds [3 x i8], ptr %data.i744.i, i32 0, i32 1
  %934 = getelementptr inbounds [3 x i8], ptr %data.i744.i, i32 0, i32 2
  %935 = ptrtoint ptr %data.i744.i to i32
  call void @__asan_store1_noabort(i32 %935)
  store i8 -11, ptr %data.i744.i, align 1
  %936 = ptrtoint ptr %933 to i32
  call void @__asan_store1_noabort(i32 %936)
  store i8 119, ptr %933, align 1
  %937 = ptrtoint ptr %934 to i32
  call void @__asan_store1_noabort(i32 %937)
  store i8 23, ptr %934, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i745.i) #6
  %938 = getelementptr inbounds i8, ptr %msg.i745.i, i32 4
  %939 = ptrtoint ptr %938 to i32
  call void @__asan_store4_noabort(i32 %939)
  store i32 262143, ptr %938, align 4
  %adr.i747.i = getelementptr inbounds %struct.stv_base, ptr %930, i32 0, i32 1
  %940 = ptrtoint ptr %adr.i747.i to i32
  call void @__asan_load1_noabort(i32 %940)
  %941 = load i8, ptr %adr.i747.i, align 4
  %conv6.i748.i = zext i8 %941 to i16
  %942 = ptrtoint ptr %msg.i745.i to i32
  call void @__asan_store2_noabort(i32 %942)
  store i16 %conv6.i748.i, ptr %msg.i745.i, align 4
  %flags.i749.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i745.i, i32 0, i32 1
  %943 = ptrtoint ptr %flags.i749.i to i32
  call void @__asan_store2_noabort(i32 %943)
  store i16 0, ptr %flags.i749.i, align 2
  %buf.i751.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i745.i, i32 0, i32 3
  %944 = ptrtoint ptr %buf.i751.i to i32
  call void @__asan_store4_noabort(i32 %944)
  store ptr %data.i744.i, ptr %buf.i751.i, align 4
  %call.i752.i = call i32 @i2c_transfer(ptr noundef %932, ptr noundef nonnull %msg.i745.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i752.i)
  %cmp.not.i753.i = icmp eq i32 %call.i752.i, 1
  br i1 %cmp.not.i753.i, label %write_reg.exit743.i.write_reg.exit759.i_crit_edge, label %do.end.i757.i

write_reg.exit743.i.write_reg.exit759.i_crit_edge: ; preds = %write_reg.exit743.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit759.i

do.end.i757.i:                                    ; preds = %write_reg.exit743.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i754.i = getelementptr inbounds %struct.i2c_adapter, ptr %932, i32 0, i32 9
  %945 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load ptr, ptr %call7.i.i, align 8
  %adr9.i755.i = getelementptr inbounds %struct.stv_base, ptr %946, i32 0, i32 1
  %947 = ptrtoint ptr %adr9.i755.i to i32
  call void @__asan_load1_noabort(i32 %947)
  %948 = load i8, ptr %adr9.i755.i, align 4
  %conv10.i756.i = zext i8 %948 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i754.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i756.i, i32 noundef 62839, i32 noundef 23) #10
  br label %write_reg.exit759.i

write_reg.exit759.i:                              ; preds = %do.end.i757.i, %write_reg.exit743.i.write_reg.exit759.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i745.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i744.i) #6
  %949 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %call7.i.i, align 8
  %i2c.i762.i = getelementptr inbounds %struct.stv_base, ptr %950, i32 0, i32 2
  %951 = ptrtoint ptr %i2c.i762.i to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %i2c.i762.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i760.i) #6
  %953 = getelementptr inbounds [3 x i8], ptr %data.i760.i, i32 0, i32 1
  %954 = getelementptr inbounds [3 x i8], ptr %data.i760.i, i32 0, i32 2
  %955 = ptrtoint ptr %data.i760.i to i32
  call void @__asan_store1_noabort(i32 %955)
  store i8 -11, ptr %data.i760.i, align 1
  %956 = ptrtoint ptr %953 to i32
  call void @__asan_store1_noabort(i32 %956)
  store i8 120, ptr %953, align 1
  %957 = ptrtoint ptr %954 to i32
  call void @__asan_store1_noabort(i32 %957)
  store i8 -1, ptr %954, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i761.i) #6
  %958 = getelementptr inbounds i8, ptr %msg.i761.i, i32 4
  %959 = ptrtoint ptr %958 to i32
  call void @__asan_store4_noabort(i32 %959)
  store i32 262143, ptr %958, align 4
  %adr.i763.i = getelementptr inbounds %struct.stv_base, ptr %950, i32 0, i32 1
  %960 = ptrtoint ptr %adr.i763.i to i32
  call void @__asan_load1_noabort(i32 %960)
  %961 = load i8, ptr %adr.i763.i, align 4
  %conv6.i764.i = zext i8 %961 to i16
  %962 = ptrtoint ptr %msg.i761.i to i32
  call void @__asan_store2_noabort(i32 %962)
  store i16 %conv6.i764.i, ptr %msg.i761.i, align 4
  %flags.i765.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i761.i, i32 0, i32 1
  %963 = ptrtoint ptr %flags.i765.i to i32
  call void @__asan_store2_noabort(i32 %963)
  store i16 0, ptr %flags.i765.i, align 2
  %buf.i767.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i761.i, i32 0, i32 3
  %964 = ptrtoint ptr %buf.i767.i to i32
  call void @__asan_store4_noabort(i32 %964)
  store ptr %data.i760.i, ptr %buf.i767.i, align 4
  %call.i768.i = call i32 @i2c_transfer(ptr noundef %952, ptr noundef nonnull %msg.i761.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i768.i)
  %cmp.not.i769.i = icmp eq i32 %call.i768.i, 1
  br i1 %cmp.not.i769.i, label %write_reg.exit759.i.write_reg.exit775.i_crit_edge, label %do.end.i773.i

write_reg.exit759.i.write_reg.exit775.i_crit_edge: ; preds = %write_reg.exit759.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit775.i

do.end.i773.i:                                    ; preds = %write_reg.exit759.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i770.i = getelementptr inbounds %struct.i2c_adapter, ptr %952, i32 0, i32 9
  %965 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %965)
  %966 = load ptr, ptr %call7.i.i, align 8
  %adr9.i771.i = getelementptr inbounds %struct.stv_base, ptr %966, i32 0, i32 1
  %967 = ptrtoint ptr %adr9.i771.i to i32
  call void @__asan_load1_noabort(i32 %967)
  %968 = load i8, ptr %adr9.i771.i, align 4
  %conv10.i772.i = zext i8 %968 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i770.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i772.i, i32 noundef 62840, i32 noundef 255) #10
  br label %write_reg.exit775.i

write_reg.exit775.i:                              ; preds = %do.end.i773.i, %write_reg.exit759.i.write_reg.exit775.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i761.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i760.i) #6
  %969 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load ptr, ptr %call7.i.i, align 8
  %i2c.i778.i = getelementptr inbounds %struct.stv_base, ptr %970, i32 0, i32 2
  %971 = ptrtoint ptr %i2c.i778.i to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load ptr, ptr %i2c.i778.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i776.i) #6
  %973 = getelementptr inbounds [3 x i8], ptr %data.i776.i, i32 0, i32 1
  %974 = getelementptr inbounds [3 x i8], ptr %data.i776.i, i32 0, i32 2
  %975 = ptrtoint ptr %data.i776.i to i32
  call void @__asan_store1_noabort(i32 %975)
  store i8 -13, ptr %data.i776.i, align 1
  %976 = ptrtoint ptr %973 to i32
  call void @__asan_store1_noabort(i32 %976)
  store i8 119, ptr %973, align 1
  %977 = ptrtoint ptr %974 to i32
  call void @__asan_store1_noabort(i32 %977)
  store i8 23, ptr %974, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i777.i) #6
  %978 = getelementptr inbounds i8, ptr %msg.i777.i, i32 4
  %979 = ptrtoint ptr %978 to i32
  call void @__asan_store4_noabort(i32 %979)
  store i32 262143, ptr %978, align 4
  %adr.i779.i = getelementptr inbounds %struct.stv_base, ptr %970, i32 0, i32 1
  %980 = ptrtoint ptr %adr.i779.i to i32
  call void @__asan_load1_noabort(i32 %980)
  %981 = load i8, ptr %adr.i779.i, align 4
  %conv6.i780.i = zext i8 %981 to i16
  %982 = ptrtoint ptr %msg.i777.i to i32
  call void @__asan_store2_noabort(i32 %982)
  store i16 %conv6.i780.i, ptr %msg.i777.i, align 4
  %flags.i781.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i777.i, i32 0, i32 1
  %983 = ptrtoint ptr %flags.i781.i to i32
  call void @__asan_store2_noabort(i32 %983)
  store i16 0, ptr %flags.i781.i, align 2
  %buf.i783.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i777.i, i32 0, i32 3
  %984 = ptrtoint ptr %buf.i783.i to i32
  call void @__asan_store4_noabort(i32 %984)
  store ptr %data.i776.i, ptr %buf.i783.i, align 4
  %call.i784.i = call i32 @i2c_transfer(ptr noundef %972, ptr noundef nonnull %msg.i777.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i784.i)
  %cmp.not.i785.i = icmp eq i32 %call.i784.i, 1
  br i1 %cmp.not.i785.i, label %write_reg.exit775.i.write_reg.exit791.i_crit_edge, label %do.end.i789.i

write_reg.exit775.i.write_reg.exit791.i_crit_edge: ; preds = %write_reg.exit775.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit791.i

do.end.i789.i:                                    ; preds = %write_reg.exit775.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i786.i = getelementptr inbounds %struct.i2c_adapter, ptr %972, i32 0, i32 9
  %985 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load ptr, ptr %call7.i.i, align 8
  %adr9.i787.i = getelementptr inbounds %struct.stv_base, ptr %986, i32 0, i32 1
  %987 = ptrtoint ptr %adr9.i787.i to i32
  call void @__asan_load1_noabort(i32 %987)
  %988 = load i8, ptr %adr9.i787.i, align 4
  %conv10.i788.i = zext i8 %988 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i786.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i788.i, i32 noundef 62327, i32 noundef 23) #10
  br label %write_reg.exit791.i

write_reg.exit791.i:                              ; preds = %do.end.i789.i, %write_reg.exit775.i.write_reg.exit791.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i777.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i776.i) #6
  %989 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %call7.i.i, align 8
  %i2c.i794.i = getelementptr inbounds %struct.stv_base, ptr %990, i32 0, i32 2
  %991 = ptrtoint ptr %i2c.i794.i to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load ptr, ptr %i2c.i794.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i792.i) #6
  %993 = getelementptr inbounds [3 x i8], ptr %data.i792.i, i32 0, i32 1
  %994 = getelementptr inbounds [3 x i8], ptr %data.i792.i, i32 0, i32 2
  %995 = ptrtoint ptr %data.i792.i to i32
  call void @__asan_store1_noabort(i32 %995)
  store i8 -13, ptr %data.i792.i, align 1
  %996 = ptrtoint ptr %993 to i32
  call void @__asan_store1_noabort(i32 %996)
  store i8 120, ptr %993, align 1
  %997 = ptrtoint ptr %994 to i32
  call void @__asan_store1_noabort(i32 %997)
  store i8 -1, ptr %994, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i793.i) #6
  %998 = getelementptr inbounds i8, ptr %msg.i793.i, i32 4
  %999 = ptrtoint ptr %998 to i32
  call void @__asan_store4_noabort(i32 %999)
  store i32 262143, ptr %998, align 4
  %adr.i795.i = getelementptr inbounds %struct.stv_base, ptr %990, i32 0, i32 1
  %1000 = ptrtoint ptr %adr.i795.i to i32
  call void @__asan_load1_noabort(i32 %1000)
  %1001 = load i8, ptr %adr.i795.i, align 4
  %conv6.i796.i = zext i8 %1001 to i16
  %1002 = ptrtoint ptr %msg.i793.i to i32
  call void @__asan_store2_noabort(i32 %1002)
  store i16 %conv6.i796.i, ptr %msg.i793.i, align 4
  %flags.i797.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i793.i, i32 0, i32 1
  %1003 = ptrtoint ptr %flags.i797.i to i32
  call void @__asan_store2_noabort(i32 %1003)
  store i16 0, ptr %flags.i797.i, align 2
  %buf.i799.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i793.i, i32 0, i32 3
  %1004 = ptrtoint ptr %buf.i799.i to i32
  call void @__asan_store4_noabort(i32 %1004)
  store ptr %data.i792.i, ptr %buf.i799.i, align 4
  %call.i800.i = call i32 @i2c_transfer(ptr noundef %992, ptr noundef nonnull %msg.i793.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i800.i)
  %cmp.not.i801.i = icmp eq i32 %call.i800.i, 1
  br i1 %cmp.not.i801.i, label %write_reg.exit791.i.write_reg.exit807.i_crit_edge, label %do.end.i805.i

write_reg.exit791.i.write_reg.exit807.i_crit_edge: ; preds = %write_reg.exit791.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit807.i

do.end.i805.i:                                    ; preds = %write_reg.exit791.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i802.i = getelementptr inbounds %struct.i2c_adapter, ptr %992, i32 0, i32 9
  %1005 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load ptr, ptr %call7.i.i, align 8
  %adr9.i803.i = getelementptr inbounds %struct.stv_base, ptr %1006, i32 0, i32 1
  %1007 = ptrtoint ptr %adr9.i803.i to i32
  call void @__asan_load1_noabort(i32 %1007)
  %1008 = load i8, ptr %adr9.i803.i, align 4
  %conv10.i804.i = zext i8 %1008 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i802.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i804.i, i32 noundef 62328, i32 noundef 255) #10
  br label %write_reg.exit807.i

write_reg.exit807.i:                              ; preds = %do.end.i805.i, %write_reg.exit791.i.write_reg.exit807.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i793.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i792.i) #6
  %1009 = ptrtoint ptr %nr18 to i32
  call void @__asan_load4_noabort(i32 %1009)
  %1010 = load i32, ptr %nr18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1010)
  %tobool.not.i.i = icmp eq i32 %1010, 0
  %1011 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %1011)
  %1012 = load ptr, ptr %call7.i.i, align 8
  %mclk.i810.i = getelementptr inbounds %struct.stv_base, ptr %1012, i32 0, i32 7
  %1013 = ptrtoint ptr %mclk.i810.i to i32
  call void @__asan_load4_noabort(i32 %1013)
  %1014 = load i32, ptr %mclk.i810.i, align 4
  %add.i.i = add i32 %1014, 352000
  %div.i811.i = udiv i32 %add.i.i, 704000
  %conv1.i.i = trunc i32 %div.i811.i to i8
  %1015 = select i1 %tobool.not.i.i, i16 0, i16 64
  %conv4.i.i = or i16 %1015, -2294
  %i2c.i.i812.i = getelementptr inbounds %struct.stv_base, ptr %1012, i32 0, i32 2
  %1016 = ptrtoint ptr %i2c.i.i812.i to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %i2c.i.i812.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i808.i) #6
  %1018 = getelementptr inbounds [3 x i8], ptr %data.i.i808.i, i32 0, i32 1
  %1019 = getelementptr inbounds [3 x i8], ptr %data.i.i808.i, i32 0, i32 2
  %1020 = ptrtoint ptr %data.i.i808.i to i32
  call void @__asan_store1_noabort(i32 %1020)
  store i8 -9, ptr %data.i.i808.i, align 1
  %conv3.i.i.i = trunc i16 %conv4.i.i to i8
  %1021 = ptrtoint ptr %1018 to i32
  call void @__asan_store1_noabort(i32 %1021)
  store i8 %conv3.i.i.i, ptr %1018, align 1
  %1022 = ptrtoint ptr %1019 to i32
  call void @__asan_store1_noabort(i32 %1022)
  store i8 0, ptr %1019, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i809.i) #6
  %1023 = getelementptr inbounds i8, ptr %msg.i.i809.i, i32 4
  %1024 = ptrtoint ptr %1023 to i32
  call void @__asan_store4_noabort(i32 %1024)
  store i32 262143, ptr %1023, align 4
  %adr.i.i813.i = getelementptr inbounds %struct.stv_base, ptr %1012, i32 0, i32 1
  %1025 = ptrtoint ptr %adr.i.i813.i to i32
  call void @__asan_load1_noabort(i32 %1025)
  %1026 = load i8, ptr %adr.i.i813.i, align 4
  %conv6.i.i814.i = zext i8 %1026 to i16
  %1027 = ptrtoint ptr %msg.i.i809.i to i32
  call void @__asan_store2_noabort(i32 %1027)
  store i16 %conv6.i.i814.i, ptr %msg.i.i809.i, align 4
  %flags.i.i815.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i809.i, i32 0, i32 1
  %1028 = ptrtoint ptr %flags.i.i815.i to i32
  call void @__asan_store2_noabort(i32 %1028)
  store i16 0, ptr %flags.i.i815.i, align 2
  %buf.i.i816.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i809.i, i32 0, i32 3
  %1029 = ptrtoint ptr %buf.i.i816.i to i32
  call void @__asan_store4_noabort(i32 %1029)
  store ptr %data.i.i808.i, ptr %buf.i.i816.i, align 4
  %call.i.i817.i = call i32 @i2c_transfer(ptr noundef %1017, ptr noundef nonnull %msg.i.i809.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i817.i)
  %cmp.not.i.i818.i = icmp eq i32 %call.i.i817.i, 1
  br i1 %cmp.not.i.i818.i, label %write_reg.exit807.i.write_reg.exit.i823.i_crit_edge, label %do.end.i.i822.i

write_reg.exit807.i.write_reg.exit.i823.i_crit_edge: ; preds = %write_reg.exit807.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit.i823.i

do.end.i.i822.i:                                  ; preds = %write_reg.exit807.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i = zext i16 %conv4.i.i to i32
  %dev.i.i819.i = getelementptr inbounds %struct.i2c_adapter, ptr %1017, i32 0, i32 9
  %1030 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load ptr, ptr %call7.i.i, align 8
  %adr9.i.i820.i = getelementptr inbounds %struct.stv_base, ptr %1031, i32 0, i32 1
  %1032 = ptrtoint ptr %adr9.i.i820.i to i32
  call void @__asan_load1_noabort(i32 %1032)
  %1033 = load i8, ptr %adr9.i.i820.i, align 4
  %conv10.i.i821.i = zext i8 %1033 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i819.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i.i821.i, i32 noundef %conv.i.i.i, i32 noundef 0) #10
  br label %write_reg.exit.i823.i

write_reg.exit.i823.i:                            ; preds = %do.end.i.i822.i, %write_reg.exit807.i.write_reg.exit.i823.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i809.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i808.i) #6
  %conv7.i.i = or i16 %1015, -2302
  %1034 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %1034)
  %1035 = load ptr, ptr %call7.i.i, align 8
  %i2c.i3.i.i = getelementptr inbounds %struct.stv_base, ptr %1035, i32 0, i32 2
  %1036 = ptrtoint ptr %i2c.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load ptr, ptr %i2c.i3.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i1.i.i) #6
  %1038 = getelementptr inbounds [3 x i8], ptr %data.i1.i.i, i32 0, i32 1
  %1039 = getelementptr inbounds [3 x i8], ptr %data.i1.i.i, i32 0, i32 2
  %1040 = ptrtoint ptr %data.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %1040)
  store i8 -9, ptr %data.i1.i.i, align 1
  %conv3.i5.i.i = trunc i16 %conv7.i.i to i8
  %1041 = ptrtoint ptr %1038 to i32
  call void @__asan_store1_noabort(i32 %1041)
  store i8 %conv3.i5.i.i, ptr %1038, align 1
  %1042 = ptrtoint ptr %1039 to i32
  call void @__asan_store1_noabort(i32 %1042)
  store i8 -70, ptr %1039, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2.i.i) #6
  %1043 = getelementptr inbounds i8, ptr %msg.i2.i.i, i32 4
  %1044 = ptrtoint ptr %1043 to i32
  call void @__asan_store4_noabort(i32 %1044)
  store i32 262143, ptr %1043, align 4
  %adr.i6.i.i = getelementptr inbounds %struct.stv_base, ptr %1035, i32 0, i32 1
  %1045 = ptrtoint ptr %adr.i6.i.i to i32
  call void @__asan_load1_noabort(i32 %1045)
  %1046 = load i8, ptr %adr.i6.i.i, align 4
  %conv6.i7.i.i = zext i8 %1046 to i16
  %1047 = ptrtoint ptr %msg.i2.i.i to i32
  call void @__asan_store2_noabort(i32 %1047)
  store i16 %conv6.i7.i.i, ptr %msg.i2.i.i, align 4
  %flags.i8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i.i, i32 0, i32 1
  %1048 = ptrtoint ptr %flags.i8.i.i to i32
  call void @__asan_store2_noabort(i32 %1048)
  store i16 0, ptr %flags.i8.i.i, align 2
  %buf.i10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2.i.i, i32 0, i32 3
  %1049 = ptrtoint ptr %buf.i10.i.i to i32
  call void @__asan_store4_noabort(i32 %1049)
  store ptr %data.i1.i.i, ptr %buf.i10.i.i, align 4
  %call.i11.i.i = call i32 @i2c_transfer(ptr noundef %1037, ptr noundef nonnull %msg.i2.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i11.i.i)
  %cmp.not.i12.i.i = icmp eq i32 %call.i11.i.i, 1
  br i1 %cmp.not.i12.i.i, label %write_reg.exit.i823.i.write_reg.exit19.i.i_crit_edge, label %do.end.i17.i.i

write_reg.exit.i823.i.write_reg.exit19.i.i_crit_edge: ; preds = %write_reg.exit.i823.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit19.i.i

do.end.i17.i.i:                                   ; preds = %write_reg.exit.i823.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i13.i.i = zext i16 %conv7.i.i to i32
  %dev.i14.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1037, i32 0, i32 9
  %1050 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load ptr, ptr %call7.i.i, align 8
  %adr9.i15.i.i = getelementptr inbounds %struct.stv_base, ptr %1051, i32 0, i32 1
  %1052 = ptrtoint ptr %adr9.i15.i.i to i32
  call void @__asan_load1_noabort(i32 %1052)
  %1053 = load i8, ptr %adr9.i15.i.i, align 4
  %conv10.i16.i.i = zext i8 %1053 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i14.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i16.i.i, i32 noundef %conv.i13.i.i, i32 noundef 186) #10
  br label %write_reg.exit19.i.i

write_reg.exit19.i.i:                             ; preds = %do.end.i17.i.i, %write_reg.exit.i823.i.write_reg.exit19.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i1.i.i) #6
  %1054 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %1054)
  %1055 = load ptr, ptr %call7.i.i, align 8
  %i2c.i22.i.i = getelementptr inbounds %struct.stv_base, ptr %1055, i32 0, i32 2
  %1056 = ptrtoint ptr %i2c.i22.i.i to i32
  call void @__asan_load4_noabort(i32 %1056)
  %1057 = load ptr, ptr %i2c.i22.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i20.i.i) #6
  %1058 = getelementptr inbounds [3 x i8], ptr %data.i20.i.i, i32 0, i32 1
  %1059 = getelementptr inbounds [3 x i8], ptr %data.i20.i.i, i32 0, i32 2
  %1060 = ptrtoint ptr %data.i20.i.i to i32
  call void @__asan_store1_noabort(i32 %1060)
  store i8 -9, ptr %data.i20.i.i, align 1
  %1061 = ptrtoint ptr %1058 to i32
  call void @__asan_store1_noabort(i32 %1061)
  store i8 %conv3.i5.i.i, ptr %1058, align 1
  %1062 = ptrtoint ptr %1059 to i32
  call void @__asan_store1_noabort(i32 %1062)
  store i8 58, ptr %1059, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i21.i.i) #6
  %1063 = getelementptr inbounds i8, ptr %msg.i21.i.i, i32 4
  %1064 = ptrtoint ptr %1063 to i32
  call void @__asan_store4_noabort(i32 %1064)
  store i32 262143, ptr %1063, align 4
  %adr.i25.i.i = getelementptr inbounds %struct.stv_base, ptr %1055, i32 0, i32 1
  %1065 = ptrtoint ptr %adr.i25.i.i to i32
  call void @__asan_load1_noabort(i32 %1065)
  %1066 = load i8, ptr %adr.i25.i.i, align 4
  %conv6.i26.i.i = zext i8 %1066 to i16
  %1067 = ptrtoint ptr %msg.i21.i.i to i32
  call void @__asan_store2_noabort(i32 %1067)
  store i16 %conv6.i26.i.i, ptr %msg.i21.i.i, align 4
  %flags.i27.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21.i.i, i32 0, i32 1
  %1068 = ptrtoint ptr %flags.i27.i.i to i32
  call void @__asan_store2_noabort(i32 %1068)
  store i16 0, ptr %flags.i27.i.i, align 2
  %buf.i29.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21.i.i, i32 0, i32 3
  %1069 = ptrtoint ptr %buf.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %1069)
  store ptr %data.i20.i.i, ptr %buf.i29.i.i, align 4
  %call.i30.i.i = call i32 @i2c_transfer(ptr noundef %1057, ptr noundef nonnull %msg.i21.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i30.i.i)
  %cmp.not.i31.i.i = icmp eq i32 %call.i30.i.i, 1
  br i1 %cmp.not.i31.i.i, label %write_reg.exit19.i.i.write_reg.exit38.i.i_crit_edge, label %do.end.i36.i.i

write_reg.exit19.i.i.write_reg.exit38.i.i_crit_edge: ; preds = %write_reg.exit19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit38.i.i

do.end.i36.i.i:                                   ; preds = %write_reg.exit19.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i32.i.i = zext i16 %conv7.i.i to i32
  %dev.i33.i824.i = getelementptr inbounds %struct.i2c_adapter, ptr %1057, i32 0, i32 9
  %1070 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load ptr, ptr %call7.i.i, align 8
  %adr9.i34.i825.i = getelementptr inbounds %struct.stv_base, ptr %1071, i32 0, i32 1
  %1072 = ptrtoint ptr %adr9.i34.i825.i to i32
  call void @__asan_load1_noabort(i32 %1072)
  %1073 = load i8, ptr %adr9.i34.i825.i, align 4
  %conv10.i35.i826.i = zext i8 %1073 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i33.i824.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i35.i826.i, i32 noundef %conv.i32.i.i, i32 noundef 58) #10
  br label %write_reg.exit38.i.i

write_reg.exit38.i.i:                             ; preds = %do.end.i36.i.i, %write_reg.exit19.i.i.write_reg.exit38.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i21.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i20.i.i) #6
  %conv15.i.i = or i16 %1015, -2298
  %1074 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %1074)
  %1075 = load ptr, ptr %call7.i.i, align 8
  %i2c.i41.i.i = getelementptr inbounds %struct.stv_base, ptr %1075, i32 0, i32 2
  %1076 = ptrtoint ptr %i2c.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %1076)
  %1077 = load ptr, ptr %i2c.i41.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i39.i.i) #6
  %1078 = getelementptr inbounds [3 x i8], ptr %data.i39.i.i, i32 0, i32 1
  %1079 = getelementptr inbounds [3 x i8], ptr %data.i39.i.i, i32 0, i32 2
  %1080 = ptrtoint ptr %data.i39.i.i to i32
  call void @__asan_store1_noabort(i32 %1080)
  store i8 -9, ptr %data.i39.i.i, align 1
  %conv3.i43.i.i = trunc i16 %conv15.i.i to i8
  %1081 = ptrtoint ptr %1078 to i32
  call void @__asan_store1_noabort(i32 %1081)
  store i8 %conv3.i43.i.i, ptr %1078, align 1
  %1082 = ptrtoint ptr %1079 to i32
  call void @__asan_store1_noabort(i32 %1082)
  store i8 %conv1.i.i, ptr %1079, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i40.i.i) #6
  %1083 = getelementptr inbounds i8, ptr %msg.i40.i.i, i32 4
  %1084 = ptrtoint ptr %1083 to i32
  call void @__asan_store4_noabort(i32 %1084)
  store i32 262143, ptr %1083, align 4
  %adr.i44.i.i = getelementptr inbounds %struct.stv_base, ptr %1075, i32 0, i32 1
  %1085 = ptrtoint ptr %adr.i44.i.i to i32
  call void @__asan_load1_noabort(i32 %1085)
  %1086 = load i8, ptr %adr.i44.i.i, align 4
  %conv6.i45.i.i = zext i8 %1086 to i16
  %1087 = ptrtoint ptr %msg.i40.i.i to i32
  call void @__asan_store2_noabort(i32 %1087)
  store i16 %conv6.i45.i.i, ptr %msg.i40.i.i, align 4
  %flags.i46.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40.i.i, i32 0, i32 1
  %1088 = ptrtoint ptr %flags.i46.i.i to i32
  call void @__asan_store2_noabort(i32 %1088)
  store i16 0, ptr %flags.i46.i.i, align 2
  %buf.i48.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40.i.i, i32 0, i32 3
  %1089 = ptrtoint ptr %buf.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %1089)
  store ptr %data.i39.i.i, ptr %buf.i48.i.i, align 4
  %call.i49.i.i = call i32 @i2c_transfer(ptr noundef %1077, ptr noundef nonnull %msg.i40.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i49.i.i)
  %cmp.not.i50.i.i = icmp eq i32 %call.i49.i.i, 1
  br i1 %cmp.not.i50.i.i, label %write_reg.exit38.i.i.if.end61_crit_edge, label %do.end.i55.i.i

write_reg.exit38.i.i.if.end61_crit_edge:          ; preds = %write_reg.exit38.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

do.end.i55.i.i:                                   ; preds = %write_reg.exit38.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i51.i.i = zext i16 %conv15.i.i to i32
  %dev.i52.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1077, i32 0, i32 9
  %1090 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %1090)
  %1091 = load ptr, ptr %call7.i.i, align 8
  %adr9.i53.i.i = getelementptr inbounds %struct.stv_base, ptr %1091, i32 0, i32 1
  %1092 = ptrtoint ptr %adr9.i53.i.i to i32
  call void @__asan_load1_noabort(i32 %1092)
  %1093 = load i8, ptr %adr9.i53.i.i, align 4
  %conv10.i54.i.i = zext i8 %1093 to i32
  %conv12.i.i827.i = and i32 %div.i811.i, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i52.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i54.i.i, i32 noundef %conv.i51.i.i, i32 noundef %conv12.i.i827.i) #10
  br label %if.end61

do.end56:                                         ; preds = %if.end.i.do.end56_crit_edge, %read_reg.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id.i) #6
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9
  %1094 = ptrtoint ptr %adr to i32
  call void @__asan_load1_noabort(i32 %1094)
  %1095 = load i8, ptr %adr, align 4
  %conv58 = zext i8 %1095 to i32
  %init_name.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9, i32 3
  %1096 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1096)
  %1097 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i132 = icmp eq ptr %1097, null
  br i1 %tobool.not.i132, label %if.end.i133, label %do.end56.dev_name.exit_crit_edge

do.end56.dev_name.exit_crit_edge:                 ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i133:                                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  %1098 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1098)
  %1099 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i133, %do.end56.dev_name.exit_crit_edge
  %retval.0.i134 = phi ptr [ %1099, %if.end.i133 ], [ %1097, %do.end56.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %conv58, ptr noundef %retval.0.i134) #10
  call void @kfree(ptr noundef nonnull %call7.i.i130) #6
  br label %fail

if.end61:                                         ; preds = %do.end.i55.i.i, %write_reg.exit38.i.i.if.end61_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i40.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i39.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id.i) #6
  %1100 = load ptr, ptr @stvlist, align 4
  %call.i.i135 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i130, ptr noundef nonnull @stvlist, ptr noundef %1100) #6
  br i1 %call.i.i135, label %if.end.i.i, label %if.end61.if.end62_crit_edge

if.end61.if.end62_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.end.i.i:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1100, i32 0, i32 1
  %1101 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %1101)
  store ptr %call7.i.i130, ptr %prev1.i.i, align 4
  %1102 = ptrtoint ptr %call7.i.i130 to i32
  call void @__asan_store4_noabort(i32 %1102)
  store ptr %1100, ptr %call7.i.i130, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i130, i32 0, i32 1
  %1103 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %1103)
  store ptr @stvlist, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i.i130, ptr @stvlist, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end.i.i, %if.end61.if.end62_crit_edge, %if.then30
  %fe = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 1, i32 1
  %1104 = call ptr @memcpy(ptr %ops, ptr @stv0910_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 1, i32 3
  %1105 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %1105)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  %1106 = ptrtoint ptr %nr18 to i32
  call void @__asan_store4_noabort(i32 %1106)
  store i32 %nr, ptr %nr18, align 4
  %dev68 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9
  %1107 = ptrtoint ptr %adr to i32
  call void @__asan_load1_noabort(i32 %1107)
  %1108 = load i8, ptr %adr, align 4
  %conv72 = zext i8 %1108 to i32
  %init_name.i136 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9, i32 3
  %1109 = ptrtoint ptr %init_name.i136 to i32
  call void @__asan_load4_noabort(i32 %1109)
  %1110 = load ptr, ptr %init_name.i136, align 8
  %tobool.not.i137 = icmp eq ptr %1110, null
  br i1 %tobool.not.i137, label %if.end.i138, label %if.end62.dev_name.exit140_crit_edge

if.end62.dev_name.exit140_crit_edge:              ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit140

if.end.i138:                                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %1111 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %1111)
  %1112 = load ptr, ptr %dev68, align 4
  br label %dev_name.exit140

dev_name.exit140:                                 ; preds = %if.end.i138, %if.end62.dev_name.exit140_crit_edge
  %retval.0.i139 = phi ptr [ %1112, %if.end.i138 ], [ %1110, %if.end62.dev_name.exit140_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68, ptr noundef nonnull @.str.9, ptr noundef %ops, i32 noundef %conv72, ptr noundef %retval.0.i139) #10
  %strength.i = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 42
  %1113 = ptrtoint ptr %strength.i to i32
  call void @__asan_store1_noabort(i32 %1113)
  store i8 1, ptr %strength.i, align 8
  %stat.i = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 42, i32 1
  %1114 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %1114)
  store i8 0, ptr %stat.i, align 1
  %cnr.i = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 43
  %1115 = ptrtoint ptr %cnr.i to i32
  call void @__asan_store1_noabort(i32 %1115)
  store i8 1, ptr %cnr.i, align 1
  %stat4.i = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 43, i32 1
  %1116 = ptrtoint ptr %stat4.i to i32
  call void @__asan_store1_noabort(i32 %1116)
  store i8 0, ptr %stat4.i, align 2
  %pre_bit_error.i = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 44
  %1117 = ptrtoint ptr %pre_bit_error.i to i32
  call void @__asan_store1_noabort(i32 %1117)
  store i8 1, ptr %pre_bit_error.i, align 2
  %stat9.i = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 44, i32 1
  %1118 = ptrtoint ptr %stat9.i to i32
  call void @__asan_store1_noabort(i32 %1118)
  store i8 0, ptr %stat9.i, align 1
  %pre_bit_count.i = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 45
  %1119 = ptrtoint ptr %pre_bit_count.i to i32
  call void @__asan_store1_noabort(i32 %1119)
  store i8 1, ptr %pre_bit_count.i, align 1
  %stat14.i = getelementptr inbounds %struct.stv, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 45, i32 1
  %1120 = ptrtoint ptr %stat14.i to i32
  call void @__asan_store1_noabort(i32 %1120)
  store i8 0, ptr %stat14.i, align 8
  br label %cleanup

fail:                                             ; preds = %dev_name.exit, %if.else.fail_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fail, %dev_name.exit140, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %dev_name.exit140 ], [ null, %fail ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_reg(ptr nocapture noundef readonly %state, i16 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %data = alloca [3 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %i2c = getelementptr inbounds %struct.stv_base, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #6
  %4 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 2
  %6 = lshr i16 %reg, 8
  %conv1 = trunc i16 %6 to i8
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1, ptr %data, align 1
  %conv3 = trunc i16 %reg to i8
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv3, ptr %4, align 1
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %val, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #6
  %10 = getelementptr inbounds i8, ptr %msg, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %10, align 4
  %adr = getelementptr inbounds %struct.stv_base, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %adr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %adr, align 4
  %conv6 = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv6, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 3, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %data, ptr %buf, align 4
  %call = call i32 @i2c_transfer(ptr noundef %3, ptr noundef nonnull %msg, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %reg to i32
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %adr9 = getelementptr inbounds %struct.stv_base, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %adr9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %adr9, align 4
  %conv10 = zext i8 %21 to i32
  %conv12 = zext i8 %val to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %conv10, i32 noundef %conv, i32 noundef %conv12) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %count = getelementptr inbounds %struct.stv_base, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %count, align 4
  %6 = load ptr, ptr %1, align 4
  %count2 = getelementptr inbounds %struct.stv_base, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %18) #6
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call fastcc void @stop(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tune(ptr noundef %fe, i1 noundef zeroext %re_tune, i32 noundef %mode_flags, ptr nocapture noundef writeonly %delay, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  br i1 %re_tune, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @set_parameters(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %tune_time = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %tune_time to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tune_time, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %call4 = tail call i32 @read_status(ptr noundef %fe, ptr noundef %status)
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end10, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100, ptr %delay, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @get_algo(ptr nocapture noundef readnone %fe) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_parameters(ptr noundef %fe) #0 align 64 {
entry:
  %data.i885.i = alloca [3 x i8], align 1
  %msg.i886.i = alloca %struct.i2c_msg, align 4
  %data.i866.i = alloca [3 x i8], align 1
  %msg.i867.i = alloca %struct.i2c_msg, align 4
  %data.i847.i = alloca [3 x i8], align 1
  %msg.i848.i = alloca %struct.i2c_msg, align 4
  %data.i828.i = alloca [3 x i8], align 1
  %msg.i829.i = alloca %struct.i2c_msg, align 4
  %data.i808.i = alloca [3 x i8], align 1
  %msg.i809.i = alloca %struct.i2c_msg, align 4
  %data.i788.i = alloca [3 x i8], align 1
  %msg.i789.i = alloca %struct.i2c_msg, align 4
  %data.i768.i = alloca [3 x i8], align 1
  %msg.i769.i = alloca %struct.i2c_msg, align 4
  %data.i748.i = alloca [3 x i8], align 1
  %msg.i749.i = alloca %struct.i2c_msg, align 4
  %data.i729.i = alloca [3 x i8], align 1
  %msg.i730.i = alloca %struct.i2c_msg, align 4
  %data.i710.i = alloca [3 x i8], align 1
  %msg.i711.i = alloca %struct.i2c_msg, align 4
  %data.i694.i = alloca [3 x i8], align 1
  %msg.i695.i = alloca %struct.i2c_msg, align 4
  %data.i677.i = alloca [3 x i8], align 1
  %msg.i678.i = alloca %struct.i2c_msg, align 4
  %data.i658.i = alloca [3 x i8], align 1
  %msg.i659.i = alloca %struct.i2c_msg, align 4
  %data.i639.i = alloca [3 x i8], align 1
  %msg.i640.i = alloca %struct.i2c_msg, align 4
  %data.i620.i = alloca [3 x i8], align 1
  %msg.i621.i = alloca %struct.i2c_msg, align 4
  %data.i601.i = alloca [3 x i8], align 1
  %msg.i602.i = alloca %struct.i2c_msg, align 4
  %data.i582.i = alloca [3 x i8], align 1
  %msg.i583.i = alloca %struct.i2c_msg, align 4
  %data.i563.i = alloca [3 x i8], align 1
  %msg.i564.i = alloca %struct.i2c_msg, align 4
  %data.i544.i = alloca [3 x i8], align 1
  %msg.i545.i = alloca %struct.i2c_msg, align 4
  %data.i525.i = alloca [3 x i8], align 1
  %msg.i526.i = alloca %struct.i2c_msg, align 4
  %data.i506.i = alloca [3 x i8], align 1
  %msg.i507.i = alloca %struct.i2c_msg, align 4
  %data.i487.i = alloca [3 x i8], align 1
  %msg.i488.i = alloca %struct.i2c_msg, align 4
  %data.i.i469.i = alloca [3 x i8], align 1
  %msg.i.i470.i = alloca %struct.i2c_msg, align 4
  %data.i450.i = alloca [3 x i8], align 1
  %msg.i451.i = alloca %struct.i2c_msg, align 4
  %data.i431.i = alloca [3 x i8], align 1
  %msg.i432.i = alloca %struct.i2c_msg, align 4
  %data.i411.i = alloca [3 x i8], align 1
  %msg.i412.i = alloca %struct.i2c_msg, align 4
  %msg.i.i400.i = alloca [2 x i8], align 1
  %msgs.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data.i380.i = alloca [3 x i8], align 1
  %msg.i381.i = alloca %struct.i2c_msg, align 4
  %data.i360.i = alloca [3 x i8], align 1
  %msg.i361.i = alloca %struct.i2c_msg, align 4
  %data.i341.i = alloca [3 x i8], align 1
  %msg.i342.i = alloca %struct.i2c_msg, align 4
  %data.i50.i.i.i.i = alloca [3 x i8], align 1
  %msg.i51.i.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i30.i.i.i.i = alloca [3 x i8], align 1
  %msg.i31.i.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i3.i.i.i = alloca [3 x i8], align 1
  %msg.i.i4.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i43.i.i.i.i = alloca [3 x i8], align 1
  %msg.i44.i.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i.i.i.i = alloca [3 x i8], align 1
  %msg.i.i.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i.i = alloca [3 x i8], align 1
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [3 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %reg_dmdcfgmd.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call fastcc void @stop(ptr noundef %1)
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %2 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 %3(ptr noundef %fe) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %4 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %symbol_rate, align 4
  %symbol_rate5 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %symbol_rate5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %symbol_rate5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg_dmdcfgmd.i) #6
  %7 = ptrtoint ptr %reg_dmdcfgmd.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %reg_dmdcfgmd.i, align 1, !annotation !69
  %8 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %symbol_rate, align 4
  %10 = add i32 %9, -70000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -69900001, i32 %10)
  %11 = icmp ult i32 %10, -69900001
  br i1 %11, label %if.end.start.exit_crit_edge, label %if.end.i

if.end.start.exit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %start.exit

if.end.i:                                         ; preds = %if.end
  %receive_mode.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %receive_mode.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %receive_mode.i, align 4
  %demod_lock_time.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 12
  %13 = ptrtoint ptr %demod_lock_time.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %demod_lock_time.i, align 4
  %started.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %started.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %started.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  %regoff.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %regoff.i, align 4
  %add.i = add i16 %17, -3562
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %i2c.i.i = getelementptr inbounds %struct.stv_base, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #6
  %22 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %23 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %24 = lshr i16 %add.i, 8
  %conv1.i.i = trunc i16 %24 to i8
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv1.i.i, ptr %data.i.i, align 1
  %conv3.i.i = trunc i16 %add.i to i8
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv3.i.i, ptr %22, align 1
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 92, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #6
  %28 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 262143, ptr %28, align 4
  %adr.i.i = getelementptr inbounds %struct.stv_base, ptr %19, i32 0, i32 1
  %30 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %adr.i.i, align 4
  %conv6.i.i = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv6.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i.i, align 2
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %data.i.i, ptr %buf.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.then3.i.write_reg.exit.i_crit_edge, label %do.end.i.i

if.then3.i.write_reg.exit.i_crit_edge:            ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit.i

do.end.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i16 %add.i to i32
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 9
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %adr9.i.i = getelementptr inbounds %struct.stv_base, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %adr9.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %adr9.i.i, align 4
  %conv10.i.i = zext i8 %38 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i.i, i32 noundef %conv.i.i, i32 noundef 92) #10
  br label %write_reg.exit.i

write_reg.exit.i:                                 ; preds = %do.end.i.i, %if.then3.i.write_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %write_reg.exit.i, %if.end.i.if.end5.i_crit_edge
  %nr.i.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i = icmp eq i32 %40, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 -179212160, i32 -212766592
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond.i.i, i8 noundef zeroext 0) #6
  %41 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool2.not.i.i = icmp eq i32 %42, 0
  %cond3.i.i = select i1 %tobool2.not.i.i, i32 -179236862, i32 -212791294
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond3.i.i, i8 noundef zeroext 0) #6
  %43 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool6.not.i.i = icmp eq i32 %44, 0
  %cond7.i.i = select i1 %tobool6.not.i.i, i32 -179285984, i32 -212840416
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond7.i.i, i8 noundef zeroext 0) #6
  %45 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool10.not.i.i = icmp eq i32 %46, 0
  %cond11.i.i = select i1 %tobool10.not.i.i, i32 -177209343, i32 -210763775
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond11.i.i, i8 noundef zeroext 0) #6
  %47 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool14.not.i.i = icmp eq i32 %48, 0
  %cond15.i.i = select i1 %tobool14.not.i.i, i32 -176939004, i32 -210493436
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond15.i.i, i8 noundef zeroext 0) #6
  %49 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool18.not.i.i = icmp eq i32 %50, 0
  %cond19.i.i = select i1 %tobool18.not.i.i, i32 -176787328, i32 -210341760
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond19.i.i, i8 noundef zeroext 0) #6
  %51 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool22.not.i.i = icmp eq i32 %52, 0
  %conv.i337.i = select i1 %tobool22.not.i.i, i16 -2728, i16 -3240
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %i2c.i.i.i = getelementptr inbounds %struct.stv_base, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i2c.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i.i) #6
  %57 = getelementptr inbounds [3 x i8], ptr %data.i.i.i, i32 0, i32 1
  %58 = getelementptr inbounds [3 x i8], ptr %data.i.i.i, i32 0, i32 2
  %59 = lshr i16 %conv.i337.i, 8
  %conv1.i.i.i = trunc i16 %59 to i8
  %60 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv1.i.i.i, ptr %data.i.i.i, align 1
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 88, ptr %57, align 1
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -32, ptr %58, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %63 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 262143, ptr %63, align 4
  %adr.i.i.i = getelementptr inbounds %struct.stv_base, ptr %54, i32 0, i32 1
  %65 = ptrtoint ptr %adr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %adr.i.i.i, align 4
  %conv6.i.i.i = zext i8 %66 to i16
  %67 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv6.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %69 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %data.i.i.i, ptr %buf.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.end5.i.write_reg.exit.i.i_crit_edge, label %do.end.i.i.i

if.end5.i.write_reg.exit.i.i_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i = zext i16 %conv.i337.i to i32
  %dev.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %56, i32 0, i32 9
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %adr9.i.i.i = getelementptr inbounds %struct.stv_base, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %adr9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %adr9.i.i.i, align 4
  %conv10.i.i.i = zext i8 %73 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i.i.i, i32 noundef %conv.i.i.i, i32 noundef 224) #10
  br label %write_reg.exit.i.i

write_reg.exit.i.i:                               ; preds = %do.end.i.i.i, %if.end5.i.write_reg.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i.i) #6
  %74 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool26.not.i.i = icmp eq i32 %75, 0
  %cond27.i.i = select i1 %tobool26.not.i.i, i32 -176738296, i32 -210292728
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond27.i.i, i8 noundef zeroext 0) #6
  %76 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool30.not.i.i = icmp eq i32 %77, 0
  %cond31.i.i = select i1 %tobool30.not.i.i, i32 -174964688, i32 -208519120
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond31.i.i, i8 noundef zeroext 0) #6
  %78 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool34.not.i.i = icmp eq i32 %79, 0
  %cond35.i.i = select i1 %tobool34.not.i.i, i32 -179355600, i32 -212910032
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond35.i.i, i8 noundef zeroext 1) #6
  %stream_id.i.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 24
  %80 = ptrtoint ptr %stream_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %stream_id.i.i.i, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values)
  switch i32 %81, label %if.else.i.i.i.i [
    i32 -1, label %write_reg.exit.i.i.set_isi.exit.i.i.i_crit_edge
    i32 -2147483648, label %if.then2.i.i.i.i
  ]

write_reg.exit.i.i.set_isi.exit.i.i.i_crit_edge:  ; preds = %write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_isi.exit.i.i.i

if.then2.i.i.i.i:                                 ; preds = %write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i.i.i.i = icmp eq i32 %84, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -179212160, i32 -212766592
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond.i.i.i.i, i8 noundef zeroext 1) #6
  %85 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool4.not.i.i.i.i = icmp eq i32 %86, 0
  %cond5.i.i.i.i = select i1 %tobool4.not.i.i.i.i, i32 -177209343, i32 -210763775
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond5.i.i.i.i, i8 noundef zeroext 1) #6
  br label %if.end19.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %write_reg.exit.i.i
  %87 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool8.not.i.i.i.i = icmp eq i32 %88, 0
  %cond9.i.i.i.i = select i1 %tobool8.not.i.i.i.i, i32 -179285984, i32 -212840416
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond9.i.i.i.i, i8 noundef zeroext 1) #6
  %regoff.i.i.i.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 3
  %89 = ptrtoint ptr %regoff.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %regoff.i.i.i.i, align 4
  %add.i.i.i.i = add i16 %90, -3234
  %conv12.i.i.i.i = trunc i32 %81 to i8
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %i2c.i.i.i.i.i = getelementptr inbounds %struct.stv_base, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %i2c.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %i2c.i.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i.i.i.i) #6
  %95 = getelementptr inbounds [3 x i8], ptr %data.i.i.i.i.i, i32 0, i32 1
  %96 = getelementptr inbounds [3 x i8], ptr %data.i.i.i.i.i, i32 0, i32 2
  %97 = lshr i16 %add.i.i.i.i, 8
  %conv1.i.i.i.i.i = trunc i16 %97 to i8
  %98 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv1.i.i.i.i.i, ptr %data.i.i.i.i.i, align 1
  %conv3.i.i.i.i.i = trunc i16 %add.i.i.i.i to i8
  %99 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv3.i.i.i.i.i, ptr %95, align 1
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv12.i.i.i.i, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i.i.i) #6
  %101 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i, i32 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 262143, ptr %101, align 4
  %adr.i.i.i.i.i = getelementptr inbounds %struct.stv_base, ptr %92, i32 0, i32 1
  %103 = ptrtoint ptr %adr.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %adr.i.i.i.i.i, align 4
  %conv6.i.i.i.i.i = zext i8 %104 to i16
  %105 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv6.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  %flags.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i.i, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i.i.i.i.i, align 2
  %buf.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i.i, i32 0, i32 3
  %107 = ptrtoint ptr %buf.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %data.i.i.i.i.i, ptr %buf.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %msg.i.i.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 1
  br i1 %cmp.not.i.i.i.i.i, label %if.else.i.i.i.i.write_reg.exit.i.i.i.i_crit_edge, label %do.end.i.i.i.i.i

if.else.i.i.i.i.write_reg.exit.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i = zext i16 %add.i.i.i.i to i32
  %dev.i.i.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %94, i32 0, i32 9
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %adr9.i.i.i.i.i = getelementptr inbounds %struct.stv_base, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %adr9.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %adr9.i.i.i.i.i, align 4
  %conv10.i.i.i.i.i = zext i8 %111 to i32
  %conv12.i.i.i.i.i = and i32 %81, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i.i.i.i.i, i32 noundef %conv.i.i.i.i.i, i32 noundef %conv12.i.i.i.i.i) #10
  br label %write_reg.exit.i.i.i.i

write_reg.exit.i.i.i.i:                           ; preds = %do.end.i.i.i.i.i, %if.else.i.i.i.i.write_reg.exit.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i.i.i.i) #6
  %112 = ptrtoint ptr %regoff.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %regoff.i.i.i.i, align 4
  %add16.i.i.i.i = add i16 %113, -3233
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  %i2c.i45.i.i.i.i = getelementptr inbounds %struct.stv_base, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %i2c.i45.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %i2c.i45.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i43.i.i.i.i) #6
  %118 = getelementptr inbounds [3 x i8], ptr %data.i43.i.i.i.i, i32 0, i32 1
  %119 = getelementptr inbounds [3 x i8], ptr %data.i43.i.i.i.i, i32 0, i32 2
  %120 = lshr i16 %add16.i.i.i.i, 8
  %conv1.i46.i.i.i.i = trunc i16 %120 to i8
  %121 = ptrtoint ptr %data.i43.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv1.i46.i.i.i.i, ptr %data.i43.i.i.i.i, align 1
  %conv3.i47.i.i.i.i = trunc i16 %add16.i.i.i.i to i8
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv3.i47.i.i.i.i, ptr %118, align 1
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -1, ptr %119, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i44.i.i.i.i) #6
  %124 = getelementptr inbounds i8, ptr %msg.i44.i.i.i.i, i32 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 262143, ptr %124, align 4
  %adr.i48.i.i.i.i = getelementptr inbounds %struct.stv_base, ptr %115, i32 0, i32 1
  %126 = ptrtoint ptr %adr.i48.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %adr.i48.i.i.i.i, align 4
  %conv6.i49.i.i.i.i = zext i8 %127 to i16
  %128 = ptrtoint ptr %msg.i44.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv6.i49.i.i.i.i, ptr %msg.i44.i.i.i.i, align 4
  %flags.i50.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44.i.i.i.i, i32 0, i32 1
  %129 = ptrtoint ptr %flags.i50.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %flags.i50.i.i.i.i, align 2
  %buf.i52.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i44.i.i.i.i, i32 0, i32 3
  %130 = ptrtoint ptr %buf.i52.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %data.i43.i.i.i.i, ptr %buf.i52.i.i.i.i, align 4
  %call.i53.i.i.i.i = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %msg.i44.i.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i53.i.i.i.i)
  %cmp.not.i54.i.i.i.i = icmp eq i32 %call.i53.i.i.i.i, 1
  br i1 %cmp.not.i54.i.i.i.i, label %write_reg.exit.i.i.i.i.write_reg.exit61.i.i.i.i_crit_edge, label %do.end.i59.i.i.i.i

write_reg.exit.i.i.i.i.write_reg.exit61.i.i.i.i_crit_edge: ; preds = %write_reg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit61.i.i.i.i

do.end.i59.i.i.i.i:                               ; preds = %write_reg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i55.i.i.i.i = zext i16 %add16.i.i.i.i to i32
  %dev.i56.i.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %117, i32 0, i32 9
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %1, align 4
  %adr9.i57.i.i.i.i = getelementptr inbounds %struct.stv_base, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %adr9.i57.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %adr9.i57.i.i.i.i, align 4
  %conv10.i58.i.i.i.i = zext i8 %134 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i56.i.i.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i58.i.i.i.i, i32 noundef %conv.i55.i.i.i.i, i32 noundef 255) #10
  br label %write_reg.exit61.i.i.i.i

write_reg.exit61.i.i.i.i:                         ; preds = %do.end.i59.i.i.i.i, %write_reg.exit.i.i.i.i.write_reg.exit61.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i44.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i43.i.i.i.i) #6
  br label %if.end19.i.i.i.i

if.end19.i.i.i.i:                                 ; preds = %write_reg.exit61.i.i.i.i, %if.then2.i.i.i.i
  %135 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool21.not.i.i.i.i = icmp eq i32 %136, 0
  %cond22.i.i.i.i = select i1 %tobool21.not.i.i.i.i, i32 -179306495, i32 -212860927
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond22.i.i.i.i, i8 noundef zeroext 1) #6
  %137 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool25.not.i.i.i.i = icmp eq i32 %138, 0
  %cond26.i.i.i.i = select i1 %tobool25.not.i.i.i.i, i32 -179306495, i32 -212860927
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond26.i.i.i.i, i8 noundef zeroext 0) #6
  br label %set_isi.exit.i.i.i

set_isi.exit.i.i.i:                               ; preds = %if.end19.i.i.i.i, %write_reg.exit.i.i.set_isi.exit.i.i.i_crit_edge
  %scrambling_sequence_index.i.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 25
  %139 = ptrtoint ptr %scrambling_sequence_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %scrambling_sequence_index.i.i.i, align 4
  %cur_scrambling_code.i.i.i.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 27
  %141 = ptrtoint ptr %cur_scrambling_code.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %cur_scrambling_code.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %140)
  %cmp.i.i.i.i = icmp eq i32 %142, %140
  br i1 %cmp.i.i.i.i, label %set_isi.exit.i.i.i.init_search_param.exit.i_crit_edge, label %if.end.i.i.i.i

set_isi.exit.i.i.i.init_search_param.exit.i_crit_edge: ; preds = %set_isi.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_search_param.exit.i

if.end.i.i.i.i:                                   ; preds = %set_isi.exit.i.i.i
  %regoff.i5.i.i.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 3
  %143 = ptrtoint ptr %regoff.i5.i.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %regoff.i5.i.i.i, align 4
  %add.i6.i.i.i = add i16 %144, -3410
  %conv2.i.i.i.i = trunc i32 %140 to i8
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %1, align 4
  %i2c.i.i7.i.i.i = getelementptr inbounds %struct.stv_base, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %i2c.i.i7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %i2c.i.i7.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i3.i.i.i) #6
  %149 = getelementptr inbounds [3 x i8], ptr %data.i.i3.i.i.i, i32 0, i32 1
  %150 = getelementptr inbounds [3 x i8], ptr %data.i.i3.i.i.i, i32 0, i32 2
  %151 = lshr i16 %add.i6.i.i.i, 8
  %conv1.i.i8.i.i.i = trunc i16 %151 to i8
  %152 = ptrtoint ptr %data.i.i3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %conv1.i.i8.i.i.i, ptr %data.i.i3.i.i.i, align 1
  %conv3.i.i9.i.i.i = trunc i16 %add.i6.i.i.i to i8
  %153 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv3.i.i9.i.i.i, ptr %149, align 1
  %154 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv2.i.i.i.i, ptr %150, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i4.i.i.i) #6
  %155 = getelementptr inbounds i8, ptr %msg.i.i4.i.i.i, i32 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 262143, ptr %155, align 4
  %adr.i.i10.i.i.i = getelementptr inbounds %struct.stv_base, ptr %146, i32 0, i32 1
  %157 = ptrtoint ptr %adr.i.i10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %adr.i.i10.i.i.i, align 4
  %conv6.i.i11.i.i.i = zext i8 %158 to i16
  %159 = ptrtoint ptr %msg.i.i4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv6.i.i11.i.i.i, ptr %msg.i.i4.i.i.i, align 4
  %flags.i.i12.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i4.i.i.i, i32 0, i32 1
  %160 = ptrtoint ptr %flags.i.i12.i.i.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %flags.i.i12.i.i.i, align 2
  %buf.i.i13.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i4.i.i.i, i32 0, i32 3
  %161 = ptrtoint ptr %buf.i.i13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %data.i.i3.i.i.i, ptr %buf.i.i13.i.i.i, align 4
  %call.i.i14.i.i.i = call i32 @i2c_transfer(ptr noundef %148, ptr noundef nonnull %msg.i.i4.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i14.i.i.i)
  %cmp.not.i.i15.i.i.i = icmp eq i32 %call.i.i14.i.i.i, 1
  br i1 %cmp.not.i.i15.i.i.i, label %if.end.i.i.i.i.write_reg.exit.i22.i.i.i_crit_edge, label %do.end.i.i21.i.i.i

if.end.i.i.i.i.write_reg.exit.i22.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit.i22.i.i.i

do.end.i.i21.i.i.i:                               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i16.i.i.i = zext i16 %add.i6.i.i.i to i32
  %dev.i.i17.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %148, i32 0, i32 9
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %1, align 4
  %adr9.i.i18.i.i.i = getelementptr inbounds %struct.stv_base, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %adr9.i.i18.i.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %adr9.i.i18.i.i.i, align 4
  %conv10.i.i19.i.i.i = zext i8 %165 to i32
  %conv12.i.i20.i.i.i = and i32 %140, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i17.i.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i.i19.i.i.i, i32 noundef %conv.i.i16.i.i.i, i32 noundef %conv12.i.i20.i.i.i) #10
  br label %write_reg.exit.i22.i.i.i

write_reg.exit.i22.i.i.i:                         ; preds = %do.end.i.i21.i.i.i, %if.end.i.i.i.i.write_reg.exit.i22.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i4.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i3.i.i.i) #6
  %166 = ptrtoint ptr %regoff.i5.i.i.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %regoff.i5.i.i.i, align 4
  %add5.i.i.i.i = add i16 %167, -3411
  %shr.i.i.i.i = lshr i32 %140, 8
  %conv8.i.i.i.i = trunc i32 %shr.i.i.i.i to i8
  %168 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %1, align 4
  %i2c.i32.i.i.i.i = getelementptr inbounds %struct.stv_base, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %i2c.i32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %i2c.i32.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i30.i.i.i.i) #6
  %172 = getelementptr inbounds [3 x i8], ptr %data.i30.i.i.i.i, i32 0, i32 1
  %173 = getelementptr inbounds [3 x i8], ptr %data.i30.i.i.i.i, i32 0, i32 2
  %174 = lshr i16 %add5.i.i.i.i, 8
  %conv1.i33.i.i.i.i = trunc i16 %174 to i8
  %175 = ptrtoint ptr %data.i30.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %conv1.i33.i.i.i.i, ptr %data.i30.i.i.i.i, align 1
  %conv3.i34.i.i.i.i = trunc i16 %add5.i.i.i.i to i8
  %176 = ptrtoint ptr %172 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv3.i34.i.i.i.i, ptr %172, align 1
  %177 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv8.i.i.i.i, ptr %173, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i31.i.i.i.i) #6
  %178 = getelementptr inbounds i8, ptr %msg.i31.i.i.i.i, i32 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 262143, ptr %178, align 4
  %adr.i35.i.i.i.i = getelementptr inbounds %struct.stv_base, ptr %169, i32 0, i32 1
  %180 = ptrtoint ptr %adr.i35.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %adr.i35.i.i.i.i, align 4
  %conv6.i36.i.i.i.i = zext i8 %181 to i16
  %182 = ptrtoint ptr %msg.i31.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %conv6.i36.i.i.i.i, ptr %msg.i31.i.i.i.i, align 4
  %flags.i37.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i.i.i.i, i32 0, i32 1
  %183 = ptrtoint ptr %flags.i37.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 0, ptr %flags.i37.i.i.i.i, align 2
  %buf.i39.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i31.i.i.i.i, i32 0, i32 3
  %184 = ptrtoint ptr %buf.i39.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %data.i30.i.i.i.i, ptr %buf.i39.i.i.i.i, align 4
  %call.i40.i.i.i.i = call i32 @i2c_transfer(ptr noundef %171, ptr noundef nonnull %msg.i31.i.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i40.i.i.i.i)
  %cmp.not.i41.i.i.i.i = icmp eq i32 %call.i40.i.i.i.i, 1
  br i1 %cmp.not.i41.i.i.i.i, label %write_reg.exit.i22.i.i.i.write_reg.exit49.i.i.i.i_crit_edge, label %do.end.i47.i.i.i.i

write_reg.exit.i22.i.i.i.write_reg.exit49.i.i.i.i_crit_edge: ; preds = %write_reg.exit.i22.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit49.i.i.i.i

do.end.i47.i.i.i.i:                               ; preds = %write_reg.exit.i22.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i42.i.i.i.i = zext i16 %add5.i.i.i.i to i32
  %dev.i43.i.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %171, i32 0, i32 9
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %1, align 4
  %adr9.i44.i.i.i.i = getelementptr inbounds %struct.stv_base, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %adr9.i44.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %adr9.i44.i.i.i.i, align 4
  %conv10.i45.i.i.i.i = zext i8 %188 to i32
  %conv12.i46.i.i.i.i = and i32 %shr.i.i.i.i, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i43.i.i.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i45.i.i.i.i, i32 noundef %conv.i42.i.i.i.i, i32 noundef %conv12.i46.i.i.i.i) #10
  br label %write_reg.exit49.i.i.i.i

write_reg.exit49.i.i.i.i:                         ; preds = %do.end.i47.i.i.i.i, %write_reg.exit.i22.i.i.i.write_reg.exit49.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i31.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i30.i.i.i.i) #6
  %189 = ptrtoint ptr %regoff.i5.i.i.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %regoff.i5.i.i.i, align 4
  %add12.i.i.i.i = add i16 %190, -3412
  %shr14.i.i.i.i = lshr i32 %140, 16
  %191 = trunc i32 %shr14.i.i.i.i to i8
  %192 = and i8 %191, 3
  %conv16.i.i.i.i = or i8 %192, 4
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 4
  %i2c.i52.i.i.i.i = getelementptr inbounds %struct.stv_base, ptr %194, i32 0, i32 2
  %195 = ptrtoint ptr %i2c.i52.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %i2c.i52.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i50.i.i.i.i) #6
  %197 = getelementptr inbounds [3 x i8], ptr %data.i50.i.i.i.i, i32 0, i32 1
  %198 = getelementptr inbounds [3 x i8], ptr %data.i50.i.i.i.i, i32 0, i32 2
  %199 = lshr i16 %add12.i.i.i.i, 8
  %conv1.i53.i.i.i.i = trunc i16 %199 to i8
  %200 = ptrtoint ptr %data.i50.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv1.i53.i.i.i.i, ptr %data.i50.i.i.i.i, align 1
  %conv3.i54.i.i.i.i = trunc i16 %add12.i.i.i.i to i8
  %201 = ptrtoint ptr %197 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %conv3.i54.i.i.i.i, ptr %197, align 1
  %202 = ptrtoint ptr %198 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv16.i.i.i.i, ptr %198, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i51.i.i.i.i) #6
  %203 = getelementptr inbounds i8, ptr %msg.i51.i.i.i.i, i32 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 262143, ptr %203, align 4
  %adr.i55.i.i.i.i = getelementptr inbounds %struct.stv_base, ptr %194, i32 0, i32 1
  %205 = ptrtoint ptr %adr.i55.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %adr.i55.i.i.i.i, align 4
  %conv6.i56.i.i.i.i = zext i8 %206 to i16
  %207 = ptrtoint ptr %msg.i51.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %conv6.i56.i.i.i.i, ptr %msg.i51.i.i.i.i, align 4
  %flags.i57.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i51.i.i.i.i, i32 0, i32 1
  %208 = ptrtoint ptr %flags.i57.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 0, ptr %flags.i57.i.i.i.i, align 2
  %buf.i59.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i51.i.i.i.i, i32 0, i32 3
  %209 = ptrtoint ptr %buf.i59.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %data.i50.i.i.i.i, ptr %buf.i59.i.i.i.i, align 4
  %call.i60.i.i.i.i = call i32 @i2c_transfer(ptr noundef %196, ptr noundef nonnull %msg.i51.i.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i60.i.i.i.i)
  %cmp.not.i61.i.i.i.i = icmp eq i32 %call.i60.i.i.i.i, 1
  br i1 %cmp.not.i61.i.i.i.i, label %write_reg.exit49.i.i.i.i.write_reg.exit69.i.i.i.i_crit_edge, label %do.end.i67.i.i.i.i

write_reg.exit49.i.i.i.i.write_reg.exit69.i.i.i.i_crit_edge: ; preds = %write_reg.exit49.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit69.i.i.i.i

do.end.i67.i.i.i.i:                               ; preds = %write_reg.exit49.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i62.i.i.i.i = zext i16 %add12.i.i.i.i to i32
  %dev.i63.i.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %196, i32 0, i32 9
  %210 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %1, align 4
  %adr9.i64.i.i.i.i = getelementptr inbounds %struct.stv_base, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %adr9.i64.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %adr9.i64.i.i.i.i, align 4
  %conv10.i65.i.i.i.i = zext i8 %213 to i32
  %conv12.i66.i.i.i.i = zext i8 %conv16.i.i.i.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i63.i.i.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i65.i.i.i.i, i32 noundef %conv.i62.i.i.i.i, i32 noundef %conv12.i66.i.i.i.i) #10
  br label %write_reg.exit69.i.i.i.i

write_reg.exit69.i.i.i.i:                         ; preds = %do.end.i67.i.i.i.i, %write_reg.exit49.i.i.i.i.write_reg.exit69.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i51.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i50.i.i.i.i) #6
  %214 = ptrtoint ptr %cur_scrambling_code.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %140, ptr %cur_scrambling_code.i.i.i.i, align 4
  br label %init_search_param.exit.i

init_search_param.exit.i:                         ; preds = %write_reg.exit69.i.i.i.i, %set_isi.exit.i.i.i.init_search_param.exit.i_crit_edge
  %215 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000001, i32 %216)
  %cmp8.i = icmp ult i32 %216, 1000001
  br i1 %cmp8.i, label %if.then10.i, label %if.else.i

if.then10.i:                                      ; preds = %init_search_param.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %demod_timeout.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 14
  %217 = ptrtoint ptr %demod_timeout.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 3000, ptr %demod_timeout.i, align 4
  br label %if.end45.i

if.else.i:                                        ; preds = %init_search_param.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000001, i32 %216)
  %cmp12.i = icmp ult i32 %216, 2000001
  br i1 %cmp12.i, label %if.then14.i, label %if.else17.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %demod_timeout15.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 14
  %218 = ptrtoint ptr %demod_timeout15.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 2500, ptr %demod_timeout15.i, align 4
  br label %if.end45.i

if.else17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %216)
  %cmp19.i = icmp ult i32 %216, 5000001
  br i1 %cmp19.i, label %if.then21.i, label %if.else24.i

if.then21.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #8
  %demod_timeout22.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 14
  %219 = ptrtoint ptr %demod_timeout22.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 1000, ptr %demod_timeout22.i, align 4
  br label %if.end45.i

if.else24.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000001, i32 %216)
  %cmp26.i = icmp ult i32 %216, 10000001
  br i1 %cmp26.i, label %if.then28.i, label %if.else31.i

if.then28.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #8
  %demod_timeout29.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 14
  %220 = ptrtoint ptr %demod_timeout29.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 700, ptr %demod_timeout29.i, align 4
  br label %if.end45.i

if.else31.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %216)
  %cmp33.i = icmp ult i32 %216, 20000000
  %demod_timeout36.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 14
  br i1 %cmp33.i, label %if.then35.i, label %if.else38.i

if.then35.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #8
  %221 = ptrtoint ptr %demod_timeout36.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 400, ptr %demod_timeout36.i, align 4
  br label %if.end45.i

if.else38.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #8
  %222 = ptrtoint ptr %demod_timeout36.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 300, ptr %demod_timeout36.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else38.i, %if.then35.i, %if.then28.i, %if.then21.i, %if.then14.i, %if.then10.i
  %.sink.i = phi i32 [ 1300, %if.then14.i ], [ 350, %if.then28.i ], [ 200, %if.else38.i ], [ 200, %if.then35.i ], [ 650, %if.then21.i ], [ 2000, %if.then10.i ]
  %fec_timeout16.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 15
  %223 = ptrtoint ptr %fec_timeout16.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %.sink.i, ptr %fec_timeout16.i, align 4
  %224 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %symbol_rate, align 4
  %226 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %1, align 4
  %mclk.i = getelementptr inbounds %struct.stv_base, ptr %227, i32 0, i32 7
  %228 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %mclk.i, align 4
  %conv.i338.i = zext i32 %225 to i64
  %mul.i.i = shl nuw nsw i64 %conv.i338.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %225)
  %cmp168.i.i = icmp ult i32 %225, 65536
  br i1 %cmp168.i.i, label %if.then172.i.i, label %if.else178.i.i, !prof !70

if.then172.i.i:                                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv173.i.i = trunc i64 %mul.i.i to i32
  %div176.i.i = udiv i32 %conv173.i.i, %229
  br label %muldiv32.exit.i

if.else178.i.i:                                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  %230 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %229, i64 %mul.i.i) #11, !srcloc !71
  %asmresult1.i.i.i = extractvalue { i64, i64 } %230, 1
  %extract.t26.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %muldiv32.exit.i

muldiv32.exit.i:                                  ; preds = %if.else178.i.i, %if.then172.i.i
  %tmp64.0.off0.i.i = phi i32 [ %div176.i.i, %if.then172.i.i ], [ %extract.t26.i.i, %if.else178.i.i ]
  %regoff49.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 3
  %231 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %regoff49.i, align 4
  %add51.i = add i16 %232, -3490
  %233 = lshr i32 %tmp64.0.off0.i.i, 8
  %234 = trunc i32 %233 to i8
  %conv54.i = and i8 %234, 127
  %i2c.i343.i = getelementptr inbounds %struct.stv_base, ptr %227, i32 0, i32 2
  %235 = ptrtoint ptr %i2c.i343.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %i2c.i343.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i341.i) #6
  %237 = getelementptr inbounds [3 x i8], ptr %data.i341.i, i32 0, i32 1
  %238 = getelementptr inbounds [3 x i8], ptr %data.i341.i, i32 0, i32 2
  %239 = lshr i16 %add51.i, 8
  %conv1.i344.i = trunc i16 %239 to i8
  %240 = ptrtoint ptr %data.i341.i to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 %conv1.i344.i, ptr %data.i341.i, align 1
  %conv3.i345.i = trunc i16 %add51.i to i8
  %241 = ptrtoint ptr %237 to i32
  call void @__asan_store1_noabort(i32 %241)
  store i8 %conv3.i345.i, ptr %237, align 1
  %242 = ptrtoint ptr %238 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %conv54.i, ptr %238, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i342.i) #6
  %243 = getelementptr inbounds i8, ptr %msg.i342.i, i32 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 262143, ptr %243, align 4
  %adr.i346.i = getelementptr inbounds %struct.stv_base, ptr %227, i32 0, i32 1
  %245 = ptrtoint ptr %adr.i346.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %adr.i346.i, align 4
  %conv6.i347.i = zext i8 %246 to i16
  %247 = ptrtoint ptr %msg.i342.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 %conv6.i347.i, ptr %msg.i342.i, align 4
  %flags.i348.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i342.i, i32 0, i32 1
  %248 = ptrtoint ptr %flags.i348.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 0, ptr %flags.i348.i, align 2
  %buf.i350.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i342.i, i32 0, i32 3
  %249 = ptrtoint ptr %buf.i350.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %data.i341.i, ptr %buf.i350.i, align 4
  %call.i351.i = call i32 @i2c_transfer(ptr noundef %236, ptr noundef nonnull %msg.i342.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i351.i)
  %cmp.not.i352.i = icmp eq i32 %call.i351.i, 1
  br i1 %cmp.not.i352.i, label %muldiv32.exit.i.write_reg.exit359.i_crit_edge, label %do.end.i357.i

muldiv32.exit.i.write_reg.exit359.i_crit_edge:    ; preds = %muldiv32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit359.i

do.end.i357.i:                                    ; preds = %muldiv32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i353.i = zext i16 %add51.i to i32
  %dev.i354.i = getelementptr inbounds %struct.i2c_adapter, ptr %236, i32 0, i32 9
  %250 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %1, align 4
  %adr9.i355.i = getelementptr inbounds %struct.stv_base, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %adr9.i355.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %adr9.i355.i, align 4
  %conv10.i356.i = zext i8 %253 to i32
  %conv12.i.i = zext i8 %conv54.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i354.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i356.i, i32 noundef %conv.i353.i, i32 noundef %conv12.i.i) #10
  br label %write_reg.exit359.i

write_reg.exit359.i:                              ; preds = %do.end.i357.i, %muldiv32.exit.i.write_reg.exit359.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i342.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i341.i) #6
  %254 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %regoff49.i, align 4
  %add58.i = add i16 %255, -3489
  %conv62.i = trunc i32 %tmp64.0.off0.i.i to i8
  %256 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %1, align 4
  %i2c.i362.i = getelementptr inbounds %struct.stv_base, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %i2c.i362.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %i2c.i362.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i360.i) #6
  %260 = getelementptr inbounds [3 x i8], ptr %data.i360.i, i32 0, i32 1
  %261 = getelementptr inbounds [3 x i8], ptr %data.i360.i, i32 0, i32 2
  %262 = lshr i16 %add58.i, 8
  %conv1.i363.i = trunc i16 %262 to i8
  %263 = ptrtoint ptr %data.i360.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 %conv1.i363.i, ptr %data.i360.i, align 1
  %conv3.i364.i = trunc i16 %add58.i to i8
  %264 = ptrtoint ptr %260 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 %conv3.i364.i, ptr %260, align 1
  %265 = ptrtoint ptr %261 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 %conv62.i, ptr %261, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i361.i) #6
  %266 = getelementptr inbounds i8, ptr %msg.i361.i, i32 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 262143, ptr %266, align 4
  %adr.i365.i = getelementptr inbounds %struct.stv_base, ptr %257, i32 0, i32 1
  %268 = ptrtoint ptr %adr.i365.i to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %adr.i365.i, align 4
  %conv6.i366.i = zext i8 %269 to i16
  %270 = ptrtoint ptr %msg.i361.i to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 %conv6.i366.i, ptr %msg.i361.i, align 4
  %flags.i367.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i361.i, i32 0, i32 1
  %271 = ptrtoint ptr %flags.i367.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 0, ptr %flags.i367.i, align 2
  %buf.i369.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i361.i, i32 0, i32 3
  %272 = ptrtoint ptr %buf.i369.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %data.i360.i, ptr %buf.i369.i, align 4
  %call.i370.i = call i32 @i2c_transfer(ptr noundef %259, ptr noundef nonnull %msg.i361.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i370.i)
  %cmp.not.i371.i = icmp eq i32 %call.i370.i, 1
  br i1 %cmp.not.i371.i, label %write_reg.exit359.i.write_reg.exit379.i_crit_edge, label %do.end.i377.i

write_reg.exit359.i.write_reg.exit379.i_crit_edge: ; preds = %write_reg.exit359.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit379.i

do.end.i377.i:                                    ; preds = %write_reg.exit359.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i372.i = zext i16 %add58.i to i32
  %dev.i373.i = getelementptr inbounds %struct.i2c_adapter, ptr %259, i32 0, i32 9
  %273 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %1, align 4
  %adr9.i374.i = getelementptr inbounds %struct.stv_base, ptr %274, i32 0, i32 1
  %275 = ptrtoint ptr %adr9.i374.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %adr9.i374.i, align 4
  %conv10.i375.i = zext i8 %276 to i32
  %conv12.i376.i = and i32 %tmp64.0.off0.i.i, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i373.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i375.i, i32 noundef %conv.i372.i, i32 noundef %conv12.i376.i) #10
  br label %write_reg.exit379.i

write_reg.exit379.i:                              ; preds = %do.end.i377.i, %write_reg.exit359.i.write_reg.exit379.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i361.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i360.i) #6
  %demod_bits.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 17
  %277 = ptrtoint ptr %demod_bits.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %demod_bits.i, align 4
  %279 = or i8 %278, -128
  store i8 %279, ptr %demod_bits.i, align 4
  %280 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %regoff49.i, align 4
  %add68.i = add i16 %281, -3568
  %282 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %1, align 4
  %i2c.i382.i = getelementptr inbounds %struct.stv_base, ptr %283, i32 0, i32 2
  %284 = ptrtoint ptr %i2c.i382.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %i2c.i382.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i380.i) #6
  %286 = getelementptr inbounds [3 x i8], ptr %data.i380.i, i32 0, i32 1
  %287 = getelementptr inbounds [3 x i8], ptr %data.i380.i, i32 0, i32 2
  %288 = lshr i16 %add68.i, 8
  %conv1.i383.i = trunc i16 %288 to i8
  %289 = ptrtoint ptr %data.i380.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 %conv1.i383.i, ptr %data.i380.i, align 1
  %conv3.i384.i = trunc i16 %add68.i to i8
  %290 = ptrtoint ptr %286 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %conv3.i384.i, ptr %286, align 1
  %291 = ptrtoint ptr %287 to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 %279, ptr %287, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i381.i) #6
  %292 = getelementptr inbounds i8, ptr %msg.i381.i, i32 4
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 262143, ptr %292, align 4
  %adr.i385.i = getelementptr inbounds %struct.stv_base, ptr %283, i32 0, i32 1
  %294 = ptrtoint ptr %adr.i385.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %adr.i385.i, align 4
  %conv6.i386.i = zext i8 %295 to i16
  %296 = ptrtoint ptr %msg.i381.i to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 %conv6.i386.i, ptr %msg.i381.i, align 4
  %flags.i387.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i381.i, i32 0, i32 1
  %297 = ptrtoint ptr %flags.i387.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 0, ptr %flags.i387.i, align 2
  %buf.i389.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i381.i, i32 0, i32 3
  %298 = ptrtoint ptr %buf.i389.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %data.i380.i, ptr %buf.i389.i, align 4
  %call.i390.i = call i32 @i2c_transfer(ptr noundef %285, ptr noundef nonnull %msg.i381.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i390.i)
  %cmp.not.i391.i = icmp eq i32 %call.i390.i, 1
  br i1 %cmp.not.i391.i, label %write_reg.exit379.i.write_reg.exit399.i_crit_edge, label %do.end.i397.i

write_reg.exit379.i.write_reg.exit399.i_crit_edge: ; preds = %write_reg.exit379.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit399.i

do.end.i397.i:                                    ; preds = %write_reg.exit379.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i392.i = zext i16 %add68.i to i32
  %dev.i393.i = getelementptr inbounds %struct.i2c_adapter, ptr %285, i32 0, i32 9
  %299 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %1, align 4
  %adr9.i394.i = getelementptr inbounds %struct.stv_base, ptr %300, i32 0, i32 1
  %301 = ptrtoint ptr %adr9.i394.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %adr9.i394.i, align 4
  %conv10.i395.i = zext i8 %302 to i32
  %conv12.i396.i = zext i8 %279 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i393.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i395.i, i32 noundef %conv.i392.i, i32 noundef %conv12.i396.i) #10
  br label %write_reg.exit399.i

write_reg.exit399.i:                              ; preds = %do.end.i397.i, %write_reg.exit379.i.write_reg.exit399.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i381.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i380.i) #6
  %303 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %regoff49.i, align 4
  %add74.i = add i16 %304, -3564
  %305 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %1, align 4
  %i2c.i401.i = getelementptr inbounds %struct.stv_base, ptr %306, i32 0, i32 2
  %307 = ptrtoint ptr %i2c.i401.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %i2c.i401.i, align 4
  %adr.i402.i = getelementptr inbounds %struct.stv_base, ptr %306, i32 0, i32 1
  %309 = ptrtoint ptr %adr.i402.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %adr.i402.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i400.i) #6
  %311 = getelementptr inbounds [2 x i8], ptr %msg.i.i400.i, i32 0, i32 1
  %312 = lshr i16 %add74.i, 8
  %conv1.i.i403.i = trunc i16 %312 to i8
  %313 = ptrtoint ptr %msg.i.i400.i to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 %conv1.i.i403.i, ptr %msg.i.i400.i, align 1
  %conv3.i.i.i = trunc i16 %add74.i to i8
  %314 = ptrtoint ptr %311 to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 %conv3.i.i.i, ptr %311, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  %315 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %316 = call ptr @memset(ptr %315, i32 255, i32 16)
  %conv5.i.i.i = zext i8 %310 to i16
  %317 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 %conv5.i.i.i, ptr %msgs.i.i.i, align 4
  %flags.i.i404.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %318 = ptrtoint ptr %flags.i.i404.i to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 0, ptr %flags.i.i404.i, align 2
  %319 = ptrtoint ptr %315 to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 2, ptr %315, align 4
  %buf.i.i405.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %320 = ptrtoint ptr %buf.i.i405.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store ptr %msg.i.i400.i, ptr %buf.i.i405.i, align 4
  %arrayinit.element6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1
  %321 = ptrtoint ptr %arrayinit.element6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 %conv5.i.i.i, ptr %arrayinit.element6.i.i.i, align 4
  %flags9.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 1
  %322 = ptrtoint ptr %flags9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 1, ptr %flags9.i.i.i, align 2
  %len10.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 2
  %323 = ptrtoint ptr %len10.i.i.i to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 1, ptr %len10.i.i.i, align 4
  %buf12.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 3
  %324 = ptrtoint ptr %buf12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %reg_dmdcfgmd.i, ptr %buf12.i.i.i, align 4
  %call.i.i406.i = call i32 @i2c_transfer(ptr noundef %308, ptr noundef nonnull %msgs.i.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i406.i)
  %cmp.not.i.i407.i = icmp eq i32 %call.i.i406.i, 2
  br i1 %cmp.not.i.i407.i, label %write_reg.exit399.i.read_reg.exit.i_crit_edge, label %do.end.i.i410.i

write_reg.exit399.i.read_reg.exit.i_crit_edge:    ; preds = %write_reg.exit399.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit.i

do.end.i.i410.i:                                  ; preds = %write_reg.exit399.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i408.i = zext i16 %add74.i to i32
  %dev.i.i409.i = getelementptr inbounds %struct.i2c_adapter, ptr %308, i32 0, i32 9
  %conv15.i.i.i = zext i8 %310 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i409.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i.i, i32 noundef %conv.i.i408.i) #10
  br label %read_reg.exit.i

read_reg.exit.i:                                  ; preds = %do.end.i.i410.i, %write_reg.exit399.i.read_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i400.i) #6
  %325 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %regoff49.i, align 4
  %add79.i = add i16 %326, -3564
  %327 = ptrtoint ptr %reg_dmdcfgmd.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %reg_dmdcfgmd.i, align 1
  %329 = or i8 %328, -64
  store i8 %329, ptr %reg_dmdcfgmd.i, align 1
  %330 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %1, align 4
  %i2c.i413.i = getelementptr inbounds %struct.stv_base, ptr %331, i32 0, i32 2
  %332 = ptrtoint ptr %i2c.i413.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %i2c.i413.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i411.i) #6
  %334 = getelementptr inbounds [3 x i8], ptr %data.i411.i, i32 0, i32 1
  %335 = getelementptr inbounds [3 x i8], ptr %data.i411.i, i32 0, i32 2
  %336 = lshr i16 %add79.i, 8
  %conv1.i414.i = trunc i16 %336 to i8
  %337 = ptrtoint ptr %data.i411.i to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 %conv1.i414.i, ptr %data.i411.i, align 1
  %conv3.i415.i = trunc i16 %add79.i to i8
  %338 = ptrtoint ptr %334 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %conv3.i415.i, ptr %334, align 1
  %339 = ptrtoint ptr %335 to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %329, ptr %335, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i412.i) #6
  %340 = getelementptr inbounds i8, ptr %msg.i412.i, i32 4
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 262143, ptr %340, align 4
  %adr.i416.i = getelementptr inbounds %struct.stv_base, ptr %331, i32 0, i32 1
  %342 = ptrtoint ptr %adr.i416.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %adr.i416.i, align 4
  %conv6.i417.i = zext i8 %343 to i16
  %344 = ptrtoint ptr %msg.i412.i to i32
  call void @__asan_store2_noabort(i32 %344)
  store i16 %conv6.i417.i, ptr %msg.i412.i, align 4
  %flags.i418.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i412.i, i32 0, i32 1
  %345 = ptrtoint ptr %flags.i418.i to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 0, ptr %flags.i418.i, align 2
  %buf.i420.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i412.i, i32 0, i32 3
  %346 = ptrtoint ptr %buf.i420.i to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr %data.i411.i, ptr %buf.i420.i, align 4
  %call.i421.i = call i32 @i2c_transfer(ptr noundef %333, ptr noundef nonnull %msg.i412.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i421.i)
  %cmp.not.i422.i = icmp eq i32 %call.i421.i, 1
  br i1 %cmp.not.i422.i, label %read_reg.exit.i.write_reg.exit430.i_crit_edge, label %do.end.i428.i

read_reg.exit.i.write_reg.exit430.i_crit_edge:    ; preds = %read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit430.i

do.end.i428.i:                                    ; preds = %read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i423.i = zext i16 %add79.i to i32
  %dev.i424.i = getelementptr inbounds %struct.i2c_adapter, ptr %333, i32 0, i32 9
  %347 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %1, align 4
  %adr9.i425.i = getelementptr inbounds %struct.stv_base, ptr %348, i32 0, i32 1
  %349 = ptrtoint ptr %adr9.i425.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %adr9.i425.i, align 4
  %conv10.i426.i = zext i8 %350 to i32
  %conv12.i427.i = zext i8 %329 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i424.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i426.i, i32 noundef %conv.i423.i, i32 noundef %conv12.i427.i) #10
  br label %write_reg.exit430.i

write_reg.exit430.i:                              ; preds = %do.end.i428.i, %read_reg.exit.i.write_reg.exit430.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i412.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i411.i) #6
  %351 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %352)
  %tobool85.not.i = icmp eq i32 %352, 0
  %conv86.i = select i1 %tobool85.not.i, i8 1, i8 2
  call fastcc void @write_shared_reg(ptr noundef %1, i8 noundef zeroext %conv86.i, i8 noundef zeroext 0) #6
  %353 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %353)
  %354 = load i16, ptr %regoff49.i, align 4
  %add90.i = add i16 %354, -3277
  %355 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %1, align 4
  %i2c.i433.i = getelementptr inbounds %struct.stv_base, ptr %356, i32 0, i32 2
  %357 = ptrtoint ptr %i2c.i433.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %i2c.i433.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i431.i) #6
  %359 = getelementptr inbounds [3 x i8], ptr %data.i431.i, i32 0, i32 1
  %360 = getelementptr inbounds [3 x i8], ptr %data.i431.i, i32 0, i32 2
  %361 = lshr i16 %add90.i, 8
  %conv1.i434.i = trunc i16 %361 to i8
  %362 = ptrtoint ptr %data.i431.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %conv1.i434.i, ptr %data.i431.i, align 1
  %conv3.i435.i = trunc i16 %add90.i to i8
  %363 = ptrtoint ptr %359 to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %conv3.i435.i, ptr %359, align 1
  %364 = ptrtoint ptr %360 to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 0, ptr %360, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i432.i) #6
  %365 = getelementptr inbounds i8, ptr %msg.i432.i, i32 4
  %366 = ptrtoint ptr %365 to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 262143, ptr %365, align 4
  %adr.i436.i = getelementptr inbounds %struct.stv_base, ptr %356, i32 0, i32 1
  %367 = ptrtoint ptr %adr.i436.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %adr.i436.i, align 4
  %conv6.i437.i = zext i8 %368 to i16
  %369 = ptrtoint ptr %msg.i432.i to i32
  call void @__asan_store2_noabort(i32 %369)
  store i16 %conv6.i437.i, ptr %msg.i432.i, align 4
  %flags.i438.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i432.i, i32 0, i32 1
  %370 = ptrtoint ptr %flags.i438.i to i32
  call void @__asan_store2_noabort(i32 %370)
  store i16 0, ptr %flags.i438.i, align 2
  %buf.i440.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i432.i, i32 0, i32 3
  %371 = ptrtoint ptr %buf.i440.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store ptr %data.i431.i, ptr %buf.i440.i, align 4
  %call.i441.i = call i32 @i2c_transfer(ptr noundef %358, ptr noundef nonnull %msg.i432.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i441.i)
  %cmp.not.i442.i = icmp eq i32 %call.i441.i, 1
  br i1 %cmp.not.i442.i, label %write_reg.exit430.i.write_reg.exit449.i_crit_edge, label %do.end.i447.i

write_reg.exit430.i.write_reg.exit449.i_crit_edge: ; preds = %write_reg.exit430.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit449.i

do.end.i447.i:                                    ; preds = %write_reg.exit430.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i443.i = zext i16 %add90.i to i32
  %dev.i444.i = getelementptr inbounds %struct.i2c_adapter, ptr %358, i32 0, i32 9
  %372 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %1, align 4
  %adr9.i445.i = getelementptr inbounds %struct.stv_base, ptr %373, i32 0, i32 1
  %374 = ptrtoint ptr %adr9.i445.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %adr9.i445.i, align 4
  %conv10.i446.i = zext i8 %375 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i444.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i446.i, i32 noundef %conv.i443.i, i32 noundef 0) #10
  br label %write_reg.exit449.i

write_reg.exit449.i:                              ; preds = %do.end.i447.i, %write_reg.exit430.i.write_reg.exit449.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i432.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i431.i) #6
  %376 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %376)
  %377 = load i16, ptr %regoff49.i, align 4
  %add95.i = add i16 %377, -3268
  %378 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %1, align 4
  %i2c.i452.i = getelementptr inbounds %struct.stv_base, ptr %379, i32 0, i32 2
  %380 = ptrtoint ptr %i2c.i452.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %i2c.i452.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i450.i) #6
  %382 = getelementptr inbounds [3 x i8], ptr %data.i450.i, i32 0, i32 1
  %383 = getelementptr inbounds [3 x i8], ptr %data.i450.i, i32 0, i32 2
  %384 = lshr i16 %add95.i, 8
  %conv1.i453.i = trunc i16 %384 to i8
  %385 = ptrtoint ptr %data.i450.i to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 %conv1.i453.i, ptr %data.i450.i, align 1
  %conv3.i454.i = trunc i16 %add95.i to i8
  %386 = ptrtoint ptr %382 to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 %conv3.i454.i, ptr %382, align 1
  %387 = ptrtoint ptr %383 to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 47, ptr %383, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i451.i) #6
  %388 = getelementptr inbounds i8, ptr %msg.i451.i, i32 4
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 262143, ptr %388, align 4
  %adr.i455.i = getelementptr inbounds %struct.stv_base, ptr %379, i32 0, i32 1
  %390 = ptrtoint ptr %adr.i455.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %adr.i455.i, align 4
  %conv6.i456.i = zext i8 %391 to i16
  %392 = ptrtoint ptr %msg.i451.i to i32
  call void @__asan_store2_noabort(i32 %392)
  store i16 %conv6.i456.i, ptr %msg.i451.i, align 4
  %flags.i457.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i451.i, i32 0, i32 1
  %393 = ptrtoint ptr %flags.i457.i to i32
  call void @__asan_store2_noabort(i32 %393)
  store i16 0, ptr %flags.i457.i, align 2
  %buf.i459.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i451.i, i32 0, i32 3
  %394 = ptrtoint ptr %buf.i459.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr %data.i450.i, ptr %buf.i459.i, align 4
  %call.i460.i = call i32 @i2c_transfer(ptr noundef %381, ptr noundef nonnull %msg.i451.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i460.i)
  %cmp.not.i461.i = icmp eq i32 %call.i460.i, 1
  br i1 %cmp.not.i461.i, label %write_reg.exit449.i.write_reg.exit468.i_crit_edge, label %do.end.i466.i

write_reg.exit449.i.write_reg.exit468.i_crit_edge: ; preds = %write_reg.exit449.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit468.i

do.end.i466.i:                                    ; preds = %write_reg.exit449.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i462.i = zext i16 %add95.i to i32
  %dev.i463.i = getelementptr inbounds %struct.i2c_adapter, ptr %381, i32 0, i32 9
  %395 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %1, align 4
  %adr9.i464.i = getelementptr inbounds %struct.stv_base, ptr %396, i32 0, i32 1
  %397 = ptrtoint ptr %adr9.i464.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %adr9.i464.i, align 4
  %conv10.i465.i = zext i8 %398 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i463.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i465.i, i32 noundef %conv.i462.i, i32 noundef 47) #10
  br label %write_reg.exit468.i

write_reg.exit468.i:                              ; preds = %do.end.i466.i, %write_reg.exit449.i.write_reg.exit468.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i451.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i450.i) #6
  %399 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %399)
  %400 = load i16, ptr %regoff49.i, align 4
  %add.i471.i = add i16 %400, -3268
  %401 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %1, align 4
  %i2c.i.i472.i = getelementptr inbounds %struct.stv_base, ptr %402, i32 0, i32 2
  %403 = ptrtoint ptr %i2c.i.i472.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %i2c.i.i472.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i469.i) #6
  %405 = getelementptr inbounds [3 x i8], ptr %data.i.i469.i, i32 0, i32 1
  %406 = getelementptr inbounds [3 x i8], ptr %data.i.i469.i, i32 0, i32 2
  %407 = lshr i16 %add.i471.i, 8
  %conv1.i.i473.i = trunc i16 %407 to i8
  %408 = ptrtoint ptr %data.i.i469.i to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 %conv1.i.i473.i, ptr %data.i.i469.i, align 1
  %conv3.i.i474.i = trunc i16 %add.i471.i to i8
  %409 = ptrtoint ptr %405 to i32
  call void @__asan_store1_noabort(i32 %409)
  store i8 %conv3.i.i474.i, ptr %405, align 1
  %410 = ptrtoint ptr %406 to i32
  call void @__asan_store1_noabort(i32 %410)
  store i8 47, ptr %406, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i470.i) #6
  %411 = getelementptr inbounds i8, ptr %msg.i.i470.i, i32 4
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 262143, ptr %411, align 4
  %adr.i.i475.i = getelementptr inbounds %struct.stv_base, ptr %402, i32 0, i32 1
  %413 = ptrtoint ptr %adr.i.i475.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %adr.i.i475.i, align 4
  %conv6.i.i476.i = zext i8 %414 to i16
  %415 = ptrtoint ptr %msg.i.i470.i to i32
  call void @__asan_store2_noabort(i32 %415)
  store i16 %conv6.i.i476.i, ptr %msg.i.i470.i, align 4
  %flags.i.i477.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i470.i, i32 0, i32 1
  %416 = ptrtoint ptr %flags.i.i477.i to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 0, ptr %flags.i.i477.i, align 2
  %buf.i.i478.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i470.i, i32 0, i32 3
  %417 = ptrtoint ptr %buf.i.i478.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %data.i.i469.i, ptr %buf.i.i478.i, align 4
  %call.i.i479.i = call i32 @i2c_transfer(ptr noundef %404, ptr noundef nonnull %msg.i.i470.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i479.i)
  %cmp.not.i.i480.i = icmp eq i32 %call.i.i479.i, 1
  br i1 %cmp.not.i.i480.i, label %write_reg.exit468.i.enable_puncture_rate.exit.i_crit_edge, label %do.end.i.i485.i

write_reg.exit468.i.enable_puncture_rate.exit.i_crit_edge: ; preds = %write_reg.exit468.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %enable_puncture_rate.exit.i

do.end.i.i485.i:                                  ; preds = %write_reg.exit468.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i481.i = zext i16 %add.i471.i to i32
  %dev.i.i482.i = getelementptr inbounds %struct.i2c_adapter, ptr %404, i32 0, i32 9
  %418 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %1, align 4
  %adr9.i.i483.i = getelementptr inbounds %struct.stv_base, ptr %419, i32 0, i32 1
  %420 = ptrtoint ptr %adr9.i.i483.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %adr9.i.i483.i, align 4
  %conv10.i.i484.i = zext i8 %421 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i482.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i.i484.i, i32 noundef %conv.i.i481.i, i32 noundef 47) #10
  br label %enable_puncture_rate.exit.i

enable_puncture_rate.exit.i:                      ; preds = %do.end.i.i485.i, %write_reg.exit468.i.enable_puncture_rate.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i470.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i469.i) #6
  %422 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %422)
  %423 = load i16, ptr %regoff49.i, align 4
  %add101.i = add i16 %423, -3433
  %424 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %1, align 4
  %i2c.i489.i = getelementptr inbounds %struct.stv_base, ptr %425, i32 0, i32 2
  %426 = ptrtoint ptr %i2c.i489.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %i2c.i489.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i487.i) #6
  %428 = getelementptr inbounds [3 x i8], ptr %data.i487.i, i32 0, i32 1
  %429 = getelementptr inbounds [3 x i8], ptr %data.i487.i, i32 0, i32 2
  %430 = lshr i16 %add101.i, 8
  %conv1.i490.i = trunc i16 %430 to i8
  %431 = ptrtoint ptr %data.i487.i to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 %conv1.i490.i, ptr %data.i487.i, align 1
  %conv3.i491.i = trunc i16 %add101.i to i8
  %432 = ptrtoint ptr %428 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 %conv3.i491.i, ptr %428, align 1
  %433 = ptrtoint ptr %429 to i32
  call void @__asan_store1_noabort(i32 %433)
  store i8 11, ptr %429, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i488.i) #6
  %434 = getelementptr inbounds i8, ptr %msg.i488.i, i32 4
  %435 = ptrtoint ptr %434 to i32
  call void @__asan_store4_noabort(i32 %435)
  store i32 262143, ptr %434, align 4
  %adr.i492.i = getelementptr inbounds %struct.stv_base, ptr %425, i32 0, i32 1
  %436 = ptrtoint ptr %adr.i492.i to i32
  call void @__asan_load1_noabort(i32 %436)
  %437 = load i8, ptr %adr.i492.i, align 4
  %conv6.i493.i = zext i8 %437 to i16
  %438 = ptrtoint ptr %msg.i488.i to i32
  call void @__asan_store2_noabort(i32 %438)
  store i16 %conv6.i493.i, ptr %msg.i488.i, align 4
  %flags.i494.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i488.i, i32 0, i32 1
  %439 = ptrtoint ptr %flags.i494.i to i32
  call void @__asan_store2_noabort(i32 %439)
  store i16 0, ptr %flags.i494.i, align 2
  %buf.i496.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i488.i, i32 0, i32 3
  %440 = ptrtoint ptr %buf.i496.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store ptr %data.i487.i, ptr %buf.i496.i, align 4
  %call.i497.i = call i32 @i2c_transfer(ptr noundef %427, ptr noundef nonnull %msg.i488.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i497.i)
  %cmp.not.i498.i = icmp eq i32 %call.i497.i, 1
  br i1 %cmp.not.i498.i, label %enable_puncture_rate.exit.i.write_reg.exit505.i_crit_edge, label %do.end.i503.i

enable_puncture_rate.exit.i.write_reg.exit505.i_crit_edge: ; preds = %enable_puncture_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit505.i

do.end.i503.i:                                    ; preds = %enable_puncture_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i499.i = zext i16 %add101.i to i32
  %dev.i500.i = getelementptr inbounds %struct.i2c_adapter, ptr %427, i32 0, i32 9
  %441 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %1, align 4
  %adr9.i501.i = getelementptr inbounds %struct.stv_base, ptr %442, i32 0, i32 1
  %443 = ptrtoint ptr %adr9.i501.i to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %adr9.i501.i, align 4
  %conv10.i502.i = zext i8 %444 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i500.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i502.i, i32 noundef %conv.i499.i, i32 noundef 11) #10
  br label %write_reg.exit505.i

write_reg.exit505.i:                              ; preds = %do.end.i503.i, %enable_puncture_rate.exit.i.write_reg.exit505.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i488.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i487.i) #6
  %445 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %445)
  %446 = load i16, ptr %regoff49.i, align 4
  %add106.i = add i16 %446, -3432
  %447 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %1, align 4
  %i2c.i508.i = getelementptr inbounds %struct.stv_base, ptr %448, i32 0, i32 2
  %449 = ptrtoint ptr %i2c.i508.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %i2c.i508.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i506.i) #6
  %451 = getelementptr inbounds [3 x i8], ptr %data.i506.i, i32 0, i32 1
  %452 = getelementptr inbounds [3 x i8], ptr %data.i506.i, i32 0, i32 2
  %453 = lshr i16 %add106.i, 8
  %conv1.i509.i = trunc i16 %453 to i8
  %454 = ptrtoint ptr %data.i506.i to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 %conv1.i509.i, ptr %data.i506.i, align 1
  %conv3.i510.i = trunc i16 %add106.i to i8
  %455 = ptrtoint ptr %451 to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 %conv3.i510.i, ptr %451, align 1
  %456 = ptrtoint ptr %452 to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 10, ptr %452, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i507.i) #6
  %457 = getelementptr inbounds i8, ptr %msg.i507.i, i32 4
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_store4_noabort(i32 %458)
  store i32 262143, ptr %457, align 4
  %adr.i511.i = getelementptr inbounds %struct.stv_base, ptr %448, i32 0, i32 1
  %459 = ptrtoint ptr %adr.i511.i to i32
  call void @__asan_load1_noabort(i32 %459)
  %460 = load i8, ptr %adr.i511.i, align 4
  %conv6.i512.i = zext i8 %460 to i16
  %461 = ptrtoint ptr %msg.i507.i to i32
  call void @__asan_store2_noabort(i32 %461)
  store i16 %conv6.i512.i, ptr %msg.i507.i, align 4
  %flags.i513.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i507.i, i32 0, i32 1
  %462 = ptrtoint ptr %flags.i513.i to i32
  call void @__asan_store2_noabort(i32 %462)
  store i16 0, ptr %flags.i513.i, align 2
  %buf.i515.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i507.i, i32 0, i32 3
  %463 = ptrtoint ptr %buf.i515.i to i32
  call void @__asan_store4_noabort(i32 %463)
  store ptr %data.i506.i, ptr %buf.i515.i, align 4
  %call.i516.i = call i32 @i2c_transfer(ptr noundef %450, ptr noundef nonnull %msg.i507.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i516.i)
  %cmp.not.i517.i = icmp eq i32 %call.i516.i, 1
  br i1 %cmp.not.i517.i, label %write_reg.exit505.i.write_reg.exit524.i_crit_edge, label %do.end.i522.i

write_reg.exit505.i.write_reg.exit524.i_crit_edge: ; preds = %write_reg.exit505.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit524.i

do.end.i522.i:                                    ; preds = %write_reg.exit505.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i518.i = zext i16 %add106.i to i32
  %dev.i519.i = getelementptr inbounds %struct.i2c_adapter, ptr %450, i32 0, i32 9
  %464 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %1, align 4
  %adr9.i520.i = getelementptr inbounds %struct.stv_base, ptr %465, i32 0, i32 1
  %466 = ptrtoint ptr %adr9.i520.i to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %adr9.i520.i, align 4
  %conv10.i521.i = zext i8 %467 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i519.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i521.i, i32 noundef %conv.i518.i, i32 noundef 10) #10
  br label %write_reg.exit524.i

write_reg.exit524.i:                              ; preds = %do.end.i522.i, %write_reg.exit505.i.write_reg.exit524.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i507.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i506.i) #6
  %468 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %468)
  %469 = load i16, ptr %regoff49.i, align 4
  %add111.i = add i16 %469, -3428
  %470 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %1, align 4
  %i2c.i527.i = getelementptr inbounds %struct.stv_base, ptr %471, i32 0, i32 2
  %472 = ptrtoint ptr %i2c.i527.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %i2c.i527.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i525.i) #6
  %474 = getelementptr inbounds [3 x i8], ptr %data.i525.i, i32 0, i32 1
  %475 = getelementptr inbounds [3 x i8], ptr %data.i525.i, i32 0, i32 2
  %476 = lshr i16 %add111.i, 8
  %conv1.i528.i = trunc i16 %476 to i8
  %477 = ptrtoint ptr %data.i525.i to i32
  call void @__asan_store1_noabort(i32 %477)
  store i8 %conv1.i528.i, ptr %data.i525.i, align 1
  %conv3.i529.i = trunc i16 %add111.i to i8
  %478 = ptrtoint ptr %474 to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 %conv3.i529.i, ptr %474, align 1
  %479 = ptrtoint ptr %475 to i32
  call void @__asan_store1_noabort(i32 %479)
  store i8 -124, ptr %475, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i526.i) #6
  %480 = getelementptr inbounds i8, ptr %msg.i526.i, i32 4
  %481 = ptrtoint ptr %480 to i32
  call void @__asan_store4_noabort(i32 %481)
  store i32 262143, ptr %480, align 4
  %adr.i530.i = getelementptr inbounds %struct.stv_base, ptr %471, i32 0, i32 1
  %482 = ptrtoint ptr %adr.i530.i to i32
  call void @__asan_load1_noabort(i32 %482)
  %483 = load i8, ptr %adr.i530.i, align 4
  %conv6.i531.i = zext i8 %483 to i16
  %484 = ptrtoint ptr %msg.i526.i to i32
  call void @__asan_store2_noabort(i32 %484)
  store i16 %conv6.i531.i, ptr %msg.i526.i, align 4
  %flags.i532.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i526.i, i32 0, i32 1
  %485 = ptrtoint ptr %flags.i532.i to i32
  call void @__asan_store2_noabort(i32 %485)
  store i16 0, ptr %flags.i532.i, align 2
  %buf.i534.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i526.i, i32 0, i32 3
  %486 = ptrtoint ptr %buf.i534.i to i32
  call void @__asan_store4_noabort(i32 %486)
  store ptr %data.i525.i, ptr %buf.i534.i, align 4
  %call.i535.i = call i32 @i2c_transfer(ptr noundef %473, ptr noundef nonnull %msg.i526.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i535.i)
  %cmp.not.i536.i = icmp eq i32 %call.i535.i, 1
  br i1 %cmp.not.i536.i, label %write_reg.exit524.i.write_reg.exit543.i_crit_edge, label %do.end.i541.i

write_reg.exit524.i.write_reg.exit543.i_crit_edge: ; preds = %write_reg.exit524.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit543.i

do.end.i541.i:                                    ; preds = %write_reg.exit524.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i537.i = zext i16 %add111.i to i32
  %dev.i538.i = getelementptr inbounds %struct.i2c_adapter, ptr %473, i32 0, i32 9
  %487 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %1, align 4
  %adr9.i539.i = getelementptr inbounds %struct.stv_base, ptr %488, i32 0, i32 1
  %489 = ptrtoint ptr %adr9.i539.i to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %adr9.i539.i, align 4
  %conv10.i540.i = zext i8 %490 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i538.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i540.i, i32 noundef %conv.i537.i, i32 noundef 132) #10
  br label %write_reg.exit543.i

write_reg.exit543.i:                              ; preds = %do.end.i541.i, %write_reg.exit524.i.write_reg.exit543.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i526.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i525.i) #6
  %491 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %491)
  %492 = load i16, ptr %regoff49.i, align 4
  %add116.i = add i16 %492, -3427
  %493 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %1, align 4
  %i2c.i546.i = getelementptr inbounds %struct.stv_base, ptr %494, i32 0, i32 2
  %495 = ptrtoint ptr %i2c.i546.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %i2c.i546.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i544.i) #6
  %497 = getelementptr inbounds [3 x i8], ptr %data.i544.i, i32 0, i32 1
  %498 = getelementptr inbounds [3 x i8], ptr %data.i544.i, i32 0, i32 2
  %499 = lshr i16 %add116.i, 8
  %conv1.i547.i = trunc i16 %499 to i8
  %500 = ptrtoint ptr %data.i544.i to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 %conv1.i547.i, ptr %data.i544.i, align 1
  %conv3.i548.i = trunc i16 %add116.i to i8
  %501 = ptrtoint ptr %497 to i32
  call void @__asan_store1_noabort(i32 %501)
  store i8 %conv3.i548.i, ptr %497, align 1
  %502 = ptrtoint ptr %498 to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 -124, ptr %498, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i545.i) #6
  %503 = getelementptr inbounds i8, ptr %msg.i545.i, i32 4
  %504 = ptrtoint ptr %503 to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 262143, ptr %503, align 4
  %adr.i549.i = getelementptr inbounds %struct.stv_base, ptr %494, i32 0, i32 1
  %505 = ptrtoint ptr %adr.i549.i to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %adr.i549.i, align 4
  %conv6.i550.i = zext i8 %506 to i16
  %507 = ptrtoint ptr %msg.i545.i to i32
  call void @__asan_store2_noabort(i32 %507)
  store i16 %conv6.i550.i, ptr %msg.i545.i, align 4
  %flags.i551.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i545.i, i32 0, i32 1
  %508 = ptrtoint ptr %flags.i551.i to i32
  call void @__asan_store2_noabort(i32 %508)
  store i16 0, ptr %flags.i551.i, align 2
  %buf.i553.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i545.i, i32 0, i32 3
  %509 = ptrtoint ptr %buf.i553.i to i32
  call void @__asan_store4_noabort(i32 %509)
  store ptr %data.i544.i, ptr %buf.i553.i, align 4
  %call.i554.i = call i32 @i2c_transfer(ptr noundef %496, ptr noundef nonnull %msg.i545.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i554.i)
  %cmp.not.i555.i = icmp eq i32 %call.i554.i, 1
  br i1 %cmp.not.i555.i, label %write_reg.exit543.i.write_reg.exit562.i_crit_edge, label %do.end.i560.i

write_reg.exit543.i.write_reg.exit562.i_crit_edge: ; preds = %write_reg.exit543.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit562.i

do.end.i560.i:                                    ; preds = %write_reg.exit543.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i556.i = zext i16 %add116.i to i32
  %dev.i557.i = getelementptr inbounds %struct.i2c_adapter, ptr %496, i32 0, i32 9
  %510 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %1, align 4
  %adr9.i558.i = getelementptr inbounds %struct.stv_base, ptr %511, i32 0, i32 1
  %512 = ptrtoint ptr %adr9.i558.i to i32
  call void @__asan_load1_noabort(i32 %512)
  %513 = load i8, ptr %adr9.i558.i, align 4
  %conv10.i559.i = zext i8 %513 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i557.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i559.i, i32 noundef %conv.i556.i, i32 noundef 132) #10
  br label %write_reg.exit562.i

write_reg.exit562.i:                              ; preds = %do.end.i560.i, %write_reg.exit543.i.write_reg.exit562.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i545.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i544.i) #6
  %514 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %514)
  %515 = load i16, ptr %regoff49.i, align 4
  %add121.i = add i16 %515, -3522
  %516 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %1, align 4
  %i2c.i565.i = getelementptr inbounds %struct.stv_base, ptr %517, i32 0, i32 2
  %518 = ptrtoint ptr %i2c.i565.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %i2c.i565.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i563.i) #6
  %520 = getelementptr inbounds [3 x i8], ptr %data.i563.i, i32 0, i32 1
  %521 = getelementptr inbounds [3 x i8], ptr %data.i563.i, i32 0, i32 2
  %522 = lshr i16 %add121.i, 8
  %conv1.i566.i = trunc i16 %522 to i8
  %523 = ptrtoint ptr %data.i563.i to i32
  call void @__asan_store1_noabort(i32 %523)
  store i8 %conv1.i566.i, ptr %data.i563.i, align 1
  %conv3.i567.i = trunc i16 %add121.i to i8
  %524 = ptrtoint ptr %520 to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 %conv3.i567.i, ptr %520, align 1
  %525 = ptrtoint ptr %521 to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 28, ptr %521, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i564.i) #6
  %526 = getelementptr inbounds i8, ptr %msg.i564.i, i32 4
  %527 = ptrtoint ptr %526 to i32
  call void @__asan_store4_noabort(i32 %527)
  store i32 262143, ptr %526, align 4
  %adr.i568.i = getelementptr inbounds %struct.stv_base, ptr %517, i32 0, i32 1
  %528 = ptrtoint ptr %adr.i568.i to i32
  call void @__asan_load1_noabort(i32 %528)
  %529 = load i8, ptr %adr.i568.i, align 4
  %conv6.i569.i = zext i8 %529 to i16
  %530 = ptrtoint ptr %msg.i564.i to i32
  call void @__asan_store2_noabort(i32 %530)
  store i16 %conv6.i569.i, ptr %msg.i564.i, align 4
  %flags.i570.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i564.i, i32 0, i32 1
  %531 = ptrtoint ptr %flags.i570.i to i32
  call void @__asan_store2_noabort(i32 %531)
  store i16 0, ptr %flags.i570.i, align 2
  %buf.i572.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i564.i, i32 0, i32 3
  %532 = ptrtoint ptr %buf.i572.i to i32
  call void @__asan_store4_noabort(i32 %532)
  store ptr %data.i563.i, ptr %buf.i572.i, align 4
  %call.i573.i = call i32 @i2c_transfer(ptr noundef %519, ptr noundef nonnull %msg.i564.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i573.i)
  %cmp.not.i574.i = icmp eq i32 %call.i573.i, 1
  br i1 %cmp.not.i574.i, label %write_reg.exit562.i.write_reg.exit581.i_crit_edge, label %do.end.i579.i

write_reg.exit562.i.write_reg.exit581.i_crit_edge: ; preds = %write_reg.exit562.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit581.i

do.end.i579.i:                                    ; preds = %write_reg.exit562.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i575.i = zext i16 %add121.i to i32
  %dev.i576.i = getelementptr inbounds %struct.i2c_adapter, ptr %519, i32 0, i32 9
  %533 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %1, align 4
  %adr9.i577.i = getelementptr inbounds %struct.stv_base, ptr %534, i32 0, i32 1
  %535 = ptrtoint ptr %adr9.i577.i to i32
  call void @__asan_load1_noabort(i32 %535)
  %536 = load i8, ptr %adr9.i577.i, align 4
  %conv10.i578.i = zext i8 %536 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i576.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i578.i, i32 noundef %conv.i575.i, i32 noundef 28) #10
  br label %write_reg.exit581.i

write_reg.exit581.i:                              ; preds = %do.end.i579.i, %write_reg.exit562.i.write_reg.exit581.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i564.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i563.i) #6
  %537 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %537)
  %538 = load i16, ptr %regoff49.i, align 4
  %add126.i = add i16 %538, -3523
  %539 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %1, align 4
  %i2c.i584.i = getelementptr inbounds %struct.stv_base, ptr %540, i32 0, i32 2
  %541 = ptrtoint ptr %i2c.i584.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load ptr, ptr %i2c.i584.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i582.i) #6
  %543 = getelementptr inbounds [3 x i8], ptr %data.i582.i, i32 0, i32 1
  %544 = getelementptr inbounds [3 x i8], ptr %data.i582.i, i32 0, i32 2
  %545 = lshr i16 %add126.i, 8
  %conv1.i585.i = trunc i16 %545 to i8
  %546 = ptrtoint ptr %data.i582.i to i32
  call void @__asan_store1_noabort(i32 %546)
  store i8 %conv1.i585.i, ptr %data.i582.i, align 1
  %conv3.i586.i = trunc i16 %add126.i to i8
  %547 = ptrtoint ptr %543 to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 %conv3.i586.i, ptr %543, align 1
  %548 = ptrtoint ptr %544 to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 121, ptr %544, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i583.i) #6
  %549 = getelementptr inbounds i8, ptr %msg.i583.i, i32 4
  %550 = ptrtoint ptr %549 to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 262143, ptr %549, align 4
  %adr.i587.i = getelementptr inbounds %struct.stv_base, ptr %540, i32 0, i32 1
  %551 = ptrtoint ptr %adr.i587.i to i32
  call void @__asan_load1_noabort(i32 %551)
  %552 = load i8, ptr %adr.i587.i, align 4
  %conv6.i588.i = zext i8 %552 to i16
  %553 = ptrtoint ptr %msg.i583.i to i32
  call void @__asan_store2_noabort(i32 %553)
  store i16 %conv6.i588.i, ptr %msg.i583.i, align 4
  %flags.i589.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i583.i, i32 0, i32 1
  %554 = ptrtoint ptr %flags.i589.i to i32
  call void @__asan_store2_noabort(i32 %554)
  store i16 0, ptr %flags.i589.i, align 2
  %buf.i591.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i583.i, i32 0, i32 3
  %555 = ptrtoint ptr %buf.i591.i to i32
  call void @__asan_store4_noabort(i32 %555)
  store ptr %data.i582.i, ptr %buf.i591.i, align 4
  %call.i592.i = call i32 @i2c_transfer(ptr noundef %542, ptr noundef nonnull %msg.i583.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i592.i)
  %cmp.not.i593.i = icmp eq i32 %call.i592.i, 1
  br i1 %cmp.not.i593.i, label %write_reg.exit581.i.write_reg.exit600.i_crit_edge, label %do.end.i598.i

write_reg.exit581.i.write_reg.exit600.i_crit_edge: ; preds = %write_reg.exit581.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit600.i

do.end.i598.i:                                    ; preds = %write_reg.exit581.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i594.i = zext i16 %add126.i to i32
  %dev.i595.i = getelementptr inbounds %struct.i2c_adapter, ptr %542, i32 0, i32 9
  %556 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %1, align 4
  %adr9.i596.i = getelementptr inbounds %struct.stv_base, ptr %557, i32 0, i32 1
  %558 = ptrtoint ptr %adr9.i596.i to i32
  call void @__asan_load1_noabort(i32 %558)
  %559 = load i8, ptr %adr9.i596.i, align 4
  %conv10.i597.i = zext i8 %559 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i595.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i597.i, i32 noundef %conv.i594.i, i32 noundef 121) #10
  br label %write_reg.exit600.i

write_reg.exit600.i:                              ; preds = %do.end.i598.i, %write_reg.exit581.i.write_reg.exit600.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i583.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i582.i) #6
  %560 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %560)
  %561 = load i16, ptr %regoff49.i, align 4
  %add131.i = add i16 %561, -3431
  %562 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %1, align 4
  %i2c.i603.i = getelementptr inbounds %struct.stv_base, ptr %563, i32 0, i32 2
  %564 = ptrtoint ptr %i2c.i603.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %i2c.i603.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i601.i) #6
  %566 = getelementptr inbounds [3 x i8], ptr %data.i601.i, i32 0, i32 1
  %567 = getelementptr inbounds [3 x i8], ptr %data.i601.i, i32 0, i32 2
  %568 = lshr i16 %add131.i, 8
  %conv1.i604.i = trunc i16 %568 to i8
  %569 = ptrtoint ptr %data.i601.i to i32
  call void @__asan_store1_noabort(i32 %569)
  store i8 %conv1.i604.i, ptr %data.i601.i, align 1
  %conv3.i605.i = trunc i16 %add131.i to i8
  %570 = ptrtoint ptr %566 to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 %conv3.i605.i, ptr %566, align 1
  %571 = ptrtoint ptr %567 to i32
  call void @__asan_store1_noabort(i32 %571)
  store i8 41, ptr %567, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i602.i) #6
  %572 = getelementptr inbounds i8, ptr %msg.i602.i, i32 4
  %573 = ptrtoint ptr %572 to i32
  call void @__asan_store4_noabort(i32 %573)
  store i32 262143, ptr %572, align 4
  %adr.i606.i = getelementptr inbounds %struct.stv_base, ptr %563, i32 0, i32 1
  %574 = ptrtoint ptr %adr.i606.i to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %adr.i606.i, align 4
  %conv6.i607.i = zext i8 %575 to i16
  %576 = ptrtoint ptr %msg.i602.i to i32
  call void @__asan_store2_noabort(i32 %576)
  store i16 %conv6.i607.i, ptr %msg.i602.i, align 4
  %flags.i608.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i602.i, i32 0, i32 1
  %577 = ptrtoint ptr %flags.i608.i to i32
  call void @__asan_store2_noabort(i32 %577)
  store i16 0, ptr %flags.i608.i, align 2
  %buf.i610.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i602.i, i32 0, i32 3
  %578 = ptrtoint ptr %buf.i610.i to i32
  call void @__asan_store4_noabort(i32 %578)
  store ptr %data.i601.i, ptr %buf.i610.i, align 4
  %call.i611.i = call i32 @i2c_transfer(ptr noundef %565, ptr noundef nonnull %msg.i602.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i611.i)
  %cmp.not.i612.i = icmp eq i32 %call.i611.i, 1
  br i1 %cmp.not.i612.i, label %write_reg.exit600.i.write_reg.exit619.i_crit_edge, label %do.end.i617.i

write_reg.exit600.i.write_reg.exit619.i_crit_edge: ; preds = %write_reg.exit600.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit619.i

do.end.i617.i:                                    ; preds = %write_reg.exit600.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i613.i = zext i16 %add131.i to i32
  %dev.i614.i = getelementptr inbounds %struct.i2c_adapter, ptr %565, i32 0, i32 9
  %579 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %1, align 4
  %adr9.i615.i = getelementptr inbounds %struct.stv_base, ptr %580, i32 0, i32 1
  %581 = ptrtoint ptr %adr9.i615.i to i32
  call void @__asan_load1_noabort(i32 %581)
  %582 = load i8, ptr %adr9.i615.i, align 4
  %conv10.i616.i = zext i8 %582 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i614.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i616.i, i32 noundef %conv.i613.i, i32 noundef 41) #10
  br label %write_reg.exit619.i

write_reg.exit619.i:                              ; preds = %do.end.i617.i, %write_reg.exit600.i.write_reg.exit619.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i602.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i601.i) #6
  %583 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %583)
  %584 = load i16, ptr %regoff49.i, align 4
  %add136.i = add i16 %584, -3430
  %585 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %1, align 4
  %i2c.i622.i = getelementptr inbounds %struct.stv_base, ptr %586, i32 0, i32 2
  %587 = ptrtoint ptr %i2c.i622.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %i2c.i622.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i620.i) #6
  %589 = getelementptr inbounds [3 x i8], ptr %data.i620.i, i32 0, i32 1
  %590 = getelementptr inbounds [3 x i8], ptr %data.i620.i, i32 0, i32 2
  %591 = lshr i16 %add136.i, 8
  %conv1.i623.i = trunc i16 %591 to i8
  %592 = ptrtoint ptr %data.i620.i to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 %conv1.i623.i, ptr %data.i620.i, align 1
  %conv3.i624.i = trunc i16 %add136.i to i8
  %593 = ptrtoint ptr %589 to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 %conv3.i624.i, ptr %589, align 1
  %594 = ptrtoint ptr %590 to i32
  call void @__asan_store1_noabort(i32 %594)
  store i8 9, ptr %590, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i621.i) #6
  %595 = getelementptr inbounds i8, ptr %msg.i621.i, i32 4
  %596 = ptrtoint ptr %595 to i32
  call void @__asan_store4_noabort(i32 %596)
  store i32 262143, ptr %595, align 4
  %adr.i625.i = getelementptr inbounds %struct.stv_base, ptr %586, i32 0, i32 1
  %597 = ptrtoint ptr %adr.i625.i to i32
  call void @__asan_load1_noabort(i32 %597)
  %598 = load i8, ptr %adr.i625.i, align 4
  %conv6.i626.i = zext i8 %598 to i16
  %599 = ptrtoint ptr %msg.i621.i to i32
  call void @__asan_store2_noabort(i32 %599)
  store i16 %conv6.i626.i, ptr %msg.i621.i, align 4
  %flags.i627.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i621.i, i32 0, i32 1
  %600 = ptrtoint ptr %flags.i627.i to i32
  call void @__asan_store2_noabort(i32 %600)
  store i16 0, ptr %flags.i627.i, align 2
  %buf.i629.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i621.i, i32 0, i32 3
  %601 = ptrtoint ptr %buf.i629.i to i32
  call void @__asan_store4_noabort(i32 %601)
  store ptr %data.i620.i, ptr %buf.i629.i, align 4
  %call.i630.i = call i32 @i2c_transfer(ptr noundef %588, ptr noundef nonnull %msg.i621.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i630.i)
  %cmp.not.i631.i = icmp eq i32 %call.i630.i, 1
  br i1 %cmp.not.i631.i, label %write_reg.exit619.i.write_reg.exit638.i_crit_edge, label %do.end.i636.i

write_reg.exit619.i.write_reg.exit638.i_crit_edge: ; preds = %write_reg.exit619.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit638.i

do.end.i636.i:                                    ; preds = %write_reg.exit619.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i632.i = zext i16 %add136.i to i32
  %dev.i633.i = getelementptr inbounds %struct.i2c_adapter, ptr %588, i32 0, i32 9
  %602 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %1, align 4
  %adr9.i634.i = getelementptr inbounds %struct.stv_base, ptr %603, i32 0, i32 1
  %604 = ptrtoint ptr %adr9.i634.i to i32
  call void @__asan_load1_noabort(i32 %604)
  %605 = load i8, ptr %adr9.i634.i, align 4
  %conv10.i635.i = zext i8 %605 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i633.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i635.i, i32 noundef %conv.i632.i, i32 noundef 9) #10
  br label %write_reg.exit638.i

write_reg.exit638.i:                              ; preds = %do.end.i636.i, %write_reg.exit619.i.write_reg.exit638.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i621.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i620.i) #6
  %606 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %606)
  %607 = load i16, ptr %regoff49.i, align 4
  %add141.i = add i16 %607, -3426
  %608 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %1, align 4
  %i2c.i641.i = getelementptr inbounds %struct.stv_base, ptr %609, i32 0, i32 2
  %610 = ptrtoint ptr %i2c.i641.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %i2c.i641.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i639.i) #6
  %612 = getelementptr inbounds [3 x i8], ptr %data.i639.i, i32 0, i32 1
  %613 = getelementptr inbounds [3 x i8], ptr %data.i639.i, i32 0, i32 2
  %614 = lshr i16 %add141.i, 8
  %conv1.i642.i = trunc i16 %614 to i8
  %615 = ptrtoint ptr %data.i639.i to i32
  call void @__asan_store1_noabort(i32 %615)
  store i8 %conv1.i642.i, ptr %data.i639.i, align 1
  %conv3.i643.i = trunc i16 %add141.i to i8
  %616 = ptrtoint ptr %612 to i32
  call void @__asan_store1_noabort(i32 %616)
  store i8 %conv3.i643.i, ptr %612, align 1
  %617 = ptrtoint ptr %613 to i32
  call void @__asan_store1_noabort(i32 %617)
  store i8 -124, ptr %613, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i640.i) #6
  %618 = getelementptr inbounds i8, ptr %msg.i640.i, i32 4
  %619 = ptrtoint ptr %618 to i32
  call void @__asan_store4_noabort(i32 %619)
  store i32 262143, ptr %618, align 4
  %adr.i644.i = getelementptr inbounds %struct.stv_base, ptr %609, i32 0, i32 1
  %620 = ptrtoint ptr %adr.i644.i to i32
  call void @__asan_load1_noabort(i32 %620)
  %621 = load i8, ptr %adr.i644.i, align 4
  %conv6.i645.i = zext i8 %621 to i16
  %622 = ptrtoint ptr %msg.i640.i to i32
  call void @__asan_store2_noabort(i32 %622)
  store i16 %conv6.i645.i, ptr %msg.i640.i, align 4
  %flags.i646.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i640.i, i32 0, i32 1
  %623 = ptrtoint ptr %flags.i646.i to i32
  call void @__asan_store2_noabort(i32 %623)
  store i16 0, ptr %flags.i646.i, align 2
  %buf.i648.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i640.i, i32 0, i32 3
  %624 = ptrtoint ptr %buf.i648.i to i32
  call void @__asan_store4_noabort(i32 %624)
  store ptr %data.i639.i, ptr %buf.i648.i, align 4
  %call.i649.i = call i32 @i2c_transfer(ptr noundef %611, ptr noundef nonnull %msg.i640.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i649.i)
  %cmp.not.i650.i = icmp eq i32 %call.i649.i, 1
  br i1 %cmp.not.i650.i, label %write_reg.exit638.i.write_reg.exit657.i_crit_edge, label %do.end.i655.i

write_reg.exit638.i.write_reg.exit657.i_crit_edge: ; preds = %write_reg.exit638.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit657.i

do.end.i655.i:                                    ; preds = %write_reg.exit638.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i651.i = zext i16 %add141.i to i32
  %dev.i652.i = getelementptr inbounds %struct.i2c_adapter, ptr %611, i32 0, i32 9
  %625 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %1, align 4
  %adr9.i653.i = getelementptr inbounds %struct.stv_base, ptr %626, i32 0, i32 1
  %627 = ptrtoint ptr %adr9.i653.i to i32
  call void @__asan_load1_noabort(i32 %627)
  %628 = load i8, ptr %adr9.i653.i, align 4
  %conv10.i654.i = zext i8 %628 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i652.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i654.i, i32 noundef %conv.i651.i, i32 noundef 132) #10
  br label %write_reg.exit657.i

write_reg.exit657.i:                              ; preds = %do.end.i655.i, %write_reg.exit638.i.write_reg.exit657.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i640.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i639.i) #6
  %629 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %629)
  %630 = load i16, ptr %regoff49.i, align 4
  %add146.i = add i16 %630, -3425
  %631 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %1, align 4
  %i2c.i660.i = getelementptr inbounds %struct.stv_base, ptr %632, i32 0, i32 2
  %633 = ptrtoint ptr %i2c.i660.i to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %i2c.i660.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i658.i) #6
  %635 = getelementptr inbounds [3 x i8], ptr %data.i658.i, i32 0, i32 1
  %636 = getelementptr inbounds [3 x i8], ptr %data.i658.i, i32 0, i32 2
  %637 = lshr i16 %add146.i, 8
  %conv1.i661.i = trunc i16 %637 to i8
  %638 = ptrtoint ptr %data.i658.i to i32
  call void @__asan_store1_noabort(i32 %638)
  store i8 %conv1.i661.i, ptr %data.i658.i, align 1
  %conv3.i662.i = trunc i16 %add146.i to i8
  %639 = ptrtoint ptr %635 to i32
  call void @__asan_store1_noabort(i32 %639)
  store i8 %conv3.i662.i, ptr %635, align 1
  %640 = ptrtoint ptr %636 to i32
  call void @__asan_store1_noabort(i32 %640)
  store i8 -124, ptr %636, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i659.i) #6
  %641 = getelementptr inbounds i8, ptr %msg.i659.i, i32 4
  %642 = ptrtoint ptr %641 to i32
  call void @__asan_store4_noabort(i32 %642)
  store i32 262143, ptr %641, align 4
  %adr.i663.i = getelementptr inbounds %struct.stv_base, ptr %632, i32 0, i32 1
  %643 = ptrtoint ptr %adr.i663.i to i32
  call void @__asan_load1_noabort(i32 %643)
  %644 = load i8, ptr %adr.i663.i, align 4
  %conv6.i664.i = zext i8 %644 to i16
  %645 = ptrtoint ptr %msg.i659.i to i32
  call void @__asan_store2_noabort(i32 %645)
  store i16 %conv6.i664.i, ptr %msg.i659.i, align 4
  %flags.i665.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i659.i, i32 0, i32 1
  %646 = ptrtoint ptr %flags.i665.i to i32
  call void @__asan_store2_noabort(i32 %646)
  store i16 0, ptr %flags.i665.i, align 2
  %buf.i667.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i659.i, i32 0, i32 3
  %647 = ptrtoint ptr %buf.i667.i to i32
  call void @__asan_store4_noabort(i32 %647)
  store ptr %data.i658.i, ptr %buf.i667.i, align 4
  %call.i668.i = call i32 @i2c_transfer(ptr noundef %634, ptr noundef nonnull %msg.i659.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i668.i)
  %cmp.not.i669.i = icmp eq i32 %call.i668.i, 1
  br i1 %cmp.not.i669.i, label %write_reg.exit657.i.write_reg.exit676.i_crit_edge, label %do.end.i674.i

write_reg.exit657.i.write_reg.exit676.i_crit_edge: ; preds = %write_reg.exit657.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit676.i

do.end.i674.i:                                    ; preds = %write_reg.exit657.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i670.i = zext i16 %add146.i to i32
  %dev.i671.i = getelementptr inbounds %struct.i2c_adapter, ptr %634, i32 0, i32 9
  %648 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %1, align 4
  %adr9.i672.i = getelementptr inbounds %struct.stv_base, ptr %649, i32 0, i32 1
  %650 = ptrtoint ptr %adr9.i672.i to i32
  call void @__asan_load1_noabort(i32 %650)
  %651 = load i8, ptr %adr9.i672.i, align 4
  %conv10.i673.i = zext i8 %651 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i671.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i673.i, i32 noundef %conv.i670.i, i32 noundef 132) #10
  br label %write_reg.exit676.i

write_reg.exit676.i:                              ; preds = %do.end.i674.i, %write_reg.exit657.i.write_reg.exit676.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i659.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i658.i) #6
  %652 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load i32, ptr %nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %653)
  %tobool150.not.i = icmp eq i32 %653, 0
  %conv152.i = select i1 %tobool150.not.i, i8 8, i8 4
  %654 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %1, align 4
  %i2c.i679.i = getelementptr inbounds %struct.stv_base, ptr %655, i32 0, i32 2
  %656 = ptrtoint ptr %i2c.i679.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %i2c.i679.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i677.i) #6
  %658 = getelementptr inbounds [3 x i8], ptr %data.i677.i, i32 0, i32 1
  %659 = getelementptr inbounds [3 x i8], ptr %data.i677.i, i32 0, i32 2
  %660 = ptrtoint ptr %data.i677.i to i32
  call void @__asan_store1_noabort(i32 %660)
  store i8 -1, ptr %data.i677.i, align 1
  %661 = ptrtoint ptr %658 to i32
  call void @__asan_store1_noabort(i32 %661)
  store i8 17, ptr %658, align 1
  %662 = ptrtoint ptr %659 to i32
  call void @__asan_store1_noabort(i32 %662)
  store i8 %conv152.i, ptr %659, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i678.i) #6
  %663 = getelementptr inbounds i8, ptr %msg.i678.i, i32 4
  %664 = ptrtoint ptr %663 to i32
  call void @__asan_store4_noabort(i32 %664)
  store i32 262143, ptr %663, align 4
  %adr.i680.i = getelementptr inbounds %struct.stv_base, ptr %655, i32 0, i32 1
  %665 = ptrtoint ptr %adr.i680.i to i32
  call void @__asan_load1_noabort(i32 %665)
  %666 = load i8, ptr %adr.i680.i, align 4
  %conv6.i681.i = zext i8 %666 to i16
  %667 = ptrtoint ptr %msg.i678.i to i32
  call void @__asan_store2_noabort(i32 %667)
  store i16 %conv6.i681.i, ptr %msg.i678.i, align 4
  %flags.i682.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i678.i, i32 0, i32 1
  %668 = ptrtoint ptr %flags.i682.i to i32
  call void @__asan_store2_noabort(i32 %668)
  store i16 0, ptr %flags.i682.i, align 2
  %buf.i684.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i678.i, i32 0, i32 3
  %669 = ptrtoint ptr %buf.i684.i to i32
  call void @__asan_store4_noabort(i32 %669)
  store ptr %data.i677.i, ptr %buf.i684.i, align 4
  %call.i685.i = call i32 @i2c_transfer(ptr noundef %657, ptr noundef nonnull %msg.i678.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i685.i)
  %cmp.not.i686.i = icmp eq i32 %call.i685.i, 1
  br i1 %cmp.not.i686.i, label %write_reg.exit676.i.write_reg.exit693.i_crit_edge, label %do.end.i691.i

write_reg.exit676.i.write_reg.exit693.i_crit_edge: ; preds = %write_reg.exit676.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit693.i

do.end.i691.i:                                    ; preds = %write_reg.exit676.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i687.i = getelementptr inbounds %struct.i2c_adapter, ptr %657, i32 0, i32 9
  %670 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %1, align 4
  %adr9.i688.i = getelementptr inbounds %struct.stv_base, ptr %671, i32 0, i32 1
  %672 = ptrtoint ptr %adr9.i688.i to i32
  call void @__asan_load1_noabort(i32 %672)
  %673 = load i8, ptr %adr9.i688.i, align 4
  %conv10.i689.i = zext i8 %673 to i32
  %conv12.i690.i = zext i8 %conv152.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i687.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i689.i, i32 noundef 65297, i32 noundef %conv12.i690.i) #10
  br label %write_reg.exit693.i

write_reg.exit693.i:                              ; preds = %do.end.i691.i, %write_reg.exit676.i.write_reg.exit693.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i678.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i677.i) #6
  %674 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load ptr, ptr %1, align 4
  %i2c.i696.i = getelementptr inbounds %struct.stv_base, ptr %675, i32 0, i32 2
  %676 = ptrtoint ptr %i2c.i696.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %i2c.i696.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i694.i) #6
  %678 = getelementptr inbounds [3 x i8], ptr %data.i694.i, i32 0, i32 1
  %679 = getelementptr inbounds [3 x i8], ptr %data.i694.i, i32 0, i32 2
  %680 = ptrtoint ptr %data.i694.i to i32
  call void @__asan_store1_noabort(i32 %680)
  store i8 -1, ptr %data.i694.i, align 1
  %681 = ptrtoint ptr %678 to i32
  call void @__asan_store1_noabort(i32 %681)
  store i8 17, ptr %678, align 1
  %682 = ptrtoint ptr %679 to i32
  call void @__asan_store1_noabort(i32 %682)
  store i8 0, ptr %679, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i695.i) #6
  %683 = getelementptr inbounds i8, ptr %msg.i695.i, i32 4
  %684 = ptrtoint ptr %683 to i32
  call void @__asan_store4_noabort(i32 %684)
  store i32 262143, ptr %683, align 4
  %adr.i697.i = getelementptr inbounds %struct.stv_base, ptr %675, i32 0, i32 1
  %685 = ptrtoint ptr %adr.i697.i to i32
  call void @__asan_load1_noabort(i32 %685)
  %686 = load i8, ptr %adr.i697.i, align 4
  %conv6.i698.i = zext i8 %686 to i16
  %687 = ptrtoint ptr %msg.i695.i to i32
  call void @__asan_store2_noabort(i32 %687)
  store i16 %conv6.i698.i, ptr %msg.i695.i, align 4
  %flags.i699.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i695.i, i32 0, i32 1
  %688 = ptrtoint ptr %flags.i699.i to i32
  call void @__asan_store2_noabort(i32 %688)
  store i16 0, ptr %flags.i699.i, align 2
  %buf.i701.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i695.i, i32 0, i32 3
  %689 = ptrtoint ptr %buf.i701.i to i32
  call void @__asan_store4_noabort(i32 %689)
  store ptr %data.i694.i, ptr %buf.i701.i, align 4
  %call.i702.i = call i32 @i2c_transfer(ptr noundef %677, ptr noundef nonnull %msg.i695.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i702.i)
  %cmp.not.i703.i = icmp eq i32 %call.i702.i, 1
  br i1 %cmp.not.i703.i, label %write_reg.exit693.i.write_reg.exit709.i_crit_edge, label %do.end.i707.i

write_reg.exit693.i.write_reg.exit709.i_crit_edge: ; preds = %write_reg.exit693.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit709.i

do.end.i707.i:                                    ; preds = %write_reg.exit693.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i704.i = getelementptr inbounds %struct.i2c_adapter, ptr %677, i32 0, i32 9
  %690 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %1, align 4
  %adr9.i705.i = getelementptr inbounds %struct.stv_base, ptr %691, i32 0, i32 1
  %692 = ptrtoint ptr %adr9.i705.i to i32
  call void @__asan_load1_noabort(i32 %692)
  %693 = load i8, ptr %adr9.i705.i, align 4
  %conv10.i706.i = zext i8 %693 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i704.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i706.i, i32 noundef 65297, i32 noundef 0) #10
  br label %write_reg.exit709.i

write_reg.exit709.i:                              ; preds = %do.end.i707.i, %write_reg.exit693.i.write_reg.exit709.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i695.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i694.i) #6
  call fastcc void @set_vth_default(ptr noundef %1) #6
  %694 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %694)
  %695 = load i16, ptr %regoff49.i, align 4
  %add158.i = add i16 %695, -3562
  %696 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %1, align 4
  %i2c.i712.i = getelementptr inbounds %struct.stv_base, ptr %697, i32 0, i32 2
  %698 = ptrtoint ptr %i2c.i712.i to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load ptr, ptr %i2c.i712.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i710.i) #6
  %700 = getelementptr inbounds [3 x i8], ptr %data.i710.i, i32 0, i32 1
  %701 = getelementptr inbounds [3 x i8], ptr %data.i710.i, i32 0, i32 2
  %702 = lshr i16 %add158.i, 8
  %conv1.i713.i = trunc i16 %702 to i8
  %703 = ptrtoint ptr %data.i710.i to i32
  call void @__asan_store1_noabort(i32 %703)
  store i8 %conv1.i713.i, ptr %data.i710.i, align 1
  %conv3.i714.i = trunc i16 %add158.i to i8
  %704 = ptrtoint ptr %700 to i32
  call void @__asan_store1_noabort(i32 %704)
  store i8 %conv3.i714.i, ptr %700, align 1
  %705 = ptrtoint ptr %701 to i32
  call void @__asan_store1_noabort(i32 %705)
  store i8 31, ptr %701, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i711.i) #6
  %706 = getelementptr inbounds i8, ptr %msg.i711.i, i32 4
  %707 = ptrtoint ptr %706 to i32
  call void @__asan_store4_noabort(i32 %707)
  store i32 262143, ptr %706, align 4
  %adr.i715.i = getelementptr inbounds %struct.stv_base, ptr %697, i32 0, i32 1
  %708 = ptrtoint ptr %adr.i715.i to i32
  call void @__asan_load1_noabort(i32 %708)
  %709 = load i8, ptr %adr.i715.i, align 4
  %conv6.i716.i = zext i8 %709 to i16
  %710 = ptrtoint ptr %msg.i711.i to i32
  call void @__asan_store2_noabort(i32 %710)
  store i16 %conv6.i716.i, ptr %msg.i711.i, align 4
  %flags.i717.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i711.i, i32 0, i32 1
  %711 = ptrtoint ptr %flags.i717.i to i32
  call void @__asan_store2_noabort(i32 %711)
  store i16 0, ptr %flags.i717.i, align 2
  %buf.i719.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i711.i, i32 0, i32 3
  %712 = ptrtoint ptr %buf.i719.i to i32
  call void @__asan_store4_noabort(i32 %712)
  store ptr %data.i710.i, ptr %buf.i719.i, align 4
  %call.i720.i = call i32 @i2c_transfer(ptr noundef %699, ptr noundef nonnull %msg.i711.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i720.i)
  %cmp.not.i721.i = icmp eq i32 %call.i720.i, 1
  br i1 %cmp.not.i721.i, label %write_reg.exit709.i.write_reg.exit728.i_crit_edge, label %do.end.i726.i

write_reg.exit709.i.write_reg.exit728.i_crit_edge: ; preds = %write_reg.exit709.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit728.i

do.end.i726.i:                                    ; preds = %write_reg.exit709.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i722.i = zext i16 %add158.i to i32
  %dev.i723.i = getelementptr inbounds %struct.i2c_adapter, ptr %699, i32 0, i32 9
  %713 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %1, align 4
  %adr9.i724.i = getelementptr inbounds %struct.stv_base, ptr %714, i32 0, i32 1
  %715 = ptrtoint ptr %adr9.i724.i to i32
  call void @__asan_load1_noabort(i32 %715)
  %716 = load i8, ptr %adr9.i724.i, align 4
  %conv10.i725.i = zext i8 %716 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i723.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i725.i, i32 noundef %conv.i722.i, i32 noundef 31) #10
  br label %write_reg.exit728.i

write_reg.exit728.i:                              ; preds = %do.end.i726.i, %write_reg.exit709.i.write_reg.exit728.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i711.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i710.i) #6
  %717 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %717)
  %718 = load i16, ptr %regoff49.i, align 4
  %add163.i = add i16 %718, -3528
  %719 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %1, align 4
  %i2c.i731.i = getelementptr inbounds %struct.stv_base, ptr %720, i32 0, i32 2
  %721 = ptrtoint ptr %i2c.i731.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %i2c.i731.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i729.i) #6
  %723 = getelementptr inbounds [3 x i8], ptr %data.i729.i, i32 0, i32 1
  %724 = getelementptr inbounds [3 x i8], ptr %data.i729.i, i32 0, i32 2
  %725 = lshr i16 %add163.i, 8
  %conv1.i732.i = trunc i16 %725 to i8
  %726 = ptrtoint ptr %data.i729.i to i32
  call void @__asan_store1_noabort(i32 %726)
  store i8 %conv1.i732.i, ptr %data.i729.i, align 1
  %conv3.i733.i = trunc i16 %add163.i to i8
  %727 = ptrtoint ptr %723 to i32
  call void @__asan_store1_noabort(i32 %727)
  store i8 %conv3.i733.i, ptr %723, align 1
  %728 = ptrtoint ptr %724 to i32
  call void @__asan_store1_noabort(i32 %728)
  store i8 70, ptr %724, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i730.i) #6
  %729 = getelementptr inbounds i8, ptr %msg.i730.i, i32 4
  %730 = ptrtoint ptr %729 to i32
  call void @__asan_store4_noabort(i32 %730)
  store i32 262143, ptr %729, align 4
  %adr.i734.i = getelementptr inbounds %struct.stv_base, ptr %720, i32 0, i32 1
  %731 = ptrtoint ptr %adr.i734.i to i32
  call void @__asan_load1_noabort(i32 %731)
  %732 = load i8, ptr %adr.i734.i, align 4
  %conv6.i735.i = zext i8 %732 to i16
  %733 = ptrtoint ptr %msg.i730.i to i32
  call void @__asan_store2_noabort(i32 %733)
  store i16 %conv6.i735.i, ptr %msg.i730.i, align 4
  %flags.i736.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i730.i, i32 0, i32 1
  %734 = ptrtoint ptr %flags.i736.i to i32
  call void @__asan_store2_noabort(i32 %734)
  store i16 0, ptr %flags.i736.i, align 2
  %buf.i738.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i730.i, i32 0, i32 3
  %735 = ptrtoint ptr %buf.i738.i to i32
  call void @__asan_store4_noabort(i32 %735)
  store ptr %data.i729.i, ptr %buf.i738.i, align 4
  %call.i739.i = call i32 @i2c_transfer(ptr noundef %722, ptr noundef nonnull %msg.i730.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i739.i)
  %cmp.not.i740.i = icmp eq i32 %call.i739.i, 1
  br i1 %cmp.not.i740.i, label %write_reg.exit728.i.write_reg.exit747.i_crit_edge, label %do.end.i745.i

write_reg.exit728.i.write_reg.exit747.i_crit_edge: ; preds = %write_reg.exit728.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit747.i

do.end.i745.i:                                    ; preds = %write_reg.exit728.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i741.i = zext i16 %add163.i to i32
  %dev.i742.i = getelementptr inbounds %struct.i2c_adapter, ptr %722, i32 0, i32 9
  %736 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %736)
  %737 = load ptr, ptr %1, align 4
  %adr9.i743.i = getelementptr inbounds %struct.stv_base, ptr %737, i32 0, i32 1
  %738 = ptrtoint ptr %adr9.i743.i to i32
  call void @__asan_load1_noabort(i32 %738)
  %739 = load i8, ptr %adr9.i743.i, align 4
  %conv10.i744.i = zext i8 %739 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i742.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i744.i, i32 noundef %conv.i741.i, i32 noundef 70) #10
  br label %write_reg.exit747.i

write_reg.exit747.i:                              ; preds = %do.end.i745.i, %write_reg.exit728.i.write_reg.exit747.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i730.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i729.i) #6
  %740 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000001, i32 %741)
  %cmp167.i = icmp ult i32 %741, 5000001
  %search_range.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 10
  %742 = ptrtoint ptr %search_range.i to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load i32, ptr %search_range.i, align 4
  %div.i = sdiv i32 %743, 2000
  %..i = select i1 %cmp167.i, i32 80, i32 1600
  %add174.i = add nsw i32 %div.i, %..i
  %shl.i = shl i32 %add174.i, 16
  %744 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load ptr, ptr %1, align 4
  %mclk177.i = getelementptr inbounds %struct.stv_base, ptr %745, i32 0, i32 7
  %746 = ptrtoint ptr %mclk177.i to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load i32, ptr %mclk177.i, align 4
  %div178.i = udiv i32 %747, 1000
  %div179.i = udiv i32 %shl.i, %div178.i
  %748 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %748)
  %749 = load i16, ptr %regoff49.i, align 4
  %add182.i = add i16 %749, -3518
  %750 = lshr i32 %div179.i, 8
  %conv186.i = trunc i32 %750 to i8
  %i2c.i750.i = getelementptr inbounds %struct.stv_base, ptr %745, i32 0, i32 2
  %751 = ptrtoint ptr %i2c.i750.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %i2c.i750.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i748.i) #6
  %753 = getelementptr inbounds [3 x i8], ptr %data.i748.i, i32 0, i32 1
  %754 = getelementptr inbounds [3 x i8], ptr %data.i748.i, i32 0, i32 2
  %755 = lshr i16 %add182.i, 8
  %conv1.i751.i = trunc i16 %755 to i8
  %756 = ptrtoint ptr %data.i748.i to i32
  call void @__asan_store1_noabort(i32 %756)
  store i8 %conv1.i751.i, ptr %data.i748.i, align 1
  %conv3.i752.i = trunc i16 %add182.i to i8
  %757 = ptrtoint ptr %753 to i32
  call void @__asan_store1_noabort(i32 %757)
  store i8 %conv3.i752.i, ptr %753, align 1
  %758 = ptrtoint ptr %754 to i32
  call void @__asan_store1_noabort(i32 %758)
  store i8 %conv186.i, ptr %754, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i749.i) #6
  %759 = getelementptr inbounds i8, ptr %msg.i749.i, i32 4
  %760 = ptrtoint ptr %759 to i32
  call void @__asan_store4_noabort(i32 %760)
  store i32 262143, ptr %759, align 4
  %adr.i753.i = getelementptr inbounds %struct.stv_base, ptr %745, i32 0, i32 1
  %761 = ptrtoint ptr %adr.i753.i to i32
  call void @__asan_load1_noabort(i32 %761)
  %762 = load i8, ptr %adr.i753.i, align 4
  %conv6.i754.i = zext i8 %762 to i16
  %763 = ptrtoint ptr %msg.i749.i to i32
  call void @__asan_store2_noabort(i32 %763)
  store i16 %conv6.i754.i, ptr %msg.i749.i, align 4
  %flags.i755.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i749.i, i32 0, i32 1
  %764 = ptrtoint ptr %flags.i755.i to i32
  call void @__asan_store2_noabort(i32 %764)
  store i16 0, ptr %flags.i755.i, align 2
  %buf.i757.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i749.i, i32 0, i32 3
  %765 = ptrtoint ptr %buf.i757.i to i32
  call void @__asan_store4_noabort(i32 %765)
  store ptr %data.i748.i, ptr %buf.i757.i, align 4
  %call.i758.i = call i32 @i2c_transfer(ptr noundef %752, ptr noundef nonnull %msg.i749.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i758.i)
  %cmp.not.i759.i = icmp eq i32 %call.i758.i, 1
  br i1 %cmp.not.i759.i, label %write_reg.exit747.i.write_reg.exit767.i_crit_edge, label %do.end.i765.i

write_reg.exit747.i.write_reg.exit767.i_crit_edge: ; preds = %write_reg.exit747.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit767.i

do.end.i765.i:                                    ; preds = %write_reg.exit747.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i760.i = zext i16 %add182.i to i32
  %dev.i761.i = getelementptr inbounds %struct.i2c_adapter, ptr %752, i32 0, i32 9
  %766 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %1, align 4
  %adr9.i762.i = getelementptr inbounds %struct.stv_base, ptr %767, i32 0, i32 1
  %768 = ptrtoint ptr %adr9.i762.i to i32
  call void @__asan_load1_noabort(i32 %768)
  %769 = load i8, ptr %adr9.i762.i, align 4
  %conv10.i763.i = zext i8 %769 to i32
  %conv12.i764.i = and i32 %750, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i761.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i763.i, i32 noundef %conv.i760.i, i32 noundef %conv12.i764.i) #10
  br label %write_reg.exit767.i

write_reg.exit767.i:                              ; preds = %do.end.i765.i, %write_reg.exit747.i.write_reg.exit767.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i749.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i748.i) #6
  %770 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %770)
  %771 = load i16, ptr %regoff49.i, align 4
  %add190.i = add i16 %771, -3517
  %conv193.i = trunc i32 %div179.i to i8
  %772 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %1, align 4
  %i2c.i770.i = getelementptr inbounds %struct.stv_base, ptr %773, i32 0, i32 2
  %774 = ptrtoint ptr %i2c.i770.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %i2c.i770.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i768.i) #6
  %776 = getelementptr inbounds [3 x i8], ptr %data.i768.i, i32 0, i32 1
  %777 = getelementptr inbounds [3 x i8], ptr %data.i768.i, i32 0, i32 2
  %778 = lshr i16 %add190.i, 8
  %conv1.i771.i = trunc i16 %778 to i8
  %779 = ptrtoint ptr %data.i768.i to i32
  call void @__asan_store1_noabort(i32 %779)
  store i8 %conv1.i771.i, ptr %data.i768.i, align 1
  %conv3.i772.i = trunc i16 %add190.i to i8
  %780 = ptrtoint ptr %776 to i32
  call void @__asan_store1_noabort(i32 %780)
  store i8 %conv3.i772.i, ptr %776, align 1
  %781 = ptrtoint ptr %777 to i32
  call void @__asan_store1_noabort(i32 %781)
  store i8 %conv193.i, ptr %777, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i769.i) #6
  %782 = getelementptr inbounds i8, ptr %msg.i769.i, i32 4
  %783 = ptrtoint ptr %782 to i32
  call void @__asan_store4_noabort(i32 %783)
  store i32 262143, ptr %782, align 4
  %adr.i773.i = getelementptr inbounds %struct.stv_base, ptr %773, i32 0, i32 1
  %784 = ptrtoint ptr %adr.i773.i to i32
  call void @__asan_load1_noabort(i32 %784)
  %785 = load i8, ptr %adr.i773.i, align 4
  %conv6.i774.i = zext i8 %785 to i16
  %786 = ptrtoint ptr %msg.i769.i to i32
  call void @__asan_store2_noabort(i32 %786)
  store i16 %conv6.i774.i, ptr %msg.i769.i, align 4
  %flags.i775.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i769.i, i32 0, i32 1
  %787 = ptrtoint ptr %flags.i775.i to i32
  call void @__asan_store2_noabort(i32 %787)
  store i16 0, ptr %flags.i775.i, align 2
  %buf.i777.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i769.i, i32 0, i32 3
  %788 = ptrtoint ptr %buf.i777.i to i32
  call void @__asan_store4_noabort(i32 %788)
  store ptr %data.i768.i, ptr %buf.i777.i, align 4
  %call.i778.i = call i32 @i2c_transfer(ptr noundef %775, ptr noundef nonnull %msg.i769.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i778.i)
  %cmp.not.i779.i = icmp eq i32 %call.i778.i, 1
  br i1 %cmp.not.i779.i, label %write_reg.exit767.i.write_reg.exit787.i_crit_edge, label %do.end.i785.i

write_reg.exit767.i.write_reg.exit787.i_crit_edge: ; preds = %write_reg.exit767.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit787.i

do.end.i785.i:                                    ; preds = %write_reg.exit767.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i780.i = zext i16 %add190.i to i32
  %dev.i781.i = getelementptr inbounds %struct.i2c_adapter, ptr %775, i32 0, i32 9
  %789 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %1, align 4
  %adr9.i782.i = getelementptr inbounds %struct.stv_base, ptr %790, i32 0, i32 1
  %791 = ptrtoint ptr %adr9.i782.i to i32
  call void @__asan_load1_noabort(i32 %791)
  %792 = load i8, ptr %adr9.i782.i, align 4
  %conv10.i783.i = zext i8 %792 to i32
  %conv12.i784.i = and i32 %div179.i, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i781.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i783.i, i32 noundef %conv.i780.i, i32 noundef %conv12.i784.i) #10
  br label %write_reg.exit787.i

write_reg.exit787.i:                              ; preds = %do.end.i785.i, %write_reg.exit767.i.write_reg.exit787.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i769.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i768.i) #6
  %sub.i = sub i32 0, %div179.i
  %793 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %793)
  %794 = load i16, ptr %regoff49.i, align 4
  %add197.i = add i16 %794, -3514
  %795 = lshr i32 %sub.i, 8
  %conv201.i = trunc i32 %795 to i8
  %796 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %1, align 4
  %i2c.i790.i = getelementptr inbounds %struct.stv_base, ptr %797, i32 0, i32 2
  %798 = ptrtoint ptr %i2c.i790.i to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %i2c.i790.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i788.i) #6
  %800 = getelementptr inbounds [3 x i8], ptr %data.i788.i, i32 0, i32 1
  %801 = getelementptr inbounds [3 x i8], ptr %data.i788.i, i32 0, i32 2
  %802 = lshr i16 %add197.i, 8
  %conv1.i791.i = trunc i16 %802 to i8
  %803 = ptrtoint ptr %data.i788.i to i32
  call void @__asan_store1_noabort(i32 %803)
  store i8 %conv1.i791.i, ptr %data.i788.i, align 1
  %conv3.i792.i = trunc i16 %add197.i to i8
  %804 = ptrtoint ptr %800 to i32
  call void @__asan_store1_noabort(i32 %804)
  store i8 %conv3.i792.i, ptr %800, align 1
  %805 = ptrtoint ptr %801 to i32
  call void @__asan_store1_noabort(i32 %805)
  store i8 %conv201.i, ptr %801, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i789.i) #6
  %806 = getelementptr inbounds i8, ptr %msg.i789.i, i32 4
  %807 = ptrtoint ptr %806 to i32
  call void @__asan_store4_noabort(i32 %807)
  store i32 262143, ptr %806, align 4
  %adr.i793.i = getelementptr inbounds %struct.stv_base, ptr %797, i32 0, i32 1
  %808 = ptrtoint ptr %adr.i793.i to i32
  call void @__asan_load1_noabort(i32 %808)
  %809 = load i8, ptr %adr.i793.i, align 4
  %conv6.i794.i = zext i8 %809 to i16
  %810 = ptrtoint ptr %msg.i789.i to i32
  call void @__asan_store2_noabort(i32 %810)
  store i16 %conv6.i794.i, ptr %msg.i789.i, align 4
  %flags.i795.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i789.i, i32 0, i32 1
  %811 = ptrtoint ptr %flags.i795.i to i32
  call void @__asan_store2_noabort(i32 %811)
  store i16 0, ptr %flags.i795.i, align 2
  %buf.i797.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i789.i, i32 0, i32 3
  %812 = ptrtoint ptr %buf.i797.i to i32
  call void @__asan_store4_noabort(i32 %812)
  store ptr %data.i788.i, ptr %buf.i797.i, align 4
  %call.i798.i = call i32 @i2c_transfer(ptr noundef %799, ptr noundef nonnull %msg.i789.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i798.i)
  %cmp.not.i799.i = icmp eq i32 %call.i798.i, 1
  br i1 %cmp.not.i799.i, label %write_reg.exit787.i.write_reg.exit807.i_crit_edge, label %do.end.i805.i

write_reg.exit787.i.write_reg.exit807.i_crit_edge: ; preds = %write_reg.exit787.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit807.i

do.end.i805.i:                                    ; preds = %write_reg.exit787.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i800.i = zext i16 %add197.i to i32
  %dev.i801.i = getelementptr inbounds %struct.i2c_adapter, ptr %799, i32 0, i32 9
  %813 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %1, align 4
  %adr9.i802.i = getelementptr inbounds %struct.stv_base, ptr %814, i32 0, i32 1
  %815 = ptrtoint ptr %adr9.i802.i to i32
  call void @__asan_load1_noabort(i32 %815)
  %816 = load i8, ptr %adr9.i802.i, align 4
  %conv10.i803.i = zext i8 %816 to i32
  %conv12.i804.i = and i32 %795, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i801.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i803.i, i32 noundef %conv.i800.i, i32 noundef %conv12.i804.i) #10
  br label %write_reg.exit807.i

write_reg.exit807.i:                              ; preds = %do.end.i805.i, %write_reg.exit787.i.write_reg.exit807.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i789.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i788.i) #6
  %817 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %817)
  %818 = load i16, ptr %regoff49.i, align 4
  %add205.i = add i16 %818, -3513
  %conv208.i = trunc i32 %sub.i to i8
  %819 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %1, align 4
  %i2c.i810.i = getelementptr inbounds %struct.stv_base, ptr %820, i32 0, i32 2
  %821 = ptrtoint ptr %i2c.i810.i to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load ptr, ptr %i2c.i810.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i808.i) #6
  %823 = getelementptr inbounds [3 x i8], ptr %data.i808.i, i32 0, i32 1
  %824 = getelementptr inbounds [3 x i8], ptr %data.i808.i, i32 0, i32 2
  %825 = lshr i16 %add205.i, 8
  %conv1.i811.i = trunc i16 %825 to i8
  %826 = ptrtoint ptr %data.i808.i to i32
  call void @__asan_store1_noabort(i32 %826)
  store i8 %conv1.i811.i, ptr %data.i808.i, align 1
  %conv3.i812.i = trunc i16 %add205.i to i8
  %827 = ptrtoint ptr %823 to i32
  call void @__asan_store1_noabort(i32 %827)
  store i8 %conv3.i812.i, ptr %823, align 1
  %828 = ptrtoint ptr %824 to i32
  call void @__asan_store1_noabort(i32 %828)
  store i8 %conv208.i, ptr %824, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i809.i) #6
  %829 = getelementptr inbounds i8, ptr %msg.i809.i, i32 4
  %830 = ptrtoint ptr %829 to i32
  call void @__asan_store4_noabort(i32 %830)
  store i32 262143, ptr %829, align 4
  %adr.i813.i = getelementptr inbounds %struct.stv_base, ptr %820, i32 0, i32 1
  %831 = ptrtoint ptr %adr.i813.i to i32
  call void @__asan_load1_noabort(i32 %831)
  %832 = load i8, ptr %adr.i813.i, align 4
  %conv6.i814.i = zext i8 %832 to i16
  %833 = ptrtoint ptr %msg.i809.i to i32
  call void @__asan_store2_noabort(i32 %833)
  store i16 %conv6.i814.i, ptr %msg.i809.i, align 4
  %flags.i815.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i809.i, i32 0, i32 1
  %834 = ptrtoint ptr %flags.i815.i to i32
  call void @__asan_store2_noabort(i32 %834)
  store i16 0, ptr %flags.i815.i, align 2
  %buf.i817.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i809.i, i32 0, i32 3
  %835 = ptrtoint ptr %buf.i817.i to i32
  call void @__asan_store4_noabort(i32 %835)
  store ptr %data.i808.i, ptr %buf.i817.i, align 4
  %call.i818.i = call i32 @i2c_transfer(ptr noundef %822, ptr noundef nonnull %msg.i809.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i818.i)
  %cmp.not.i819.i = icmp eq i32 %call.i818.i, 1
  br i1 %cmp.not.i819.i, label %write_reg.exit807.i.write_reg.exit827.i_crit_edge, label %do.end.i825.i

write_reg.exit807.i.write_reg.exit827.i_crit_edge: ; preds = %write_reg.exit807.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit827.i

do.end.i825.i:                                    ; preds = %write_reg.exit807.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i820.i = zext i16 %add205.i to i32
  %dev.i821.i = getelementptr inbounds %struct.i2c_adapter, ptr %822, i32 0, i32 9
  %836 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %1, align 4
  %adr9.i822.i = getelementptr inbounds %struct.stv_base, ptr %837, i32 0, i32 1
  %838 = ptrtoint ptr %adr9.i822.i to i32
  call void @__asan_load1_noabort(i32 %838)
  %839 = load i8, ptr %adr9.i822.i, align 4
  %conv10.i823.i = zext i8 %839 to i32
  %conv12.i824.i = and i32 %sub.i, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i821.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i823.i, i32 noundef %conv.i820.i, i32 noundef %conv12.i824.i) #10
  br label %write_reg.exit827.i

write_reg.exit827.i:                              ; preds = %do.end.i825.i, %write_reg.exit807.i.write_reg.exit827.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i809.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i808.i) #6
  %840 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %840)
  %841 = load i16, ptr %regoff49.i, align 4
  %add212.i = add i16 %841, -3512
  %842 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load ptr, ptr %1, align 4
  %i2c.i830.i = getelementptr inbounds %struct.stv_base, ptr %843, i32 0, i32 2
  %844 = ptrtoint ptr %i2c.i830.i to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %i2c.i830.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i828.i) #6
  %846 = getelementptr inbounds [3 x i8], ptr %data.i828.i, i32 0, i32 1
  %847 = getelementptr inbounds [3 x i8], ptr %data.i828.i, i32 0, i32 2
  %848 = lshr i16 %add212.i, 8
  %conv1.i831.i = trunc i16 %848 to i8
  %849 = ptrtoint ptr %data.i828.i to i32
  call void @__asan_store1_noabort(i32 %849)
  store i8 %conv1.i831.i, ptr %data.i828.i, align 1
  %conv3.i832.i = trunc i16 %add212.i to i8
  %850 = ptrtoint ptr %846 to i32
  call void @__asan_store1_noabort(i32 %850)
  store i8 %conv3.i832.i, ptr %846, align 1
  %851 = ptrtoint ptr %847 to i32
  call void @__asan_store1_noabort(i32 %851)
  store i8 0, ptr %847, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i829.i) #6
  %852 = getelementptr inbounds i8, ptr %msg.i829.i, i32 4
  %853 = ptrtoint ptr %852 to i32
  call void @__asan_store4_noabort(i32 %853)
  store i32 262143, ptr %852, align 4
  %adr.i833.i = getelementptr inbounds %struct.stv_base, ptr %843, i32 0, i32 1
  %854 = ptrtoint ptr %adr.i833.i to i32
  call void @__asan_load1_noabort(i32 %854)
  %855 = load i8, ptr %adr.i833.i, align 4
  %conv6.i834.i = zext i8 %855 to i16
  %856 = ptrtoint ptr %msg.i829.i to i32
  call void @__asan_store2_noabort(i32 %856)
  store i16 %conv6.i834.i, ptr %msg.i829.i, align 4
  %flags.i835.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i829.i, i32 0, i32 1
  %857 = ptrtoint ptr %flags.i835.i to i32
  call void @__asan_store2_noabort(i32 %857)
  store i16 0, ptr %flags.i835.i, align 2
  %buf.i837.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i829.i, i32 0, i32 3
  %858 = ptrtoint ptr %buf.i837.i to i32
  call void @__asan_store4_noabort(i32 %858)
  store ptr %data.i828.i, ptr %buf.i837.i, align 4
  %call.i838.i = call i32 @i2c_transfer(ptr noundef %845, ptr noundef nonnull %msg.i829.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i838.i)
  %cmp.not.i839.i = icmp eq i32 %call.i838.i, 1
  br i1 %cmp.not.i839.i, label %write_reg.exit827.i.write_reg.exit846.i_crit_edge, label %do.end.i844.i

write_reg.exit827.i.write_reg.exit846.i_crit_edge: ; preds = %write_reg.exit827.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit846.i

do.end.i844.i:                                    ; preds = %write_reg.exit827.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i840.i = zext i16 %add212.i to i32
  %dev.i841.i = getelementptr inbounds %struct.i2c_adapter, ptr %845, i32 0, i32 9
  %859 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load ptr, ptr %1, align 4
  %adr9.i842.i = getelementptr inbounds %struct.stv_base, ptr %860, i32 0, i32 1
  %861 = ptrtoint ptr %adr9.i842.i to i32
  call void @__asan_load1_noabort(i32 %861)
  %862 = load i8, ptr %adr9.i842.i, align 4
  %conv10.i843.i = zext i8 %862 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i841.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i843.i, i32 noundef %conv.i840.i, i32 noundef 0) #10
  br label %write_reg.exit846.i

write_reg.exit846.i:                              ; preds = %do.end.i844.i, %write_reg.exit827.i.write_reg.exit846.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i829.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i828.i) #6
  %863 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %863)
  %864 = load i16, ptr %regoff49.i, align 4
  %add217.i = add i16 %864, -3511
  %865 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load ptr, ptr %1, align 4
  %i2c.i849.i = getelementptr inbounds %struct.stv_base, ptr %866, i32 0, i32 2
  %867 = ptrtoint ptr %i2c.i849.i to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load ptr, ptr %i2c.i849.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i847.i) #6
  %869 = getelementptr inbounds [3 x i8], ptr %data.i847.i, i32 0, i32 1
  %870 = getelementptr inbounds [3 x i8], ptr %data.i847.i, i32 0, i32 2
  %871 = lshr i16 %add217.i, 8
  %conv1.i850.i = trunc i16 %871 to i8
  %872 = ptrtoint ptr %data.i847.i to i32
  call void @__asan_store1_noabort(i32 %872)
  store i8 %conv1.i850.i, ptr %data.i847.i, align 1
  %conv3.i851.i = trunc i16 %add217.i to i8
  %873 = ptrtoint ptr %869 to i32
  call void @__asan_store1_noabort(i32 %873)
  store i8 %conv3.i851.i, ptr %869, align 1
  %874 = ptrtoint ptr %870 to i32
  call void @__asan_store1_noabort(i32 %874)
  store i8 0, ptr %870, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i848.i) #6
  %875 = getelementptr inbounds i8, ptr %msg.i848.i, i32 4
  %876 = ptrtoint ptr %875 to i32
  call void @__asan_store4_noabort(i32 %876)
  store i32 262143, ptr %875, align 4
  %adr.i852.i = getelementptr inbounds %struct.stv_base, ptr %866, i32 0, i32 1
  %877 = ptrtoint ptr %adr.i852.i to i32
  call void @__asan_load1_noabort(i32 %877)
  %878 = load i8, ptr %adr.i852.i, align 4
  %conv6.i853.i = zext i8 %878 to i16
  %879 = ptrtoint ptr %msg.i848.i to i32
  call void @__asan_store2_noabort(i32 %879)
  store i16 %conv6.i853.i, ptr %msg.i848.i, align 4
  %flags.i854.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i848.i, i32 0, i32 1
  %880 = ptrtoint ptr %flags.i854.i to i32
  call void @__asan_store2_noabort(i32 %880)
  store i16 0, ptr %flags.i854.i, align 2
  %buf.i856.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i848.i, i32 0, i32 3
  %881 = ptrtoint ptr %buf.i856.i to i32
  call void @__asan_store4_noabort(i32 %881)
  store ptr %data.i847.i, ptr %buf.i856.i, align 4
  %call.i857.i = call i32 @i2c_transfer(ptr noundef %868, ptr noundef nonnull %msg.i848.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i857.i)
  %cmp.not.i858.i = icmp eq i32 %call.i857.i, 1
  br i1 %cmp.not.i858.i, label %write_reg.exit846.i.write_reg.exit865.i_crit_edge, label %do.end.i863.i

write_reg.exit846.i.write_reg.exit865.i_crit_edge: ; preds = %write_reg.exit846.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit865.i

do.end.i863.i:                                    ; preds = %write_reg.exit846.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i859.i = zext i16 %add217.i to i32
  %dev.i860.i = getelementptr inbounds %struct.i2c_adapter, ptr %868, i32 0, i32 9
  %882 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load ptr, ptr %1, align 4
  %adr9.i861.i = getelementptr inbounds %struct.stv_base, ptr %883, i32 0, i32 1
  %884 = ptrtoint ptr %adr9.i861.i to i32
  call void @__asan_load1_noabort(i32 %884)
  %885 = load i8, ptr %adr9.i861.i, align 4
  %conv10.i862.i = zext i8 %885 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i860.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i862.i, i32 noundef %conv.i859.i, i32 noundef 0) #10
  br label %write_reg.exit865.i

write_reg.exit865.i:                              ; preds = %do.end.i863.i, %write_reg.exit846.i.write_reg.exit865.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i848.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i847.i) #6
  %886 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %886)
  %887 = load i16, ptr %regoff49.i, align 4
  %add222.i = add i16 %887, -3562
  %888 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %1, align 4
  %i2c.i868.i = getelementptr inbounds %struct.stv_base, ptr %889, i32 0, i32 2
  %890 = ptrtoint ptr %i2c.i868.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %i2c.i868.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i866.i) #6
  %892 = getelementptr inbounds [3 x i8], ptr %data.i866.i, i32 0, i32 1
  %893 = getelementptr inbounds [3 x i8], ptr %data.i866.i, i32 0, i32 2
  %894 = lshr i16 %add222.i, 8
  %conv1.i869.i = trunc i16 %894 to i8
  %895 = ptrtoint ptr %data.i866.i to i32
  call void @__asan_store1_noabort(i32 %895)
  store i8 %conv1.i869.i, ptr %data.i866.i, align 1
  %conv3.i870.i = trunc i16 %add222.i to i8
  %896 = ptrtoint ptr %892 to i32
  call void @__asan_store1_noabort(i32 %896)
  store i8 %conv3.i870.i, ptr %892, align 1
  %897 = ptrtoint ptr %893 to i32
  call void @__asan_store1_noabort(i32 %897)
  store i8 31, ptr %893, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i867.i) #6
  %898 = getelementptr inbounds i8, ptr %msg.i867.i, i32 4
  %899 = ptrtoint ptr %898 to i32
  call void @__asan_store4_noabort(i32 %899)
  store i32 262143, ptr %898, align 4
  %adr.i871.i = getelementptr inbounds %struct.stv_base, ptr %889, i32 0, i32 1
  %900 = ptrtoint ptr %adr.i871.i to i32
  call void @__asan_load1_noabort(i32 %900)
  %901 = load i8, ptr %adr.i871.i, align 4
  %conv6.i872.i = zext i8 %901 to i16
  %902 = ptrtoint ptr %msg.i867.i to i32
  call void @__asan_store2_noabort(i32 %902)
  store i16 %conv6.i872.i, ptr %msg.i867.i, align 4
  %flags.i873.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i867.i, i32 0, i32 1
  %903 = ptrtoint ptr %flags.i873.i to i32
  call void @__asan_store2_noabort(i32 %903)
  store i16 0, ptr %flags.i873.i, align 2
  %buf.i875.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i867.i, i32 0, i32 3
  %904 = ptrtoint ptr %buf.i875.i to i32
  call void @__asan_store4_noabort(i32 %904)
  store ptr %data.i866.i, ptr %buf.i875.i, align 4
  %call.i876.i = call i32 @i2c_transfer(ptr noundef %891, ptr noundef nonnull %msg.i867.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i876.i)
  %cmp.not.i877.i = icmp eq i32 %call.i876.i, 1
  br i1 %cmp.not.i877.i, label %write_reg.exit865.i.write_reg.exit884.i_crit_edge, label %do.end.i882.i

write_reg.exit865.i.write_reg.exit884.i_crit_edge: ; preds = %write_reg.exit865.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit884.i

do.end.i882.i:                                    ; preds = %write_reg.exit865.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i878.i = zext i16 %add222.i to i32
  %dev.i879.i = getelementptr inbounds %struct.i2c_adapter, ptr %891, i32 0, i32 9
  %905 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load ptr, ptr %1, align 4
  %adr9.i880.i = getelementptr inbounds %struct.stv_base, ptr %906, i32 0, i32 1
  %907 = ptrtoint ptr %adr9.i880.i to i32
  call void @__asan_load1_noabort(i32 %907)
  %908 = load i8, ptr %adr9.i880.i, align 4
  %conv10.i881.i = zext i8 %908 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i879.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i881.i, i32 noundef %conv.i878.i, i32 noundef 31) #10
  br label %write_reg.exit884.i

write_reg.exit884.i:                              ; preds = %do.end.i882.i, %write_reg.exit865.i.write_reg.exit884.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i867.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i866.i) #6
  %909 = ptrtoint ptr %regoff49.i to i32
  call void @__asan_load2_noabort(i32 %909)
  %910 = load i16, ptr %regoff49.i, align 4
  %add227.i = add i16 %910, -3562
  %911 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load ptr, ptr %1, align 4
  %i2c.i887.i = getelementptr inbounds %struct.stv_base, ptr %912, i32 0, i32 2
  %913 = ptrtoint ptr %i2c.i887.i to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load ptr, ptr %i2c.i887.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i885.i) #6
  %915 = getelementptr inbounds [3 x i8], ptr %data.i885.i, i32 0, i32 1
  %916 = getelementptr inbounds [3 x i8], ptr %data.i885.i, i32 0, i32 2
  %917 = lshr i16 %add227.i, 8
  %conv1.i888.i = trunc i16 %917 to i8
  %918 = ptrtoint ptr %data.i885.i to i32
  call void @__asan_store1_noabort(i32 %918)
  store i8 %conv1.i888.i, ptr %data.i885.i, align 1
  %conv3.i889.i = trunc i16 %add227.i to i8
  %919 = ptrtoint ptr %915 to i32
  call void @__asan_store1_noabort(i32 %919)
  store i8 %conv3.i889.i, ptr %915, align 1
  %920 = ptrtoint ptr %916 to i32
  call void @__asan_store1_noabort(i32 %920)
  store i8 21, ptr %916, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i886.i) #6
  %921 = getelementptr inbounds i8, ptr %msg.i886.i, i32 4
  %922 = ptrtoint ptr %921 to i32
  call void @__asan_store4_noabort(i32 %922)
  store i32 262143, ptr %921, align 4
  %adr.i890.i = getelementptr inbounds %struct.stv_base, ptr %912, i32 0, i32 1
  %923 = ptrtoint ptr %adr.i890.i to i32
  call void @__asan_load1_noabort(i32 %923)
  %924 = load i8, ptr %adr.i890.i, align 4
  %conv6.i891.i = zext i8 %924 to i16
  %925 = ptrtoint ptr %msg.i886.i to i32
  call void @__asan_store2_noabort(i32 %925)
  store i16 %conv6.i891.i, ptr %msg.i886.i, align 4
  %flags.i892.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i886.i, i32 0, i32 1
  %926 = ptrtoint ptr %flags.i892.i to i32
  call void @__asan_store2_noabort(i32 %926)
  store i16 0, ptr %flags.i892.i, align 2
  %buf.i894.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i886.i, i32 0, i32 3
  %927 = ptrtoint ptr %buf.i894.i to i32
  call void @__asan_store4_noabort(i32 %927)
  store ptr %data.i885.i, ptr %buf.i894.i, align 4
  %call.i895.i = call i32 @i2c_transfer(ptr noundef %914, ptr noundef nonnull %msg.i886.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i895.i)
  %cmp.not.i896.i = icmp eq i32 %call.i895.i, 1
  br i1 %cmp.not.i896.i, label %write_reg.exit884.i.write_reg.exit903.i_crit_edge, label %do.end.i901.i

write_reg.exit884.i.write_reg.exit903.i_crit_edge: ; preds = %write_reg.exit884.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit903.i

do.end.i901.i:                                    ; preds = %write_reg.exit884.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i897.i = zext i16 %add227.i to i32
  %dev.i898.i = getelementptr inbounds %struct.i2c_adapter, ptr %914, i32 0, i32 9
  %928 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load ptr, ptr %1, align 4
  %adr9.i899.i = getelementptr inbounds %struct.stv_base, ptr %929, i32 0, i32 1
  %930 = ptrtoint ptr %adr9.i899.i to i32
  call void @__asan_load1_noabort(i32 %930)
  %931 = load i8, ptr %adr9.i899.i, align 4
  %conv10.i900.i = zext i8 %931 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i898.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i900.i, i32 noundef %conv.i897.i, i32 noundef 21) #10
  br label %write_reg.exit903.i

write_reg.exit903.i:                              ; preds = %do.end.i901.i, %write_reg.exit884.i.write_reg.exit903.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i886.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i885.i) #6
  %932 = ptrtoint ptr %demod_lock_time.i to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load i32, ptr %demod_lock_time.i, align 4
  %add231.i = add i32 %933, 200
  store i32 %add231.i, ptr %demod_lock_time.i, align 4
  %934 = ptrtoint ptr %started.i to i32
  call void @__asan_store4_noabort(i32 %934)
  store i32 1, ptr %started.i, align 4
  br label %start.exit

start.exit:                                       ; preds = %write_reg.exit903.i, %if.end.start.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %write_reg.exit903.i ], [ -22, %if.end.start.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg_dmdcfgmd.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #0 align 64 {
entry:
  %msg.i.i106.i = alloca [2 x i8], align 1
  %msgs.i.i107.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i85.i = alloca [2 x i8], align 1
  %msgs.i.i86.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i64.i = alloca [2 x i8], align 1
  %msgs.i.i65.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i43.i = alloca [2 x i8], align 1
  %msgs.i.i44.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i22.i = alloca [2 x i8], align 1
  %msgs.i.i23.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i1.i = alloca [2 x i8], align 1
  %msgs.i.i2.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i.i = alloca [2 x i8], align 1
  %msgs.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %symb_freq0.i = alloca i8, align 1
  %symb_freq1.i = alloca i8, align 1
  %symb_freq2.i = alloca i8, align 1
  %symb_freq3.i = alloca i8, align 1
  %tim_offs0.i = alloca i8, align 1
  %tim_offs1.i = alloca i8, align 1
  %tim_offs2.i = alloca i8, align 1
  %msg.i.i52 = alloca [2 x i8], align 1
  %msgs.i.i53 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i = alloca [2 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp, align 1, !annotation !69
  %receive_mode = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %receive_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %receive_mode, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %4, label %entry.if.end27_crit_edge [
    i32 2, label %if.then
    i32 1, label %if.then9
  ]

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then:                                          ; preds = %entry
  %regoff = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %regoff, align 4
  %add = add i16 %7, -3567
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %i2c.i = getelementptr inbounds %struct.stv_base, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c.i, align 4
  %adr.i = getelementptr inbounds %struct.stv_base, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #6
  %14 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %15 = lshr i16 %add, 8
  %conv1.i.i = trunc i16 %15 to i8
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv1.i.i, ptr %msg.i.i, align 1
  %conv3.i.i = trunc i16 %add to i8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3.i.i, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %18 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %19 = call ptr @memset(ptr %18, i32 255, i32 16)
  %conv5.i.i = zext i8 %13 to i16
  %20 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv5.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %flags.i.i, align 2
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 2, ptr %18, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i, ptr %buf.i.i, align 4
  %arrayinit.element6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %24 = ptrtoint ptr %arrayinit.element6.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv5.i.i, ptr %arrayinit.element6.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %25 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %flags9.i.i, align 2
  %len10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %26 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %len10.i.i, align 4
  %buf12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %27 = ptrtoint ptr %buf12.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %tmp, ptr %buf12.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.then.read_reg.exit_crit_edge, label %do.end.i.i

if.then.read_reg.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i16 %add to i32
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 9
  %conv15.i.i = zext i8 %13 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i, i32 noundef %conv.i.i) #10
  br label %read_reg.exit

read_reg.exit:                                    ; preds = %do.end.i.i, %if.then.read_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #6
  %28 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tmp, align 1
  %conv2 = zext i8 %29 to i32
  %and = lshr i32 %conv2, 2
  %30 = and i32 %and, 31
  %and4 = and i32 %conv2, 1
  %31 = xor i32 %and4, 1
  %pilot = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 13
  %32 = ptrtoint ptr %pilot to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %pilot, align 4
  %arrayidx = getelementptr [32 x i32], ptr @__const.get_frontend.modcod2mod, i32 0, i32 %30
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 1
  %35 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %modulation, align 4
  %arrayidx5 = getelementptr [32 x i32], ptr @__const.get_frontend.modcod2fec, i32 0, i32 %30
  %36 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx5, align 4
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %38 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %fec_inner, align 4
  br label %if.end27thread-pre-split

if.then9:                                         ; preds = %entry
  %regoff10 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %regoff10 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %regoff10, align 4
  %add12 = add i16 %40, -3270
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %i2c.i54 = getelementptr inbounds %struct.stv_base, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %i2c.i54 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %i2c.i54, align 4
  %adr.i55 = getelementptr inbounds %struct.stv_base, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %adr.i55 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %adr.i55, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i52) #6
  %47 = getelementptr inbounds [2 x i8], ptr %msg.i.i52, i32 0, i32 1
  %48 = lshr i16 %add12, 8
  %conv1.i.i56 = trunc i16 %48 to i8
  %49 = ptrtoint ptr %msg.i.i52 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv1.i.i56, ptr %msg.i.i52, align 1
  %conv3.i.i57 = trunc i16 %add12 to i8
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv3.i.i57, ptr %47, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i53) #6
  %51 = getelementptr inbounds i8, ptr %msgs.i.i53, i32 4
  %52 = call ptr @memset(ptr %51, i32 255, i32 16)
  %conv5.i.i58 = zext i8 %46 to i16
  %53 = ptrtoint ptr %msgs.i.i53 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv5.i.i58, ptr %msgs.i.i53, align 4
  %flags.i.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i53, i32 0, i32 1
  %54 = ptrtoint ptr %flags.i.i59 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %flags.i.i59, align 2
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 2, ptr %51, align 4
  %buf.i.i60 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i53, i32 0, i32 3
  %56 = ptrtoint ptr %buf.i.i60 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %msg.i.i52, ptr %buf.i.i60, align 4
  %arrayinit.element6.i.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i53, i32 1
  %57 = ptrtoint ptr %arrayinit.element6.i.i61 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv5.i.i58, ptr %arrayinit.element6.i.i61, align 4
  %flags9.i.i62 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i53, i32 1, i32 1
  %58 = ptrtoint ptr %flags9.i.i62 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 1, ptr %flags9.i.i62, align 2
  %len10.i.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i53, i32 1, i32 2
  %59 = ptrtoint ptr %len10.i.i63 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %len10.i.i63, align 4
  %buf12.i.i64 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i53, i32 1, i32 3
  %60 = ptrtoint ptr %buf12.i.i64 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %tmp, ptr %buf12.i.i64, align 4
  %call.i.i65 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msgs.i.i53, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i65)
  %cmp.not.i.i66 = icmp eq i32 %call.i.i65, 2
  br i1 %cmp.not.i.i66, label %if.then9.read_reg.exit72_crit_edge, label %do.end.i.i70

if.then9.read_reg.exit72_crit_edge:               ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit72

do.end.i.i70:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i67 = zext i16 %add12 to i32
  %dev.i.i68 = getelementptr inbounds %struct.i2c_adapter, ptr %44, i32 0, i32 9
  %conv15.i.i69 = zext i8 %46 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i68, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i69, i32 noundef %conv.i.i67) #10
  br label %read_reg.exit72

read_reg.exit72:                                  ; preds = %do.end.i.i70, %if.then9.read_reg.exit72_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i53) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i52) #6
  %61 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %tmp, align 1
  %63 = and i8 %62, 31
  %and16 = zext i8 %63 to i32
  %64 = zext i32 %and16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and16, label %sw.default [
    i32 13, label %read_reg.exit72.sw.epilog_crit_edge
    i32 18, label %sw.bb18
    i32 21, label %sw.bb20
    i32 24, label %sw.bb22
    i32 26, label %sw.bb24
  ]

read_reg.exit72.sw.epilog_crit_edge:              ; preds = %read_reg.exit72
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb18:                                          ; preds = %read_reg.exit72
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb20:                                          ; preds = %read_reg.exit72
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb22:                                          ; preds = %read_reg.exit72
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb24:                                          ; preds = %read_reg.exit72
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %read_reg.exit72
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb24, %sw.bb22, %sw.bb20, %sw.bb18, %read_reg.exit72.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %sw.default ], [ 7, %sw.bb24 ], [ 5, %sw.bb22 ], [ 3, %sw.bb20 ], [ 2, %sw.bb18 ], [ 1, %read_reg.exit72.sw.epilog_crit_edge ]
  %fec_inner26 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %65 = ptrtoint ptr %fec_inner26 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %.sink, ptr %fec_inner26, align 4
  %rolloff = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 14
  %66 = ptrtoint ptr %rolloff to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %rolloff, align 4
  br label %if.end27thread-pre-split

if.end27thread-pre-split:                         ; preds = %sw.epilog, %read_reg.exit
  %67 = ptrtoint ptr %receive_mode to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr = load i32, ptr %receive_mode, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27thread-pre-split, %entry.if.end27_crit_edge
  %68 = phi i32 [ %.pr, %if.end27thread-pre-split ], [ %4, %entry.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp29.not = icmp eq i32 %68, 0
  br i1 %cmp29.not, label %if.end27.if.end33_crit_edge, label %if.then31

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then31:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %symb_freq0.i) #6
  %69 = ptrtoint ptr %symb_freq0.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 -1, ptr %symb_freq0.i, align 1, !annotation !69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %symb_freq1.i) #6
  %70 = ptrtoint ptr %symb_freq1.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 -1, ptr %symb_freq1.i, align 1, !annotation !69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %symb_freq2.i) #6
  %71 = ptrtoint ptr %symb_freq2.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %symb_freq2.i, align 1, !annotation !69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %symb_freq3.i) #6
  %72 = ptrtoint ptr %symb_freq3.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -1, ptr %symb_freq3.i, align 1, !annotation !69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tim_offs0.i) #6
  %73 = ptrtoint ptr %tim_offs0.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 -1, ptr %tim_offs0.i, align 1, !annotation !69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tim_offs1.i) #6
  %74 = ptrtoint ptr %tim_offs1.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -1, ptr %tim_offs1.i, align 1, !annotation !69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tim_offs2.i) #6
  %75 = ptrtoint ptr %tim_offs2.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -1, ptr %tim_offs2.i, align 1, !annotation !69
  %started.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 11
  %76 = ptrtoint ptr %started.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %started.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i, label %if.then31.get_cur_symbol_rate.exit_crit_edge, label %if.end.i

if.then31.get_cur_symbol_rate.exit_crit_edge:     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_cur_symbol_rate.exit

if.end.i:                                         ; preds = %if.then31
  %regoff.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 3
  %78 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %regoff.i, align 4
  %add.i = add i16 %79, -3484
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %i2c.i.i = getelementptr inbounds %struct.stv_base, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i2c.i.i, align 4
  %adr.i.i = getelementptr inbounds %struct.stv_base, ptr %81, i32 0, i32 1
  %84 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i) #6
  %86 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i, i32 0, i32 1
  %87 = lshr i16 %add.i, 8
  %conv1.i.i.i = trunc i16 %87 to i8
  %88 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv1.i.i.i, ptr %msg.i.i.i, align 1
  %conv3.i.i.i = trunc i16 %add.i to i8
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv3.i.i.i, ptr %86, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  %90 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %91 = call ptr @memset(ptr %90, i32 255, i32 16)
  %conv5.i.i.i = zext i8 %85 to i16
  %92 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv5.i.i.i, ptr %msgs.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 0, ptr %flags.i.i.i, align 2
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 2, ptr %90, align 4
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %msg.i.i.i, ptr %buf.i.i.i, align 4
  %arrayinit.element6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1
  %96 = ptrtoint ptr %arrayinit.element6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv5.i.i.i, ptr %arrayinit.element6.i.i.i, align 4
  %flags9.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 1
  %97 = ptrtoint ptr %flags9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 1, ptr %flags9.i.i.i, align 2
  %len10.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 2
  %98 = ptrtoint ptr %len10.i.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 1, ptr %len10.i.i.i, align 4
  %buf12.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 3
  %99 = ptrtoint ptr %buf12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %symb_freq3.i, ptr %buf12.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msgs.i.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i.i, label %if.end.i.read_reg.exit.i_crit_edge, label %do.end.i.i.i

if.end.i.read_reg.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit.i

do.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i = zext i16 %add.i to i32
  %dev.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %83, i32 0, i32 9
  %conv15.i.i.i = zext i8 %85 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i.i, i32 noundef %conv.i.i.i) #10
  br label %read_reg.exit.i

read_reg.exit.i:                                  ; preds = %do.end.i.i.i, %if.end.i.read_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i) #6
  %100 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %regoff.i, align 4
  %add4.i = add i16 %101, -3483
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  %i2c.i3.i = getelementptr inbounds %struct.stv_base, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %i2c.i3.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i2c.i3.i, align 4
  %adr.i4.i = getelementptr inbounds %struct.stv_base, ptr %103, i32 0, i32 1
  %106 = ptrtoint ptr %adr.i4.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %adr.i4.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i1.i) #6
  %108 = getelementptr inbounds [2 x i8], ptr %msg.i.i1.i, i32 0, i32 1
  %109 = lshr i16 %add4.i, 8
  %conv1.i.i5.i = trunc i16 %109 to i8
  %110 = ptrtoint ptr %msg.i.i1.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv1.i.i5.i, ptr %msg.i.i1.i, align 1
  %conv3.i.i6.i = trunc i16 %add4.i to i8
  %111 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv3.i.i6.i, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i2.i) #6
  %112 = getelementptr inbounds i8, ptr %msgs.i.i2.i, i32 4
  %113 = call ptr @memset(ptr %112, i32 255, i32 16)
  %conv5.i.i7.i = zext i8 %107 to i16
  %114 = ptrtoint ptr %msgs.i.i2.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv5.i.i7.i, ptr %msgs.i.i2.i, align 4
  %flags.i.i8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i2.i, i32 0, i32 1
  %115 = ptrtoint ptr %flags.i.i8.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %flags.i.i8.i, align 2
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 2, ptr %112, align 4
  %buf.i.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i2.i, i32 0, i32 3
  %117 = ptrtoint ptr %buf.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %msg.i.i1.i, ptr %buf.i.i9.i, align 4
  %arrayinit.element6.i.i10.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i2.i, i32 1
  %118 = ptrtoint ptr %arrayinit.element6.i.i10.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv5.i.i7.i, ptr %arrayinit.element6.i.i10.i, align 4
  %flags9.i.i11.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i2.i, i32 1, i32 1
  %119 = ptrtoint ptr %flags9.i.i11.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 1, ptr %flags9.i.i11.i, align 2
  %len10.i.i12.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i2.i, i32 1, i32 2
  %120 = ptrtoint ptr %len10.i.i12.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 1, ptr %len10.i.i12.i, align 4
  %buf12.i.i13.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i2.i, i32 1, i32 3
  %121 = ptrtoint ptr %buf12.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %symb_freq2.i, ptr %buf12.i.i13.i, align 4
  %call.i.i14.i = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %msgs.i.i2.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i14.i)
  %cmp.not.i.i15.i = icmp eq i32 %call.i.i14.i, 2
  br i1 %cmp.not.i.i15.i, label %read_reg.exit.i.read_reg.exit21.i_crit_edge, label %do.end.i.i19.i

read_reg.exit.i.read_reg.exit21.i_crit_edge:      ; preds = %read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit21.i

do.end.i.i19.i:                                   ; preds = %read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i16.i = zext i16 %add4.i to i32
  %dev.i.i17.i = getelementptr inbounds %struct.i2c_adapter, ptr %105, i32 0, i32 9
  %conv15.i.i18.i = zext i8 %107 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i17.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i18.i, i32 noundef %conv.i.i16.i) #10
  br label %read_reg.exit21.i

read_reg.exit21.i:                                ; preds = %do.end.i.i19.i, %read_reg.exit.i.read_reg.exit21.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i2.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i1.i) #6
  %122 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %regoff.i, align 4
  %add9.i = add i16 %123, -3482
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 4
  %i2c.i24.i = getelementptr inbounds %struct.stv_base, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %i2c.i24.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %i2c.i24.i, align 4
  %adr.i25.i = getelementptr inbounds %struct.stv_base, ptr %125, i32 0, i32 1
  %128 = ptrtoint ptr %adr.i25.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %adr.i25.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i22.i) #6
  %130 = getelementptr inbounds [2 x i8], ptr %msg.i.i22.i, i32 0, i32 1
  %131 = lshr i16 %add9.i, 8
  %conv1.i.i26.i = trunc i16 %131 to i8
  %132 = ptrtoint ptr %msg.i.i22.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv1.i.i26.i, ptr %msg.i.i22.i, align 1
  %conv3.i.i27.i = trunc i16 %add9.i to i8
  %133 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv3.i.i27.i, ptr %130, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i23.i) #6
  %134 = getelementptr inbounds i8, ptr %msgs.i.i23.i, i32 4
  %135 = call ptr @memset(ptr %134, i32 255, i32 16)
  %conv5.i.i28.i = zext i8 %129 to i16
  %136 = ptrtoint ptr %msgs.i.i23.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv5.i.i28.i, ptr %msgs.i.i23.i, align 4
  %flags.i.i29.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i23.i, i32 0, i32 1
  %137 = ptrtoint ptr %flags.i.i29.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %flags.i.i29.i, align 2
  %138 = ptrtoint ptr %134 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 2, ptr %134, align 4
  %buf.i.i30.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i23.i, i32 0, i32 3
  %139 = ptrtoint ptr %buf.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %msg.i.i22.i, ptr %buf.i.i30.i, align 4
  %arrayinit.element6.i.i31.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i23.i, i32 1
  %140 = ptrtoint ptr %arrayinit.element6.i.i31.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv5.i.i28.i, ptr %arrayinit.element6.i.i31.i, align 4
  %flags9.i.i32.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i23.i, i32 1, i32 1
  %141 = ptrtoint ptr %flags9.i.i32.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 1, ptr %flags9.i.i32.i, align 2
  %len10.i.i33.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i23.i, i32 1, i32 2
  %142 = ptrtoint ptr %len10.i.i33.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 1, ptr %len10.i.i33.i, align 4
  %buf12.i.i34.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i23.i, i32 1, i32 3
  %143 = ptrtoint ptr %buf12.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %symb_freq1.i, ptr %buf12.i.i34.i, align 4
  %call.i.i35.i = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %msgs.i.i23.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i35.i)
  %cmp.not.i.i36.i = icmp eq i32 %call.i.i35.i, 2
  br i1 %cmp.not.i.i36.i, label %read_reg.exit21.i.read_reg.exit42.i_crit_edge, label %do.end.i.i40.i

read_reg.exit21.i.read_reg.exit42.i_crit_edge:    ; preds = %read_reg.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit42.i

do.end.i.i40.i:                                   ; preds = %read_reg.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i37.i = zext i16 %add9.i to i32
  %dev.i.i38.i = getelementptr inbounds %struct.i2c_adapter, ptr %127, i32 0, i32 9
  %conv15.i.i39.i = zext i8 %129 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i38.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i39.i, i32 noundef %conv.i.i37.i) #10
  br label %read_reg.exit42.i

read_reg.exit42.i:                                ; preds = %do.end.i.i40.i, %read_reg.exit21.i.read_reg.exit42.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i23.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i22.i) #6
  %144 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %regoff.i, align 4
  %add14.i = add i16 %145, -3481
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %1, align 4
  %i2c.i45.i = getelementptr inbounds %struct.stv_base, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %i2c.i45.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %i2c.i45.i, align 4
  %adr.i46.i = getelementptr inbounds %struct.stv_base, ptr %147, i32 0, i32 1
  %150 = ptrtoint ptr %adr.i46.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %adr.i46.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i43.i) #6
  %152 = getelementptr inbounds [2 x i8], ptr %msg.i.i43.i, i32 0, i32 1
  %153 = lshr i16 %add14.i, 8
  %conv1.i.i47.i = trunc i16 %153 to i8
  %154 = ptrtoint ptr %msg.i.i43.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 %conv1.i.i47.i, ptr %msg.i.i43.i, align 1
  %conv3.i.i48.i = trunc i16 %add14.i to i8
  %155 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv3.i.i48.i, ptr %152, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i44.i) #6
  %156 = getelementptr inbounds i8, ptr %msgs.i.i44.i, i32 4
  %157 = call ptr @memset(ptr %156, i32 255, i32 16)
  %conv5.i.i49.i = zext i8 %151 to i16
  %158 = ptrtoint ptr %msgs.i.i44.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv5.i.i49.i, ptr %msgs.i.i44.i, align 4
  %flags.i.i50.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i44.i, i32 0, i32 1
  %159 = ptrtoint ptr %flags.i.i50.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 0, ptr %flags.i.i50.i, align 2
  %160 = ptrtoint ptr %156 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 2, ptr %156, align 4
  %buf.i.i51.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i44.i, i32 0, i32 3
  %161 = ptrtoint ptr %buf.i.i51.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %msg.i.i43.i, ptr %buf.i.i51.i, align 4
  %arrayinit.element6.i.i52.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i44.i, i32 1
  %162 = ptrtoint ptr %arrayinit.element6.i.i52.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv5.i.i49.i, ptr %arrayinit.element6.i.i52.i, align 4
  %flags9.i.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i44.i, i32 1, i32 1
  %163 = ptrtoint ptr %flags9.i.i53.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 1, ptr %flags9.i.i53.i, align 2
  %len10.i.i54.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i44.i, i32 1, i32 2
  %164 = ptrtoint ptr %len10.i.i54.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 1, ptr %len10.i.i54.i, align 4
  %buf12.i.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i44.i, i32 1, i32 3
  %165 = ptrtoint ptr %buf12.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %symb_freq0.i, ptr %buf12.i.i55.i, align 4
  %call.i.i56.i = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %msgs.i.i44.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i56.i)
  %cmp.not.i.i57.i = icmp eq i32 %call.i.i56.i, 2
  br i1 %cmp.not.i.i57.i, label %read_reg.exit42.i.read_reg.exit63.i_crit_edge, label %do.end.i.i61.i

read_reg.exit42.i.read_reg.exit63.i_crit_edge:    ; preds = %read_reg.exit42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit63.i

do.end.i.i61.i:                                   ; preds = %read_reg.exit42.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i58.i = zext i16 %add14.i to i32
  %dev.i.i59.i = getelementptr inbounds %struct.i2c_adapter, ptr %149, i32 0, i32 9
  %conv15.i.i60.i = zext i8 %151 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i59.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i60.i, i32 noundef %conv.i.i58.i) #10
  br label %read_reg.exit63.i

read_reg.exit63.i:                                ; preds = %do.end.i.i61.i, %read_reg.exit42.i.read_reg.exit63.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i44.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i43.i) #6
  %166 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %regoff.i, align 4
  %add19.i = add i16 %167, -3480
  %168 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %1, align 4
  %i2c.i66.i = getelementptr inbounds %struct.stv_base, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %i2c.i66.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %i2c.i66.i, align 4
  %adr.i67.i = getelementptr inbounds %struct.stv_base, ptr %169, i32 0, i32 1
  %172 = ptrtoint ptr %adr.i67.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %adr.i67.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i64.i) #6
  %174 = getelementptr inbounds [2 x i8], ptr %msg.i.i64.i, i32 0, i32 1
  %175 = lshr i16 %add19.i, 8
  %conv1.i.i68.i = trunc i16 %175 to i8
  %176 = ptrtoint ptr %msg.i.i64.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv1.i.i68.i, ptr %msg.i.i64.i, align 1
  %conv3.i.i69.i = trunc i16 %add19.i to i8
  %177 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv3.i.i69.i, ptr %174, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i65.i) #6
  %178 = getelementptr inbounds i8, ptr %msgs.i.i65.i, i32 4
  %179 = call ptr @memset(ptr %178, i32 255, i32 16)
  %conv5.i.i70.i = zext i8 %173 to i16
  %180 = ptrtoint ptr %msgs.i.i65.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv5.i.i70.i, ptr %msgs.i.i65.i, align 4
  %flags.i.i71.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i65.i, i32 0, i32 1
  %181 = ptrtoint ptr %flags.i.i71.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 0, ptr %flags.i.i71.i, align 2
  %182 = ptrtoint ptr %178 to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 2, ptr %178, align 4
  %buf.i.i72.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i65.i, i32 0, i32 3
  %183 = ptrtoint ptr %buf.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %msg.i.i64.i, ptr %buf.i.i72.i, align 4
  %arrayinit.element6.i.i73.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i65.i, i32 1
  %184 = ptrtoint ptr %arrayinit.element6.i.i73.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv5.i.i70.i, ptr %arrayinit.element6.i.i73.i, align 4
  %flags9.i.i74.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i65.i, i32 1, i32 1
  %185 = ptrtoint ptr %flags9.i.i74.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 1, ptr %flags9.i.i74.i, align 2
  %len10.i.i75.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i65.i, i32 1, i32 2
  %186 = ptrtoint ptr %len10.i.i75.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 1, ptr %len10.i.i75.i, align 4
  %buf12.i.i76.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i65.i, i32 1, i32 3
  %187 = ptrtoint ptr %buf12.i.i76.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %tim_offs2.i, ptr %buf12.i.i76.i, align 4
  %call.i.i77.i = call i32 @i2c_transfer(ptr noundef %171, ptr noundef nonnull %msgs.i.i65.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i77.i)
  %cmp.not.i.i78.i = icmp eq i32 %call.i.i77.i, 2
  br i1 %cmp.not.i.i78.i, label %read_reg.exit63.i.read_reg.exit84.i_crit_edge, label %do.end.i.i82.i

read_reg.exit63.i.read_reg.exit84.i_crit_edge:    ; preds = %read_reg.exit63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit84.i

do.end.i.i82.i:                                   ; preds = %read_reg.exit63.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i79.i = zext i16 %add19.i to i32
  %dev.i.i80.i = getelementptr inbounds %struct.i2c_adapter, ptr %171, i32 0, i32 9
  %conv15.i.i81.i = zext i8 %173 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i80.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i81.i, i32 noundef %conv.i.i79.i) #10
  br label %read_reg.exit84.i

read_reg.exit84.i:                                ; preds = %do.end.i.i82.i, %read_reg.exit63.i.read_reg.exit84.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i65.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i64.i) #6
  %188 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %regoff.i, align 4
  %add24.i = add i16 %189, -3479
  %190 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %1, align 4
  %i2c.i87.i = getelementptr inbounds %struct.stv_base, ptr %191, i32 0, i32 2
  %192 = ptrtoint ptr %i2c.i87.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %i2c.i87.i, align 4
  %adr.i88.i = getelementptr inbounds %struct.stv_base, ptr %191, i32 0, i32 1
  %194 = ptrtoint ptr %adr.i88.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %adr.i88.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i85.i) #6
  %196 = getelementptr inbounds [2 x i8], ptr %msg.i.i85.i, i32 0, i32 1
  %197 = lshr i16 %add24.i, 8
  %conv1.i.i89.i = trunc i16 %197 to i8
  %198 = ptrtoint ptr %msg.i.i85.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %conv1.i.i89.i, ptr %msg.i.i85.i, align 1
  %conv3.i.i90.i = trunc i16 %add24.i to i8
  %199 = ptrtoint ptr %196 to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 %conv3.i.i90.i, ptr %196, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i86.i) #6
  %200 = getelementptr inbounds i8, ptr %msgs.i.i86.i, i32 4
  %201 = call ptr @memset(ptr %200, i32 255, i32 16)
  %conv5.i.i91.i = zext i8 %195 to i16
  %202 = ptrtoint ptr %msgs.i.i86.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %conv5.i.i91.i, ptr %msgs.i.i86.i, align 4
  %flags.i.i92.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i86.i, i32 0, i32 1
  %203 = ptrtoint ptr %flags.i.i92.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 0, ptr %flags.i.i92.i, align 2
  %204 = ptrtoint ptr %200 to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 2, ptr %200, align 4
  %buf.i.i93.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i86.i, i32 0, i32 3
  %205 = ptrtoint ptr %buf.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %msg.i.i85.i, ptr %buf.i.i93.i, align 4
  %arrayinit.element6.i.i94.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i86.i, i32 1
  %206 = ptrtoint ptr %arrayinit.element6.i.i94.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %conv5.i.i91.i, ptr %arrayinit.element6.i.i94.i, align 4
  %flags9.i.i95.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i86.i, i32 1, i32 1
  %207 = ptrtoint ptr %flags9.i.i95.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 1, ptr %flags9.i.i95.i, align 2
  %len10.i.i96.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i86.i, i32 1, i32 2
  %208 = ptrtoint ptr %len10.i.i96.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 1, ptr %len10.i.i96.i, align 4
  %buf12.i.i97.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i86.i, i32 1, i32 3
  %209 = ptrtoint ptr %buf12.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %tim_offs1.i, ptr %buf12.i.i97.i, align 4
  %call.i.i98.i = call i32 @i2c_transfer(ptr noundef %193, ptr noundef nonnull %msgs.i.i86.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i98.i)
  %cmp.not.i.i99.i = icmp eq i32 %call.i.i98.i, 2
  br i1 %cmp.not.i.i99.i, label %read_reg.exit84.i.read_reg.exit105.i_crit_edge, label %do.end.i.i103.i

read_reg.exit84.i.read_reg.exit105.i_crit_edge:   ; preds = %read_reg.exit84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit105.i

do.end.i.i103.i:                                  ; preds = %read_reg.exit84.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i100.i = zext i16 %add24.i to i32
  %dev.i.i101.i = getelementptr inbounds %struct.i2c_adapter, ptr %193, i32 0, i32 9
  %conv15.i.i102.i = zext i8 %195 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i101.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i102.i, i32 noundef %conv.i.i100.i) #10
  br label %read_reg.exit105.i

read_reg.exit105.i:                               ; preds = %do.end.i.i103.i, %read_reg.exit84.i.read_reg.exit105.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i86.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i85.i) #6
  %210 = ptrtoint ptr %regoff.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %regoff.i, align 4
  %add29.i = add i16 %211, -3478
  %212 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %1, align 4
  %i2c.i108.i = getelementptr inbounds %struct.stv_base, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %i2c.i108.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %i2c.i108.i, align 4
  %adr.i109.i = getelementptr inbounds %struct.stv_base, ptr %213, i32 0, i32 1
  %216 = ptrtoint ptr %adr.i109.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %adr.i109.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i106.i) #6
  %218 = getelementptr inbounds [2 x i8], ptr %msg.i.i106.i, i32 0, i32 1
  %219 = lshr i16 %add29.i, 8
  %conv1.i.i110.i = trunc i16 %219 to i8
  %220 = ptrtoint ptr %msg.i.i106.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %conv1.i.i110.i, ptr %msg.i.i106.i, align 1
  %conv3.i.i111.i = trunc i16 %add29.i to i8
  %221 = ptrtoint ptr %218 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %conv3.i.i111.i, ptr %218, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i107.i) #6
  %222 = getelementptr inbounds i8, ptr %msgs.i.i107.i, i32 4
  %223 = call ptr @memset(ptr %222, i32 255, i32 16)
  %conv5.i.i112.i = zext i8 %217 to i16
  %224 = ptrtoint ptr %msgs.i.i107.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %conv5.i.i112.i, ptr %msgs.i.i107.i, align 4
  %flags.i.i113.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i107.i, i32 0, i32 1
  %225 = ptrtoint ptr %flags.i.i113.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 0, ptr %flags.i.i113.i, align 2
  %226 = ptrtoint ptr %222 to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 2, ptr %222, align 4
  %buf.i.i114.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i107.i, i32 0, i32 3
  %227 = ptrtoint ptr %buf.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %msg.i.i106.i, ptr %buf.i.i114.i, align 4
  %arrayinit.element6.i.i115.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i107.i, i32 1
  %228 = ptrtoint ptr %arrayinit.element6.i.i115.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 %conv5.i.i112.i, ptr %arrayinit.element6.i.i115.i, align 4
  %flags9.i.i116.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i107.i, i32 1, i32 1
  %229 = ptrtoint ptr %flags9.i.i116.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 1, ptr %flags9.i.i116.i, align 2
  %len10.i.i117.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i107.i, i32 1, i32 2
  %230 = ptrtoint ptr %len10.i.i117.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 1, ptr %len10.i.i117.i, align 4
  %buf12.i.i118.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i107.i, i32 1, i32 3
  %231 = ptrtoint ptr %buf12.i.i118.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %tim_offs0.i, ptr %buf12.i.i118.i, align 4
  %call.i.i119.i = call i32 @i2c_transfer(ptr noundef %215, ptr noundef nonnull %msgs.i.i107.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i119.i)
  %cmp.not.i.i120.i = icmp eq i32 %call.i.i119.i, 2
  br i1 %cmp.not.i.i120.i, label %read_reg.exit105.i.read_reg.exit126.i_crit_edge, label %do.end.i.i124.i

read_reg.exit105.i.read_reg.exit126.i_crit_edge:  ; preds = %read_reg.exit105.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit126.i

do.end.i.i124.i:                                  ; preds = %read_reg.exit105.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i121.i = zext i16 %add29.i to i32
  %dev.i.i122.i = getelementptr inbounds %struct.i2c_adapter, ptr %215, i32 0, i32 9
  %conv15.i.i123.i = zext i8 %217 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i122.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i123.i, i32 noundef %conv.i.i121.i) #10
  br label %read_reg.exit126.i

read_reg.exit126.i:                               ; preds = %do.end.i.i124.i, %read_reg.exit105.i.read_reg.exit126.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i107.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i106.i) #6
  %232 = ptrtoint ptr %symb_freq3.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %symb_freq3.i, align 1
  %conv32.i = zext i8 %233 to i32
  %shl.i = shl nuw i32 %conv32.i, 24
  %234 = ptrtoint ptr %symb_freq2.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %symb_freq2.i, align 1
  %conv33.i = zext i8 %235 to i32
  %shl34.i = shl nuw nsw i32 %conv33.i, 16
  %or.i = or i32 %shl34.i, %shl.i
  %236 = ptrtoint ptr %symb_freq1.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %symb_freq1.i, align 1
  %conv35.i = zext i8 %237 to i32
  %shl36.i = shl nuw nsw i32 %conv35.i, 8
  %or37.i = or i32 %or.i, %shl36.i
  %238 = ptrtoint ptr %symb_freq0.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %symb_freq0.i, align 1
  %conv38.i = zext i8 %239 to i32
  %or39.i = or i32 %or37.i, %conv38.i
  %240 = ptrtoint ptr %tim_offs2.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %tim_offs2.i, align 1
  %conv40.i = zext i8 %241 to i32
  %shl41.i = shl nuw nsw i32 %conv40.i, 16
  %242 = ptrtoint ptr %tim_offs1.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %tim_offs1.i, align 1
  %conv42.i = zext i8 %243 to i32
  %shl43.i = shl nuw nsw i32 %conv42.i, 8
  %or44.i = or i32 %shl43.i, %shl41.i
  %244 = ptrtoint ptr %tim_offs0.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %tim_offs0.i, align 1
  %conv45.i = zext i8 %245 to i32
  %or46.i = or i32 %or44.i, %conv45.i
  %246 = and i32 %conv40.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %cmp.not.i = icmp eq i32 %246, 0
  %or49.i = or i32 %or46.i, -16777216
  %spec.select.i = select i1 %cmp.not.i, i32 %or46.i, i32 %or49.i
  %conv51.i = zext i32 %or39.i to i64
  %247 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %1, align 4
  %mclk.i = getelementptr inbounds %struct.stv_base, ptr %248, i32 0, i32 7
  %249 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %mclk.i, align 4
  %conv52.i = zext i32 %250 to i64
  %mul.i = mul nuw i64 %conv52.i, %conv51.i
  %shr.i = lshr i64 %mul.i, 32
  %conv53.i = trunc i64 %shr.i to i32
  %conv55.i = sext i32 %spec.select.i to i64
  %mul56.i = mul nsw i64 %shr.i, %conv55.i
  %251 = lshr i64 %mul56.i, 29
  %conv58.i = trunc i64 %251 to i32
  %add59.i = add i32 %conv58.i, %conv53.i
  br label %get_cur_symbol_rate.exit

get_cur_symbol_rate.exit:                         ; preds = %read_reg.exit126.i, %if.then31.get_cur_symbol_rate.exit_crit_edge
  %symbolrate.0 = phi i32 [ 0, %if.then31.get_cur_symbol_rate.exit_crit_edge ], [ %add59.i, %read_reg.exit126.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tim_offs2.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tim_offs1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tim_offs0.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %symb_freq3.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %symb_freq2.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %symb_freq1.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %symb_freq0.i) #6
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %252 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %symbolrate.0, ptr %symbol_rate, align 4
  br label %if.end33

if.end33:                                         ; preds = %get_cur_symbol_rate.exit, %if.end27.if.end33_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_status(ptr nocapture noundef %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  %data.i89.i.i.i = alloca [3 x i8], align 1
  %msg.i90.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i1.i.i = alloca [3 x i8], align 1
  %msg.i.i2.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i3.i.i = alloca [2 x i8], align 1
  %msgs.i.i.i4.i.i = alloca [2 x %struct.i2c_msg], align 4
  %regs.i5.i.i = alloca [3 x i8], align 1
  %data.i87.i.i.i = alloca [3 x i8], align 1
  %msg.i88.i.i.i = alloca %struct.i2c_msg, align 4
  %data.i.i.i.i = alloca [3 x i8], align 1
  %msg.i.i.i.i768 = alloca %struct.i2c_msg, align 4
  %msg.i.i.i.i.i = alloca [2 x i8], align 1
  %msgs.i.i.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %regs.i.i.i = alloca [3 x i8], align 1
  %msg.i.i82.i.i = alloca [2 x i8], align 1
  %msgs.i.i83.i.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i61.i.i = alloca [2 x i8], align 1
  %msgs.i.i62.i.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i40.i.i = alloca [2 x i8], align 1
  %msgs.i.i41.i.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i.i.i = alloca [2 x i8], align 1
  %msgs.i.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data0.i.i = alloca i8, align 1
  %data1.i.i = alloca i8, align 1
  %msg.i.i42.i = alloca [2 x i8], align 1
  %msgs.i.i43.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i.i692 = alloca [2 x i8], align 1
  %msgs.i.i.i693 = alloca [2 x %struct.i2c_msg], align 4
  %reg.i = alloca [2 x i8], align 1
  %msg.i.i671 = alloca [2 x i8], align 1
  %msgs.i.i672 = alloca [2 x %struct.i2c_msg], align 4
  %data.i652 = alloca [3 x i8], align 1
  %msg.i653 = alloca %struct.i2c_msg, align 4
  %data.i633 = alloca [3 x i8], align 1
  %msg.i634 = alloca %struct.i2c_msg, align 4
  %data.i613 = alloca [3 x i8], align 1
  %msg.i614 = alloca %struct.i2c_msg, align 4
  %data.i593 = alloca [3 x i8], align 1
  %msg.i594 = alloca %struct.i2c_msg, align 4
  %data.i573 = alloca [3 x i8], align 1
  %msg.i574 = alloca %struct.i2c_msg, align 4
  %data.i553 = alloca [3 x i8], align 1
  %msg.i554 = alloca %struct.i2c_msg, align 4
  %msg.i.i532 = alloca [2 x i8], align 1
  %msgs.i.i533 = alloca [2 x %struct.i2c_msg], align 4
  %data.i512 = alloca [3 x i8], align 1
  %msg.i513 = alloca %struct.i2c_msg, align 4
  %msg.i.i.i481 = alloca [2 x i8], align 1
  %msgs.i.i.i482 = alloca [2 x %struct.i2c_msg], align 4
  %bbheader.i = alloca [2 x i8], align 1
  %msg.i.i460 = alloca [2 x i8], align 1
  %msgs.i.i461 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i439 = alloca [2 x i8], align 1
  %msgs.i.i440 = alloca [2 x %struct.i2c_msg], align 4
  %data.i419 = alloca [3 x i8], align 1
  %msg.i420 = alloca %struct.i2c_msg, align 4
  %data.i399 = alloca [3 x i8], align 1
  %msg.i400 = alloca %struct.i2c_msg, align 4
  %data.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %data.i81.i = alloca [3 x i8], align 1
  %msg.i82.i = alloca %struct.i2c_msg, align 4
  %data.i62.i = alloca [3 x i8], align 1
  %msg.i63.i = alloca %struct.i2c_msg, align 4
  %data.i42.i = alloca [3 x i8], align 1
  %msg.i43.i = alloca %struct.i2c_msg, align 4
  %data.i23.i = alloca [3 x i8], align 1
  %msg.i24.i = alloca %struct.i2c_msg, align 4
  %data.i3.i = alloca [3 x i8], align 1
  %msg.i4.i = alloca %struct.i2c_msg, align 4
  %data.i.i346 = alloca [3 x i8], align 1
  %msg.i.i347 = alloca %struct.i2c_msg, align 4
  %msg.i.i.i348 = alloca [2 x i8], align 1
  %msgs.i.i.i349 = alloca [2 x %struct.i2c_msg], align 4
  %tmp.i350 = alloca i8, align 1
  %msg.i.i1.i = alloca [2 x i8], align 1
  %msgs.i.i2.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i.i324 = alloca [2 x i8], align 1
  %msgs.i.i.i325 = alloca [2 x %struct.i2c_msg], align 4
  %tmp.i326 = alloca i8, align 1
  %data.i84.i = alloca [3 x i8], align 1
  %msg.i85.i = alloca %struct.i2c_msg, align 4
  %data.i64.i = alloca [3 x i8], align 1
  %msg.i65.i = alloca %struct.i2c_msg, align 4
  %data.i44.i = alloca [3 x i8], align 1
  %msg.i45.i = alloca %struct.i2c_msg, align 4
  %data.i24.i = alloca [3 x i8], align 1
  %msg.i25.i = alloca %struct.i2c_msg, align 4
  %data.i4.i = alloca [3 x i8], align 1
  %msg.i5.i = alloca %struct.i2c_msg, align 4
  %data.i.i = alloca [3 x i8], align 1
  %msg.i.i314 = alloca %struct.i2c_msg, align 4
  %msg.i.i.i = alloca [2 x i8], align 1
  %msgs.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  %tmp.i = alloca [2 x i8], align 1
  %msg.i.i293 = alloca [2 x i8], align 1
  %msgs.i.i294 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i = alloca [2 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %dmd_state = alloca i8, align 1
  %dstatus = alloca i8, align 1
  %pdelstatus = alloca i8, align 1
  %vstatus = alloca i8, align 1
  %tmp = alloca i8, align 1
  %tmp169 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dmd_state) #6
  %2 = ptrtoint ptr %dmd_state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %dmd_state, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dstatus) #6
  %3 = ptrtoint ptr %dstatus to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %dstatus, align 1
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %status, align 4
  %regoff = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %regoff, align 4
  %add = add i16 %6, -3557
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %i2c.i = getelementptr inbounds %struct.stv_base, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c.i, align 4
  %adr.i = getelementptr inbounds %struct.stv_base, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #6
  %13 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %14 = lshr i16 %add, 8
  %conv1.i.i = trunc i16 %14 to i8
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1.i.i, ptr %msg.i.i, align 1
  %conv3.i.i = trunc i16 %add to i8
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.i.i, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %17 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 255, i32 16)
  %conv5.i.i = zext i8 %12 to i16
  %19 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv5.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i.i, align 2
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %17, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i, ptr %buf.i.i, align 4
  %arrayinit.element6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %23 = ptrtoint ptr %arrayinit.element6.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv5.i.i, ptr %arrayinit.element6.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %24 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %flags9.i.i, align 2
  %len10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %25 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %len10.i.i, align 4
  %buf12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %26 = ptrtoint ptr %buf12.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dmd_state, ptr %buf12.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %10, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %entry.read_reg.exit_crit_edge, label %do.end.i.i

entry.read_reg.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i16 %add to i32
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 9
  %conv15.i.i = zext i8 %12 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i, i32 noundef %conv.i.i) #10
  br label %read_reg.exit

read_reg.exit:                                    ; preds = %do.end.i.i, %entry.read_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #6
  %27 = ptrtoint ptr %dmd_state to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dmd_state, align 1
  %29 = and i8 %28, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not = icmp eq i8 %29, 0
  br i1 %tobool.not, label %read_reg.exit.if.then17_crit_edge, label %if.then

read_reg.exit.if.then17_crit_edge:                ; preds = %read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then:                                          ; preds = %read_reg.exit
  %30 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %regoff, align 4
  %add5 = add i16 %31, -3566
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %i2c.i295 = getelementptr inbounds %struct.stv_base, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %i2c.i295 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c.i295, align 4
  %adr.i296 = getelementptr inbounds %struct.stv_base, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %adr.i296 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %adr.i296, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i293) #6
  %38 = getelementptr inbounds [2 x i8], ptr %msg.i.i293, i32 0, i32 1
  %39 = lshr i16 %add5, 8
  %conv1.i.i297 = trunc i16 %39 to i8
  %40 = ptrtoint ptr %msg.i.i293 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv1.i.i297, ptr %msg.i.i293, align 1
  %conv3.i.i298 = trunc i16 %add5 to i8
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv3.i.i298, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i294) #6
  %42 = getelementptr inbounds i8, ptr %msgs.i.i294, i32 4
  %43 = call ptr @memset(ptr %42, i32 255, i32 16)
  %conv5.i.i299 = zext i8 %37 to i16
  %44 = ptrtoint ptr %msgs.i.i294 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv5.i.i299, ptr %msgs.i.i294, align 4
  %flags.i.i300 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i294, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i.i300 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i.i300, align 2
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 2, ptr %42, align 4
  %buf.i.i301 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i294, i32 0, i32 3
  %47 = ptrtoint ptr %buf.i.i301 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i293, ptr %buf.i.i301, align 4
  %arrayinit.element6.i.i302 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i294, i32 1
  %48 = ptrtoint ptr %arrayinit.element6.i.i302 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv5.i.i299, ptr %arrayinit.element6.i.i302, align 4
  %flags9.i.i303 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i294, i32 1, i32 1
  %49 = ptrtoint ptr %flags9.i.i303 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %flags9.i.i303, align 2
  %len10.i.i304 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i294, i32 1, i32 2
  %50 = ptrtoint ptr %len10.i.i304 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %len10.i.i304, align 4
  %buf12.i.i305 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i294, i32 1, i32 3
  %51 = ptrtoint ptr %buf12.i.i305 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %dstatus, ptr %buf12.i.i305, align 4
  %call.i.i306 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msgs.i.i294, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i306)
  %cmp.not.i.i307 = icmp eq i32 %call.i.i306, 2
  br i1 %cmp.not.i.i307, label %if.then.read_reg.exit313_crit_edge, label %do.end.i.i311

if.then.read_reg.exit313_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit313

do.end.i.i311:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i308 = zext i16 %add5 to i32
  %dev.i.i309 = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 9
  %conv15.i.i310 = zext i8 %37 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i309, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i310, i32 noundef %conv.i.i308) #10
  br label %read_reg.exit313

read_reg.exit313:                                 ; preds = %do.end.i.i311, %if.then.read_reg.exit313_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i294) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i293) #6
  %52 = ptrtoint ptr %dstatus to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dstatus, align 1
  %54 = and i8 %53, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool10.not = icmp eq i8 %54, 0
  br i1 %tobool10.not, label %read_reg.exit313.if.then17_crit_edge, label %if.end15

read_reg.exit313.if.then17_crit_edge:             ; preds = %read_reg.exit313
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.end15:                                         ; preds = %read_reg.exit313
  %55 = ptrtoint ptr %dmd_state to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dmd_state, align 1
  %57 = and i8 %56, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool14.not = icmp eq i8 %57, 0
  %58 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %status, align 4
  %or = or i32 %59, 15
  store i32 %or, ptr %status, align 4
  %receive_mode = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 13
  %60 = ptrtoint ptr %receive_mode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %receive_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp29 = icmp eq i32 %61, 0
  br i1 %cmp29, label %if.then31, label %if.end15.if.end55_crit_edge

if.end15.if.end55_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then17:                                        ; preds = %read_reg.exit313.if.then17_crit_edge, %read_reg.exit.if.then17_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #6
  %62 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %tmp.i, align 1, !annotation !69
  %63 = getelementptr inbounds [2 x i8], ptr %tmp.i, i32 0, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %63, align 1, !annotation !69
  %65 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %regoff, align 4
  %add.i = add i16 %66, -3456
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %i2c.i.i = getelementptr inbounds %struct.stv_base, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %i2c.i.i, align 4
  %adr.i.i = getelementptr inbounds %struct.stv_base, ptr %68, i32 0, i32 1
  %71 = ptrtoint ptr %adr.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %adr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i) #6
  %73 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i, i32 0, i32 1
  %74 = lshr i16 %add.i, 8
  %conv1.i.i.i = trunc i16 %74 to i8
  %75 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv1.i.i.i, ptr %msg.i.i.i, align 1
  %conv3.i.i.i = trunc i16 %add.i to i8
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv3.i.i.i, ptr %73, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  %77 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %78 = call ptr @memset(ptr %77, i32 255, i32 16)
  %conv5.i.i.i = zext i8 %72 to i16
  %79 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv5.i.i.i, ptr %msgs.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %flags.i.i.i, align 2
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 2, ptr %77, align 4
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %82 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %msg.i.i.i, ptr %buf.i.i.i, align 4
  %arrayinit.element6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1
  %83 = ptrtoint ptr %arrayinit.element6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv5.i.i.i, ptr %arrayinit.element6.i.i.i, align 4
  %flags9.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 1
  %84 = ptrtoint ptr %flags9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %flags9.i.i.i, align 2
  %len10.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 2
  %85 = ptrtoint ptr %len10.i.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 2, ptr %len10.i.i.i, align 4
  %buf12.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 3
  %86 = ptrtoint ptr %buf12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %tmp.i, ptr %buf12.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msgs.i.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i.i, label %if.then17.read_regs.exit.i_crit_edge, label %do.end.i.i.i

if.then17.read_regs.exit.i_crit_edge:             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_regs.exit.i

do.end.i.i.i:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i = zext i16 %add.i to i32
  %dev.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %70, i32 0, i32 9
  %conv15.i.i.i = zext i8 %72 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i.i, i32 noundef %conv.i.i.i) #10
  br label %read_regs.exit.i

read_regs.exit.i:                                 ; preds = %do.end.i.i.i, %if.then17.read_regs.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i) #6
  %87 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %tmp.i, align 1
  %conv2.i = zext i8 %88 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %89 = ptrtoint ptr %63 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %63, align 1
  %conv4.i = zext i8 %90 to i32
  %or.i = or i32 %shl.i, %conv4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8780, i32 %or.i)
  %cmp.not.i.i315 = icmp ult i32 %or.i, 8780
  br i1 %cmp.not.i.i315, label %if.else.i.i, label %read_regs.exit.i.table_lookup.exit.i_crit_edge

read_regs.exit.i.table_lookup.exit.i_crit_edge:   ; preds = %read_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %table_lookup.exit.i

if.else.i.i:                                      ; preds = %read_regs.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4236, i32 %or.i)
  %cmp6.not.i.i = icmp ugt i32 %or.i, 4236
  br i1 %cmp6.not.i.i, label %if.else.i.i.while.body.i.i_crit_edge, label %if.else.i.i.table_lookup.exit.i_crit_edge

if.else.i.i.table_lookup.exit.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %table_lookup.exit.i

if.else.i.i.while.body.i.i_crit_edge:             ; preds = %if.else.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.else.i.i.while.body.i.i_crit_edge
  %imax.084.i.i = phi i32 [ %imax.1.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 4, %if.else.i.i.while.body.i.i_crit_edge ]
  %imin.083.i.i = phi i32 [ %imin.1.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ 0, %if.else.i.i.while.body.i.i_crit_edge ]
  %add.i.i = add i32 %imin.083.i.i, %imax.084.i.i
  %div.i.i = sdiv i32 %add.i.i, 2
  %reg_value17.i.i = getelementptr %struct.slookup, ptr @set_vth.vthlookup_table, i32 %imin.083.i.i, i32 1
  %91 = ptrtoint ptr %reg_value17.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %reg_value17.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %or.i)
  %cmp18.not.i.i = icmp ult i32 %92, %or.i
  br i1 %cmp18.not.i.i, label %while.body.i.i.if.else25.i.i_crit_edge, label %land.lhs.true.i.i

while.body.i.i.if.else25.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else25.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %reg_value21.i.i = getelementptr %struct.slookup, ptr @set_vth.vthlookup_table, i32 %div.i.i, i32 1
  %93 = ptrtoint ptr %reg_value21.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %reg_value21.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %or.i)
  %cmp22.not.i.i = icmp ugt i32 %94, %or.i
  br i1 %cmp22.not.i.i, label %land.lhs.true.i.i.if.else25.i.i_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i.if.else25.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else25.i.i

if.else25.i.i:                                    ; preds = %land.lhs.true.i.i.if.else25.i.i_crit_edge, %while.body.i.i.if.else25.i.i_crit_edge
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else25.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge
  %imin.1.i.i = phi i32 [ %div.i.i, %if.else25.i.i ], [ %imin.083.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  %imax.1.i.i = phi i32 [ %imax.084.i.i, %if.else25.i.i ], [ %div.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  %sub13.i.i = sub i32 %imax.1.i.i, %imin.1.i.i
  %cmp14.i.i = icmp sgt i32 %sub13.i.i, 1
  br i1 %cmp14.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %while.end.i.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %if.end.i.i
  %reg_value27.i.i = getelementptr %struct.slookup, ptr @set_vth.vthlookup_table, i32 %imax.1.i.i, i32 1
  %95 = ptrtoint ptr %reg_value27.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %reg_value27.i.i, align 4
  %arrayidx28.i.i = getelementptr %struct.slookup, ptr @set_vth.vthlookup_table, i32 %imin.1.i.i
  %reg_value29.i.i = getelementptr %struct.slookup, ptr @set_vth.vthlookup_table, i32 %imin.1.i.i, i32 1
  %97 = ptrtoint ptr %reg_value29.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %reg_value29.i.i, align 4
  %99 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx28.i.i, align 4
  %conv33.i.i = sext i16 %100 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %98)
  %cmp34.not.i.i = icmp eq i32 %96, %98
  br i1 %cmp34.not.i.i, label %while.end.i.i.table_lookup.exit.i_crit_edge, label %if.then36.i.i

while.end.i.i.table_lookup.exit.i_crit_edge:      ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %table_lookup.exit.i

if.then36.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub30.i.i = sub i32 %96, %98
  %arrayidx26.i.i = getelementptr %struct.slookup, ptr @set_vth.vthlookup_table, i32 %imax.1.i.i
  %sub39.i.i = sub i32 %or.i, %98
  %101 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx26.i.i, align 4
  %conv42.i.i = sext i16 %102 to i32
  %sub46.i.i = sub nsw i32 %conv42.i.i, %conv33.i.i
  %mul.i.i = mul i32 %sub46.i.i, %sub39.i.i
  %div47.i.i = sdiv i32 %mul.i.i, %sub30.i.i
  %add48.i.i = add i32 %div47.i.i, %conv33.i.i
  br label %table_lookup.exit.i

table_lookup.exit.i:                              ; preds = %if.then36.i.i, %while.end.i.i.table_lookup.exit.i_crit_edge, %if.else.i.i.table_lookup.exit.i_crit_edge, %read_regs.exit.i.table_lookup.exit.i_crit_edge
  %value.0.i.i = phi i32 [ %add48.i.i, %if.then36.i.i ], [ %conv33.i.i, %while.end.i.i.table_lookup.exit.i_crit_edge ], [ 250, %read_regs.exit.i.table_lookup.exit.i_crit_edge ], [ 5, %if.else.i.i.table_lookup.exit.i_crit_edge ]
  %conv14.i = trunc i32 %value.0.i.i to i8
  %arrayidx10.i = getelementptr %struct.stv, ptr %1, i32 0, i32 31, i32 0
  %103 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx10.i, align 1
  %conv11.i = zext i8 %104 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %value.0.i.i, i32 %conv11.i)
  %cmp12.i = icmp slt i32 %value.0.i.i, %conv11.i
  br i1 %cmp12.i, label %if.then.i, label %table_lookup.exit.i.for.inc.i_crit_edge

table_lookup.exit.i.for.inc.i_crit_edge:          ; preds = %table_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %table_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv14.i, ptr %arrayidx10.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %table_lookup.exit.i.for.inc.i_crit_edge
  %arrayidx10.1.i = getelementptr %struct.stv, ptr %1, i32 0, i32 31, i32 1
  %106 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx10.1.i, align 1
  %conv11.1.i = zext i8 %107 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %value.0.i.i, i32 %conv11.1.i)
  %cmp12.1.i = icmp slt i32 %value.0.i.i, %conv11.1.i
  br i1 %cmp12.1.i, label %if.then.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv14.i, ptr %arrayidx10.1.i, align 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx10.2.i = getelementptr %struct.stv, ptr %1, i32 0, i32 31, i32 2
  %109 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx10.2.i, align 1
  %conv11.2.i = zext i8 %110 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %value.0.i.i, i32 %conv11.2.i)
  %cmp12.2.i = icmp slt i32 %value.0.i.i, %conv11.2.i
  br i1 %cmp12.2.i, label %if.then.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv14.i, ptr %arrayidx10.2.i, align 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx10.3.i = getelementptr %struct.stv, ptr %1, i32 0, i32 31, i32 3
  %112 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx10.3.i, align 1
  %conv11.3.i = zext i8 %113 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %value.0.i.i, i32 %conv11.3.i)
  %cmp12.3.i = icmp slt i32 %value.0.i.i, %conv11.3.i
  br i1 %cmp12.3.i, label %if.then.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv14.i, ptr %arrayidx10.3.i, align 1
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx10.4.i = getelementptr %struct.stv, ptr %1, i32 0, i32 31, i32 4
  %115 = ptrtoint ptr %arrayidx10.4.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx10.4.i, align 1
  %conv11.4.i = zext i8 %116 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %value.0.i.i, i32 %conv11.4.i)
  %cmp12.4.i = icmp slt i32 %value.0.i.i, %conv11.4.i
  br i1 %cmp12.4.i, label %if.then.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %arrayidx10.4.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv14.i, ptr %arrayidx10.4.i, align 1
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx10.5.i = getelementptr %struct.stv, ptr %1, i32 0, i32 31, i32 5
  %118 = ptrtoint ptr %arrayidx10.5.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx10.5.i, align 1
  %conv11.5.i = zext i8 %119 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %value.0.i.i, i32 %conv11.5.i)
  %cmp12.5.i = icmp slt i32 %value.0.i.i, %conv11.5.i
  br i1 %cmp12.5.i, label %if.then.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %120 = ptrtoint ptr %arrayidx10.5.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv14.i, ptr %arrayidx10.5.i, align 1
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %for.inc.4.i.for.inc.5.i_crit_edge
  %121 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %regoff, align 4
  %add20.i = add i16 %122, -3276
  %123 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx10.i, align 1
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 4
  %i2c.i1.i = getelementptr inbounds %struct.stv_base, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %i2c.i1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %i2c.i1.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #6
  %129 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %130 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %131 = lshr i16 %add20.i, 8
  %conv1.i.i316 = trunc i16 %131 to i8
  %132 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv1.i.i316, ptr %data.i.i, align 1
  %conv3.i.i317 = trunc i16 %add20.i to i8
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv3.i.i317, ptr %129, align 1
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %124, ptr %130, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i314) #6
  %135 = getelementptr inbounds i8, ptr %msg.i.i314, i32 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 262143, ptr %135, align 4
  %adr.i2.i = getelementptr inbounds %struct.stv_base, ptr %126, i32 0, i32 1
  %137 = ptrtoint ptr %adr.i2.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %adr.i2.i, align 4
  %conv6.i.i = zext i8 %138 to i16
  %139 = ptrtoint ptr %msg.i.i314 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %conv6.i.i, ptr %msg.i.i314, align 4
  %flags.i.i318 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i314, i32 0, i32 1
  %140 = ptrtoint ptr %flags.i.i318 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %flags.i.i318, align 2
  %buf.i.i319 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i314, i32 0, i32 3
  %141 = ptrtoint ptr %buf.i.i319 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %data.i.i, ptr %buf.i.i319, align 4
  %call.i.i320 = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %msg.i.i314, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i320)
  %cmp.not.i3.i = icmp eq i32 %call.i.i320, 1
  br i1 %cmp.not.i3.i, label %for.inc.5.i.write_reg.exit.i_crit_edge, label %do.end.i.i323

for.inc.5.i.write_reg.exit.i_crit_edge:           ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit.i

do.end.i.i323:                                    ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i321 = zext i16 %add20.i to i32
  %dev.i.i322 = getelementptr inbounds %struct.i2c_adapter, ptr %128, i32 0, i32 9
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %1, align 4
  %adr9.i.i = getelementptr inbounds %struct.stv_base, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %adr9.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %adr9.i.i, align 4
  %conv10.i.i = zext i8 %145 to i32
  %conv12.i.i = zext i8 %124 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i322, ptr noundef nonnull @.str.14, i32 noundef %conv10.i.i, i32 noundef %conv.i.i321, i32 noundef %conv12.i.i) #10
  br label %write_reg.exit.i

write_reg.exit.i:                                 ; preds = %do.end.i.i323, %for.inc.5.i.write_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i314) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #6
  %146 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %regoff, align 4
  %add29.i = add i16 %147, -3275
  %148 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx10.1.i, align 1
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %1, align 4
  %i2c.i6.i = getelementptr inbounds %struct.stv_base, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %i2c.i6.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %i2c.i6.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i4.i) #6
  %154 = getelementptr inbounds [3 x i8], ptr %data.i4.i, i32 0, i32 1
  %155 = getelementptr inbounds [3 x i8], ptr %data.i4.i, i32 0, i32 2
  %156 = lshr i16 %add29.i, 8
  %conv1.i7.i = trunc i16 %156 to i8
  %157 = ptrtoint ptr %data.i4.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv1.i7.i, ptr %data.i4.i, align 1
  %conv3.i8.i = trunc i16 %add29.i to i8
  %158 = ptrtoint ptr %154 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %conv3.i8.i, ptr %154, align 1
  %159 = ptrtoint ptr %155 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %149, ptr %155, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i5.i) #6
  %160 = getelementptr inbounds i8, ptr %msg.i5.i, i32 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 262143, ptr %160, align 4
  %adr.i9.i = getelementptr inbounds %struct.stv_base, ptr %151, i32 0, i32 1
  %162 = ptrtoint ptr %adr.i9.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %adr.i9.i, align 4
  %conv6.i10.i = zext i8 %163 to i16
  %164 = ptrtoint ptr %msg.i5.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv6.i10.i, ptr %msg.i5.i, align 4
  %flags.i11.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5.i, i32 0, i32 1
  %165 = ptrtoint ptr %flags.i11.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 0, ptr %flags.i11.i, align 2
  %buf.i13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i5.i, i32 0, i32 3
  %166 = ptrtoint ptr %buf.i13.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %data.i4.i, ptr %buf.i13.i, align 4
  %call.i14.i = call i32 @i2c_transfer(ptr noundef %153, ptr noundef nonnull %msg.i5.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i14.i)
  %cmp.not.i15.i = icmp eq i32 %call.i14.i, 1
  br i1 %cmp.not.i15.i, label %write_reg.exit.i.write_reg.exit23.i_crit_edge, label %do.end.i21.i

write_reg.exit.i.write_reg.exit23.i_crit_edge:    ; preds = %write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit23.i

do.end.i21.i:                                     ; preds = %write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i16.i = zext i16 %add29.i to i32
  %dev.i17.i = getelementptr inbounds %struct.i2c_adapter, ptr %153, i32 0, i32 9
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %1, align 4
  %adr9.i18.i = getelementptr inbounds %struct.stv_base, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %adr9.i18.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %adr9.i18.i, align 4
  %conv10.i19.i = zext i8 %170 to i32
  %conv12.i20.i = zext i8 %149 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i17.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i19.i, i32 noundef %conv.i16.i, i32 noundef %conv12.i20.i) #10
  br label %write_reg.exit23.i

write_reg.exit23.i:                               ; preds = %do.end.i21.i, %write_reg.exit.i.write_reg.exit23.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i5.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i4.i) #6
  %171 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %regoff, align 4
  %add37.i = add i16 %172, -3274
  %173 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx10.2.i, align 1
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %1, align 4
  %i2c.i26.i = getelementptr inbounds %struct.stv_base, ptr %176, i32 0, i32 2
  %177 = ptrtoint ptr %i2c.i26.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %i2c.i26.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i24.i) #6
  %179 = getelementptr inbounds [3 x i8], ptr %data.i24.i, i32 0, i32 1
  %180 = getelementptr inbounds [3 x i8], ptr %data.i24.i, i32 0, i32 2
  %181 = lshr i16 %add37.i, 8
  %conv1.i27.i = trunc i16 %181 to i8
  %182 = ptrtoint ptr %data.i24.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %conv1.i27.i, ptr %data.i24.i, align 1
  %conv3.i28.i = trunc i16 %add37.i to i8
  %183 = ptrtoint ptr %179 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %conv3.i28.i, ptr %179, align 1
  %184 = ptrtoint ptr %180 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %174, ptr %180, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i25.i) #6
  %185 = getelementptr inbounds i8, ptr %msg.i25.i, i32 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 262143, ptr %185, align 4
  %adr.i29.i = getelementptr inbounds %struct.stv_base, ptr %176, i32 0, i32 1
  %187 = ptrtoint ptr %adr.i29.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %adr.i29.i, align 4
  %conv6.i30.i = zext i8 %188 to i16
  %189 = ptrtoint ptr %msg.i25.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv6.i30.i, ptr %msg.i25.i, align 4
  %flags.i31.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25.i, i32 0, i32 1
  %190 = ptrtoint ptr %flags.i31.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %flags.i31.i, align 2
  %buf.i33.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i25.i, i32 0, i32 3
  %191 = ptrtoint ptr %buf.i33.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %data.i24.i, ptr %buf.i33.i, align 4
  %call.i34.i = call i32 @i2c_transfer(ptr noundef %178, ptr noundef nonnull %msg.i25.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i34.i)
  %cmp.not.i35.i = icmp eq i32 %call.i34.i, 1
  br i1 %cmp.not.i35.i, label %write_reg.exit23.i.write_reg.exit43.i_crit_edge, label %do.end.i41.i

write_reg.exit23.i.write_reg.exit43.i_crit_edge:  ; preds = %write_reg.exit23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit43.i

do.end.i41.i:                                     ; preds = %write_reg.exit23.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i36.i = zext i16 %add37.i to i32
  %dev.i37.i = getelementptr inbounds %struct.i2c_adapter, ptr %178, i32 0, i32 9
  %192 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %1, align 4
  %adr9.i38.i = getelementptr inbounds %struct.stv_base, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %adr9.i38.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %adr9.i38.i, align 4
  %conv10.i39.i = zext i8 %195 to i32
  %conv12.i40.i = zext i8 %174 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i37.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i39.i, i32 noundef %conv.i36.i, i32 noundef %conv12.i40.i) #10
  br label %write_reg.exit43.i

write_reg.exit43.i:                               ; preds = %do.end.i41.i, %write_reg.exit23.i.write_reg.exit43.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i25.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i24.i) #6
  %196 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %regoff, align 4
  %add45.i = add i16 %197, -3273
  %198 = ptrtoint ptr %arrayidx10.3.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx10.3.i, align 1
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %1, align 4
  %i2c.i46.i = getelementptr inbounds %struct.stv_base, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %i2c.i46.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %i2c.i46.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i44.i) #6
  %204 = getelementptr inbounds [3 x i8], ptr %data.i44.i, i32 0, i32 1
  %205 = getelementptr inbounds [3 x i8], ptr %data.i44.i, i32 0, i32 2
  %206 = lshr i16 %add45.i, 8
  %conv1.i47.i = trunc i16 %206 to i8
  %207 = ptrtoint ptr %data.i44.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %conv1.i47.i, ptr %data.i44.i, align 1
  %conv3.i48.i = trunc i16 %add45.i to i8
  %208 = ptrtoint ptr %204 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 %conv3.i48.i, ptr %204, align 1
  %209 = ptrtoint ptr %205 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 %199, ptr %205, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i45.i) #6
  %210 = getelementptr inbounds i8, ptr %msg.i45.i, i32 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 262143, ptr %210, align 4
  %adr.i49.i = getelementptr inbounds %struct.stv_base, ptr %201, i32 0, i32 1
  %212 = ptrtoint ptr %adr.i49.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %adr.i49.i, align 4
  %conv6.i50.i = zext i8 %213 to i16
  %214 = ptrtoint ptr %msg.i45.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %conv6.i50.i, ptr %msg.i45.i, align 4
  %flags.i51.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45.i, i32 0, i32 1
  %215 = ptrtoint ptr %flags.i51.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 0, ptr %flags.i51.i, align 2
  %buf.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i45.i, i32 0, i32 3
  %216 = ptrtoint ptr %buf.i53.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %data.i44.i, ptr %buf.i53.i, align 4
  %call.i54.i = call i32 @i2c_transfer(ptr noundef %203, ptr noundef nonnull %msg.i45.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i54.i)
  %cmp.not.i55.i = icmp eq i32 %call.i54.i, 1
  br i1 %cmp.not.i55.i, label %write_reg.exit43.i.write_reg.exit63.i_crit_edge, label %do.end.i61.i

write_reg.exit43.i.write_reg.exit63.i_crit_edge:  ; preds = %write_reg.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit63.i

do.end.i61.i:                                     ; preds = %write_reg.exit43.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i56.i = zext i16 %add45.i to i32
  %dev.i57.i = getelementptr inbounds %struct.i2c_adapter, ptr %203, i32 0, i32 9
  %217 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %1, align 4
  %adr9.i58.i = getelementptr inbounds %struct.stv_base, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %adr9.i58.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %adr9.i58.i, align 4
  %conv10.i59.i = zext i8 %220 to i32
  %conv12.i60.i = zext i8 %199 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i57.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i59.i, i32 noundef %conv.i56.i, i32 noundef %conv12.i60.i) #10
  br label %write_reg.exit63.i

write_reg.exit63.i:                               ; preds = %do.end.i61.i, %write_reg.exit43.i.write_reg.exit63.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i45.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i44.i) #6
  %221 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %regoff, align 4
  %add53.i = add i16 %222, -3272
  %223 = ptrtoint ptr %arrayidx10.4.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx10.4.i, align 1
  %225 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %1, align 4
  %i2c.i66.i = getelementptr inbounds %struct.stv_base, ptr %226, i32 0, i32 2
  %227 = ptrtoint ptr %i2c.i66.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %i2c.i66.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i64.i) #6
  %229 = getelementptr inbounds [3 x i8], ptr %data.i64.i, i32 0, i32 1
  %230 = getelementptr inbounds [3 x i8], ptr %data.i64.i, i32 0, i32 2
  %231 = lshr i16 %add53.i, 8
  %conv1.i67.i = trunc i16 %231 to i8
  %232 = ptrtoint ptr %data.i64.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %conv1.i67.i, ptr %data.i64.i, align 1
  %conv3.i68.i = trunc i16 %add53.i to i8
  %233 = ptrtoint ptr %229 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %conv3.i68.i, ptr %229, align 1
  %234 = ptrtoint ptr %230 to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %224, ptr %230, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i65.i) #6
  %235 = getelementptr inbounds i8, ptr %msg.i65.i, i32 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 262143, ptr %235, align 4
  %adr.i69.i = getelementptr inbounds %struct.stv_base, ptr %226, i32 0, i32 1
  %237 = ptrtoint ptr %adr.i69.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %adr.i69.i, align 4
  %conv6.i70.i = zext i8 %238 to i16
  %239 = ptrtoint ptr %msg.i65.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %conv6.i70.i, ptr %msg.i65.i, align 4
  %flags.i71.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i65.i, i32 0, i32 1
  %240 = ptrtoint ptr %flags.i71.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 0, ptr %flags.i71.i, align 2
  %buf.i73.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i65.i, i32 0, i32 3
  %241 = ptrtoint ptr %buf.i73.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %data.i64.i, ptr %buf.i73.i, align 4
  %call.i74.i = call i32 @i2c_transfer(ptr noundef %228, ptr noundef nonnull %msg.i65.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i74.i)
  %cmp.not.i75.i = icmp eq i32 %call.i74.i, 1
  br i1 %cmp.not.i75.i, label %write_reg.exit63.i.write_reg.exit83.i_crit_edge, label %do.end.i81.i

write_reg.exit63.i.write_reg.exit83.i_crit_edge:  ; preds = %write_reg.exit63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit83.i

do.end.i81.i:                                     ; preds = %write_reg.exit63.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i76.i = zext i16 %add53.i to i32
  %dev.i77.i = getelementptr inbounds %struct.i2c_adapter, ptr %228, i32 0, i32 9
  %242 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %1, align 4
  %adr9.i78.i = getelementptr inbounds %struct.stv_base, ptr %243, i32 0, i32 1
  %244 = ptrtoint ptr %adr9.i78.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %adr9.i78.i, align 4
  %conv10.i79.i = zext i8 %245 to i32
  %conv12.i80.i = zext i8 %224 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i77.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i79.i, i32 noundef %conv.i76.i, i32 noundef %conv12.i80.i) #10
  br label %write_reg.exit83.i

write_reg.exit83.i:                               ; preds = %do.end.i81.i, %write_reg.exit63.i.write_reg.exit83.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i65.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i64.i) #6
  %246 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %regoff, align 4
  %add61.i = add i16 %247, -3271
  %248 = ptrtoint ptr %arrayidx10.5.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx10.5.i, align 1
  %250 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %1, align 4
  %i2c.i86.i = getelementptr inbounds %struct.stv_base, ptr %251, i32 0, i32 2
  %252 = ptrtoint ptr %i2c.i86.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %i2c.i86.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i84.i) #6
  %254 = getelementptr inbounds [3 x i8], ptr %data.i84.i, i32 0, i32 1
  %255 = getelementptr inbounds [3 x i8], ptr %data.i84.i, i32 0, i32 2
  %256 = lshr i16 %add61.i, 8
  %conv1.i87.i = trunc i16 %256 to i8
  %257 = ptrtoint ptr %data.i84.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %conv1.i87.i, ptr %data.i84.i, align 1
  %conv3.i88.i = trunc i16 %add61.i to i8
  %258 = ptrtoint ptr %254 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 %conv3.i88.i, ptr %254, align 1
  %259 = ptrtoint ptr %255 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 %249, ptr %255, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i85.i) #6
  %260 = getelementptr inbounds i8, ptr %msg.i85.i, i32 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 262143, ptr %260, align 4
  %adr.i89.i = getelementptr inbounds %struct.stv_base, ptr %251, i32 0, i32 1
  %262 = ptrtoint ptr %adr.i89.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %adr.i89.i, align 4
  %conv6.i90.i = zext i8 %263 to i16
  %264 = ptrtoint ptr %msg.i85.i to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 %conv6.i90.i, ptr %msg.i85.i, align 4
  %flags.i91.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i85.i, i32 0, i32 1
  %265 = ptrtoint ptr %flags.i91.i to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 0, ptr %flags.i91.i, align 2
  %buf.i93.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i85.i, i32 0, i32 3
  %266 = ptrtoint ptr %buf.i93.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %data.i84.i, ptr %buf.i93.i, align 4
  %call.i94.i = call i32 @i2c_transfer(ptr noundef %253, ptr noundef nonnull %msg.i85.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i94.i)
  %cmp.not.i95.i = icmp eq i32 %call.i94.i, 1
  br i1 %cmp.not.i95.i, label %write_reg.exit83.i.set_vth.exit_crit_edge, label %do.end.i101.i

write_reg.exit83.i.set_vth.exit_crit_edge:        ; preds = %write_reg.exit83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_vth.exit

do.end.i101.i:                                    ; preds = %write_reg.exit83.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i96.i = zext i16 %add61.i to i32
  %dev.i97.i = getelementptr inbounds %struct.i2c_adapter, ptr %253, i32 0, i32 9
  %267 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %1, align 4
  %adr9.i98.i = getelementptr inbounds %struct.stv_base, ptr %268, i32 0, i32 1
  %269 = ptrtoint ptr %adr9.i98.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %adr9.i98.i, align 4
  %conv10.i99.i = zext i8 %270 to i32
  %conv12.i100.i = zext i8 %249 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i97.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i99.i, i32 noundef %conv.i96.i, i32 noundef %conv12.i100.i) #10
  br label %set_vth.exit

set_vth.exit:                                     ; preds = %do.end.i101.i, %write_reg.exit83.i.set_vth.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i85.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i84.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #6
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %271 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 0, ptr %stat, align 1
  %stat19 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %272 = ptrtoint ptr %stat19 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 0, ptr %stat19, align 1
  %stat22 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1
  %273 = ptrtoint ptr %stat22 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 0, ptr %stat22, align 1
  %stat25 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1
  %274 = ptrtoint ptr %stat25 to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 0, ptr %stat25, align 1
  br label %cleanup

if.then31:                                        ; preds = %if.end15
  %cond = select i1 %tobool14.not, i32 2, i32 1
  %275 = ptrtoint ptr %receive_mode to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %cond, ptr %receive_mode, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %276 = load volatile i32, ptr @jiffies, align 128
  %demod_lock_time = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 12
  %277 = ptrtoint ptr %demod_lock_time to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %276, ptr %demod_lock_time, align 4
  %first_time_lock = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 16
  %278 = ptrtoint ptr %first_time_lock to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 1, ptr %first_time_lock, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i326) #6
  %279 = ptrtoint ptr %tmp.i326 to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 -1, ptr %tmp.i326, align 1, !annotation !69
  %started.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 11
  %280 = ptrtoint ptr %started.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %started.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %281)
  %tobool.not.i = icmp eq i32 %281, 0
  br i1 %tobool.not.i, label %if.then31.get_signal_parameters.exit_crit_edge, label %if.end.i

if.then31.get_signal_parameters.exit_crit_edge:   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_signal_parameters.exit

if.end.i:                                         ; preds = %if.then31
  %282 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %regoff, align 4
  br i1 %tobool14.not, label %if.then1.i, label %if.then14.i

if.then1.i:                                       ; preds = %if.end.i
  %add.i328 = add i16 %283, -3567
  %284 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %1, align 4
  %i2c.i.i329 = getelementptr inbounds %struct.stv_base, ptr %285, i32 0, i32 2
  %286 = ptrtoint ptr %i2c.i.i329 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %i2c.i.i329, align 4
  %adr.i.i330 = getelementptr inbounds %struct.stv_base, ptr %285, i32 0, i32 1
  %288 = ptrtoint ptr %adr.i.i330 to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %adr.i.i330, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i324) #6
  %290 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i324, i32 0, i32 1
  %291 = lshr i16 %add.i328, 8
  %conv1.i.i.i331 = trunc i16 %291 to i8
  %292 = ptrtoint ptr %msg.i.i.i324 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %conv1.i.i.i331, ptr %msg.i.i.i324, align 1
  %conv3.i.i.i332 = trunc i16 %add.i328 to i8
  %293 = ptrtoint ptr %290 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %conv3.i.i.i332, ptr %290, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i325) #6
  %294 = getelementptr inbounds i8, ptr %msgs.i.i.i325, i32 4
  %295 = call ptr @memset(ptr %294, i32 255, i32 16)
  %conv5.i.i.i333 = zext i8 %289 to i16
  %296 = ptrtoint ptr %msgs.i.i.i325 to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 %conv5.i.i.i333, ptr %msgs.i.i.i325, align 4
  %flags.i.i.i334 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i325, i32 0, i32 1
  %297 = ptrtoint ptr %flags.i.i.i334 to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 0, ptr %flags.i.i.i334, align 2
  %298 = ptrtoint ptr %294 to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 2, ptr %294, align 4
  %buf.i.i.i335 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i325, i32 0, i32 3
  %299 = ptrtoint ptr %buf.i.i.i335 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr %msg.i.i.i324, ptr %buf.i.i.i335, align 4
  %arrayinit.element6.i.i.i336 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i325, i32 1
  %300 = ptrtoint ptr %arrayinit.element6.i.i.i336 to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 %conv5.i.i.i333, ptr %arrayinit.element6.i.i.i336, align 4
  %flags9.i.i.i337 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i325, i32 1, i32 1
  %301 = ptrtoint ptr %flags9.i.i.i337 to i32
  call void @__asan_store2_noabort(i32 %301)
  store i16 1, ptr %flags9.i.i.i337, align 2
  %len10.i.i.i338 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i325, i32 1, i32 2
  %302 = ptrtoint ptr %len10.i.i.i338 to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 1, ptr %len10.i.i.i338, align 4
  %buf12.i.i.i339 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i325, i32 1, i32 3
  %303 = ptrtoint ptr %buf12.i.i.i339 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %tmp.i326, ptr %buf12.i.i.i339, align 4
  %call.i.i.i340 = call i32 @i2c_transfer(ptr noundef %287, ptr noundef nonnull %msgs.i.i.i325, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i340)
  %cmp.not.i.i.i341 = icmp eq i32 %call.i.i.i340, 2
  br i1 %cmp.not.i.i.i341, label %if.then1.i.read_reg.exit.i_crit_edge, label %do.end.i.i.i345

if.then1.i.read_reg.exit.i_crit_edge:             ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit.i

do.end.i.i.i345:                                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i342 = zext i16 %add.i328 to i32
  %dev.i.i.i343 = getelementptr inbounds %struct.i2c_adapter, ptr %287, i32 0, i32 9
  %conv15.i.i.i344 = zext i8 %289 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i343, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i.i344, i32 noundef %conv.i.i.i342) #10
  br label %read_reg.exit.i

read_reg.exit.i:                                  ; preds = %do.end.i.i.i345, %if.then1.i.read_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i325) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i324) #6
  %304 = ptrtoint ptr %tmp.i326 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %tmp.i326, align 1
  %306 = lshr i8 %305, 2
  %307 = and i8 %306, 31
  %308 = zext i8 %307 to i32
  %mod_cod.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 21
  %309 = ptrtoint ptr %mod_cod.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store i32 %308, ptr %mod_cod.i, align 4
  %310 = and i8 %305, 1
  %311 = zext i8 %310 to i32
  %pilots.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 23
  %312 = ptrtoint ptr %pilots.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 %311, ptr %pilots.i, align 4
  %313 = lshr i8 %305, 1
  %314 = and i8 %313, 1
  %315 = zext i8 %314 to i32
  %fectype.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 22
  %316 = ptrtoint ptr %fectype.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %315, ptr %fectype.i, align 4
  br label %get_signal_parameters.exit

if.then14.i:                                      ; preds = %if.end.i
  %add17.i = add i16 %283, -3270
  %317 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %1, align 4
  %i2c.i3.i = getelementptr inbounds %struct.stv_base, ptr %318, i32 0, i32 2
  %319 = ptrtoint ptr %i2c.i3.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %i2c.i3.i, align 4
  %adr.i4.i = getelementptr inbounds %struct.stv_base, ptr %318, i32 0, i32 1
  %321 = ptrtoint ptr %adr.i4.i to i32
  call void @__asan_load1_noabort(i32 %321)
  %322 = load i8, ptr %adr.i4.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i1.i) #6
  %323 = getelementptr inbounds [2 x i8], ptr %msg.i.i1.i, i32 0, i32 1
  %324 = lshr i16 %add17.i, 8
  %conv1.i.i5.i = trunc i16 %324 to i8
  %325 = ptrtoint ptr %msg.i.i1.i to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 %conv1.i.i5.i, ptr %msg.i.i1.i, align 1
  %conv3.i.i6.i = trunc i16 %add17.i to i8
  %326 = ptrtoint ptr %323 to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %conv3.i.i6.i, ptr %323, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i2.i) #6
  %327 = getelementptr inbounds i8, ptr %msgs.i.i2.i, i32 4
  %328 = call ptr @memset(ptr %327, i32 255, i32 16)
  %conv5.i.i7.i = zext i8 %322 to i16
  %329 = ptrtoint ptr %msgs.i.i2.i to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 %conv5.i.i7.i, ptr %msgs.i.i2.i, align 4
  %flags.i.i8.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i2.i, i32 0, i32 1
  %330 = ptrtoint ptr %flags.i.i8.i to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 0, ptr %flags.i.i8.i, align 2
  %331 = ptrtoint ptr %327 to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 2, ptr %327, align 4
  %buf.i.i9.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i2.i, i32 0, i32 3
  %332 = ptrtoint ptr %buf.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr %msg.i.i1.i, ptr %buf.i.i9.i, align 4
  %arrayinit.element6.i.i10.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i2.i, i32 1
  %333 = ptrtoint ptr %arrayinit.element6.i.i10.i to i32
  call void @__asan_store2_noabort(i32 %333)
  store i16 %conv5.i.i7.i, ptr %arrayinit.element6.i.i10.i, align 4
  %flags9.i.i11.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i2.i, i32 1, i32 1
  %334 = ptrtoint ptr %flags9.i.i11.i to i32
  call void @__asan_store2_noabort(i32 %334)
  store i16 1, ptr %flags9.i.i11.i, align 2
  %len10.i.i12.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i2.i, i32 1, i32 2
  %335 = ptrtoint ptr %len10.i.i12.i to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 1, ptr %len10.i.i12.i, align 4
  %buf12.i.i13.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i2.i, i32 1, i32 3
  %336 = ptrtoint ptr %buf12.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr %tmp.i326, ptr %buf12.i.i13.i, align 4
  %call.i.i14.i = call i32 @i2c_transfer(ptr noundef %320, ptr noundef nonnull %msgs.i.i2.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i14.i)
  %cmp.not.i.i15.i = icmp eq i32 %call.i.i14.i, 2
  br i1 %cmp.not.i.i15.i, label %if.then14.i.read_reg.exit21.i_crit_edge, label %do.end.i.i19.i

if.then14.i.read_reg.exit21.i_crit_edge:          ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit21.i

do.end.i.i19.i:                                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i16.i = zext i16 %add17.i to i32
  %dev.i.i17.i = getelementptr inbounds %struct.i2c_adapter, ptr %320, i32 0, i32 9
  %conv15.i.i18.i = zext i8 %322 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i17.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i18.i, i32 noundef %conv.i.i16.i) #10
  br label %read_reg.exit21.i

read_reg.exit21.i:                                ; preds = %do.end.i.i19.i, %if.then14.i.read_reg.exit21.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i2.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i1.i) #6
  %puncture_rate.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 20
  %337 = ptrtoint ptr %puncture_rate.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 0, ptr %puncture_rate.i, align 4
  %338 = ptrtoint ptr %tmp.i326 to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %tmp.i326, align 1
  %340 = and i8 %339, 31
  %and21.i = zext i8 %340 to i32
  %341 = zext i32 %and21.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %341, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and21.i, label %read_reg.exit21.i.sw.epilog.i_crit_edge [
    i32 13, label %read_reg.exit21.i.sw.epilog.sink.split.i_crit_edge
    i32 18, label %sw.bb23.i
    i32 21, label %sw.bb25.i
    i32 24, label %sw.bb27.i
    i32 26, label %sw.bb29.i
  ]

read_reg.exit21.i.sw.epilog.sink.split.i_crit_edge: ; preds = %read_reg.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

read_reg.exit21.i.sw.epilog.i_crit_edge:          ; preds = %read_reg.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %read_reg.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.bb25.i:                                        ; preds = %read_reg.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.bb27.i:                                        ; preds = %read_reg.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.bb29.i:                                        ; preds = %read_reg.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb29.i, %sw.bb27.i, %sw.bb25.i, %sw.bb23.i, %read_reg.exit21.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 7, %sw.bb29.i ], [ 5, %sw.bb27.i ], [ 3, %sw.bb25.i ], [ 2, %sw.bb23.i ], [ 1, %read_reg.exit21.i.sw.epilog.sink.split.i_crit_edge ]
  %342 = ptrtoint ptr %puncture_rate.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %.sink.i, ptr %puncture_rate.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %read_reg.exit21.i.sw.epilog.i_crit_edge
  %is_vcm.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 26
  %343 = ptrtoint ptr %is_vcm.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 0, ptr %is_vcm.i, align 4
  %is_standard_broadcast.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 25
  %344 = ptrtoint ptr %is_standard_broadcast.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 1, ptr %is_standard_broadcast.i, align 4
  %feroll_off.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 24
  %345 = ptrtoint ptr %feroll_off.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 0, ptr %feroll_off.i, align 4
  br label %get_signal_parameters.exit

get_signal_parameters.exit:                       ; preds = %sw.epilog.i, %read_reg.exit.i, %if.then31.get_signal_parameters.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i326) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i350) #6
  %346 = ptrtoint ptr %tmp.i350 to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 -1, ptr %tmp.i350, align 1, !annotation !69
  %347 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %347)
  %348 = load i16, ptr %regoff, align 4
  %add.i352 = add i16 %348, -3564
  %349 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %1, align 4
  %i2c.i.i353 = getelementptr inbounds %struct.stv_base, ptr %350, i32 0, i32 2
  %351 = ptrtoint ptr %i2c.i.i353 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %i2c.i.i353, align 4
  %adr.i.i354 = getelementptr inbounds %struct.stv_base, ptr %350, i32 0, i32 1
  %353 = ptrtoint ptr %adr.i.i354 to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %adr.i.i354, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i348) #6
  %355 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i348, i32 0, i32 1
  %356 = lshr i16 %add.i352, 8
  %conv1.i.i.i355 = trunc i16 %356 to i8
  %357 = ptrtoint ptr %msg.i.i.i348 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %conv1.i.i.i355, ptr %msg.i.i.i348, align 1
  %conv3.i.i.i356 = trunc i16 %add.i352 to i8
  %358 = ptrtoint ptr %355 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %conv3.i.i.i356, ptr %355, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i349) #6
  %359 = getelementptr inbounds i8, ptr %msgs.i.i.i349, i32 4
  %360 = call ptr @memset(ptr %359, i32 255, i32 16)
  %conv5.i.i.i357 = zext i8 %354 to i16
  %361 = ptrtoint ptr %msgs.i.i.i349 to i32
  call void @__asan_store2_noabort(i32 %361)
  store i16 %conv5.i.i.i357, ptr %msgs.i.i.i349, align 4
  %flags.i.i.i358 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i349, i32 0, i32 1
  %362 = ptrtoint ptr %flags.i.i.i358 to i32
  call void @__asan_store2_noabort(i32 %362)
  store i16 0, ptr %flags.i.i.i358, align 2
  %363 = ptrtoint ptr %359 to i32
  call void @__asan_store2_noabort(i32 %363)
  store i16 2, ptr %359, align 4
  %buf.i.i.i359 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i349, i32 0, i32 3
  %364 = ptrtoint ptr %buf.i.i.i359 to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr %msg.i.i.i348, ptr %buf.i.i.i359, align 4
  %arrayinit.element6.i.i.i360 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i349, i32 1
  %365 = ptrtoint ptr %arrayinit.element6.i.i.i360 to i32
  call void @__asan_store2_noabort(i32 %365)
  store i16 %conv5.i.i.i357, ptr %arrayinit.element6.i.i.i360, align 4
  %flags9.i.i.i361 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i349, i32 1, i32 1
  %366 = ptrtoint ptr %flags9.i.i.i361 to i32
  call void @__asan_store2_noabort(i32 %366)
  store i16 1, ptr %flags9.i.i.i361, align 2
  %len10.i.i.i362 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i349, i32 1, i32 2
  %367 = ptrtoint ptr %len10.i.i.i362 to i32
  call void @__asan_store2_noabort(i32 %367)
  store i16 1, ptr %len10.i.i.i362, align 4
  %buf12.i.i.i363 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i349, i32 1, i32 3
  %368 = ptrtoint ptr %buf12.i.i.i363 to i32
  call void @__asan_store4_noabort(i32 %368)
  store ptr %tmp.i350, ptr %buf12.i.i.i363, align 4
  %call.i.i.i364 = call i32 @i2c_transfer(ptr noundef %352, ptr noundef nonnull %msgs.i.i.i349, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i364)
  %cmp.not.i.i.i365 = icmp eq i32 %call.i.i.i364, 2
  br i1 %cmp.not.i.i.i365, label %get_signal_parameters.exit.read_reg.exit.i371_crit_edge, label %do.end.i.i.i369

get_signal_parameters.exit.read_reg.exit.i371_crit_edge: ; preds = %get_signal_parameters.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit.i371

do.end.i.i.i369:                                  ; preds = %get_signal_parameters.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i366 = zext i16 %add.i352 to i32
  %dev.i.i.i367 = getelementptr inbounds %struct.i2c_adapter, ptr %352, i32 0, i32 9
  %conv15.i.i.i368 = zext i8 %354 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i367, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i.i368, i32 noundef %conv.i.i.i366) #10
  br label %read_reg.exit.i371

read_reg.exit.i371:                               ; preds = %do.end.i.i.i369, %get_signal_parameters.exit.read_reg.exit.i371_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i349) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i348) #6
  %369 = ptrtoint ptr %tmp.i350 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %tmp.i350, align 1
  %371 = and i8 %370, 63
  %372 = ptrtoint ptr %receive_mode to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %receive_mode, align 4
  %374 = zext i32 %373 to i64
  call void @__sanitizer_cov_trace_switch(i64 %374, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %373, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %read_reg.exit.i371
  call void @__sanitizer_cov_trace_pc() #8
  %375 = or i8 %371, 64
  %376 = ptrtoint ptr %tmp.i350 to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 %375, ptr %tmp.i350, align 1
  br label %sw.epilog.i381

sw.bb6.i:                                         ; preds = %read_reg.exit.i371
  call void @__sanitizer_cov_trace_pc() #8
  %377 = or i8 %371, -128
  %378 = ptrtoint ptr %tmp.i350 to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 %377, ptr %tmp.i350, align 1
  br label %sw.epilog.i381

sw.default.i:                                     ; preds = %read_reg.exit.i371
  call void @__sanitizer_cov_trace_pc() #8
  %379 = or i8 %370, -64
  %380 = ptrtoint ptr %tmp.i350 to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 %379, ptr %tmp.i350, align 1
  br label %sw.epilog.i381

sw.epilog.i381:                                   ; preds = %sw.default.i, %sw.bb6.i, %sw.bb.i
  %381 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %regoff, align 4
  %add15.i = add i16 %382, -3564
  %383 = ptrtoint ptr %tmp.i350 to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %tmp.i350, align 1
  %385 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %1, align 4
  %i2c.i1.i372 = getelementptr inbounds %struct.stv_base, ptr %386, i32 0, i32 2
  %387 = ptrtoint ptr %i2c.i1.i372 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %i2c.i1.i372, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i346) #6
  %389 = getelementptr inbounds [3 x i8], ptr %data.i.i346, i32 0, i32 1
  %390 = getelementptr inbounds [3 x i8], ptr %data.i.i346, i32 0, i32 2
  %391 = lshr i16 %add15.i, 8
  %conv1.i.i373 = trunc i16 %391 to i8
  %392 = ptrtoint ptr %data.i.i346 to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 %conv1.i.i373, ptr %data.i.i346, align 1
  %conv3.i.i374 = trunc i16 %add15.i to i8
  %393 = ptrtoint ptr %389 to i32
  call void @__asan_store1_noabort(i32 %393)
  store i8 %conv3.i.i374, ptr %389, align 1
  %394 = ptrtoint ptr %390 to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 %384, ptr %390, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i347) #6
  %395 = getelementptr inbounds i8, ptr %msg.i.i347, i32 4
  %396 = ptrtoint ptr %395 to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 262143, ptr %395, align 4
  %adr.i2.i375 = getelementptr inbounds %struct.stv_base, ptr %386, i32 0, i32 1
  %397 = ptrtoint ptr %adr.i2.i375 to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %adr.i2.i375, align 4
  %conv6.i.i376 = zext i8 %398 to i16
  %399 = ptrtoint ptr %msg.i.i347 to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 %conv6.i.i376, ptr %msg.i.i347, align 4
  %flags.i.i377 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i347, i32 0, i32 1
  %400 = ptrtoint ptr %flags.i.i377 to i32
  call void @__asan_store2_noabort(i32 %400)
  store i16 0, ptr %flags.i.i377, align 2
  %buf.i.i378 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i347, i32 0, i32 3
  %401 = ptrtoint ptr %buf.i.i378 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %data.i.i346, ptr %buf.i.i378, align 4
  %call.i.i379 = call i32 @i2c_transfer(ptr noundef %388, ptr noundef nonnull %msg.i.i347, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i379)
  %cmp.not.i.i380 = icmp eq i32 %call.i.i379, 1
  br i1 %cmp.not.i.i380, label %sw.epilog.i381.write_reg.exit.i388_crit_edge, label %do.end.i.i387

sw.epilog.i381.write_reg.exit.i388_crit_edge:     ; preds = %sw.epilog.i381
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit.i388

do.end.i.i387:                                    ; preds = %sw.epilog.i381
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i382 = zext i16 %add15.i to i32
  %dev.i.i383 = getelementptr inbounds %struct.i2c_adapter, ptr %388, i32 0, i32 9
  %402 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %1, align 4
  %adr9.i.i384 = getelementptr inbounds %struct.stv_base, ptr %403, i32 0, i32 1
  %404 = ptrtoint ptr %adr9.i.i384 to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %adr9.i.i384, align 4
  %conv10.i.i385 = zext i8 %405 to i32
  %conv12.i.i386 = zext i8 %384 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i383, ptr noundef nonnull @.str.14, i32 noundef %conv10.i.i385, i32 noundef %conv.i.i382, i32 noundef %conv12.i.i386) #10
  br label %write_reg.exit.i388

write_reg.exit.i388:                              ; preds = %do.end.i.i387, %sw.epilog.i381.write_reg.exit.i388_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i347) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i346) #6
  %406 = ptrtoint ptr %receive_mode to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %receive_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %407)
  %cmp.i = icmp eq i32 %407, 2
  br i1 %cmp.i, label %if.then.i391, label %write_reg.exit.i388.tracking_optimization.exit_crit_edge

write_reg.exit.i388.tracking_optimization.exit_crit_edge: ; preds = %write_reg.exit.i388
  call void @__sanitizer_cov_trace_pc() #8
  br label %tracking_optimization.exit

if.then.i391:                                     ; preds = %write_reg.exit.i388
  %nr.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 2
  %408 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %409)
  %tobool.not.i389 = icmp eq i32 %409, 0
  %conv20.i = select i1 %tobool.not.i389, i8 1, i8 2
  call fastcc void @write_shared_reg(ptr noundef %1, i8 noundef zeroext %conv20.i, i8 noundef zeroext 3) #6
  %fectype.i390 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 22
  %410 = ptrtoint ptr %fectype.i390 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %fectype.i390, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %411)
  %cmp22.i = icmp eq i32 %411, 0
  br i1 %cmp22.i, label %if.then24.i, label %if.then.i391.tracking_optimization.exit_crit_edge

if.then.i391.tracking_optimization.exit_crit_edge: ; preds = %if.then.i391
  call void @__sanitizer_cov_trace_pc() #8
  br label %tracking_optimization.exit

if.then24.i:                                      ; preds = %if.then.i391
  %mod_cod.i392 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 21
  %412 = ptrtoint ptr %mod_cod.i392 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %mod_cod.i392, align 4
  %pilots.i393 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 23
  %414 = ptrtoint ptr %pilots.i393 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %pilots.i393, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %413)
  %cmp.i.i = icmp ugt i32 %413, 27
  br i1 %cmp.i.i, label %if.then24.i.if.end3.i.i_crit_edge, label %if.else.i.i394

if.then24.i.if.end3.i.i_crit_edge:                ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i.i

if.else.i.i394:                                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %cmp1.not.i.i = icmp eq i32 %413, 0
  br i1 %cmp1.not.i.i, label %if.else.i.i394.if.end3.i.i_crit_edge, label %if.then2.i.i

if.else.i.i394.if.end3.i.i_crit_edge:             ; preds = %if.else.i.i394
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.else.i.i394
  call void @__sanitizer_cov_trace_pc() #8
  %416 = mul nuw nsw i32 %413, 10
  %mul.i.i395 = add nsw i32 %416, -10
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.then2.i.i, %if.else.i.i394.if.end3.i.i_crit_edge, %if.then24.i.if.end3.i.i_crit_edge
  %i.0.i.i = phi i32 [ %mul.i.i395, %if.then2.i.i ], [ 0, %if.else.i.i394.if.end3.i.i_crit_edge ], [ 270, %if.then24.i.if.end3.i.i_crit_edge ]
  %symbol_rate.i.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 18
  %417 = ptrtoint ptr %symbol_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %symbol_rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000001, i32 %418)
  %cmp4.i.i = icmp ult i32 %418, 3000001
  br i1 %cmp4.i.i, label %if.end3.i.i.get_optim_cloop.exit.i_crit_edge, label %if.else6.i.i

if.end3.i.i.get_optim_cloop.exit.i_crit_edge:     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_optim_cloop.exit.i

if.else6.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %418)
  %cmp8.i.i = icmp ult i32 %418, 7000001
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.else11.i.i

if.then9.i.i:                                     ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add10.i.i = add nuw nsw i32 %i.0.i.i, 2
  br label %get_optim_cloop.exit.i

if.else11.i.i:                                    ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000001, i32 %418)
  %cmp13.i.i = icmp ult i32 %418, 15000001
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.else16.i.i

if.then14.i.i:                                    ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add15.i.i = add nuw nsw i32 %i.0.i.i, 4
  br label %get_optim_cloop.exit.i

if.else16.i.i:                                    ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000001, i32 %418)
  %cmp18.i.i = icmp ult i32 %418, 25000001
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.else21.i.i

if.then19.i.i:                                    ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add20.i.i = add nuw nsw i32 %i.0.i.i, 6
  br label %get_optim_cloop.exit.i

if.else21.i.i:                                    ; preds = %if.else16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add22.i.i = add nuw nsw i32 %i.0.i.i, 8
  br label %get_optim_cloop.exit.i

get_optim_cloop.exit.i:                           ; preds = %if.else21.i.i, %if.then19.i.i, %if.then14.i.i, %if.then9.i.i, %if.end3.i.i.get_optim_cloop.exit.i_crit_edge
  %i.1.i.i = phi i32 [ %add10.i.i, %if.then9.i.i ], [ %add15.i.i, %if.then14.i.i ], [ %add20.i.i, %if.then19.i.i ], [ %add22.i.i, %if.else21.i.i ], [ %i.0.i.i, %if.end3.i.i.get_optim_cloop.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %415)
  %tobool.not.i.i = icmp eq i32 %415, 0
  %add28.i.i = zext i1 %tobool.not.i.i to i32
  %spec.select.i.i = add nuw nsw i32 %i.1.i.i, %add28.i.i
  %arrayidx.i.i = getelementptr [280 x i8], ptr @s2car_loop, i32 0, i32 %spec.select.i.i
  %419 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %413)
  %cmp27.i = icmp ult i32 %413, 12
  br i1 %cmp27.i, label %if.then29.i, label %if.else.i

if.then29.i:                                      ; preds = %get_optim_cloop.exit.i
  %421 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %421)
  %422 = load i16, ptr %regoff, align 4
  %add32.i = add i16 %422, -3433
  %423 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %1, align 4
  %i2c.i5.i = getelementptr inbounds %struct.stv_base, ptr %424, i32 0, i32 2
  %425 = ptrtoint ptr %i2c.i5.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %i2c.i5.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i3.i) #6
  %427 = getelementptr inbounds [3 x i8], ptr %data.i3.i, i32 0, i32 1
  %428 = getelementptr inbounds [3 x i8], ptr %data.i3.i, i32 0, i32 2
  %429 = lshr i16 %add32.i, 8
  %conv1.i6.i = trunc i16 %429 to i8
  %430 = ptrtoint ptr %data.i3.i to i32
  call void @__asan_store1_noabort(i32 %430)
  store i8 %conv1.i6.i, ptr %data.i3.i, align 1
  %conv3.i7.i = trunc i16 %add32.i to i8
  %431 = ptrtoint ptr %427 to i32
  call void @__asan_store1_noabort(i32 %431)
  store i8 %conv3.i7.i, ptr %427, align 1
  %432 = ptrtoint ptr %428 to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 %420, ptr %428, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4.i) #6
  %433 = getelementptr inbounds i8, ptr %msg.i4.i, i32 4
  %434 = ptrtoint ptr %433 to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 262143, ptr %433, align 4
  %adr.i8.i = getelementptr inbounds %struct.stv_base, ptr %424, i32 0, i32 1
  %435 = ptrtoint ptr %adr.i8.i to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %adr.i8.i, align 4
  %conv6.i9.i = zext i8 %436 to i16
  %437 = ptrtoint ptr %msg.i4.i to i32
  call void @__asan_store2_noabort(i32 %437)
  store i16 %conv6.i9.i, ptr %msg.i4.i, align 4
  %flags.i10.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i, i32 0, i32 1
  %438 = ptrtoint ptr %flags.i10.i to i32
  call void @__asan_store2_noabort(i32 %438)
  store i16 0, ptr %flags.i10.i, align 2
  %buf.i12.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4.i, i32 0, i32 3
  %439 = ptrtoint ptr %buf.i12.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr %data.i3.i, ptr %buf.i12.i, align 4
  %call.i13.i = call i32 @i2c_transfer(ptr noundef %426, ptr noundef nonnull %msg.i4.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i13.i)
  %cmp.not.i14.i = icmp eq i32 %call.i13.i, 1
  br i1 %cmp.not.i14.i, label %if.then29.i.write_reg.exit22.i_crit_edge, label %do.end.i20.i

if.then29.i.write_reg.exit22.i_crit_edge:         ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit22.i

do.end.i20.i:                                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i15.i = zext i16 %add32.i to i32
  %dev.i16.i = getelementptr inbounds %struct.i2c_adapter, ptr %426, i32 0, i32 9
  %440 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %1, align 4
  %adr9.i17.i = getelementptr inbounds %struct.stv_base, ptr %441, i32 0, i32 1
  %442 = ptrtoint ptr %adr9.i17.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %adr9.i17.i, align 4
  %conv10.i18.i = zext i8 %443 to i32
  %conv12.i19.i = zext i8 %420 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i16.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i18.i, i32 noundef %conv.i15.i, i32 noundef %conv12.i19.i) #10
  br label %write_reg.exit22.i

write_reg.exit22.i:                               ; preds = %do.end.i20.i, %if.then29.i.write_reg.exit22.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i3.i) #6
  br label %tracking_optimization.exit

if.else.i:                                        ; preds = %get_optim_cloop.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %413)
  %cmp36.i = icmp ult i32 %413, 18
  br i1 %cmp36.i, label %if.then38.i, label %if.else49.i

if.then38.i:                                      ; preds = %if.else.i
  %444 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %regoff, align 4
  %add41.i = add i16 %445, -3433
  %446 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %1, align 4
  %i2c.i25.i = getelementptr inbounds %struct.stv_base, ptr %447, i32 0, i32 2
  %448 = ptrtoint ptr %i2c.i25.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %i2c.i25.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i23.i) #6
  %450 = getelementptr inbounds [3 x i8], ptr %data.i23.i, i32 0, i32 1
  %451 = getelementptr inbounds [3 x i8], ptr %data.i23.i, i32 0, i32 2
  %452 = lshr i16 %add41.i, 8
  %conv1.i26.i = trunc i16 %452 to i8
  %453 = ptrtoint ptr %data.i23.i to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 %conv1.i26.i, ptr %data.i23.i, align 1
  %conv3.i27.i = trunc i16 %add41.i to i8
  %454 = ptrtoint ptr %450 to i32
  call void @__asan_store1_noabort(i32 %454)
  store i8 %conv3.i27.i, ptr %450, align 1
  %455 = ptrtoint ptr %451 to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 42, ptr %451, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i24.i) #6
  %456 = getelementptr inbounds i8, ptr %msg.i24.i, i32 4
  %457 = ptrtoint ptr %456 to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 262143, ptr %456, align 4
  %adr.i28.i = getelementptr inbounds %struct.stv_base, ptr %447, i32 0, i32 1
  %458 = ptrtoint ptr %adr.i28.i to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %adr.i28.i, align 4
  %conv6.i29.i = zext i8 %459 to i16
  %460 = ptrtoint ptr %msg.i24.i to i32
  call void @__asan_store2_noabort(i32 %460)
  store i16 %conv6.i29.i, ptr %msg.i24.i, align 4
  %flags.i30.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24.i, i32 0, i32 1
  %461 = ptrtoint ptr %flags.i30.i to i32
  call void @__asan_store2_noabort(i32 %461)
  store i16 0, ptr %flags.i30.i, align 2
  %buf.i32.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24.i, i32 0, i32 3
  %462 = ptrtoint ptr %buf.i32.i to i32
  call void @__asan_store4_noabort(i32 %462)
  store ptr %data.i23.i, ptr %buf.i32.i, align 4
  %call.i33.i = call i32 @i2c_transfer(ptr noundef %449, ptr noundef nonnull %msg.i24.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i33.i)
  %cmp.not.i34.i = icmp eq i32 %call.i33.i, 1
  br i1 %cmp.not.i34.i, label %if.then38.i.write_reg.exit41.i_crit_edge, label %do.end.i39.i

if.then38.i.write_reg.exit41.i_crit_edge:         ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit41.i

do.end.i39.i:                                     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i35.i = zext i16 %add41.i to i32
  %dev.i36.i = getelementptr inbounds %struct.i2c_adapter, ptr %449, i32 0, i32 9
  %463 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %1, align 4
  %adr9.i37.i = getelementptr inbounds %struct.stv_base, ptr %464, i32 0, i32 1
  %465 = ptrtoint ptr %adr9.i37.i to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %adr9.i37.i, align 4
  %conv10.i38.i = zext i8 %466 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i36.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i38.i, i32 noundef %conv.i35.i, i32 noundef 42) #10
  br label %write_reg.exit41.i

write_reg.exit41.i:                               ; preds = %do.end.i39.i, %if.then38.i.write_reg.exit41.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i24.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i23.i) #6
  %467 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %467)
  %468 = load i16, ptr %regoff, align 4
  %add46.i = add i16 %468, -3432
  %469 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %1, align 4
  %i2c.i44.i = getelementptr inbounds %struct.stv_base, ptr %470, i32 0, i32 2
  %471 = ptrtoint ptr %i2c.i44.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %i2c.i44.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i42.i) #6
  %473 = getelementptr inbounds [3 x i8], ptr %data.i42.i, i32 0, i32 1
  %474 = getelementptr inbounds [3 x i8], ptr %data.i42.i, i32 0, i32 2
  %475 = lshr i16 %add46.i, 8
  %conv1.i45.i = trunc i16 %475 to i8
  %476 = ptrtoint ptr %data.i42.i to i32
  call void @__asan_store1_noabort(i32 %476)
  store i8 %conv1.i45.i, ptr %data.i42.i, align 1
  %conv3.i46.i = trunc i16 %add46.i to i8
  %477 = ptrtoint ptr %473 to i32
  call void @__asan_store1_noabort(i32 %477)
  store i8 %conv3.i46.i, ptr %473, align 1
  %478 = ptrtoint ptr %474 to i32
  call void @__asan_store1_noabort(i32 %478)
  store i8 %420, ptr %474, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i43.i) #6
  %479 = getelementptr inbounds i8, ptr %msg.i43.i, i32 4
  %480 = ptrtoint ptr %479 to i32
  call void @__asan_store4_noabort(i32 %480)
  store i32 262143, ptr %479, align 4
  %adr.i47.i = getelementptr inbounds %struct.stv_base, ptr %470, i32 0, i32 1
  %481 = ptrtoint ptr %adr.i47.i to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %adr.i47.i, align 4
  %conv6.i48.i = zext i8 %482 to i16
  %483 = ptrtoint ptr %msg.i43.i to i32
  call void @__asan_store2_noabort(i32 %483)
  store i16 %conv6.i48.i, ptr %msg.i43.i, align 4
  %flags.i49.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43.i, i32 0, i32 1
  %484 = ptrtoint ptr %flags.i49.i to i32
  call void @__asan_store2_noabort(i32 %484)
  store i16 0, ptr %flags.i49.i, align 2
  %buf.i51.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43.i, i32 0, i32 3
  %485 = ptrtoint ptr %buf.i51.i to i32
  call void @__asan_store4_noabort(i32 %485)
  store ptr %data.i42.i, ptr %buf.i51.i, align 4
  %call.i52.i = call i32 @i2c_transfer(ptr noundef %472, ptr noundef nonnull %msg.i43.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i52.i)
  %cmp.not.i53.i = icmp eq i32 %call.i52.i, 1
  br i1 %cmp.not.i53.i, label %write_reg.exit41.i.write_reg.exit61.i_crit_edge, label %do.end.i59.i

write_reg.exit41.i.write_reg.exit61.i_crit_edge:  ; preds = %write_reg.exit41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit61.i

do.end.i59.i:                                     ; preds = %write_reg.exit41.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i54.i = zext i16 %add46.i to i32
  %dev.i55.i = getelementptr inbounds %struct.i2c_adapter, ptr %472, i32 0, i32 9
  %486 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %1, align 4
  %adr9.i56.i = getelementptr inbounds %struct.stv_base, ptr %487, i32 0, i32 1
  %488 = ptrtoint ptr %adr9.i56.i to i32
  call void @__asan_load1_noabort(i32 %488)
  %489 = load i8, ptr %adr9.i56.i, align 4
  %conv10.i57.i = zext i8 %489 to i32
  %conv12.i58.i = zext i8 %420 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i55.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i57.i, i32 noundef %conv.i54.i, i32 noundef %conv12.i58.i) #10
  br label %write_reg.exit61.i

write_reg.exit61.i:                               ; preds = %do.end.i59.i, %write_reg.exit41.i.write_reg.exit61.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i43.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i42.i) #6
  br label %tracking_optimization.exit

if.else49.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %413)
  %cmp51.i = icmp ult i32 %413, 24
  br i1 %cmp51.i, label %if.then53.i, label %if.else64.i

if.then53.i:                                      ; preds = %if.else49.i
  %490 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %490)
  %491 = load i16, ptr %regoff, align 4
  %add56.i = add i16 %491, -3433
  %492 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %1, align 4
  %i2c.i64.i = getelementptr inbounds %struct.stv_base, ptr %493, i32 0, i32 2
  %494 = ptrtoint ptr %i2c.i64.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %i2c.i64.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i62.i) #6
  %496 = getelementptr inbounds [3 x i8], ptr %data.i62.i, i32 0, i32 1
  %497 = getelementptr inbounds [3 x i8], ptr %data.i62.i, i32 0, i32 2
  %498 = lshr i16 %add56.i, 8
  %conv1.i65.i = trunc i16 %498 to i8
  %499 = ptrtoint ptr %data.i62.i to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 %conv1.i65.i, ptr %data.i62.i, align 1
  %conv3.i66.i = trunc i16 %add56.i to i8
  %500 = ptrtoint ptr %496 to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 %conv3.i66.i, ptr %496, align 1
  %501 = ptrtoint ptr %497 to i32
  call void @__asan_store1_noabort(i32 %501)
  store i8 42, ptr %497, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i63.i) #6
  %502 = getelementptr inbounds i8, ptr %msg.i63.i, i32 4
  %503 = ptrtoint ptr %502 to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 262143, ptr %502, align 4
  %adr.i67.i = getelementptr inbounds %struct.stv_base, ptr %493, i32 0, i32 1
  %504 = ptrtoint ptr %adr.i67.i to i32
  call void @__asan_load1_noabort(i32 %504)
  %505 = load i8, ptr %adr.i67.i, align 4
  %conv6.i68.i = zext i8 %505 to i16
  %506 = ptrtoint ptr %msg.i63.i to i32
  call void @__asan_store2_noabort(i32 %506)
  store i16 %conv6.i68.i, ptr %msg.i63.i, align 4
  %flags.i69.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63.i, i32 0, i32 1
  %507 = ptrtoint ptr %flags.i69.i to i32
  call void @__asan_store2_noabort(i32 %507)
  store i16 0, ptr %flags.i69.i, align 2
  %buf.i71.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i63.i, i32 0, i32 3
  %508 = ptrtoint ptr %buf.i71.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store ptr %data.i62.i, ptr %buf.i71.i, align 4
  %call.i72.i = call i32 @i2c_transfer(ptr noundef %495, ptr noundef nonnull %msg.i63.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i72.i)
  %cmp.not.i73.i = icmp eq i32 %call.i72.i, 1
  br i1 %cmp.not.i73.i, label %if.then53.i.write_reg.exit80.i_crit_edge, label %do.end.i78.i

if.then53.i.write_reg.exit80.i_crit_edge:         ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit80.i

do.end.i78.i:                                     ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i74.i = zext i16 %add56.i to i32
  %dev.i75.i = getelementptr inbounds %struct.i2c_adapter, ptr %495, i32 0, i32 9
  %509 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %1, align 4
  %adr9.i76.i = getelementptr inbounds %struct.stv_base, ptr %510, i32 0, i32 1
  %511 = ptrtoint ptr %adr9.i76.i to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %adr9.i76.i, align 4
  %conv10.i77.i = zext i8 %512 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i75.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i77.i, i32 noundef %conv.i74.i, i32 noundef 42) #10
  br label %write_reg.exit80.i

write_reg.exit80.i:                               ; preds = %do.end.i78.i, %if.then53.i.write_reg.exit80.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i63.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i62.i) #6
  %513 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %513)
  %514 = load i16, ptr %regoff, align 4
  %add61.i396 = add i16 %514, -3431
  %515 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %1, align 4
  %i2c.i83.i = getelementptr inbounds %struct.stv_base, ptr %516, i32 0, i32 2
  %517 = ptrtoint ptr %i2c.i83.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %i2c.i83.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i81.i) #6
  %519 = getelementptr inbounds [3 x i8], ptr %data.i81.i, i32 0, i32 1
  %520 = getelementptr inbounds [3 x i8], ptr %data.i81.i, i32 0, i32 2
  %521 = lshr i16 %add61.i396, 8
  %conv1.i84.i = trunc i16 %521 to i8
  %522 = ptrtoint ptr %data.i81.i to i32
  call void @__asan_store1_noabort(i32 %522)
  store i8 %conv1.i84.i, ptr %data.i81.i, align 1
  %conv3.i85.i = trunc i16 %add61.i396 to i8
  %523 = ptrtoint ptr %519 to i32
  call void @__asan_store1_noabort(i32 %523)
  store i8 %conv3.i85.i, ptr %519, align 1
  %524 = ptrtoint ptr %520 to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 %420, ptr %520, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i82.i) #6
  %525 = getelementptr inbounds i8, ptr %msg.i82.i, i32 4
  %526 = ptrtoint ptr %525 to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 262143, ptr %525, align 4
  %adr.i86.i = getelementptr inbounds %struct.stv_base, ptr %516, i32 0, i32 1
  %527 = ptrtoint ptr %adr.i86.i to i32
  call void @__asan_load1_noabort(i32 %527)
  %528 = load i8, ptr %adr.i86.i, align 4
  %conv6.i87.i = zext i8 %528 to i16
  %529 = ptrtoint ptr %msg.i82.i to i32
  call void @__asan_store2_noabort(i32 %529)
  store i16 %conv6.i87.i, ptr %msg.i82.i, align 4
  %flags.i88.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82.i, i32 0, i32 1
  %530 = ptrtoint ptr %flags.i88.i to i32
  call void @__asan_store2_noabort(i32 %530)
  store i16 0, ptr %flags.i88.i, align 2
  %buf.i90.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82.i, i32 0, i32 3
  %531 = ptrtoint ptr %buf.i90.i to i32
  call void @__asan_store4_noabort(i32 %531)
  store ptr %data.i81.i, ptr %buf.i90.i, align 4
  %call.i91.i = call i32 @i2c_transfer(ptr noundef %518, ptr noundef nonnull %msg.i82.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i91.i)
  %cmp.not.i92.i = icmp eq i32 %call.i91.i, 1
  br i1 %cmp.not.i92.i, label %write_reg.exit80.i.write_reg.exit100.i_crit_edge, label %do.end.i98.i

write_reg.exit80.i.write_reg.exit100.i_crit_edge: ; preds = %write_reg.exit80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit100.i

do.end.i98.i:                                     ; preds = %write_reg.exit80.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i93.i = zext i16 %add61.i396 to i32
  %dev.i94.i = getelementptr inbounds %struct.i2c_adapter, ptr %518, i32 0, i32 9
  %532 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %1, align 4
  %adr9.i95.i = getelementptr inbounds %struct.stv_base, ptr %533, i32 0, i32 1
  %534 = ptrtoint ptr %adr9.i95.i to i32
  call void @__asan_load1_noabort(i32 %534)
  %535 = load i8, ptr %adr9.i95.i, align 4
  %conv10.i96.i = zext i8 %535 to i32
  %conv12.i97.i = zext i8 %420 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i94.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i96.i, i32 noundef %conv.i93.i, i32 noundef %conv12.i97.i) #10
  br label %write_reg.exit100.i

write_reg.exit100.i:                              ; preds = %do.end.i98.i, %write_reg.exit80.i.write_reg.exit100.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i82.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i81.i) #6
  br label %tracking_optimization.exit

if.else64.i:                                      ; preds = %if.else49.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %413)
  %cmp66.i = icmp ult i32 %413, 29
  br i1 %cmp66.i, label %if.then68.i, label %if.else64.i.tracking_optimization.exit_crit_edge

if.else64.i.tracking_optimization.exit_crit_edge: ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tracking_optimization.exit

if.then68.i:                                      ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #8
  %536 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %536)
  %537 = load i16, ptr %regoff, align 4
  %add71.i = add i16 %537, -3433
  %call73.i = call fastcc i32 @write_reg(ptr noundef %1, i16 noundef zeroext %add71.i, i8 noundef zeroext 42) #6
  %538 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %538)
  %539 = load i16, ptr %regoff, align 4
  %add76.i = add i16 %539, -3430
  %call78.i = call fastcc i32 @write_reg(ptr noundef %1, i16 noundef zeroext %add76.i, i8 noundef zeroext %420) #6
  br label %tracking_optimization.exit

tracking_optimization.exit:                       ; preds = %if.then68.i, %if.else64.i.tracking_optimization.exit_crit_edge, %write_reg.exit100.i, %write_reg.exit61.i, %write_reg.exit22.i, %if.then.i391.tracking_optimization.exit_crit_edge, %write_reg.exit.i388.tracking_optimization.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i350) #6
  %540 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %540)
  %541 = load i16, ptr %regoff, align 4
  %add37 = add i16 %541, -3214
  %tscfgh = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 5
  %542 = ptrtoint ptr %tscfgh to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %tscfgh, align 1
  %544 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %1, align 4
  %i2c.i397 = getelementptr inbounds %struct.stv_base, ptr %545, i32 0, i32 2
  %546 = ptrtoint ptr %i2c.i397 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %i2c.i397, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #6
  %548 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %549 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %550 = lshr i16 %add37, 8
  %conv1.i = trunc i16 %550 to i8
  %551 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %551)
  store i8 %conv1.i, ptr %data.i, align 1
  %conv3.i = trunc i16 %add37 to i8
  %552 = ptrtoint ptr %548 to i32
  call void @__asan_store1_noabort(i32 %552)
  store i8 %conv3.i, ptr %548, align 1
  %553 = ptrtoint ptr %549 to i32
  call void @__asan_store1_noabort(i32 %553)
  store i8 %543, ptr %549, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %554 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %555 = ptrtoint ptr %554 to i32
  call void @__asan_store4_noabort(i32 %555)
  store i32 262143, ptr %554, align 4
  %adr.i398 = getelementptr inbounds %struct.stv_base, ptr %545, i32 0, i32 1
  %556 = ptrtoint ptr %adr.i398 to i32
  call void @__asan_load1_noabort(i32 %556)
  %557 = load i8, ptr %adr.i398, align 4
  %conv6.i = zext i8 %557 to i16
  %558 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %558)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %559 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %559)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %560 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %560)
  store ptr %data.i, ptr %buf.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %547, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %tracking_optimization.exit.write_reg.exit_crit_edge, label %do.end.i

tracking_optimization.exit.write_reg.exit_crit_edge: ; preds = %tracking_optimization.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

do.end.i:                                         ; preds = %tracking_optimization.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i16 %add37 to i32
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %547, i32 0, i32 9
  %561 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %1, align 4
  %adr9.i = getelementptr inbounds %struct.stv_base, ptr %562, i32 0, i32 1
  %563 = ptrtoint ptr %adr9.i to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %adr9.i, align 4
  %conv10.i = zext i8 %564 to i32
  %conv12.i = zext i8 %543 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i, i32 noundef %conv.i, i32 noundef %conv12.i) #10
  br label %write_reg.exit

write_reg.exit:                                   ; preds = %do.end.i, %tracking_optimization.exit.write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #6
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #6
  %565 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %565)
  %566 = load i16, ptr %regoff, align 4
  %add42 = add i16 %566, -3214
  %567 = ptrtoint ptr %tscfgh to i32
  call void @__asan_load1_noabort(i32 %567)
  %568 = load i8, ptr %tscfgh, align 1
  %569 = or i8 %568, 1
  %570 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %1, align 4
  %i2c.i401 = getelementptr inbounds %struct.stv_base, ptr %571, i32 0, i32 2
  %572 = ptrtoint ptr %i2c.i401 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %i2c.i401, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i399) #6
  %574 = getelementptr inbounds [3 x i8], ptr %data.i399, i32 0, i32 1
  %575 = getelementptr inbounds [3 x i8], ptr %data.i399, i32 0, i32 2
  %576 = lshr i16 %add42, 8
  %conv1.i402 = trunc i16 %576 to i8
  %577 = ptrtoint ptr %data.i399 to i32
  call void @__asan_store1_noabort(i32 %577)
  store i8 %conv1.i402, ptr %data.i399, align 1
  %conv3.i403 = trunc i16 %add42 to i8
  %578 = ptrtoint ptr %574 to i32
  call void @__asan_store1_noabort(i32 %578)
  store i8 %conv3.i403, ptr %574, align 1
  %579 = ptrtoint ptr %575 to i32
  call void @__asan_store1_noabort(i32 %579)
  store i8 %569, ptr %575, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i400) #6
  %580 = getelementptr inbounds i8, ptr %msg.i400, i32 4
  %581 = ptrtoint ptr %580 to i32
  call void @__asan_store4_noabort(i32 %581)
  store i32 262143, ptr %580, align 4
  %adr.i404 = getelementptr inbounds %struct.stv_base, ptr %571, i32 0, i32 1
  %582 = ptrtoint ptr %adr.i404 to i32
  call void @__asan_load1_noabort(i32 %582)
  %583 = load i8, ptr %adr.i404, align 4
  %conv6.i405 = zext i8 %583 to i16
  %584 = ptrtoint ptr %msg.i400 to i32
  call void @__asan_store2_noabort(i32 %584)
  store i16 %conv6.i405, ptr %msg.i400, align 4
  %flags.i406 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i400, i32 0, i32 1
  %585 = ptrtoint ptr %flags.i406 to i32
  call void @__asan_store2_noabort(i32 %585)
  store i16 0, ptr %flags.i406, align 2
  %buf.i408 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i400, i32 0, i32 3
  %586 = ptrtoint ptr %buf.i408 to i32
  call void @__asan_store4_noabort(i32 %586)
  store ptr %data.i399, ptr %buf.i408, align 4
  %call.i409 = call i32 @i2c_transfer(ptr noundef %573, ptr noundef nonnull %msg.i400, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i409)
  %cmp.not.i410 = icmp eq i32 %call.i409, 1
  br i1 %cmp.not.i410, label %write_reg.exit.write_reg.exit418_crit_edge, label %do.end.i416

write_reg.exit.write_reg.exit418_crit_edge:       ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit418

do.end.i416:                                      ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i411 = zext i16 %add42 to i32
  %dev.i412 = getelementptr inbounds %struct.i2c_adapter, ptr %573, i32 0, i32 9
  %587 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %1, align 4
  %adr9.i413 = getelementptr inbounds %struct.stv_base, ptr %588, i32 0, i32 1
  %589 = ptrtoint ptr %adr9.i413 to i32
  call void @__asan_load1_noabort(i32 %589)
  %590 = load i8, ptr %adr9.i413, align 4
  %conv10.i414 = zext i8 %590 to i32
  %conv12.i415 = zext i8 %569 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i412, ptr noundef nonnull @.str.14, i32 noundef %conv10.i414, i32 noundef %conv.i411, i32 noundef %conv12.i415) #10
  br label %write_reg.exit418

write_reg.exit418:                                ; preds = %do.end.i416, %write_reg.exit.write_reg.exit418_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i400) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i399) #6
  %591 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %591)
  %592 = load i16, ptr %regoff, align 4
  %add51 = add i16 %592, -3214
  %593 = ptrtoint ptr %tscfgh to i32
  call void @__asan_load1_noabort(i32 %593)
  %594 = load i8, ptr %tscfgh, align 1
  %595 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %1, align 4
  %i2c.i421 = getelementptr inbounds %struct.stv_base, ptr %596, i32 0, i32 2
  %597 = ptrtoint ptr %i2c.i421 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %i2c.i421, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i419) #6
  %599 = getelementptr inbounds [3 x i8], ptr %data.i419, i32 0, i32 1
  %600 = getelementptr inbounds [3 x i8], ptr %data.i419, i32 0, i32 2
  %601 = lshr i16 %add51, 8
  %conv1.i422 = trunc i16 %601 to i8
  %602 = ptrtoint ptr %data.i419 to i32
  call void @__asan_store1_noabort(i32 %602)
  store i8 %conv1.i422, ptr %data.i419, align 1
  %conv3.i423 = trunc i16 %add51 to i8
  %603 = ptrtoint ptr %599 to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 %conv3.i423, ptr %599, align 1
  %604 = ptrtoint ptr %600 to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 %594, ptr %600, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i420) #6
  %605 = getelementptr inbounds i8, ptr %msg.i420, i32 4
  %606 = ptrtoint ptr %605 to i32
  call void @__asan_store4_noabort(i32 %606)
  store i32 262143, ptr %605, align 4
  %adr.i424 = getelementptr inbounds %struct.stv_base, ptr %596, i32 0, i32 1
  %607 = ptrtoint ptr %adr.i424 to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %adr.i424, align 4
  %conv6.i425 = zext i8 %608 to i16
  %609 = ptrtoint ptr %msg.i420 to i32
  call void @__asan_store2_noabort(i32 %609)
  store i16 %conv6.i425, ptr %msg.i420, align 4
  %flags.i426 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i420, i32 0, i32 1
  %610 = ptrtoint ptr %flags.i426 to i32
  call void @__asan_store2_noabort(i32 %610)
  store i16 0, ptr %flags.i426, align 2
  %buf.i428 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i420, i32 0, i32 3
  %611 = ptrtoint ptr %buf.i428 to i32
  call void @__asan_store4_noabort(i32 %611)
  store ptr %data.i419, ptr %buf.i428, align 4
  %call.i429 = call i32 @i2c_transfer(ptr noundef %598, ptr noundef nonnull %msg.i420, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i429)
  %cmp.not.i430 = icmp eq i32 %call.i429, 1
  br i1 %cmp.not.i430, label %write_reg.exit418.write_reg.exit438_crit_edge, label %do.end.i436

write_reg.exit418.write_reg.exit438_crit_edge:    ; preds = %write_reg.exit418
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit438

do.end.i436:                                      ; preds = %write_reg.exit418
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i431 = zext i16 %add51 to i32
  %dev.i432 = getelementptr inbounds %struct.i2c_adapter, ptr %598, i32 0, i32 9
  %612 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %1, align 4
  %adr9.i433 = getelementptr inbounds %struct.stv_base, ptr %613, i32 0, i32 1
  %614 = ptrtoint ptr %adr9.i433 to i32
  call void @__asan_load1_noabort(i32 %614)
  %615 = load i8, ptr %adr9.i433, align 4
  %conv10.i434 = zext i8 %615 to i32
  %conv12.i435 = zext i8 %594 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i432, ptr noundef nonnull @.str.14, i32 noundef %conv10.i434, i32 noundef %conv.i431, i32 noundef %conv12.i435) #10
  br label %write_reg.exit438

write_reg.exit438:                                ; preds = %do.end.i436, %write_reg.exit418.write_reg.exit438_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i420) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i419) #6
  br label %if.end55

if.end55:                                         ; preds = %write_reg.exit438, %if.end15.if.end55_crit_edge
  %616 = ptrtoint ptr %dmd_state to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %dmd_state, align 1
  %618 = and i8 %617, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %618)
  %tobool58.not = icmp eq i8 %618, 0
  br i1 %tobool58.not, label %if.end55.if.end184_crit_edge, label %if.then59

if.end55.if.end184_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end184

if.then59:                                        ; preds = %if.end55
  %619 = ptrtoint ptr %receive_mode to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %receive_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %620)
  %cmp61 = icmp eq i32 %620, 2
  br i1 %cmp61, label %if.then63, label %if.else

if.then63:                                        ; preds = %if.then59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pdelstatus) #6
  %621 = ptrtoint ptr %pdelstatus to i32
  call void @__asan_store1_noabort(i32 %621)
  store i8 -1, ptr %pdelstatus, align 1, !annotation !69
  %622 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %622)
  %623 = load i16, ptr %regoff, align 4
  %add66 = add i16 %623, -3223
  %624 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %1, align 4
  %i2c.i441 = getelementptr inbounds %struct.stv_base, ptr %625, i32 0, i32 2
  %626 = ptrtoint ptr %i2c.i441 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %i2c.i441, align 4
  %adr.i442 = getelementptr inbounds %struct.stv_base, ptr %625, i32 0, i32 1
  %628 = ptrtoint ptr %adr.i442 to i32
  call void @__asan_load1_noabort(i32 %628)
  %629 = load i8, ptr %adr.i442, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i439) #6
  %630 = getelementptr inbounds [2 x i8], ptr %msg.i.i439, i32 0, i32 1
  %631 = lshr i16 %add66, 8
  %conv1.i.i443 = trunc i16 %631 to i8
  %632 = ptrtoint ptr %msg.i.i439 to i32
  call void @__asan_store1_noabort(i32 %632)
  store i8 %conv1.i.i443, ptr %msg.i.i439, align 1
  %conv3.i.i444 = trunc i16 %add66 to i8
  %633 = ptrtoint ptr %630 to i32
  call void @__asan_store1_noabort(i32 %633)
  store i8 %conv3.i.i444, ptr %630, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i440) #6
  %634 = getelementptr inbounds i8, ptr %msgs.i.i440, i32 4
  %635 = call ptr @memset(ptr %634, i32 255, i32 16)
  %conv5.i.i445 = zext i8 %629 to i16
  %636 = ptrtoint ptr %msgs.i.i440 to i32
  call void @__asan_store2_noabort(i32 %636)
  store i16 %conv5.i.i445, ptr %msgs.i.i440, align 4
  %flags.i.i446 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i440, i32 0, i32 1
  %637 = ptrtoint ptr %flags.i.i446 to i32
  call void @__asan_store2_noabort(i32 %637)
  store i16 0, ptr %flags.i.i446, align 2
  %638 = ptrtoint ptr %634 to i32
  call void @__asan_store2_noabort(i32 %638)
  store i16 2, ptr %634, align 4
  %buf.i.i447 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i440, i32 0, i32 3
  %639 = ptrtoint ptr %buf.i.i447 to i32
  call void @__asan_store4_noabort(i32 %639)
  store ptr %msg.i.i439, ptr %buf.i.i447, align 4
  %arrayinit.element6.i.i448 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i440, i32 1
  %640 = ptrtoint ptr %arrayinit.element6.i.i448 to i32
  call void @__asan_store2_noabort(i32 %640)
  store i16 %conv5.i.i445, ptr %arrayinit.element6.i.i448, align 4
  %flags9.i.i449 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i440, i32 1, i32 1
  %641 = ptrtoint ptr %flags9.i.i449 to i32
  call void @__asan_store2_noabort(i32 %641)
  store i16 1, ptr %flags9.i.i449, align 2
  %len10.i.i450 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i440, i32 1, i32 2
  %642 = ptrtoint ptr %len10.i.i450 to i32
  call void @__asan_store2_noabort(i32 %642)
  store i16 1, ptr %len10.i.i450, align 4
  %buf12.i.i451 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i440, i32 1, i32 3
  %643 = ptrtoint ptr %buf12.i.i451 to i32
  call void @__asan_store4_noabort(i32 %643)
  store ptr %pdelstatus, ptr %buf12.i.i451, align 4
  %call.i.i452 = call i32 @i2c_transfer(ptr noundef %627, ptr noundef nonnull %msgs.i.i440, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i452)
  %cmp.not.i.i453 = icmp eq i32 %call.i.i452, 2
  br i1 %cmp.not.i.i453, label %if.then63.read_reg.exit459_crit_edge, label %do.end.i.i457

if.then63.read_reg.exit459_crit_edge:             ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit459

do.end.i.i457:                                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i454 = zext i16 %add66 to i32
  %dev.i.i455 = getelementptr inbounds %struct.i2c_adapter, ptr %627, i32 0, i32 9
  %conv15.i.i456 = zext i8 %629 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i455, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i456, i32 noundef %conv.i.i454) #10
  br label %read_reg.exit459

read_reg.exit459:                                 ; preds = %do.end.i.i457, %if.then63.read_reg.exit459_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i440) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i439) #6
  %644 = ptrtoint ptr %pdelstatus to i32
  call void @__asan_load1_noabort(i32 %644)
  %645 = load i8, ptr %pdelstatus, align 1
  %646 = and i8 %645, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %646)
  %cmp71.not = icmp eq i8 %646, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pdelstatus) #6
  br i1 %cmp71.not, label %read_reg.exit459.if.end184_crit_edge, label %read_reg.exit459.if.then85_crit_edge

read_reg.exit459.if.then85_crit_edge:             ; preds = %read_reg.exit459
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then85

read_reg.exit459.if.end184_crit_edge:             ; preds = %read_reg.exit459
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end184

if.else:                                          ; preds = %if.then59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %vstatus) #6
  %647 = ptrtoint ptr %vstatus to i32
  call void @__asan_store1_noabort(i32 %647)
  store i8 -1, ptr %vstatus, align 1, !annotation !69
  %648 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %648)
  %649 = load i16, ptr %regoff, align 4
  %add75 = add i16 %649, -3266
  %650 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %1, align 4
  %i2c.i462 = getelementptr inbounds %struct.stv_base, ptr %651, i32 0, i32 2
  %652 = ptrtoint ptr %i2c.i462 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %i2c.i462, align 4
  %adr.i463 = getelementptr inbounds %struct.stv_base, ptr %651, i32 0, i32 1
  %654 = ptrtoint ptr %adr.i463 to i32
  call void @__asan_load1_noabort(i32 %654)
  %655 = load i8, ptr %adr.i463, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i460) #6
  %656 = getelementptr inbounds [2 x i8], ptr %msg.i.i460, i32 0, i32 1
  %657 = lshr i16 %add75, 8
  %conv1.i.i464 = trunc i16 %657 to i8
  %658 = ptrtoint ptr %msg.i.i460 to i32
  call void @__asan_store1_noabort(i32 %658)
  store i8 %conv1.i.i464, ptr %msg.i.i460, align 1
  %conv3.i.i465 = trunc i16 %add75 to i8
  %659 = ptrtoint ptr %656 to i32
  call void @__asan_store1_noabort(i32 %659)
  store i8 %conv3.i.i465, ptr %656, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i461) #6
  %660 = getelementptr inbounds i8, ptr %msgs.i.i461, i32 4
  %661 = call ptr @memset(ptr %660, i32 255, i32 16)
  %conv5.i.i466 = zext i8 %655 to i16
  %662 = ptrtoint ptr %msgs.i.i461 to i32
  call void @__asan_store2_noabort(i32 %662)
  store i16 %conv5.i.i466, ptr %msgs.i.i461, align 4
  %flags.i.i467 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i461, i32 0, i32 1
  %663 = ptrtoint ptr %flags.i.i467 to i32
  call void @__asan_store2_noabort(i32 %663)
  store i16 0, ptr %flags.i.i467, align 2
  %664 = ptrtoint ptr %660 to i32
  call void @__asan_store2_noabort(i32 %664)
  store i16 2, ptr %660, align 4
  %buf.i.i468 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i461, i32 0, i32 3
  %665 = ptrtoint ptr %buf.i.i468 to i32
  call void @__asan_store4_noabort(i32 %665)
  store ptr %msg.i.i460, ptr %buf.i.i468, align 4
  %arrayinit.element6.i.i469 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i461, i32 1
  %666 = ptrtoint ptr %arrayinit.element6.i.i469 to i32
  call void @__asan_store2_noabort(i32 %666)
  store i16 %conv5.i.i466, ptr %arrayinit.element6.i.i469, align 4
  %flags9.i.i470 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i461, i32 1, i32 1
  %667 = ptrtoint ptr %flags9.i.i470 to i32
  call void @__asan_store2_noabort(i32 %667)
  store i16 1, ptr %flags9.i.i470, align 2
  %len10.i.i471 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i461, i32 1, i32 2
  %668 = ptrtoint ptr %len10.i.i471 to i32
  call void @__asan_store2_noabort(i32 %668)
  store i16 1, ptr %len10.i.i471, align 4
  %buf12.i.i472 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i461, i32 1, i32 3
  %669 = ptrtoint ptr %buf12.i.i472 to i32
  call void @__asan_store4_noabort(i32 %669)
  store ptr %vstatus, ptr %buf12.i.i472, align 4
  %call.i.i473 = call i32 @i2c_transfer(ptr noundef %653, ptr noundef nonnull %msgs.i.i461, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i473)
  %cmp.not.i.i474 = icmp eq i32 %call.i.i473, 2
  br i1 %cmp.not.i.i474, label %if.else.if.end83_crit_edge, label %do.end.i.i478

if.else.if.end83_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

do.end.i.i478:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i475 = zext i16 %add75 to i32
  %dev.i.i476 = getelementptr inbounds %struct.i2c_adapter, ptr %653, i32 0, i32 9
  %conv15.i.i477 = zext i8 %655 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i476, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i477, i32 noundef %conv.i.i475) #10
  br label %if.end83

if.end83:                                         ; preds = %do.end.i.i478, %if.else.if.end83_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i461) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i460) #6
  %670 = ptrtoint ptr %vstatus to i32
  call void @__asan_load1_noabort(i32 %670)
  %671 = load i8, ptr %vstatus, align 1
  %672 = and i8 %671, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %672)
  %cmp80.not = icmp eq i8 %672, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vstatus) #6
  br i1 %cmp80.not, label %if.end83.if.end184_crit_edge, label %if.end83.if.then85_crit_edge

if.end83.if.then85_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then85

if.end83.if.end184_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end184

if.then85:                                        ; preds = %if.end83.if.then85_crit_edge, %read_reg.exit459.if.then85_crit_edge
  %673 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %status, align 4
  %or86 = or i32 %674, 16
  store i32 %or86, ptr %status, align 4
  %first_time_lock87 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 16
  %675 = ptrtoint ptr %first_time_lock87 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %first_time_lock87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %676)
  %tobool88.not = icmp eq i32 %676, 0
  br i1 %tobool88.not, label %if.then85.if.end166_crit_edge, label %if.then89

if.then85.if.end166_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end166

if.then89:                                        ; preds = %if.then85
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %677 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %677)
  store i8 -1, ptr %tmp, align 1, !annotation !69
  %678 = ptrtoint ptr %first_time_lock87 to i32
  call void @__asan_store4_noabort(i32 %678)
  store i32 0, ptr %first_time_lock87, align 4
  %started.i483 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 11
  %679 = ptrtoint ptr %started.i483 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load i32, ptr %started.i483, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %680)
  %tobool.not.i484 = icmp eq i32 %680, 0
  br i1 %tobool.not.i484, label %if.then89.manage_matype_info.exit_crit_edge, label %if.end.i486

if.then89.manage_matype_info.exit_crit_edge:      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %manage_matype_info.exit

if.end.i486:                                      ; preds = %if.then89
  %681 = ptrtoint ptr %receive_mode to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load i32, ptr %receive_mode, align 4
  %683 = zext i32 %682 to i64
  call void @__sanitizer_cov_trace_switch(i64 %683, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %682, label %if.end.i486.if.else135_crit_edge [
    i32 2, label %if.then1.i502
    i32 1, label %if.then17.i
  ]

if.end.i486.if.else135_crit_edge:                 ; preds = %if.end.i486
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else135

if.then1.i502:                                    ; preds = %if.end.i486
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bbheader.i) #6
  %684 = ptrtoint ptr %bbheader.i to i32
  call void @__asan_store1_noabort(i32 %684)
  store i8 -1, ptr %bbheader.i, align 1, !annotation !69
  %685 = getelementptr inbounds [2 x i8], ptr %bbheader.i, i32 0, i32 1
  %686 = ptrtoint ptr %685 to i32
  call void @__asan_store1_noabort(i32 %686)
  store i8 -1, ptr %685, align 1, !annotation !69
  %687 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %687)
  %688 = load i16, ptr %regoff, align 4
  %add.i488 = add i16 %688, -3232
  %689 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %1, align 4
  %i2c.i.i489 = getelementptr inbounds %struct.stv_base, ptr %690, i32 0, i32 2
  %691 = ptrtoint ptr %i2c.i.i489 to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %i2c.i.i489, align 4
  %adr.i.i490 = getelementptr inbounds %struct.stv_base, ptr %690, i32 0, i32 1
  %693 = ptrtoint ptr %adr.i.i490 to i32
  call void @__asan_load1_noabort(i32 %693)
  %694 = load i8, ptr %adr.i.i490, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i481) #6
  %695 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i481, i32 0, i32 1
  %696 = lshr i16 %add.i488, 8
  %conv1.i.i.i491 = trunc i16 %696 to i8
  %697 = ptrtoint ptr %msg.i.i.i481 to i32
  call void @__asan_store1_noabort(i32 %697)
  store i8 %conv1.i.i.i491, ptr %msg.i.i.i481, align 1
  %conv3.i.i.i492 = trunc i16 %add.i488 to i8
  %698 = ptrtoint ptr %695 to i32
  call void @__asan_store1_noabort(i32 %698)
  store i8 %conv3.i.i.i492, ptr %695, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i482) #6
  %699 = getelementptr inbounds i8, ptr %msgs.i.i.i482, i32 4
  %700 = call ptr @memset(ptr %699, i32 255, i32 16)
  %conv5.i.i.i493 = zext i8 %694 to i16
  %701 = ptrtoint ptr %msgs.i.i.i482 to i32
  call void @__asan_store2_noabort(i32 %701)
  store i16 %conv5.i.i.i493, ptr %msgs.i.i.i482, align 4
  %flags.i.i.i494 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i482, i32 0, i32 1
  %702 = ptrtoint ptr %flags.i.i.i494 to i32
  call void @__asan_store2_noabort(i32 %702)
  store i16 0, ptr %flags.i.i.i494, align 2
  %703 = ptrtoint ptr %699 to i32
  call void @__asan_store2_noabort(i32 %703)
  store i16 2, ptr %699, align 4
  %buf.i.i.i495 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i482, i32 0, i32 3
  %704 = ptrtoint ptr %buf.i.i.i495 to i32
  call void @__asan_store4_noabort(i32 %704)
  store ptr %msg.i.i.i481, ptr %buf.i.i.i495, align 4
  %arrayinit.element6.i.i.i496 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i482, i32 1
  %705 = ptrtoint ptr %arrayinit.element6.i.i.i496 to i32
  call void @__asan_store2_noabort(i32 %705)
  store i16 %conv5.i.i.i493, ptr %arrayinit.element6.i.i.i496, align 4
  %flags9.i.i.i497 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i482, i32 1, i32 1
  %706 = ptrtoint ptr %flags9.i.i.i497 to i32
  call void @__asan_store2_noabort(i32 %706)
  store i16 1, ptr %flags9.i.i.i497, align 2
  %len10.i.i.i498 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i482, i32 1, i32 2
  %707 = ptrtoint ptr %len10.i.i.i498 to i32
  call void @__asan_store2_noabort(i32 %707)
  store i16 2, ptr %len10.i.i.i498, align 4
  %buf12.i.i.i499 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i482, i32 1, i32 3
  %708 = ptrtoint ptr %buf12.i.i.i499 to i32
  call void @__asan_store4_noabort(i32 %708)
  store ptr %bbheader.i, ptr %buf12.i.i.i499, align 4
  %call.i.i.i500 = call i32 @i2c_transfer(ptr noundef %692, ptr noundef nonnull %msgs.i.i.i482, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i500)
  %cmp.not.i.i.i501 = icmp eq i32 %call.i.i.i500, 2
  br i1 %cmp.not.i.i.i501, label %if.then1.i502.read_regs.exit.i511_crit_edge, label %do.end.i.i.i506

if.then1.i502.read_regs.exit.i511_crit_edge:      ; preds = %if.then1.i502
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_regs.exit.i511

do.end.i.i.i506:                                  ; preds = %if.then1.i502
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i503 = zext i16 %add.i488 to i32
  %dev.i.i.i504 = getelementptr inbounds %struct.i2c_adapter, ptr %692, i32 0, i32 9
  %conv15.i.i.i505 = zext i8 %694 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i504, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i.i505, i32 noundef %conv.i.i.i503) #10
  br label %read_regs.exit.i511

read_regs.exit.i511:                              ; preds = %do.end.i.i.i506, %if.then1.i502.read_regs.exit.i511_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i482) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i481) #6
  %709 = ptrtoint ptr %bbheader.i to i32
  call void @__asan_load1_noabort(i32 %709)
  %710 = load i8, ptr %bbheader.i, align 1
  %711 = and i8 %710, 3
  %and.i = zext i8 %711 to i32
  %feroll_off.i507 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 24
  %712 = ptrtoint ptr %feroll_off.i507 to i32
  call void @__asan_store4_noabort(i32 %712)
  store i32 %and.i, ptr %feroll_off.i507, align 4
  %713 = lshr i8 %710, 4
  %.lobit.i = and i8 %713, 1
  %714 = xor i8 %.lobit.i, 1
  %715 = zext i8 %714 to i32
  %is_vcm.i508 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 26
  %716 = ptrtoint ptr %is_vcm.i508 to i32
  call void @__asan_store4_noabort(i32 %716)
  store i32 %715, ptr %is_vcm.i508, align 4
  %717 = and i8 %710, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %717)
  %cmp12.i509 = icmp eq i8 %717, -16
  %conv13.i = zext i1 %cmp12.i509 to i32
  %is_standard_broadcast.i510 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 25
  %718 = ptrtoint ptr %is_standard_broadcast.i510 to i32
  call void @__asan_store4_noabort(i32 %718)
  store i32 %conv13.i, ptr %is_standard_broadcast.i510, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bbheader.i) #6
  br label %manage_matype_info.exit

if.then17.i:                                      ; preds = %if.end.i486
  call void @__sanitizer_cov_trace_pc() #8
  %is_vcm18.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 26
  %719 = ptrtoint ptr %is_vcm18.i to i32
  call void @__asan_store4_noabort(i32 %719)
  store i32 0, ptr %is_vcm18.i, align 4
  %is_standard_broadcast19.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 25
  %720 = ptrtoint ptr %is_standard_broadcast19.i to i32
  call void @__asan_store4_noabort(i32 %720)
  store i32 1, ptr %is_standard_broadcast19.i, align 4
  %feroll_off20.i = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 24
  %721 = ptrtoint ptr %feroll_off20.i to i32
  call void @__asan_store4_noabort(i32 %721)
  store i32 0, ptr %feroll_off20.i, align 4
  br label %manage_matype_info.exit

manage_matype_info.exit:                          ; preds = %if.then17.i, %read_regs.exit.i511, %if.then89.manage_matype_info.exit_crit_edge
  %722 = ptrtoint ptr %receive_mode to i32
  call void @__asan_load4_noabort(i32 %722)
  %.pr = load i32, ptr %receive_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp93 = icmp eq i32 %.pr, 2
  br i1 %cmp93, label %if.then95, label %manage_matype_info.exit.if.else135_crit_edge

manage_matype_info.exit.if.else135_crit_edge:     ; preds = %manage_matype_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else135

if.then95:                                        ; preds = %manage_matype_info.exit
  %demod_bits = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 17
  %723 = ptrtoint ptr %demod_bits to i32
  call void @__asan_load1_noabort(i32 %723)
  %724 = load i8, ptr %demod_bits, align 4
  %725 = and i8 %724, 123
  store i8 %725, ptr %demod_bits, align 4
  %726 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %726)
  %727 = load i16, ptr %regoff, align 4
  %add101 = add i16 %727, -3568
  %728 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %1, align 4
  %i2c.i514 = getelementptr inbounds %struct.stv_base, ptr %729, i32 0, i32 2
  %730 = ptrtoint ptr %i2c.i514 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %i2c.i514, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i512) #6
  %732 = getelementptr inbounds [3 x i8], ptr %data.i512, i32 0, i32 1
  %733 = getelementptr inbounds [3 x i8], ptr %data.i512, i32 0, i32 2
  %734 = lshr i16 %add101, 8
  %conv1.i515 = trunc i16 %734 to i8
  %735 = ptrtoint ptr %data.i512 to i32
  call void @__asan_store1_noabort(i32 %735)
  store i8 %conv1.i515, ptr %data.i512, align 1
  %conv3.i516 = trunc i16 %add101 to i8
  %736 = ptrtoint ptr %732 to i32
  call void @__asan_store1_noabort(i32 %736)
  store i8 %conv3.i516, ptr %732, align 1
  %737 = ptrtoint ptr %733 to i32
  call void @__asan_store1_noabort(i32 %737)
  store i8 %725, ptr %733, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i513) #6
  %738 = getelementptr inbounds i8, ptr %msg.i513, i32 4
  %739 = ptrtoint ptr %738 to i32
  call void @__asan_store4_noabort(i32 %739)
  store i32 262143, ptr %738, align 4
  %adr.i517 = getelementptr inbounds %struct.stv_base, ptr %729, i32 0, i32 1
  %740 = ptrtoint ptr %adr.i517 to i32
  call void @__asan_load1_noabort(i32 %740)
  %741 = load i8, ptr %adr.i517, align 4
  %conv6.i518 = zext i8 %741 to i16
  %742 = ptrtoint ptr %msg.i513 to i32
  call void @__asan_store2_noabort(i32 %742)
  store i16 %conv6.i518, ptr %msg.i513, align 4
  %flags.i519 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i513, i32 0, i32 1
  %743 = ptrtoint ptr %flags.i519 to i32
  call void @__asan_store2_noabort(i32 %743)
  store i16 0, ptr %flags.i519, align 2
  %buf.i521 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i513, i32 0, i32 3
  %744 = ptrtoint ptr %buf.i521 to i32
  call void @__asan_store4_noabort(i32 %744)
  store ptr %data.i512, ptr %buf.i521, align 4
  %call.i522 = call i32 @i2c_transfer(ptr noundef %731, ptr noundef nonnull %msg.i513, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i522)
  %cmp.not.i523 = icmp eq i32 %call.i522, 1
  br i1 %cmp.not.i523, label %if.then95.write_reg.exit531_crit_edge, label %do.end.i529

if.then95.write_reg.exit531_crit_edge:            ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit531

do.end.i529:                                      ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i524 = zext i16 %add101 to i32
  %dev.i525 = getelementptr inbounds %struct.i2c_adapter, ptr %731, i32 0, i32 9
  %745 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %1, align 4
  %adr9.i526 = getelementptr inbounds %struct.stv_base, ptr %746, i32 0, i32 1
  %747 = ptrtoint ptr %adr9.i526 to i32
  call void @__asan_load1_noabort(i32 %747)
  %748 = load i8, ptr %adr9.i526, align 4
  %conv10.i527 = zext i8 %748 to i32
  %conv12.i528 = zext i8 %725 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i525, ptr noundef nonnull @.str.14, i32 noundef %conv10.i527, i32 noundef %conv.i524, i32 noundef %conv12.i528) #10
  br label %write_reg.exit531

write_reg.exit531:                                ; preds = %do.end.i529, %if.then95.write_reg.exit531_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i513) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i512) #6
  %749 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %749)
  %750 = load i16, ptr %regoff, align 4
  %add107 = add i16 %750, -3247
  %751 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %1, align 4
  %i2c.i534 = getelementptr inbounds %struct.stv_base, ptr %752, i32 0, i32 2
  %753 = ptrtoint ptr %i2c.i534 to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %i2c.i534, align 4
  %adr.i535 = getelementptr inbounds %struct.stv_base, ptr %752, i32 0, i32 1
  %755 = ptrtoint ptr %adr.i535 to i32
  call void @__asan_load1_noabort(i32 %755)
  %756 = load i8, ptr %adr.i535, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i532) #6
  %757 = getelementptr inbounds [2 x i8], ptr %msg.i.i532, i32 0, i32 1
  %758 = lshr i16 %add107, 8
  %conv1.i.i536 = trunc i16 %758 to i8
  %759 = ptrtoint ptr %msg.i.i532 to i32
  call void @__asan_store1_noabort(i32 %759)
  store i8 %conv1.i.i536, ptr %msg.i.i532, align 1
  %conv3.i.i537 = trunc i16 %add107 to i8
  %760 = ptrtoint ptr %757 to i32
  call void @__asan_store1_noabort(i32 %760)
  store i8 %conv3.i.i537, ptr %757, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i533) #6
  %761 = getelementptr inbounds i8, ptr %msgs.i.i533, i32 4
  %762 = call ptr @memset(ptr %761, i32 255, i32 16)
  %conv5.i.i538 = zext i8 %756 to i16
  %763 = ptrtoint ptr %msgs.i.i533 to i32
  call void @__asan_store2_noabort(i32 %763)
  store i16 %conv5.i.i538, ptr %msgs.i.i533, align 4
  %flags.i.i539 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i533, i32 0, i32 1
  %764 = ptrtoint ptr %flags.i.i539 to i32
  call void @__asan_store2_noabort(i32 %764)
  store i16 0, ptr %flags.i.i539, align 2
  %765 = ptrtoint ptr %761 to i32
  call void @__asan_store2_noabort(i32 %765)
  store i16 2, ptr %761, align 4
  %buf.i.i540 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i533, i32 0, i32 3
  %766 = ptrtoint ptr %buf.i.i540 to i32
  call void @__asan_store4_noabort(i32 %766)
  store ptr %msg.i.i532, ptr %buf.i.i540, align 4
  %arrayinit.element6.i.i541 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i533, i32 1
  %767 = ptrtoint ptr %arrayinit.element6.i.i541 to i32
  call void @__asan_store2_noabort(i32 %767)
  store i16 %conv5.i.i538, ptr %arrayinit.element6.i.i541, align 4
  %flags9.i.i542 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i533, i32 1, i32 1
  %768 = ptrtoint ptr %flags9.i.i542 to i32
  call void @__asan_store2_noabort(i32 %768)
  store i16 1, ptr %flags9.i.i542, align 2
  %len10.i.i543 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i533, i32 1, i32 2
  %769 = ptrtoint ptr %len10.i.i543 to i32
  call void @__asan_store2_noabort(i32 %769)
  store i16 1, ptr %len10.i.i543, align 4
  %buf12.i.i544 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i533, i32 1, i32 3
  %770 = ptrtoint ptr %buf12.i.i544 to i32
  call void @__asan_store4_noabort(i32 %770)
  store ptr %tmp, ptr %buf12.i.i544, align 4
  %call.i.i545 = call i32 @i2c_transfer(ptr noundef %754, ptr noundef nonnull %msgs.i.i533, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i545)
  %cmp.not.i.i546 = icmp eq i32 %call.i.i545, 2
  br i1 %cmp.not.i.i546, label %write_reg.exit531.read_reg.exit552_crit_edge, label %do.end.i.i550

write_reg.exit531.read_reg.exit552_crit_edge:     ; preds = %write_reg.exit531
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit552

do.end.i.i550:                                    ; preds = %write_reg.exit531
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i547 = zext i16 %add107 to i32
  %dev.i.i548 = getelementptr inbounds %struct.i2c_adapter, ptr %754, i32 0, i32 9
  %conv15.i.i549 = zext i8 %756 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i548, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i549, i32 noundef %conv.i.i547) #10
  br label %read_reg.exit552

read_reg.exit552:                                 ; preds = %do.end.i.i550, %write_reg.exit531.read_reg.exit552_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i533) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i532) #6
  %771 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %771)
  %772 = load i8, ptr %tmp, align 1
  %773 = or i8 %772, 64
  store i8 %773, ptr %tmp, align 1
  %774 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %774)
  %775 = load i16, ptr %regoff, align 4
  %add115 = add i16 %775, -3247
  %776 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %1, align 4
  %i2c.i555 = getelementptr inbounds %struct.stv_base, ptr %777, i32 0, i32 2
  %778 = ptrtoint ptr %i2c.i555 to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %i2c.i555, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i553) #6
  %780 = getelementptr inbounds [3 x i8], ptr %data.i553, i32 0, i32 1
  %781 = getelementptr inbounds [3 x i8], ptr %data.i553, i32 0, i32 2
  %782 = lshr i16 %add115, 8
  %conv1.i556 = trunc i16 %782 to i8
  %783 = ptrtoint ptr %data.i553 to i32
  call void @__asan_store1_noabort(i32 %783)
  store i8 %conv1.i556, ptr %data.i553, align 1
  %conv3.i557 = trunc i16 %add115 to i8
  %784 = ptrtoint ptr %780 to i32
  call void @__asan_store1_noabort(i32 %784)
  store i8 %conv3.i557, ptr %780, align 1
  %785 = ptrtoint ptr %781 to i32
  call void @__asan_store1_noabort(i32 %785)
  store i8 %773, ptr %781, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i554) #6
  %786 = getelementptr inbounds i8, ptr %msg.i554, i32 4
  %787 = ptrtoint ptr %786 to i32
  call void @__asan_store4_noabort(i32 %787)
  store i32 262143, ptr %786, align 4
  %adr.i558 = getelementptr inbounds %struct.stv_base, ptr %777, i32 0, i32 1
  %788 = ptrtoint ptr %adr.i558 to i32
  call void @__asan_load1_noabort(i32 %788)
  %789 = load i8, ptr %adr.i558, align 4
  %conv6.i559 = zext i8 %789 to i16
  %790 = ptrtoint ptr %msg.i554 to i32
  call void @__asan_store2_noabort(i32 %790)
  store i16 %conv6.i559, ptr %msg.i554, align 4
  %flags.i560 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i554, i32 0, i32 1
  %791 = ptrtoint ptr %flags.i560 to i32
  call void @__asan_store2_noabort(i32 %791)
  store i16 0, ptr %flags.i560, align 2
  %buf.i562 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i554, i32 0, i32 3
  %792 = ptrtoint ptr %buf.i562 to i32
  call void @__asan_store4_noabort(i32 %792)
  store ptr %data.i553, ptr %buf.i562, align 4
  %call.i563 = call i32 @i2c_transfer(ptr noundef %779, ptr noundef nonnull %msg.i554, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i563)
  %cmp.not.i564 = icmp eq i32 %call.i563, 1
  br i1 %cmp.not.i564, label %read_reg.exit552.write_reg.exit572_crit_edge, label %do.end.i570

read_reg.exit552.write_reg.exit572_crit_edge:     ; preds = %read_reg.exit552
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit572

do.end.i570:                                      ; preds = %read_reg.exit552
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i565 = zext i16 %add115 to i32
  %dev.i566 = getelementptr inbounds %struct.i2c_adapter, ptr %779, i32 0, i32 9
  %793 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %1, align 4
  %adr9.i567 = getelementptr inbounds %struct.stv_base, ptr %794, i32 0, i32 1
  %795 = ptrtoint ptr %adr9.i567 to i32
  call void @__asan_load1_noabort(i32 %795)
  %796 = load i8, ptr %adr9.i567, align 4
  %conv10.i568 = zext i8 %796 to i32
  %conv12.i569 = zext i8 %773 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i566, ptr noundef nonnull @.str.14, i32 noundef %conv10.i568, i32 noundef %conv.i565, i32 noundef %conv12.i569) #10
  br label %write_reg.exit572

write_reg.exit572:                                ; preds = %do.end.i570, %read_reg.exit552.write_reg.exit572_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i554) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i553) #6
  %797 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %797)
  %798 = load i8, ptr %tmp, align 1
  %799 = and i8 %798, -65
  store i8 %799, ptr %tmp, align 1
  %800 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %800)
  %801 = load i16, ptr %regoff, align 4
  %add123 = add i16 %801, -3247
  %802 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %1, align 4
  %i2c.i575 = getelementptr inbounds %struct.stv_base, ptr %803, i32 0, i32 2
  %804 = ptrtoint ptr %i2c.i575 to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %i2c.i575, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i573) #6
  %806 = getelementptr inbounds [3 x i8], ptr %data.i573, i32 0, i32 1
  %807 = getelementptr inbounds [3 x i8], ptr %data.i573, i32 0, i32 2
  %808 = lshr i16 %add123, 8
  %conv1.i576 = trunc i16 %808 to i8
  %809 = ptrtoint ptr %data.i573 to i32
  call void @__asan_store1_noabort(i32 %809)
  store i8 %conv1.i576, ptr %data.i573, align 1
  %conv3.i577 = trunc i16 %add123 to i8
  %810 = ptrtoint ptr %806 to i32
  call void @__asan_store1_noabort(i32 %810)
  store i8 %conv3.i577, ptr %806, align 1
  %811 = ptrtoint ptr %807 to i32
  call void @__asan_store1_noabort(i32 %811)
  store i8 %799, ptr %807, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i574) #6
  %812 = getelementptr inbounds i8, ptr %msg.i574, i32 4
  %813 = ptrtoint ptr %812 to i32
  call void @__asan_store4_noabort(i32 %813)
  store i32 262143, ptr %812, align 4
  %adr.i578 = getelementptr inbounds %struct.stv_base, ptr %803, i32 0, i32 1
  %814 = ptrtoint ptr %adr.i578 to i32
  call void @__asan_load1_noabort(i32 %814)
  %815 = load i8, ptr %adr.i578, align 4
  %conv6.i579 = zext i8 %815 to i16
  %816 = ptrtoint ptr %msg.i574 to i32
  call void @__asan_store2_noabort(i32 %816)
  store i16 %conv6.i579, ptr %msg.i574, align 4
  %flags.i580 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i574, i32 0, i32 1
  %817 = ptrtoint ptr %flags.i580 to i32
  call void @__asan_store2_noabort(i32 %817)
  store i16 0, ptr %flags.i580, align 2
  %buf.i582 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i574, i32 0, i32 3
  %818 = ptrtoint ptr %buf.i582 to i32
  call void @__asan_store4_noabort(i32 %818)
  store ptr %data.i573, ptr %buf.i582, align 4
  %call.i583 = call i32 @i2c_transfer(ptr noundef %805, ptr noundef nonnull %msg.i574, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i583)
  %cmp.not.i584 = icmp eq i32 %call.i583, 1
  br i1 %cmp.not.i584, label %write_reg.exit572.write_reg.exit592_crit_edge, label %do.end.i590

write_reg.exit572.write_reg.exit592_crit_edge:    ; preds = %write_reg.exit572
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit592

do.end.i590:                                      ; preds = %write_reg.exit572
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i585 = zext i16 %add123 to i32
  %dev.i586 = getelementptr inbounds %struct.i2c_adapter, ptr %805, i32 0, i32 9
  %819 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %1, align 4
  %adr9.i587 = getelementptr inbounds %struct.stv_base, ptr %820, i32 0, i32 1
  %821 = ptrtoint ptr %adr9.i587 to i32
  call void @__asan_load1_noabort(i32 %821)
  %822 = load i8, ptr %adr9.i587, align 4
  %conv10.i588 = zext i8 %822 to i32
  %conv12.i589 = zext i8 %799 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i586, ptr noundef nonnull @.str.14, i32 noundef %conv10.i588, i32 noundef %conv.i585, i32 noundef %conv12.i589) #10
  br label %write_reg.exit592

write_reg.exit592:                                ; preds = %do.end.i590, %write_reg.exit572.write_reg.exit592_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i574) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i573) #6
  %berscale = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 30
  %823 = ptrtoint ptr %berscale to i32
  call void @__asan_store1_noabort(i32 %823)
  store i8 2, ptr %berscale, align 4
  %last_bernumerator = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 28
  %824 = ptrtoint ptr %last_bernumerator to i32
  call void @__asan_store4_noabort(i32 %824)
  store i32 0, ptr %last_bernumerator, align 4
  %last_berdenominator = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 29
  %825 = ptrtoint ptr %last_berdenominator to i32
  call void @__asan_store4_noabort(i32 %825)
  store i32 1, ptr %last_berdenominator, align 4
  %826 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %826)
  %827 = load i16, ptr %regoff, align 4
  %add128 = add i16 %827, -3176
  %828 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %1, align 4
  %i2c.i595 = getelementptr inbounds %struct.stv_base, ptr %829, i32 0, i32 2
  %830 = ptrtoint ptr %i2c.i595 to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %i2c.i595, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i593) #6
  %832 = getelementptr inbounds [3 x i8], ptr %data.i593, i32 0, i32 1
  %833 = getelementptr inbounds [3 x i8], ptr %data.i593, i32 0, i32 2
  %834 = lshr i16 %add128, 8
  %conv1.i596 = trunc i16 %834 to i8
  %835 = ptrtoint ptr %data.i593 to i32
  call void @__asan_store1_noabort(i32 %835)
  store i8 %conv1.i596, ptr %data.i593, align 1
  %conv3.i597 = trunc i16 %add128 to i8
  %836 = ptrtoint ptr %832 to i32
  call void @__asan_store1_noabort(i32 %836)
  store i8 %conv3.i597, ptr %832, align 1
  %837 = ptrtoint ptr %833 to i32
  call void @__asan_store1_noabort(i32 %837)
  store i8 34, ptr %833, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i594) #6
  %838 = getelementptr inbounds i8, ptr %msg.i594, i32 4
  %839 = ptrtoint ptr %838 to i32
  call void @__asan_store4_noabort(i32 %839)
  store i32 262143, ptr %838, align 4
  %adr.i598 = getelementptr inbounds %struct.stv_base, ptr %829, i32 0, i32 1
  %840 = ptrtoint ptr %adr.i598 to i32
  call void @__asan_load1_noabort(i32 %840)
  %841 = load i8, ptr %adr.i598, align 4
  %conv6.i599 = zext i8 %841 to i16
  %842 = ptrtoint ptr %msg.i594 to i32
  call void @__asan_store2_noabort(i32 %842)
  store i16 %conv6.i599, ptr %msg.i594, align 4
  %flags.i600 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i594, i32 0, i32 1
  %843 = ptrtoint ptr %flags.i600 to i32
  call void @__asan_store2_noabort(i32 %843)
  store i16 0, ptr %flags.i600, align 2
  %buf.i602 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i594, i32 0, i32 3
  %844 = ptrtoint ptr %buf.i602 to i32
  call void @__asan_store4_noabort(i32 %844)
  store ptr %data.i593, ptr %buf.i602, align 4
  %call.i603 = call i32 @i2c_transfer(ptr noundef %831, ptr noundef nonnull %msg.i594, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i603)
  %cmp.not.i604 = icmp eq i32 %call.i603, 1
  br i1 %cmp.not.i604, label %write_reg.exit592.write_reg.exit612_crit_edge, label %do.end.i610

write_reg.exit592.write_reg.exit612_crit_edge:    ; preds = %write_reg.exit592
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit612

do.end.i610:                                      ; preds = %write_reg.exit592
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i605 = zext i16 %add128 to i32
  %dev.i606 = getelementptr inbounds %struct.i2c_adapter, ptr %831, i32 0, i32 9
  %845 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %1, align 4
  %adr9.i607 = getelementptr inbounds %struct.stv_base, ptr %846, i32 0, i32 1
  %847 = ptrtoint ptr %adr9.i607 to i32
  call void @__asan_load1_noabort(i32 %847)
  %848 = load i8, ptr %adr9.i607, align 4
  %conv10.i608 = zext i8 %848 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i606, ptr noundef nonnull @.str.14, i32 noundef %conv10.i608, i32 noundef %conv.i605, i32 noundef 34) #10
  br label %write_reg.exit612

write_reg.exit612:                                ; preds = %do.end.i610, %write_reg.exit592.write_reg.exit612_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i594) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i593) #6
  br label %if.end148

if.else135:                                       ; preds = %manage_matype_info.exit.if.else135_crit_edge, %if.end.i486.if.else135_crit_edge
  %berscale136 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 30
  %849 = ptrtoint ptr %berscale136 to i32
  call void @__asan_store1_noabort(i32 %849)
  store i8 2, ptr %berscale136, align 4
  %last_bernumerator137 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 28
  %850 = ptrtoint ptr %last_bernumerator137 to i32
  call void @__asan_store4_noabort(i32 %850)
  store i32 0, ptr %last_bernumerator137, align 4
  %last_berdenominator138 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 29
  %851 = ptrtoint ptr %last_berdenominator138 to i32
  call void @__asan_store4_noabort(i32 %851)
  store i32 1, ptr %last_berdenominator138, align 4
  %852 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %852)
  %853 = load i16, ptr %regoff, align 4
  %add141 = add i16 %853, -3176
  %854 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %1, align 4
  %i2c.i615 = getelementptr inbounds %struct.stv_base, ptr %855, i32 0, i32 2
  %856 = ptrtoint ptr %i2c.i615 to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %i2c.i615, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i613) #6
  %858 = getelementptr inbounds [3 x i8], ptr %data.i613, i32 0, i32 1
  %859 = getelementptr inbounds [3 x i8], ptr %data.i613, i32 0, i32 2
  %860 = lshr i16 %add141, 8
  %conv1.i616 = trunc i16 %860 to i8
  %861 = ptrtoint ptr %data.i613 to i32
  call void @__asan_store1_noabort(i32 %861)
  store i8 %conv1.i616, ptr %data.i613, align 1
  %conv3.i617 = trunc i16 %add141 to i8
  %862 = ptrtoint ptr %858 to i32
  call void @__asan_store1_noabort(i32 %862)
  store i8 %conv3.i617, ptr %858, align 1
  %863 = ptrtoint ptr %859 to i32
  call void @__asan_store1_noabort(i32 %863)
  store i8 34, ptr %859, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i614) #6
  %864 = getelementptr inbounds i8, ptr %msg.i614, i32 4
  %865 = ptrtoint ptr %864 to i32
  call void @__asan_store4_noabort(i32 %865)
  store i32 262143, ptr %864, align 4
  %adr.i618 = getelementptr inbounds %struct.stv_base, ptr %855, i32 0, i32 1
  %866 = ptrtoint ptr %adr.i618 to i32
  call void @__asan_load1_noabort(i32 %866)
  %867 = load i8, ptr %adr.i618, align 4
  %conv6.i619 = zext i8 %867 to i16
  %868 = ptrtoint ptr %msg.i614 to i32
  call void @__asan_store2_noabort(i32 %868)
  store i16 %conv6.i619, ptr %msg.i614, align 4
  %flags.i620 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i614, i32 0, i32 1
  %869 = ptrtoint ptr %flags.i620 to i32
  call void @__asan_store2_noabort(i32 %869)
  store i16 0, ptr %flags.i620, align 2
  %buf.i622 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i614, i32 0, i32 3
  %870 = ptrtoint ptr %buf.i622 to i32
  call void @__asan_store4_noabort(i32 %870)
  store ptr %data.i613, ptr %buf.i622, align 4
  %call.i623 = call i32 @i2c_transfer(ptr noundef %857, ptr noundef nonnull %msg.i614, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i623)
  %cmp.not.i624 = icmp eq i32 %call.i623, 1
  br i1 %cmp.not.i624, label %if.else135.write_reg.exit632_crit_edge, label %do.end.i630

if.else135.write_reg.exit632_crit_edge:           ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit632

do.end.i630:                                      ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i625 = zext i16 %add141 to i32
  %dev.i626 = getelementptr inbounds %struct.i2c_adapter, ptr %857, i32 0, i32 9
  %871 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load ptr, ptr %1, align 4
  %adr9.i627 = getelementptr inbounds %struct.stv_base, ptr %872, i32 0, i32 1
  %873 = ptrtoint ptr %adr9.i627 to i32
  call void @__asan_load1_noabort(i32 %873)
  %874 = load i8, ptr %adr9.i627, align 4
  %conv10.i628 = zext i8 %874 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i626, ptr noundef nonnull @.str.14, i32 noundef %conv10.i628, i32 noundef %conv.i625, i32 noundef 34) #10
  br label %write_reg.exit632

write_reg.exit632:                                ; preds = %do.end.i630, %if.else135.write_reg.exit632_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i614) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i613) #6
  br label %if.end148

if.end148:                                        ; preds = %write_reg.exit632, %write_reg.exit612
  %875 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %875)
  %876 = load i16, ptr %regoff, align 4
  %add151 = add i16 %876, -3160
  %877 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load ptr, ptr %1, align 4
  %i2c.i635 = getelementptr inbounds %struct.stv_base, ptr %878, i32 0, i32 2
  %879 = ptrtoint ptr %i2c.i635 to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load ptr, ptr %i2c.i635, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i633) #6
  %881 = getelementptr inbounds [3 x i8], ptr %data.i633, i32 0, i32 1
  %882 = getelementptr inbounds [3 x i8], ptr %data.i633, i32 0, i32 2
  %883 = lshr i16 %add151, 8
  %conv1.i636 = trunc i16 %883 to i8
  %884 = ptrtoint ptr %data.i633 to i32
  call void @__asan_store1_noabort(i32 %884)
  store i8 %conv1.i636, ptr %data.i633, align 1
  %conv3.i637 = trunc i16 %add151 to i8
  %885 = ptrtoint ptr %881 to i32
  call void @__asan_store1_noabort(i32 %885)
  store i8 %conv3.i637, ptr %881, align 1
  %886 = ptrtoint ptr %882 to i32
  call void @__asan_store1_noabort(i32 %886)
  store i8 0, ptr %882, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i634) #6
  %887 = getelementptr inbounds i8, ptr %msg.i634, i32 4
  %888 = ptrtoint ptr %887 to i32
  call void @__asan_store4_noabort(i32 %888)
  store i32 262143, ptr %887, align 4
  %adr.i638 = getelementptr inbounds %struct.stv_base, ptr %878, i32 0, i32 1
  %889 = ptrtoint ptr %adr.i638 to i32
  call void @__asan_load1_noabort(i32 %889)
  %890 = load i8, ptr %adr.i638, align 4
  %conv6.i639 = zext i8 %890 to i16
  %891 = ptrtoint ptr %msg.i634 to i32
  call void @__asan_store2_noabort(i32 %891)
  store i16 %conv6.i639, ptr %msg.i634, align 4
  %flags.i640 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i634, i32 0, i32 1
  %892 = ptrtoint ptr %flags.i640 to i32
  call void @__asan_store2_noabort(i32 %892)
  store i16 0, ptr %flags.i640, align 2
  %buf.i642 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i634, i32 0, i32 3
  %893 = ptrtoint ptr %buf.i642 to i32
  call void @__asan_store4_noabort(i32 %893)
  store ptr %data.i633, ptr %buf.i642, align 4
  %call.i643 = call i32 @i2c_transfer(ptr noundef %880, ptr noundef nonnull %msg.i634, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i643)
  %cmp.not.i644 = icmp eq i32 %call.i643, 1
  br i1 %cmp.not.i644, label %if.end148.write_reg.exit651_crit_edge, label %do.end.i649

if.end148.write_reg.exit651_crit_edge:            ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit651

do.end.i649:                                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i645 = zext i16 %add151 to i32
  %dev.i646 = getelementptr inbounds %struct.i2c_adapter, ptr %880, i32 0, i32 9
  %894 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %1, align 4
  %adr9.i647 = getelementptr inbounds %struct.stv_base, ptr %895, i32 0, i32 1
  %896 = ptrtoint ptr %adr9.i647 to i32
  call void @__asan_load1_noabort(i32 %896)
  %897 = load i8, ptr %adr9.i647, align 4
  %conv10.i648 = zext i8 %897 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i646, ptr noundef nonnull @.str.14, i32 noundef %conv10.i648, i32 noundef %conv.i645, i32 noundef 0) #10
  br label %write_reg.exit651

write_reg.exit651:                                ; preds = %do.end.i649, %if.end148.write_reg.exit651_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i634) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i633) #6
  %898 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %898)
  %899 = load i16, ptr %regoff, align 4
  %add156 = add i16 %899, -3172
  %900 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load ptr, ptr %1, align 4
  %i2c.i654 = getelementptr inbounds %struct.stv_base, ptr %901, i32 0, i32 2
  %902 = ptrtoint ptr %i2c.i654 to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load ptr, ptr %i2c.i654, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i652) #6
  %904 = getelementptr inbounds [3 x i8], ptr %data.i652, i32 0, i32 1
  %905 = getelementptr inbounds [3 x i8], ptr %data.i652, i32 0, i32 2
  %906 = lshr i16 %add156, 8
  %conv1.i655 = trunc i16 %906 to i8
  %907 = ptrtoint ptr %data.i652 to i32
  call void @__asan_store1_noabort(i32 %907)
  store i8 %conv1.i655, ptr %data.i652, align 1
  %conv3.i656 = trunc i16 %add156 to i8
  %908 = ptrtoint ptr %904 to i32
  call void @__asan_store1_noabort(i32 %908)
  store i8 %conv3.i656, ptr %904, align 1
  %909 = ptrtoint ptr %905 to i32
  call void @__asan_store1_noabort(i32 %909)
  store i8 -63, ptr %905, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i653) #6
  %910 = getelementptr inbounds i8, ptr %msg.i653, i32 4
  %911 = ptrtoint ptr %910 to i32
  call void @__asan_store4_noabort(i32 %911)
  store i32 262143, ptr %910, align 4
  %adr.i657 = getelementptr inbounds %struct.stv_base, ptr %901, i32 0, i32 1
  %912 = ptrtoint ptr %adr.i657 to i32
  call void @__asan_load1_noabort(i32 %912)
  %913 = load i8, ptr %adr.i657, align 4
  %conv6.i658 = zext i8 %913 to i16
  %914 = ptrtoint ptr %msg.i653 to i32
  call void @__asan_store2_noabort(i32 %914)
  store i16 %conv6.i658, ptr %msg.i653, align 4
  %flags.i659 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i653, i32 0, i32 1
  %915 = ptrtoint ptr %flags.i659 to i32
  call void @__asan_store2_noabort(i32 %915)
  store i16 0, ptr %flags.i659, align 2
  %buf.i661 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i653, i32 0, i32 3
  %916 = ptrtoint ptr %buf.i661 to i32
  call void @__asan_store4_noabort(i32 %916)
  store ptr %data.i652, ptr %buf.i661, align 4
  %call.i662 = call i32 @i2c_transfer(ptr noundef %903, ptr noundef nonnull %msg.i653, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i662)
  %cmp.not.i663 = icmp eq i32 %call.i662, 1
  br i1 %cmp.not.i663, label %write_reg.exit651.write_reg.exit670_crit_edge, label %do.end.i668

write_reg.exit651.write_reg.exit670_crit_edge:    ; preds = %write_reg.exit651
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit670

do.end.i668:                                      ; preds = %write_reg.exit651
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i664 = zext i16 %add156 to i32
  %dev.i665 = getelementptr inbounds %struct.i2c_adapter, ptr %903, i32 0, i32 9
  %917 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load ptr, ptr %1, align 4
  %adr9.i666 = getelementptr inbounds %struct.stv_base, ptr %918, i32 0, i32 1
  %919 = ptrtoint ptr %adr9.i666 to i32
  call void @__asan_load1_noabort(i32 %919)
  %920 = load i8, ptr %adr9.i666, align 4
  %conv10.i667 = zext i8 %920 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i665, ptr noundef nonnull @.str.14, i32 noundef %conv10.i667, i32 noundef %conv.i664, i32 noundef 193) #10
  br label %write_reg.exit670

write_reg.exit670:                                ; preds = %do.end.i668, %write_reg.exit651.write_reg.exit670_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i653) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i652) #6
  call fastcc void @set_vth_default(ptr noundef %1)
  %921 = ptrtoint ptr %receive_mode to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load i32, ptr %receive_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %922)
  %cmp161 = icmp eq i32 %922, 1
  br i1 %cmp161, label %if.then163, label %write_reg.exit670.if.end165_crit_edge

write_reg.exit670.if.end165_crit_edge:            ; preds = %write_reg.exit670
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.then163:                                       ; preds = %write_reg.exit670
  call void @__sanitizer_cov_trace_pc() #8
  %puncture_rate = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 20
  %923 = ptrtoint ptr %puncture_rate to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load i32, ptr %puncture_rate, align 4
  call fastcc void @enable_puncture_rate(ptr noundef %1, i32 noundef %924)
  br label %if.end165

if.end165:                                        ; preds = %if.then163, %write_reg.exit670.if.end165_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  br label %if.end166

if.end166:                                        ; preds = %if.end165, %if.then85.if.end166_crit_edge
  %is_vcm = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 26
  %925 = ptrtoint ptr %is_vcm to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load i32, ptr %is_vcm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %926)
  %tobool167.not = icmp eq i32 %926, 0
  br i1 %tobool167.not, label %if.end166.if.end184_crit_edge, label %if.then168

if.end166.if.end184_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end184

if.then168:                                       ; preds = %if.end166
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp169) #6
  %927 = ptrtoint ptr %tmp169 to i32
  call void @__asan_store1_noabort(i32 %927)
  store i8 -1, ptr %tmp169, align 1, !annotation !69
  %928 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %928)
  %929 = load i16, ptr %regoff, align 4
  %add172 = add i16 %929, -3567
  %930 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load ptr, ptr %1, align 4
  %i2c.i673 = getelementptr inbounds %struct.stv_base, ptr %931, i32 0, i32 2
  %932 = ptrtoint ptr %i2c.i673 to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load ptr, ptr %i2c.i673, align 4
  %adr.i674 = getelementptr inbounds %struct.stv_base, ptr %931, i32 0, i32 1
  %934 = ptrtoint ptr %adr.i674 to i32
  call void @__asan_load1_noabort(i32 %934)
  %935 = load i8, ptr %adr.i674, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i671) #6
  %936 = getelementptr inbounds [2 x i8], ptr %msg.i.i671, i32 0, i32 1
  %937 = lshr i16 %add172, 8
  %conv1.i.i675 = trunc i16 %937 to i8
  %938 = ptrtoint ptr %msg.i.i671 to i32
  call void @__asan_store1_noabort(i32 %938)
  store i8 %conv1.i.i675, ptr %msg.i.i671, align 1
  %conv3.i.i676 = trunc i16 %add172 to i8
  %939 = ptrtoint ptr %936 to i32
  call void @__asan_store1_noabort(i32 %939)
  store i8 %conv3.i.i676, ptr %936, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i672) #6
  %940 = getelementptr inbounds i8, ptr %msgs.i.i672, i32 4
  %941 = call ptr @memset(ptr %940, i32 255, i32 16)
  %conv5.i.i677 = zext i8 %935 to i16
  %942 = ptrtoint ptr %msgs.i.i672 to i32
  call void @__asan_store2_noabort(i32 %942)
  store i16 %conv5.i.i677, ptr %msgs.i.i672, align 4
  %flags.i.i678 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i672, i32 0, i32 1
  %943 = ptrtoint ptr %flags.i.i678 to i32
  call void @__asan_store2_noabort(i32 %943)
  store i16 0, ptr %flags.i.i678, align 2
  %944 = ptrtoint ptr %940 to i32
  call void @__asan_store2_noabort(i32 %944)
  store i16 2, ptr %940, align 4
  %buf.i.i679 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i672, i32 0, i32 3
  %945 = ptrtoint ptr %buf.i.i679 to i32
  call void @__asan_store4_noabort(i32 %945)
  store ptr %msg.i.i671, ptr %buf.i.i679, align 4
  %arrayinit.element6.i.i680 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i672, i32 1
  %946 = ptrtoint ptr %arrayinit.element6.i.i680 to i32
  call void @__asan_store2_noabort(i32 %946)
  store i16 %conv5.i.i677, ptr %arrayinit.element6.i.i680, align 4
  %flags9.i.i681 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i672, i32 1, i32 1
  %947 = ptrtoint ptr %flags9.i.i681 to i32
  call void @__asan_store2_noabort(i32 %947)
  store i16 1, ptr %flags9.i.i681, align 2
  %len10.i.i682 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i672, i32 1, i32 2
  %948 = ptrtoint ptr %len10.i.i682 to i32
  call void @__asan_store2_noabort(i32 %948)
  store i16 1, ptr %len10.i.i682, align 4
  %buf12.i.i683 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i672, i32 1, i32 3
  %949 = ptrtoint ptr %buf12.i.i683 to i32
  call void @__asan_store4_noabort(i32 %949)
  store ptr %tmp169, ptr %buf12.i.i683, align 4
  %call.i.i684 = call i32 @i2c_transfer(ptr noundef %933, ptr noundef nonnull %msgs.i.i672, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i684)
  %cmp.not.i.i685 = icmp eq i32 %call.i.i684, 2
  br i1 %cmp.not.i.i685, label %if.then168.read_reg.exit691_crit_edge, label %do.end.i.i689

if.then168.read_reg.exit691_crit_edge:            ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit691

do.end.i.i689:                                    ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i686 = zext i16 %add172 to i32
  %dev.i.i687 = getelementptr inbounds %struct.i2c_adapter, ptr %933, i32 0, i32 9
  %conv15.i.i688 = zext i8 %935 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i687, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i688, i32 noundef %conv.i.i686) #10
  br label %read_reg.exit691

read_reg.exit691:                                 ; preds = %do.end.i.i689, %if.then168.read_reg.exit691_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i672) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i671) #6
  %950 = ptrtoint ptr %tmp169 to i32
  call void @__asan_load1_noabort(i32 %950)
  %951 = load i8, ptr %tmp169, align 1
  %952 = lshr i8 %951, 2
  %953 = and i8 %952, 31
  %954 = zext i8 %953 to i32
  %mod_cod177 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 21
  %955 = ptrtoint ptr %mod_cod177 to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load i32, ptr %mod_cod177, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %956, i32 %954)
  %cmp178 = icmp ult i32 %956, %954
  br i1 %cmp178, label %if.then180, label %read_reg.exit691.if.end182_crit_edge

read_reg.exit691.if.end182_crit_edge:             ; preds = %read_reg.exit691
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end182

if.then180:                                       ; preds = %read_reg.exit691
  call void @__sanitizer_cov_trace_pc() #8
  %957 = ptrtoint ptr %mod_cod177 to i32
  call void @__asan_store4_noabort(i32 %957)
  store i32 %954, ptr %mod_cod177, align 4
  br label %if.end182

if.end182:                                        ; preds = %if.then180, %read_reg.exit691.if.end182_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp169) #6
  br label %if.end184

if.end184:                                        ; preds = %if.end182, %if.end166.if.end184_crit_edge, %if.end83.if.end184_crit_edge, %read_reg.exit459.if.end184_crit_edge, %if.end55.if.end184_crit_edge
  %958 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #6
  %960 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %960)
  store i8 -1, ptr %reg.i, align 1, !annotation !69
  %961 = getelementptr inbounds [2 x i8], ptr %reg.i, i32 0, i32 1
  %962 = ptrtoint ptr %961 to i32
  call void @__asan_store1_noabort(i32 %962)
  store i8 -1, ptr %961, align 1, !annotation !69
  %regoff.i694 = getelementptr inbounds %struct.stv, ptr %959, i32 0, i32 3
  %963 = ptrtoint ptr %regoff.i694 to i32
  call void @__asan_load2_noabort(i32 %963)
  %964 = load i16, ptr %regoff.i694, align 4
  %add.i695 = add i16 %964, -3570
  %965 = ptrtoint ptr %959 to i32
  call void @__asan_load4_noabort(i32 %965)
  %966 = load ptr, ptr %959, align 4
  %i2c.i.i696 = getelementptr inbounds %struct.stv_base, ptr %966, i32 0, i32 2
  %967 = ptrtoint ptr %i2c.i.i696 to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %i2c.i.i696, align 4
  %adr.i.i697 = getelementptr inbounds %struct.stv_base, ptr %966, i32 0, i32 1
  %969 = ptrtoint ptr %adr.i.i697 to i32
  call void @__asan_load1_noabort(i32 %969)
  %970 = load i8, ptr %adr.i.i697, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i692) #6
  %971 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i692, i32 0, i32 1
  %972 = lshr i16 %add.i695, 8
  %conv1.i.i.i698 = trunc i16 %972 to i8
  %973 = ptrtoint ptr %msg.i.i.i692 to i32
  call void @__asan_store1_noabort(i32 %973)
  store i8 %conv1.i.i.i698, ptr %msg.i.i.i692, align 1
  %conv3.i.i.i699 = trunc i16 %add.i695 to i8
  %974 = ptrtoint ptr %971 to i32
  call void @__asan_store1_noabort(i32 %974)
  store i8 %conv3.i.i.i699, ptr %971, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i693) #6
  %975 = getelementptr inbounds i8, ptr %msgs.i.i.i693, i32 4
  %976 = call ptr @memset(ptr %975, i32 255, i32 16)
  %conv5.i.i.i700 = zext i8 %970 to i16
  %977 = ptrtoint ptr %msgs.i.i.i693 to i32
  call void @__asan_store2_noabort(i32 %977)
  store i16 %conv5.i.i.i700, ptr %msgs.i.i.i693, align 4
  %flags.i.i.i701 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i693, i32 0, i32 1
  %978 = ptrtoint ptr %flags.i.i.i701 to i32
  call void @__asan_store2_noabort(i32 %978)
  store i16 0, ptr %flags.i.i.i701, align 2
  %979 = ptrtoint ptr %975 to i32
  call void @__asan_store2_noabort(i32 %979)
  store i16 2, ptr %975, align 4
  %buf.i.i.i702 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i693, i32 0, i32 3
  %980 = ptrtoint ptr %buf.i.i.i702 to i32
  call void @__asan_store4_noabort(i32 %980)
  store ptr %msg.i.i.i692, ptr %buf.i.i.i702, align 4
  %arrayinit.element6.i.i.i703 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i693, i32 1
  %981 = ptrtoint ptr %arrayinit.element6.i.i.i703 to i32
  call void @__asan_store2_noabort(i32 %981)
  store i16 %conv5.i.i.i700, ptr %arrayinit.element6.i.i.i703, align 4
  %flags9.i.i.i704 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i693, i32 1, i32 1
  %982 = ptrtoint ptr %flags9.i.i.i704 to i32
  call void @__asan_store2_noabort(i32 %982)
  store i16 1, ptr %flags9.i.i.i704, align 2
  %len10.i.i.i705 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i693, i32 1, i32 2
  %983 = ptrtoint ptr %len10.i.i.i705 to i32
  call void @__asan_store2_noabort(i32 %983)
  store i16 2, ptr %len10.i.i.i705, align 4
  %buf12.i.i.i706 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i693, i32 1, i32 3
  %984 = ptrtoint ptr %buf12.i.i.i706 to i32
  call void @__asan_store4_noabort(i32 %984)
  store ptr %reg.i, ptr %buf12.i.i.i706, align 4
  %call.i.i.i707 = call i32 @i2c_transfer(ptr noundef %968, ptr noundef nonnull %msgs.i.i.i693, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i707)
  %cmp.not.i.i.i708 = icmp eq i32 %call.i.i.i707, 2
  br i1 %cmp.not.i.i.i708, label %if.end184.read_regs.exit.i713_crit_edge, label %do.end.i.i.i712

if.end184.read_regs.exit.i713_crit_edge:          ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_regs.exit.i713

do.end.i.i.i712:                                  ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i709 = zext i16 %add.i695 to i32
  %dev.i.i.i710 = getelementptr inbounds %struct.i2c_adapter, ptr %968, i32 0, i32 9
  %conv15.i.i.i711 = zext i8 %970 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i710, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i.i711, i32 noundef %conv.i.i.i709) #10
  br label %read_regs.exit.i713

read_regs.exit.i713:                              ; preds = %do.end.i.i.i712, %if.end184.read_regs.exit.i713_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i693) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i692) #6
  %985 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %985)
  %986 = load i8, ptr %reg.i, align 1
  %987 = ptrtoint ptr %961 to i32
  call void @__asan_load1_noabort(i32 %987)
  %988 = load i8, ptr %961, align 1
  %989 = getelementptr inbounds [2 x i8], ptr %msg.i.i42.i, i32 0, i32 1
  %990 = getelementptr inbounds i8, ptr %msgs.i.i43.i, i32 4
  %flags.i.i49.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i43.i, i32 0, i32 1
  %buf.i.i50.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i43.i, i32 0, i32 3
  %arrayinit.element6.i.i51.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i43.i, i32 1
  %flags9.i.i52.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i43.i, i32 1, i32 1
  %len10.i.i53.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i43.i, i32 1, i32 2
  %buf12.i.i54.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i43.i, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %read_regs.exit62.i.for.body.i_crit_edge, %read_regs.exit.i713
  %i.064.i = phi i32 [ 0, %read_regs.exit.i713 ], [ %add25.i, %read_regs.exit62.i.for.body.i_crit_edge ]
  %power.063.i = phi i32 [ 0, %read_regs.exit.i713 ], [ %add24.i, %read_regs.exit62.i.for.body.i_crit_edge ]
  %991 = ptrtoint ptr %regoff.i694 to i32
  call void @__asan_load2_noabort(i32 %991)
  %992 = load i16, ptr %regoff.i694, align 4
  %add10.i = add i16 %992, -3574
  %993 = ptrtoint ptr %959 to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load ptr, ptr %959, align 4
  %i2c.i44.i714 = getelementptr inbounds %struct.stv_base, ptr %994, i32 0, i32 2
  %995 = ptrtoint ptr %i2c.i44.i714 to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %i2c.i44.i714, align 4
  %adr.i45.i = getelementptr inbounds %struct.stv_base, ptr %994, i32 0, i32 1
  %997 = ptrtoint ptr %adr.i45.i to i32
  call void @__asan_load1_noabort(i32 %997)
  %998 = load i8, ptr %adr.i45.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i42.i) #6
  %999 = lshr i16 %add10.i, 8
  %conv1.i.i46.i = trunc i16 %999 to i8
  %1000 = ptrtoint ptr %msg.i.i42.i to i32
  call void @__asan_store1_noabort(i32 %1000)
  store i8 %conv1.i.i46.i, ptr %msg.i.i42.i, align 1
  %conv3.i.i47.i = trunc i16 %add10.i to i8
  %1001 = ptrtoint ptr %989 to i32
  call void @__asan_store1_noabort(i32 %1001)
  store i8 %conv3.i.i47.i, ptr %989, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i43.i) #6
  %1002 = call ptr @memset(ptr %990, i32 255, i32 16)
  %conv5.i.i48.i = zext i8 %998 to i16
  %1003 = ptrtoint ptr %msgs.i.i43.i to i32
  call void @__asan_store2_noabort(i32 %1003)
  store i16 %conv5.i.i48.i, ptr %msgs.i.i43.i, align 4
  %1004 = ptrtoint ptr %flags.i.i49.i to i32
  call void @__asan_store2_noabort(i32 %1004)
  store i16 0, ptr %flags.i.i49.i, align 2
  %1005 = ptrtoint ptr %990 to i32
  call void @__asan_store2_noabort(i32 %1005)
  store i16 2, ptr %990, align 4
  %1006 = ptrtoint ptr %buf.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %1006)
  store ptr %msg.i.i42.i, ptr %buf.i.i50.i, align 4
  %1007 = ptrtoint ptr %arrayinit.element6.i.i51.i to i32
  call void @__asan_store2_noabort(i32 %1007)
  store i16 %conv5.i.i48.i, ptr %arrayinit.element6.i.i51.i, align 4
  %1008 = ptrtoint ptr %flags9.i.i52.i to i32
  call void @__asan_store2_noabort(i32 %1008)
  store i16 1, ptr %flags9.i.i52.i, align 2
  %1009 = ptrtoint ptr %len10.i.i53.i to i32
  call void @__asan_store2_noabort(i32 %1009)
  store i16 2, ptr %len10.i.i53.i, align 4
  %1010 = ptrtoint ptr %buf12.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %1010)
  store ptr %reg.i, ptr %buf12.i.i54.i, align 4
  %call.i.i55.i = call i32 @i2c_transfer(ptr noundef %996, ptr noundef nonnull %msgs.i.i43.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i55.i)
  %cmp.not.i.i56.i = icmp eq i32 %call.i.i55.i, 2
  br i1 %cmp.not.i.i56.i, label %for.body.i.read_regs.exit62.i_crit_edge, label %do.end.i.i60.i

for.body.i.read_regs.exit62.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_regs.exit62.i

do.end.i.i60.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i57.i = zext i16 %add10.i to i32
  %dev.i.i58.i = getelementptr inbounds %struct.i2c_adapter, ptr %996, i32 0, i32 9
  %conv15.i.i59.i = zext i8 %998 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i58.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i59.i, i32 noundef %conv.i.i57.i) #10
  br label %read_regs.exit62.i

read_regs.exit62.i:                               ; preds = %do.end.i.i60.i, %for.body.i.read_regs.exit62.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i43.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i42.i) #6
  %1011 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %1011)
  %1012 = load i8, ptr %reg.i, align 1
  %conv15.i = zext i8 %1012 to i32
  %mul.i = mul nuw nsw i32 %conv15.i, %conv15.i
  %1013 = ptrtoint ptr %961 to i32
  call void @__asan_load1_noabort(i32 %1013)
  %1014 = load i8, ptr %961, align 1
  %conv19.i = zext i8 %1014 to i32
  %mul22.i = mul nuw nsw i32 %conv19.i, %conv19.i
  %add23.i = add i32 %mul.i, %power.063.i
  %add24.i = add i32 %add23.i, %mul22.i
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #6
  %add25.i = add nuw nsw i32 %i.064.i, 1
  %exitcond.not.i = icmp eq i32 %add25.i, 5
  br i1 %exitcond.not.i, label %for.end.i, label %read_regs.exit62.i.for.body.i_crit_edge

read_regs.exit62.i.for.body.i_crit_edge:          ; preds = %read_regs.exit62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %read_regs.exit62.i
  %div.i = sdiv i32 %add24.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 118000, i32 %div.i)
  %cmp.not.i.i715 = icmp ult i32 %div.i, 118000
  br i1 %cmp.not.i.i715, label %if.else.i.i717, label %for.end.i.read_signal_strength.exit_crit_edge

for.end.i.read_signal_strength.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_signal_strength.exit

if.else.i.i717:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %div.i)
  %cmp6.not.i.i716 = icmp ugt i32 %div.i, 1000
  br i1 %cmp6.not.i.i716, label %if.else.i.i717.while.body.i.i724_crit_edge, label %if.else.i.i717.read_signal_strength.exit_crit_edge

if.else.i.i717.read_signal_strength.exit_crit_edge: ; preds = %if.else.i.i717
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_signal_strength.exit

if.else.i.i717.while.body.i.i724_crit_edge:       ; preds = %if.else.i.i717
  br label %while.body.i.i724

while.body.i.i724:                                ; preds = %if.end.i.i733.while.body.i.i724_crit_edge, %if.else.i.i717.while.body.i.i724_crit_edge
  %imax.084.i.i718 = phi i32 [ %imax.1.i.i730, %if.end.i.i733.while.body.i.i724_crit_edge ], [ 15, %if.else.i.i717.while.body.i.i724_crit_edge ]
  %imin.083.i.i719 = phi i32 [ %imin.1.i.i729, %if.end.i.i733.while.body.i.i724_crit_edge ], [ 0, %if.else.i.i717.while.body.i.i724_crit_edge ]
  %add.i.i720 = add i32 %imin.083.i.i719, %imax.084.i.i718
  %div.i.i721 = sdiv i32 %add.i.i720, 2
  %reg_value17.i.i722 = getelementptr %struct.slookup, ptr @padc_lookup, i32 %imin.083.i.i719, i32 1
  %1015 = ptrtoint ptr %reg_value17.i.i722 to i32
  call void @__asan_load4_noabort(i32 %1015)
  %1016 = load i32, ptr %reg_value17.i.i722, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1016, i32 %div.i)
  %cmp18.not.i.i723 = icmp ult i32 %1016, %div.i
  br i1 %cmp18.not.i.i723, label %while.body.i.i724.if.else25.i.i728_crit_edge, label %land.lhs.true.i.i727

while.body.i.i724.if.else25.i.i728_crit_edge:     ; preds = %while.body.i.i724
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else25.i.i728

land.lhs.true.i.i727:                             ; preds = %while.body.i.i724
  %reg_value21.i.i725 = getelementptr %struct.slookup, ptr @padc_lookup, i32 %div.i.i721, i32 1
  %1017 = ptrtoint ptr %reg_value21.i.i725 to i32
  call void @__asan_load4_noabort(i32 %1017)
  %1018 = load i32, ptr %reg_value21.i.i725, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1018, i32 %div.i)
  %cmp22.not.i.i726 = icmp ugt i32 %1018, %div.i
  br i1 %cmp22.not.i.i726, label %land.lhs.true.i.i727.if.else25.i.i728_crit_edge, label %land.lhs.true.i.i727.if.end.i.i733_crit_edge

land.lhs.true.i.i727.if.end.i.i733_crit_edge:     ; preds = %land.lhs.true.i.i727
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i733

land.lhs.true.i.i727.if.else25.i.i728_crit_edge:  ; preds = %land.lhs.true.i.i727
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else25.i.i728

if.else25.i.i728:                                 ; preds = %land.lhs.true.i.i727.if.else25.i.i728_crit_edge, %while.body.i.i724.if.else25.i.i728_crit_edge
  br label %if.end.i.i733

if.end.i.i733:                                    ; preds = %if.else25.i.i728, %land.lhs.true.i.i727.if.end.i.i733_crit_edge
  %imin.1.i.i729 = phi i32 [ %div.i.i721, %if.else25.i.i728 ], [ %imin.083.i.i719, %land.lhs.true.i.i727.if.end.i.i733_crit_edge ]
  %imax.1.i.i730 = phi i32 [ %imax.084.i.i718, %if.else25.i.i728 ], [ %div.i.i721, %land.lhs.true.i.i727.if.end.i.i733_crit_edge ]
  %sub13.i.i731 = sub i32 %imax.1.i.i730, %imin.1.i.i729
  %cmp14.i.i732 = icmp sgt i32 %sub13.i.i731, 1
  br i1 %cmp14.i.i732, label %if.end.i.i733.while.body.i.i724_crit_edge, label %while.end.i.i739

if.end.i.i733.while.body.i.i724_crit_edge:        ; preds = %if.end.i.i733
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i724

while.end.i.i739:                                 ; preds = %if.end.i.i733
  %reg_value27.i.i734 = getelementptr %struct.slookup, ptr @padc_lookup, i32 %imax.1.i.i730, i32 1
  %1019 = ptrtoint ptr %reg_value27.i.i734 to i32
  call void @__asan_load4_noabort(i32 %1019)
  %1020 = load i32, ptr %reg_value27.i.i734, align 4
  %arrayidx28.i.i735 = getelementptr %struct.slookup, ptr @padc_lookup, i32 %imin.1.i.i729
  %reg_value29.i.i736 = getelementptr %struct.slookup, ptr @padc_lookup, i32 %imin.1.i.i729, i32 1
  %1021 = ptrtoint ptr %reg_value29.i.i736 to i32
  call void @__asan_load4_noabort(i32 %1021)
  %1022 = load i32, ptr %reg_value29.i.i736, align 4
  %1023 = ptrtoint ptr %arrayidx28.i.i735 to i32
  call void @__asan_load2_noabort(i32 %1023)
  %1024 = load i16, ptr %arrayidx28.i.i735, align 4
  %conv33.i.i737 = sext i16 %1024 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1020, i32 %1022)
  %cmp34.not.i.i738 = icmp eq i32 %1020, %1022
  br i1 %cmp34.not.i.i738, label %while.end.i.i739.read_signal_strength.exit_crit_edge, label %if.then36.i.i748

while.end.i.i739.read_signal_strength.exit_crit_edge: ; preds = %while.end.i.i739
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_signal_strength.exit

if.then36.i.i748:                                 ; preds = %while.end.i.i739
  call void @__sanitizer_cov_trace_pc() #8
  %sub30.i.i740 = sub i32 %1020, %1022
  %arrayidx26.i.i741 = getelementptr %struct.slookup, ptr @padc_lookup, i32 %imax.1.i.i730
  %sub39.i.i742 = sub i32 %div.i, %1022
  %1025 = ptrtoint ptr %arrayidx26.i.i741 to i32
  call void @__asan_load2_noabort(i32 %1025)
  %1026 = load i16, ptr %arrayidx26.i.i741, align 4
  %conv42.i.i743 = sext i16 %1026 to i32
  %sub46.i.i744 = sub nsw i32 %conv42.i.i743, %conv33.i.i737
  %mul.i.i745 = mul i32 %sub46.i.i744, %sub39.i.i742
  %div47.i.i746 = sdiv i32 %mul.i.i745, %sub30.i.i740
  %add48.i.i747 = add i32 %div47.i.i746, %conv33.i.i737
  br label %read_signal_strength.exit

read_signal_strength.exit:                        ; preds = %if.then36.i.i748, %while.end.i.i739.read_signal_strength.exit_crit_edge, %if.else.i.i717.read_signal_strength.exit_crit_edge, %for.end.i.read_signal_strength.exit_crit_edge
  %value.0.i.i749 = phi i32 [ %add48.i.i747, %if.then36.i.i748 ], [ %conv33.i.i737, %while.end.i.i739.read_signal_strength.exit_crit_edge ], [ 0, %for.end.i.read_signal_strength.exit_crit_edge ], [ -2100, %if.else.i.i717.read_signal_strength.exit_crit_edge ]
  %conv3.i750 = zext i8 %986 to i32
  %shl.neg.i = mul nsw i32 %conv3.i750, -256
  %conv5.i = zext i8 %988 to i32
  %stat.i = getelementptr inbounds %struct.stv, ptr %959, i32 0, i32 1, i32 8, i32 42, i32 1
  %1027 = ptrtoint ptr %stat.i to i32
  call void @__asan_store1_noabort(i32 %1027)
  store i8 1, ptr %stat.i, align 1
  %or.neg65.i = sub nuw nsw i32 352, %conv5.i
  %add27.i = add nsw i32 %or.neg65.i, %shl.neg.i
  %sub.i = add i32 %add27.i, %value.0.i.i749
  %conv30.i = sext i32 %sub.i to i64
  %1028 = getelementptr inbounds %struct.stv, ptr %959, i32 0, i32 1, i32 8, i32 42, i32 1, i32 0, i32 1
  %1029 = ptrtoint ptr %1028 to i32
  call void @__asan_storeN_noabort(i32 %1029, i32 8)
  store i64 %conv30.i, ptr %1028, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #6
  %1030 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load i32, ptr %status, align 4
  %and185 = and i32 %1031, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.else189, label %if.then187

if.then187:                                       ; preds = %read_signal_strength.exit
  %1032 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data0.i.i) #6
  %1034 = ptrtoint ptr %data0.i.i to i32
  call void @__asan_store1_noabort(i32 %1034)
  store i8 -1, ptr %data0.i.i, align 1, !annotation !69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data1.i.i) #6
  %1035 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_store1_noabort(i32 %1035)
  store i8 -1, ptr %data1.i.i, align 1, !annotation !69
  %started.i.i = getelementptr inbounds %struct.stv, ptr %1033, i32 0, i32 11
  %1036 = ptrtoint ptr %started.i.i to i32
  call void @__asan_load4_noabort(i32 %1036)
  %1037 = load i32, ptr %started.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1037)
  %tobool.not.i.i753 = icmp eq i32 %1037, 0
  br i1 %tobool.not.i.i753, label %if.else.i766, label %if.end.i.i755

if.end.i.i755:                                    ; preds = %if.then187
  %receive_mode.i.i = getelementptr inbounds %struct.stv, ptr %1033, i32 0, i32 13
  %1038 = ptrtoint ptr %receive_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1038)
  %1039 = load i32, ptr %receive_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1039)
  %cmp.i.i754 = icmp eq i32 %1039, 2
  %regoff.i.i = getelementptr inbounds %struct.stv, ptr %1033, i32 0, i32 3
  %1040 = ptrtoint ptr %regoff.i.i to i32
  call void @__asan_load2_noabort(i32 %1040)
  %1041 = load i16, ptr %regoff.i.i, align 4
  br i1 %cmp.i.i754, label %if.then1.i.i, label %if.else.i.i758

if.then1.i.i:                                     ; preds = %if.end.i.i755
  %add.i.i756 = add i16 %1041, -3452
  %1042 = ptrtoint ptr %1033 to i32
  call void @__asan_load4_noabort(i32 %1042)
  %1043 = load ptr, ptr %1033, align 4
  %i2c.i.i.i = getelementptr inbounds %struct.stv_base, ptr %1043, i32 0, i32 2
  %1044 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1044)
  %1045 = load ptr, ptr %i2c.i.i.i, align 4
  %adr.i.i.i = getelementptr inbounds %struct.stv_base, ptr %1043, i32 0, i32 1
  %1046 = ptrtoint ptr %adr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1046)
  %1047 = load i8, ptr %adr.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i.i) #6
  %1048 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i.i, i32 0, i32 1
  %1049 = lshr i16 %add.i.i756, 8
  %conv1.i.i.i.i = trunc i16 %1049 to i8
  %1050 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1050)
  store i8 %conv1.i.i.i.i, ptr %msg.i.i.i.i, align 1
  %conv3.i.i.i.i = trunc i16 %add.i.i756 to i8
  %1051 = ptrtoint ptr %1048 to i32
  call void @__asan_store1_noabort(i32 %1051)
  store i8 %conv3.i.i.i.i, ptr %1048, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i.i) #6
  %1052 = getelementptr inbounds i8, ptr %msgs.i.i.i.i, i32 4
  %1053 = call ptr @memset(ptr %1052, i32 255, i32 16)
  %conv5.i.i.i.i = zext i8 %1047 to i16
  %1054 = ptrtoint ptr %msgs.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1054)
  store i16 %conv5.i.i.i.i, ptr %msgs.i.i.i.i, align 4
  %flags.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 0, i32 1
  %1055 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1055)
  store i16 0, ptr %flags.i.i.i.i, align 2
  %1056 = ptrtoint ptr %1052 to i32
  call void @__asan_store2_noabort(i32 %1056)
  store i16 2, ptr %1052, align 4
  %buf.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 0, i32 3
  %1057 = ptrtoint ptr %buf.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1057)
  store ptr %msg.i.i.i.i, ptr %buf.i.i.i.i, align 4
  %arrayinit.element6.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1
  %1058 = ptrtoint ptr %arrayinit.element6.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1058)
  store i16 %conv5.i.i.i.i, ptr %arrayinit.element6.i.i.i.i, align 4
  %flags9.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1, i32 1
  %1059 = ptrtoint ptr %flags9.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1059)
  store i16 1, ptr %flags9.i.i.i.i, align 2
  %len10.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1, i32 2
  %1060 = ptrtoint ptr %len10.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1060)
  store i16 1, ptr %len10.i.i.i.i, align 4
  %buf12.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i, i32 1, i32 3
  %1061 = ptrtoint ptr %buf12.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1061)
  store ptr %data1.i.i, ptr %buf12.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @i2c_transfer(ptr noundef %1045, ptr noundef nonnull %msgs.i.i.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 2
  br i1 %cmp.not.i.i.i.i, label %if.then1.i.i.read_reg.exit.i.i_crit_edge, label %do.end.i.i.i.i

if.then1.i.i.read_reg.exit.i.i_crit_edge:         ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i = zext i16 %add.i.i756 to i32
  %dev.i.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1045, i32 0, i32 9
  %conv15.i.i.i.i = zext i8 %1047 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i.i.i, i32 noundef %conv.i.i.i.i) #10
  br label %read_reg.exit.i.i

read_reg.exit.i.i:                                ; preds = %do.end.i.i.i.i, %if.then1.i.i.read_reg.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i.i) #6
  %1062 = ptrtoint ptr %regoff.i.i to i32
  call void @__asan_load2_noabort(i32 %1062)
  %1063 = load i16, ptr %regoff.i.i, align 4
  %add5.i.i = add i16 %1063, -3451
  %1064 = ptrtoint ptr %1033 to i32
  call void @__asan_load4_noabort(i32 %1064)
  %1065 = load ptr, ptr %1033, align 4
  %i2c.i42.i.i = getelementptr inbounds %struct.stv_base, ptr %1065, i32 0, i32 2
  %1066 = ptrtoint ptr %i2c.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %1066)
  %1067 = load ptr, ptr %i2c.i42.i.i, align 4
  %adr.i43.i.i = getelementptr inbounds %struct.stv_base, ptr %1065, i32 0, i32 1
  %1068 = ptrtoint ptr %adr.i43.i.i to i32
  call void @__asan_load1_noabort(i32 %1068)
  %1069 = load i8, ptr %adr.i43.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i40.i.i) #6
  %1070 = getelementptr inbounds [2 x i8], ptr %msg.i.i40.i.i, i32 0, i32 1
  %1071 = lshr i16 %add5.i.i, 8
  %conv1.i.i44.i.i = trunc i16 %1071 to i8
  %1072 = ptrtoint ptr %msg.i.i40.i.i to i32
  call void @__asan_store1_noabort(i32 %1072)
  store i8 %conv1.i.i44.i.i, ptr %msg.i.i40.i.i, align 1
  %conv3.i.i45.i.i = trunc i16 %add5.i.i to i8
  %1073 = ptrtoint ptr %1070 to i32
  call void @__asan_store1_noabort(i32 %1073)
  store i8 %conv3.i.i45.i.i, ptr %1070, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i41.i.i) #6
  %1074 = getelementptr inbounds i8, ptr %msgs.i.i41.i.i, i32 4
  %1075 = call ptr @memset(ptr %1074, i32 255, i32 16)
  %conv5.i.i46.i.i = zext i8 %1069 to i16
  %1076 = ptrtoint ptr %msgs.i.i41.i.i to i32
  call void @__asan_store2_noabort(i32 %1076)
  store i16 %conv5.i.i46.i.i, ptr %msgs.i.i41.i.i, align 4
  %flags.i.i47.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i41.i.i, i32 0, i32 1
  %1077 = ptrtoint ptr %flags.i.i47.i.i to i32
  call void @__asan_store2_noabort(i32 %1077)
  store i16 0, ptr %flags.i.i47.i.i, align 2
  %1078 = ptrtoint ptr %1074 to i32
  call void @__asan_store2_noabort(i32 %1078)
  store i16 2, ptr %1074, align 4
  %buf.i.i48.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i41.i.i, i32 0, i32 3
  %1079 = ptrtoint ptr %buf.i.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %1079)
  store ptr %msg.i.i40.i.i, ptr %buf.i.i48.i.i, align 4
  %arrayinit.element6.i.i49.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i41.i.i, i32 1
  %1080 = ptrtoint ptr %arrayinit.element6.i.i49.i.i to i32
  call void @__asan_store2_noabort(i32 %1080)
  store i16 %conv5.i.i46.i.i, ptr %arrayinit.element6.i.i49.i.i, align 4
  %flags9.i.i50.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i41.i.i, i32 1, i32 1
  %1081 = ptrtoint ptr %flags9.i.i50.i.i to i32
  call void @__asan_store2_noabort(i32 %1081)
  store i16 1, ptr %flags9.i.i50.i.i, align 2
  %len10.i.i51.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i41.i.i, i32 1, i32 2
  %1082 = ptrtoint ptr %len10.i.i51.i.i to i32
  call void @__asan_store2_noabort(i32 %1082)
  store i16 1, ptr %len10.i.i51.i.i, align 4
  %buf12.i.i52.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i41.i.i, i32 1, i32 3
  %1083 = ptrtoint ptr %buf12.i.i52.i.i to i32
  call void @__asan_store4_noabort(i32 %1083)
  store ptr %data0.i.i, ptr %buf12.i.i52.i.i, align 4
  %call.i.i53.i.i = call i32 @i2c_transfer(ptr noundef %1067, ptr noundef nonnull %msgs.i.i41.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i53.i.i)
  %cmp.not.i.i54.i.i = icmp eq i32 %call.i.i53.i.i, 2
  br i1 %cmp.not.i.i54.i.i, label %read_reg.exit.i.i.read_reg.exit60.i.i_crit_edge, label %do.end.i.i58.i.i

read_reg.exit.i.i.read_reg.exit60.i.i_crit_edge:  ; preds = %read_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit60.i.i

do.end.i.i58.i.i:                                 ; preds = %read_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i55.i.i = zext i16 %add5.i.i to i32
  %dev.i.i56.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1067, i32 0, i32 9
  %conv15.i.i57.i.i = zext i8 %1069 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i56.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i57.i.i, i32 noundef %conv.i.i55.i.i) #10
  br label %read_reg.exit60.i.i

read_reg.exit60.i.i:                              ; preds = %do.end.i.i58.i.i, %read_reg.exit.i.i.read_reg.exit60.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i41.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i40.i.i) #6
  br label %if.end18.i.i

if.else.i.i758:                                   ; preds = %if.end.i.i755
  %add10.i.i757 = add i16 %1041, -3456
  %1084 = ptrtoint ptr %1033 to i32
  call void @__asan_load4_noabort(i32 %1084)
  %1085 = load ptr, ptr %1033, align 4
  %i2c.i63.i.i = getelementptr inbounds %struct.stv_base, ptr %1085, i32 0, i32 2
  %1086 = ptrtoint ptr %i2c.i63.i.i to i32
  call void @__asan_load4_noabort(i32 %1086)
  %1087 = load ptr, ptr %i2c.i63.i.i, align 4
  %adr.i64.i.i = getelementptr inbounds %struct.stv_base, ptr %1085, i32 0, i32 1
  %1088 = ptrtoint ptr %adr.i64.i.i to i32
  call void @__asan_load1_noabort(i32 %1088)
  %1089 = load i8, ptr %adr.i64.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i61.i.i) #6
  %1090 = getelementptr inbounds [2 x i8], ptr %msg.i.i61.i.i, i32 0, i32 1
  %1091 = lshr i16 %add10.i.i757, 8
  %conv1.i.i65.i.i = trunc i16 %1091 to i8
  %1092 = ptrtoint ptr %msg.i.i61.i.i to i32
  call void @__asan_store1_noabort(i32 %1092)
  store i8 %conv1.i.i65.i.i, ptr %msg.i.i61.i.i, align 1
  %conv3.i.i66.i.i = trunc i16 %add10.i.i757 to i8
  %1093 = ptrtoint ptr %1090 to i32
  call void @__asan_store1_noabort(i32 %1093)
  store i8 %conv3.i.i66.i.i, ptr %1090, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i62.i.i) #6
  %1094 = getelementptr inbounds i8, ptr %msgs.i.i62.i.i, i32 4
  %1095 = call ptr @memset(ptr %1094, i32 255, i32 16)
  %conv5.i.i67.i.i = zext i8 %1089 to i16
  %1096 = ptrtoint ptr %msgs.i.i62.i.i to i32
  call void @__asan_store2_noabort(i32 %1096)
  store i16 %conv5.i.i67.i.i, ptr %msgs.i.i62.i.i, align 4
  %flags.i.i68.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i62.i.i, i32 0, i32 1
  %1097 = ptrtoint ptr %flags.i.i68.i.i to i32
  call void @__asan_store2_noabort(i32 %1097)
  store i16 0, ptr %flags.i.i68.i.i, align 2
  %1098 = ptrtoint ptr %1094 to i32
  call void @__asan_store2_noabort(i32 %1098)
  store i16 2, ptr %1094, align 4
  %buf.i.i69.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i62.i.i, i32 0, i32 3
  %1099 = ptrtoint ptr %buf.i.i69.i.i to i32
  call void @__asan_store4_noabort(i32 %1099)
  store ptr %msg.i.i61.i.i, ptr %buf.i.i69.i.i, align 4
  %arrayinit.element6.i.i70.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i62.i.i, i32 1
  %1100 = ptrtoint ptr %arrayinit.element6.i.i70.i.i to i32
  call void @__asan_store2_noabort(i32 %1100)
  store i16 %conv5.i.i67.i.i, ptr %arrayinit.element6.i.i70.i.i, align 4
  %flags9.i.i71.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i62.i.i, i32 1, i32 1
  %1101 = ptrtoint ptr %flags9.i.i71.i.i to i32
  call void @__asan_store2_noabort(i32 %1101)
  store i16 1, ptr %flags9.i.i71.i.i, align 2
  %len10.i.i72.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i62.i.i, i32 1, i32 2
  %1102 = ptrtoint ptr %len10.i.i72.i.i to i32
  call void @__asan_store2_noabort(i32 %1102)
  store i16 1, ptr %len10.i.i72.i.i, align 4
  %buf12.i.i73.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i62.i.i, i32 1, i32 3
  %1103 = ptrtoint ptr %buf12.i.i73.i.i to i32
  call void @__asan_store4_noabort(i32 %1103)
  store ptr %data1.i.i, ptr %buf12.i.i73.i.i, align 4
  %call.i.i74.i.i = call i32 @i2c_transfer(ptr noundef %1087, ptr noundef nonnull %msgs.i.i62.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i74.i.i)
  %cmp.not.i.i75.i.i = icmp eq i32 %call.i.i74.i.i, 2
  br i1 %cmp.not.i.i75.i.i, label %if.else.i.i758.read_reg.exit81.i.i_crit_edge, label %do.end.i.i79.i.i

if.else.i.i758.read_reg.exit81.i.i_crit_edge:     ; preds = %if.else.i.i758
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit81.i.i

do.end.i.i79.i.i:                                 ; preds = %if.else.i.i758
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i76.i.i = zext i16 %add10.i.i757 to i32
  %dev.i.i77.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1087, i32 0, i32 9
  %conv15.i.i78.i.i = zext i8 %1089 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i77.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i78.i.i, i32 noundef %conv.i.i76.i.i) #10
  br label %read_reg.exit81.i.i

read_reg.exit81.i.i:                              ; preds = %do.end.i.i79.i.i, %if.else.i.i758.read_reg.exit81.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i62.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i61.i.i) #6
  %1104 = ptrtoint ptr %regoff.i.i to i32
  call void @__asan_load2_noabort(i32 %1104)
  %1105 = load i16, ptr %regoff.i.i, align 4
  %add15.i.i759 = add i16 %1105, -3455
  %1106 = ptrtoint ptr %1033 to i32
  call void @__asan_load4_noabort(i32 %1106)
  %1107 = load ptr, ptr %1033, align 4
  %i2c.i84.i.i = getelementptr inbounds %struct.stv_base, ptr %1107, i32 0, i32 2
  %1108 = ptrtoint ptr %i2c.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %1108)
  %1109 = load ptr, ptr %i2c.i84.i.i, align 4
  %adr.i85.i.i = getelementptr inbounds %struct.stv_base, ptr %1107, i32 0, i32 1
  %1110 = ptrtoint ptr %adr.i85.i.i to i32
  call void @__asan_load1_noabort(i32 %1110)
  %1111 = load i8, ptr %adr.i85.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i82.i.i) #6
  %1112 = getelementptr inbounds [2 x i8], ptr %msg.i.i82.i.i, i32 0, i32 1
  %1113 = lshr i16 %add15.i.i759, 8
  %conv1.i.i86.i.i = trunc i16 %1113 to i8
  %1114 = ptrtoint ptr %msg.i.i82.i.i to i32
  call void @__asan_store1_noabort(i32 %1114)
  store i8 %conv1.i.i86.i.i, ptr %msg.i.i82.i.i, align 1
  %conv3.i.i87.i.i = trunc i16 %add15.i.i759 to i8
  %1115 = ptrtoint ptr %1112 to i32
  call void @__asan_store1_noabort(i32 %1115)
  store i8 %conv3.i.i87.i.i, ptr %1112, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i83.i.i) #6
  %1116 = getelementptr inbounds i8, ptr %msgs.i.i83.i.i, i32 4
  %1117 = call ptr @memset(ptr %1116, i32 255, i32 16)
  %conv5.i.i88.i.i = zext i8 %1111 to i16
  %1118 = ptrtoint ptr %msgs.i.i83.i.i to i32
  call void @__asan_store2_noabort(i32 %1118)
  store i16 %conv5.i.i88.i.i, ptr %msgs.i.i83.i.i, align 4
  %flags.i.i89.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i83.i.i, i32 0, i32 1
  %1119 = ptrtoint ptr %flags.i.i89.i.i to i32
  call void @__asan_store2_noabort(i32 %1119)
  store i16 0, ptr %flags.i.i89.i.i, align 2
  %1120 = ptrtoint ptr %1116 to i32
  call void @__asan_store2_noabort(i32 %1120)
  store i16 2, ptr %1116, align 4
  %buf.i.i90.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i83.i.i, i32 0, i32 3
  %1121 = ptrtoint ptr %buf.i.i90.i.i to i32
  call void @__asan_store4_noabort(i32 %1121)
  store ptr %msg.i.i82.i.i, ptr %buf.i.i90.i.i, align 4
  %arrayinit.element6.i.i91.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i83.i.i, i32 1
  %1122 = ptrtoint ptr %arrayinit.element6.i.i91.i.i to i32
  call void @__asan_store2_noabort(i32 %1122)
  store i16 %conv5.i.i88.i.i, ptr %arrayinit.element6.i.i91.i.i, align 4
  %flags9.i.i92.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i83.i.i, i32 1, i32 1
  %1123 = ptrtoint ptr %flags9.i.i92.i.i to i32
  call void @__asan_store2_noabort(i32 %1123)
  store i16 1, ptr %flags9.i.i92.i.i, align 2
  %len10.i.i93.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i83.i.i, i32 1, i32 2
  %1124 = ptrtoint ptr %len10.i.i93.i.i to i32
  call void @__asan_store2_noabort(i32 %1124)
  store i16 1, ptr %len10.i.i93.i.i, align 4
  %buf12.i.i94.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i83.i.i, i32 1, i32 3
  %1125 = ptrtoint ptr %buf12.i.i94.i.i to i32
  call void @__asan_store4_noabort(i32 %1125)
  store ptr %data0.i.i, ptr %buf12.i.i94.i.i, align 4
  %call.i.i95.i.i = call i32 @i2c_transfer(ptr noundef %1109, ptr noundef nonnull %msgs.i.i83.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i95.i.i)
  %cmp.not.i.i96.i.i = icmp eq i32 %call.i.i95.i.i, 2
  br i1 %cmp.not.i.i96.i.i, label %read_reg.exit81.i.i.read_reg.exit102.i.i_crit_edge, label %do.end.i.i100.i.i

read_reg.exit81.i.i.read_reg.exit102.i.i_crit_edge: ; preds = %read_reg.exit81.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit102.i.i

do.end.i.i100.i.i:                                ; preds = %read_reg.exit81.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i97.i.i = zext i16 %add15.i.i759 to i32
  %dev.i.i98.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1109, i32 0, i32 9
  %conv15.i.i99.i.i = zext i8 %1111 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i98.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i99.i.i, i32 noundef %conv.i.i97.i.i) #10
  br label %read_reg.exit102.i.i

read_reg.exit102.i.i:                             ; preds = %do.end.i.i100.i.i, %read_reg.exit81.i.i.read_reg.exit102.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i83.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i82.i.i) #6
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %read_reg.exit102.i.i, %read_reg.exit60.i.i
  %n_lookup.0.i.i = phi i32 [ 59, %read_reg.exit60.i.i ], [ 53, %read_reg.exit102.i.i ]
  %lookup.0.i.i = phi ptr [ @s2_sn_lookup, %read_reg.exit60.i.i ], [ @s1_sn_lookup, %read_reg.exit102.i.i ]
  %1126 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load1_noabort(i32 %1126)
  %1127 = load i8, ptr %data1.i.i, align 1
  %conv20.i.i = zext i8 %1127 to i32
  %shl.i.i = shl nuw nsw i32 %conv20.i.i, 8
  %1128 = ptrtoint ptr %data0.i.i to i32
  call void @__asan_load1_noabort(i32 %1128)
  %1129 = load i8, ptr %data0.i.i, align 1
  %conv22.i.i = zext i8 %1129 to i32
  %or.i.i = or i32 %shl.i.i, %conv22.i.i
  %reg_value1.i.i.i = getelementptr inbounds %struct.slookup, ptr %lookup.0.i.i, i32 0, i32 1
  %1130 = ptrtoint ptr %reg_value1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1130)
  %1131 = load i32, ptr %reg_value1.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1131, i32 %or.i.i)
  %cmp.not.i.i.i760 = icmp ugt i32 %1131, %or.i.i
  br i1 %cmp.not.i.i.i760, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %1132 = ptrtoint ptr %lookup.0.i.i to i32
  call void @__asan_load2_noabort(i32 %1132)
  %1133 = load i16, ptr %lookup.0.i.i, align 4
  %conv.i.i.i761 = sext i16 %1133 to i32
  br label %if.then.i765

if.else.i.i.i:                                    ; preds = %if.end18.i.i
  %reg_value5.i.i.i = getelementptr %struct.slookup, ptr %lookup.0.i.i, i32 %n_lookup.0.i.i, i32 1
  %1134 = ptrtoint ptr %reg_value5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load i32, ptr %reg_value5.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1135, i32 %or.i.i)
  %cmp6.not.i.i.i = icmp ult i32 %1135, %or.i.i
  br i1 %cmp6.not.i.i.i, label %if.else.i.i.i.while.body.i.i.i_crit_edge, label %if.then8.i.i.i

if.else.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %if.else.i.i.i
  br label %while.body.i.i.i

if.then8.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx4.i.i.i = getelementptr %struct.slookup, ptr %lookup.0.i.i, i32 %n_lookup.0.i.i
  %1136 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load2_noabort(i32 %1136)
  %1137 = load i16, ptr %arrayidx4.i.i.i, align 4
  %conv11.i.i.i = sext i16 %1137 to i32
  br label %if.then.i765

while.body.i.i.i:                                 ; preds = %if.end.i.i.i.while.body.i.i.i_crit_edge, %if.else.i.i.i.while.body.i.i.i_crit_edge
  %imax.084.i.i.i = phi i32 [ %imax.1.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ], [ %n_lookup.0.i.i, %if.else.i.i.i.while.body.i.i.i_crit_edge ]
  %imin.083.i.i.i = phi i32 [ %imin.1.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %if.else.i.i.i.while.body.i.i.i_crit_edge ]
  %add.i.i.i = add i32 %imin.083.i.i.i, %imax.084.i.i.i
  %div.i.i.i = sdiv i32 %add.i.i.i, 2
  %reg_value17.i.i.i = getelementptr %struct.slookup, ptr %lookup.0.i.i, i32 %imin.083.i.i.i, i32 1
  %1138 = ptrtoint ptr %reg_value17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1138)
  %1139 = load i32, ptr %reg_value17.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1139, i32 %or.i.i)
  %cmp18.not.i.i.i = icmp ult i32 %1139, %or.i.i
  br i1 %cmp18.not.i.i.i, label %while.body.i.i.i.if.else25.i.i.i_crit_edge, label %land.lhs.true.i.i.i

while.body.i.i.i.if.else25.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else25.i.i.i

land.lhs.true.i.i.i:                              ; preds = %while.body.i.i.i
  %reg_value21.i.i.i = getelementptr %struct.slookup, ptr %lookup.0.i.i, i32 %div.i.i.i, i32 1
  %1140 = ptrtoint ptr %reg_value21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load i32, ptr %reg_value21.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1141, i32 %or.i.i)
  %cmp22.not.i.i.i = icmp ugt i32 %1141, %or.i.i
  br i1 %cmp22.not.i.i.i, label %land.lhs.true.i.i.i.if.else25.i.i.i_crit_edge, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

land.lhs.true.i.i.i.if.else25.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else25.i.i.i

if.else25.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.if.else25.i.i.i_crit_edge, %while.body.i.i.i.if.else25.i.i.i_crit_edge
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else25.i.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge
  %imin.1.i.i.i = phi i32 [ %div.i.i.i, %if.else25.i.i.i ], [ %imin.083.i.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  %imax.1.i.i.i = phi i32 [ %imax.084.i.i.i, %if.else25.i.i.i ], [ %div.i.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  %sub13.i.i.i = sub i32 %imax.1.i.i.i, %imin.1.i.i.i
  %cmp14.i.i.i = icmp sgt i32 %sub13.i.i.i, 1
  br i1 %cmp14.i.i.i, label %if.end.i.i.i.while.body.i.i.i_crit_edge, label %while.end.i.i.i

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i.i

while.end.i.i.i:                                  ; preds = %if.end.i.i.i
  %reg_value27.i.i.i = getelementptr %struct.slookup, ptr %lookup.0.i.i, i32 %imax.1.i.i.i, i32 1
  %1142 = ptrtoint ptr %reg_value27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load i32, ptr %reg_value27.i.i.i, align 4
  %arrayidx28.i.i.i = getelementptr %struct.slookup, ptr %lookup.0.i.i, i32 %imin.1.i.i.i
  %reg_value29.i.i.i = getelementptr %struct.slookup, ptr %lookup.0.i.i, i32 %imin.1.i.i.i, i32 1
  %1144 = ptrtoint ptr %reg_value29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1144)
  %1145 = load i32, ptr %reg_value29.i.i.i, align 4
  %1146 = ptrtoint ptr %arrayidx28.i.i.i to i32
  call void @__asan_load2_noabort(i32 %1146)
  %1147 = load i16, ptr %arrayidx28.i.i.i, align 4
  %conv33.i.i.i = sext i16 %1147 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1143, i32 %1145)
  %cmp34.not.i.i.i = icmp eq i32 %1143, %1145
  br i1 %cmp34.not.i.i.i, label %while.end.i.i.i.if.then.i765_crit_edge, label %if.then36.i.i.i

while.end.i.i.i.if.then.i765_crit_edge:           ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i765

if.then36.i.i.i:                                  ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub30.i.i.i = sub i32 %1143, %1145
  %arrayidx26.i.i.i = getelementptr %struct.slookup, ptr %lookup.0.i.i, i32 %imax.1.i.i.i
  %sub39.i.i.i = sub i32 %or.i.i, %1145
  %1148 = ptrtoint ptr %arrayidx26.i.i.i to i32
  call void @__asan_load2_noabort(i32 %1148)
  %1149 = load i16, ptr %arrayidx26.i.i.i, align 4
  %conv42.i.i.i = sext i16 %1149 to i32
  %sub46.i.i.i = sub nsw i32 %conv42.i.i.i, %conv33.i.i.i
  %mul.i.i.i = mul i32 %sub46.i.i.i, %sub39.i.i.i
  %div47.i.i.i = sdiv i32 %mul.i.i.i, %sub30.i.i.i
  %add48.i.i.i = add i32 %div47.i.i.i, %conv33.i.i.i
  br label %if.then.i765

if.then.i765:                                     ; preds = %if.then36.i.i.i, %while.end.i.i.i.if.then.i765_crit_edge, %if.then8.i.i.i, %if.then.i.i.i
  %snrval.0.ph.i = phi i32 [ %conv33.i.i.i, %while.end.i.i.i.if.then.i765_crit_edge ], [ %add48.i.i.i, %if.then36.i.i.i ], [ %conv11.i.i.i, %if.then8.i.i.i ], [ %conv.i.i.i761, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data0.i.i) #6
  %stat.i762 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %1150 = ptrtoint ptr %stat.i762 to i32
  call void @__asan_store1_noabort(i32 %1150)
  store i8 1, ptr %stat.i762, align 1
  %mul.i763 = mul i32 %snrval.0.ph.i, 100
  %conv.i764 = sext i32 %mul.i763 to i64
  %1151 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %1152 = ptrtoint ptr %1151 to i32
  call void @__asan_storeN_noabort(i32 %1152, i32 8)
  store i64 %conv.i764, ptr %1151, align 1
  br label %if.end194

if.else.i766:                                     ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data1.i.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data0.i.i) #6
  %stat5.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %1153 = ptrtoint ptr %stat5.i to i32
  call void @__asan_store1_noabort(i32 %1153)
  store i8 0, ptr %stat5.i, align 1
  br label %if.end194

if.else189:                                       ; preds = %read_signal_strength.exit
  call void @__sanitizer_cov_trace_pc() #8
  %stat191 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %1154 = ptrtoint ptr %stat191 to i32
  call void @__asan_store1_noabort(i32 %1154)
  store i8 0, ptr %stat191, align 1
  br label %if.end194

if.end194:                                        ; preds = %if.else189, %if.else.i766, %if.then.i765
  %1155 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1155)
  %1156 = load i32, ptr %status, align 4
  %and195 = and i32 %1156, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and195)
  %tobool196.not = icmp eq i32 %and195, 0
  br i1 %tobool196.not, label %if.else199, label %if.then197

if.then197:                                       ; preds = %if.end194
  %1157 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %1157)
  %1158 = load ptr, ptr %demodulator_priv, align 4
  %receive_mode.i.i770 = getelementptr inbounds %struct.stv, ptr %1158, i32 0, i32 13
  %1159 = ptrtoint ptr %receive_mode.i.i770 to i32
  call void @__asan_load4_noabort(i32 %1159)
  %1160 = load i32, ptr %receive_mode.i.i770, align 4
  %1161 = zext i32 %1160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1161, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %1160, label %if.then197.read_ber.exit_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb1.i.i
  ]

if.then197.read_ber.exit_crit_edge:               ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_ber.exit

sw.bb.i.i:                                        ; preds = %if.then197
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regs.i.i.i) #6
  %1162 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1162)
  store i8 -1, ptr %regs.i.i.i, align 1, !annotation !69
  %1163 = getelementptr inbounds [3 x i8], ptr %regs.i.i.i, i32 0, i32 1
  %1164 = ptrtoint ptr %1163 to i32
  call void @__asan_store1_noabort(i32 %1164)
  store i8 -1, ptr %1163, align 1, !annotation !69
  %1165 = getelementptr inbounds [3 x i8], ptr %regs.i.i.i, i32 0, i32 2
  %1166 = ptrtoint ptr %1165 to i32
  call void @__asan_store1_noabort(i32 %1166)
  store i8 -1, ptr %1165, align 1, !annotation !69
  %regoff.i.i.i = getelementptr inbounds %struct.stv, ptr %1158, i32 0, i32 3
  %1167 = ptrtoint ptr %regoff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %1167)
  %1168 = load i16, ptr %regoff.i.i.i, align 4
  %add.i.i.i771 = add i16 %1168, -3175
  %1169 = ptrtoint ptr %1158 to i32
  call void @__asan_load4_noabort(i32 %1169)
  %1170 = load ptr, ptr %1158, align 4
  %i2c.i.i.i.i = getelementptr inbounds %struct.stv_base, ptr %1170, i32 0, i32 2
  %1171 = ptrtoint ptr %i2c.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1171)
  %1172 = load ptr, ptr %i2c.i.i.i.i, align 4
  %adr.i.i.i.i = getelementptr inbounds %struct.stv_base, ptr %1170, i32 0, i32 1
  %1173 = ptrtoint ptr %adr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1173)
  %1174 = load i8, ptr %adr.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i.i.i) #6
  %1175 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i.i.i, i32 0, i32 1
  %1176 = lshr i16 %add.i.i.i771, 8
  %conv1.i.i.i.i.i = trunc i16 %1176 to i8
  %1177 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1177)
  store i8 %conv1.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 1
  %conv3.i.i.i.i.i = trunc i16 %add.i.i.i771 to i8
  %1178 = ptrtoint ptr %1175 to i32
  call void @__asan_store1_noabort(i32 %1178)
  store i8 %conv3.i.i.i.i.i, ptr %1175, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i.i.i) #6
  %1179 = getelementptr inbounds i8, ptr %msgs.i.i.i.i.i, i32 4
  %1180 = call ptr @memset(ptr %1179, i32 255, i32 16)
  %conv5.i.i.i.i.i = zext i8 %1174 to i16
  %1181 = ptrtoint ptr %msgs.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1181)
  store i16 %conv5.i.i.i.i.i, ptr %msgs.i.i.i.i.i, align 4
  %flags.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i.i, i32 0, i32 1
  %1182 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1182)
  store i16 0, ptr %flags.i.i.i.i.i, align 2
  %1183 = ptrtoint ptr %1179 to i32
  call void @__asan_store2_noabort(i32 %1183)
  store i16 2, ptr %1179, align 4
  %buf.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i.i, i32 0, i32 3
  %1184 = ptrtoint ptr %buf.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1184)
  store ptr %msg.i.i.i.i.i, ptr %buf.i.i.i.i.i, align 4
  %arrayinit.element6.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i.i, i32 1
  %1185 = ptrtoint ptr %arrayinit.element6.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1185)
  store i16 %conv5.i.i.i.i.i, ptr %arrayinit.element6.i.i.i.i.i, align 4
  %flags9.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i.i, i32 1, i32 1
  %1186 = ptrtoint ptr %flags9.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1186)
  store i16 1, ptr %flags9.i.i.i.i.i, align 2
  %len10.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i.i, i32 1, i32 2
  %1187 = ptrtoint ptr %len10.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1187)
  store i16 3, ptr %len10.i.i.i.i.i, align 4
  %buf12.i.i.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i.i.i, i32 1, i32 3
  %1188 = ptrtoint ptr %buf12.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1188)
  store ptr %regs.i.i.i, ptr %buf12.i.i.i.i.i, align 4
  %call.i.i.i.i.i = call i32 @i2c_transfer(ptr noundef %1172, ptr noundef nonnull %msgs.i.i.i.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 2
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i772, label %read_regs.exit.i.i.i

read_regs.exit.i.i.i:                             ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i = zext i16 %add.i.i.i771 to i32
  %dev.i.i.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1172, i32 0, i32 9
  %conv15.i.i.i.i.i = zext i8 %1174 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i.i.i.i, i32 noundef %conv.i.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i.i.i) #6
  br label %get_bit_error_rate_s.exit.i.i

if.end.i.i.i772:                                  ; preds = %sw.bb.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i.i.i) #6
  %1189 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1189)
  %1190 = load i8, ptr %regs.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1190)
  %cmp.i.i.i = icmp sgt i8 %1190, -1
  br i1 %cmp.i.i.i, label %if.then4.i.i.i, label %if.end.i.i.i772.if.end63.i.i.i_crit_edge

if.end.i.i.i772.if.end63.i.i.i_crit_edge:         ; preds = %if.end.i.i.i772
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i772
  %berscale.i.i.i = getelementptr inbounds %struct.stv, ptr %1158, i32 0, i32 30
  %1191 = ptrtoint ptr %berscale.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1191)
  %1192 = load i8, ptr %berscale.i.i.i, align 4
  %conv5.i.i.i773 = zext i8 %1192 to i32
  %mul.i.i.i774 = shl nuw nsw i32 %conv5.i.i.i773, 1
  %add7.i.i.i = add nuw nsw i32 %mul.i.i.i774, 13
  %sh_prom.i.i.i = zext i32 %add7.i.i.i to i64
  %shl.i.i.i = shl nuw i64 1, %sh_prom.i.i.i
  %conv8.i.i.i = trunc i64 %shl.i.i.i to i32
  %last_berdenominator.i.i.i = getelementptr inbounds %struct.stv, ptr %1158, i32 0, i32 29
  %1193 = ptrtoint ptr %last_berdenominator.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1193)
  store i32 %conv8.i.i.i, ptr %last_berdenominator.i.i.i, align 4
  %and11.i.i.i = zext i8 %1190 to i32
  %shl12.i.i.i = shl nuw nsw i32 %and11.i.i.i, 16
  %1194 = ptrtoint ptr %1163 to i32
  call void @__asan_load1_noabort(i32 %1194)
  %1195 = load i8, ptr %1163, align 1
  %conv14.i.i.i = zext i8 %1195 to i32
  %shl15.i.i.i = shl nuw nsw i32 %conv14.i.i.i, 8
  %or.i.i.i = or i32 %shl15.i.i.i, %shl12.i.i.i
  %1196 = ptrtoint ptr %1165 to i32
  call void @__asan_load1_noabort(i32 %1196)
  %1197 = load i8, ptr %1165, align 1
  %conv17.i.i.i = zext i8 %1197 to i32
  %or18.i.i.i = or i32 %or.i.i.i, %conv17.i.i.i
  %last_bernumerator.i.i.i = getelementptr inbounds %struct.stv, ptr %1158, i32 0, i32 28
  %1198 = ptrtoint ptr %last_bernumerator.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1198)
  store i32 %or18.i.i.i, ptr %last_bernumerator.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %or18.i.i.i)
  %cmp20.i.i.i = icmp ult i32 %or18.i.i.i, 256
  br i1 %cmp20.i.i.i, label %land.lhs.true.i.i.i775, label %if.else.i.i.i785

land.lhs.true.i.i.i775:                           ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1192)
  %cmp24.i.i.i = icmp ult i8 %1192, 6
  br i1 %cmp24.i.i.i, label %if.then26.i.i.i, label %land.lhs.true.i.i.i775.if.end63.i.i.i_crit_edge

land.lhs.true.i.i.i775.if.end63.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i775
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i.i.i

if.then26.i.i.i:                                  ; preds = %land.lhs.true.i.i.i775
  %add29.i.i.i = add nuw nsw i8 %1192, 1
  %1199 = ptrtoint ptr %berscale.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1199)
  store i8 %add29.i.i.i, ptr %berscale.i.i.i, align 4
  %1200 = ptrtoint ptr %regoff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %1200)
  %1201 = load i16, ptr %regoff.i.i.i, align 4
  %add33.i.i.i = add i16 %1201, -3176
  %1202 = or i8 %add29.i.i.i, 32
  %1203 = ptrtoint ptr %1158 to i32
  call void @__asan_load4_noabort(i32 %1203)
  %1204 = load ptr, ptr %1158, align 4
  %i2c.i85.i.i.i = getelementptr inbounds %struct.stv_base, ptr %1204, i32 0, i32 2
  %1205 = ptrtoint ptr %i2c.i85.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1205)
  %1206 = load ptr, ptr %i2c.i85.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i.i.i) #6
  %1207 = getelementptr inbounds [3 x i8], ptr %data.i.i.i.i, i32 0, i32 1
  %1208 = getelementptr inbounds [3 x i8], ptr %data.i.i.i.i, i32 0, i32 2
  %1209 = lshr i16 %add33.i.i.i, 8
  %conv1.i.i.i.i776 = trunc i16 %1209 to i8
  %1210 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1210)
  store i8 %conv1.i.i.i.i776, ptr %data.i.i.i.i, align 1
  %conv3.i.i.i.i777 = trunc i16 %add33.i.i.i to i8
  %1211 = ptrtoint ptr %1207 to i32
  call void @__asan_store1_noabort(i32 %1211)
  store i8 %conv3.i.i.i.i777, ptr %1207, align 1
  %1212 = ptrtoint ptr %1208 to i32
  call void @__asan_store1_noabort(i32 %1212)
  store i8 %1202, ptr %1208, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i.i768) #6
  %1213 = getelementptr inbounds i8, ptr %msg.i.i.i.i768, i32 4
  %1214 = ptrtoint ptr %1213 to i32
  call void @__asan_store4_noabort(i32 %1214)
  store i32 262143, ptr %1213, align 4
  %adr.i86.i.i.i = getelementptr inbounds %struct.stv_base, ptr %1204, i32 0, i32 1
  %1215 = ptrtoint ptr %adr.i86.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1215)
  %1216 = load i8, ptr %adr.i86.i.i.i, align 4
  %conv6.i.i.i.i = zext i8 %1216 to i16
  %1217 = ptrtoint ptr %msg.i.i.i.i768 to i32
  call void @__asan_store2_noabort(i32 %1217)
  store i16 %conv6.i.i.i.i, ptr %msg.i.i.i.i768, align 4
  %flags.i.i.i.i778 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i768, i32 0, i32 1
  %1218 = ptrtoint ptr %flags.i.i.i.i778 to i32
  call void @__asan_store2_noabort(i32 %1218)
  store i16 0, ptr %flags.i.i.i.i778, align 2
  %buf.i.i.i.i779 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i.i768, i32 0, i32 3
  %1219 = ptrtoint ptr %buf.i.i.i.i779 to i32
  call void @__asan_store4_noabort(i32 %1219)
  store ptr %data.i.i.i.i, ptr %buf.i.i.i.i779, align 4
  %call.i.i.i.i780 = call i32 @i2c_transfer(ptr noundef %1206, ptr noundef nonnull %msg.i.i.i.i768, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i780)
  %cmp.not.i.i.i.i781 = icmp eq i32 %call.i.i.i.i780, 1
  br i1 %cmp.not.i.i.i.i781, label %if.then26.i.i.i.write_reg.exit.i.i.i_crit_edge, label %do.end.i.i.i.i784

if.then26.i.i.i.write_reg.exit.i.i.i_crit_edge:   ; preds = %if.then26.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit.i.i.i

do.end.i.i.i.i784:                                ; preds = %if.then26.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i782 = zext i16 %add33.i.i.i to i32
  %dev.i.i.i.i783 = getelementptr inbounds %struct.i2c_adapter, ptr %1206, i32 0, i32 9
  %1220 = ptrtoint ptr %1158 to i32
  call void @__asan_load4_noabort(i32 %1220)
  %1221 = load ptr, ptr %1158, align 4
  %adr9.i.i.i.i = getelementptr inbounds %struct.stv_base, ptr %1221, i32 0, i32 1
  %1222 = ptrtoint ptr %adr9.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1222)
  %1223 = load i8, ptr %adr9.i.i.i.i, align 4
  %conv10.i.i.i.i = zext i8 %1223 to i32
  %conv12.i.i.i.i = zext i8 %1202 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i.i783, ptr noundef nonnull @.str.14, i32 noundef %conv10.i.i.i.i, i32 noundef %conv.i.i.i.i782, i32 noundef %conv12.i.i.i.i) #10
  br label %write_reg.exit.i.i.i

write_reg.exit.i.i.i:                             ; preds = %do.end.i.i.i.i784, %if.then26.i.i.i.write_reg.exit.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i.i768) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i.i.i) #6
  br label %if.end63.i.i.i

if.else.i.i.i785:                                 ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %or18.i.i.i)
  %cmp41.i.i.i = icmp ugt i32 %or18.i.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1192)
  %cmp46.i.i.i = icmp ugt i8 %1192, 2
  %or.cond.i.i.i = select i1 %cmp41.i.i.i, i1 %cmp46.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.then48.i.i.i, label %if.else.i.i.i785.if.end63.i.i.i_crit_edge

if.else.i.i.i785.if.end63.i.i.i_crit_edge:        ; preds = %if.else.i.i.i785
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63.i.i.i

if.then48.i.i.i:                                  ; preds = %if.else.i.i.i785
  %sub.i.i.i = add i8 %1192, -1
  %1224 = ptrtoint ptr %berscale.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1224)
  store i8 %sub.i.i.i, ptr %berscale.i.i.i, align 4
  %1225 = ptrtoint ptr %regoff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %1225)
  %1226 = load i16, ptr %regoff.i.i.i, align 4
  %add54.i.i.i = add i16 %1226, -3176
  %1227 = or i8 %sub.i.i.i, 32
  %1228 = ptrtoint ptr %1158 to i32
  call void @__asan_load4_noabort(i32 %1228)
  %1229 = load ptr, ptr %1158, align 4
  %i2c.i89.i.i.i = getelementptr inbounds %struct.stv_base, ptr %1229, i32 0, i32 2
  %1230 = ptrtoint ptr %i2c.i89.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1230)
  %1231 = load ptr, ptr %i2c.i89.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i87.i.i.i) #6
  %1232 = getelementptr inbounds [3 x i8], ptr %data.i87.i.i.i, i32 0, i32 1
  %1233 = getelementptr inbounds [3 x i8], ptr %data.i87.i.i.i, i32 0, i32 2
  %1234 = lshr i16 %add54.i.i.i, 8
  %conv1.i90.i.i.i = trunc i16 %1234 to i8
  %1235 = ptrtoint ptr %data.i87.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1235)
  store i8 %conv1.i90.i.i.i, ptr %data.i87.i.i.i, align 1
  %conv3.i91.i.i.i = trunc i16 %add54.i.i.i to i8
  %1236 = ptrtoint ptr %1232 to i32
  call void @__asan_store1_noabort(i32 %1236)
  store i8 %conv3.i91.i.i.i, ptr %1232, align 1
  %1237 = ptrtoint ptr %1233 to i32
  call void @__asan_store1_noabort(i32 %1237)
  store i8 %1227, ptr %1233, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i88.i.i.i) #6
  %1238 = getelementptr inbounds i8, ptr %msg.i88.i.i.i, i32 4
  %1239 = ptrtoint ptr %1238 to i32
  call void @__asan_store4_noabort(i32 %1239)
  store i32 262143, ptr %1238, align 4
  %adr.i92.i.i.i = getelementptr inbounds %struct.stv_base, ptr %1229, i32 0, i32 1
  %1240 = ptrtoint ptr %adr.i92.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1240)
  %1241 = load i8, ptr %adr.i92.i.i.i, align 4
  %conv6.i93.i.i.i = zext i8 %1241 to i16
  %1242 = ptrtoint ptr %msg.i88.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1242)
  store i16 %conv6.i93.i.i.i, ptr %msg.i88.i.i.i, align 4
  %flags.i94.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i88.i.i.i, i32 0, i32 1
  %1243 = ptrtoint ptr %flags.i94.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1243)
  store i16 0, ptr %flags.i94.i.i.i, align 2
  %buf.i96.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i88.i.i.i, i32 0, i32 3
  %1244 = ptrtoint ptr %buf.i96.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1244)
  store ptr %data.i87.i.i.i, ptr %buf.i96.i.i.i, align 4
  %call.i97.i.i.i = call i32 @i2c_transfer(ptr noundef %1231, ptr noundef nonnull %msg.i88.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i97.i.i.i)
  %cmp.not.i98.i.i.i = icmp eq i32 %call.i97.i.i.i, 1
  br i1 %cmp.not.i98.i.i.i, label %if.then48.i.i.i.write_reg.exit106.i.i.i_crit_edge, label %do.end.i104.i.i.i

if.then48.i.i.i.write_reg.exit106.i.i.i_crit_edge: ; preds = %if.then48.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit106.i.i.i

do.end.i104.i.i.i:                                ; preds = %if.then48.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i99.i.i.i = zext i16 %add54.i.i.i to i32
  %dev.i100.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1231, i32 0, i32 9
  %1245 = ptrtoint ptr %1158 to i32
  call void @__asan_load4_noabort(i32 %1245)
  %1246 = load ptr, ptr %1158, align 4
  %adr9.i101.i.i.i = getelementptr inbounds %struct.stv_base, ptr %1246, i32 0, i32 1
  %1247 = ptrtoint ptr %adr9.i101.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1247)
  %1248 = load i8, ptr %adr9.i101.i.i.i, align 4
  %conv10.i102.i.i.i = zext i8 %1248 to i32
  %conv12.i103.i.i.i = zext i8 %1227 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i100.i.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i102.i.i.i, i32 noundef %conv.i99.i.i.i, i32 noundef %conv12.i103.i.i.i) #10
  br label %write_reg.exit106.i.i.i

write_reg.exit106.i.i.i:                          ; preds = %do.end.i104.i.i.i, %if.then48.i.i.i.write_reg.exit106.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i88.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i87.i.i.i) #6
  br label %if.end63.i.i.i

if.end63.i.i.i:                                   ; preds = %write_reg.exit106.i.i.i, %if.else.i.i.i785.if.end63.i.i.i_crit_edge, %write_reg.exit.i.i.i, %land.lhs.true.i.i.i775.if.end63.i.i.i_crit_edge, %if.end.i.i.i772.if.end63.i.i.i_crit_edge
  %last_bernumerator64.i.i.i = getelementptr inbounds %struct.stv, ptr %1158, i32 0, i32 28
  %1249 = ptrtoint ptr %last_bernumerator64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1249)
  %1250 = load i32, ptr %last_bernumerator64.i.i.i, align 4
  %last_berdenominator65.i.i.i = getelementptr inbounds %struct.stv, ptr %1158, i32 0, i32 29
  %1251 = ptrtoint ptr %last_berdenominator65.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1251)
  %1252 = load i32, ptr %last_berdenominator65.i.i.i, align 4
  br label %get_bit_error_rate_s.exit.i.i

get_bit_error_rate_s.exit.i.i:                    ; preds = %if.end63.i.i.i, %read_regs.exit.i.i.i
  %n.0.i = phi i32 [ %1250, %if.end63.i.i.i ], [ 0, %read_regs.exit.i.i.i ]
  %d.0.i = phi i32 [ %1252, %if.end63.i.i.i ], [ 1, %read_regs.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regs.i.i.i) #6
  br label %read_ber.exit

sw.bb1.i.i:                                       ; preds = %if.then197
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regs.i5.i.i) #6
  %1253 = ptrtoint ptr %regs.i5.i.i to i32
  call void @__asan_store1_noabort(i32 %1253)
  store i8 -1, ptr %regs.i5.i.i, align 1, !annotation !69
  %1254 = getelementptr inbounds [3 x i8], ptr %regs.i5.i.i, i32 0, i32 1
  %1255 = ptrtoint ptr %1254 to i32
  call void @__asan_store1_noabort(i32 %1255)
  store i8 -1, ptr %1254, align 1, !annotation !69
  %1256 = getelementptr inbounds [3 x i8], ptr %regs.i5.i.i, i32 0, i32 2
  %1257 = ptrtoint ptr %1256 to i32
  call void @__asan_store1_noabort(i32 %1257)
  store i8 -1, ptr %1256, align 1, !annotation !69
  %regoff.i6.i.i = getelementptr inbounds %struct.stv, ptr %1158, i32 0, i32 3
  %1258 = ptrtoint ptr %regoff.i6.i.i to i32
  call void @__asan_load2_noabort(i32 %1258)
  %1259 = load i16, ptr %regoff.i6.i.i, align 4
  %add.i7.i.i = add i16 %1259, -3175
  %1260 = ptrtoint ptr %1158 to i32
  call void @__asan_load4_noabort(i32 %1260)
  %1261 = load ptr, ptr %1158, align 4
  %i2c.i.i8.i.i = getelementptr inbounds %struct.stv_base, ptr %1261, i32 0, i32 2
  %1262 = ptrtoint ptr %i2c.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %1262)
  %1263 = load ptr, ptr %i2c.i.i8.i.i, align 4
  %adr.i.i9.i.i = getelementptr inbounds %struct.stv_base, ptr %1261, i32 0, i32 1
  %1264 = ptrtoint ptr %adr.i.i9.i.i to i32
  call void @__asan_load1_noabort(i32 %1264)
  %1265 = load i8, ptr %adr.i.i9.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i.i3.i.i) #6
  %1266 = getelementptr inbounds [2 x i8], ptr %msg.i.i.i3.i.i, i32 0, i32 1
  %1267 = lshr i16 %add.i7.i.i, 8
  %conv1.i.i.i10.i.i = trunc i16 %1267 to i8
  %1268 = ptrtoint ptr %msg.i.i.i3.i.i to i32
  call void @__asan_store1_noabort(i32 %1268)
  store i8 %conv1.i.i.i10.i.i, ptr %msg.i.i.i3.i.i, align 1
  %conv3.i.i.i11.i.i = trunc i16 %add.i7.i.i to i8
  %1269 = ptrtoint ptr %1266 to i32
  call void @__asan_store1_noabort(i32 %1269)
  store i8 %conv3.i.i.i11.i.i, ptr %1266, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i4.i.i) #6
  %1270 = getelementptr inbounds i8, ptr %msgs.i.i.i4.i.i, i32 4
  %1271 = call ptr @memset(ptr %1270, i32 255, i32 16)
  %conv5.i.i.i12.i.i = zext i8 %1265 to i16
  %1272 = ptrtoint ptr %msgs.i.i.i4.i.i to i32
  call void @__asan_store2_noabort(i32 %1272)
  store i16 %conv5.i.i.i12.i.i, ptr %msgs.i.i.i4.i.i, align 4
  %flags.i.i.i13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i4.i.i, i32 0, i32 1
  %1273 = ptrtoint ptr %flags.i.i.i13.i.i to i32
  call void @__asan_store2_noabort(i32 %1273)
  store i16 0, ptr %flags.i.i.i13.i.i, align 2
  %1274 = ptrtoint ptr %1270 to i32
  call void @__asan_store2_noabort(i32 %1274)
  store i16 2, ptr %1270, align 4
  %buf.i.i.i14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i4.i.i, i32 0, i32 3
  %1275 = ptrtoint ptr %buf.i.i.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %1275)
  store ptr %msg.i.i.i3.i.i, ptr %buf.i.i.i14.i.i, align 4
  %arrayinit.element6.i.i.i15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i4.i.i, i32 1
  %1276 = ptrtoint ptr %arrayinit.element6.i.i.i15.i.i to i32
  call void @__asan_store2_noabort(i32 %1276)
  store i16 %conv5.i.i.i12.i.i, ptr %arrayinit.element6.i.i.i15.i.i, align 4
  %flags9.i.i.i16.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i4.i.i, i32 1, i32 1
  %1277 = ptrtoint ptr %flags9.i.i.i16.i.i to i32
  call void @__asan_store2_noabort(i32 %1277)
  store i16 1, ptr %flags9.i.i.i16.i.i, align 2
  %len10.i.i.i17.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i4.i.i, i32 1, i32 2
  %1278 = ptrtoint ptr %len10.i.i.i17.i.i to i32
  call void @__asan_store2_noabort(i32 %1278)
  store i16 3, ptr %len10.i.i.i17.i.i, align 4
  %buf12.i.i.i18.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i4.i.i, i32 1, i32 3
  %1279 = ptrtoint ptr %buf12.i.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %1279)
  store ptr %regs.i5.i.i, ptr %buf12.i.i.i18.i.i, align 4
  %call.i.i.i19.i.i = call i32 @i2c_transfer(ptr noundef %1263, ptr noundef nonnull %msgs.i.i.i4.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i19.i.i)
  %cmp.not.i.i.i20.i.i = icmp eq i32 %call.i.i.i19.i.i, 2
  br i1 %cmp.not.i.i.i20.i.i, label %if.end.i26.i.i, label %read_regs.exit.i24.i.i

read_regs.exit.i24.i.i:                           ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i21.i.i = zext i16 %add.i7.i.i to i32
  %dev.i.i.i22.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1263, i32 0, i32 9
  %conv15.i.i.i23.i.i = zext i8 %1265 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i.i22.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i.i23.i.i, i32 noundef %conv.i.i.i21.i.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i4.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i3.i.i) #6
  br label %get_bit_error_rate_s2.exit.i.i

if.end.i26.i.i:                                   ; preds = %sw.bb1.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i4.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i.i3.i.i) #6
  %1280 = ptrtoint ptr %regs.i5.i.i to i32
  call void @__asan_load1_noabort(i32 %1280)
  %1281 = load i8, ptr %regs.i5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1281)
  %cmp.i25.i.i = icmp sgt i8 %1281, -1
  br i1 %cmp.i25.i.i, label %if.then4.i27.i.i, label %if.end.i26.i.i.if.end61.i.i.i_crit_edge

if.end.i26.i.i.if.end61.i.i.i_crit_edge:          ; preds = %if.end.i26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i.i.i

if.then4.i27.i.i:                                 ; preds = %if.end.i26.i.i
  %mod_cod.i.i.i = getelementptr inbounds %struct.stv, ptr %1158, i32 0, i32 21
  %1282 = ptrtoint ptr %mod_cod.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1282)
  %1283 = load i32, ptr %mod_cod.i.i.i, align 4
  %fectype.i.i.i = getelementptr inbounds %struct.stv, ptr %1158, i32 0, i32 22
  %1284 = ptrtoint ptr %fectype.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1284)
  %1285 = load i32, ptr %fectype.i.i.i, align 4
  %1286 = add i32 %1283, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %1286)
  %1287 = icmp ult i32 %1286, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1285)
  %cmp3.i.i.i.i = icmp ult i32 %1285, 2
  %or.cond8.i.i.i.i = and i1 %1287, %cmp3.i.i.i.i
  br i1 %or.cond8.i.i.i.i, label %if.then.i.i.i.i, label %if.then4.i27.i.i.dvbs2_nbch.exit.i.i.i_crit_edge

if.then4.i27.i.i.dvbs2_nbch.exit.i.i.i_crit_edge: ; preds = %if.then4.i27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvbs2_nbch.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then4.i27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx4.i.i.i.i = getelementptr [29 x [2 x i32]], ptr @dvbs2_nbch.nbch, i32 0, i32 %1283, i32 %1285
  %1288 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1288)
  %1289 = load i32, ptr %arrayidx4.i.i.i.i, align 4
  br label %dvbs2_nbch.exit.i.i.i

dvbs2_nbch.exit.i.i.i:                            ; preds = %if.then.i.i.i.i, %if.then4.i27.i.i.dvbs2_nbch.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %1289, %if.then.i.i.i.i ], [ 64800, %if.then4.i27.i.i.dvbs2_nbch.exit.i.i.i_crit_edge ]
  %berscale.i28.i.i = getelementptr inbounds %struct.stv, ptr %1158, i32 0, i32 30
  %1290 = ptrtoint ptr %berscale.i28.i.i to i32
  call void @__asan_load1_noabort(i32 %1290)
  %1291 = load i8, ptr %berscale.i28.i.i, align 4
  %conv6.i.i.i = zext i8 %1291 to i32
  %mul.i29.i.i = shl nuw nsw i32 %conv6.i.i.i, 1
  %shl.i30.i.i = shl i32 %retval.0.i.i.i.i, %mul.i29.i.i
  %last_berdenominator.i31.i.i = getelementptr inbounds %struct.stv, ptr %1158, i32 0, i32 29
  %1292 = ptrtoint ptr %last_berdenominator.i31.i.i to i32
  call void @__asan_store4_noabort(i32 %1292)
  store i32 %shl.i30.i.i, ptr %last_berdenominator.i31.i.i, align 4
  %and9.i.i.i = zext i8 %1281 to i32
  %shl10.i.i.i = shl nuw nsw i32 %and9.i.i.i, 16
  %1293 = ptrtoint ptr %1254 to i32
  call void @__asan_load1_noabort(i32 %1293)
  %1294 = load i8, ptr %1254, align 1
  %conv12.i.i.i = zext i8 %1294 to i32
  %shl13.i.i.i = shl nuw nsw i32 %conv12.i.i.i, 8
  %or.i32.i.i = or i32 %shl13.i.i.i, %shl10.i.i.i
  %1295 = ptrtoint ptr %1256 to i32
  call void @__asan_load1_noabort(i32 %1295)
  %1296 = load i8, ptr %1256, align 1
  %conv15.i.i.i786 = zext i8 %1296 to i32
  %or16.i.i.i = or i32 %or.i32.i.i, %conv15.i.i.i786
  %last_bernumerator.i33.i.i = getelementptr inbounds %struct.stv, ptr %1158, i32 0, i32 28
  %1297 = ptrtoint ptr %last_bernumerator.i33.i.i to i32
  call void @__asan_store4_noabort(i32 %1297)
  store i32 %or16.i.i.i, ptr %last_bernumerator.i33.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %or16.i.i.i)
  %cmp18.i.i.i = icmp ult i32 %or16.i.i.i, 256
  br i1 %cmp18.i.i.i, label %land.lhs.true.i34.i.i, label %if.else.i50.i.i

land.lhs.true.i34.i.i:                            ; preds = %dvbs2_nbch.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1291)
  %cmp22.i.i.i = icmp ult i8 %1291, 6
  br i1 %cmp22.i.i.i, label %if.then24.i.i.i, label %land.lhs.true.i34.i.i.if.end61.i.i.i_crit_edge

land.lhs.true.i34.i.i.if.end61.i.i.i_crit_edge:   ; preds = %land.lhs.true.i34.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i.i.i

if.then24.i.i.i:                                  ; preds = %land.lhs.true.i34.i.i
  %add27.i.i.i = add nuw nsw i8 %1291, 1
  %1298 = ptrtoint ptr %berscale.i28.i.i to i32
  call void @__asan_store1_noabort(i32 %1298)
  store i8 %add27.i.i.i, ptr %berscale.i28.i.i, align 4
  %1299 = ptrtoint ptr %regoff.i6.i.i to i32
  call void @__asan_load2_noabort(i32 %1299)
  %1300 = load i16, ptr %regoff.i6.i.i, align 4
  %add31.i.i.i = add i16 %1300, -3176
  %1301 = or i8 %add27.i.i.i, 32
  %1302 = ptrtoint ptr %1158 to i32
  call void @__asan_load4_noabort(i32 %1302)
  %1303 = load ptr, ptr %1158, align 4
  %i2c.i86.i.i.i = getelementptr inbounds %struct.stv_base, ptr %1303, i32 0, i32 2
  %1304 = ptrtoint ptr %i2c.i86.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1304)
  %1305 = load ptr, ptr %i2c.i86.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i1.i.i) #6
  %1306 = getelementptr inbounds [3 x i8], ptr %data.i.i1.i.i, i32 0, i32 1
  %1307 = getelementptr inbounds [3 x i8], ptr %data.i.i1.i.i, i32 0, i32 2
  %1308 = lshr i16 %add31.i.i.i, 8
  %conv1.i.i35.i.i = trunc i16 %1308 to i8
  %1309 = ptrtoint ptr %data.i.i1.i.i to i32
  call void @__asan_store1_noabort(i32 %1309)
  store i8 %conv1.i.i35.i.i, ptr %data.i.i1.i.i, align 1
  %conv3.i.i36.i.i = trunc i16 %add31.i.i.i to i8
  %1310 = ptrtoint ptr %1306 to i32
  call void @__asan_store1_noabort(i32 %1310)
  store i8 %conv3.i.i36.i.i, ptr %1306, align 1
  %1311 = ptrtoint ptr %1307 to i32
  call void @__asan_store1_noabort(i32 %1311)
  store i8 %1301, ptr %1307, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i2.i.i) #6
  %1312 = getelementptr inbounds i8, ptr %msg.i.i2.i.i, i32 4
  %1313 = ptrtoint ptr %1312 to i32
  call void @__asan_store4_noabort(i32 %1313)
  store i32 262143, ptr %1312, align 4
  %adr.i87.i.i.i = getelementptr inbounds %struct.stv_base, ptr %1303, i32 0, i32 1
  %1314 = ptrtoint ptr %adr.i87.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1314)
  %1315 = load i8, ptr %adr.i87.i.i.i, align 4
  %conv6.i.i37.i.i = zext i8 %1315 to i16
  %1316 = ptrtoint ptr %msg.i.i2.i.i to i32
  call void @__asan_store2_noabort(i32 %1316)
  store i16 %conv6.i.i37.i.i, ptr %msg.i.i2.i.i, align 4
  %flags.i.i38.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i2.i.i, i32 0, i32 1
  %1317 = ptrtoint ptr %flags.i.i38.i.i to i32
  call void @__asan_store2_noabort(i32 %1317)
  store i16 0, ptr %flags.i.i38.i.i, align 2
  %buf.i.i39.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i2.i.i, i32 0, i32 3
  %1318 = ptrtoint ptr %buf.i.i39.i.i to i32
  call void @__asan_store4_noabort(i32 %1318)
  store ptr %data.i.i1.i.i, ptr %buf.i.i39.i.i, align 4
  %call.i.i40.i.i = call i32 @i2c_transfer(ptr noundef %1305, ptr noundef nonnull %msg.i.i2.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i40.i.i)
  %cmp.not.i.i41.i.i = icmp eq i32 %call.i.i40.i.i, 1
  br i1 %cmp.not.i.i41.i.i, label %if.then24.i.i.i.write_reg.exit.i48.i.i_crit_edge, label %do.end.i.i47.i.i

if.then24.i.i.i.write_reg.exit.i48.i.i_crit_edge: ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit.i48.i.i

do.end.i.i47.i.i:                                 ; preds = %if.then24.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i42.i.i = zext i16 %add31.i.i.i to i32
  %dev.i.i43.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1305, i32 0, i32 9
  %1319 = ptrtoint ptr %1158 to i32
  call void @__asan_load4_noabort(i32 %1319)
  %1320 = load ptr, ptr %1158, align 4
  %adr9.i.i44.i.i = getelementptr inbounds %struct.stv_base, ptr %1320, i32 0, i32 1
  %1321 = ptrtoint ptr %adr9.i.i44.i.i to i32
  call void @__asan_load1_noabort(i32 %1321)
  %1322 = load i8, ptr %adr9.i.i44.i.i, align 4
  %conv10.i.i45.i.i = zext i8 %1322 to i32
  %conv12.i.i46.i.i = zext i8 %1301 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i43.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i.i45.i.i, i32 noundef %conv.i.i42.i.i, i32 noundef %conv12.i.i46.i.i) #10
  br label %write_reg.exit.i48.i.i

write_reg.exit.i48.i.i:                           ; preds = %do.end.i.i47.i.i, %if.then24.i.i.i.write_reg.exit.i48.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i2.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i1.i.i) #6
  br label %if.end61.i.i.i

if.else.i50.i.i:                                  ; preds = %dvbs2_nbch.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %or16.i.i.i)
  %cmp39.i.i.i = icmp ugt i32 %or16.i.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1291)
  %cmp44.i.i.i = icmp ugt i8 %1291, 2
  %or.cond.i49.i.i = select i1 %cmp39.i.i.i, i1 %cmp44.i.i.i, i1 false
  br i1 %or.cond.i49.i.i, label %if.then46.i.i.i, label %if.else.i50.i.i.if.end61.i.i.i_crit_edge

if.else.i50.i.i.if.end61.i.i.i_crit_edge:         ; preds = %if.else.i50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61.i.i.i

if.then46.i.i.i:                                  ; preds = %if.else.i50.i.i
  %sub.i51.i.i = add i8 %1291, -1
  %1323 = ptrtoint ptr %berscale.i28.i.i to i32
  call void @__asan_store1_noabort(i32 %1323)
  store i8 %sub.i51.i.i, ptr %berscale.i28.i.i, align 4
  %1324 = ptrtoint ptr %regoff.i6.i.i to i32
  call void @__asan_load2_noabort(i32 %1324)
  %1325 = load i16, ptr %regoff.i6.i.i, align 4
  %add52.i.i.i = add i16 %1325, -3176
  %1326 = or i8 %sub.i51.i.i, 32
  %1327 = ptrtoint ptr %1158 to i32
  call void @__asan_load4_noabort(i32 %1327)
  %1328 = load ptr, ptr %1158, align 4
  %i2c.i91.i.i.i = getelementptr inbounds %struct.stv_base, ptr %1328, i32 0, i32 2
  %1329 = ptrtoint ptr %i2c.i91.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1329)
  %1330 = load ptr, ptr %i2c.i91.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i89.i.i.i) #6
  %1331 = getelementptr inbounds [3 x i8], ptr %data.i89.i.i.i, i32 0, i32 1
  %1332 = getelementptr inbounds [3 x i8], ptr %data.i89.i.i.i, i32 0, i32 2
  %1333 = lshr i16 %add52.i.i.i, 8
  %conv1.i92.i.i.i = trunc i16 %1333 to i8
  %1334 = ptrtoint ptr %data.i89.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1334)
  store i8 %conv1.i92.i.i.i, ptr %data.i89.i.i.i, align 1
  %conv3.i93.i.i.i = trunc i16 %add52.i.i.i to i8
  %1335 = ptrtoint ptr %1331 to i32
  call void @__asan_store1_noabort(i32 %1335)
  store i8 %conv3.i93.i.i.i, ptr %1331, align 1
  %1336 = ptrtoint ptr %1332 to i32
  call void @__asan_store1_noabort(i32 %1336)
  store i8 %1326, ptr %1332, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i90.i.i.i) #6
  %1337 = getelementptr inbounds i8, ptr %msg.i90.i.i.i, i32 4
  %1338 = ptrtoint ptr %1337 to i32
  call void @__asan_store4_noabort(i32 %1338)
  store i32 262143, ptr %1337, align 4
  %adr.i94.i.i.i = getelementptr inbounds %struct.stv_base, ptr %1328, i32 0, i32 1
  %1339 = ptrtoint ptr %adr.i94.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1339)
  %1340 = load i8, ptr %adr.i94.i.i.i, align 4
  %conv6.i95.i.i.i = zext i8 %1340 to i16
  %1341 = ptrtoint ptr %msg.i90.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1341)
  store i16 %conv6.i95.i.i.i, ptr %msg.i90.i.i.i, align 4
  %flags.i96.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90.i.i.i, i32 0, i32 1
  %1342 = ptrtoint ptr %flags.i96.i.i.i to i32
  call void @__asan_store2_noabort(i32 %1342)
  store i16 0, ptr %flags.i96.i.i.i, align 2
  %buf.i98.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i90.i.i.i, i32 0, i32 3
  %1343 = ptrtoint ptr %buf.i98.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1343)
  store ptr %data.i89.i.i.i, ptr %buf.i98.i.i.i, align 4
  %call.i99.i.i.i = call i32 @i2c_transfer(ptr noundef %1330, ptr noundef nonnull %msg.i90.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i99.i.i.i)
  %cmp.not.i100.i.i.i = icmp eq i32 %call.i99.i.i.i, 1
  br i1 %cmp.not.i100.i.i.i, label %if.then46.i.i.i.write_reg.exit108.i.i.i_crit_edge, label %do.end.i106.i.i.i

if.then46.i.i.i.write_reg.exit108.i.i.i_crit_edge: ; preds = %if.then46.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit108.i.i.i

do.end.i106.i.i.i:                                ; preds = %if.then46.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i101.i.i.i = zext i16 %add52.i.i.i to i32
  %dev.i102.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1330, i32 0, i32 9
  %1344 = ptrtoint ptr %1158 to i32
  call void @__asan_load4_noabort(i32 %1344)
  %1345 = load ptr, ptr %1158, align 4
  %adr9.i103.i.i.i = getelementptr inbounds %struct.stv_base, ptr %1345, i32 0, i32 1
  %1346 = ptrtoint ptr %adr9.i103.i.i.i to i32
  call void @__asan_load1_noabort(i32 %1346)
  %1347 = load i8, ptr %adr9.i103.i.i.i, align 4
  %conv10.i104.i.i.i = zext i8 %1347 to i32
  %conv12.i105.i.i.i = zext i8 %1326 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i102.i.i.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i104.i.i.i, i32 noundef %conv.i101.i.i.i, i32 noundef %conv12.i105.i.i.i) #10
  br label %write_reg.exit108.i.i.i

write_reg.exit108.i.i.i:                          ; preds = %do.end.i106.i.i.i, %if.then46.i.i.i.write_reg.exit108.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i90.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i89.i.i.i) #6
  br label %if.end61.i.i.i

if.end61.i.i.i:                                   ; preds = %write_reg.exit108.i.i.i, %if.else.i50.i.i.if.end61.i.i.i_crit_edge, %write_reg.exit.i48.i.i, %land.lhs.true.i34.i.i.if.end61.i.i.i_crit_edge, %if.end.i26.i.i.if.end61.i.i.i_crit_edge
  %last_bernumerator62.i.i.i = getelementptr inbounds %struct.stv, ptr %1158, i32 0, i32 28
  %1348 = ptrtoint ptr %last_bernumerator62.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1348)
  %1349 = load i32, ptr %last_bernumerator62.i.i.i, align 4
  %last_berdenominator63.i.i.i = getelementptr inbounds %struct.stv, ptr %1158, i32 0, i32 29
  %1350 = ptrtoint ptr %last_berdenominator63.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1350)
  %1351 = load i32, ptr %last_berdenominator63.i.i.i, align 4
  br label %get_bit_error_rate_s2.exit.i.i

get_bit_error_rate_s2.exit.i.i:                   ; preds = %if.end61.i.i.i, %read_regs.exit.i24.i.i
  %n.1.i = phi i32 [ %1349, %if.end61.i.i.i ], [ 0, %read_regs.exit.i24.i.i ]
  %d.1.i = phi i32 [ %1351, %if.end61.i.i.i ], [ 1, %read_regs.exit.i24.i.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regs.i5.i.i) #6
  br label %read_ber.exit

read_ber.exit:                                    ; preds = %get_bit_error_rate_s2.exit.i.i, %get_bit_error_rate_s.exit.i.i, %if.then197.read_ber.exit_crit_edge
  %n.2.i = phi i32 [ 0, %if.then197.read_ber.exit_crit_edge ], [ %n.1.i, %get_bit_error_rate_s2.exit.i.i ], [ %n.0.i, %get_bit_error_rate_s.exit.i.i ]
  %d.2.i = phi i32 [ 1, %if.then197.read_ber.exit_crit_edge ], [ %d.1.i, %get_bit_error_rate_s2.exit.i.i ], [ %d.0.i, %get_bit_error_rate_s.exit.i.i ]
  %stat.i787 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1
  %1352 = ptrtoint ptr %stat.i787 to i32
  call void @__asan_store1_noabort(i32 %1352)
  store i8 3, ptr %stat.i787, align 1
  %conv.i788 = zext i32 %n.2.i to i64
  %1353 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1, i32 0, i32 1
  %1354 = ptrtoint ptr %1353 to i32
  call void @__asan_storeN_noabort(i32 %1354, i32 8)
  store i64 %conv.i788, ptr %1353, align 1
  %stat4.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1
  %1355 = ptrtoint ptr %stat4.i to i32
  call void @__asan_store1_noabort(i32 %1355)
  store i8 3, ptr %stat4.i, align 1
  %conv7.i = zext i32 %d.2.i to i64
  %1356 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1, i32 0, i32 1
  %1357 = ptrtoint ptr %1356 to i32
  call void @__asan_storeN_noabort(i32 %1357, i32 8)
  store i64 %conv7.i, ptr %1356, align 1
  br label %cleanup

if.else199:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  %stat201 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1
  %1358 = ptrtoint ptr %stat201 to i32
  call void @__asan_store1_noabort(i32 %1358)
  store i8 0, ptr %stat201, align 1
  %stat205 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1
  %1359 = ptrtoint ptr %stat205 to i32
  call void @__asan_store1_noabort(i32 %1359)
  store i8 0, ptr %stat205, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else199, %read_ber.exit, %set_vth.exit
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dstatus) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dmd_state) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @send_master_cmd(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %cmd) #0 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %nr = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 -150863869, i32 -146669565
  tail call fastcc void @write_field(ptr noundef %1, i32 noundef %cond, i8 noundef zeroext 2)
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  %cond3 = select i1 %tobool2.not, i32 -150855676, i32 -146661372
  tail call fastcc void @write_field(ptr noundef %1, i32 noundef %cond3, i8 noundef zeroext 1)
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp30.not = icmp eq i8 %7, 0
  br i1 %cmp30.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %8 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %write_reg.exit.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %write_reg.exit.for.body_crit_edge ]
  call fastcc void @wait_dis(ptr noundef %1, i8 noundef zeroext 64, i8 noundef zeroext 0)
  %11 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  %conv10 = select i1 %tobool8.not, i16 -2299, i16 -2235
  %arrayidx = getelementptr [6 x i8], ptr %cmd, i32 0, i32 %i.031
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %i2c.i = getelementptr inbounds %struct.stv_base, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #6
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -9, ptr %data.i, align 1
  %conv3.i = trunc i16 %conv10 to i8
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv3.i, ptr %8, align 1
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %14, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 262143, ptr %10, align 4
  %adr.i = getelementptr inbounds %struct.stv_base, ptr %16, i32 0, i32 1
  %23 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %adr.i, align 4
  %conv6.i = zext i8 %24 to i16
  %25 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv6.i, ptr %msg.i, align 4
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i, align 2
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %data.i, ptr %buf.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %for.body.write_reg.exit_crit_edge, label %do.end.i

for.body.write_reg.exit_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i16 %conv10 to i32
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 9
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %adr9.i = getelementptr inbounds %struct.stv_base, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %adr9.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %adr9.i, align 4
  %conv10.i = zext i8 %31 to i32
  %conv12.i = zext i8 %14 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i, i32 noundef %conv.i, i32 noundef %conv12.i) #10
  br label %write_reg.exit

write_reg.exit:                                   ; preds = %do.end.i, %for.body.write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #6
  %inc = add nuw nsw i32 %i.031, 1
  %32 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %msg_len, align 1
  %conv = zext i8 %33 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %write_reg.exit.for.body_crit_edge, label %write_reg.exit.for.end_crit_edge

write_reg.exit.for.end_crit_edge:                 ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

write_reg.exit.for.body_crit_edge:                ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %write_reg.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %34 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool13.not = icmp eq i32 %35, 0
  %cond14 = select i1 %tobool13.not, i32 -150855676, i32 -146661372
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond14, i8 noundef zeroext 0)
  call fastcc void @wait_dis(ptr noundef %1, i8 noundef zeroext 32, i8 noundef zeroext 32)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @send_burst(ptr nocapture noundef readonly %fe, i32 noundef %burst) #0 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %burst)
  %cmp = icmp eq i32 %burst, 0
  %nr = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 -150863869, i32 -146669565
  %. = select i1 %cmp, i8 3, i8 2
  %not.cmp = xor i1 %cmp, true
  %.30 = sext i1 %not.cmp to i8
  tail call fastcc void @write_field(ptr noundef %1, i32 noundef %cond, i8 noundef zeroext %.)
  %nr5 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %nr5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  %cond7 = select i1 %tobool6.not, i32 -150855676, i32 -146661372
  tail call fastcc void @write_field(ptr noundef %1, i32 noundef %cond7, i8 noundef zeroext 1)
  tail call fastcc void @wait_dis(ptr noundef %1, i8 noundef zeroext 64, i8 noundef zeroext 0)
  %6 = ptrtoint ptr %nr5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  %conv = select i1 %tobool11.not, i16 -2299, i16 -2235
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %i2c.i = getelementptr inbounds %struct.stv_base, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #6
  %12 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -9, ptr %data.i, align 1
  %conv3.i = trunc i16 %conv to i8
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv3.i, ptr %12, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.30, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %17 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 262143, ptr %17, align 4
  %adr.i = getelementptr inbounds %struct.stv_base, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %adr.i, align 4
  %conv6.i = zext i8 %20 to i16
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %data.i, ptr %buf.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.write_reg.exit_crit_edge, label %do.end.i

entry.write_reg.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i16 %conv to i32
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %adr9.i = getelementptr inbounds %struct.stv_base, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %adr9.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %adr9.i, align 4
  %conv10.i = zext i8 %27 to i32
  %conv12.i = zext i8 %.30 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i, i32 noundef %conv.i, i32 noundef %conv12.i) #10
  br label %write_reg.exit

write_reg.exit:                                   ; preds = %do.end.i, %entry.write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #6
  %28 = ptrtoint ptr %nr5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool15.not = icmp eq i32 %29, 0
  %cond16 = select i1 %tobool15.not, i32 -150855676, i32 -146661372
  call fastcc void @write_field(ptr noundef %1, i32 noundef %cond16, i8 noundef zeroext 0)
  call fastcc void @wait_dis(ptr noundef %1, i8 noundef zeroext 32, i8 noundef zeroext 32)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  %data.i12 = alloca [3 x i8], align 1
  %msg.i13 = alloca %struct.i2c_msg, align 4
  %data.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %nr = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %conv = select i1 %tobool.not, i16 0, i16 64
  %4 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %tone, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %5 = or i16 %conv, -2302
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %i2c.i = getelementptr inbounds %struct.stv_base, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #6
  %10 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %11 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -9, ptr %data.i, align 1
  %conv3.i = trunc i16 %5 to i8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv3.i, ptr %10, align 1
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 56, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %15 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 262143, ptr %15, align 4
  %adr.i = getelementptr inbounds %struct.stv_base, ptr %7, i32 0, i32 1
  %17 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %adr.i, align 4
  %conv6.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %data.i, ptr %buf.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %9, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %sw.bb.write_reg.exit_crit_edge, label %do.end.i

sw.bb.write_reg.exit_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i16 %5 to i32
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 9
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %adr9.i = getelementptr inbounds %struct.stv_base, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %adr9.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %adr9.i, align 4
  %conv10.i = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i, i32 noundef %conv.i, i32 noundef 56) #10
  br label %write_reg.exit

write_reg.exit:                                   ; preds = %do.end.i, %sw.bb.write_reg.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ 0, %sw.bb.write_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #6
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %26 = or i16 %conv, -2302
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %i2c.i14 = getelementptr inbounds %struct.stv_base, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %i2c.i14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c.i14, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i12) #6
  %31 = getelementptr inbounds [3 x i8], ptr %data.i12, i32 0, i32 1
  %32 = getelementptr inbounds [3 x i8], ptr %data.i12, i32 0, i32 2
  %33 = ptrtoint ptr %data.i12 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -9, ptr %data.i12, align 1
  %conv3.i16 = trunc i16 %26 to i8
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv3.i16, ptr %31, align 1
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 58, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i13) #6
  %36 = getelementptr inbounds i8, ptr %msg.i13, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 262143, ptr %36, align 4
  %adr.i17 = getelementptr inbounds %struct.stv_base, ptr %28, i32 0, i32 1
  %38 = ptrtoint ptr %adr.i17 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %adr.i17, align 4
  %conv6.i18 = zext i8 %39 to i16
  %40 = ptrtoint ptr %msg.i13 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv6.i18, ptr %msg.i13, align 4
  %flags.i19 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i19 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i19, align 2
  %buf.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i13, i32 0, i32 3
  %42 = ptrtoint ptr %buf.i21 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %data.i12, ptr %buf.i21, align 4
  %call.i22 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i13, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i22)
  %cmp.not.i23 = icmp eq i32 %call.i22, 1
  br i1 %cmp.not.i23, label %sw.bb3.write_reg.exit30_crit_edge, label %do.end.i28

sw.bb3.write_reg.exit30_crit_edge:                ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit30

do.end.i28:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i24 = zext i16 %26 to i32
  %dev.i25 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 9
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %adr9.i26 = getelementptr inbounds %struct.stv_base, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %adr9.i26 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %adr9.i26, align 4
  %conv10.i27 = zext i8 %46 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i25, ptr noundef nonnull @.str.14, i32 noundef %conv10.i27, i32 noundef %conv.i24, i32 noundef 58) #10
  br label %write_reg.exit30

write_reg.exit30:                                 ; preds = %do.end.i28, %sw.bb3.write_reg.exit30_crit_edge
  %retval.0.i29 = phi i32 [ -5, %do.end.i28 ], [ 0, %sw.bb3.write_reg.exit30_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i13) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i12) #6
  br label %cleanup

cleanup:                                          ; preds = %write_reg.exit30, %write_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i29, %write_reg.exit30 ], [ %retval.0.i, %write_reg.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %i2crpt1 = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %i2crpt1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i2crpt1, align 2
  %4 = and i8 %3, 121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %i2c_lock = getelementptr inbounds %struct.stv_base, ptr %6, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i8 [ -128, %if.then ], [ 2, %entry.if.end_crit_edge ]
  %7 = or i8 %4, %.sink
  %nr = getelementptr inbounds %struct.stv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool8.not = icmp eq i32 %9, 0
  %conv9 = select i1 %tobool8.not, i16 -3798, i16 -3797
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %i2c.i = getelementptr inbounds %struct.stv_base, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #6
  %14 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %15 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -15, ptr %data.i, align 1
  %conv3.i = trunc i16 %conv9 to i8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3.i, ptr %14, align 1
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %7, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %19 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 262143, ptr %19, align 4
  %adr.i = getelementptr inbounds %struct.stv_base, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %adr.i, align 4
  %conv6.i = zext i8 %22 to i16
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %data.i, ptr %buf.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end46, label %if.then11

if.then11:                                        ; preds = %if.end
  %conv.i = zext i16 %conv9 to i32
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 9
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %adr9.i = getelementptr inbounds %struct.stv_base, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %adr9.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %adr9.i, align 4
  %conv10.i = zext i8 %29 to i32
  %conv12.i = zext i8 %7 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i, i32 noundef %conv.i, i32 noundef %conv12.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #6
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %i2c_lock13 = getelementptr inbounds %struct.stv_base, ptr %31, i32 0, i32 3
  %call14 = call zeroext i1 @mutex_is_locked(ptr noundef %i2c_lock13) #6
  br i1 %call14, label %if.then38.critedge, label %do.end, !prof !70

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1248, i32 noundef 9, ptr noundef null) #6
  br label %do.end44

if.then38.critedge:                               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %i2c_lock40 = getelementptr inbounds %struct.stv_base, ptr %33, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %i2c_lock40) #6
  br label %do.end44

do.end44:                                         ; preds = %if.then38.critedge, %do.end
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.stv_base, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %37, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %enable) #10
  br label %cleanup

if.end46:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #6
  %38 = ptrtoint ptr %i2crpt1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %7, ptr %i2crpt1, align 2
  br i1 %tobool.not, label %if.then49, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then49:                                        ; preds = %if.end46
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %i2c_lock52 = getelementptr inbounds %struct.stv_base, ptr %40, i32 0, i32 3
  %call53 = call zeroext i1 @mutex_is_locked(ptr noundef %i2c_lock52) #6
  br i1 %call53, label %if.then86.critedge, label %do.end71, !prof !70

do.end71:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1259, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.then86.critedge:                               ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %i2c_lock88 = getelementptr inbounds %struct.stv_base, ptr %42, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %i2c_lock88) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then86.critedge, %do.end71, %if.end46.cleanup_crit_edge, %do.end44
  %retval.0 = phi i32 [ -5, %do.end44 ], [ 0, %do.end71 ], [ 0, %if.then86.critedge ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stop(ptr nocapture noundef %state) unnamed_addr #0 align 64 {
entry:
  %data.i42 = alloca [3 x i8], align 1
  %msg.i43 = alloca %struct.i2c_msg, align 4
  %data.i23 = alloca [3 x i8], align 1
  %msg.i24 = alloca %struct.i2c_msg, align 4
  %data.i3 = alloca [3 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %data.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %started = getelementptr inbounds %struct.stv, ptr %state, i32 0, i32 11
  %0 = ptrtoint ptr %started to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %started, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp, align 1, !annotation !69
  %regoff = getelementptr inbounds %struct.stv, ptr %state, i32 0, i32 3
  %3 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %regoff, align 4
  %add = add i16 %4, -3214
  %tscfgh = getelementptr inbounds %struct.stv, ptr %state, i32 0, i32 5
  %5 = ptrtoint ptr %tscfgh to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tscfgh, align 1
  %7 = or i8 %6, 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %i2c.i = getelementptr inbounds %struct.stv_base, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #6
  %12 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %14 = lshr i16 %add, 8
  %conv1.i = trunc i16 %14 to i8
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1.i, ptr %data.i, align 1
  %conv3.i = trunc i16 %add to i8
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.i, ptr %12, align 1
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %7, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %18 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 262143, ptr %18, align 4
  %adr.i = getelementptr inbounds %struct.stv_base, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %adr.i, align 4
  %conv6.i = zext i8 %21 to i16
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data.i, ptr %buf.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then.write_reg.exit_crit_edge, label %do.end.i

if.then.write_reg.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i16 %add to i32
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 9
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state, align 4
  %adr9.i = getelementptr inbounds %struct.stv_base, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %adr9.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %adr9.i, align 4
  %conv10.i = zext i8 %28 to i32
  %conv12.i = zext i8 %7 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i, i32 noundef %conv.i, i32 noundef %conv12.i) #10
  br label %write_reg.exit

write_reg.exit:                                   ; preds = %do.end.i, %if.then.write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #6
  %29 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %regoff, align 4
  %add6 = add i16 %30, -3248
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %state, align 4
  %i2c.i1 = getelementptr inbounds %struct.stv_base, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %i2c.i1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c.i1, align 4
  %adr.i2 = getelementptr inbounds %struct.stv_base, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %adr.i2 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %adr.i2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #6
  %37 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %38 = lshr i16 %add6, 8
  %conv1.i.i = trunc i16 %38 to i8
  %39 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv1.i.i, ptr %msg.i.i, align 1
  %conv3.i.i = trunc i16 %add6 to i8
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv3.i.i, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %41 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %42 = call ptr @memset(ptr %41, i32 255, i32 16)
  %conv5.i.i = zext i8 %36 to i16
  %43 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv5.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %flags.i.i, align 2
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 2, ptr %41, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i, ptr %buf.i.i, align 4
  %arrayinit.element6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %47 = ptrtoint ptr %arrayinit.element6.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv5.i.i, ptr %arrayinit.element6.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %48 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %flags9.i.i, align 2
  %len10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %49 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %len10.i.i, align 4
  %buf12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %50 = ptrtoint ptr %buf12.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %tmp, ptr %buf12.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %write_reg.exit.read_reg.exit_crit_edge, label %do.end.i.i

write_reg.exit.read_reg.exit_crit_edge:           ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit

do.end.i.i:                                       ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i16 %add6 to i32
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %34, i32 0, i32 9
  %conv15.i.i = zext i8 %36 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i, i32 noundef %conv.i.i) #10
  br label %read_reg.exit

read_reg.exit:                                    ; preds = %do.end.i.i, %write_reg.exit.read_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #6
  %51 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tmp, align 1
  %53 = and i8 %52, -2
  store i8 %53, ptr %tmp, align 1
  %54 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %regoff, align 4
  %add13 = add i16 %55, -3248
  %56 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %state, align 4
  %i2c.i5 = getelementptr inbounds %struct.stv_base, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %i2c.i5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c.i5, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i3) #6
  %60 = getelementptr inbounds [3 x i8], ptr %data.i3, i32 0, i32 1
  %61 = getelementptr inbounds [3 x i8], ptr %data.i3, i32 0, i32 2
  %62 = lshr i16 %add13, 8
  %conv1.i6 = trunc i16 %62 to i8
  %63 = ptrtoint ptr %data.i3 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv1.i6, ptr %data.i3, align 1
  %conv3.i7 = trunc i16 %add13 to i8
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv3.i7, ptr %60, align 1
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %53, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #6
  %66 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 262143, ptr %66, align 4
  %adr.i8 = getelementptr inbounds %struct.stv_base, ptr %57, i32 0, i32 1
  %68 = ptrtoint ptr %adr.i8 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %adr.i8, align 4
  %conv6.i9 = zext i8 %69 to i16
  %70 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv6.i9, ptr %msg.i4, align 4
  %flags.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %71 = ptrtoint ptr %flags.i10 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %flags.i10, align 2
  %buf.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %72 = ptrtoint ptr %buf.i12 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %data.i3, ptr %buf.i12, align 4
  %call.i13 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i13)
  %cmp.not.i14 = icmp eq i32 %call.i13, 1
  br i1 %cmp.not.i14, label %read_reg.exit.write_reg.exit22_crit_edge, label %do.end.i20

read_reg.exit.write_reg.exit22_crit_edge:         ; preds = %read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit22

do.end.i20:                                       ; preds = %read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i15 = zext i16 %add13 to i32
  %dev.i16 = getelementptr inbounds %struct.i2c_adapter, ptr %59, i32 0, i32 9
  %73 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %state, align 4
  %adr9.i17 = getelementptr inbounds %struct.stv_base, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %adr9.i17 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %adr9.i17, align 4
  %conv10.i18 = zext i8 %76 to i32
  %conv12.i19 = zext i8 %53 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i16, ptr noundef nonnull @.str.14, i32 noundef %conv10.i18, i32 noundef %conv.i15, i32 noundef %conv12.i19) #10
  br label %write_reg.exit22

write_reg.exit22:                                 ; preds = %do.end.i20, %read_reg.exit.write_reg.exit22_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i3) #6
  %77 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %regoff, align 4
  %add18 = add i16 %78, -3540
  %79 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %state, align 4
  %i2c.i25 = getelementptr inbounds %struct.stv_base, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %i2c.i25 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i2c.i25, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i23) #6
  %83 = getelementptr inbounds [3 x i8], ptr %data.i23, i32 0, i32 1
  %84 = getelementptr inbounds [3 x i8], ptr %data.i23, i32 0, i32 2
  %85 = lshr i16 %add18, 8
  %conv1.i26 = trunc i16 %85 to i8
  %86 = ptrtoint ptr %data.i23 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv1.i26, ptr %data.i23, align 1
  %conv3.i27 = trunc i16 %add18 to i8
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv3.i27, ptr %83, align 1
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 91, ptr %84, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i24) #6
  %89 = getelementptr inbounds i8, ptr %msg.i24, i32 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 262143, ptr %89, align 4
  %adr.i28 = getelementptr inbounds %struct.stv_base, ptr %80, i32 0, i32 1
  %91 = ptrtoint ptr %adr.i28 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %adr.i28, align 4
  %conv6.i29 = zext i8 %92 to i16
  %93 = ptrtoint ptr %msg.i24 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv6.i29, ptr %msg.i24, align 4
  %flags.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 1
  %94 = ptrtoint ptr %flags.i30 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 0, ptr %flags.i30, align 2
  %buf.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i24, i32 0, i32 3
  %95 = ptrtoint ptr %buf.i32 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %data.i23, ptr %buf.i32, align 4
  %call.i33 = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %msg.i24, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i33)
  %cmp.not.i34 = icmp eq i32 %call.i33, 1
  br i1 %cmp.not.i34, label %write_reg.exit22.write_reg.exit41_crit_edge, label %do.end.i39

write_reg.exit22.write_reg.exit41_crit_edge:      ; preds = %write_reg.exit22
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit41

do.end.i39:                                       ; preds = %write_reg.exit22
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i35 = zext i16 %add18 to i32
  %dev.i36 = getelementptr inbounds %struct.i2c_adapter, ptr %82, i32 0, i32 9
  %96 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %state, align 4
  %adr9.i37 = getelementptr inbounds %struct.stv_base, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %adr9.i37 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %adr9.i37, align 4
  %conv10.i38 = zext i8 %99 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i36, ptr noundef nonnull @.str.14, i32 noundef %conv10.i38, i32 noundef %conv.i35, i32 noundef 91) #10
  br label %write_reg.exit41

write_reg.exit41:                                 ; preds = %do.end.i39, %write_reg.exit22.write_reg.exit41_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i24) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i23) #6
  %100 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %regoff, align 4
  %add23 = add i16 %101, -3562
  %102 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %state, align 4
  %i2c.i44 = getelementptr inbounds %struct.stv_base, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %i2c.i44 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %i2c.i44, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i42) #6
  %106 = getelementptr inbounds [3 x i8], ptr %data.i42, i32 0, i32 1
  %107 = getelementptr inbounds [3 x i8], ptr %data.i42, i32 0, i32 2
  %108 = lshr i16 %add23, 8
  %conv1.i45 = trunc i16 %108 to i8
  %109 = ptrtoint ptr %data.i42 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv1.i45, ptr %data.i42, align 1
  %conv3.i46 = trunc i16 %add23 to i8
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv3.i46, ptr %106, align 1
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 92, ptr %107, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i43) #6
  %112 = getelementptr inbounds i8, ptr %msg.i43, i32 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 262143, ptr %112, align 4
  %adr.i47 = getelementptr inbounds %struct.stv_base, ptr %103, i32 0, i32 1
  %114 = ptrtoint ptr %adr.i47 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %adr.i47, align 4
  %conv6.i48 = zext i8 %115 to i16
  %116 = ptrtoint ptr %msg.i43 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv6.i48, ptr %msg.i43, align 4
  %flags.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 0, i32 1
  %117 = ptrtoint ptr %flags.i49 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %flags.i49, align 2
  %buf.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i43, i32 0, i32 3
  %118 = ptrtoint ptr %buf.i51 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %data.i42, ptr %buf.i51, align 4
  %call.i52 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %msg.i43, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i52)
  %cmp.not.i53 = icmp eq i32 %call.i52, 1
  br i1 %cmp.not.i53, label %write_reg.exit41.write_reg.exit60_crit_edge, label %do.end.i58

write_reg.exit41.write_reg.exit60_crit_edge:      ; preds = %write_reg.exit41
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit60

do.end.i58:                                       ; preds = %write_reg.exit41
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i54 = zext i16 %add23 to i32
  %dev.i55 = getelementptr inbounds %struct.i2c_adapter, ptr %105, i32 0, i32 9
  %119 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %state, align 4
  %adr9.i56 = getelementptr inbounds %struct.stv_base, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %adr9.i56 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %adr9.i56, align 4
  %conv10.i57 = zext i8 %122 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i55, ptr noundef nonnull @.str.14, i32 noundef %conv10.i57, i32 noundef %conv.i54, i32 noundef 92) #10
  br label %write_reg.exit60

write_reg.exit60:                                 ; preds = %do.end.i58, %write_reg.exit41.write_reg.exit60_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i43) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i42) #6
  %123 = ptrtoint ptr %started to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %started, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  br label %if.end

if.end:                                           ; preds = %write_reg.exit60, %entry.if.end_crit_edge
  %receive_mode = getelementptr inbounds %struct.stv, ptr %state, i32 0, i32 13
  %124 = ptrtoint ptr %receive_mode to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %receive_mode, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_shared_reg(ptr nocapture noundef readonly %state, i8 noundef zeroext %mask, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #6
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !69
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %reg_lock = getelementptr inbounds %struct.stv_base, ptr %2, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock, i32 noundef 0) #6
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state, align 4
  %i2c.i = getelementptr inbounds %struct.stv_base, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c.i, align 4
  %adr.i = getelementptr inbounds %struct.stv_base, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #6
  %9 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %msg.i.i, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 109, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %12 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 16)
  %conv5.i.i = zext i8 %8 to i16
  %14 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i.i, align 2
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %12, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %buf.i.i, align 4
  %arrayinit.element6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %18 = ptrtoint ptr %arrayinit.element6.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv5.i.i, ptr %arrayinit.element6.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags9.i.i, align 2
  %len10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %20 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len10.i.i, align 4
  %buf12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf12.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tmp, ptr %buf12.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %6, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.then, label %read_reg.exit

read_reg.exit:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 9
  %conv15.i.i = zext i8 %8 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i, i32 noundef 65389) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #6
  %22 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tmp, align 1
  %neg = xor i8 %mask, -1
  %and = and i8 %23, %neg
  %and41 = and i8 %val, %mask
  %or = or i8 %and, %and41
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state, align 4
  %i2c.i2 = getelementptr inbounds %struct.stv_base, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %i2c.i2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c.i2, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #6
  %28 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %29 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %data.i, align 1
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 109, ptr %28, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %33 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 262143, ptr %33, align 4
  %adr.i3 = getelementptr inbounds %struct.stv_base, ptr %25, i32 0, i32 1
  %35 = ptrtoint ptr %adr.i3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %adr.i3, align 4
  %conv6.i = zext i8 %36 to i16
  %37 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %39 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %data.i, ptr %buf.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.then.write_reg.exit_crit_edge, label %do.end.i

if.then.write_reg.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %27, i32 0, i32 9
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %state, align 4
  %adr9.i = getelementptr inbounds %struct.stv_base, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %adr9.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %adr9.i, align 4
  %conv10.i = zext i8 %43 to i32
  %conv12.i = zext i8 %or to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i, i32 noundef 65389, i32 noundef %conv12.i) #10
  br label %write_reg.exit

write_reg.exit:                                   ; preds = %do.end.i, %if.then.write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #6
  br label %if.end

if.end:                                           ; preds = %write_reg.exit, %read_reg.exit
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %state, align 4
  %reg_lock8 = getelementptr inbounds %struct.stv_base, ptr %45, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %reg_lock8) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_puncture_rate(ptr nocapture noundef readonly %state, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %rate, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 7
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.enable_puncture_rate, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %1)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %val.0 = phi i8 [ %switch.load, %switch.lookup ], [ 47, %entry.sw.epilog_crit_edge ]
  %regoff = getelementptr inbounds %struct.stv, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %regoff, align 4
  %add = add i16 %3, -3268
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %i2c.i = getelementptr inbounds %struct.stv_base, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #6
  %8 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %9 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %10 = lshr i16 %add, 8
  %conv1.i = trunc i16 %10 to i8
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv1.i, ptr %data.i, align 1
  %conv3.i = trunc i16 %add to i8
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3.i, ptr %8, align 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %val.0, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 262143, ptr %14, align 4
  %adr.i = getelementptr inbounds %struct.stv_base, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %adr.i, align 4
  %conv6.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %data.i, ptr %buf.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %7, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %sw.epilog.write_reg.exit_crit_edge, label %do.end.i

sw.epilog.write_reg.exit_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i16 %add to i32
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 9
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state, align 4
  %adr9.i = getelementptr inbounds %struct.stv_base, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %adr9.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %adr9.i, align 4
  %conv10.i = zext i8 %24 to i32
  %conv12.i = zext i8 %val.0 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i, i32 noundef %conv.i, i32 noundef %conv12.i) #10
  br label %write_reg.exit

write_reg.exit:                                   ; preds = %do.end.i, %sw.epilog.write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_vth_default(ptr nocapture noundef %state) unnamed_addr #0 align 64 {
entry:
  %data.i81 = alloca [3 x i8], align 1
  %msg.i82 = alloca %struct.i2c_msg, align 4
  %data.i61 = alloca [3 x i8], align 1
  %msg.i62 = alloca %struct.i2c_msg, align 4
  %data.i41 = alloca [3 x i8], align 1
  %msg.i42 = alloca %struct.i2c_msg, align 4
  %data.i21 = alloca [3 x i8], align 1
  %msg.i22 = alloca %struct.i2c_msg, align 4
  %data.i1 = alloca [3 x i8], align 1
  %msg.i2 = alloca %struct.i2c_msg, align 4
  %data.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vth = getelementptr inbounds %struct.stv, ptr %state, i32 0, i32 31
  %0 = ptrtoint ptr %vth to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -41, ptr %vth, align 1
  %arrayidx2 = getelementptr %struct.stv, ptr %state, i32 0, i32 31, i32 1
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -123, ptr %arrayidx2, align 1
  %arrayidx4 = getelementptr %struct.stv, ptr %state, i32 0, i32 31, i32 2
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 88, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr %struct.stv, ptr %state, i32 0, i32 31, i32 3
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 58, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.stv, ptr %state, i32 0, i32 31, i32 4
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 52, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr %struct.stv, ptr %state, i32 0, i32 31, i32 5
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 40, ptr %arrayidx10, align 1
  %regoff = getelementptr inbounds %struct.stv, ptr %state, i32 0, i32 3
  %6 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %regoff, align 4
  %add = add i16 %7, -3276
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state, align 4
  %i2c.i = getelementptr inbounds %struct.stv_base, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #6
  %12 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %13 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %14 = lshr i16 %add, 8
  %conv1.i = trunc i16 %14 to i8
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv1.i, ptr %data.i, align 1
  %conv3.i = trunc i16 %add to i8
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.i, ptr %12, align 1
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -41, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %18 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 262143, ptr %18, align 4
  %adr.i = getelementptr inbounds %struct.stv_base, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %adr.i, align 4
  %conv6.i = zext i8 %21 to i16
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data.i, ptr %buf.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %11, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.write_reg.exit_crit_edge, label %do.end.i

entry.write_reg.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i16 %add to i32
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 9
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state, align 4
  %adr9.i = getelementptr inbounds %struct.stv_base, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %adr9.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %adr9.i, align 4
  %conv10.i = zext i8 %28 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i, i32 noundef %conv.i, i32 noundef 215) #10
  br label %write_reg.exit

write_reg.exit:                                   ; preds = %do.end.i, %entry.write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #6
  %29 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %regoff, align 4
  %add18 = add i16 %30, -3275
  %31 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx2, align 1
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %state, align 4
  %i2c.i3 = getelementptr inbounds %struct.stv_base, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %i2c.i3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c.i3, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i1) #6
  %37 = getelementptr inbounds [3 x i8], ptr %data.i1, i32 0, i32 1
  %38 = getelementptr inbounds [3 x i8], ptr %data.i1, i32 0, i32 2
  %39 = lshr i16 %add18, 8
  %conv1.i4 = trunc i16 %39 to i8
  %40 = ptrtoint ptr %data.i1 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv1.i4, ptr %data.i1, align 1
  %conv3.i5 = trunc i16 %add18 to i8
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv3.i5, ptr %37, align 1
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %32, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i2) #6
  %43 = getelementptr inbounds i8, ptr %msg.i2, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 262143, ptr %43, align 4
  %adr.i6 = getelementptr inbounds %struct.stv_base, ptr %34, i32 0, i32 1
  %45 = ptrtoint ptr %adr.i6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %adr.i6, align 4
  %conv6.i7 = zext i8 %46 to i16
  %47 = ptrtoint ptr %msg.i2 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv6.i7, ptr %msg.i2, align 4
  %flags.i8 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i8 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i8, align 2
  %buf.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i2, i32 0, i32 3
  %49 = ptrtoint ptr %buf.i10 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %data.i1, ptr %buf.i10, align 4
  %call.i11 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i11)
  %cmp.not.i12 = icmp eq i32 %call.i11, 1
  br i1 %cmp.not.i12, label %write_reg.exit.write_reg.exit20_crit_edge, label %do.end.i18

write_reg.exit.write_reg.exit20_crit_edge:        ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit20

do.end.i18:                                       ; preds = %write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i13 = zext i16 %add18 to i32
  %dev.i14 = getelementptr inbounds %struct.i2c_adapter, ptr %36, i32 0, i32 9
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %state, align 4
  %adr9.i15 = getelementptr inbounds %struct.stv_base, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %adr9.i15 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %adr9.i15, align 4
  %conv10.i16 = zext i8 %53 to i32
  %conv12.i17 = zext i8 %32 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i14, ptr noundef nonnull @.str.14, i32 noundef %conv10.i16, i32 noundef %conv.i13, i32 noundef %conv12.i17) #10
  br label %write_reg.exit20

write_reg.exit20:                                 ; preds = %do.end.i18, %write_reg.exit.write_reg.exit20_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i2) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i1) #6
  %54 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %regoff, align 4
  %add26 = add i16 %55, -3274
  %56 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx4, align 1
  %58 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %state, align 4
  %i2c.i23 = getelementptr inbounds %struct.stv_base, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %i2c.i23 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %i2c.i23, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i21) #6
  %62 = getelementptr inbounds [3 x i8], ptr %data.i21, i32 0, i32 1
  %63 = getelementptr inbounds [3 x i8], ptr %data.i21, i32 0, i32 2
  %64 = lshr i16 %add26, 8
  %conv1.i24 = trunc i16 %64 to i8
  %65 = ptrtoint ptr %data.i21 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv1.i24, ptr %data.i21, align 1
  %conv3.i25 = trunc i16 %add26 to i8
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv3.i25, ptr %62, align 1
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %57, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i22) #6
  %68 = getelementptr inbounds i8, ptr %msg.i22, i32 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 262143, ptr %68, align 4
  %adr.i26 = getelementptr inbounds %struct.stv_base, ptr %59, i32 0, i32 1
  %70 = ptrtoint ptr %adr.i26 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %adr.i26, align 4
  %conv6.i27 = zext i8 %71 to i16
  %72 = ptrtoint ptr %msg.i22 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv6.i27, ptr %msg.i22, align 4
  %flags.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 0, i32 1
  %73 = ptrtoint ptr %flags.i28 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %flags.i28, align 2
  %buf.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22, i32 0, i32 3
  %74 = ptrtoint ptr %buf.i30 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %data.i21, ptr %buf.i30, align 4
  %call.i31 = call i32 @i2c_transfer(ptr noundef %61, ptr noundef nonnull %msg.i22, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i31)
  %cmp.not.i32 = icmp eq i32 %call.i31, 1
  br i1 %cmp.not.i32, label %write_reg.exit20.write_reg.exit40_crit_edge, label %do.end.i38

write_reg.exit20.write_reg.exit40_crit_edge:      ; preds = %write_reg.exit20
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit40

do.end.i38:                                       ; preds = %write_reg.exit20
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i33 = zext i16 %add26 to i32
  %dev.i34 = getelementptr inbounds %struct.i2c_adapter, ptr %61, i32 0, i32 9
  %75 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %state, align 4
  %adr9.i35 = getelementptr inbounds %struct.stv_base, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %adr9.i35 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %adr9.i35, align 4
  %conv10.i36 = zext i8 %78 to i32
  %conv12.i37 = zext i8 %57 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i34, ptr noundef nonnull @.str.14, i32 noundef %conv10.i36, i32 noundef %conv.i33, i32 noundef %conv12.i37) #10
  br label %write_reg.exit40

write_reg.exit40:                                 ; preds = %do.end.i38, %write_reg.exit20.write_reg.exit40_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i22) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i21) #6
  %79 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %regoff, align 4
  %add34 = add i16 %80, -3273
  %81 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx6, align 1
  %83 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %state, align 4
  %i2c.i43 = getelementptr inbounds %struct.stv_base, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %i2c.i43 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %i2c.i43, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i41) #6
  %87 = getelementptr inbounds [3 x i8], ptr %data.i41, i32 0, i32 1
  %88 = getelementptr inbounds [3 x i8], ptr %data.i41, i32 0, i32 2
  %89 = lshr i16 %add34, 8
  %conv1.i44 = trunc i16 %89 to i8
  %90 = ptrtoint ptr %data.i41 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv1.i44, ptr %data.i41, align 1
  %conv3.i45 = trunc i16 %add34 to i8
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv3.i45, ptr %87, align 1
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %82, ptr %88, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i42) #6
  %93 = getelementptr inbounds i8, ptr %msg.i42, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 262143, ptr %93, align 4
  %adr.i46 = getelementptr inbounds %struct.stv_base, ptr %84, i32 0, i32 1
  %95 = ptrtoint ptr %adr.i46 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %adr.i46, align 4
  %conv6.i47 = zext i8 %96 to i16
  %97 = ptrtoint ptr %msg.i42 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv6.i47, ptr %msg.i42, align 4
  %flags.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 0, i32 1
  %98 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %flags.i48, align 2
  %buf.i50 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 0, i32 3
  %99 = ptrtoint ptr %buf.i50 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %data.i41, ptr %buf.i50, align 4
  %call.i51 = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %msg.i42, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i51)
  %cmp.not.i52 = icmp eq i32 %call.i51, 1
  br i1 %cmp.not.i52, label %write_reg.exit40.write_reg.exit60_crit_edge, label %do.end.i58

write_reg.exit40.write_reg.exit60_crit_edge:      ; preds = %write_reg.exit40
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit60

do.end.i58:                                       ; preds = %write_reg.exit40
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i53 = zext i16 %add34 to i32
  %dev.i54 = getelementptr inbounds %struct.i2c_adapter, ptr %86, i32 0, i32 9
  %100 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %state, align 4
  %adr9.i55 = getelementptr inbounds %struct.stv_base, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %adr9.i55 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %adr9.i55, align 4
  %conv10.i56 = zext i8 %103 to i32
  %conv12.i57 = zext i8 %82 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i54, ptr noundef nonnull @.str.14, i32 noundef %conv10.i56, i32 noundef %conv.i53, i32 noundef %conv12.i57) #10
  br label %write_reg.exit60

write_reg.exit60:                                 ; preds = %do.end.i58, %write_reg.exit40.write_reg.exit60_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i42) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i41) #6
  %104 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %regoff, align 4
  %add42 = add i16 %105, -3272
  %106 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx8, align 1
  %108 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %state, align 4
  %i2c.i63 = getelementptr inbounds %struct.stv_base, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %i2c.i63 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %i2c.i63, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i61) #6
  %112 = getelementptr inbounds [3 x i8], ptr %data.i61, i32 0, i32 1
  %113 = getelementptr inbounds [3 x i8], ptr %data.i61, i32 0, i32 2
  %114 = lshr i16 %add42, 8
  %conv1.i64 = trunc i16 %114 to i8
  %115 = ptrtoint ptr %data.i61 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv1.i64, ptr %data.i61, align 1
  %conv3.i65 = trunc i16 %add42 to i8
  %116 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv3.i65, ptr %112, align 1
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %107, ptr %113, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i62) #6
  %118 = getelementptr inbounds i8, ptr %msg.i62, i32 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 262143, ptr %118, align 4
  %adr.i66 = getelementptr inbounds %struct.stv_base, ptr %109, i32 0, i32 1
  %120 = ptrtoint ptr %adr.i66 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %adr.i66, align 4
  %conv6.i67 = zext i8 %121 to i16
  %122 = ptrtoint ptr %msg.i62 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv6.i67, ptr %msg.i62, align 4
  %flags.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 0, i32 1
  %123 = ptrtoint ptr %flags.i68 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %flags.i68, align 2
  %buf.i70 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i62, i32 0, i32 3
  %124 = ptrtoint ptr %buf.i70 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %data.i61, ptr %buf.i70, align 4
  %call.i71 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %msg.i62, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i71)
  %cmp.not.i72 = icmp eq i32 %call.i71, 1
  br i1 %cmp.not.i72, label %write_reg.exit60.write_reg.exit80_crit_edge, label %do.end.i78

write_reg.exit60.write_reg.exit80_crit_edge:      ; preds = %write_reg.exit60
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit80

do.end.i78:                                       ; preds = %write_reg.exit60
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i73 = zext i16 %add42 to i32
  %dev.i74 = getelementptr inbounds %struct.i2c_adapter, ptr %111, i32 0, i32 9
  %125 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %state, align 4
  %adr9.i75 = getelementptr inbounds %struct.stv_base, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %adr9.i75 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %adr9.i75, align 4
  %conv10.i76 = zext i8 %128 to i32
  %conv12.i77 = zext i8 %107 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i74, ptr noundef nonnull @.str.14, i32 noundef %conv10.i76, i32 noundef %conv.i73, i32 noundef %conv12.i77) #10
  br label %write_reg.exit80

write_reg.exit80:                                 ; preds = %do.end.i78, %write_reg.exit60.write_reg.exit80_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i62) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i61) #6
  %129 = ptrtoint ptr %regoff to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %regoff, align 4
  %add50 = add i16 %130, -3271
  %131 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx10, align 1
  %133 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %state, align 4
  %i2c.i83 = getelementptr inbounds %struct.stv_base, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %i2c.i83 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %i2c.i83, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i81) #6
  %137 = getelementptr inbounds [3 x i8], ptr %data.i81, i32 0, i32 1
  %138 = getelementptr inbounds [3 x i8], ptr %data.i81, i32 0, i32 2
  %139 = lshr i16 %add50, 8
  %conv1.i84 = trunc i16 %139 to i8
  %140 = ptrtoint ptr %data.i81 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv1.i84, ptr %data.i81, align 1
  %conv3.i85 = trunc i16 %add50 to i8
  %141 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv3.i85, ptr %137, align 1
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %132, ptr %138, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i82) #6
  %143 = getelementptr inbounds i8, ptr %msg.i82, i32 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 262143, ptr %143, align 4
  %adr.i86 = getelementptr inbounds %struct.stv_base, ptr %134, i32 0, i32 1
  %145 = ptrtoint ptr %adr.i86 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %adr.i86, align 4
  %conv6.i87 = zext i8 %146 to i16
  %147 = ptrtoint ptr %msg.i82 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv6.i87, ptr %msg.i82, align 4
  %flags.i88 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82, i32 0, i32 1
  %148 = ptrtoint ptr %flags.i88 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 0, ptr %flags.i88, align 2
  %buf.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i82, i32 0, i32 3
  %149 = ptrtoint ptr %buf.i90 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %data.i81, ptr %buf.i90, align 4
  %call.i91 = call i32 @i2c_transfer(ptr noundef %136, ptr noundef nonnull %msg.i82, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i91)
  %cmp.not.i92 = icmp eq i32 %call.i91, 1
  br i1 %cmp.not.i92, label %write_reg.exit80.write_reg.exit100_crit_edge, label %do.end.i98

write_reg.exit80.write_reg.exit100_crit_edge:     ; preds = %write_reg.exit80
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit100

do.end.i98:                                       ; preds = %write_reg.exit80
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i93 = zext i16 %add50 to i32
  %dev.i94 = getelementptr inbounds %struct.i2c_adapter, ptr %136, i32 0, i32 9
  %150 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %state, align 4
  %adr9.i95 = getelementptr inbounds %struct.stv_base, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %adr9.i95 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %adr9.i95, align 4
  %conv10.i96 = zext i8 %153 to i32
  %conv12.i97 = zext i8 %132 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i94, ptr noundef nonnull @.str.14, i32 noundef %conv10.i96, i32 noundef %conv.i93, i32 noundef %conv12.i97) #10
  br label %write_reg.exit100

write_reg.exit100:                                ; preds = %do.end.i98, %write_reg.exit80.write_reg.exit100_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i82) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i81) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_field(ptr nocapture noundef readonly %state, i32 noundef %field, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca [2 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %old = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %old) #6
  %0 = ptrtoint ptr %old to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %old, align 1, !annotation !69
  %shr = lshr i32 %field, 16
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %i2c.i = getelementptr inbounds %struct.stv_base, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c.i, align 4
  %adr.i = getelementptr inbounds %struct.stv_base, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #6
  %7 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %8 = lshr i32 %field, 24
  %conv1.i.i = trunc i32 %8 to i8
  %9 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv1.i.i, ptr %msg.i.i, align 1
  %conv3.i.i = trunc i32 %shr to i8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv3.i.i, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %11 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %conv5.i.i = zext i8 %6 to i16
  %13 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv5.i.i, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i.i, align 2
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %11, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %buf.i.i, align 4
  %arrayinit.element6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %17 = ptrtoint ptr %arrayinit.element6.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv5.i.i, ptr %arrayinit.element6.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %18 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags9.i.i, align 2
  %len10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %19 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %len10.i.i, align 4
  %buf12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %20 = ptrtoint ptr %buf12.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %old, ptr %buf12.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %4, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end, label %read_reg.exit

read_reg.exit:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 9
  %conv15.i.i = zext i8 %6 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i, i32 noundef %shr) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #6
  %shr2 = lshr i32 %field, 12
  %conv4 = and i32 %shr2, 15
  %conv5 = zext i8 %val to i32
  %shl = shl nuw nsw i32 %conv5, %conv4
  %and8 = and i32 %shl, %field
  %21 = ptrtoint ptr %old to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %old, align 1
  %conv9 = zext i8 %22 to i32
  %neg = xor i32 %field, -1
  %and11 = and i32 %conv9, %neg
  %or = or i32 %and11, %and8
  %conv13 = and i32 %or, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv13, i32 %conv9)
  %cmp = icmp eq i32 %conv13, %conv9
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %conv12 = trunc i32 %or to i8
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state, align 4
  %i2c.i1 = getelementptr inbounds %struct.stv_base, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %i2c.i1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c.i1, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #6
  %27 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %28 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv1.i.i, ptr %data.i, align 1
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv3.i.i, ptr %27, align 1
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv12, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %32 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 262143, ptr %32, align 4
  %adr.i2 = getelementptr inbounds %struct.stv_base, ptr %24, i32 0, i32 1
  %34 = ptrtoint ptr %adr.i2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %adr.i2, align 4
  %conv6.i = zext i8 %35 to i16
  %36 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %flags.i, align 2
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %38 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %data.i, ptr %buf.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end17.write_reg.exit_crit_edge, label %do.end.i

if.end17.write_reg.exit_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_reg.exit

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 9
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %state, align 4
  %adr9.i = getelementptr inbounds %struct.stv_base, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %adr9.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %adr9.i, align 4
  %conv10.i = zext i8 %42 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef %conv10.i, i32 noundef %shr, i32 noundef %conv13) #10
  br label %write_reg.exit

write_reg.exit:                                   ; preds = %do.end.i, %if.end17.write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #6
  br label %cleanup

cleanup:                                          ; preds = %write_reg.exit, %if.end.cleanup_crit_edge, %read_reg.exit
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %old) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wait_dis(ptr nocapture noundef readonly %state, i8 noundef zeroext %flag, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca [2 x i8], align 1
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %stat = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stat) #6
  %0 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %stat, align 1, !annotation !69
  %nr = getelementptr inbounds %struct.stv, ptr %state, i32 0, i32 2
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %conv3 = select i1 %tobool.not, i16 -2301, i16 -2237
  %3 = getelementptr inbounds [2 x i8], ptr %msg.i.i, i32 0, i32 1
  %conv3.i.i = trunc i16 %conv3 to i8
  %4 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %arrayinit.element6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %len10.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %buf12.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %conv.i.i = zext i16 %conv3 to i32
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.02 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 4
  %i2c.i = getelementptr inbounds %struct.stv_base, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c.i, align 4
  %adr.i = getelementptr inbounds %struct.stv_base, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %adr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %adr.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg.i.i) #6
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -9, ptr %msg.i.i, align 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv3.i.i, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #6
  %13 = call ptr @memset(ptr %4, i32 255, i32 16)
  %conv5.i.i = zext i8 %10 to i16
  %14 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5.i.i, ptr %msgs.i.i, align 4
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i.i, align 2
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %4, align 4
  %17 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %buf.i.i, align 4
  %18 = ptrtoint ptr %arrayinit.element6.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv5.i.i, ptr %arrayinit.element6.i.i, align 4
  %19 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags9.i.i, align 2
  %20 = ptrtoint ptr %len10.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len10.i.i, align 4
  %21 = ptrtoint ptr %buf12.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %stat, ptr %buf12.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %8, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %for.body.read_reg.exit_crit_edge, label %do.end.i.i

for.body.read_reg.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %read_reg.exit

do.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 9
  %conv15.i.i = zext i8 %10 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str.11, i32 noundef %conv15.i.i, i32 noundef %conv.i.i) #10
  br label %read_reg.exit

read_reg.exit:                                    ; preds = %do.end.i.i, %for.body.read_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg.i.i) #6
  %22 = ptrtoint ptr %stat to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %stat, align 1
  %and1 = and i8 %23, %flag
  call void @__sanitizer_cov_trace_cmp1(i8 %and1, i8 %val)
  %cmp7 = icmp eq i8 %and1, %val
  br i1 %cmp7, label %read_reg.exit.cleanup_crit_edge, label %if.end

read_reg.exit.cleanup_crit_edge:                  ; preds = %read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %read_reg.exit
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #6
  %inc = add nuw nsw i32 %i.02, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %read_reg.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stat) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @stv0910_attach.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 1804, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @stv0910_attach.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 1805, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 1808, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @stv0910_attach._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @stv0910_attach._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 1819, i32 2}
!16 = !{ptr @stv0910_attach._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @stv0910_attach._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_stv0910_attach, !19, !"__ksymtab_stv0910_attach", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 1830, i32 1}
!20 = !{ptr @__UNIQUE_ID_description290, !21, !"__UNIQUE_ID_description290", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 1832, i32 1}
!22 = !{ptr @__UNIQUE_ID_author291, !23, !"__UNIQUE_ID_author291", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 1833, i32 1}
!24 = !{ptr @__UNIQUE_ID_file292, !25, !"__UNIQUE_ID_file292", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 1834, i32 1}
!26 = !{ptr @__UNIQUE_ID_license293, !25, !"__UNIQUE_ID_license293", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 157, i32 3}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @i2c_read_regs16._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @i2c_read_regs16._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 140, i32 3}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @write_reg._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @write_reg._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @stvlist, !39, !"stvlist", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 28, i32 8}
!40 = !{ptr @stv0910_ops, !41, !"stv0910_ops", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 1715, i32 38}
!42 = !{ptr @set_vth.vthlookup_table, !43, !"vthlookup_table", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 980, i32 30}
!44 = !{ptr @s2car_loop, !45, !"s2car_loop", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 359, i32 17}
!46 = !{ptr @padc_lookup, !47, !"padc_lookup", i1 false, i1 false}
!47 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 337, i32 29}
!48 = !{ptr @s2_sn_lookup, !49, !"s2_sn_lookup", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 274, i32 29}
!50 = !{ptr @s1_sn_lookup, !51, !"s1_sn_lookup", i1 false, i1 false}
!51 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 217, i32 29}
!52 = !{ptr @dvbs2_nbch.nbch, !53, !"nbch", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 701, i32 19}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/stv0910.c", i32 1250, i32 3}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @gate_ctrl._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @gate_ctrl._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2148649216, i64 2148649496, i64 2148649830, i64 2148650164}
