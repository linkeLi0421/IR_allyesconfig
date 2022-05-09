; ModuleID = '/llk/IR_all_yes/drivers/media/common/b2c2/flexcop-i2c.c_pt.bc'
source_filename = "../drivers/media/common/b2c2/flexcop-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+flexcop_i2c_request\22, \22a\22\09"
module asm "\09.weak\09__crc_flexcop_i2c_request\09\09\09\09"
module asm "\09.long\09__crc_flexcop_i2c_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flexcop_i2c_request:\09\09\09\09\09"
module asm "\09.asciz \09\22flexcop_i2c_request\22\09\09\09\09\09"
module asm "__kstrtabns_flexcop_i2c_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.flexcop_ibi_value = type { %struct.anon.183 }
%struct.anon.183 = type { i32, i16 }
%struct.flexcop_i2c_adapter = type { ptr, %struct.i2c_adapter, i8, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.flexcop_device = type { ptr, i32, i32, i32, i32, i32, %struct.dvb_adapter, ptr, %struct.dvb_net, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, ptr, [3 x %struct.flexcop_i2c_adapter], %struct.mutex, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@b2c2_flexcop_debug = external dso_local local_unnamed_addr global i32, align 4
@flexcop_i2c_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"port %d %s(%02x): register %02x, size: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flexcop_i2c_request\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/common/b2c2/flexcop-i2c.c\00", [56 x i8] zeroinitializer }, align 32
@flexcop_i2c_request._entry_ptr = internal global ptr @flexcop_i2c_request._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rd\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"wr\00", [29 x i8] zeroinitializer }, align 32
@flexcop_i2c_request._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"port %d %s(%02x): register %02x: %*ph\0A\00", [57 x i8] zeroinitializer }, align 32
@flexcop_i2c_request._entry_ptr.7 = internal global ptr @flexcop_i2c_request._entry.5, section ".printk_index", align 4
@__kstrtab_flexcop_i2c_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_flexcop_i2c_request = external dso_local constant [0 x i8], align 1
@__ksymtab_flexcop_i2c_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flexcop_i2c_request to i32), ptr @__kstrtab_flexcop_i2c_request, ptr @__kstrtabns_flexcop_i2c_request }, section "___ksymtab+flexcop_i2c_request", align 4
@flexcop_i2c_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&fc->i2c_mutex\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"B2C2 FlexCop I2C to demod\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"B2C2 FlexCop I2C to eeprom\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"B2C2 FlexCop I2C to tuner\00", [38 x i8] zeroinitializer }, align 32
@flexcop_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @flexcop_master_xfer, ptr null, ptr null, ptr null, ptr @flexcop_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@flexcop_i2c_read4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Retrying operation\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"flexcop_i2c_read4\00", [46 x i8] zeroinitializer }, align 32
@flexcop_i2c_read4._entry_ptr = internal global ptr @flexcop_i2c_read4._entry, section ".printk_index", align 4
@flexcop_i2c_read4._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read failed. %d\0A\00", [47 x i8] zeroinitializer }, align 32
@flexcop_i2c_read4._entry_ptr.16 = internal global ptr @flexcop_i2c_read4._entry.14, section ".printk_index", align 4
@flexcop_i2c_read4._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"read: r100: %08x, r104: %08x\0A\00", [34 x i8] zeroinitializer }, align 32
@flexcop_i2c_read4._entry_ptr.19 = internal global ptr @flexcop_i2c_read4._entry.17, section ".printk_index", align 4
@flexcop_i2c_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 18, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"r100 before: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"flexcop_i2c_operation\00", [42 x i8] zeroinitializer }, align 32
@flexcop_i2c_operation._entry_ptr = internal global ptr @flexcop_i2c_operation._entry, section ".printk_index", align 4
@ibi_zero = external dso_local local_unnamed_addr global %union.flexcop_ibi_value, align 4
@flexcop_i2c_operation._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c success\0A\00", [19 x i8] zeroinitializer }, align 32
@flexcop_i2c_operation._entry_ptr.24 = internal global ptr @flexcop_i2c_operation._entry.22, section ".printk_index", align 4
@flexcop_i2c_operation._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"suffering from an i2c ack_error\0A\00", [63 x i8] zeroinitializer }, align 32
@flexcop_i2c_operation._entry_ptr.27 = internal global ptr @flexcop_i2c_operation._entry.25, section ".printk_index", align 4
@flexcop_i2c_operation._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"tried %d times i2c operation, never finished or too many ack errors.\0A\00", [58 x i8] zeroinitializer }, align 32
@flexcop_i2c_operation._entry_ptr.30 = internal global ptr @flexcop_i2c_operation._entry.28, section ".printk_index", align 4
@flexcop_i2c_write4._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"write: r100: %08x, r104: %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flexcop_i2c_write4\00", [45 x i8] zeroinitializer }, align 32
@flexcop_i2c_write4._entry_ptr = internal global ptr @flexcop_i2c_write4._entry, section ".printk_index", align 4
@flexcop_master_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i2c master_xfer failed\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flexcop_master_xfer\00", [44 x i8] zeroinitializer }, align 32
@flexcop_master_xfer._entry_ptr = internal global ptr @flexcop_master_xfer._entry, section ".printk_index", align 4
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 119, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 156, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 220, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 229, i32 44 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 231, i32 44 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 233, i32 44 }
@___asan_gen_.74 = private unnamed_addr constant [13 x i8] c"flexcop_algo\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 212, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 64, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 69, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 77, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 18, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 29, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 33, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 37, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 100, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [43 x i8] c"../drivers/media/common/b2c2/flexcop-i2c.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 195, i32 4 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__ksymtab_flexcop_i2c_request, ptr @flexcop_i2c_operation._entry, ptr @flexcop_i2c_operation._entry.22, ptr @flexcop_i2c_operation._entry.25, ptr @flexcop_i2c_operation._entry.28, ptr @flexcop_i2c_operation._entry_ptr, ptr @flexcop_i2c_operation._entry_ptr.24, ptr @flexcop_i2c_operation._entry_ptr.27, ptr @flexcop_i2c_operation._entry_ptr.30, ptr @flexcop_i2c_read4._entry, ptr @flexcop_i2c_read4._entry.14, ptr @flexcop_i2c_read4._entry.17, ptr @flexcop_i2c_read4._entry_ptr, ptr @flexcop_i2c_read4._entry_ptr.16, ptr @flexcop_i2c_read4._entry_ptr.19, ptr @flexcop_i2c_request._entry, ptr @flexcop_i2c_request._entry.5, ptr @flexcop_i2c_request._entry_ptr, ptr @flexcop_i2c_request._entry_ptr.7, ptr @flexcop_i2c_write4._entry, ptr @flexcop_i2c_write4._entry_ptr, ptr @flexcop_master_xfer._entry, ptr @flexcop_master_xfer._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @flexcop_i2c_init.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @flexcop_algo, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_i2c_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_i2c_request._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_i2c_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_i2c_read4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_i2c_read4._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_i2c_read4._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_i2c_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_i2c_operation._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_i2c_operation._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_i2c_operation._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_i2c_write4._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_master_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @flexcop_i2c_request(ptr nocapture noundef readonly %i2c, i32 noundef %op, i8 noundef zeroext %chipaddr, i8 noundef zeroext %start_addr, ptr noundef %buf, i16 noundef zeroext %size) #0 align 64 {
entry:
  %r100.i121 = alloca %union.flexcop_ibi_value, align 4
  %r100.i = alloca %union.flexcop_ibi_value, align 4
  %tmp46.i = alloca %union.flexcop_ibi_value, align 4
  %start_addr.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %start_addr.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %start_addr, ptr %start_addr.addr, align 1
  %conv = zext i16 %size to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %1 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = zext i8 %chipaddr to i32
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %port = getelementptr inbounds %struct.flexcop_i2c_adapter, ptr %i2c, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp = icmp eq i32 %op, 1
  %cond = select i1 %cmp, ptr @.str.3, ptr @.str.4
  %conv3 = zext i8 %chipaddr to i32
  %conv4 = zext i8 %start_addr to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3, ptr noundef nonnull %cond, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %conv) #9
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %conv8.pre-phi = phi i32 [ %.pre, %entry.do.end7_crit_edge ], [ %conv3, %do.end ]
  %port13 = getelementptr inbounds %struct.flexcop_i2c_adapter, ptr %i2c, i32 0, i32 3
  %no_base_addr = getelementptr inbounds %struct.flexcop_i2c_adapter, ptr %i2c, i32 0, i32 2
  %4 = ptrtoint ptr %no_base_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %no_base_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool20.not = icmp ne i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %size)
  %cmp21 = icmp eq i16 %size, 0
  %or.cond = and i1 %cmp21, %tobool20.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %cmp24 = icmp eq i32 %op, 0
  %spec.select = zext i1 %cmp24 to i32
  %len.0 = select i1 %or.cond, i32 %spec.select, i32 %conv
  %6 = and i1 %cmp24, %or.cond
  %buf.addr.0 = select i1 %6, ptr %start_addr.addr, ptr %buf
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0)
  %cmp28.not132 = icmp eq i32 %len.0, 0
  br i1 %cmp28.not132, label %do.end7.do.body63_crit_edge, label %while.body.lr.ph

