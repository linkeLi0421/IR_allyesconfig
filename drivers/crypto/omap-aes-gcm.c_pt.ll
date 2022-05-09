; ModuleID = '/llk/IR_all_yes/drivers/crypto/omap-aes-gcm.c_pt.bc'
source_filename = "../drivers/crypto/omap-aes-gcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_aes_dev = type { %struct.list_head, i32, ptr, ptr, ptr, i32, i32, %struct.tasklet_struct, %struct.aead_queue, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [2 x %struct.scatterlist], %struct.scatterlist, ptr, %struct.scatter_walk, %struct.scatter_walk, ptr, ptr, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.72, i32 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { ptr }
%struct.aead_queue = type { %struct.crypto_queue }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.scatter_walk = type { ptr, i32 }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@switch.table.omap_aes_gcm_setauthsize = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 0, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 16]
@___asan_gen_ = private constant [33 x i8] c"../drivers/crypto/omap-aes-gcm.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [38 x i8] c"switch.table.omap_aes_gcm_setauthsize\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @switch.table.omap_aes_gcm_setauthsize], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap_aes_gcm_setauthsize to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_aes_gcm_dma_out_callback(ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %tag = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tag) #5
  %0 = getelementptr inbounds [4 x i32], ptr %tag, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %tag, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %tag, i32 0, i32 3
  %flags = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 5
  %3 = call ptr @memset(ptr %tag, i32 255, i32 16)
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %aead_req = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 11
  %6 = ptrtoint ptr %aead_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aead_req, align 4
  %src = getelementptr inbounds %struct.aead_request, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src, align 4
  %total = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 13
  %10 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %total, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %assoclen, align 8
  %add = add i32 %13, %11
  %authsize = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 16
  %14 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %authsize, align 4
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %tag, ptr noundef %9, i32 noundef %add, i32 noundef %15, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %aead_req2 = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 11
  %16 = ptrtoint ptr %aead_req2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aead_req2, align 4
  %auth_tag3 = getelementptr inbounds %struct.aead_request, ptr %17, i32 1, i32 1
  %call6 = call i32 @omap_aes_read(ptr noundef %data, i32 noundef 112) #5
  %18 = ptrtoint ptr %auth_tag3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %auth_tag3, align 4
  %xor = xor i32 %19, %call6
  store i32 %xor, ptr %auth_tag3, align 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and9 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tag, align 4
  %xor14 = xor i32 %23, %xor
  %24 = ptrtoint ptr %auth_tag3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %xor14, ptr %auth_tag3, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.end.for.inc_crit_edge
  %call6.1 = call i32 @omap_aes_read(ptr noundef %data, i32 noundef 116) #5
  %arrayidx.1 = getelementptr %struct.aead_request, ptr %17, i32 1, i32 2
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1, align 4
  %xor.1 = xor i32 %26, %call6.1
  store i32 %xor.1, ptr %arrayidx.1, align 4
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and9.1 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.1)
  %tobool10.not.1 = icmp eq i32 %and9.1, 0
  br i1 %tobool10.not.1, label %if.then11.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then11.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %0, align 4
  %xor14.1 = xor i32 %30, %xor.1
  %31 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %xor14.1, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then11.1, %for.inc.for.inc.1_crit_edge
  %call6.2 = call i32 @omap_aes_read(ptr noundef %data, i32 noundef 120) #5
  %arrayidx.2 = getelementptr %struct.aead_request, ptr %17, i32 1, i32 3
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.2, align 4
  %xor.2 = xor i32 %33, %call6.2
  store i32 %xor.2, ptr %arrayidx.2, align 4
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and9.2 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.2)
  %tobool10.not.2 = icmp eq i32 %and9.2, 0
  br i1 %tobool10.not.2, label %if.then11.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then11.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  %xor14.2 = xor i32 %37, %xor.2
  %38 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %xor14.2, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then11.2, %for.inc.1.for.inc.2_crit_edge
  %call6.3 = call i32 @omap_aes_read(ptr noundef %data, i32 noundef 124) #5
  %arrayidx.3 = getelementptr %struct.aead_request, ptr %17, i32 1, i32 4
  %39 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.3, align 4
  %xor.3 = xor i32 %40, %call6.3
  store i32 %xor.3, ptr %arrayidx.3, align 4
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and9.3 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.3)
  %tobool10.not.3 = icmp eq i32 %and9.3, 0
  br i1 %tobool10.not.3, label %if.then11.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then11.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %2, align 4
  %xor14.3 = xor i32 %44, %xor.3
  %45 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %xor14.3, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then11.3, %for.inc.2.for.inc.3_crit_edge
  %assoc_len.i = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 15
  %46 = ptrtoint ptr %assoc_len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %assoc_len.i, align 4
  %add.i = add i32 %47, 15
  %and.i = and i32 %add.i, -16
  %total.i = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 13
  %48 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %total.i, align 4
  %add1.i = add i32 %49, 15
  %and2.i = and i32 %add1.i, -16
  %50 = ptrtoint ptr %aead_req2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %aead_req2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp ne i32 %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool5.i = icmp ne i32 %49, 0
  %narrow.i = select i1 %tobool.not.i, i1 %tobool5.i, i1 false
  %52 = zext i1 %narrow.i to i32
  %dev.i = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 4
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  %out_sg.i = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 18
  %55 = ptrtoint ptr %out_sg.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %out_sg.i, align 4
  %out_sg_len.i = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 27
  %57 = ptrtoint ptr %out_sg_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %out_sg_len.i, align 4
  call void @dma_sync_sg_for_device(ptr noundef %54, ptr noundef %56, i32 noundef %58, i32 noundef 2) #5
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  %in_sg.i = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 17
  %61 = ptrtoint ptr %in_sg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %in_sg.i, align 4
  %in_sg_len.i = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 26
  %63 = ptrtoint ptr %in_sg_len.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %in_sg_len.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %60, ptr noundef %62, i32 noundef %64, i32 noundef 1, i32 noundef 0) #5
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  %67 = ptrtoint ptr %out_sg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %out_sg.i, align 4
  %69 = ptrtoint ptr %out_sg_len.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %out_sg_len.i, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %66, ptr noundef %68, i32 noundef %70, i32 noundef 2, i32 noundef 0) #5
  %call11.i = call i32 @omap_aes_crypt_dma_stop(ptr noundef %data) #5
  %71 = ptrtoint ptr %out_sg.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %out_sg.i, align 4
  %orig_out.i = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 21
  %73 = ptrtoint ptr %orig_out.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %orig_out.i, align 4
  %75 = ptrtoint ptr %aead_req2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %aead_req2, align 4
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %assoclen.i, align 8
  %79 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %total.i, align 4
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags, align 4
  call void @omap_crypto_cleanup(ptr noundef %72, ptr noundef %74, i32 noundef %78, i32 noundef %80, i8 noundef zeroext 10, i32 noundef %82) #5
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags, align 4
  %and16.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %for.inc.3.if.end.i_crit_edge, label %if.then.i

