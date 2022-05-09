; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c_pt.bc'
source_filename = "../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.st_lsm6dsx_decimator_entry = type { i8, i8 }
%struct.st_lsm6dsx_sensor = type { [32 x i8], i32, ptr, i32, i32, i16, i8, i8, i64, %struct.anon.88 }
%struct.anon.88 = type { ptr, i32, i8 }
%struct.st_lsm6dsx_hw = type { ptr, ptr, [2 x %struct.regulator_bulk_data], i32, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i64, i8, i8, ptr, i8, i8, ptr, [5 x ptr], ptr, %struct.iio_mount_matrix, [3 x %struct.anon.87] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.anon.87 = type { [3 x i16], i64 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.st_lsm6dsx_settings = type { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [16 x %struct.anon.79], [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], [16 x %struct.st_lsm6dsx_reg], [16 x %struct.st_lsm6dsx_reg], %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings }
%struct.anon.79 = type { i32, ptr, i8 }
%struct.anon.80 = type { ptr, i32 }
%struct.anon.81 = type { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg }
%struct.st_lsm6dsx_reg = type { i8, i8 }
%struct.st_lsm6dsx_odr_table_entry = type { %struct.st_lsm6dsx_reg, [8 x %struct.st_lsm6dsx_odr], i32 }
%struct.st_lsm6dsx_odr = type { i32, i8 }
%struct.st_lsm6dsx_fs_table_entry = type { %struct.st_lsm6dsx_reg, [4 x %struct.st_lsm6dsx_fs], i32 }
%struct.st_lsm6dsx_fs = type { i32, i8 }
%struct.st_lsm6dsx_fifo_ops = type { ptr, ptr, %struct.anon.82, %struct.anon.83, i16, i8 }
%struct.anon.82 = type { i8, i16 }
%struct.anon.83 = type { i8, i16 }
%struct.st_lsm6dsx_hw_ts_settings = type { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, i8 }
%struct.st_lsm6dsx_shub_settings = type { %struct.st_lsm6dsx_reg, %struct.anon.84, %struct.anon.85, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, i8, %struct.anon.86, i8, i8, i8, i8 }
%struct.anon.84 = type { i8, i8, i8 }
%struct.anon.85 = type { i8, i8, i8 }
%struct.anon.86 = type { i8, i8 }
%struct.st_lsm6dsx_event_settings = type { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, i8, i8, i8, i8, i8 }

@st_lsm6dsx_read_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 365, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to read fifo status (err=%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st_lsm6dsx_read_fifo\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_lsm6dsx_read_fifo._entry_ptr = internal global ptr @st_lsm6dsx_read_fifo._entry, section ".printk_index", align 4
@st_lsm6dsx_read_fifo._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 388, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to read pattern from fifo (err=%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@st_lsm6dsx_read_fifo._entry_ptr.7 = internal global ptr @st_lsm6dsx_read_fifo._entry.5, section ".printk_index", align 4
@st_lsm6dsx_read_fifo._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 487, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to reset hw ts (err=%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@st_lsm6dsx_read_fifo._entry_ptr.10 = internal global ptr @st_lsm6dsx_read_fifo._entry.8, section ".printk_index", align 4
@st_lsm6dsx_read_tagged_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.11, ptr @.str.2, i32 579, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"st_lsm6dsx_read_tagged_fifo\00", [36 x i8] zeroinitializer }, align 32
@st_lsm6dsx_read_tagged_fifo._entry_ptr = internal global ptr @st_lsm6dsx_read_tagged_fifo._entry, section ".printk_index", align 4
@st_lsm6dsx_read_tagged_fifo._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.11, ptr @.str.2, i32 597, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@st_lsm6dsx_read_tagged_fifo._entry_ptr.13 = internal global ptr @st_lsm6dsx_read_tagged_fifo._entry.12, section ".printk_index", align 4
@st_lsm6dsx_buffer_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @st_lsm6dsx_buffer_preenable, ptr null, ptr null, ptr @st_lsm6dsx_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@st_lsm6dsx_decimator_table = internal constant { [8 x %struct.st_lsm6dsx_decimator_entry], [16 x i8] } { [8 x %struct.st_lsm6dsx_decimator_entry] [%struct.st_lsm6dsx_decimator_entry zeroinitializer, %struct.st_lsm6dsx_decimator_entry { i8 1, i8 1 }, %struct.st_lsm6dsx_decimator_entry { i8 2, i8 2 }, %struct.st_lsm6dsx_decimator_entry { i8 3, i8 3 }, %struct.st_lsm6dsx_decimator_entry { i8 4, i8 4 }, %struct.st_lsm6dsx_decimator_entry { i8 8, i8 5 }, %struct.st_lsm6dsx_decimator_entry { i8 16, i8 6 }, %struct.st_lsm6dsx_decimator_entry { i8 32, i8 7 }], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 5, i64 1, i64 2, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.14 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 8, i64 16, i64 32]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 364, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 386, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 486, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 578, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 595, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"st_lsm6dsx_buffer_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 735, i32 42 }
@___asan_gen_.57 = private unnamed_addr constant [27 x i8] c"st_lsm6dsx_decimator_table\00", align 1
@___asan_gen_.58 = private constant [50 x i8] c"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 70, i32 35 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @st_lsm6dsx_read_fifo._entry, ptr @st_lsm6dsx_read_fifo._entry.5, ptr @st_lsm6dsx_read_fifo._entry.8, ptr @st_lsm6dsx_read_fifo._entry_ptr, ptr @st_lsm6dsx_read_fifo._entry_ptr.10, ptr @st_lsm6dsx_read_fifo._entry_ptr.7, ptr @st_lsm6dsx_read_tagged_fifo._entry, ptr @st_lsm6dsx_read_tagged_fifo._entry.12, ptr @st_lsm6dsx_read_tagged_fifo._entry_ptr, ptr @st_lsm6dsx_read_tagged_fifo._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @st_lsm6dsx_buffer_ops, ptr @st_lsm6dsx_decimator_table], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_read_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_read_fifo._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_read_fifo._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_read_tagged_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_read_tagged_fifo._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_decimator_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_lsm6dsx_update_watermark(ptr noundef readonly %sensor, i16 noundef zeroext %watermark) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  %wdata = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wdata) #5
  %3 = ptrtoint ptr %wdata to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %wdata, align 2, !annotation !36
  %sip = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %sip to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sip, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %enable_mask = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 8
  %arrayidx = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %for.cond.preheader.for.inc_crit_edge, label %if.end4

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end4:                                          ; preds = %for.cond.preheader
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 8
  %10 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable_mask, align 1
  %conv = zext i8 %11 to i32
  %id = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 8
  %shl = shl nuw i32 1, %13
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end4.for.inc_crit_edge, label %if.end9

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end9:                                          ; preds = %if.end4
  %cmp10 = icmp eq ptr %9, %sensor
  br i1 %cmp10, label %if.end9.for.inc_crit_edge, label %cond.false

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cond.false:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %watermark13 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %watermark13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %watermark13, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.false, %if.end9.for.inc_crit_edge, %if.end4.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %fifo_watermark.1 = phi i16 [ -1, %if.end4.for.inc_crit_edge ], [ -1, %for.cond.preheader.for.inc_crit_edge ], [ %15, %cond.false ], [ %watermark, %if.end9.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1, align 4
  %tobool2.not.1 = icmp eq ptr %17, null
  br i1 %tobool2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end4.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end4.1:                                        ; preds = %for.inc
  %priv.i.1 = getelementptr inbounds %struct.iio_dev, ptr %17, i32 0, i32 19
  %18 = ptrtoint ptr %priv.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv.i.1, align 8
  %20 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %enable_mask, align 1
  %conv.1 = zext i8 %21 to i32
  %id.1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %id.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.1, align 8
  %shl.1 = shl nuw i32 1, %23
  %and.1 = and i32 %shl.1, %conv.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool7.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool7.not.1, label %if.end4.1.for.inc.1_crit_edge, label %if.end9.1

if.end4.1.for.inc.1_crit_edge:                    ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end9.1:                                        ; preds = %if.end4.1
  %cmp10.1 = icmp eq ptr %19, %sensor
  br i1 %cmp10.1, label %if.end9.1.cond.end.1_crit_edge, label %cond.false.1

if.end9.1.cond.end.1_crit_edge:                   ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.1

cond.false.1:                                     ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #7
  %watermark13.1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %19, i32 0, i32 5
  %24 = ptrtoint ptr %watermark13.1 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %watermark13.1, align 8
  br label %cond.end.1

cond.end.1:                                       ; preds = %cond.false.1, %if.end9.1.cond.end.1_crit_edge
  %cond.in.1 = phi i16 [ %25, %cond.false.1 ], [ %watermark, %if.end9.1.cond.end.1_crit_edge ]
  %26 = tail call i16 @llvm.umin.i16(i16 %fifo_watermark.1, i16 %cond.in.1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %cond.end.1, %if.end4.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %fifo_watermark.1.1 = phi i16 [ %26, %cond.end.1 ], [ %fifo_watermark.1, %if.end4.1.for.inc.1_crit_edge ], [ %fifo_watermark.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 2
  %27 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.2, align 4
  %tobool2.not.2 = icmp eq ptr %28, null
  br i1 %tobool2.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end4.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end4.2:                                        ; preds = %for.inc.1
  %priv.i.2 = getelementptr inbounds %struct.iio_dev, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %priv.i.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv.i.2, align 8
  %31 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %enable_mask, align 1
  %conv.2 = zext i8 %32 to i32
  %id.2 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %id.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id.2, align 8
  %shl.2 = shl nuw i32 1, %34
  %and.2 = and i32 %shl.2, %conv.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool7.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool7.not.2, label %if.end4.2.for.inc.2_crit_edge, label %if.end9.2

if.end4.2.for.inc.2_crit_edge:                    ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end9.2:                                        ; preds = %if.end4.2
  %cmp10.2 = icmp eq ptr %30, %sensor
  br i1 %cmp10.2, label %if.end9.2.cond.end.2_crit_edge, label %cond.false.2

if.end9.2.cond.end.2_crit_edge:                   ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.2

cond.false.2:                                     ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #7
  %watermark13.2 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %30, i32 0, i32 5
  %35 = ptrtoint ptr %watermark13.2 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %watermark13.2, align 8
  br label %cond.end.2

cond.end.2:                                       ; preds = %cond.false.2, %if.end9.2.cond.end.2_crit_edge
  %cond.in.2 = phi i16 [ %36, %cond.false.2 ], [ %watermark, %if.end9.2.cond.end.2_crit_edge ]
  %37 = tail call i16 @llvm.umin.i16(i16 %fifo_watermark.1.1, i16 %cond.in.2)
  br label %for.inc.2

for.inc.2:                                        ; preds = %cond.end.2, %if.end4.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %fifo_watermark.1.2 = phi i16 [ %37, %cond.end.2 ], [ %fifo_watermark.1.1, %if.end4.2.for.inc.2_crit_edge ], [ %fifo_watermark.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 3
  %38 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.3, align 4
  %tobool2.not.3 = icmp eq ptr %39, null
  br i1 %tobool2.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end4.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.end4.3:                                        ; preds = %for.inc.2
  %priv.i.3 = getelementptr inbounds %struct.iio_dev, ptr %39, i32 0, i32 19
  %40 = ptrtoint ptr %priv.i.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %priv.i.3, align 8
  %42 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %enable_mask, align 1
  %conv.3 = zext i8 %43 to i32
  %id.3 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %id.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id.3, align 8
  %shl.3 = shl nuw i32 1, %45
  %and.3 = and i32 %shl.3, %conv.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool7.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool7.not.3, label %if.end4.3.for.inc.3_crit_edge, label %if.end9.3

if.end4.3.for.inc.3_crit_edge:                    ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.end9.3:                                        ; preds = %if.end4.3
  %cmp10.3 = icmp eq ptr %41, %sensor
  br i1 %cmp10.3, label %if.end9.3.cond.end.3_crit_edge, label %cond.false.3

if.end9.3.cond.end.3_crit_edge:                   ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.3

cond.false.3:                                     ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #7
  %watermark13.3 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %41, i32 0, i32 5
  %46 = ptrtoint ptr %watermark13.3 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %watermark13.3, align 8
  br label %cond.end.3

cond.end.3:                                       ; preds = %cond.false.3, %if.end9.3.cond.end.3_crit_edge
  %cond.in.3 = phi i16 [ %47, %cond.false.3 ], [ %watermark, %if.end9.3.cond.end.3_crit_edge ]
  %48 = tail call i16 @llvm.umin.i16(i16 %fifo_watermark.1.2, i16 %cond.in.3)
  br label %for.inc.3

for.inc.3:                                        ; preds = %cond.end.3, %if.end4.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %fifo_watermark.1.3 = phi i16 [ %48, %cond.end.3 ], [ %fifo_watermark.1.2, %if.end4.3.for.inc.3_crit_edge ], [ %fifo_watermark.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %arrayidx.4 = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 4
  %49 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.4, align 4
  %tobool2.not.4 = icmp eq ptr %50, null
  br i1 %tobool2.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end4.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.end4.4:                                        ; preds = %for.inc.3
  %priv.i.4 = getelementptr inbounds %struct.iio_dev, ptr %50, i32 0, i32 19
  %51 = ptrtoint ptr %priv.i.4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv.i.4, align 8
  %53 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %enable_mask, align 1
  %conv.4 = zext i8 %54 to i32
  %id.4 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %id.4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id.4, align 8
  %shl.4 = shl nuw i32 1, %56
  %and.4 = and i32 %shl.4, %conv.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool7.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool7.not.4, label %if.end4.4.for.inc.4_crit_edge, label %if.end9.4

if.end4.4.for.inc.4_crit_edge:                    ; preds = %if.end4.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.end9.4:                                        ; preds = %if.end4.4
  %cmp10.4 = icmp eq ptr %52, %sensor
  br i1 %cmp10.4, label %if.end9.4.cond.end.4_crit_edge, label %cond.false.4

if.end9.4.cond.end.4_crit_edge:                   ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.4

cond.false.4:                                     ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #7
  %watermark13.4 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %52, i32 0, i32 5
  %57 = ptrtoint ptr %watermark13.4 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %watermark13.4, align 8
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.4, %if.end9.4.cond.end.4_crit_edge
  %cond.in.4 = phi i16 [ %58, %cond.false.4 ], [ %watermark, %if.end9.4.cond.end.4_crit_edge ]
  %59 = tail call i16 @llvm.umin.i16(i16 %fifo_watermark.1.3, i16 %cond.in.4)
  br label %for.inc.4

for.inc.4:                                        ; preds = %cond.end.4, %if.end4.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %fifo_watermark.1.4 = phi i16 [ %59, %cond.end.4 ], [ %fifo_watermark.1.3, %if.end4.4.for.inc.4_crit_edge ], [ %fifo_watermark.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 18
  %60 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %settings, align 4
  %th_wl = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %61, i32 0, i32 11, i32 5
  %62 = ptrtoint ptr %th_wl to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %th_wl, align 2
  %page_lock = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock, i32 noundef 0) #5
  %regmap = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %66 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %settings, align 4
  %fifo_th = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %67, i32 0, i32 11, i32 2
  %68 = ptrtoint ptr %fifo_th to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %fifo_th, align 4
  %conv53 = zext i8 %69 to i32
  %add = add nuw nsw i32 %conv53, 1
  %call54 = call i32 @regmap_read(ptr noundef %65, i32 noundef %add, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %for.inc.4.out_crit_edge, label %if.end58

for.inc.4.out_crit_edge:                          ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end58:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  %conv30 = zext i16 %fifo_watermark.1.4 to i32
  %conv31 = zext i8 %5 to i32
  %70 = call i32 @llvm.umax.i32(i32 %conv30, i32 %conv31)
  %.lhs.trunc = trunc i32 %70 to i16
  %.rhs.trunc = zext i8 %5 to i16
  %71 = urem i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext i16 %71 to i32
  %mul = sub nsw i32 %70, %.zext
  %conv48 = zext i8 %63 to i32
  %mul49 = mul nsw i32 %mul, %conv48
  %72 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %settings, align 4
  %mask = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %73, i32 0, i32 11, i32 2, i32 1
  %74 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %mask, align 2
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data, align 4
  %shl62 = shl i32 %77, 8
  %conv63 = zext i16 %75 to i32
  %neg = xor i32 %conv63, -1
  %and64 = and i32 %shl62, %neg
  %and67 = and i32 %mul49, %conv63
  %or = or i32 %and64, %and67
  %conv68 = trunc i32 %or to i16
  %78 = call i16 @llvm.bswap.i16(i16 %conv68)
  %79 = ptrtoint ptr %wdata to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %wdata, align 2
  %80 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap, align 4
  %fifo_th72 = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %73, i32 0, i32 11, i32 2
  %82 = ptrtoint ptr %fifo_th72 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %fifo_th72, align 4
  %conv74 = zext i8 %83 to i32
  %call75 = call i32 @regmap_bulk_write(ptr noundef %81, i32 noundef %conv74, ptr noundef nonnull %wdata, i32 noundef 2) #5
  br label %out

out:                                              ; preds = %if.end58, %for.inc.4.out_crit_edge
  %err.0 = phi i32 [ %call54, %for.inc.4.out_crit_edge ], [ %call75, %if.end58 ]
  call void @mutex_unlock(ptr noundef %page_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wdata) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_lsm6dsx_resume_fifo(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @st_lsm6dsx_reset_hw_ts(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %page_lock.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock.i.i, i32 noundef 0) #5
  %regmap.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 10, i32 noundef 7, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @mutex_unlock(ptr noundef %page_lock.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st_lsm6dsx_reset_hw_ts(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %page_lock.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock.i, i32 noundef 0) #5
  %regmap.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 66, i32 noundef 170) #5
  tail call void @mutex_unlock(ptr noundef %page_lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.preheader.for.inc_crit_edge, label %if.end3

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end3:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %call9 = tail call i64 @iio_get_time_ns(ptr noundef nonnull %3) #5
  %ts_ref = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %ts_ref to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call9, ptr %ts_ref, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %8, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end3.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end3.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i.1 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %priv.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i.1, align 8
  %call9.1 = tail call i64 @iio_get_time_ns(ptr noundef nonnull %8) #5
  %ts_ref.1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %ts_ref.1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call9.1, ptr %ts_ref.1, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end3.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %13, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end3.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end3.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i.2 = getelementptr inbounds %struct.iio_dev, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %priv.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i.2, align 8
  %call9.2 = tail call i64 @iio_get_time_ns(ptr noundef nonnull %13) #5
  %ts_ref.2 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %ts_ref.2 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call9.2, ptr %ts_ref.2, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end3.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 3
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %18, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end3.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.end3.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i.3 = getelementptr inbounds %struct.iio_dev, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %priv.i.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i.3, align 8
  %call9.3 = tail call i64 @iio_get_time_ns(ptr noundef nonnull %18) #5
  %ts_ref.3 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %ts_ref.3 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call9.3, ptr %ts_ref.3, align 8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end3.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 4
  %22 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %23, null
  br i1 %tobool.not.4, label %for.inc.3.cleanup_crit_edge, label %if.end3.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i.4 = getelementptr inbounds %struct.iio_dev, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %priv.i.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i.4, align 8
  %call9.4 = tail call i64 @iio_get_time_ns(ptr noundef nonnull %23) #5
  %ts_ref.4 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %ts_ref.4 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call9.4, ptr %ts_ref.4, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3.4, %for.inc.3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end3.4 ], [ 0, %for.inc.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_lsm6dsx_read_fifo(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %fifo_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sip1 = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 12
  %0 = ptrtoint ptr %sip1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sip1, align 1
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 6
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 18
  %2 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %settings, align 4
  %mask = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %3, i32 0, i32 11, i32 3, i32 1
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mask, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fifo_status) #5
  %6 = ptrtoint ptr %fifo_status to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %fifo_status, align 2, !annotation !36
  %fifo_diff5 = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %3, i32 0, i32 11, i32 3
  %7 = ptrtoint ptr %fifo_diff5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %fifo_diff5, align 4
  %conv6 = zext i8 %8 to i32
  %page_lock.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock.i, i32 noundef 0) #5
  %regmap.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef %conv6, ptr noundef nonnull %fifo_status, i32 noundef 2) #5
  call void @mutex_unlock(ptr noundef %page_lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str, i32 noundef %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %fifo_status to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fifo_status, align 2
  %15 = and i16 %14, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not = icmp eq i16 %15, 0
  br i1 %tobool.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %16 = call i16 @llvm.bswap.i16(i16 %14)
  %and13288 = and i16 %16, %5
  %mul14 = shl i16 %and13288, 1
  %.rhs.trunc = trunc i32 %mul to i16
  %17 = urem i16 %mul14, %.rhs.trunc
  %conv20 = sub i16 %mul14, %17
  %iio_devs = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17
  %arrayidx = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 8
  %22 = ptrtoint ptr %iio_devs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iio_devs, align 8
  %priv.i297 = getelementptr inbounds %struct.iio_dev, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %priv.i297 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i297, align 8
  %arrayidx26 = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 2
  %26 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx26, align 8
  %tobool27.not = icmp eq ptr %27, null
  br i1 %tobool27.not, label %if.end10.if.end32_crit_edge, label %if.then28

if.end10.if.end32_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then28:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i298 = getelementptr inbounds %struct.iio_dev, ptr %27, i32 0, i32 19
  %28 = ptrtoint ptr %priv.i298 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i298, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end10.if.end32_crit_edge
  %ext_sensor.0 = phi ptr [ %29, %if.then28 ], [ null, %if.end10.if.end32_crit_edge ]
  %conv33 = zext i16 %conv20 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %mul14, i16 %17)
  %cmp34341.not = icmp eq i16 %mul14, %17
  br i1 %cmp34341.not, label %if.end32.cleanup_crit_edge, label %for.body.lr.ph

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end32
  %buff = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp14.not.i = icmp eq i8 %1, 0
  %tobool46.not = icmp eq ptr %ext_sensor.0, null
  %sip47 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %ext_sensor.0, i32 0, i32 7
  %sip49 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %25, i32 0, i32 7
  %sip51 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %21, i32 0, i32 7
  %ts_sip53 = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 11
  %decimator = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %25, i32 0, i32 6
  %scan = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 20
  %decimator73 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %21, i32 0, i32 6
  %arrayidx79 = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 20, i32 1
  %decimator89 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %ext_sensor.0, i32 0, i32 6
  %arrayidx95 = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 20, i32 2
  %ts_gain = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 10
  %ts_ref = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %25, i32 0, i32 8
  %ts_ref154 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %21, i32 0, i32 8
  %ts_ref171 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %ext_sensor.0, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ts.0344 = phi i64 [ 0, %for.body.lr.ph ], [ %ts.1.lcssa, %for.inc.for.body_crit_edge ]
  %reset_ts.0.off0343 = phi i1 [ false, %for.body.lr.ph ], [ %reset_ts.1.off0.lcssa, %for.inc.for.body_crit_edge ]
  %read_len.0342 = phi i32 [ 0, %for.body.lr.ph ], [ %add177, %for.inc.for.body_crit_edge ]
  %30 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buff, align 4
  br i1 %cmp14.not.i, label %for.body.if.end45_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

while.cond.i:                                     ; preds = %while.body.i
  %add.i = add i32 %32, %read_len.015.i
  %cmp.i = icmp ult i32 %add.i, %mul
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %while.cond.i.if.end45_crit_edge

while.cond.i.if.end45_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %read_len.015.i = phi i32 [ %add.i, %while.cond.i.while.body.i_crit_edge ], [ 0, %for.body.while.body.i_crit_edge ]
  %sub.i = sub i32 %mul, %read_len.015.i
  %32 = call i32 @llvm.umin.i32(i32 %sub.i, i32 30) #5
  %add.ptr.i = getelementptr i8, ptr %31, i32 %read_len.015.i
  call void @mutex_lock_nested(ptr noundef %page_lock.i, i32 noundef 0) #5
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %34, i32 noundef 62, ptr noundef %add.ptr.i, i32 noundef %32) #5
  call void @mutex_unlock(ptr noundef %page_lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %do.end43, label %while.cond.i

do.end43:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.6, i32 noundef %call.i.i) #8
  br label %cleanup

if.end45:                                         ; preds = %while.cond.i.if.end45_crit_edge, %for.body.if.end45_crit_edge
  br i1 %tobool46.not, label %if.end45.cond.end_crit_edge, label %cond.true

if.end45.cond.end_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %sip47 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sip47, align 1
  %conv48 = zext i8 %38 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end45.cond.end_crit_edge
  %cond = phi i32 [ %conv48, %cond.true ], [ 0, %if.end45.cond.end_crit_edge ]
  %39 = ptrtoint ptr %sip49 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %sip49, align 1
  %41 = ptrtoint ptr %sip51 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %sip51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp55324 = icmp ne i8 %42, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp57325 = icmp ne i8 %40, 0
  %or.cond326 = select i1 %cmp55324, i1 true, i1 %cmp57325
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp59327 = icmp ne i32 %cond, 0
  %or.cond295328 = select i1 %or.cond326, i1 true, i1 %cmp59327
  br i1 %or.cond295328, label %while.body.preheader, label %cond.end.for.inc_crit_edge

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

while.body.preheader:                             ; preds = %cond.end
  %43 = ptrtoint ptr %ts_sip53 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ts_sip53, align 8
  %conv54 = zext i8 %44 to i32
  %conv52 = zext i8 %42 to i32
  %conv50 = zext i8 %40 to i32
  br label %while.body

while.body:                                       ; preds = %if.end175.while.body_crit_edge, %while.body.preheader
  %cmp59339 = phi i1 [ %cmp59, %if.end175.while.body_crit_edge ], [ %cmp59327, %while.body.preheader ]
  %cmp57338 = phi i1 [ %cmp57, %if.end175.while.body_crit_edge ], [ %cmp57325, %while.body.preheader ]
  %cmp55337 = phi i1 [ %cmp55, %if.end175.while.body_crit_edge ], [ %cmp55324, %while.body.preheader ]
  %sip.0336 = phi i32 [ %inc, %if.end175.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %ts.1335 = phi i64 [ %ts.2, %if.end175.while.body_crit_edge ], [ %ts.0344, %while.body.preheader ]
  %reset_ts.1.off0334 = phi i1 [ %reset_ts.3.off0, %if.end175.while.body_crit_edge ], [ %reset_ts.0.off0343, %while.body.preheader ]
  %offset.0333 = phi i32 [ %offset.4, %if.end175.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %ext_sip.0332 = phi i32 [ %ext_sip.1, %if.end175.while.body_crit_edge ], [ %cond, %while.body.preheader ]
  %ts_sip.0331 = phi i32 [ %dec, %if.end175.while.body_crit_edge ], [ %conv54, %while.body.preheader ]
  %gyro_sip.0330 = phi i32 [ %gyro_sip.1, %if.end175.while.body_crit_edge ], [ %conv50, %while.body.preheader ]
  %acc_sip.0329 = phi i32 [ %acc_sip.1, %if.end175.while.body_crit_edge ], [ %conv52, %while.body.preheader ]
  br i1 %cmp57338, label %land.lhs.true, label %while.body.if.end69_crit_edge

while.body.if.end69_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

land.lhs.true:                                    ; preds = %while.body
  %45 = ptrtoint ptr %decimator to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %decimator, align 2
  %conv63 = zext i8 %46 to i32
  %rem = srem i32 %sip.0336, %conv63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool64.not = icmp eq i32 %rem, 0
  br i1 %tobool64.not, label %if.then65, label %land.lhs.true.if.end69_crit_edge

land.lhs.true.if.end69_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then65:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buff, align 4
  %arrayidx68 = getelementptr i8, ptr %48, i32 %offset.0333
  %49 = call ptr @memcpy(ptr %scan, ptr %arrayidx68, i32 6)
  %add = add i32 %offset.0333, 6
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %land.lhs.true.if.end69_crit_edge, %while.body.if.end69_crit_edge
  %offset.1 = phi i32 [ %offset.0333, %land.lhs.true.if.end69_crit_edge ], [ %add, %if.then65 ], [ %offset.0333, %while.body.if.end69_crit_edge ]
  br i1 %cmp55337, label %land.lhs.true72, label %if.end69.if.end85_crit_edge

if.end69.if.end85_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

land.lhs.true72:                                  ; preds = %if.end69
  %50 = ptrtoint ptr %decimator73 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %decimator73, align 2
  %conv74 = zext i8 %51 to i32
  %rem75 = srem i32 %sip.0336, %conv74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem75)
  %tobool76.not = icmp eq i32 %rem75, 0
  br i1 %tobool76.not, label %if.then77, label %land.lhs.true72.if.end85_crit_edge

land.lhs.true72.if.end85_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

if.then77:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buff, align 4
  %arrayidx83 = getelementptr i8, ptr %53, i32 %offset.1
  %54 = call ptr @memcpy(ptr %arrayidx79, ptr %arrayidx83, i32 6)
  %add84 = add i32 %offset.1, 6
  br label %if.end85

if.end85:                                         ; preds = %if.then77, %land.lhs.true72.if.end85_crit_edge, %if.end69.if.end85_crit_edge
  %offset.2 = phi i32 [ %offset.1, %land.lhs.true72.if.end85_crit_edge ], [ %add84, %if.then77 ], [ %offset.1, %if.end69.if.end85_crit_edge ]
  br i1 %cmp59339, label %land.lhs.true88, label %if.end85.if.end101_crit_edge

if.end85.if.end101_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

land.lhs.true88:                                  ; preds = %if.end85
  %55 = ptrtoint ptr %decimator89 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %decimator89, align 2
  %conv90 = zext i8 %56 to i32
  %rem91 = srem i32 %sip.0336, %conv90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem91)
  %tobool92.not = icmp eq i32 %rem91, 0
  br i1 %tobool92.not, label %if.then93, label %land.lhs.true88.if.end101_crit_edge

land.lhs.true88.if.end101_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101

if.then93:                                        ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buff, align 4
  %arrayidx99 = getelementptr i8, ptr %58, i32 %offset.2
  %59 = call ptr @memcpy(ptr %arrayidx95, ptr %arrayidx99, i32 6)
  %add100 = add i32 %offset.2, 6
  br label %if.end101

if.end101:                                        ; preds = %if.then93, %land.lhs.true88.if.end101_crit_edge, %if.end85.if.end101_crit_edge
  %offset.3 = phi i32 [ %offset.2, %land.lhs.true88.if.end101_crit_edge ], [ %add100, %if.then93 ], [ %offset.2, %if.end85.if.end101_crit_edge ]
  %dec = add i32 %ts_sip.0331, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ts_sip.0331)
  %cmp102 = icmp sgt i32 %ts_sip.0331, 0
  br i1 %cmp102, label %if.then104, label %if.end101.if.end125_crit_edge

if.end101.if.end125_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

if.then104:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buff, align 4
  %arrayidx107 = getelementptr i8, ptr %61, i32 %offset.3
  %62 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load1_noabort(i32 %62)
  %data.sroa.0.0.copyload = load i8, ptr %arrayidx107, align 1
  %data.sroa.5.0.arrayidx107.sroa_idx = getelementptr inbounds i8, ptr %arrayidx107, i32 1
  %63 = ptrtoint ptr %data.sroa.5.0.arrayidx107.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %63)
  %data.sroa.5.0.copyload = load i8, ptr %data.sroa.5.0.arrayidx107.sroa_idx, align 1
  %data.sroa.8.0.arrayidx107.sroa_idx = getelementptr inbounds i8, ptr %arrayidx107, i32 3
  %64 = ptrtoint ptr %data.sroa.8.0.arrayidx107.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %64)
  %data.sroa.8.0.copyload = load i8, ptr %data.sroa.8.0.arrayidx107.sroa_idx, align 1
  %conv109 = zext i8 %data.sroa.5.0.copyload to i32
  %shl = shl nuw nsw i32 %conv109, 16
  %conv111 = zext i8 %data.sroa.0.0.copyload to i32
  %shl112 = shl nuw nsw i32 %conv111, 8
  %or = or i32 %shl, %shl112
  %conv114 = zext i8 %data.sroa.8.0.copyload to i32
  %or115 = or i32 %or, %conv114
  %conv116 = zext i32 %or115 to i64
  %reset_ts.1.off0.not = xor i1 %reset_ts.1.off0334, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 16711679, i32 %or115)
  %cmp119 = icmp ugt i32 %or115, 16711679
  %or.cond296 = select i1 %reset_ts.1.off0.not, i1 %cmp119, i1 false
  %spec.select = or i1 %reset_ts.1.off0334, %or.cond296
  %65 = ptrtoint ptr %ts_gain to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %ts_gain, align 8
  %mul123 = mul i64 %66, %conv116
  %add124 = add i32 %offset.3, 6
  br label %if.end125

if.end125:                                        ; preds = %if.then104, %if.end101.if.end125_crit_edge
  %offset.4 = phi i32 [ %add124, %if.then104 ], [ %offset.3, %if.end101.if.end125_crit_edge ]
  %reset_ts.3.off0 = phi i1 [ %spec.select, %if.then104 ], [ %reset_ts.1.off0334, %if.end101.if.end125_crit_edge ]
  %ts.2 = phi i64 [ %mul123, %if.then104 ], [ %ts.1335, %if.end101.if.end125_crit_edge ]
  br i1 %cmp57338, label %land.lhs.true128, label %if.end125.if.end141_crit_edge

if.end125.if.end141_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end141

land.lhs.true128:                                 ; preds = %if.end125
  %67 = ptrtoint ptr %decimator to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %decimator, align 2
  %conv130 = zext i8 %68 to i32
  %rem131 = srem i32 %sip.0336, %conv130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem131)
  %tobool132.not = icmp eq i32 %rem131, 0
  br i1 %tobool132.not, label %if.then133, label %land.lhs.true128.if.end141_crit_edge

land.lhs.true128.if.end141_crit_edge:             ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end141

if.then133:                                       ; preds = %land.lhs.true128
  %69 = ptrtoint ptr %iio_devs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %iio_devs, align 8
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %scan_timestamp.i, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i, label %if.then133.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.then133.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %ts_ref to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %ts_ref, align 8
  %add138 = add i64 %74, %ts.2
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %70, i32 0, i32 4
  %75 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %76, 3
  %sub.i299 = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i299
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %add138, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.then133.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i300 = call i32 @iio_push_to_buffers(ptr noundef %70, ptr noundef %scan) #5
  %dec140 = add nsw i32 %gyro_sip.0330, -1
  br label %if.end141

if.end141:                                        ; preds = %iio_push_to_buffers_with_timestamp.exit, %land.lhs.true128.if.end141_crit_edge, %if.end125.if.end141_crit_edge
  %gyro_sip.1 = phi i32 [ %gyro_sip.0330, %land.lhs.true128.if.end141_crit_edge ], [ %dec140, %iio_push_to_buffers_with_timestamp.exit ], [ 0, %if.end125.if.end141_crit_edge ]
  br i1 %cmp55337, label %land.lhs.true144, label %if.end141.if.end158_crit_edge

if.end141.if.end158_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end158

land.lhs.true144:                                 ; preds = %if.end141
  %78 = ptrtoint ptr %decimator73 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %decimator73, align 2
  %conv146 = zext i8 %79 to i32
  %rem147 = srem i32 %sip.0336, %conv146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem147)
  %tobool148.not = icmp eq i32 %rem147, 0
  br i1 %tobool148.not, label %if.then149, label %land.lhs.true144.if.end158_crit_edge

land.lhs.true144.if.end158_crit_edge:             ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end158

if.then149:                                       ; preds = %land.lhs.true144
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx, align 4
  %scan_timestamp.i301 = getelementptr inbounds %struct.iio_dev, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %scan_timestamp.i301 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %scan_timestamp.i301, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i302 = icmp eq i8 %83, 0
  br i1 %tobool.not.i302, label %if.then149.iio_push_to_buffers_with_timestamp.exit309_crit_edge, label %if.then.i307

if.then149.iio_push_to_buffers_with_timestamp.exit309_crit_edge: ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit309

if.then.i307:                                     ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %ts_ref154 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %ts_ref154, align 8
  %add155 = add i64 %85, %ts.2
  %scan_bytes.i303 = getelementptr inbounds %struct.iio_dev, ptr %81, i32 0, i32 4
  %86 = ptrtoint ptr %scan_bytes.i303 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %scan_bytes.i303, align 4
  %div1.i304 = lshr i32 %87, 3
  %sub.i305 = add nsw i32 %div1.i304, -1
  %arrayidx.i306 = getelementptr i64, ptr %arrayidx79, i32 %sub.i305
  %88 = ptrtoint ptr %arrayidx.i306 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %add155, ptr %arrayidx.i306, align 8
  br label %iio_push_to_buffers_with_timestamp.exit309

iio_push_to_buffers_with_timestamp.exit309:       ; preds = %if.then.i307, %if.then149.iio_push_to_buffers_with_timestamp.exit309_crit_edge
  %call.i308 = call i32 @iio_push_to_buffers(ptr noundef %81, ptr noundef %arrayidx79) #5
  %dec157 = add nsw i32 %acc_sip.0329, -1
  br label %if.end158

if.end158:                                        ; preds = %iio_push_to_buffers_with_timestamp.exit309, %land.lhs.true144.if.end158_crit_edge, %if.end141.if.end158_crit_edge
  %acc_sip.1 = phi i32 [ %acc_sip.0329, %land.lhs.true144.if.end158_crit_edge ], [ %dec157, %iio_push_to_buffers_with_timestamp.exit309 ], [ 0, %if.end141.if.end158_crit_edge ]
  br i1 %cmp59339, label %land.lhs.true161, label %if.end158.if.end175_crit_edge

if.end158.if.end175_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end175

land.lhs.true161:                                 ; preds = %if.end158
  %89 = ptrtoint ptr %decimator89 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %decimator89, align 2
  %conv163 = zext i8 %90 to i32
  %rem164 = srem i32 %sip.0336, %conv163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem164)
  %tobool165.not = icmp eq i32 %rem164, 0
  br i1 %tobool165.not, label %if.then166, label %land.lhs.true161.if.end175_crit_edge

land.lhs.true161.if.end175_crit_edge:             ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end175

if.then166:                                       ; preds = %land.lhs.true161
  %91 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx26, align 8
  %scan_timestamp.i310 = getelementptr inbounds %struct.iio_dev, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %scan_timestamp.i310 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %scan_timestamp.i310, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i311 = icmp eq i8 %94, 0
  br i1 %tobool.not.i311, label %if.then166.iio_push_to_buffers_with_timestamp.exit318_crit_edge, label %if.then.i316

if.then166.iio_push_to_buffers_with_timestamp.exit318_crit_edge: ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit318

if.then.i316:                                     ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %ts_ref171 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %ts_ref171, align 8
  %add172 = add i64 %96, %ts.2
  %scan_bytes.i312 = getelementptr inbounds %struct.iio_dev, ptr %92, i32 0, i32 4
  %97 = ptrtoint ptr %scan_bytes.i312 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %scan_bytes.i312, align 4
  %div1.i313 = lshr i32 %98, 3
  %sub.i314 = add nsw i32 %div1.i313, -1
  %arrayidx.i315 = getelementptr i64, ptr %arrayidx95, i32 %sub.i314
  %99 = ptrtoint ptr %arrayidx.i315 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %add172, ptr %arrayidx.i315, align 8
  br label %iio_push_to_buffers_with_timestamp.exit318

iio_push_to_buffers_with_timestamp.exit318:       ; preds = %if.then.i316, %if.then166.iio_push_to_buffers_with_timestamp.exit318_crit_edge
  %call.i317 = call i32 @iio_push_to_buffers(ptr noundef %92, ptr noundef %arrayidx95) #5
  %dec174 = add nsw i32 %ext_sip.0332, -1
  br label %if.end175

if.end175:                                        ; preds = %iio_push_to_buffers_with_timestamp.exit318, %land.lhs.true161.if.end175_crit_edge, %if.end158.if.end175_crit_edge
  %ext_sip.1 = phi i32 [ %ext_sip.0332, %land.lhs.true161.if.end175_crit_edge ], [ %dec174, %iio_push_to_buffers_with_timestamp.exit318 ], [ 0, %if.end158.if.end175_crit_edge ]
  %inc = add i32 %sip.0336, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %acc_sip.1)
  %cmp55 = icmp ne i32 %acc_sip.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gyro_sip.1)
  %cmp57 = icmp ne i32 %gyro_sip.1, 0
  %or.cond = select i1 %cmp55, i1 true, i1 %cmp57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ext_sip.1)
  %cmp59 = icmp ne i32 %ext_sip.1, 0
  %or.cond295 = select i1 %or.cond, i1 true, i1 %cmp59
  br i1 %or.cond295, label %if.end175.while.body_crit_edge, label %if.end175.for.inc_crit_edge

