; ModuleID = '/llk/IR_all_yes/drivers/staging/media/imx/imx-media-of.c_pt.bc'
source_filename = "../drivers/staging/media/imx/imx-media-of.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+imx_media_of_add_csi\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_media_of_add_csi\09\09\09\09"
module asm "\09.long\09__crc_imx_media_of_add_csi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_media_of_add_csi:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_media_of_add_csi\22\09\09\09\09\09"
module asm "__kstrtabns_imx_media_of_add_csi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_media_add_of_subdevs\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_media_add_of_subdevs\09\09\09\09"
module asm "\09.long\09__crc_imx_media_add_of_subdevs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_media_add_of_subdevs:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_media_add_of_subdevs\22\09\09\09\09\09"
module asm "__kstrtabns_imx_media_add_of_subdevs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.imx_media_dev = type { %struct.media_device, %struct.v4l2_device, %struct.media_pipeline, %struct.mutex, %struct.list_head, [2 x ptr], %struct.v4l2_async_notifier, ptr, [2 x [6 x ptr]] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@imx_media_of_add_csi.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_media_common\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx_media_of_add_csi\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/media/imx/imx-media-of.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: %pOFn not enabled\0A\00", [41 x i8] zeroinitializer }, align 32
@imx_media_of_add_csi.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: already added %pOFn\0A\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_imx_media_of_add_csi = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_media_of_add_csi = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_media_of_add_csi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_media_of_add_csi to i32), ptr @__kstrtab_imx_media_of_add_csi, ptr @__kstrtabns_imx_media_of_add_csi }, section "___ksymtab_gpl+imx_media_of_add_csi", align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_imx_media_add_of_subdevs = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_media_add_of_subdevs = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_media_add_of_subdevs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_media_add_of_subdevs to i32), ptr @__kstrtab_imx_media_add_of_subdevs, ptr @__kstrtabns_imx_media_add_of_subdevs }, section "___ksymtab_gpl+imx_media_add_of_subdevs", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967277, i64 4294967279]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 26, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 38, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [44 x i8] c"../drivers/staging/media/imx/imx-media-of.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 53, i32 33 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_imx_media_add_of_subdevs, ptr @__ksymtab_imx_media_of_add_csi, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_media_of_add_csi(ptr noundef %imxmd, ptr noundef %csi_np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @of_device_is_available(ptr noundef %csi_np) #3
  br i1 %call, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_media_of_add_csi.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_media_of_add_csi, %if.then4)) #3
          to label %cleanup [label %if.then4], !srcloc !24

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %imxmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imxmd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_media_of_add_csi.__UNIQUE_ID_ddebug315, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %csi_np) #3
  br label %cleanup

if.end5:                                          ; preds = %entry
  %notifier = getelementptr inbounds %struct.imx_media_dev, ptr %imxmd, i32 0, i32 6
  %tobool7.not = icmp eq ptr %csi_np, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %csi_np, i32 0, i32 3
  %spec.select = select i1 %tobool7.not, ptr null, ptr %fwnode
  %call8 = tail call ptr @__v4l2_async_nf_add_fwnode(ptr noundef %notifier, ptr noundef %spec.select, i32 noundef 28) #3
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then10:                                        ; preds = %if.end5
  %2 = ptrtoint ptr %call8 to i32
  %cmp = icmp eq ptr %call8, inttoptr (i32 -17 to ptr)
  br i1 %cmp, label %do.body13, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_media_of_add_csi.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_media_of_add_csi, %if.then25)) #3
          to label %cleanup [label %if.then25], !srcloc !24

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %imxmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %imxmd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_media_of_add_csi.__UNIQUE_ID_ddebug316, ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %csi_np) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %do.body13, %if.then10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ -19, %if.then4 ], [ -17, %if.then25 ], [ %2, %if.then10.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ -19, %do.body ], [ -17, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__v4l2_async_nf_add_fwnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_media_add_of_subdevs(ptr noundef %imxmd, ptr noundef %np) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #3
  %0 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i25 = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i26 = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i26, label %of_parse_phandle.exit.lr.ph, label %entry.of_parse_phandle.exit.thread_crit_edge

entry.of_parse_phandle.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %of_parse_phandle.exit.thread

of_parse_phandle.exit.lr.ph:                      ; preds = %entry
  %notifier.i = getelementptr inbounds %struct.imx_media_dev, ptr %imxmd, i32 0, i32 6
  br label %of_parse_phandle.exit

of_parse_phandle.exit.thread:                     ; preds = %for.inc.of_parse_phandle.exit.thread_crit_edge, %entry.of_parse_phandle.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #3
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %for.inc.of_parse_phandle.exit_crit_edge, %of_parse_phandle.exit.lr.ph
  %i.027 = phi i32 [ 0, %of_parse_phandle.exit.lr.ph ], [ %inc, %for.inc.of_parse_phandle.exit_crit_edge ]
  %1 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #3
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %call.i17 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %2) #3
  br i1 %call.i17, label %if.end5.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_media_of_add_csi.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_media_add_of_subdevs, %if.then4.i)) #3
          to label %imx_media_of_add_csi.exit [label %if.then4.i], !srcloc !24

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %imxmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %imxmd, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_media_of_add_csi.__UNIQUE_ID_ddebug315, ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #3
  br label %if.then5

