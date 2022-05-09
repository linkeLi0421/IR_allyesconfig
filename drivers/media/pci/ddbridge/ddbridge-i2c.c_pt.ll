; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ddbridge/ddbridge-i2c.c_pt.bc'
source_filename = "../drivers/media/pci/ddbridge/ddbridge-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ddb = type { ptr, ptr, ptr, i32, ptr, i32, [4 x %struct.ddb_link], ptr, i32, i32, [32 x %struct.ddb_port], i32, [32 x %struct.ddb_i2c], [64 x %struct.ddb_io], [32 x %struct.ddb_io], [64 x %struct.dvb_adapter], [64 x %struct.ddb_dma], [32 x %struct.ddb_dma], ptr, i32, i32, [1028 x i8], i8, i32, i32, %struct.mutex, [4096 x i8] }
%struct.ddb_link = type { ptr, ptr, i32, i32, %struct.spinlock, %struct.mutex, %struct.ddb_lnb, %struct.tasklet_struct, %struct.ddb_ids, %struct.spinlock, i32, [11 x i8], [256 x %struct.ddb_irq] }
%struct.ddb_lnb = type { %struct.mutex, i32, [4 x i32], [4 x i32], i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.104, i32 }
%struct.atomic_t = type { i32 }
%union.anon.104 = type { ptr }
%struct.ddb_ids = type { i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ddb_irq = type { ptr, ptr }
%struct.ddb_port = type { ptr, i32, i32, i32, i32, ptr, %struct.mutex, i32, ptr, ptr, i32, [2 x ptr], ptr, ptr, i8, [2 x %struct.ddb_dvb], i32, i32, i8 }
%struct.ddb_dvb = type { ptr, i32, ptr, [1 x ptr], ptr, ptr, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, %struct.dmx_frontend, %struct.dmx_frontend, i32, i32, i8, i32, i32, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.ddb_i2c = type { ptr, i32, i32, i32, %struct.i2c_adapter, i32, i32, i32, %struct.completion }
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
%struct.ddb_io = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.ddb_dma = type { ptr, i32, i32, [32 x i32], [32 x ptr], i32, i32, i32, i32, %struct.work_struct, %struct.spinlock, %struct.wait_queue_head, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ddb_info = type { i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr }
%struct.ddb_regmap = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ddb_regset = type { i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ddbridge_%02x.%x.%x\00", [44 x i8] zeroinitializer }, align 32
@ddb_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @ddb_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @ddb_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ddb_i2c_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 51, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"I2C timeout, card %d, port %d, link %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ddb_i2c_cmd\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/pci/ddbridge/ddbridge-i2c.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ddb_i2c_cmd._entry_ptr = internal global ptr @ddb_i2c_cmd._entry, section ".printk_index", align 4
@ddb_i2c_cmd._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 55, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DDBridge IRS %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@ddb_i2c_cmd._entry_ptr.9 = internal global ptr @ddb_i2c_cmd._entry.7, section ".printk_index", align 4
@ddb_i2c_cmd._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 62, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DDBridge link %u IRS %08x\0A\00", [37 x i8] zeroinitializer }, align 32
@ddb_i2c_cmd._entry_ptr.12 = internal global ptr @ddb_i2c_cmd._entry.10, section ".printk_index", align 4
@ddb_i2c_cmd._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 71, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"I2C cmd=%08x mon=%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@ddb_i2c_cmd._entry_ptr.15 = internal global ptr @ddb_i2c_cmd._entry.13, section ".printk_index", align 4
@ddb_i2c_cmd._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 78, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"I2C bus error\0A\00", [17 x i8] zeroinitializer }, align 32
@ddb_i2c_cmd._entry_ptr.18 = internal global ptr @ddb_i2c_cmd._entry.16, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 131072]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 189, i32 38 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"ddb_i2c_algo\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 137, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 87, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 50, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 55, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 61, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 70, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [45 x i8] c"../drivers/media/pci/ddbridge/ddbridge-i2c.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 78, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @ddb_i2c_cmd._entry, ptr @ddb_i2c_cmd._entry.10, ptr @ddb_i2c_cmd._entry.13, ptr @ddb_i2c_cmd._entry.16, ptr @ddb_i2c_cmd._entry.7, ptr @ddb_i2c_cmd._entry_ptr, ptr @ddb_i2c_cmd._entry_ptr.12, ptr @ddb_i2c_cmd._entry_ptr.15, ptr @ddb_i2c_cmd._entry_ptr.18, ptr @ddb_i2c_cmd._entry_ptr.9, ptr @.str, ptr @ddb_i2c_algo, ptr @init_completion.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_i2c_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_i2c_cmd._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_i2c_cmd._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_i2c_cmd._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddb_i2c_cmd._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ddb_i2c_release(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_num = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %i2c_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %adap = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %i.06, i32 4
  tail call void @i2c_del_adapter(ptr noundef %adap) #6
  %inc = add nuw i32 %i.06, 1
  %2 = ptrtoint ptr %i2c_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_num, align 8
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ddb_i2c_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i.i = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 7
  %nr24.i = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 20
  %dev26.i = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %entry
  %l.086 = phi i32 [ 0, %entry ], [ %inc29, %for.inc28.for.body_crit_edge ]
  %num.085 = phi i32 [ 0, %entry ], [ %num.3, %for.inc28.for.body_crit_edge ]
  %stat.084 = phi i32 [ 0, %entry ], [ %stat.3, %for.inc28.for.body_crit_edge ]
  %info = getelementptr %struct.ddb, ptr %dev, i32 0, i32 6, i32 %l.086, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc28_crit_edge, label %if.end

for.body.for.inc28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28

if.end:                                           ; preds = %for.body
  %regmap4 = getelementptr inbounds %struct.ddb_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap4, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end.for.inc28_crit_edge, label %lor.lhs.false

if.end.for.inc28_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28

lor.lhs.false:                                    ; preds = %if.end
  %i2c6 = getelementptr inbounds %struct.ddb_regmap, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %i2c6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c6, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %lor.lhs.false.for.inc28_crit_edge, label %if.end9

lor.lhs.false.for.inc28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28

if.end9:                                          ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %8 = ptrtoint ptr %i2c6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c6, align 4
  %num1275 = getelementptr inbounds %struct.ddb_regset, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %num1275 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num1275, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1376.not = icmp eq i32 %11, 0
  br i1 %cmp1376.not, label %if.end9.for.inc28_crit_edge, label %for.body14.lr.ph

if.end9.for.inc28_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28

for.body14.lr.ph:                                 ; preds = %if.end9
  %i2c_buf.i = getelementptr inbounds %struct.ddb_regmap, ptr %3, i32 0, i32 4
  %shl.i = shl i32 %l.086, 28
  br label %for.body14

for.body14:                                       ; preds = %for.inc.for.body14_crit_edge, %for.body14.lr.ph
  %num.180 = phi i32 [ %num.085, %for.body14.lr.ph ], [ %num.2, %for.inc.for.body14_crit_edge ]
  %i.078 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc27, %for.inc.for.body14_crit_edge ]
  %stat.177 = phi i32 [ %stat.084, %for.body14.lr.ph ], [ %stat.2, %for.inc.for.body14_crit_edge ]
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %i2c_mask = getelementptr inbounds %struct.ddb_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %i2c_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i2c_mask, align 4
  %shl = shl nuw i32 1, %i.078
  %and = and i32 %15, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %for.body14.for.inc_crit_edge, label %if.end20

for.body14.for.inc_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end20:                                         ; preds = %for.body14
  %arrayidx22 = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %num.180
  %add = add i32 %i.078, %7
  %call = tail call ptr @ddb_irq_set(ptr noundef %dev, i32 noundef %l.086, i32 noundef %add, ptr noundef nonnull @i2c_handler, ptr noundef %arrayidx22) #6
  %nr.i = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %num.180, i32 1
  %16 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %i.078, ptr %nr.i, align 4
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %arrayidx22, align 8
  %link2.i = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %num.180, i32 3
  %18 = ptrtoint ptr %link2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %l.086, ptr %link2.i, align 4
  %19 = ptrtoint ptr %i2c_buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c_buf.i, align 4
  %size.i = getelementptr inbounds %struct.ddb_regset, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 4
  %bsize.i = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %num.180, i32 7
  %23 = ptrtoint ptr %bsize.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %bsize.i, align 8
  %24 = load ptr, ptr %i2c_buf.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %mul.i = mul i32 %22, %i.078
  %add.i = add i32 %26, %mul.i
  %or.i = or i32 %add.i, %shl.i
  %wbuf.i = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %num.180, i32 6
  %27 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %wbuf.i, align 4
  %rbuf.i = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %num.180, i32 5
  %28 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i, ptr %rbuf.i, align 8
  %29 = ptrtoint ptr %i2c6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c6, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %size10.i = getelementptr inbounds %struct.ddb_regset, ptr %30, i32 0, i32 2
  %33 = ptrtoint ptr %size10.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size10.i, align 4
  %mul11.i = mul i32 %34, %i.078
  %add12.i = add i32 %mul11.i, %32
  %or13.i = or i32 %add12.i, %shl.i
  %regs.i = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %num.180, i32 2
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or13.i, ptr %regs.i, align 8
  %add15.i = add i32 %or13.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 %add15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 320016915) #6, !srcloc !41
  %38 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rbuf.i, align 8
  %shl17.i = shl i32 %39, 16
  %40 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wbuf.i, align 4
  %and19.i = and i32 %41, 65535
  %or20.i = or i32 %and19.i, %shl17.i
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %regs.i, align 8
  %add22.i = add i32 %43, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %44 = tail call i32 @llvm.bswap.i32(i32 %or20.i) #6
  %45 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %46, i32 %add22.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %44) #6, !srcloc !41
  %completion.i = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %num.180, i32 8
  %47 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %completion.i, align 4
  %wait.i.i = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %num.180, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #6
  %adap23.i = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %num.180, i32 4
  %driver_data.i.i.i = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %num.180, i32 4, i32 9, i32 8
  %48 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx22, ptr %driver_data.i.i.i, align 4
  %name.i = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %num.180, i32 4, i32 12
  %49 = ptrtoint ptr %nr24.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr24.i, align 8
  %51 = ptrtoint ptr %link2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %link2.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 20, ptr noundef nonnull @.str, i32 noundef %50, i32 noundef %52, i32 noundef %i.078) #6
  %algo.i = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %num.180, i32 4, i32 2
  %53 = ptrtoint ptr %algo.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @ddb_i2c_algo, ptr %algo.i, align 8
  %algo_data.i = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %num.180, i32 4, i32 3
  %54 = ptrtoint ptr %algo_data.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx22, ptr %algo_data.i, align 4
  %55 = ptrtoint ptr %dev26.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev26.i, align 8
  %parent.i = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %num.180, i32 4, i32 9, i32 1
  %57 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %56, ptr %parent.i, align 8
  %call28.i = tail call i32 @i2c_add_adapter(ptr noundef %adap23.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool24.not = icmp eq i32 %call28.i, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.for.inc28_crit_edge

if.end20.for.inc28_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %num.180, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %for.body14.for.inc_crit_edge
  %stat.2 = phi i32 [ 0, %if.end26 ], [ %stat.177, %for.body14.for.inc_crit_edge ]
  %num.2 = phi i32 [ %inc, %if.end26 ], [ %num.180, %for.body14.for.inc_crit_edge ]
  %inc27 = add nuw i32 %i.078, 1
  %58 = ptrtoint ptr %i2c6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c6, align 4
  %num12 = getelementptr inbounds %struct.ddb_regset, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %num12 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num12, align 4
  %cmp13 = icmp ult i32 %inc27, %61
  br i1 %cmp13, label %for.inc.for.body14_crit_edge, label %for.inc.for.inc28_crit_edge

for.inc.for.inc28_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc28

for.inc.for.body14_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

for.inc28:                                        ; preds = %for.inc.for.inc28_crit_edge, %if.end20.for.inc28_crit_edge, %if.end9.for.inc28_crit_edge, %lor.lhs.false.for.inc28_crit_edge, %if.end.for.inc28_crit_edge, %for.body.for.inc28_crit_edge
  %stat.3 = phi i32 [ %stat.084, %lor.lhs.false.for.inc28_crit_edge ], [ %stat.084, %if.end.for.inc28_crit_edge ], [ %stat.084, %for.body.for.inc28_crit_edge ], [ %stat.084, %if.end9.for.inc28_crit_edge ], [ %call28.i, %if.end20.for.inc28_crit_edge ], [ %stat.2, %for.inc.for.inc28_crit_edge ]
  %num.3 = phi i32 [ %num.085, %lor.lhs.false.for.inc28_crit_edge ], [ %num.085, %if.end.for.inc28_crit_edge ], [ %num.085, %for.body.for.inc28_crit_edge ], [ %num.085, %if.end9.for.inc28_crit_edge ], [ %num.180, %if.end20.for.inc28_crit_edge ], [ %num.2, %for.inc.for.inc28_crit_edge ]
  %inc29 = add nuw nsw i32 %l.086, 1
  %exitcond.not = icmp eq i32 %inc29, 4
  br i1 %exitcond.not, label %for.end30, label %for.inc28.for.body_crit_edge

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end30:                                        ; preds = %for.inc28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.3)
  %tobool31.not = icmp eq i32 %stat.3, 0
  br i1 %tobool31.not, label %if.else, label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.3)
  %cmp3489.not = icmp eq i32 %num.3, 0
  br i1 %cmp3489.not, label %for.cond33.preheader.if.end42_crit_edge, label %for.cond33.preheader.for.body35_crit_edge