if.end175.for.inc_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end175.while.body_crit_edge:                   ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

for.inc:                                          ; preds = %if.end175.for.inc_crit_edge, %cond.end.for.inc_crit_edge
  %reset_ts.1.off0.lcssa = phi i1 [ %reset_ts.0.off0343, %cond.end.for.inc_crit_edge ], [ %reset_ts.3.off0, %if.end175.for.inc_crit_edge ]
  %ts.1.lcssa = phi i64 [ %ts.0344, %cond.end.for.inc_crit_edge ], [ %ts.2, %if.end175.for.inc_crit_edge ]
  %add177 = add i32 %read_len.0342, %mul
  %cmp34 = icmp slt i32 %add177, %conv33
  br i1 %cmp34, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  br i1 %reset_ts.1.off0.lcssa, label %if.then181, label %for.end.cleanup_crit_edge, !prof !38

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then181:                                       ; preds = %for.end
  %call182 = call fastcc i32 @st_lsm6dsx_reset_hw_ts(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %cmp183 = icmp slt i32 %call182, 0
  br i1 %cmp183, label %do.end188, label %if.then181.cleanup_crit_edge

if.then181.cleanup_crit_edge:                     ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end188:                                        ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hw, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.9, i32 noundef %call182) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end188, %if.then181.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end43, %if.end32.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i.i, %do.end43 ], [ %call182, %do.end188 ], [ 0, %if.end.cleanup_crit_edge ], [ %add177, %if.then181.cleanup_crit_edge ], [ %add177, %for.end.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fifo_status) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_lsm6dsx_read_tagged_fifo(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %iio_buff = alloca [16 x i8], align 8
  %fifo_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sip = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 12
  %0 = ptrtoint ptr %sip to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sip, align 1
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iio_buff) #5
  %2 = call ptr @memset(ptr %iio_buff, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fifo_status) #5
  %3 = ptrtoint ptr %fifo_status to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %fifo_status, align 2, !annotation !36
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 18
  %4 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %settings, align 4
  %fifo_diff = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %5, i32 0, i32 11, i32 3
  %6 = ptrtoint ptr %fifo_diff to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fifo_diff, align 4
  %conv2 = zext i8 %7 to i32
  %page_lock.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock.i, i32 noundef 0) #5
  %regmap.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef %conv2, ptr noundef nonnull %fifo_status, i32 noundef 2) #5
  call void @mutex_unlock(ptr noundef %page_lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %settings, align 4
  %mask = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %13, i32 0, i32 11, i32 3, i32 1
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mask, align 2
  %16 = ptrtoint ptr %fifo_status to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fifo_status, align 2
  %18 = call i16 @llvm.bswap.i16(i16 %17)
  %and107 = and i16 %18, %15
  %mul9 = mul i16 %and107, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mul9)
  %tobool.not = icmp eq i16 %mul9, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %conv13 = zext i16 %mul9 to i32
  %buff = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp14.not.i = icmp eq i8 %1, 0
  %arrayidx41.i = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 4
  %enable_mask24.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 8
  %arrayidx34.i = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 3
  %arrayidx10.i = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 2
  %arrayidx5.i = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 1
  %iio_devs.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17
  %ts_gain = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc52.for.body_crit_edge, %for.cond.preheader
  %ts.0130 = phi i64 [ 0, %for.cond.preheader ], [ %ts.1.lcssa, %for.inc52.for.body_crit_edge ]
  %read_len.0129 = phi i32 [ 0, %for.cond.preheader ], [ %add54, %for.inc52.for.body_crit_edge ]
  %reset_ts.0.off0128 = phi i1 [ false, %for.cond.preheader ], [ %reset_ts.1.off0.lcssa, %for.inc52.for.body_crit_edge ]
  %19 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buff, align 4
  br i1 %cmp14.not.i, label %for.body.for.inc52_crit_edge, label %for.body.while.body.i_crit_edge