if.end5.i:                                        ; preds = %if.end
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %2, i32 0, i32 3
  %call8.i = call ptr @__v4l2_async_nf_add_fwnode(ptr noundef %notifier.i, ptr noundef %fwnode.i, i32 noundef 28) #3
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then10.i, label %if.end5.i.for.inc_crit_edge

if.end5.i.for.inc_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then10.i:                                      ; preds = %if.end5.i
  %5 = ptrtoint ptr %call8.i to i32
  %cmp.i = icmp eq ptr %call8.i, inttoptr (i32 -17 to ptr)
  br i1 %cmp.i, label %do.body13.i, label %if.then10.i.imx_media_of_add_csi.exit_crit_edge

if.then10.i.imx_media_of_add_csi.exit_crit_edge:  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %imx_media_of_add_csi.exit

do.body13.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_media_of_add_csi.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@imx_media_add_of_subdevs, %if.then25.i)) #3
          to label %imx_media_of_add_csi.exit [label %if.then25.i], !srcloc !24

if.then25.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %imxmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %imxmd, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_media_of_add_csi.__UNIQUE_ID_ddebug316, ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #3
  br label %if.then5

imx_media_of_add_csi.exit:                        ; preds = %do.body13.i, %if.then10.i.imx_media_of_add_csi.exit_crit_edge, %do.body.i
  %retval.0.i18 = phi i32 [ %5, %if.then10.i.imx_media_of_add_csi.exit_crit_edge ], [ -19, %do.body.i ], [ -17, %do.body13.i ]
  %8 = zext i32 %retval.0.i18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i18, label %err_out [
    i32 0, label %imx_media_of_add_csi.exit.for.inc_crit_edge
    i32 -19, label %imx_media_of_add_csi.exit.if.then5_crit_edge
    i32 -17, label %imx_media_of_add_csi.exit.if.then5_crit_edge38
  ]

imx_media_of_add_csi.exit.if.then5_crit_edge38:   ; preds = %imx_media_of_add_csi.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then5

imx_media_of_add_csi.exit.if.then5_crit_edge:     ; preds = %imx_media_of_add_csi.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then5

imx_media_of_add_csi.exit.for.inc_crit_edge:      ; preds = %imx_media_of_add_csi.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then5:                                         ; preds = %imx_media_of_add_csi.exit.if.then5_crit_edge, %imx_media_of_add_csi.exit.if.then5_crit_edge38, %if.then25.i, %if.then4.i
  call void @of_node_put(ptr noundef nonnull %2) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %imx_media_of_add_csi.exit.for.inc_crit_edge, %if.end5.i.for.inc_crit_edge
  %inc = add i32 %i.027, 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #3
  %9 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef %inc, ptr noundef nonnull %args.i) #3
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.inc.of_parse_phandle.exit_crit_edge, label %for.inc.of_parse_phandle.exit.thread_crit_edge

for.inc.of_parse_phandle.exit.thread_crit_edge:   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %of_parse_phandle.exit.thread

for.inc.of_parse_phandle.exit_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %of_parse_phandle.exit

err_out:                                          ; preds = %imx_media_of_add_csi.exit
  call void @__sanitizer_cov_trace_pc() #5
  call void @of_node_put(ptr noundef nonnull %2) #3
  br label %cleanup

cleanup:                                          ; preds = %err_out, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread
  %retval.0 = phi i32 [ %retval.0.i18, %err_out ], [ 0, %of_parse_phandle.exit.thread ], [ 0, %of_parse_phandle.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/imx/imx-media-of.c", i32 26, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @imx_media_of_add_csi.__UNIQUE_ID_ddebug315, !1, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/imx/imx-media-of.c", i32 38, i32 4}
!8 = !{ptr @imx_media_of_add_csi.__UNIQUE_ID_ddebug316, !7, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!9 = !{ptr @__ksymtab_imx_media_of_add_csi, !10, !"__ksymtab_imx_media_of_add_csi", i1 false, i1 false}
!10 = !{!"../drivers/staging/media/imx/imx-media-of.c", i32 44, i32 1}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/media/imx/imx-media-of.c", i32 53, i32 33}
!13 = !{ptr @__ksymtab_imx_media_add_of_subdevs, !14, !"__ksymtab_imx_media_add_of_subdevs", i1 false, i1 false}
!14 = !{!"../drivers/staging/media/imx/imx-media-of.c", i32 76, i32 1}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2148281183, i64 2148281188, i64 2148281201, i64 2148281245, i64 2148281279, i64 2148281300}