for.inc.3.if.end.i_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %auth_tag.i = getelementptr inbounds %struct.aead_request, ptr %51, i32 1, i32 1
  %85 = ptrtoint ptr %aead_req2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %aead_req2, align 4
  %dst.i = getelementptr inbounds %struct.aead_request, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dst.i, align 8
  %89 = ptrtoint ptr %total.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %total.i, align 4
  %assoclen21.i = getelementptr inbounds %struct.aead_request, ptr %86, i32 0, i32 1
  %91 = ptrtoint ptr %assoclen21.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %assoclen21.i, align 8
  %add22.i = add i32 %92, %90
  %authsize.i = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 16
  %93 = ptrtoint ptr %authsize.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %authsize.i, align 4
  call void @scatterwalk_map_and_copy(ptr noundef %auth_tag.i, ptr noundef %88, i32 noundef %add22.i, i32 noundef %94, i32 noundef 1) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.inc.3.if.end.i_crit_edge
  %in_sgl.i = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 19
  %95 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags, align 4
  call void @omap_crypto_cleanup(ptr noundef %in_sgl.i, ptr noundef null, i32 noundef 0, i32 noundef %and.i, i8 noundef zeroext 12, i32 noundef %96) #5
  %arrayidx25.i = getelementptr %struct.omap_aes_dev, ptr %data, i32 0, i32 19, i32 %52
  %97 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags, align 4
  call void @omap_crypto_cleanup(ptr noundef %arrayidx25.i, ptr noundef null, i32 noundef 0, i32 noundef %and2.i, i8 noundef zeroext 8, i32 noundef %98) #5
  %99 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags, align 4
  %and28.i = and i32 %100, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.end.i.omap_aes_gcm_done_task.exit_crit_edge

if.end.i.omap_aes_gcm_done_task.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_aes_gcm_done_task.exit