for.body.while.body.i_crit_edge:                  ; preds = %for.body
  br label %while.body.i

for.body.for.inc52_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc52

while.cond.i:                                     ; preds = %while.body.i
  %add.i = add i32 %21, %read_len.015.i
  %cmp.i = icmp ult i32 %add.i, %mul
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %st_lsm6dsx_read_block.exit

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %for.body.while.body.i_crit_edge
  %read_len.015.i = phi i32 [ %add.i, %while.cond.i.while.body.i_crit_edge ], [ 0, %for.body.while.body.i_crit_edge ]
  %sub.i = sub i32 %mul, %read_len.015.i
  %21 = call i32 @llvm.umin.i32(i32 %sub.i, i32 28) #5
  %add.ptr.i = getelementptr i8, ptr %20, i32 %read_len.015.i
  call void @mutex_lock_nested(ptr noundef %page_lock.i, i32 noundef 0) #5
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %23, i32 noundef 120, ptr noundef %add.ptr.i, i32 noundef %21) #5
  call void @mutex_unlock(ptr noundef %page_lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %do.end23, label %while.cond.i

st_lsm6dsx_read_block.exit:                       ; preds = %while.cond.i
  br i1 %cmp14.not.i, label %st_lsm6dsx_read_block.exit.for.inc52_crit_edge, label %st_lsm6dsx_read_block.exit.for.body30_crit_edge

st_lsm6dsx_read_block.exit.for.body30_crit_edge:  ; preds = %st_lsm6dsx_read_block.exit
  br label %for.body30

st_lsm6dsx_read_block.exit.for.inc52_crit_edge:   ; preds = %st_lsm6dsx_read_block.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc52

do.end23:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.6, i32 noundef %call.i.i) #8
  br label %cleanup