for.cond33.preheader.for.body35_crit_edge:        ; preds = %for.cond33.preheader
  br label %for.body35

for.cond33.preheader.if.end42_crit_edge:          ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.cond33.preheader.for.body35_crit_edge
  %j.090 = phi i32 [ %inc40, %for.body35.for.body35_crit_edge ], [ 0, %for.cond33.preheader.for.body35_crit_edge ]
  %adap38 = getelementptr %struct.ddb, ptr %dev, i32 0, i32 12, i32 %j.090, i32 4
  tail call void @i2c_del_adapter(ptr noundef %adap38) #6
  %inc40 = add nuw i32 %j.090, 1
  %exitcond91.not = icmp eq i32 %inc40, %num.3
  br i1 %exitcond91.not, label %for.body35.if.end42_crit_edge, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body35

for.body35.if.end42_crit_edge:                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.else:                                          ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_num = getelementptr inbounds %struct.ddb, ptr %dev, i32 0, i32 11
  %62 = ptrtoint ptr %i2c_num to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %num.3, ptr %i2c_num, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.else, %for.body35.if.end42_crit_edge, %for.cond33.preheader.if.end42_crit_edge
  ret i32 %stat.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ddb_irq_set(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_handler(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr inbounds %struct.ddb_i2c, ptr %priv, i32 0, i32 8
  tail call void @complete(ptr noundef %completion) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddb_i2c_master_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msg, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %msg, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len, align 4
  %conv4 = zext i16 %7 to i32
  %bsize = getelementptr inbounds %struct.ddb_i2c, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bsize, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv4)
  %cmp = icmp ult i32 %9, %conv4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = zext i32 %num to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %num, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb37
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %if.end21, label %if.then8

if.then8:                                         ; preds = %sw.bb
  %regs = getelementptr inbounds %struct.ddb_i2c, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regs, align 8
  %add = add i32 %15, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv4)
  %17 = lshr exact i32 %16, 16
  %regs.i = getelementptr inbounds %struct.ddb, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #6, !srcloc !41
  %20 = and i16 %5, 255
  %conv12 = zext i16 %20 to i32
  %call13 = tail call fastcc i32 @ddb_i2c_cmd(ptr noundef %1, i32 noundef %conv12, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then8.sw.epilog_crit_edge

if.then8.sw.epilog_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end16:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf, align 4
  %rbuf = getelementptr inbounds %struct.ddb_i2c, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %rbuf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rbuf, align 8
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len, align 4
  %conv20 = zext i16 %26 to i32
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 8
  %add.ptr.i132 = getelementptr i8, ptr %28, i32 %24
  tail call void @mmiocpy(ptr noundef %22, ptr noundef %add.ptr.i132, i32 noundef %conv20) #6
  br label %cleanup

if.end21:                                         ; preds = %sw.bb
  %wbuf = getelementptr inbounds %struct.ddb_i2c, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %wbuf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wbuf, align 4
  %buf23 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %31 = ptrtoint ptr %buf23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf23, align 4
  %regs.i133 = getelementptr inbounds %struct.ddb, ptr %3, i32 0, i32 7
  %33 = ptrtoint ptr %regs.i133 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i133, align 8
  %add.ptr.i134 = getelementptr i8, ptr %34, i32 %30
  tail call void @mmiocpy(ptr noundef %add.ptr.i134, ptr noundef %32, i32 noundef %conv4) #6
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %len, align 4
  %conv29 = zext i16 %36 to i32
  %regs30 = getelementptr inbounds %struct.ddb_i2c, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %regs30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %regs30, align 8
  %add31 = add i32 %38, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %conv29) #6
  %40 = ptrtoint ptr %regs.i133 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i133, align 8
  %add.ptr.i136 = getelementptr i8, ptr %41, i32 %add31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %39) #6, !srcloc !41
  %conv.mask130 = and i16 %5, 255
  %conv32 = zext i16 %conv.mask130 to i32
  %call33 = tail call fastcc i32 @ddb_i2c_cmd(ptr noundef %1, i32 noundef %conv32, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end21.cleanup_crit_edge, label %if.end21.sw.epilog_crit_edge

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb37:                                          ; preds = %if.end
  %flags39 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %42 = ptrtoint ptr %flags39 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %flags39, align 2
  %44 = and i16 %43, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp42.not = icmp eq i16 %44, 0
  br i1 %cmp42.not, label %if.end45, label %sw.bb37.sw.epilog_crit_edge

sw.bb37.sw.epilog_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end45:                                         ; preds = %sw.bb37
  %flags47 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %45 = ptrtoint ptr %flags47 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flags47, align 2
  %47 = and i16 %46, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp50.not.not = icmp eq i16 %47, 0
  br i1 %cmp50.not.not, label %if.end45.sw.epilog_crit_edge, label %if.end53

if.end45.sw.epilog_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end53:                                         ; preds = %if.end45
  %len55 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %48 = ptrtoint ptr %len55 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %len55, align 4
  %conv56 = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv56)
  %cmp58 = icmp ult i32 %9, %conv56
  br i1 %cmp58, label %if.end53.sw.epilog_crit_edge, label %if.end61