if.then30.i:                                      ; preds = %if.end.i
  %auth_tag31.i = getelementptr inbounds %struct.aead_request, ptr %51, i32 1, i32 1
  %authsize33.i = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 16
  %101 = ptrtoint ptr %authsize33.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %authsize33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp73.not.i = icmp eq i32 %102, 0
  br i1 %cmp73.not.i, label %if.then30.i.omap_aes_gcm_done_task.exit_crit_edge, label %if.then30.i.for.body.i_crit_edge

if.then30.i.for.body.i_crit_edge:                 ; preds = %if.then30.i
  br label %for.body.i

if.then30.i.omap_aes_gcm_done_task.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_aes_gcm_done_task.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then30.i.for.body.i_crit_edge
  %ret.075.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then30.i.for.body.i_crit_edge ]
  %i.074.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then30.i.for.body.i_crit_edge ]
  %arrayidx34.i = getelementptr i8, ptr %auth_tag31.i, i32 %i.074.i
  %103 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx34.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool35.not.i = icmp eq i8 %104, 0
  %spec.select.i = select i1 %tobool35.not.i, i32 %ret.075.i, i32 -74
  %inc.i = add nuw i32 %i.074.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %102
  br i1 %exitcond.not.i, label %for.body.i.omap_aes_gcm_done_task.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.omap_aes_gcm_done_task.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_aes_gcm_done_task.exit

omap_aes_gcm_done_task.exit:                      ; preds = %for.body.i.omap_aes_gcm_done_task.exit_crit_edge, %if.then30.i.omap_aes_gcm_done_task.exit_crit_edge, %if.end.i.omap_aes_gcm_done_task.exit_crit_edge
  %ret.2.i = phi i32 [ 0, %if.end.i.omap_aes_gcm_done_task.exit_crit_edge ], [ 0, %if.then30.i.omap_aes_gcm_done_task.exit_crit_edge ], [ %spec.select.i, %for.body.i.omap_aes_gcm_done_task.exit_crit_edge ]
  %105 = ptrtoint ptr %aead_req2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %aead_req2, align 4
  %107 = ptrtoint ptr %in_sg.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %in_sg.i, align 4
  %108 = ptrtoint ptr %out_sg.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %out_sg.i, align 4
  %engine.i.i = getelementptr inbounds %struct.omap_aes_dev, ptr %data, i32 0, i32 12
  %109 = ptrtoint ptr %engine.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %engine.i.i, align 4
  call void @crypto_finalize_aead_request(ptr noundef %110, ptr noundef %106, i32 noundef %ret.2.i) #5
  %111 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev.i, align 4
  %call.i.i.i = call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i.i.i = getelementptr inbounds %struct.device, ptr %112, i32 0, i32 12, i32 22
  %113 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store volatile i64 %call.i.i.i, ptr %last_busy.i.i.i, align 8
  %114 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev.i, align 4
  %call.i7.i.i = call i32 @__pm_runtime_suspend(ptr noundef %115, i32 noundef 13) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tag) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_aes_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_aes_gcm_encrypt(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %iv1 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %iv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv1, align 32
  %2 = call ptr @memcpy(ptr %iv, ptr %1, i32 12)
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %3 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 -128
  %5 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i.i, align 128
  %auth_tag.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %7 = call ptr @memset(ptr %auth_tag.i, i32 0, i32 16)
  %add.ptr.i = getelementptr %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 1, ptr %add.ptr.i, align 1
  %actx.i.i = getelementptr i8, ptr %4, i32 184
  tail call void @aes_encrypt(ptr noundef %actx.i.i, ptr noundef %auth_tag.i, ptr noundef %iv) #5
  %assoclen12.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %assoclen12.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %assoclen12.i, align 8
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cryptlen.i, align 4
  %add.i = sub i32 0, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.i)
  %cmp.i = icmp eq i32 %10, %add.i
  br i1 %cmp.i, label %if.then14.i, label %if.end17.i

if.then14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dst.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %13 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst.i, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef %auth_tag.i, ptr noundef %14, i32 noundef 0, i32 noundef %6, i32 noundef 1) #5
  br label %omap_aes_gcm_crypt.exit

if.end17.i:                                       ; preds = %entry
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %call18.i = tail call ptr @omap_aes_find_dev(ptr noundef %__ctx.i) #5
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end17.i.omap_aes_gcm_crypt.exit_crit_edge, label %if.end21.i

if.end17.i.omap_aes_gcm_crypt.exit_crit_edge:     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_aes_gcm_crypt.exit

if.end21.i:                                       ; preds = %if.end17.i
  %mode22.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %mode22.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 9, ptr %mode22.i, align 4
  %tobool.not.i.i = icmp eq ptr %req, null
  br i1 %tobool.not.i.i, label %if.end21.i.omap_aes_gcm_crypt.exit_crit_edge, label %if.then.i.i