for.body30:                                       ; preds = %for.inc.for.body30_crit_edge, %st_lsm6dsx_read_block.exit.for.body30_crit_edge
  %ts.1126 = phi i64 [ %ts.2, %for.inc.for.body30_crit_edge ], [ %ts.0130, %st_lsm6dsx_read_block.exit.for.body30_crit_edge ]
  %i.0125 = phi i32 [ %add51, %for.inc.for.body30_crit_edge ], [ 0, %st_lsm6dsx_read_block.exit.for.body30_crit_edge ]
  %reset_ts.1.off0124 = phi i1 [ %reset_ts.3.off0, %for.inc.for.body30_crit_edge ], [ %reset_ts.0.off0128, %st_lsm6dsx_read_block.exit.for.body30_crit_edge ]
  %26 = ptrtoint ptr %buff to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buff, align 4
  %add = add nuw nsw i32 %i.0125, 1
  %arrayidx = getelementptr i8, ptr %27, i32 %add
  %28 = call ptr @memcpy(ptr %iio_buff, ptr %arrayidx, i32 6)
  %arrayidx33 = getelementptr i8, ptr %27, i32 %i.0125
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx33, align 1
  %31 = lshr i8 %30, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %31)
  %cmp37 = icmp eq i8 %31, 4
  br i1 %cmp37, label %if.then39, label %if.else

