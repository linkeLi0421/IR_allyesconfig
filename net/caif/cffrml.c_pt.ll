; ModuleID = '/llk/IR_all_yes/net/caif/cffrml.c_pt.bc'
source_filename = "../net/caif/cffrml.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cffrml = type { %struct.cflayer, i8, ptr }
%struct.cflayer = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.caif_payload_info = type { ptr, i16, i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"frm%d\00", [26 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cffrml_rcv_error = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cffrml_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013caif:%s(): Framing length error (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cffrml_receive\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/caif/cffrml.c\00", [46 x i8] zeroinitializer }, align 32
@cffrml_receive._entry_ptr = internal global ptr @cffrml_receive._entry, section ".printk_index", align 4
@cffrml_rcv_checsum_error = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cffrml_receive._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016caif:%s(): Frame checksum error (0x%x != 0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@cffrml_receive._entry_ptr.6 = internal global ptr @cffrml_receive._entry.4, section ".printk_index", align 4
@cffrml_receive._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013caif:%s(): Packet is erroneous!\0A\00", [61 x i8] zeroinitializer }, align 32
@cffrml_receive._entry_ptr.9 = internal global ptr @cffrml_receive._entry.7, section ".printk_index", align 4
@cffrml_receive._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013caif:%s(): Layr up is missing!\0A\00", [62 x i8] zeroinitializer }, align 32
@cffrml_receive._entry_ptr.12 = internal global ptr @cffrml_receive._entry.10, section ".printk_index", align 4
@cffrml_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.13, ptr @.str.3, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cffrml_transmit\00", [16 x i8] zeroinitializer }, align 32
@cffrml_transmit._entry_ptr = internal global ptr @cffrml_transmit._entry, section ".printk_index", align 4
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 51, i32 49 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"cffrml_rcv_error\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 33, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 100, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [25 x i8] c"cffrml_rcv_checsum_error\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 34, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 116, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 123, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 129, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [21 x i8] c"../net/caif/cffrml.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 156, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @cffrml_receive._entry, ptr @cffrml_receive._entry.10, ptr @cffrml_receive._entry.4, ptr @cffrml_receive._entry.7, ptr @cffrml_receive._entry_ptr, ptr @cffrml_receive._entry_ptr.12, ptr @cffrml_receive._entry_ptr.6, ptr @cffrml_receive._entry_ptr.9, ptr @cffrml_transmit._entry, ptr @cffrml_transmit._entry_ptr, ptr @.str, ptr @cffrml_rcv_error, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cffrml_rcv_checsum_error, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cffrml_rcv_error to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cffrml_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cffrml_rcv_checsum_error to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cffrml_receive._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cffrml_receive._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cffrml_receive._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cffrml_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cffrml_create(i16 noundef zeroext %phyid, i1 noundef zeroext %use_fcs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %use_fcs to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 60) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #16
  %pcpu_refcnt = getelementptr inbounds %struct.cffrml, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %pcpu_refcnt, align 8
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %if.then3, label %do.end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %receive = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %receive to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cffrml_receive, ptr %receive, align 8
  %transmit = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %transmit to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cffrml_transmit, ptr %transmit, align 4
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cffrml_ctrlcmd, ptr %ctrlcmd, align 8
  %name = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 8
  %conv = zext i16 %phyid to i32
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 16, ptr noundef nonnull @.str, i32 noundef %conv)
  %dofcs = getelementptr inbounds %struct.cffrml, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dofcs to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %dofcs, align 4
  %id = getelementptr inbounds %struct.cflayer, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %id, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then3 ], [ %call7.i.i, %do.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cffrml_receive(ptr nocapture noundef readonly %layr, ptr noundef %pkt) #0 align 64 {
entry:
  %tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #12
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tmp, align 2, !annotation !38
  %call = call i32 @cfpkt_extr_head(ptr noundef %pkt, ptr noundef nonnull %tmp, i16 noundef zeroext 2) #12
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tmp, align 2
  %3 = call i16 @llvm.bswap.i16(i16 %2)
  %dofcs = getelementptr inbounds %struct.cffrml, ptr %layr, i32 0, i32 1
  %4 = ptrtoint ptr %dofcs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dofcs, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %sub = add i16 %3, -2
  %spec.select = select i1 %tobool.not, i16 %sub, i16 %3
  %call3 = call i32 @cfpkt_setlen(ptr noundef %pkt, i16 noundef zeroext %spec.select) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then5, label %if.end9

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = load i32, ptr @cffrml_rcv_error, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr @cffrml_rcv_error, align 4
  %conv7 = zext i16 %spec.select to i32
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %conv7) #17
  call void @cfpkt_destroy(ptr noundef %pkt) #12
  br label %cleanup

if.end9:                                          ; preds = %entry
  %7 = ptrtoint ptr %dofcs to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dofcs, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %if.end9.if.end29_crit_edge, label %if.then12

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then12:                                        ; preds = %if.end9
  %call13 = call i32 @cfpkt_extr_trail(ptr noundef %pkt, ptr noundef nonnull %tmp, i16 noundef zeroext 2) #12
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %tmp, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %10)
  %call14 = call i32 @cfpkt_iterate(ptr noundef %pkt, ptr noundef nonnull @cffrml_checksum, i16 noundef zeroext -1) #12
  %conv15 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call14, i32 %conv15)
  %cmp16.not = icmp eq i32 %call14, %conv15
  br i1 %cmp16.not, label %if.then12.if.end29_crit_edge, label %if.then18