if.end21.i.omap_aes_gcm_crypt.exit_crit_edge:     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_aes_gcm_crypt.exit

if.then.i.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %engine.i.i = getelementptr inbounds %struct.omap_aes_dev, ptr %call18.i, i32 0, i32 12
  %16 = ptrtoint ptr %engine.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %engine.i.i, align 4
  %call.i.i = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %17, ptr noundef nonnull %req) #5
  br label %omap_aes_gcm_crypt.exit

omap_aes_gcm_crypt.exit:                          ; preds = %if.then.i.i, %if.end21.i.omap_aes_gcm_crypt.exit_crit_edge, %if.end17.i.omap_aes_gcm_crypt.exit_crit_edge, %if.then14.i
  %retval.0.i = phi i32 [ 0, %if.then14.i ], [ -19, %if.end17.i.omap_aes_gcm_crypt.exit_crit_edge ], [ %call.i.i, %if.then.i.i ], [ 0, %if.end21.i.omap_aes_gcm_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_aes_gcm_decrypt(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %iv1 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %iv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv1, align 32
  %2 = call ptr @memcpy(ptr %iv, ptr %1, i32 12)
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %3 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm.i.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 -128
  %5 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i.i, align 128
  %auth_tag.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %7 = call ptr @memset(ptr %auth_tag.i, i32 0, i32 16)
  %add.ptr.i = getelementptr %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 1, ptr %add.ptr.i, align 1
  %actx.i.i = getelementptr i8, ptr %4, i32 184
  tail call void @aes_encrypt(ptr noundef %actx.i.i, ptr noundef %auth_tag.i, ptr noundef %iv) #5
  %assoclen12.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %9 = ptrtoint ptr %assoclen12.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %assoclen12.i, align 8
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %11 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cryptlen.i, align 4
  %add.i = sub i32 0, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %add.i)
  %cmp.i = icmp eq i32 %10, %add.i
  br i1 %cmp.i, label %if.then14.i, label %if.end17.i

if.then14.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dst.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %13 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst.i, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef %auth_tag.i, ptr noundef %14, i32 noundef 0, i32 noundef %6, i32 noundef 1) #5
  br label %omap_aes_gcm_crypt.exit

if.end17.i:                                       ; preds = %entry
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %call18.i = tail call ptr @omap_aes_find_dev(ptr noundef %__ctx.i) #5
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end17.i.omap_aes_gcm_crypt.exit_crit_edge, label %if.end21.i

if.end17.i.omap_aes_gcm_crypt.exit_crit_edge:     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_aes_gcm_crypt.exit

if.end21.i:                                       ; preds = %if.end17.i
  %mode22.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %mode22.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8, ptr %mode22.i, align 4
  %tobool.not.i.i = icmp eq ptr %req, null
  br i1 %tobool.not.i.i, label %if.end21.i.omap_aes_gcm_crypt.exit_crit_edge, label %if.then.i.i

if.end21.i.omap_aes_gcm_crypt.exit_crit_edge:     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_aes_gcm_crypt.exit

if.then.i.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %engine.i.i = getelementptr inbounds %struct.omap_aes_dev, ptr %call18.i, i32 0, i32 12
  %16 = ptrtoint ptr %engine.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %engine.i.i, align 4
  %call.i.i = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %17, ptr noundef nonnull %req) #5
  br label %omap_aes_gcm_crypt.exit

omap_aes_gcm_crypt.exit:                          ; preds = %if.then.i.i, %if.end21.i.omap_aes_gcm_crypt.exit_crit_edge, %if.end17.i.omap_aes_gcm_crypt.exit_crit_edge, %if.then14.i
  %retval.0.i = phi i32 [ 0, %if.then14.i ], [ -19, %if.end17.i.omap_aes_gcm_crypt.exit_crit_edge ], [ %call.i.i, %if.then.i.i ], [ 0, %if.end21.i.omap_aes_gcm_crypt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_aes_4106gcm_encrypt(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %nonce = getelementptr i8, ptr %1, i32 176
  %2 = ptrtoint ptr %nonce to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nonce, align 4
  %4 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %iv, align 8
  %add.ptr = getelementptr %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %iv6 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %iv6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iv6, align 32
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %6, align 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %add.ptr, align 1
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %10 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %assoclen, align 8
  %12 = add i32 %11, -16
  %switch.and.i = and i32 %12, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i, align 128
  %auth_tag.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %15 = call ptr @memset(ptr %auth_tag.i, i32 0, i32 16)
  %add.ptr.i = getelementptr %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 1, ptr %add.ptr.i, align 1
  %actx.i.i = getelementptr i8, ptr %1, i32 184
  tail call void @aes_encrypt(ptr noundef %actx.i.i, ptr noundef %auth_tag.i, ptr noundef %iv) #5
  %17 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %assoclen, align 8
  %sub.i = add i32 %18, -8
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %19 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cryptlen.i, align 4
  %add.i = sub i32 0, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add.i)
  %cmp.i = icmp eq i32 %sub.i, %add.i
  br i1 %cmp.i, label %if.then14.i, label %if.end17.i

if.then14.i:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  %dst.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %21 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dst.i, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef %auth_tag.i, ptr noundef %22, i32 noundef 0, i32 noundef %14, i32 noundef 1) #5
  br label %cond.end