do.end7.do.body63_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body63

while.body.lr.ph:                                 ; preds = %do.end7
  %bf.value = and i32 %conv8.pre-phi, 127
  %bf.value10 = shl i32 %op, 25
  %bf.shl = and i32 %bf.value10, 33554432
  %bf.set12 = or i32 %bf.value, %bf.shl
  %7 = ptrtoint ptr %port13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port13, align 4
  %bf.value15 = shl i32 %8, 28
  %bf.shl16 = and i32 %bf.value15, 805306368
  %bf.set18 = or i32 %bf.set12, %bf.shl16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp46 = icmp eq i32 %op, 1
  %r100.coerce.fca.1.gep.i122 = getelementptr inbounds [2 x i32], ptr %r100.i121, i32 0, i32 1
  %r100.coerce.fca.1.gep.i = getelementptr inbounds [2 x i32], ptr %r100.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end56.while.body_crit_edge, %while.body.lr.ph
  %r100.sroa.0.0139 = phi i32 [ %bf.set18, %while.body.lr.ph ], [ %bf.set45, %if.end56.while.body_crit_edge ]
  %addr.0138 = phi i8 [ %start_addr, %while.body.lr.ph ], [ %conv60, %if.end56.while.body_crit_edge ]
  %p.0134 = phi ptr [ %buf.addr.0, %while.body.lr.ph ], [ %add.ptr, %if.end56.while.body_crit_edge ]
  %len.1133 = phi i32 [ %len.0, %while.body.lr.ph ], [ %sub62, %if.end56.while.body_crit_edge ]
  %9 = call i32 @llvm.smin.i32(i32 %len.1133, i32 4)
  %conv34 = and i32 %9, 65535
  %sub = shl i32 %9, 26
  %bf.value36 = add i32 %sub, 201326592
  %bf.shl37 = and i32 %bf.value36, 201326592
  %bf.clear38 = and i32 %r100.sroa.0.0139, -201391873
  %bf.set39 = or i32 %bf.clear38, %bf.shl37
  %conv40 = zext i8 %addr.0138 to i32
  %bf.shl43 = shl nuw nsw i32 %conv40, 8
  %bf.set45 = or i32 %bf.set39, %bf.shl43
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r100.i)
  %10 = ptrtoint ptr %r100.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %bf.set45, ptr %r100.i, align 4
  %11 = ptrtoint ptr %r100.coerce.fca.1.gep.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %r100.coerce.fca.1.gep.i, align 4
  %bf.lshr.i = lshr exact i32 %bf.value36, 26
  %bf.clear.i = and i32 %bf.lshr.i, 3
  %12 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c, align 8
  %dev_type.i = getelementptr inbounds %struct.flexcop_device, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp.i = icmp eq i32 %15, 8
  br i1 %cmp.i, label %if.then.i, label %if.then48.if.end.i_crit_edge

