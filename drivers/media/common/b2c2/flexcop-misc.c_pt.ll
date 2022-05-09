; ModuleID = '/llk/IR_all_yes/drivers/media/common/b2c2/flexcop-misc.c_pt.bc'
source_filename = "../drivers/media/common/b2c2/flexcop-misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+flexcop_dump_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_flexcop_dump_reg\09\09\09\09"
module asm "\09.long\09__crc_flexcop_dump_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flexcop_dump_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22flexcop_dump_reg\22\09\09\09\09\09"
module asm "__kstrtabns_flexcop_dump_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%union.flexcop_ibi_value = type { %struct.anon.177 }
%struct.anon.177 = type { i32, i16 }
%struct.flexcop_device = type { ptr, i32, i32, i32, i32, i32, %struct.dvb_adapter, ptr, %struct.dvb_net, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, ptr, [3 x %struct.flexcop_i2c_adapter], %struct.mutex, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.flexcop_i2c_adapter = type { ptr, %struct.i2c_adapter, i8, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@b2c2_flexcop_debug = external dso_local local_unnamed_addr global i32, align 4
@flexcop_determine_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 15, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"found a FlexCopII.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"flexcop_determine_revision\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/common/b2c2/flexcop-misc.c\00", [55 x i8] zeroinitializer }, align 32
@flexcop_determine_revision._entry_ptr = internal global ptr @flexcop_determine_revision._entry, section ".printk_index", align 4
@flexcop_determine_revision._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 19, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"found a FlexCopIIb.\0A\00", [43 x i8] zeroinitializer }, align 32
@flexcop_determine_revision._entry_ptr.5 = internal global ptr @flexcop_determine_revision._entry.3, section ".printk_index", align 4
@flexcop_determine_revision._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 23, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"found a FlexCopIII.\0A\00", [43 x i8] zeroinitializer }, align 32
@flexcop_determine_revision._entry_ptr.8 = internal global ptr @flexcop_determine_revision._entry.6, section ".printk_index", align 4
@flexcop_determine_revision._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013b2c2-flexcop: unknown FlexCop Revision: %x. Please report this to linux-dvb@linuxtv.org.\0A\00", [36 x i8] zeroinitializer }, align 32
@flexcop_determine_revision._entry_ptr.11 = internal global ptr @flexcop_determine_revision._entry.9, section ".printk_index", align 4
@flexcop_determine_revision._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"this FlexCop has the additional 32 hardware pid filter.\0A\00", [39 x i8] zeroinitializer }, align 32
@flexcop_determine_revision._entry_ptr.14 = internal global ptr @flexcop_determine_revision._entry.12, section ".printk_index", align 4
@flexcop_determine_revision._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"this FlexCop has the 6 basic main hardware pid filter.\0A\00", [40 x i8] zeroinitializer }, align 32
@flexcop_determine_revision._entry_ptr.17 = internal global ptr @flexcop_determine_revision._entry.15, section ".printk_index", align 4
@flexcop_device_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016b2c2-flexcop: %s '%s' at the '%s' bus controlled by a '%s' %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flexcop_device_name\00", [44 x i8] zeroinitializer }, align 32
@flexcop_device_name._entry_ptr = internal global ptr @flexcop_device_name._entry, section ".printk_index", align 4
@flexcop_device_names = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], [52 x i8] zeroinitializer }, align 32
@flexcop_bus_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.36, ptr @.str.37], [24 x i8] zeroinitializer }, align 32
@flexcop_revision_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], [16 x i8] zeroinitializer }, align 32
@flexcop_dump_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%03x: %08x, \00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flexcop_dump_reg\00", [47 x i8] zeroinitializer }, align 32
@flexcop_dump_reg._entry_ptr = internal global ptr @flexcop_dump_reg._entry, section ".printk_index", align 4
@flexcop_dump_reg._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@flexcop_dump_reg._entry_ptr.24 = internal global ptr @flexcop_dump_reg._entry.22, section ".printk_index", align 4
@__kstrtab_flexcop_dump_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_flexcop_dump_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_flexcop_dump_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flexcop_dump_reg to i32), ptr @__kstrtab_flexcop_dump_reg, ptr @__kstrtabns_flexcop_dump_reg }, section "___ksymtab+flexcop_dump_reg", align 4
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Unknown device\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cable2PC/CableStar 2 DVB-C\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Air2PC/AirStar 2 DVB-T\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Air2PC/AirStar 2 ATSC 1st generation\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Air2PC/AirStar 2 ATSC 2nd generation\00", [59 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Air2PC/AirStar 2 ATSC 3rd generation (HD5000)\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Sky2PC/SkyStar 2 DVB-S rev 2.3 (old version)\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Sky2PC/SkyStar 2 DVB-S rev 2.6\00", [33 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Sky2PC/SkyStar 2 DVB-S rev 2.7a/u\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Sky2PC/SkyStar 2 DVB-S rev 2.8\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sky2PC/SkyStar S2 DVB-S/S2 rev 3.3\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"USB\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCI\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Unknown chip\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FlexCopII\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FlexCopIIb\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FlexCopIII\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 15, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 19, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 23, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 27, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 33, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 35, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 68, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [21 x i8] c"flexcop_device_names\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 46, i32 20 }
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"flexcop_bus_names\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 60, i32 20 }
@___asan_gen_.99 = private unnamed_addr constant [23 x i8] c"flexcop_revision_names\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 39, i32 20 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 81, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 83, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 47, i32 13 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 48, i32 15 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 49, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 50, i32 19 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 51, i32 19 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 52, i32 19 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 53, i32 19 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 54, i32 19 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 55, i32 19 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 56, i32 19 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 57, i32 21 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 61, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 62, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 40, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 41, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 42, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [44 x i8] c"../drivers/media/common/b2c2/flexcop-misc.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 43, i32 2 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__ksymtab_flexcop_dump_reg, ptr @flexcop_determine_revision._entry, ptr @flexcop_determine_revision._entry.12, ptr @flexcop_determine_revision._entry.15, ptr @flexcop_determine_revision._entry.3, ptr @flexcop_determine_revision._entry.6, ptr @flexcop_determine_revision._entry.9, ptr @flexcop_determine_revision._entry_ptr, ptr @flexcop_determine_revision._entry_ptr.11, ptr @flexcop_determine_revision._entry_ptr.14, ptr @flexcop_determine_revision._entry_ptr.17, ptr @flexcop_determine_revision._entry_ptr.5, ptr @flexcop_determine_revision._entry_ptr.8, ptr @flexcop_device_name._entry, ptr @flexcop_device_name._entry_ptr, ptr @flexcop_dump_reg._entry, ptr @flexcop_dump_reg._entry.22, ptr @flexcop_dump_reg._entry_ptr, ptr @flexcop_dump_reg._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @flexcop_device_names, ptr @flexcop_bus_names, ptr @flexcop_revision_names, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_determine_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_determine_revision._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_determine_revision._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_determine_revision._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_determine_revision._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_determine_revision._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_device_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_device_names to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_bus_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_revision_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_dump_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_dump_reg._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flexcop_determine_revision(ptr noundef %fc) local_unnamed_addr #0 align 64 {
entry:
  %v = alloca %union.flexcop_ibi_value, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v) #3
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %v, align 8, !annotation !91
  %read_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %1 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_ibi_reg, align 4
  call void %2(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %v, ptr noundef %fc, i32 noundef 516) #3
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load = load i32, ptr %v, align 8
  %bf.lshr = lshr i32 %bf.load, 24
  %bf.clear = and i32 %bf.lshr, 15
  %4 = zext i32 %bf.clear to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.clear, label %do.end34 [
    i32 2, label %do.body
    i32 3, label %do.body5
    i32 0, label %do.body19
  ]

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %5 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end3_crit_edge, label %do.end