if.end53.sw.epilog_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end61:                                         ; preds = %if.end53
  %wbuf62 = getelementptr inbounds %struct.ddb_i2c, ptr %1, i32 0, i32 6
  %50 = ptrtoint ptr %wbuf62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wbuf62, align 4
  %buf64 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %52 = ptrtoint ptr %buf64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buf64, align 4
  %regs.i137 = getelementptr inbounds %struct.ddb, ptr %3, i32 0, i32 7
  %54 = ptrtoint ptr %regs.i137 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i137, align 8
  %add.ptr.i138 = getelementptr i8, ptr %55, i32 %51
  tail call void @mmiocpy(ptr noundef %add.ptr.i138, ptr noundef %53, i32 noundef %conv4) #6
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %len, align 4
  %conv70 = zext i16 %57 to i32
  %58 = ptrtoint ptr %len55 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %len55, align 4
  %conv73 = zext i16 %59 to i32
  %shl74 = shl nuw i32 %conv73, 16
  %or = or i32 %shl74, %conv70
  %regs75 = getelementptr inbounds %struct.ddb_i2c, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %regs75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %regs75, align 8
  %add76 = add i32 %61, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %62 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %63 = ptrtoint ptr %regs.i137 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i137, align 8
  %add.ptr.i140 = getelementptr i8, ptr %64, i32 %add76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %62) #6, !srcloc !41
  %conv.mask = and i16 %5, 255
  %conv77 = zext i16 %conv.mask to i32
  %call78 = tail call fastcc i32 @ddb_i2c_cmd(ptr noundef %1, i32 noundef %conv77, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end61.sw.epilog_crit_edge

if.end61.sw.epilog_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end81:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %buf83 = getelementptr %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %65 = ptrtoint ptr %buf83 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %buf83, align 4
  %rbuf84 = getelementptr inbounds %struct.ddb_i2c, ptr %1, i32 0, i32 5
  %67 = ptrtoint ptr %rbuf84 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rbuf84, align 8
  %69 = ptrtoint ptr %len55 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %len55, align 4
  %conv87 = zext i16 %70 to i32
  %71 = ptrtoint ptr %regs.i137 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i137, align 8
  %add.ptr.i142 = getelementptr i8, ptr %72, i32 %68
  tail call void @mmiocpy(ptr noundef %66, ptr noundef %add.ptr.i142, i32 noundef %conv87) #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.end61.sw.epilog_crit_edge, %if.end53.sw.epilog_crit_edge, %if.end45.sw.epilog_crit_edge, %sw.bb37.sw.epilog_crit_edge, %if.end21.sw.epilog_crit_edge, %if.then8.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end81, %if.end21.cleanup_crit_edge, %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %sw.epilog ], [ 2, %if.end81 ], [ 1, %if.end16 ], [ -5, %entry.cleanup_crit_edge ], [ 1, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ddb_i2c_functionality(ptr nocapture noundef readnone %adap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ddb_i2c_cmd(ptr noundef %i2c, i32 noundef %adr, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %shl = shl i32 %adr, 9
  %or = or i32 %shl, %cmd
  %regs = getelementptr inbounds %struct.ddb_i2c, ptr %i2c, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %regs.i = getelementptr inbounds %struct.ddb, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !41
  %completion = getelementptr inbounds %struct.ddb_i2c, ptr %i2c, i32 0, i32 8
  %call = tail call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef 100) #6
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regs, align 8
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr.i74 = getelementptr i8, ptr %10, i32 %8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #6, !srcloc !42
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end34