if.then48.if.end.i_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %no_base_addr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %no_base_addr, align 8
  %18 = and i8 %17, 1
  %bf.value.i = zext i8 %18 to i32
  %bf.shl.i = shl nuw nsw i32 %bf.value.i, 30
  %bf.clear2.i = and i32 %bf.set45, -1073741825
  %bf.set.i = or i32 %bf.shl.i, %bf.clear2.i
  %19 = ptrtoint ptr %r100.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bf.set.i, ptr %r100.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then48.if.end.i_crit_edge
  %call.i = call fastcc i32 @flexcop_i2c_operation(ptr noundef %13, ptr noundef nonnull %r100.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp4.not.i, label %if.end.i.if.end38.i_crit_edge, label %do.body.i

if.end.i.if.end38.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

do.body.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %20 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end22.i_crit_edge, label %do.end.i

do.body.i.if.end22.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #9
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end.i, %do.body.i.if.end22.i_crit_edge
  %21 = ptrtoint ptr %no_base_addr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %no_base_addr, align 8
  %23 = ptrtoint ptr %r100.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load15.i = load i32, ptr %r100.i, align 4
  %24 = and i8 %22, 1
  %bf.value16.i = zext i8 %24 to i32
  %bf.shl17.i = shl nuw nsw i32 %bf.value16.i, 30
  %bf.clear18.i = and i32 %bf.load15.i, -1073741825
  %bf.set19.i = or i32 %bf.shl17.i, %bf.clear18.i
  store i32 %bf.set19.i, ptr %r100.i, align 4
  %25 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c, align 8
  %call21.i = call fastcc i32 @flexcop_i2c_operation(ptr noundef %26, ptr noundef nonnull %r100.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp23.not.i = icmp eq i32 %call21.i, 0
  br i1 %cmp23.not.i, label %if.end22.i.if.end38.i_crit_edge, label %do.body26.i

if.end22.i.if.end38.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

do.body26.i:                                      ; preds = %if.end22.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %27 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and27.i = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %do.body26.i.flexcop_i2c_read4.exit_crit_edge, label %do.end32.i

do.body26.i.flexcop_i2c_read4.exit_crit_edge:     ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flexcop_i2c_read4.exit

do.end32.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call21.i) #9
  br label %flexcop_i2c_read4.exit

if.end38.i:                                       ; preds = %if.end22.i.if.end38.i_crit_edge, %if.end.i.if.end38.i_crit_edge
  %28 = ptrtoint ptr %r100.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load39.i = load i32, ptr %r100.i, align 4
  %bf.lshr40.i = lshr i32 %bf.load39.i, 16
  %conv42.i = trunc i32 %bf.lshr40.i to i8
  %29 = ptrtoint ptr %p.0134 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv42.i, ptr %p.0134, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i)
  %cmp43.not.i = icmp eq i32 %bf.clear.i, 0
  br i1 %cmp43.not.i, label %if.end38.i.flexcop_i2c_read4.exit_crit_edge, label %if.then45.i