if.then39:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %iio_buff to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iio_buff, align 8
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %conv41 = zext i32 %34 to i64
  %reset_ts.1.off0.not = xor i1 %reset_ts.1.off0124, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %34)
  %cmp43 = icmp ugt i32 %34, -65537
  %or.cond = select i1 %reset_ts.1.off0.not, i1 %cmp43, i1 false
  %spec.select = or i1 %reset_ts.1.off0124, %or.cond
  %35 = ptrtoint ptr %ts_gain to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ts_gain, align 8
  %mul47 = mul i64 %36, %conv41
  br label %for.inc

if.else:                                          ; preds = %for.body30
  %37 = ptrtoint ptr %iio_buff to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %iio_buff, align 8
  %39 = call i16 @llvm.bswap.i16(i16 %38) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 32764, i16 %39)
  %cmp.i114 = icmp sgt i16 %39, 32764
  br i1 %cmp.i114, label %if.else.for.inc_crit_edge, label %if.end.i

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i:                                         ; preds = %if.else
  %trunc = trunc i8 %31 to i5
  %40 = zext i5 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i5 %trunc, label %if.end.i.for.inc_crit_edge [
    i5 1, label %if.end.i.sw.epilog.i_crit_edge
    i5 2, label %sw.bb3.i
    i5 15, label %sw.bb6.i
    i5 -16, label %sw.bb23.i
    i5 -15, label %sw.bb39.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i
  %41 = ptrtoint ptr %enable_mask24.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enable_mask24.i, align 1
  %conv7.i = zext i8 %42 to i32
  %and.i = and i32 %conv7.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %sw.bb6.i.sw.epilog.i_crit_edge

sw.bb6.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i = and i32 %conv7.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %arrayidx20.i.arrayidx17.i = select i1 %tobool14.not.i, ptr %arrayidx41.i, ptr %arrayidx34.i
  br label %sw.epilog.i

sw.bb23.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %enable_mask24.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %enable_mask24.i, align 1
  %45 = and i8 %44, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %45)
  %.not.i = icmp eq i8 %45, 12
  %arrayidx34.i.arrayidx37.i = select i1 %.not.i, ptr %arrayidx34.i, ptr %arrayidx41.i
  br label %sw.epilog.i

sw.bb39.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb39.i, %sw.bb23.i, %if.else.i, %sw.bb6.i.sw.epilog.i_crit_edge, %sw.bb3.i, %if.end.i.sw.epilog.i_crit_edge
  %iio_dev.0.in.i = phi ptr [ %arrayidx41.i, %sw.bb39.i ], [ %arrayidx5.i, %sw.bb3.i ], [ %iio_devs.i, %if.end.i.sw.epilog.i_crit_edge ], [ %arrayidx10.i, %sw.bb6.i.sw.epilog.i_crit_edge ], [ %arrayidx20.i.arrayidx17.i, %if.else.i ], [ %arrayidx34.i.arrayidx37.i, %sw.bb23.i ]
  %46 = ptrtoint ptr %iio_dev.0.in.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %iio_dev.0.i = load ptr, ptr %iio_dev.0.in.i, align 4
  %scan_timestamp.i.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev.0.i, i32 0, i32 9
  %47 = ptrtoint ptr %scan_timestamp.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %scan_timestamp.i.i, align 8, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i.i, label %sw.epilog.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge, label %if.then.i.i

sw.epilog.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit.i

if.then.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev.0.i, i32 0, i32 19
  %49 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv.i.i, align 8
  %ts_ref.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %ts_ref.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %ts_ref.i, align 8
  %add.i115 = add i64 %52, %ts.1126
  %scan_bytes.i.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev.0.i, i32 0, i32 4
  %53 = ptrtoint ptr %scan_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %scan_bytes.i.i, align 4
  %div1.i.i = lshr i32 %54, 3
  %sub.i.i = add nsw i32 %div1.i.i, -1
  %arrayidx.i.i = getelementptr i64, ptr %iio_buff, i32 %sub.i.i
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %add.i115, ptr %arrayidx.i.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit.i

iio_push_to_buffers_with_timestamp.exit.i:        ; preds = %if.then.i.i, %sw.epilog.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge
  %call.i.i116 = call i32 @iio_push_to_buffers(ptr noundef %iio_dev.0.i, ptr noundef nonnull %iio_buff) #5
  br label %for.inc

for.inc:                                          ; preds = %iio_push_to_buffers_with_timestamp.exit.i, %if.end.i.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then39
  %reset_ts.3.off0 = phi i1 [ %spec.select, %if.then39 ], [ %reset_ts.1.off0124, %if.else.for.inc_crit_edge ], [ %reset_ts.1.off0124, %if.end.i.for.inc_crit_edge ], [ %reset_ts.1.off0124, %iio_push_to_buffers_with_timestamp.exit.i ]
  %ts.2 = phi i64 [ %mul47, %if.then39 ], [ %ts.1126, %if.else.for.inc_crit_edge ], [ %ts.1126, %if.end.i.for.inc_crit_edge ], [ %ts.1126, %iio_push_to_buffers_with_timestamp.exit.i ]
  %add51 = add nuw nsw i32 %i.0125, 7
  %cmp28 = icmp ult i32 %add51, %mul
  br i1 %cmp28, label %for.inc.for.body30_crit_edge, label %for.inc.for.inc52_crit_edge

for.inc.for.inc52_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc52

for.inc.for.body30_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body30

for.inc52:                                        ; preds = %for.inc.for.inc52_crit_edge, %st_lsm6dsx_read_block.exit.for.inc52_crit_edge, %for.body.for.inc52_crit_edge
  %reset_ts.1.off0.lcssa = phi i1 [ %reset_ts.0.off0128, %st_lsm6dsx_read_block.exit.for.inc52_crit_edge ], [ %reset_ts.0.off0128, %for.body.for.inc52_crit_edge ], [ %reset_ts.3.off0, %for.inc.for.inc52_crit_edge ]
  %ts.1.lcssa = phi i64 [ %ts.0130, %st_lsm6dsx_read_block.exit.for.inc52_crit_edge ], [ %ts.0130, %for.body.for.inc52_crit_edge ], [ %ts.2, %for.inc.for.inc52_crit_edge ]
  %add54 = add i32 %read_len.0129, %mul
  %cmp14 = icmp slt i32 %add54, %conv13
  br i1 %cmp14, label %for.inc52.for.body_crit_edge, label %for.end55

for.inc52.for.body_crit_edge:                     ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end55:                                        ; preds = %for.inc52
  br i1 %reset_ts.1.off0.lcssa, label %if.then59, label %for.end55.if.end65_crit_edge, !prof !38