if.end17.i:                                       ; preds = %cond.false
  %call18.i = tail call ptr @omap_aes_find_dev(ptr noundef %__ctx.i) #5
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end17.i.cond.end_crit_edge, label %if.end21.i

if.end17.i.cond.end_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

if.end21.i:                                       ; preds = %if.end17.i
  %mode22.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %mode22.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 25, ptr %mode22.i, align 4
  %tobool.not.i.i = icmp eq ptr %req, null
  br i1 %tobool.not.i.i, label %if.end21.i.cond.end_crit_edge, label %if.then.i.i

if.end21.i.cond.end_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

if.then.i.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %engine.i.i = getelementptr inbounds %struct.omap_aes_dev, ptr %call18.i, i32 0, i32 12
  %24 = ptrtoint ptr %engine.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %engine.i.i, align 4
  %call.i.i = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %25, ptr noundef nonnull %req) #5
  br label %cond.end

cond.end:                                         ; preds = %if.then.i.i, %if.end21.i.cond.end_crit_edge, %if.end17.i.cond.end_crit_edge, %if.then14.i, %entry.cond.end_crit_edge
  %cond = phi i32 [ -22, %entry.cond.end_crit_edge ], [ 0, %if.then14.i ], [ -19, %if.end17.i.cond.end_crit_edge ], [ %call.i.i, %if.then.i.i ], [ 0, %if.end21.i.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_aes_4106gcm_decrypt(ptr noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %nonce = getelementptr i8, ptr %1, i32 176
  %2 = ptrtoint ptr %nonce to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nonce, align 4
  %4 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %iv, align 8
  %add.ptr = getelementptr %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %iv6 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %iv6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iv6, align 32
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %6, align 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %add.ptr, align 1
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %10 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %assoclen, align 8
  %12 = add i32 %11, -16
  %switch.and.i = and i32 %12, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i, align 128
  %auth_tag.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %15 = call ptr @memset(ptr %auth_tag.i, i32 0, i32 16)
  %add.ptr.i = getelementptr %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 1, ptr %add.ptr.i, align 1
  %actx.i.i = getelementptr i8, ptr %1, i32 184
  tail call void @aes_encrypt(ptr noundef %actx.i.i, ptr noundef %auth_tag.i, ptr noundef %iv) #5
  %17 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %assoclen, align 8
  %sub.i = add i32 %18, -8
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %19 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cryptlen.i, align 4
  %add.i = sub i32 0, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add.i)
  %cmp.i = icmp eq i32 %sub.i, %add.i
  br i1 %cmp.i, label %if.then14.i, label %if.end17.i

if.then14.i:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  %dst.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %21 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dst.i, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef %auth_tag.i, ptr noundef %22, i32 noundef 0, i32 noundef %14, i32 noundef 1) #5
  br label %cond.end

if.end17.i:                                       ; preds = %cond.false
  %call18.i = tail call ptr @omap_aes_find_dev(ptr noundef %__ctx.i) #5
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %if.end17.i.cond.end_crit_edge, label %if.end21.i

if.end17.i.cond.end_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

if.end21.i:                                       ; preds = %if.end17.i
  %mode22.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %mode22.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 24, ptr %mode22.i, align 4
  %tobool.not.i.i = icmp eq ptr %req, null
  br i1 %tobool.not.i.i, label %if.end21.i.cond.end_crit_edge, label %if.then.i.i

if.end21.i.cond.end_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

if.then.i.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %engine.i.i = getelementptr inbounds %struct.omap_aes_dev, ptr %call18.i, i32 0, i32 12
  %24 = ptrtoint ptr %engine.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %engine.i.i, align 4
  %call.i.i = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %25, ptr noundef nonnull %req) #5
  br label %cond.end