if.end38.i.flexcop_i2c_read4.exit_crit_edge:      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flexcop_i2c_read4.exit

if.then45.i:                                      ; preds = %if.end38.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp46.i) #6
  %30 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %i2c, align 8
  %read_ibi_reg.i = getelementptr inbounds %struct.flexcop_device, ptr %31, i32 0, i32 22
  %32 = ptrtoint ptr %read_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read_ibi_reg.i, align 4
  call void %33(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %tmp46.i, ptr noundef %31, i32 noundef 260) #6
  %34 = ptrtoint ptr %tmp46.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %r104.sroa.0.0.copyload91.i = load i32, ptr %tmp46.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp46.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %35 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and50.i = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %if.then45.i.do.end60.i_crit_edge, label %do.end55.i

if.then45.i.do.end60.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end60.i

do.end55.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %bf.load39.i, i32 noundef %r104.sroa.0.0.copyload91.i) #9
  br label %do.end60.i

do.end60.i:                                       ; preds = %do.end55.i, %if.then45.i.do.end60.i_crit_edge
  %conv63.i = trunc i32 %r104.sroa.0.0.copyload91.i to i8
  %arrayidx64.i = getelementptr i8, ptr %p.0134, i32 1
  %36 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv63.i, ptr %arrayidx64.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear.i)
  %cmp65.i = icmp ugt i32 %bf.clear.i, 1
  br i1 %cmp65.i, label %if.end73.i, label %do.end60.i.flexcop_i2c_read4.exit_crit_edge

do.end60.i.flexcop_i2c_read4.exit_crit_edge:      ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flexcop_i2c_read4.exit

if.end73.i:                                       ; preds = %do.end60.i
  %bf.lshr69.i = lshr i32 %r104.sroa.0.0.copyload91.i, 8
  %conv71.i = trunc i32 %bf.lshr69.i to i8
  %arrayidx72.i = getelementptr i8, ptr %p.0134, i32 2
  %37 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv71.i, ptr %arrayidx72.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear.i)
  %cmp74.i = icmp eq i32 %bf.clear.i, 3
  br i1 %cmp74.i, label %if.then76.i, label %if.end73.i.flexcop_i2c_read4.exit_crit_edge

if.end73.i.flexcop_i2c_read4.exit_crit_edge:      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flexcop_i2c_read4.exit

if.then76.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf.lshr78.i = lshr i32 %r104.sroa.0.0.copyload91.i, 16
  %conv80.i = trunc i32 %bf.lshr78.i to i8
  %arrayidx81.i = getelementptr i8, ptr %p.0134, i32 3
  %38 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv80.i, ptr %arrayidx81.i, align 1
  br label %flexcop_i2c_read4.exit

flexcop_i2c_read4.exit:                           ; preds = %if.then76.i, %if.end73.i.flexcop_i2c_read4.exit_crit_edge, %do.end60.i.flexcop_i2c_read4.exit_crit_edge, %if.end38.i.flexcop_i2c_read4.exit_crit_edge, %do.end32.i, %do.body26.i.flexcop_i2c_read4.exit_crit_edge
  %retval.0.i = phi i32 [ %call21.i, %do.end32.i ], [ %call21.i, %do.body26.i.flexcop_i2c_read4.exit_crit_edge ], [ 0, %if.end73.i.flexcop_i2c_read4.exit_crit_edge ], [ 0, %if.then76.i ], [ 0, %if.end38.i.flexcop_i2c_read4.exit_crit_edge ], [ 0, %do.end60.i.flexcop_i2c_read4.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r100.i)
  br label %if.end52

if.else:                                          ; preds = %while.body
  %39 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %i2c, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r100.i121)
  %41 = ptrtoint ptr %r100.coerce.fca.1.gep.i122 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %r100.coerce.fca.1.gep.i122, align 4
  %bf.lshr.i123 = lshr exact i32 %bf.value36, 26
  %bf.clear.i124 = and i32 %bf.lshr.i123, 3
  %42 = ptrtoint ptr %p.0134 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %p.0134, align 1
  %conv.i = zext i8 %43 to i32
  %bf.shl.i125 = shl nuw nsw i32 %conv.i, 16
  %bf.clear2.i126 = and i32 %bf.set45, -16711681
  %bf.set.i127 = or i32 %bf.shl.i125, %bf.clear2.i126
  %44 = ptrtoint ptr %r100.i121 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %bf.set.i127, ptr %r100.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i124)
  %cmp.not.i = icmp eq i32 %bf.clear.i124, 0
  br i1 %cmp.not.i, label %if.else.cond.end29.i_crit_edge, label %cond.end.i

if.else.cond.end29.i_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end29.i