for.end55.if.end65_crit_edge:                     ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then59:                                        ; preds = %for.end55
  %call60 = call fastcc i32 @st_lsm6dsx_reset_hw_ts(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then59.cleanup_crit_edge, label %if.then59.if.end65_crit_edge

if.then59.if.end65_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then59.cleanup_crit_edge:                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end65:                                         ; preds = %if.then59.if.end65_crit_edge, %for.end55.if.end65_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then59.cleanup_crit_edge, %do.end23, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i.i, %do.end23 ], [ %add54, %if.end65 ], [ 0, %if.end.cleanup_crit_edge ], [ %call60, %if.then59.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fifo_status) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iio_buff) #5
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_lsm6dsx_flush_fifo(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 18
  %0 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %settings, align 4
  %read_fifo = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %1, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %read_fifo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_fifo, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %fifo_lock = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %fifo_lock, i32 noundef 0) #5
  %4 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %settings, align 4
  %read_fifo3 = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %5, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %read_fifo3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_fifo3, align 4
  %call = tail call i32 %7(ptr noundef %hw) #5
  %page_lock.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock.i.i, i32 noundef 0) #5
  %regmap.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 10, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @mutex_unlock(ptr noundef %page_lock.i.i) #5
  tail call void @mutex_unlock(ptr noundef %fifo_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %if.end ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_lsm6dsx_update_fifo(ptr noundef %sensor, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %conf_lock = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %conf_lock, i32 noundef 0) #5
  %fifo_mask2 = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %fifo_mask2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fifo_mask2, align 2
  %id = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %shl = shl nuw i32 1, %5
  %6 = trunc i32 %shl to i8
  %conv3 = or i8 %3, %6
  %7 = xor i8 %6, -1
  %conv8 = and i8 %3, %7
  %fifo_mask.0 = select i1 %enable, i8 %conv3, i8 %conv8
  %fifo_mask9 = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %fifo_mask9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fifo_mask9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  br i1 %tobool10.not, label %entry.if.end15_crit_edge, label %if.then11

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then11:                                        ; preds = %entry
  %call = tail call i32 @st_lsm6dsx_flush_fifo(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then11.out_crit_edge, label %if.then11.if.end15_crit_edge

if.then11.if.end15_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then11.out_crit_edge:                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end15:                                         ; preds = %if.then11.if.end15_crit_edge, %entry.if.end15_crit_edge
  %id16 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 1
  %10 = ptrtoint ptr %id16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id16, align 8
  %.off = add i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then26, label %if.else33

if.then26:                                        ; preds = %if.end15
  %call28 = tail call i32 @st_lsm6dsx_shub_set_enable(ptr noundef %sensor, i1 noundef zeroext %enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then26.out_crit_edge, label %if.then26.if.end40_crit_edge

if.then26.if.end40_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then26.out_crit_edge:                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.else33:                                        ; preds = %if.end15
  %call35 = tail call i32 @st_lsm6dsx_sensor_set_enable(ptr noundef %sensor, i1 noundef zeroext %enable) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.else33.out_crit_edge, label %if.else33.if.end40_crit_edge

if.else33.if.end40_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.else33.out_crit_edge:                          ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end40:                                         ; preds = %if.else33.if.end40_crit_edge, %if.then26.if.end40_crit_edge
  %12 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #5
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %data.i, align 1, !annotation !36
  %settings.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %13, i32 0, i32 18
  %15 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %settings.i, align 4
  %17 = ptrtoint ptr %id16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id16, align 8
  %arrayidx.i = getelementptr %struct.st_lsm6dsx_settings, ptr %16, i32 0, i32 10, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.else16.i, label %if.then.i

if.then.i:                                        ; preds = %if.end40
  br i1 %enable, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  %odr.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 4
  %21 = ptrtoint ptr %odr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %odr.i, align 4
  %call.i = call i32 @st_lsm6dsx_check_odr(ptr noundef %sensor, i32 noundef %22, ptr noundef nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %st_lsm6dsx_set_fifo_odr.exit.thread, label %if.then3.i.if.end5.i_crit_edge

if.then3.i.if.end5.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

st_lsm6dsx_set_fifo_odr.exit.thread:              ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #5
  br label %out

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %data.i, align 1
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.then3.i.if.end5.i_crit_edge
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data.i, align 1
  %conv.i = zext i8 %25 to i32
  %mask.i = getelementptr %struct.st_lsm6dsx_settings, ptr %16, i32 0, i32 10, i32 %18, i32 1
  %26 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mask.i, align 1
  %conv6.i = zext i8 %27 to i32
  %28 = call i32 @llvm.cttz.i32(i32 %conv6.i, i1 false) #5, !range !39
  %shl.i = shl i32 %conv.i, %28
  %and.i = and i32 %shl.i, %conv6.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %conv11.i = zext i8 %30 to i32
  %page_lock.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %13, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %page_lock.i.i, i32 noundef 0) #5
  %regmap.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %13, i32 0, i32 1
  %31 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %conv11.i, i32 noundef %conv6.i, i32 noundef %and.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @mutex_unlock(ptr noundef %page_lock.i.i) #5
  br label %st_lsm6dsx_set_fifo_odr.exit

if.else16.i:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %enable_mask.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %13, i32 0, i32 8
  %33 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %enable_mask.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool18.not.i = icmp eq i8 %34, 0
  %conv19.i = select i1 %tobool18.not.i, i32 0, i32 64
  %page_lock.i56.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %13, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock.i56.i, i32 noundef 0) #5
  %regmap.i57.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %13, i32 0, i32 1
  %35 = ptrtoint ptr %regmap.i57.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i57.i, align 4
  %call.i.i58.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 10, i32 noundef 120, i32 noundef %conv19.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  tail call void @mutex_unlock(ptr noundef %page_lock.i56.i) #5
  br label %st_lsm6dsx_set_fifo_odr.exit

st_lsm6dsx_set_fifo_odr.exit:                     ; preds = %if.else16.i, %if.end5.i
  %retval.2.i = phi i32 [ %call.i.i58.i, %if.else16.i ], [ %call.i.i.i, %if.end5.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %cmp43 = icmp slt i32 %retval.2.i, 0
  br i1 %cmp43, label %st_lsm6dsx_set_fifo_odr.exit.out_crit_edge, label %if.end46

st_lsm6dsx_set_fifo_odr.exit.out_crit_edge:       ; preds = %st_lsm6dsx_set_fifo_odr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end46:                                         ; preds = %st_lsm6dsx_set_fifo_odr.exit
  %enable_mask.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 8
  %arrayidx.i.i = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 0
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %if.end46.for.inc.i.i_crit_edge, label %if.end.i.i

if.end46.for.inc.i.i_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %if.end46
  %priv.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %38, i32 0, i32 19
  %39 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv.i.i.i, align 8
  %41 = ptrtoint ptr %enable_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enable_mask.i.i, align 1
  %conv.i.i = zext i8 %42 to i32
  %id.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id.i.i, align 8
  %shl.i.i = shl nuw i32 1, %44
  %and.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.end5.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %odr.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %40, i32 0, i32 4
  %45 = ptrtoint ptr %odr.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %odr.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end5.i.i, %if.end.i.i.for.inc.i.i_crit_edge, %if.end46.for.inc.i.i_crit_edge
  %max_odr.0.i = phi i32 [ 0, %if.end46.for.inc.i.i_crit_edge ], [ 0, %if.end.i.i.for.inc.i.i_crit_edge ], [ %46, %if.end5.i.i ]
  %min_odr.0.i = phi i32 [ -1, %if.end46.for.inc.i.i_crit_edge ], [ -1, %if.end.i.i.for.inc.i.i_crit_edge ], [ %46, %if.end5.i.i ]
  %arrayidx.1.i.i = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 1
  %47 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.end.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i.i

if.end.1.i.i:                                     ; preds = %for.inc.i.i
  %priv.i.1.i.i = getelementptr inbounds %struct.iio_dev, ptr %48, i32 0, i32 19
  %49 = ptrtoint ptr %priv.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv.i.1.i.i, align 8
  %51 = ptrtoint ptr %enable_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %enable_mask.i.i, align 1
  %conv.1.i.i = zext i8 %52 to i32
  %id.1.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %id.1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id.1.i.i, align 8
  %shl.1.i.i = shl nuw i32 1, %54
  %and.1.i.i = and i32 %shl.1.i.i, %conv.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool3.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool3.not.1.i.i, label %if.end.1.i.i.for.inc.1.i.i_crit_edge, label %if.end5.1.i.i

if.end.1.i.i.for.inc.1.i.i_crit_edge:             ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i.i

if.end5.1.i.i:                                    ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %odr.1.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %50, i32 0, i32 4
  %55 = ptrtoint ptr %odr.1.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %odr.1.i.i, align 4
  %57 = call i32 @llvm.umax.i32(i32 %max_odr.0.i, i32 %56) #5
  %58 = call i32 @llvm.umin.i32(i32 %min_odr.0.i, i32 %56) #5
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end5.1.i.i, %if.end.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %max_odr.1.i = phi i32 [ %max_odr.0.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ], [ %max_odr.0.i, %if.end.1.i.i.for.inc.1.i.i_crit_edge ], [ %57, %if.end5.1.i.i ]
  %min_odr.1.i = phi i32 [ %min_odr.0.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ], [ %min_odr.0.i, %if.end.1.i.i.for.inc.1.i.i_crit_edge ], [ %58, %if.end5.1.i.i ]
  %arrayidx.2.i.i = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 2
  %59 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.2.i.i, align 4
  %tobool.not.2.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.end.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i.i

if.end.2.i.i:                                     ; preds = %for.inc.1.i.i
  %priv.i.2.i.i = getelementptr inbounds %struct.iio_dev, ptr %60, i32 0, i32 19
  %61 = ptrtoint ptr %priv.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv.i.2.i.i, align 8
  %63 = ptrtoint ptr %enable_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %enable_mask.i.i, align 1
  %conv.2.i.i = zext i8 %64 to i32
  %id.2.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %id.2.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id.2.i.i, align 8
  %shl.2.i.i = shl nuw i32 1, %66
  %and.2.i.i = and i32 %shl.2.i.i, %conv.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool3.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool3.not.2.i.i, label %if.end.2.i.i.for.inc.2.i.i_crit_edge, label %if.end5.2.i.i

if.end.2.i.i.for.inc.2.i.i_crit_edge:             ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i.i

if.end5.2.i.i:                                    ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %odr.2.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %62, i32 0, i32 4
  %67 = ptrtoint ptr %odr.2.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %odr.2.i.i, align 4
  %69 = call i32 @llvm.umax.i32(i32 %max_odr.1.i, i32 %68) #5
  %70 = call i32 @llvm.umin.i32(i32 %min_odr.1.i, i32 %68) #5
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.end5.2.i.i, %if.end.2.i.i.for.inc.2.i.i_crit_edge, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %max_odr.2.i = phi i32 [ %max_odr.1.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ], [ %max_odr.1.i, %if.end.2.i.i.for.inc.2.i.i_crit_edge ], [ %69, %if.end5.2.i.i ]
  %min_odr.2.i = phi i32 [ %min_odr.1.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ], [ %min_odr.1.i, %if.end.2.i.i.for.inc.2.i.i_crit_edge ], [ %70, %if.end5.2.i.i ]
  %arrayidx.3.i.i = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 3
  %71 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.3.i.i, align 4
  %tobool.not.3.i.i = icmp eq ptr %72, null
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.end.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i.i

if.end.3.i.i:                                     ; preds = %for.inc.2.i.i
  %priv.i.3.i.i = getelementptr inbounds %struct.iio_dev, ptr %72, i32 0, i32 19
  %73 = ptrtoint ptr %priv.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv.i.3.i.i, align 8
  %75 = ptrtoint ptr %enable_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %enable_mask.i.i, align 1
  %conv.3.i.i = zext i8 %76 to i32
  %id.3.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %74, i32 0, i32 1
  %77 = ptrtoint ptr %id.3.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %id.3.i.i, align 8
  %shl.3.i.i = shl nuw i32 1, %78
  %and.3.i.i = and i32 %shl.3.i.i, %conv.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool3.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool3.not.3.i.i, label %if.end.3.i.i.for.inc.3.i.i_crit_edge, label %if.end5.3.i.i

if.end.3.i.i.for.inc.3.i.i_crit_edge:             ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i.i

if.end5.3.i.i:                                    ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %odr.3.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %74, i32 0, i32 4
  %79 = ptrtoint ptr %odr.3.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %odr.3.i.i, align 4
  %81 = call i32 @llvm.umax.i32(i32 %max_odr.2.i, i32 %80) #5
  %82 = call i32 @llvm.umin.i32(i32 %min_odr.2.i, i32 %80) #5
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.end5.3.i.i, %if.end.3.i.i.for.inc.3.i.i_crit_edge, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %max_odr.3.i = phi i32 [ %max_odr.2.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ], [ %max_odr.2.i, %if.end.3.i.i.for.inc.3.i.i_crit_edge ], [ %81, %if.end5.3.i.i ]
  %min_odr.3.i = phi i32 [ %min_odr.2.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ], [ %min_odr.2.i, %if.end.3.i.i.for.inc.3.i.i_crit_edge ], [ %82, %if.end5.3.i.i ]
  %arrayidx.4.i.i = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 4
  %83 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.4.i.i, align 4
  %tobool.not.4.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.4.i.i, label %for.inc.3.i.i.st_lsm6dsx_get_max_min_odr.exit.i_crit_edge, label %if.end.4.i.i

for.inc.3.i.i.st_lsm6dsx_get_max_min_odr.exit.i_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_lsm6dsx_get_max_min_odr.exit.i

if.end.4.i.i:                                     ; preds = %for.inc.3.i.i
  %priv.i.4.i.i = getelementptr inbounds %struct.iio_dev, ptr %84, i32 0, i32 19
  %85 = ptrtoint ptr %priv.i.4.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv.i.4.i.i, align 8
  %87 = ptrtoint ptr %enable_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %enable_mask.i.i, align 1
  %conv.4.i.i = zext i8 %88 to i32
  %id.4.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %86, i32 0, i32 1
  %89 = ptrtoint ptr %id.4.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %id.4.i.i, align 8
  %shl.4.i.i = shl nuw i32 1, %90
  %and.4.i.i = and i32 %shl.4.i.i, %conv.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool3.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool3.not.4.i.i, label %if.end.4.i.i.st_lsm6dsx_get_max_min_odr.exit.i_crit_edge, label %if.end5.4.i.i

if.end.4.i.i.st_lsm6dsx_get_max_min_odr.exit.i_crit_edge: ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_lsm6dsx_get_max_min_odr.exit.i

if.end5.4.i.i:                                    ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %odr.4.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %86, i32 0, i32 4
  %91 = ptrtoint ptr %odr.4.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %odr.4.i.i, align 4
  %93 = call i32 @llvm.umax.i32(i32 %max_odr.3.i, i32 %92) #5
  %94 = call i32 @llvm.umin.i32(i32 %min_odr.3.i, i32 %92) #5
  br label %st_lsm6dsx_get_max_min_odr.exit.i

st_lsm6dsx_get_max_min_odr.exit.i:                ; preds = %if.end5.4.i.i, %if.end.4.i.i.st_lsm6dsx_get_max_min_odr.exit.i_crit_edge, %for.inc.3.i.i.st_lsm6dsx_get_max_min_odr.exit.i_crit_edge
  %max_odr.4.i = phi i32 [ %max_odr.3.i, %for.inc.3.i.i.st_lsm6dsx_get_max_min_odr.exit.i_crit_edge ], [ %max_odr.3.i, %if.end.4.i.i.st_lsm6dsx_get_max_min_odr.exit.i_crit_edge ], [ %93, %if.end5.4.i.i ]
  %min_odr.4.i = phi i32 [ %min_odr.3.i, %for.inc.3.i.i.st_lsm6dsx_get_max_min_odr.exit.i_crit_edge ], [ %min_odr.3.i, %if.end.4.i.i.st_lsm6dsx_get_max_min_odr.exit.i_crit_edge ], [ %94, %if.end5.4.i.i ]
  %settings.i96 = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 18
  %page_lock.i.i97 = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 6
  %regmap.i.i98 = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %st_lsm6dsx_get_max_min_odr.exit.i
  %sip.0156.i = phi i16 [ 0, %st_lsm6dsx_get_max_min_odr.exit.i ], [ %sip.1.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %i.0155.i = phi i32 [ 0, %st_lsm6dsx_get_max_min_odr.exit.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %err.0154.i = phi i32 [ 0, %st_lsm6dsx_get_max_min_odr.exit.i ], [ %err.2.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %ts_sip.0153.i = phi i16 [ 0, %st_lsm6dsx_get_max_min_odr.exit.i ], [ %ts_sip.1.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i99 = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 %i.0155.i
  %95 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i99, align 4
  %tobool.not.i100 = icmp eq ptr %96, null
  br i1 %tobool.not.i100, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %96, i32 0, i32 19
  %97 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %priv.i.i, align 8
  %99 = ptrtoint ptr %enable_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %enable_mask.i.i, align 1
  %conv.i101 = zext i8 %100 to i32
  %id.i102 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %98, i32 0, i32 1
  %101 = ptrtoint ptr %id.i102 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %id.i102, align 8
  %shl.i103 = shl nuw i32 1, %102
  %and.i104 = and i32 %shl.i103, %conv.i101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %tobool3.not.i = icmp eq i32 %and.i104, 0
  br i1 %tobool3.not.i, label %if.else.i105, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %odr.i123.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %98, i32 0, i32 4
  %103 = ptrtoint ptr %odr.i123.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %odr.i123.i, align 4
  %div.i.i = udiv i32 %104, %min_odr.4.i
  %conv1.i.i = and i32 %div.i.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %cmp.not.i.i = icmp eq i32 %conv1.i.i, 0
  %cond.i.i = select i1 %cmp.not.i.i, i32 %div.i.i, i32 %conv1.i.i
  %conv5.i.i = trunc i32 %cond.i.i to i8
  %sip6.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %98, i32 0, i32 7
  %105 = ptrtoint ptr %sip6.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv5.i.i, ptr %sip6.i, align 1
  %div.i125.i = udiv i32 %max_odr.4.i, %104
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div.i125.i)
  %cmp.i.i = icmp ugt i32 %div.i125.i, 1
  %and.i126.i = and i32 %div.i125.i, -2
  %spec.select.i.i = select i1 %cmp.i.i, i32 %and.i126.i, i32 %div.i125.i
  %106 = zext i32 %spec.select.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %spec.select.i.i, label %for.inc.7.i.i [
    i32 0, label %if.then4.i.cond.false.i.i_crit_edge
    i32 1, label %if.then4.i.cond.false.i.i_crit_edge118
    i32 2, label %if.then4.i.cond.false.i.i_crit_edge119
    i32 3, label %if.then4.i.cond.false.i.i_crit_edge120
    i32 4, label %if.then4.i.cond.false.i.i_crit_edge121
    i32 8, label %cond.false.fold.split31.i.i
    i32 16, label %cond.false.fold.split32.i.i
    i32 32, label %cond.false.fold.split33.i.i
  ]

if.then4.i.cond.false.i.i_crit_edge121:           ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i.i

if.then4.i.cond.false.i.i_crit_edge120:           ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i.i

if.then4.i.cond.false.i.i_crit_edge119:           ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i.i

if.then4.i.cond.false.i.i_crit_edge118:           ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i.i

if.then4.i.cond.false.i.i_crit_edge:              ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i.i

for.inc.7.i.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv7.i.i = trunc i32 %spec.select.i.i to i8
  %decimator8.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %98, i32 0, i32 6
  %107 = ptrtoint ptr %decimator8.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv7.i.i, ptr %decimator8.i.i, align 2
  br label %if.end10.i

cond.false.fold.split31.i.i:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i.i

cond.false.fold.split32.i.i:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i.i

cond.false.fold.split33.i.i:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false.i.i

cond.false.i.i:                                   ; preds = %cond.false.fold.split33.i.i, %cond.false.fold.split32.i.i, %cond.false.fold.split31.i.i, %if.then4.i.cond.false.i.i_crit_edge, %if.then4.i.cond.false.i.i_crit_edge118, %if.then4.i.cond.false.i.i_crit_edge119, %if.then4.i.cond.false.i.i_crit_edge120, %if.then4.i.cond.false.i.i_crit_edge121
  %i.026.lcssa.i.i = phi i32 [ %spec.select.i.i, %if.then4.i.cond.false.i.i_crit_edge ], [ 5, %cond.false.fold.split31.i.i ], [ 6, %cond.false.fold.split32.i.i ], [ 7, %cond.false.fold.split33.i.i ], [ %spec.select.i.i, %if.then4.i.cond.false.i.i_crit_edge118 ], [ %spec.select.i.i, %if.then4.i.cond.false.i.i_crit_edge119 ], [ %spec.select.i.i, %if.then4.i.cond.false.i.i_crit_edge120 ], [ %spec.select.i.i, %if.then4.i.cond.false.i.i_crit_edge121 ]
  %conv721.i.i = trunc i32 %spec.select.i.i to i8
  %decimator822.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %98, i32 0, i32 6
  %108 = ptrtoint ptr %decimator822.i.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv721.i.i, ptr %decimator822.i.i, align 2
  %val.i.i = getelementptr [8 x %struct.st_lsm6dsx_decimator_entry], ptr @st_lsm6dsx_decimator_table, i32 0, i32 %i.026.lcssa.i.i, i32 1
  %109 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %val.i.i, align 1
  %conv12.i.i = zext i8 %110 to i32
  br label %if.end10.i

if.else.i105:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %sip9.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %98, i32 0, i32 7
  %111 = ptrtoint ptr %sip9.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %sip9.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i105, %cond.false.i.i, %for.inc.7.i.i
  %data.0.i = phi i32 [ 0, %if.else.i105 ], [ %conv12.i.i, %cond.false.i.i ], [ 0, %for.inc.7.i.i ]
  %sip11.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %98, i32 0, i32 7
  %112 = ptrtoint ptr %sip11.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %sip11.i, align 1
  %conv13.i = zext i16 %ts_sip.0153.i to i32
  %conv14.i = zext i8 %113 to i32
  %114 = call i32 @llvm.umax.i32(i32 %conv13.i, i32 %conv14.i) #5
  %conv19.i106 = trunc i32 %114 to i16
  %115 = ptrtoint ptr %settings.i96 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %settings.i96, align 4
  %117 = ptrtoint ptr %id.i102 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %id.i102, align 8
  %arrayidx21.i = getelementptr %struct.st_lsm6dsx_settings, ptr %116, i32 0, i32 9, i32 %118
  %119 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx21.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool22.not.i = icmp eq i8 %120, 0
  br i1 %tobool22.not.i, label %if.end10.i.if.end40.i_crit_edge, label %if.then23.i

if.end10.i.if.end40.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

if.then23.i:                                      ; preds = %if.end10.i
  %mask.i107 = getelementptr %struct.st_lsm6dsx_settings, ptr %116, i32 0, i32 9, i32 %118, i32 1
  %121 = ptrtoint ptr %mask.i107 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %mask.i107, align 1
  %conv25.i = zext i8 %122 to i32
  %123 = call i32 @llvm.cttz.i32(i32 %conv25.i, i1 false) #5, !range !39
  %shl27.i = shl i32 %data.0.i, %123
  %and30.i = and i32 %shl27.i, %conv25.i
  %conv32.i = zext i8 %120 to i32
  call void @mutex_lock_nested(ptr noundef %page_lock.i.i97, i32 noundef 0) #5
  %124 = ptrtoint ptr %regmap.i.i98 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regmap.i.i98, align 4
  %call.i.i.i108 = call i32 @regmap_update_bits_base(ptr noundef %125, i32 noundef %conv32.i, i32 noundef %conv25.i, i32 noundef %and30.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @mutex_unlock(ptr noundef %page_lock.i.i97) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i108)
  %cmp36.i = icmp slt i32 %call.i.i.i108, 0
  br i1 %cmp36.i, label %if.then23.i.out_crit_edge, label %if.then23.i.if.end40.i_crit_edge

if.then23.i.if.end40.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

if.then23.i.out_crit_edge:                        ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end40.i:                                       ; preds = %if.then23.i.if.end40.i_crit_edge, %if.end10.i.if.end40.i_crit_edge
  %err.1.i = phi i32 [ %call.i.i.i108, %if.then23.i.if.end40.i_crit_edge ], [ %err.0154.i, %if.end10.i.if.end40.i_crit_edge ]
  %126 = ptrtoint ptr %sip11.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %sip11.i, align 1
  %conv42.i = zext i8 %127 to i16
  %add.i = add i16 %sip.0156.i, %conv42.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end40.i, %for.body.i.for.inc.i_crit_edge
  %ts_sip.1.ph.i = phi i16 [ %ts_sip.0153.i, %for.body.i.for.inc.i_crit_edge ], [ %conv19.i106, %if.end40.i ]
  %err.2.ph.i = phi i32 [ %err.0154.i, %for.body.i.for.inc.i_crit_edge ], [ %err.1.i, %if.end40.i ]
  %sip.1.ph.i = phi i16 [ %sip.0156.i, %for.body.i.for.inc.i_crit_edge ], [ %add.i, %if.end40.i ]
  %inc.i = add nuw nsw i32 %i.0155.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %conv48.i = trunc i16 %sip.1.ph.i to i8
  %conv49.i = trunc i16 %ts_sip.1.ph.i to i8
  %add50.i = add i8 %conv48.i, %conv49.i
  %sip52.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 12
  %128 = ptrtoint ptr %sip52.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %add50.i, ptr %sip52.i, align 1
  %ts_sip54.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 11
  %129 = ptrtoint ptr %ts_sip54.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv49.i, ptr %ts_sip54.i, align 8
  %130 = ptrtoint ptr %settings.i96 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %settings.i96, align 4
  %decimator56.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %131, i32 0, i32 12, i32 3
  %132 = ptrtoint ptr %decimator56.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %decimator56.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool58.not.i = icmp eq i8 %133, 0
  br i1 %tobool58.not.i, label %for.end.i.st_lsm6dsx_update_decimators.exit_crit_edge, label %if.then59.i

for.end.i.st_lsm6dsx_update_decimators.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st_lsm6dsx_update_decimators.exit

if.then59.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv49.i)
  %tobool62.i = icmp ne i8 %conv49.i, 0
  %lnot.ext.i = zext i1 %tobool62.i to i32
  %mask64.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %131, i32 0, i32 12, i32 3, i32 1
  %134 = ptrtoint ptr %mask64.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %mask64.i, align 1
  %conv65.i = zext i8 %135 to i32
  %136 = call i32 @llvm.cttz.i32(i32 %conv65.i, i1 false) #5, !range !39
  %shl67.i = shl nuw i32 %lnot.ext.i, %136
  %and70.i = and i32 %shl67.i, %conv65.i
  %conv72.i = zext i8 %133 to i32
  call void @mutex_lock_nested(ptr noundef %page_lock.i.i97, i32 noundef 0) #5
  %137 = ptrtoint ptr %regmap.i.i98 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regmap.i.i98, align 4
  %call.i.i130.i = call i32 @regmap_update_bits_base(ptr noundef %138, i32 noundef %conv72.i, i32 noundef %conv65.i, i32 noundef %and70.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @mutex_unlock(ptr noundef %page_lock.i.i97) #5
  br label %st_lsm6dsx_update_decimators.exit

st_lsm6dsx_update_decimators.exit:                ; preds = %if.then59.i, %for.end.i.st_lsm6dsx_update_decimators.exit_crit_edge
  %retval.4.i = phi i32 [ %call.i.i130.i, %if.then59.i ], [ %err.2.ph.i, %for.end.i.st_lsm6dsx_update_decimators.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.4.i)
  %cmp48 = icmp slt i32 %retval.4.i, 0
  br i1 %cmp48, label %st_lsm6dsx_update_decimators.exit.out_crit_edge, label %if.end51

st_lsm6dsx_update_decimators.exit.out_crit_edge:  ; preds = %st_lsm6dsx_update_decimators.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end51:                                         ; preds = %st_lsm6dsx_update_decimators.exit
  %watermark = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 5
  %139 = ptrtoint ptr %watermark to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %watermark, align 8
  %call52 = call i32 @st_lsm6dsx_update_watermark(ptr noundef %sensor, i16 noundef zeroext %140)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end51.out_crit_edge, label %if.end56

if.end51.out_crit_edge:                           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end56:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fifo_mask.0)
  %tobool57.not = icmp eq i8 %fifo_mask.0, 0
  br i1 %tobool57.not, label %if.end56.if.end64_crit_edge, label %if.then58

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then58:                                        ; preds = %if.end56
  %call.i109 = call fastcc i32 @st_lsm6dsx_reset_hw_ts(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp.i110 = icmp slt i32 %call.i109, 0
  br i1 %cmp.i110, label %if.then58.out_crit_edge, label %st_lsm6dsx_resume_fifo.exit

if.then58.out_crit_edge:                          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

st_lsm6dsx_resume_fifo.exit:                      ; preds = %if.then58
  call void @mutex_lock_nested(ptr noundef %page_lock.i.i97, i32 noundef 0) #5
  %141 = ptrtoint ptr %regmap.i.i98 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regmap.i.i98, align 4
  %call.i.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %142, i32 noundef 10, i32 noundef 7, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @mutex_unlock(ptr noundef %page_lock.i.i97) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp60 = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp60, label %st_lsm6dsx_resume_fifo.exit.out_crit_edge, label %st_lsm6dsx_resume_fifo.exit.if.end64_crit_edge

st_lsm6dsx_resume_fifo.exit.if.end64_crit_edge:   ; preds = %st_lsm6dsx_resume_fifo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

st_lsm6dsx_resume_fifo.exit.out_crit_edge:        ; preds = %st_lsm6dsx_resume_fifo.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end64:                                         ; preds = %st_lsm6dsx_resume_fifo.exit.if.end64_crit_edge, %if.end56.if.end64_crit_edge
  %err.0 = phi i32 [ %call.i.i.i.i, %st_lsm6dsx_resume_fifo.exit.if.end64_crit_edge ], [ %call52, %if.end56.if.end64_crit_edge ]
  %143 = ptrtoint ptr %fifo_mask9 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %fifo_mask.0, ptr %fifo_mask9, align 2
  br label %out

out:                                              ; preds = %if.end64, %st_lsm6dsx_resume_fifo.exit.out_crit_edge, %if.then58.out_crit_edge, %if.end51.out_crit_edge, %st_lsm6dsx_update_decimators.exit.out_crit_edge, %if.then23.i.out_crit_edge, %st_lsm6dsx_set_fifo_odr.exit.out_crit_edge, %st_lsm6dsx_set_fifo_odr.exit.thread, %if.else33.out_crit_edge, %if.then26.out_crit_edge, %if.then11.out_crit_edge
  %err.1 = phi i32 [ %call, %if.then11.out_crit_edge ], [ %call28, %if.then26.out_crit_edge ], [ %retval.2.i, %st_lsm6dsx_set_fifo_odr.exit.out_crit_edge ], [ %retval.4.i, %st_lsm6dsx_update_decimators.exit.out_crit_edge ], [ %call52, %if.end51.out_crit_edge ], [ %call.i.i.i.i, %st_lsm6dsx_resume_fifo.exit.out_crit_edge ], [ %err.0, %if.end64 ], [ %call35, %if.else33.out_crit_edge ], [ %call.i, %st_lsm6dsx_set_fifo_odr.exit.thread ], [ %call.i109, %if.then58.out_crit_edge ], [ %call.i.i.i108, %if.then23.i.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %conf_lock) #5
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_shub_set_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_sensor_set_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_lsm6dsx_fifo_setup(ptr nocapture noundef readonly %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %call = tail call i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %3, ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull @st_lsm6dsx_buffer_ops, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %call.1 = tail call i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %7, ptr noundef nonnull %5, i32 noundef 4, ptr noundef nonnull @st_lsm6dsx_buffer_ops, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool3.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool3.not.1, label %if.end.1.for.inc.1_crit_edge, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %call.2 = tail call i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %11, ptr noundef nonnull %9, i32 noundef 4, ptr noundef nonnull @st_lsm6dsx_buffer_ops, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool3.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool3.not.2, label %if.end.2.for.inc.2_crit_edge, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %13, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %call.3 = tail call i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %15, ptr noundef nonnull %13, i32 noundef 4, ptr noundef nonnull @st_lsm6dsx_buffer_ops, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool3.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool3.not.3, label %if.end.3.for.inc.3_crit_edge, label %if.end.3.cleanup_crit_edge

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %17, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %call.4 = tail call i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %19, ptr noundef nonnull %17, i32 noundef 4, ptr noundef nonnull @st_lsm6dsx_buffer_ops, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool3.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool3.not.4, label %if.end.4.for.inc.4_crit_edge, label %if.end.4.cleanup_crit_edge

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.4, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ %call.1, %if.end.1.cleanup_crit_edge ], [ %call.2, %if.end.2.cleanup_crit_edge ], [ %call.3, %if.end.3.cleanup_crit_edge ], [ %call.4, %if.end.4.cleanup_crit_edge ], [ 0, %for.inc.4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_check_odr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_lsm6dsx_buffer_preenable(ptr nocapture noundef readonly %iio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %hw1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %settings, align 4
  %fifo_ops = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %fifo_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fifo_ops, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 %7(ptr noundef %1, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_lsm6dsx_buffer_postdisable(ptr nocapture noundef readonly %iio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %hw1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %settings, align 4
  %fifo_ops = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %fifo_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fifo_ops, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 %7(ptr noundef %1, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c", i32 364, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @st_lsm6dsx_read_fifo._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @st_lsm6dsx_read_fifo._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c", i32 386, i32 4}
!10 = !{ptr @st_lsm6dsx_read_fifo._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @st_lsm6dsx_read_fifo._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c", i32 486, i32 4}
!14 = !{ptr @st_lsm6dsx_read_fifo._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @st_lsm6dsx_read_fifo._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c", i32 578, i32 3}
!18 = !{ptr @st_lsm6dsx_read_tagged_fifo._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @st_lsm6dsx_read_tagged_fifo._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @st_lsm6dsx_read_tagged_fifo._entry.12, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c", i32 595, i32 4}
!22 = !{ptr @st_lsm6dsx_read_tagged_fifo._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @st_lsm6dsx_decimator_table, !24, !"st_lsm6dsx_decimator_table", i1 false, i1 false}
!24 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c", i32 70, i32 35}
!25 = !{ptr @st_lsm6dsx_buffer_ops, !26, !"st_lsm6dsx_buffer_ops", i1 false, i1 false}
!26 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_buffer.c", i32 735, i32 42}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
!37 = !{i8 0, i8 2}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i32 0, i32 33}
