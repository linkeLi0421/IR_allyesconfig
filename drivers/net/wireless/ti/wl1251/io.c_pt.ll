; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl1251/io.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl1251/io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wl1251 = type { ptr, i8, ptr, ptr, i32, i32, i8, ptr, %struct.spinlock, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.boot_attr, ptr, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, i32, i8, i8, ptr, ptr, i32, %struct.sk_buff_head, i8, %struct.work_struct, [16 x ptr], i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, [2 x i32], i8, i32, i32, i32, i32, i32, i8, %struct.delayed_work, i32, i8, i8, i16, i8, i32, i32, %struct.wl1251_stats, %struct.wl1251_debugfs, i32, i32, [8 x i8], ptr, ptr, i32, [21 x i8], i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.boot_attr = type { i32, i8, i8, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wl1251_stats = type { ptr, i32, i32, i32 }
%struct.wl1251_debugfs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wl1251_if_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wl1251_partition = type { i32, i32 }

@wl1251_translate_reg_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013wl1251: ERROR address out of range (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wl1251_translate_reg_addr\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/ti/wl1251/io.c\00", [60 x i8] zeroinitializer }, align 32
@wl1251_translate_reg_addr._entry_ptr = internal global ptr @wl1251_translate_reg_addr._entry, section ".printk_index", align 4
@wl1251_io_reg_table = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 3146868, i32 3146872, i32 3146900, i32 3146904, i32 3146908, i32 3146928, i32 3146916, i32 3146920, i32 3145728, i32 3147788, i32 3147780], [52 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 35, i32 4 }
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"wl1251_io_reg_table\00", align 1
@___asan_gen_.16 = private constant [39 x i8] c"../drivers/net/wireless/ti/wl1251/io.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 13, i32 32 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @wl1251_translate_reg_addr._entry, ptr @wl1251_translate_reg_addr._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @wl1251_io_reg_table], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_translate_reg_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_io_reg_table to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_mem_read(ptr noundef %wl, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %physical_mem_addr.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 11
  %0 = ptrtoint ptr %physical_mem_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %physical_mem_addr.i, align 4
  %sub.i = sub i32 %addr, %1
  %virtual_mem_addr.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 13
  %2 = ptrtoint ptr %virtual_mem_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virtual_mem_addr.i, align 4
  %add.i = add i32 %sub.i, %3
  %if_ops = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 3
  %4 = ptrtoint ptr %if_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %if_ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %wl, i32 noundef %add.i, ptr noundef %buf, i32 noundef %len) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_mem_write(ptr noundef %wl, i32 noundef %addr, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %physical_mem_addr.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 11
  %0 = ptrtoint ptr %physical_mem_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %physical_mem_addr.i, align 4
  %sub.i = sub i32 %addr, %1
  %virtual_mem_addr.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 13
  %2 = ptrtoint ptr %virtual_mem_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virtual_mem_addr.i, align 4
  %add.i = add i32 %sub.i, %3
  %if_ops = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 3
  %4 = ptrtoint ptr %if_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %if_ops, align 4
  %write = getelementptr inbounds %struct.wl1251_if_operations, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 4
  tail call void %7(ptr noundef %wl, i32 noundef %add.i, ptr noundef %buf, i32 noundef %len) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_mem_read32(ptr noundef %wl, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %physical_mem_addr.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 11
  %0 = ptrtoint ptr %physical_mem_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %physical_mem_addr.i, align 4
  %sub.i = sub i32 %addr, %1
  %virtual_mem_addr.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 13
  %2 = ptrtoint ptr %virtual_mem_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virtual_mem_addr.i, align 4
  %add.i = add i32 %sub.i, %3
  %if_ops.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 3
  %4 = ptrtoint ptr %if_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %if_ops.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %buffer_32.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 62
  tail call void %7(ptr noundef %wl, i32 noundef %add.i, ptr noundef %buffer_32.i, i32 noundef 4) #4
  %8 = ptrtoint ptr %buffer_32.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_32.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_mem_write32(ptr noundef %wl, i32 noundef %addr, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %physical_mem_addr.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 11
  %0 = ptrtoint ptr %physical_mem_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %physical_mem_addr.i, align 4
  %sub.i = sub i32 %addr, %1
  %virtual_mem_addr.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 13
  %2 = ptrtoint ptr %virtual_mem_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %virtual_mem_addr.i, align 4
  %add.i = add i32 %sub.i, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %val) #4
  %buffer_32.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 62
  %5 = ptrtoint ptr %buffer_32.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %buffer_32.i, align 4
  %if_ops.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 3
  %6 = ptrtoint ptr %if_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_ops.i, align 4
  %write.i = getelementptr inbounds %struct.wl1251_if_operations, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  tail call void %9(ptr noundef %wl, i32 noundef %add.i, ptr noundef %buffer_32.i, i32 noundef 4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_reg_read32(ptr noundef %wl, i32 noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145728, i32 %addr)
  %cmp.i = icmp slt i32 %addr, 3145728
  br i1 %cmp.i, label %if.then.i, label %entry.if.end3.i_crit_edge

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %addr)
  %cmp1.i = icmp sgt i32 %addr, 10
  br i1 %cmp1.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %addr) #7
  br label %wl1251_translate_reg_addr.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr [11 x i32], ptr @wl1251_io_reg_table, i32 0, i32 %addr
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i, %entry.if.end3.i_crit_edge
  %addr.addr.0.i = phi i32 [ %1, %if.end.i ], [ %addr, %entry.if.end3.i_crit_edge ]
  %physical_reg_addr.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 12
  %2 = ptrtoint ptr %physical_reg_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %physical_reg_addr.i, align 4
  %sub.i = sub i32 %addr.addr.0.i, %3
  %virtual_reg_addr.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 14
  %4 = ptrtoint ptr %virtual_reg_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virtual_reg_addr.i, align 4
  %add.i = add i32 %sub.i, %5
  br label %wl1251_translate_reg_addr.exit

wl1251_translate_reg_addr.exit:                   ; preds = %if.end3.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %add.i, %if.end3.i ]
  %if_ops.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 3
  %6 = ptrtoint ptr %if_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %if_ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %buffer_32.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 62
  tail call void %9(ptr noundef %wl, i32 noundef %retval.0.i, ptr noundef %buffer_32.i, i32 noundef 4) #4
  %10 = ptrtoint ptr %buffer_32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_32.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_reg_write32(ptr noundef %wl, i32 noundef %addr, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145728, i32 %addr)
  %cmp.i = icmp slt i32 %addr, 3145728
  br i1 %cmp.i, label %if.then.i, label %entry.if.end3.i_crit_edge

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %addr)
  %cmp1.i = icmp sgt i32 %addr, 10
  br i1 %cmp1.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %addr) #7
  br label %wl1251_translate_reg_addr.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr [11 x i32], ptr @wl1251_io_reg_table, i32 0, i32 %addr
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i, %entry.if.end3.i_crit_edge
  %addr.addr.0.i = phi i32 [ %1, %if.end.i ], [ %addr, %entry.if.end3.i_crit_edge ]
  %physical_reg_addr.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 12
  %2 = ptrtoint ptr %physical_reg_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %physical_reg_addr.i, align 4
  %sub.i = sub i32 %addr.addr.0.i, %3
  %virtual_reg_addr.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 14
  %4 = ptrtoint ptr %virtual_reg_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %virtual_reg_addr.i, align 4
  %add.i = add i32 %sub.i, %5
  br label %wl1251_translate_reg_addr.exit