do.body.do.end3_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end3

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %do.end3

do.end3:                                          ; preds = %do.end, %do.body.do.end3_crit_edge
  %rev = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 3
  %6 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %rev, align 4
  br label %sw.epilog

do.body5:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %7 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and6 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body5.do.end16_crit_edge, label %do.end11

do.body5.do.end16_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end16

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #5
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %do.body5.do.end16_crit_edge
  %rev17 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 3
  %8 = ptrtoint ptr %rev17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %rev17, align 4
  br label %sw.epilog

do.body19:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %9 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and20 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body19.do.end30_crit_edge, label %do.end25

do.body19.do.end30_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end30

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #5
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #6
  br label %do.end30

do.end30:                                         ; preds = %do.end25, %do.body19.do.end30_crit_edge
  %rev31 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 3
  %10 = ptrtoint ptr %rev31 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %rev31, align 4
  br label %sw.epilog

do.end34:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %bf.clear) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end34, %do.end30, %do.end16, %do.end3
  %11 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load40 = load i32, ptr %v, align 8
  %bf.lshr41 = lshr i32 %bf.load40, 30
  %bf.clear42 = and i32 %bf.lshr41, 1
  %has_32_hw_pid_filter = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 2
  %12 = ptrtoint ptr %has_32_hw_pid_filter to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bf.clear42, ptr %has_32_hw_pid_filter, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %13 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and58 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %sw.epilog.if.end69_crit_edge, label %if.end69.sink.split