cond.end.i:                                       ; preds = %if.else
  %arrayidx4.i = getelementptr i8, ptr %p.0134, i32 1
  %45 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bf.clear.i124)
  %cmp10.not.i = icmp eq i32 %bf.clear.i124, 1
  br i1 %cmp10.not.i, label %cond.end.i.cond.end29.i_crit_edge, label %cond.end16.i

cond.end.i.cond.end29.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end29.i

cond.end16.i:                                     ; preds = %cond.end.i
  %arrayidx13.i = getelementptr i8, ptr %p.0134, i32 2
  %47 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %48 to i32
  %phi.bo.i = shl nuw nsw i32 %conv14.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear.i124)
  %cmp23.i = icmp eq i32 %bf.clear.i124, 3
  br i1 %cmp23.i, label %cond.true25.i, label %cond.end16.i.cond.end29.i_crit_edge

cond.end16.i.cond.end29.i_crit_edge:              ; preds = %cond.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end29.i

cond.true25.i:                                    ; preds = %cond.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx26.i = getelementptr i8, ptr %p.0134, i32 3
  %49 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %50 to i32
  %phi.bo49.i = shl nuw nsw i32 %conv27.i, 16
  br label %cond.end29.i

cond.end29.i:                                     ; preds = %cond.true25.i, %cond.end16.i.cond.end29.i_crit_edge, %cond.end.i.cond.end29.i_crit_edge, %if.else.cond.end29.i_crit_edge
  %cond1758.i = phi i32 [ %phi.bo.i, %cond.true25.i ], [ %phi.bo.i, %cond.end16.i.cond.end29.i_crit_edge ], [ 0, %cond.end.i.cond.end29.i_crit_edge ], [ 0, %if.else.cond.end29.i_crit_edge ]
  %cond5357.shrunk.i = phi i8 [ %46, %cond.true25.i ], [ %46, %cond.end16.i.cond.end29.i_crit_edge ], [ %46, %cond.end.i.cond.end29.i_crit_edge ], [ 0, %if.else.cond.end29.i_crit_edge ]
  %cond30.i = phi i32 [ %phi.bo49.i, %cond.true25.i ], [ 0, %cond.end16.i.cond.end29.i_crit_edge ], [ 0, %cond.end.i.cond.end29.i_crit_edge ], [ 0, %if.else.cond.end29.i_crit_edge ]
  %cond5357.i = zext i8 %cond5357.shrunk.i to i32
  %bf.clear34.i = or i32 %cond1758.i, %cond5357.i
  %bf.set35.i = or i32 %bf.clear34.i, %cond30.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %51 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and.i128 = and i32 %51, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128)
  %tobool.not.i129 = icmp eq i32 %and.i128, 0
  br i1 %tobool.not.i129, label %cond.end29.i.flexcop_i2c_write4.exit_crit_edge, label %do.end.i131

cond.end29.i.flexcop_i2c_write4.exit_crit_edge:   ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flexcop_i2c_write4.exit

do.end.i131:                                      ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %bf.set.i127, i32 noundef %bf.set35.i) #9
  br label %flexcop_i2c_write4.exit

flexcop_i2c_write4.exit:                          ; preds = %do.end.i131, %cond.end29.i.flexcop_i2c_write4.exit_crit_edge
  %write_ibi_reg.i = getelementptr inbounds %struct.flexcop_device, ptr %40, i32 0, i32 23
  %52 = ptrtoint ptr %write_ibi_reg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %write_ibi_reg.i, align 8
  %.fca.0.insert.i = insertvalue [2 x i32] poison, i32 %bf.set35.i, 0
  %.fca.1.insert.i = insertvalue [2 x i32] %.fca.0.insert.i, i32 -1, 1
  %call40.i = call i32 %53(ptr noundef %40, i32 noundef 260, [2 x i32] %.fca.1.insert.i) #6
  %call41.i = call fastcc i32 @flexcop_i2c_operation(ptr noundef %40, ptr noundef nonnull %r100.i121) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r100.i121)
  br label %if.end52