wl1251_translate_reg_addr.exit:                   ; preds = %if.end3.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %add.i, %if.end3.i ]
  %6 = tail call i32 @llvm.bswap.i32(i32 %val) #4
  %buffer_32.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 62
  %7 = ptrtoint ptr %buffer_32.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buffer_32.i, align 4
  %if_ops.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 3
  %8 = ptrtoint ptr %if_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %if_ops.i, align 4
  %write.i = getelementptr inbounds %struct.wl1251_if_operations, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 4
  tail call void %11(ptr noundef %wl, i32 noundef %retval.0.i, ptr noundef %buffer_32.i, i32 noundef 4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_set_partition(ptr noundef %wl, i32 noundef %mem_start, i32 noundef %mem_size, i32 noundef %reg_start, i32 noundef %reg_size) local_unnamed_addr #0 align 64 {
entry:
  %partition = alloca [2 x %struct.wl1251_partition], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %partition) #4
  %add = add i32 %reg_size, %mem_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 131008, i32 %add)
  %cmp = icmp ugt i32 %add, 131008
  %sub = sub i32 131008, %reg_size
  %spec.select = select i1 %cmp, i32 %sub, i32 %mem_size
  call void @__sanitizer_cov_trace_cmp4(i32 %mem_start, i32 %reg_start)
  %cmp13 = icmp ult i32 %mem_start, %reg_start
  %add14 = add i32 %spec.select, %mem_start
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %reg_start)
  %cmp15 = icmp ugt i32 %add14, %reg_start
  %or.cond = and i1 %cmp13, %cmp15
  br i1 %or.cond, label %do.end19, label %if.else

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub20 = sub i32 %reg_start, %mem_start
  br label %if.end43

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %reg_start, i32 %mem_start)
  %cmp27 = icmp ult i32 %reg_start, %mem_start
  %add29 = add i32 %reg_size, %reg_start
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %mem_start)
  %cmp30 = icmp ugt i32 %add29, %mem_start
  %or.cond74 = and i1 %cmp27, %cmp30
  %sub35 = sub i32 %mem_start, %reg_start
  %spec.select75 = select i1 %or.cond74, i32 %sub35, i32 %reg_size
  br label %if.end43