cond.end:                                         ; preds = %if.then.i.i, %if.end21.i.cond.end_crit_edge, %if.end17.i.cond.end_crit_edge, %if.then14.i, %entry.cond.end_crit_edge
  %cond = phi i32 [ -22, %entry.cond.end_crit_edge ], [ 0, %if.then14.i ], [ -19, %if.end17.i.cond.end_crit_edge ], [ %call.i.i, %if.then.i.i ], [ 0, %if.end21.i.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_aes_gcm_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %actx = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 48
  %call1 = tail call i32 @aes_expandkey(ptr noundef %actx, ptr noundef %key, i32 noundef %keylen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %key2 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 8
  %0 = call ptr @memcpy(ptr %key2, ptr %key, i32 %keylen)
  %keylen4 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 4
  %1 = ptrtoint ptr %keylen4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %keylen, ptr %keylen4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_aes_4106gcm_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keylen)
  %cmp = icmp ult i32 %keylen, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %keylen, -4
  %actx = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 48
  %call1 = tail call i32 @aes_expandkey(ptr noundef %actx, ptr noundef %key, i32 noundef %sub) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %key4 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 8
  %0 = call ptr @memcpy(ptr %key4, ptr %key, i32 %sub)
  %nonce = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 40
  %add.ptr = getelementptr i8, ptr %key, i32 %sub
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %add.ptr, align 1
  %3 = ptrtoint ptr %nonce to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %nonce, align 4
  %keylen8 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 4
  %4 = ptrtoint ptr %keylen8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %keylen8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_aes_gcm_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %authsize, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 13
  br i1 %0, label %switch.lookup, label %entry.crypto_gcm_check_authsize.exit_crit_edge

entry.crypto_gcm_check_authsize.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %crypto_gcm_check_authsize.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.omap_aes_gcm_setauthsize, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %crypto_gcm_check_authsize.exit

crypto_gcm_check_authsize.exit:                   ; preds = %switch.lookup, %entry.crypto_gcm_check_authsize.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.crypto_gcm_check_authsize.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_aes_4106gcm_setauthsize(ptr nocapture noundef readnone %parent, i32 noundef %authsize) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %authsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %authsize, label %entry.crypto_rfc4106_check_authsize.exit_crit_edge [
    i32 8, label %entry.sw.epilog.i_crit_edge
    i32 12, label %entry.sw.epilog.i_crit_edge1
    i32 16, label %entry.sw.epilog.i_crit_edge2
  ]

entry.sw.epilog.i_crit_edge2:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge1:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

entry.crypto_rfc4106_check_authsize.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %crypto_rfc4106_check_authsize.exit

sw.epilog.i:                                      ; preds = %entry.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge1, %entry.sw.epilog.i_crit_edge2
  br label %crypto_rfc4106_check_authsize.exit

crypto_rfc4106_check_authsize.exit:               ; preds = %sw.epilog.i, %entry.crypto_rfc4106_check_authsize.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ -22, %entry.crypto_rfc4106_check_authsize.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @omap_aes_gcm_cra_init(ptr nocapture noundef writeonly %tfm) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @omap_aes_gcm_prepare_req, ptr %__crt_ctx.i.i, align 4
  %unprepare_request = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %1 = ptrtoint ptr %unprepare_request to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %unprepare_request, align 4
  %do_one_request = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %2 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @omap_aes_gcm_crypt_req, ptr %do_one_request, align 4
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %3 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 256, ptr %reqsize1.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_gcm_prepare_req(ptr nocapture noundef readnone %engine, ptr noundef %areq) #0 align 64 {
entry:
  %tmp.i = alloca ptr, align 4
  %sg_arr.i = alloca [2 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 7
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx.i, align 128
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %3, i32 128
  %aead_req = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %aead_req to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %areq, ptr %aead_req, align 4
  %mode = getelementptr inbounds %struct.aead_request, ptr %areq, i32 1, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %and = and i32 %6, 31
  store i32 %and, ptr %mode, align 4
  %flags = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and4 = and i32 %8, -32
  %or = or i32 %and4, %and
  store i32 %or, ptr %flags, align 4
  %9 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 -128
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp.i, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %sg_arr.i) #5
  %13 = call ptr @memset(ptr %sg_arr.i, i32 255, i32 40)
  %assoclen2.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 1
  %14 = ptrtoint ptr %assoclen2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %assoclen2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 2
  %16 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cryptlen3.i, align 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %sub.i = add i32 %15, -8
  %spec.select.i = select i1 %tobool.not.i, i32 %15, i32 %sub.i
  %and6.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %sub9.i = select i1 %tobool7.not.i, i32 %11, i32 0
  %cryptlen.0.i = sub i32 %17, %sub9.i
  %add.i = add i32 %spec.select.i, 15
  %and11.i = and i32 %add.i, -16
  %add12.i = add i32 %cryptlen.0.i, 15
  %and13.i = and i32 %add12.i, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool14.not.i = icmp eq i32 %spec.select.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %sub9.i)
  %tobool15.i = icmp ne i32 %17, %sub9.i
  %not.tobool14.not.i = xor i1 %tobool14.not.i, true
  %20 = select i1 %not.tobool14.not.i, i1 %tobool15.i, i1 false
  %lnot.ext.i = zext i1 %20 to i32
  tail call void @omap_aes_clear_copy_flags(ptr noundef %1) #5
  %in_sgl.i = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 19
  %add17.i = select i1 %20, i32 2, i32 1
  tail call void @sg_init_table(ptr noundef %in_sgl.i, i32 noundef %add17.i) #5
  br i1 %tobool14.not.i, label %entry.if.end27.i_crit_edge, label %if.then19.i