if.end52:                                         ; preds = %flexcop_i2c_write4.exit, %flexcop_i2c_read4.exit
  %ret.0 = phi i32 [ %retval.0.i, %flexcop_i2c_read4.exit ], [ %call41.i, %flexcop_i2c_write4.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp53 = icmp slt i32 %ret.0, 0
  br i1 %cmp53, label %if.end52.cleanup_crit_edge, label %if.end56

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %add.ptr = getelementptr i8, ptr %p.0134, i32 %conv34
  %54 = trunc i32 %9 to i8
  %conv60 = add i8 %addr.0138, %54
  %sub62 = sub i32 %len.1133, %conv34
  %cmp28.not = icmp eq i32 %sub62, 0
  br i1 %cmp28.not, label %if.end56.do.body63_crit_edge, label %if.end56.while.body_crit_edge

if.end56.while.body_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end56.do.body63_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body63

do.body63:                                        ; preds = %if.end56.do.body63_crit_edge, %do.end7.do.body63_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %55 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and64 = and i32 %55, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %do.body63.cleanup_crit_edge, label %do.end69

do.body63.cleanup_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end69:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %port13 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp72 = icmp eq i32 %op, 1
  %cond74 = select i1 %cmp72, ptr @.str.3, ptr @.str.4
  %58 = ptrtoint ptr %start_addr.addr to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %start_addr.addr, align 1
  %conv76 = zext i8 %59 to i32
  %call78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %57, ptr noundef nonnull %cond74, i32 noundef %conv8.pre-phi, i32 noundef %conv76, i32 noundef %conv, ptr noundef %buf.addr.0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %do.body63.cleanup_crit_edge, %if.end52.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end69 ], [ 0, %do.body63.cleanup_crit_edge ], [ %ret.0, %if.end52.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @flexcop_i2c_init(ptr noundef %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_mutex = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %i2c_mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @flexcop_i2c_init.__key) #6
  %fc_i2c_adap = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 14
  %0 = ptrtoint ptr %fc_i2c_adap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fc, ptr %fc_i2c_adap, align 8
  %arrayidx3 = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fc, ptr %arrayidx3, align 8
  %arrayidx6 = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fc, ptr %arrayidx6, align 8
  %port = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 0, i32 3
  %3 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %port, align 4
  %port12 = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 1, i32 3
  %4 = ptrtoint ptr %port12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %port12, align 4
  %port15 = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2, i32 3
  %5 = ptrtoint ptr %port15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %port15, align 4
  %i2c_adap = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 0, i32 1
  %name = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 0, i32 1, i32 12
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.9, i32 noundef 48) #6
  %i2c_adap20 = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 1, i32 1
  %name21 = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 1, i32 1, i32 12
  %call23 = tail call i32 @strscpy(ptr noundef %name21, ptr noundef nonnull @.str.10, i32 noundef 48) #6
  %i2c_adap26 = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2, i32 1
  %name27 = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2, i32 1, i32 12
  %call29 = tail call i32 @strscpy(ptr noundef %name27, ptr noundef nonnull @.str.11, i32 noundef 48) #6
  %driver_data.i.i = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 0, i32 1, i32 9, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fc_i2c_adap, ptr %driver_data.i.i, align 4
  %driver_data.i.i143 = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 1, i32 1, i32 9, i32 8
  %7 = ptrtoint ptr %driver_data.i.i143 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx3, ptr %driver_data.i.i143, align 4
  %driver_data.i.i144 = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2, i32 1, i32 9, i32 8
  %8 = ptrtoint ptr %driver_data.i.i144 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx6, ptr %driver_data.i.i144, align 4
  %algo = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2, i32 1, i32 2
  %9 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @flexcop_algo, ptr %algo, align 8
  %algo51 = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 1, i32 1, i32 2
  %10 = ptrtoint ptr %algo51 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @flexcop_algo, ptr %algo51, align 8
  %algo55 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %algo55 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @flexcop_algo, ptr %algo55, align 8
  %algo_data = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2, i32 1, i32 3
  %12 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %algo_data, align 4
  %algo_data62 = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 1, i32 1, i32 3
  %13 = ptrtoint ptr %algo_data62 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %algo_data62, align 4
  %algo_data66 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %algo_data66 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %algo_data66, align 4
  %15 = ptrtoint ptr %fc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fc, align 8
  %parent = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2, i32 1, i32 9, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %parent, align 8
  %parent75 = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 1, i32 1, i32 9, i32 1
  %18 = ptrtoint ptr %parent75 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %parent75, align 8
  %parent80 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 0, i32 1, i32 9, i32 1
  %19 = ptrtoint ptr %parent80 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %parent80, align 8
  %call84 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp = icmp slt i32 %call84, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call88 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.end.adap_1_failed_crit_edge, label %if.end91

if.end.adap_1_failed_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %adap_1_failed

if.end91:                                         ; preds = %if.end
  %call95 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %adap_2_failed, label %if.end98

if.end98:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  %init_state = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 1
  %20 = ptrtoint ptr %init_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %init_state, align 4
  %or = or i32 %21, 2
  store i32 %or, ptr %init_state, align 4
  br label %cleanup

adap_2_failed:                                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap20) #6
  br label %adap_1_failed

adap_1_failed:                                    ; preds = %adap_2_failed, %if.end.adap_1_failed_crit_edge
  %ret.0 = phi i32 [ %call88, %if.end.adap_1_failed_crit_edge ], [ %call95, %adap_2_failed ]
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #6
  br label %cleanup

cleanup:                                          ; preds = %adap_1_failed, %if.end98, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %adap_1_failed ], [ 0, %if.end98 ], [ %call84, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @flexcop_i2c_exit(ptr noundef %fc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %init_state = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 1
  %0 = ptrtoint ptr %init_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %init_state, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_adap = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 2, i32 1
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #6
  %i2c_adap3 = getelementptr %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 1, i32 1
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap3) #6
  %i2c_adap6 = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 14, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap6) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %init_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_state, align 4
  %and8 = and i32 %3, -3
  store i32 %and8, ptr %init_state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flexcop_i2c_operation(ptr noundef %fc, ptr nocapture noundef %r100) unnamed_addr #0 align 64 {