if.end43:                                         ; preds = %if.else, %do.end19
  %mem_size.addr.1 = phi i32 [ %sub20, %do.end19 ], [ %spec.select, %if.else ]
  %reg_size.addr.0 = phi i32 [ %reg_size, %do.end19 ], [ %spec.select75, %if.else ]
  %0 = getelementptr inbounds [2 x %struct.wl1251_partition], ptr %partition, i32 0, i32 1, i32 1
  %1 = getelementptr inbounds [2 x %struct.wl1251_partition], ptr %partition, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wl1251_partition, ptr %partition, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mem_start, ptr %2, align 4
  %4 = ptrtoint ptr %partition to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mem_size.addr.1, ptr %partition, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %reg_start, ptr %0, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %reg_size.addr.0, ptr %1, align 4
  %physical_mem_addr = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 11
  %7 = ptrtoint ptr %physical_mem_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mem_start, ptr %physical_mem_addr, align 4
  %physical_reg_addr = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 12
  %8 = ptrtoint ptr %physical_reg_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %reg_start, ptr %physical_reg_addr, align 4
  %virtual_mem_addr = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 13
  %9 = ptrtoint ptr %virtual_mem_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %virtual_mem_addr, align 4
  %virtual_reg_addr = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 14
  %10 = ptrtoint ptr %virtual_reg_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mem_size.addr.1, ptr %virtual_reg_addr, align 4
  %if_ops = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 3
  %11 = ptrtoint ptr %if_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %if_ops, align 4
  %write = getelementptr inbounds %struct.wl1251_if_operations, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write, align 4
  call void %14(ptr noundef %wl, i32 noundef 131008, ptr noundef nonnull %partition, i32 noundef 16) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %partition) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl1251/io.c", i32 35, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @wl1251_translate_reg_addr._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @wl1251_translate_reg_addr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @wl1251_io_reg_table, !7, !"wl1251_io_reg_table", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl1251/io.c", i32 13, i32 32}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