entry.if.end27.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then19.i:                                      ; preds = %entry
  %src.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 4
  %21 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %src.i, align 4
  %23 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %tmp.i, align 4
  %call23.i = call i32 @omap_crypto_align_sg(ptr noundef nonnull %tmp.i, i32 noundef %spec.select.i, i32 noundef 16, ptr noundef %in_sgl.i, i16 noundef zeroext 13, i8 noundef zeroext 12, ptr noundef %flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.then19.i.if.end27.i_crit_edge, label %if.then19.i.omap_aes_gcm_copy_buffers.exit.thread_crit_edge

if.then19.i.omap_aes_gcm_copy_buffers.exit.thread_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_aes_gcm_copy_buffers.exit.thread

if.then19.i.if.end27.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then19.i.if.end27.i_crit_edge, %entry.if.end27.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %sub9.i)
  %tobool28.not.i = icmp eq i32 %17, %sub9.i
  br i1 %tobool28.not.i, label %if.end27.i.if.end45.i_crit_edge, label %if.then29.i

if.end27.i.if.end45.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

if.then29.i:                                      ; preds = %if.end27.i
  %src31.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 4
  %24 = ptrtoint ptr %src31.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %src31.i, align 4
  %26 = ptrtoint ptr %assoclen2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %assoclen2.i, align 8
  %call33.i = call ptr @scatterwalk_ffwd(ptr noundef nonnull %sg_arr.i, ptr noundef %25, i32 noundef %27) #5
  %28 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call33.i, ptr %tmp.i, align 4
  br i1 %20, label %if.then35.i, label %if.then29.i.if.end38.i_crit_edge