do.end:                                           ; preds = %entry
  %dev5 = getelementptr inbounds %struct.ddb, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev5, align 8
  %nr = getelementptr inbounds %struct.ddb, ptr %1, i32 0, i32 20
  %15 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr, align 8
  %nr6 = getelementptr inbounds %struct.ddb_i2c, ptr %i2c, i32 0, i32 1
  %17 = ptrtoint ptr %nr6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr6, align 4
  %link = getelementptr inbounds %struct.ddb_i2c, ptr %i2c, i32 0, i32 3
  %19 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.2, i32 noundef %16, i32 noundef %18, i32 noundef %20) #9
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 8
  %add.ptr.i76 = getelementptr i8, ptr %22, i32 96
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #6, !srcloc !42
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  %25 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.8, i32 noundef %24) #9
  %27 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %do.end.if.end_crit_edge, label %if.then13

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %shl15 = shl i32 %28, 28
  %or16 = or i32 %shl15, 96
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 8
  %add.ptr.i78 = getelementptr i8, ptr %30, i32 %or16
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78) #6, !srcloc !42
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  %33 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev5, align 8
  %35 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %link, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.11, i32 noundef %36, i32 noundef %32) #9
  br label %if.end

if.end:                                           ; preds = %if.then13, %do.end.if.end_crit_edge
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %37 = shl nuw nsw i32 %and, 24
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 8
  %add.ptr.i80 = getelementptr i8, ptr %39, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %37) #6, !srcloc !41
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %regs, align 8
  %add27 = add i32 %41, 28
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 8
  %add.ptr.i82 = getelementptr i8, ptr %43, i32 %add27
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #6, !srcloc !42
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  %46 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev5, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.14, i32 noundef %12, i32 noundef %45) #9
  br label %cleanup