entry:
  %tmp7 = alloca %union.flexcop_ibi_value, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %r100 to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %r100, align 4
  %bf.set = or i32 %bf.load, 16777216
  store i32 %bf.set, ptr %r100, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %1 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %bf.set) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %write_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 23
  %2 = ptrtoint ptr %write_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_ibi_reg, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ibi_zero to i32))
  %.unpack = load i32, ptr @ibi_zero, align 4
  %4 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%union.flexcop_ibi_value, ptr @ibi_zero, i32 0, i32 0, i32 1) to i32))
  %.unpack69 = load i32, ptr getelementptr inbounds (%union.flexcop_ibi_value, ptr @ibi_zero, i32 0, i32 0, i32 1), align 4
  %5 = insertvalue [2 x i32] %4, i32 %.unpack69, 1
  %call4 = tail call i32 %3(ptr noundef %fc, i32 noundef 256, [2 x i32] %5) #6
  %6 = ptrtoint ptr %write_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_ibi_reg, align 8
  %8 = ptrtoint ptr %r100 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack70 = load i32, ptr %r100, align 4
  %9 = insertvalue [2 x i32] undef, i32 %.unpack70, 0
  %.elt71 = getelementptr inbounds [2 x i32], ptr %r100, i32 0, i32 1
  %10 = ptrtoint ptr %.elt71 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack72 = load i32, ptr %.elt71, align 4
  %11 = insertvalue [2 x i32] %9, i32 %.unpack72, 1
  %call6 = tail call i32 %7(ptr noundef %fc, i32 noundef 256, [2 x i32] %11) #6
  %read_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 22
  %r.sroa.7.0.tmp7.sroa_idx = getelementptr inbounds i8, ptr %tmp7, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end3
  %i.077 = phi i32 [ 0, %do.end3 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp7) #6
  %12 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read_ibi_reg, align 4
  call void %13(ptr nonnull sret(%union.flexcop_ibi_value) align 4 %tmp7, ptr noundef %fc, i32 noundef 256) #6
  %14 = ptrtoint ptr %tmp7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %r.sroa.0.0.copyload55 = load i32, ptr %tmp7, align 4
  %15 = ptrtoint ptr %r.sroa.7.0.tmp7.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %r.sroa.7.0.copyload57 = load i32, ptr %r.sroa.7.0.tmp7.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp7) #6
  %16 = and i32 %r.sroa.0.0.copyload55, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool10.not = icmp eq i32 %16, 0
  br i1 %tobool10.not, label %if.then11, label %do.body29

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %r.sroa.0.0.copyload55)
  %tobool14.not = icmp sgt i32 %r.sroa.0.0.copyload55, -1
  br i1 %tobool14.not, label %for.inc, label %if.then15

if.then15:                                        ; preds = %if.then11
  %17 = ptrtoint ptr %r100 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %r.sroa.0.0.copyload55, ptr %r100, align 4
  %18 = ptrtoint ptr %.elt71 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %r.sroa.7.0.copyload57, ptr %.elt71, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %19 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and17 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then15.cleanup_crit_edge, label %do.end22

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end22:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #9
  br label %cleanup

do.body29:                                        ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %20 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and30 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %do.body29.cleanup_crit_edge, label %do.end35

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #9
  br label %cleanup

for.inc:                                          ; preds = %if.then11
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, 100000
  br i1 %exitcond.not, label %do.body42, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body42:                                        ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %21 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and43 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %do.body42.cleanup_crit_edge, label %do.end48

do.body42.cleanup_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end48:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef 100000) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %do.body42.cleanup_crit_edge, %do.end35, %do.body29.cleanup_crit_edge, %do.end22, %if.then15.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end22 ], [ 0, %if.then15.cleanup_crit_edge ], [ -121, %do.end35 ], [ -121, %do.body29.cleanup_crit_edge ], [ -121, %do.end48 ], [ -121, %do.body42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_master_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp = icmp eq i32 %num, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp1 = icmp eq i16 %3, 1
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %5)
  %cmp6 = icmp ult i16 %5, 2
  br i1 %cmp6, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %i2c_mutex = getelementptr inbounds %struct.flexcop_device, ptr %7, i32 0, i32 15
  %call8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp11105 = icmp sgt i32 %num, 0
  br i1 %cmp11105, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond:                                         ; preds = %if.end51
  %inc63 = add nsw i32 %i.1, 1
  %cmp11 = icmp slt i32 %inc63, %num
  br i1 %cmp11, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0106 = phi i32 [ %inc63, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add nsw i32 %i.0106, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp13 = icmp slt i32 %add, %num
  br i1 %cmp13, label %land.lhs.true15, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true15:                                  ; preds = %for.body
  %flags18 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %8 = ptrtoint ptr %flags18 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %9)
  %cmp20 = icmp eq i16 %9, 1
  br i1 %cmp20, label %if.then22, label %land.lhs.true15.if.else_crit_edge