if.then29.i.if.end38.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then35.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %in_sgl.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %in_sgl.i, align 4
  %and.i.i = and i32 %30, -3
  store i32 %and.i.i, ptr %in_sgl.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.then29.i.if.end38.i_crit_edge
  %arrayidx.i = getelementptr %struct.omap_aes_dev, ptr %1, i32 0, i32 19, i32 %lnot.ext.i
  %call41.i = call i32 @omap_crypto_align_sg(ptr noundef nonnull %tmp.i, i32 noundef %cryptlen.0.i, i32 noundef 16, ptr noundef %arrayidx.i, i16 noundef zeroext 13, i8 noundef zeroext 8, ptr noundef %flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end38.i.if.end45.i_crit_edge, label %if.end38.i.omap_aes_gcm_copy_buffers.exit.thread_crit_edge

if.end38.i.omap_aes_gcm_copy_buffers.exit.thread_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_aes_gcm_copy_buffers.exit.thread

if.end38.i.if.end45.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end38.i.if.end45.i_crit_edge, %if.end27.i.if.end45.i_crit_edge
  %in_sg.i = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 17
  %31 = ptrtoint ptr %in_sg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %in_sgl.i, ptr %in_sg.i, align 4
  %total.i = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 13
  %32 = ptrtoint ptr %total.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cryptlen.0.i, ptr %total.i, align 4
  %assoc_len.i = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 15
  %33 = ptrtoint ptr %assoc_len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select.i, ptr %assoc_len.i, align 4
  %authsize.i = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 16
  %34 = ptrtoint ptr %authsize.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %11, ptr %authsize.i, align 4
  %dst.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 5
  %35 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dst.i, align 8
  %out_sg.i = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 18
  %37 = ptrtoint ptr %out_sg.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %out_sg.i, align 4
  %38 = load ptr, ptr %dst.i, align 8
  %orig_out.i = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 21
  %39 = ptrtoint ptr %orig_out.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %orig_out.i, align 4
  %40 = load ptr, ptr %dst.i, align 8
  %41 = ptrtoint ptr %assoclen2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %assoclen2.i, align 8
  %call52.i = call ptr @scatterwalk_ffwd(ptr noundef nonnull %sg_arr.i, ptr noundef %40, i32 noundef %42) #5
  %43 = ptrtoint ptr %out_sg.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call52.i, ptr %out_sg.i, align 4
  br i1 %tobool28.not.i, label %if.end45.i.if.end_crit_edge, label %if.then63.i

if.end45.i.if.end_crit_edge:                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then63.i:                                      ; preds = %if.end45.i
  %src54.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 4
  %44 = ptrtoint ptr %src54.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %src54.i, align 4
  %46 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dst.i, align 8
  %cmp.i = icmp eq ptr %45, %47
  %cmp58.i = icmp eq ptr %call52.i, %sg_arr.i
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp58.i
  %flags.0.i = select i1 %or.cond.i, i16 2, i16 0
  %out_sgl.i = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 20
  %call66.i = call i32 @omap_crypto_align_sg(ptr noundef %out_sg.i, i32 noundef %cryptlen.0.i, i32 noundef 16, ptr noundef %out_sgl.i, i16 noundef zeroext %flags.0.i, i8 noundef zeroext 10, ptr noundef %flags) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.then63.i.if.end_crit_edge, label %if.then63.i.omap_aes_gcm_copy_buffers.exit.thread_crit_edge

if.then63.i.omap_aes_gcm_copy_buffers.exit.thread_crit_edge: ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap_aes_gcm_copy_buffers.exit.thread

if.then63.i.if.end_crit_edge:                     ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

omap_aes_gcm_copy_buffers.exit.thread:            ; preds = %if.then63.i.omap_aes_gcm_copy_buffers.exit.thread_crit_edge, %if.end38.i.omap_aes_gcm_copy_buffers.exit.thread_crit_edge, %if.then19.i.omap_aes_gcm_copy_buffers.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call66.i, %if.then63.i.omap_aes_gcm_copy_buffers.exit.thread_crit_edge ], [ %call41.i, %if.end38.i.omap_aes_gcm_copy_buffers.exit.thread_crit_edge ], [ %call23.i, %if.then19.i.omap_aes_gcm_copy_buffers.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_arr.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  br label %cleanup

if.end:                                           ; preds = %if.then63.i.if.end_crit_edge, %if.end45.i.if.end_crit_edge
  %48 = ptrtoint ptr %in_sg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %in_sg.i, align 4
  %add72.i = add i32 %and13.i, %and11.i
  %conv73.i = sext i32 %add72.i to i64
  %call74.i = call i32 @sg_nents_for_len(ptr noundef %49, i64 noundef %conv73.i) #5
  %in_sg_len.i = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 26
  %50 = ptrtoint ptr %in_sg_len.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call74.i, ptr %in_sg_len.i, align 4
  %51 = ptrtoint ptr %out_sg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %out_sg.i, align 4
  %conv76.i = sext i32 %and13.i to i64
  %call77.i = call i32 @sg_nents_for_len(ptr noundef %52, i64 noundef %conv76.i) #5
  %out_sg_len.i = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 27
  %53 = ptrtoint ptr %out_sg_len.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call77.i, ptr %out_sg_len.i, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %sg_arr.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  %ctx8 = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %ctx8 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %__crt_ctx.i.i, ptr %ctx8, align 4
  %call9 = call i32 @omap_aes_write_ctrl(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %omap_aes_gcm_copy_buffers.exit.thread
  %retval.0 = phi i32 [ %call9, %if.end ], [ %retval.0.i.ph, %omap_aes_gcm_copy_buffers.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_aes_gcm_crypt_req(ptr nocapture noundef readnone %engine, ptr nocapture noundef readonly %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 7
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__ctx.i, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %in_sg_len = getelementptr inbounds %struct.omap_aes_dev, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %in_sg_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %in_sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @omap_aes_crypt_dma_start(ptr noundef nonnull %1) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @omap_aes_gcm_dma_out_callback(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call4, %if.then3 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_aes_crypt_dma_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_crypto_cleanup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_aead_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_aes_find_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aes_encrypt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_aead_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_aes_write_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_aes_clear_copy_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_crypto_align_sg(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scatterwalk_ffwd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_aes_crypt_dma_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