if.end34:                                         ; preds = %entry
  %and35 = and i32 %12, 458752
  %48 = zext i32 %and35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and35, label %if.end34.cleanup_crit_edge [
    i32 131072, label %do.end40
    i32 0, label %if.end45
  ]

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %dev41 = getelementptr inbounds %struct.ddb, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev41, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end40, %if.end34.cleanup_crit_edge, %if.else, %if.then24
  %retval.0 = phi i32 [ 0, %if.end45 ], [ -5, %if.else ], [ -5, %if.then24 ], [ -5, %if.end34.cleanup_crit_edge ], [ -5, %do.end40 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ddbridge/ddbridge-i2c.c", i32 189, i32 38}
!2 = !{ptr @init_completion.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../include/linux/completion.h", i32 87, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ddb_i2c_algo, !6, !"ddb_i2c_algo", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/ddbridge/ddbridge-i2c.c", i32 137, i32 35}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/ddbridge/ddbridge-i2c.c", i32 50, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ddb_i2c_cmd._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @ddb_i2c_cmd._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/ddbridge/ddbridge-i2c.c", i32 55, i32 4}
!17 = !{ptr @ddb_i2c_cmd._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @ddb_i2c_cmd._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/ddbridge/ddbridge-i2c.c", i32 61, i32 5}
!21 = !{ptr @ddb_i2c_cmd._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @ddb_i2c_cmd._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/ddbridge/ddbridge-i2c.c", i32 70, i32 5}
!25 = !{ptr @ddb_i2c_cmd._entry.13, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ddb_i2c_cmd._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/ddbridge/ddbridge-i2c.c", i32 78, i32 3}
!29 = !{ptr @ddb_i2c_cmd._entry.16, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ddb_i2c_cmd._entry_ptr.18, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2158296354}
!41 = !{i64 4619849}
!42 = !{i64 4620267}
!43 = !{i64 2158295973}