land.lhs.true15.if.else_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then22:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %i2c_request = getelementptr inbounds %struct.flexcop_device, ptr %11, i32 0, i32 24
  %12 = ptrtoint ptr %i2c_request to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c_request, align 4
  %arrayidx24 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0106
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx24, align 4
  %conv25 = trunc i16 %15 to i8
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0106, i32 3
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %buf30 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 3
  %20 = ptrtoint ptr %buf30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf30, align 4
  %len33 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 2
  %22 = ptrtoint ptr %len33 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len33, align 4
  %call34 = tail call i32 %13(ptr noundef %1, i32 noundef 1, i8 noundef zeroext %conv25, i8 noundef zeroext %19, ptr noundef %21, i16 noundef zeroext %23) #6
  br label %if.end51

if.else:                                          ; preds = %land.lhs.true15.if.else_crit_edge, %for.body.if.else_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %i2c_request36 = getelementptr inbounds %struct.flexcop_device, ptr %25, i32 0, i32 24
  %26 = ptrtoint ptr %i2c_request36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_request36, align 4
  %arrayidx37 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0106
  %28 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx37, align 4
  %conv39 = trunc i16 %29 to i8
  %buf41 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0106, i32 3
  %30 = ptrtoint ptr %buf41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buf41, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %arrayidx45 = getelementptr i8, ptr %31, i32 1
  %len47 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0106, i32 2
  %34 = ptrtoint ptr %len47 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %len47, align 4
  %sub = add i16 %35, -1
  %call50 = tail call i32 %27(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %conv39, i8 noundef zeroext %33, ptr noundef %arrayidx45, i16 noundef zeroext %sub) #6
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then22
  %i.1 = phi i32 [ %add, %if.then22 ], [ %i.0106, %if.else ]
  %ret.1 = phi i32 [ %call34, %if.then22 ], [ %call50, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp52 = icmp slt i32 %ret.1, 0
  br i1 %cmp52, label %do.body, label %for.cond

do.body:                                          ; preds = %if.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @b2c2_flexcop_debug to i32))
  %36 = load i32, ptr @b2c2_flexcop_debug, align 4
  %and = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %do.body.for.end_crit_edge, label %do.end

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #9
  br label %for.end

for.end:                                          ; preds = %do.end, %do.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ret.2 = phi i32 [ %ret.1, %do.end ], [ %ret.1, %do.body.for.end_crit_edge ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %ret.1, %for.cond.for.end_crit_edge ]
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %i2c_mutex65 = getelementptr inbounds %struct.flexcop_device, ptr %38, i32 0, i32 15
  tail call void @mutex_unlock(ptr noundef %i2c_mutex65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp66 = icmp eq i32 %ret.2, 0
  %spec.select = select i1 %cmp66, i32 %num, i32 %ret.2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true3.cleanup_crit_edge ], [ -512, %if.end.cleanup_crit_edge ], [ %spec.select, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @flexcop_i2c_func(ptr nocapture noundef readnone %adapter) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !62, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 119, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @flexcop_i2c_request._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @flexcop_i2c_request._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 156, i32 2}
!10 = !{ptr @flexcop_i2c_request._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @flexcop_i2c_request._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_flexcop_i2c_request, !13, !"__ksymtab_flexcop_i2c_request", i1 false, i1 false}
!13 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 164, i32 1}
!14 = !{ptr @flexcop_i2c_init.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 220, i32 2}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 229, i32 44}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 231, i32 44}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 233, i32 44}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 64, i32 3}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @flexcop_i2c_read4._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @flexcop_i2c_read4._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 69, i32 3}
!30 = !{ptr @flexcop_i2c_read4._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @flexcop_i2c_read4._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 77, i32 3}
!34 = !{ptr @flexcop_i2c_read4._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @flexcop_i2c_read4._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 18, i32 2}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @flexcop_i2c_operation._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @flexcop_i2c_operation._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 29, i32 5}
!43 = !{ptr @flexcop_i2c_operation._entry.22, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @flexcop_i2c_operation._entry_ptr.24, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 33, i32 4}
!47 = !{ptr @flexcop_i2c_operation._entry.25, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @flexcop_i2c_operation._entry_ptr.27, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 37, i32 2}
!51 = !{ptr @flexcop_i2c_operation._entry.28, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @flexcop_i2c_operation._entry_ptr.30, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 100, i32 2}
!55 = !{ptr @.str.32, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @flexcop_i2c_write4._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @flexcop_i2c_write4._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @flexcop_algo, !59, !"flexcop_algo", i1 false, i1 false}
!59 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 212, i32 29}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/common/b2c2/flexcop-i2c.c", i32 195, i32 4}
!62 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @flexcop_master_xfer._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @flexcop_master_xfer._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