sw.epilog.if.end69_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end69

if.end69.sink.split:                              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear42)
  %tobool43.not = icmp eq i32 %bf.clear42, 0
  %.str.16..str.13 = select i1 %tobool43.not, ptr @.str.16, ptr @.str.13
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.16..str.13) #6
  br label %if.end69

if.end69:                                         ; preds = %if.end69.sink.split, %sw.epilog.if.end69_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flexcop_device_name(ptr nocapture noundef readonly %fc, ptr noundef %prefix, ptr noundef %suffix) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_type = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 4
  %0 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_type, align 8
  %arrayidx = getelementptr [11 x ptr], ptr @flexcop_device_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %bus_type = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 5
  %4 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_type, align 4
  %arrayidx1 = getelementptr [2 x ptr], ptr @flexcop_bus_names, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %rev = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 3
  %8 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rev, align 4
  %arrayidx2 = getelementptr [4 x ptr], ptr @flexcop_revision_names, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %prefix, ptr noundef %3, ptr noundef %7, ptr noundef %11, ptr noundef %suffix) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flexcop_dump_reg(ptr noundef %fc, i32 noundef %reg, i32 noundef %num) #0 align 64 {
entry:
  %tmp = alloca %union.flexcop_ibi_value, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp26 = icmp sgt i32 %num, 0
  br i1 %cmp26, label %for.body.lr.ph, label %entry.do.body7_crit_edge

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body7

for.body.lr.ph:                                   ; preds = %entry
  %read_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #3
  %0 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_ibi_reg, align 4
  %mul = shl i32 %i.027, 2
  %add = add i32 %mul, %reg
  call void %1(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %tmp, ptr noundef %fc, i32 noundef %add) #3
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %2)
  %v.sroa.0.0.copyload22 = load i32, ptr %tmp, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %3 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %add, i32 noundef %v.sroa.0.0.copyload22) #6
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.do.body7_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.do.body7_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body7

do.body7:                                         ; preds = %for.inc.do.body7_crit_edge, %entry.do.body7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %4 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and8 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.do.end18_crit_edge, label %do.end13

do.body7.do.end18_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end18

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #5
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #6
  br label %do.end18

do.end18:                                         ; preds = %do.end13, %do.body7.do.end18_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 15, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @flexcop_determine_revision._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @flexcop_determine_revision._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 19, i32 3}
!8 = !{ptr @flexcop_determine_revision._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @flexcop_determine_revision._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 23, i32 3}
!12 = !{ptr @flexcop_determine_revision._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @flexcop_determine_revision._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 27, i32 3}
!16 = !{ptr @flexcop_determine_revision._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @flexcop_determine_revision._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 33, i32 3}
!20 = !{ptr @flexcop_determine_revision._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @flexcop_determine_revision._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 35, i32 3}
!24 = !{ptr @flexcop_determine_revision._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @flexcop_determine_revision._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 68, i32 2}
!28 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @flexcop_device_name._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @flexcop_device_name._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 81, i32 3}
!33 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @flexcop_dump_reg._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @flexcop_dump_reg._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 83, i32 2}
!38 = !{ptr @flexcop_dump_reg._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @flexcop_dump_reg._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @__ksymtab_flexcop_dump_reg, !41, !"__ksymtab_flexcop_dump_reg", i1 false, i1 false}
!41 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 85, i32 1}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 47, i32 13}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 48, i32 15}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 49, i32 18}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 50, i32 19}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 51, i32 19}
!52 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 52, i32 19}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 53, i32 19}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 54, i32 19}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 55, i32 19}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 56, i32 19}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 57, i32 21}
!64 = !{ptr @flexcop_device_names, !65, !"flexcop_device_names", i1 false, i1 false}
!65 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 46, i32 20}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 61, i32 2}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 62, i32 2}
!70 = !{ptr @flexcop_bus_names, !71, !"flexcop_bus_names", i1 false, i1 false}
!71 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 60, i32 20}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 40, i32 2}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 41, i32 2}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 42, i32 2}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 43, i32 2}
!80 = !{ptr @flexcop_revision_names, !81, !"flexcop_revision_names", i1 false, i1 false}
!81 = !{!"../drivers/media/common/b2c2/flexcop-misc.c", i32 39, i32 20}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