if.then12.if.end29_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  %call19 = call i32 @cfpkt_add_trail(ptr noundef %pkt, ptr noundef nonnull %tmp, i16 noundef zeroext 2) #12
  %12 = load i32, ptr @cffrml_rcv_error, align 4
  %inc20 = add i32 %12, 1
  store i32 %inc20, ptr @cffrml_rcv_error, align 4
  %13 = load i32, ptr @cffrml_rcv_checsum_error, align 4
  %inc21 = add i32 %13, 1
  store i32 %inc21, ptr @cffrml_rcv_checsum_error, align 4
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %conv15, i32 noundef %call14) #17
  br label %cleanup

if.end29:                                         ; preds = %if.then12.if.end29_crit_edge, %if.end9.if.end29_crit_edge
  %call30 = call zeroext i1 @cfpkt_erroneous(ptr noundef %pkt) #12
  br i1 %call30, label %if.then31, label %if.end38

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %14 = load i32, ptr @cffrml_rcv_error, align 4
  %inc32 = add i32 %14, 1
  store i32 %inc32, ptr @cffrml_rcv_error, align 4
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2) #17
  call void @cfpkt_destroy(ptr noundef %pkt) #12
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  %15 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %layr, align 4
  %cmp39 = icmp eq ptr %16, null
  br i1 %cmp39, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2) #17
  call void @cfpkt_destroy(ptr noundef %pkt) #12
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %receive = getelementptr inbounds %struct.cflayer, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %receive, align 4
  %call50 = call i32 %18(ptr noundef nonnull %16, ptr noundef %pkt) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end44, %if.then31, %if.then18, %if.then5
  %retval.0 = phi i32 [ -71, %if.then5 ], [ -84, %if.then18 ], [ -71, %if.then31 ], [ -22, %do.end44 ], [ %call50, %if.end47 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cffrml_transmit(ptr nocapture noundef readonly %layr, ptr noundef %pkt) #0 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #12
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !38
  %dofcs = getelementptr inbounds %struct.cffrml, ptr %layr, i32 0, i32 1
  %1 = ptrtoint ptr %dofcs to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dofcs, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @cfpkt_iterate(ptr noundef %pkt, ptr noundef nonnull @cffrml_checksum, i16 noundef zeroext -1) #12
  %conv = trunc i32 %call to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %data, align 2
  %call1 = call i32 @cfpkt_add_trail(ptr noundef %pkt, ptr noundef nonnull %data, i16 noundef zeroext 2) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @cfpkt_pad_trail(ptr noundef %pkt, i16 noundef zeroext 2) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call zeroext i16 @cfpkt_getlen(ptr noundef %pkt) #12
  %5 = call i16 @llvm.bswap.i16(i16 %call3)
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %data, align 2
  %call4 = call i32 @cfpkt_add_head(ptr noundef %pkt, ptr noundef nonnull %data, i16 noundef zeroext 2) #12
  %call5 = call ptr @cfpkt_info(ptr noundef %pkt) #12
  %hdr_len = getelementptr inbounds %struct.caif_payload_info, ptr %call5, i32 0, i32 1
  %7 = ptrtoint ptr %hdr_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hdr_len, align 4
  %add = add i16 %8, 2
  store i16 %add, ptr %hdr_len, align 4
  %call8 = call zeroext i1 @cfpkt_erroneous(ptr noundef %pkt) #12
  br i1 %call8, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.13) #17
  call void @cfpkt_destroy(ptr noundef %pkt) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %dn = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 1
  %9 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dn, align 4
  %cmp = icmp eq ptr %10, null
  br i1 %cmp, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  call void @cfpkt_destroy(ptr noundef %pkt) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %transmit = getelementptr inbounds %struct.cflayer, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %transmit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %transmit, align 4
  %call18 = call i32 %12(ptr noundef nonnull %10, ptr noundef %pkt) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %do.end
  %retval.0 = phi i32 [ -71, %do.end ], [ -19, %if.then14 ], [ %call18, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cffrml_ctrlcmd(ptr nocapture noundef readonly %layr, i32 noundef %ctrl, i32 noundef %phyid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %layr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %layr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrlcmd, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %id = getelementptr inbounds %struct.cflayer, ptr %layr, i32 0, i32 7
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void %3(ptr noundef nonnull %1, i32 noundef %ctrl, i32 noundef %5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cffrml_free(ptr noundef %layer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pcpu_refcnt = getelementptr inbounds %struct.cffrml, ptr %layer, i32 0, i32 2
  %0 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcpu_refcnt, align 4
  tail call void @free_percpu(ptr noundef %1) #12
  tail call void @kfree(ptr noundef %layer) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cffrml_set_uplayer(ptr nocapture noundef writeonly %this, ptr noundef %up) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %this to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %up, ptr %this, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cffrml_set_dnlayer(ptr nocapture noundef writeonly %this, ptr noundef %dn) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dn1 = getelementptr inbounds %struct.cflayer, ptr %this, i32 0, i32 1
  %0 = ptrtoint ptr %dn1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dn, ptr %dn1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cffrml_put(ptr noundef readonly %layr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %layr, null
  br i1 %cmp.not, label %entry.if.end41_crit_edge, label %land.lhs.true

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true:                                    ; preds = %entry
  %pcpu_refcnt = getelementptr inbounds %struct.cffrml, ptr %layr, i32 0, i32 2
  %0 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcpu_refcnt, align 4
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %land.lhs.true.if.end41_crit_edge, label %do.body2

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

do.body2:                                         ; preds = %land.lhs.true
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !40
  %3 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_refcnt, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !28) #12
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add18 = add i32 %14, -1
  store i32 %add18, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !41
  %and.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then32, label %do.body2.do.end34_crit_edge, !prof !42

do.body2.do.end34_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

if.then32:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end34

do.end34:                                         ; preds = %if.then32, %do.body2.do.end34_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !43
  br label %if.end41

if.end41:                                         ; preds = %do.end34, %land.lhs.true.if.end41_crit_edge, %entry.if.end41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cffrml_hold(ptr noundef readonly %layr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %layr, null
  br i1 %cmp.not, label %entry.if.end41_crit_edge, label %land.lhs.true

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

land.lhs.true:                                    ; preds = %entry
  %pcpu_refcnt = getelementptr inbounds %struct.cffrml, ptr %layr, i32 0, i32 2
  %0 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcpu_refcnt, align 4
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %land.lhs.true.if.end41_crit_edge, label %do.body2

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

do.body2:                                         ; preds = %land.lhs.true
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !40
  %3 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_refcnt, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !28) #12
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add = add i32 %11, %5
  %12 = inttoptr i32 %add to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add18 = add i32 %14, 1
  store i32 %add18, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !41
  %and.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then32, label %do.body2.do.end34_crit_edge, !prof !42

do.body2.do.end34_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

if.then32:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end34

do.end34:                                         ; preds = %if.then32, %do.body2.do.end34_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !43
  br label %if.end41

if.end41:                                         ; preds = %do.end34, %land.lhs.true.if.end41_crit_edge, %entry.if.end41_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cffrml_refcnt_read(ptr nocapture noundef readonly %layr) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %0)
  %cmp8 = icmp ult i32 %call7, %0
  br i1 %cmp8, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %pcpu_refcnt = getelementptr inbounds %struct.cffrml, ptr %layr, i32 0, i32 2
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %call10 = phi i32 [ %call7, %do.body.lr.ph ], [ %call, %do.body.do.body_crit_edge ]
  %refcnt.09 = phi i32 [ 0, %do.body.lr.ph ], [ %add3, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add3 = add i32 %8, %refcnt.09
  %call = tail call i32 @cpumask_next(i32 noundef %call10, ptr noundef nonnull @__cpu_possible_mask) #18
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %refcnt.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add3, %do.body.for.end_crit_edge ]
  ret i32 %refcnt.0.lcssa
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_extr_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_setlen(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfpkt_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_extr_trail(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_iterate(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @cffrml_checksum(i16 noundef zeroext %chks, ptr noundef %buf, i16 noundef zeroext %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %len to i32
  %call = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext %chks, ptr noundef %buf, i32 noundef %conv) #12
  ret i16 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_add_trail(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cfpkt_erroneous(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_pad_trail(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cfpkt_getlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfpkt_add_head(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !26, !27}
!llvm.named.register.sp = !{!28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/caif/cffrml.c", i32 51, i32 49}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/caif/cffrml.c", i32 100, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cffrml_receive._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @cffrml_receive._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/caif/cffrml.c", i32 116, i32 4}
!10 = !{ptr @cffrml_receive._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @cffrml_receive._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/caif/cffrml.c", i32 123, i32 3}
!14 = !{ptr @cffrml_receive._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cffrml_receive._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/caif/cffrml.c", i32 129, i32 3}
!18 = !{ptr @cffrml_receive._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cffrml_receive._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @cffrml_rcv_error, !21, !"cffrml_rcv_error", i1 false, i1 false}
!21 = !{!"../net/caif/cffrml.c", i32 33, i32 12}
!22 = !{ptr @cffrml_rcv_checsum_error, !23, !"cffrml_rcv_checsum_error", i1 false, i1 false}
!23 = !{!"../net/caif/cffrml.c", i32 34, i32 12}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/caif/cffrml.c", i32 156, i32 3}
!26 = !{ptr @cffrml_transmit._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cffrml_transmit._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{!"sp"}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{i8 0, i8 2}
!40 = !{i64 884648, i64 884709}
!41 = !{i64 887380}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 887665}
