; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/intel/fm10k/fm10k_mbx.c_pt.bc'
source_filename = "../drivers/net/ethernet/intel/fm10k/fm10k_mbx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fm10k_hw = type { ptr, ptr, %struct.fm10k_mac_info, %struct.fm10k_bus_info, %struct.fm10k_bus_info, %struct.fm10k_iov_info, %struct.fm10k_mbx_info, %struct.fm10k_swapi_info, i16, i16, i16, i16, i8 }
%struct.fm10k_mac_info = type { %struct.fm10k_mac_ops, i32, [6 x i8], [6 x i8], i16, i16, i16, i8, i8, i8, i32, i8, i64 }
%struct.fm10k_mac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_bus_info = type { i32, i32, i32 }
%struct.fm10k_iov_info = type { %struct.fm10k_iov_ops, i16, i16, i16 }
%struct.fm10k_iov_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_info = type { %struct.fm10k_mbx_ops, ptr, %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, [640 x i32] }
%struct.fm10k_mbx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fm10k_mbx_fifo = type { ptr, i16, i16, i16 }
%struct.fm10k_swapi_info = type { i32, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info, %struct.fm10k_swapi_table_info }
%struct.fm10k_swapi_table_info = type { i32, i32 }
%struct.fm10k_msg_data = type { i32, ptr, ptr }
%struct.fm10k_tlv_attr = type { i32, i32, i16 }

@fm10k_crc_16b_table = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 31062, i16 -3412, i16 -29702, i16 -17299, i16 -15045, i16 20161, i16 14231, i16 8687, i16 22713, i16 -11453, i16 -21995, i16 -25214, i16 -6956, i16 28462, i16 5752, i16 17374, i16 14984, i16 -20110, i16 -14300, i16 -77, i16 -31003, i16 3359, i16 29769, i16 25137, i16 7015, i16 -28515, i16 -5685, i16 -8612, i16 -22774, i16 11504, i16 21926, i16 -30788, i16 -278, i16 29968, i16 3142, i16 15313, i16 17031, i16 -13955, i16 -20437, i16 -22957, i16 -8443, i16 21759, i16 11689, i16 6718, i16 25448, i16 -5998, i16 -28220, i16 -15262, i16 -17100, i16 14030, i16 20376, i16 30735, i16 345, i16 -30045, i16 -3083, i16 -6771, i16 -25381, i16 5921, i16 28279, i16 23008, i16 8374, i16 -21684, i16 -11750, i16 22093, i16 12059, i16 -23327, i16 -8777, i16 -5600, i16 -27786, i16 6284, i16 25050, i16 30626, i16 3828, i16 -31474, i16 -936, i16 -13361, i16 -19815, i16 14691, i16 16437, i16 5523, i16 27845, i16 -6337, i16 -24983, i16 -22018, i16 -12120, i16 23378, i16 8708, i16 13436, i16 19754, i16 -14640, i16 -16506, i16 -30703, i16 -3769, i16 31421, i16 1003, i16 -11791, i16 -22361, i16 9053, i16 23051, i16 28060, i16 5322, i16 -24784, i16 -6554, i16 -4066, i16 -30392, i16 690, i16 31716, i16 19571, i16 13605, i16 -16673, i16 -14455, i16 -28113, i16 -5255, i16 24707, i16 6613, i16 11842, i16 22292, i16 -8978, i16 -23112, i16 -19520, i16 -13674, i16 16748, i16 14394, i16 4013, i16 30459, i16 -767, i16 -31657, i16 -21350, i16 -10804, i16 24118, i16 10080, i16 4343, i16 27041, i16 -7589, i16 -25843, i16 -29323, i16 -3037, i16 32729, i16 1679, i16 12568, i16 18510, i16 -15436, i16 -17694, i16 -4284, i16 -27118, i16 7656, i16 25790, i16 21289, i16 10879, i16 -24187, i16 -10029, i16 -12629, i16 -18435, i16 15367, i16 17745, i16 29382, i16 2960, i16 -32662, i16 -1732, i16 11046, i16 21104, i16 -9846, i16 -24356, i16 -26805, i16 -4579, i16 26087, i16 7345, i16 2761, i16 29599, i16 -1947, i16 -32461, i16 -18780, i16 -12302, i16 17416, i16 15710, i16 26872, i16 4526, i16 -26028, i16 -7422, i16 -11115, i16 -21053, i16 9785, i16 24431, i16 18711, i16 12353, i16 -17477, i16 -15635, i16 -2694, i16 -29652, i16 2006, i16 32384, i16 -1321, i16 -31871, i16 2171, i16 28973, i16 18106, i16 16364, i16 -19434, i16 -12992, i16 -9416, i16 -23954, i16 10644, i16 20674, i16 26453, i16 7683, i16 -27143, i16 -4945, i16 -18167, i16 -16289, i16 19365, i16 13043, i16 1380, i16 31794, i16 -2104, i16 -29026, i16 -26394, i16 -7760, i16 27210, i16 4892, i16 9355, i16 24029, i16 -10713, i16 -20623, i16 32107, i16 1085, i16 -28729, i16 -2415, i16 -16122, i16 -18352, i16 13226, i16 19196, i16 23684, i16 9682, i16 -20952, i16 -10370, i16 -7959, i16 -26177, i16 4677, i16 27411, i16 16053, i16 18403, i16 -13287, i16 -19121, i16 -32040, i16 -1138, i16 28788, i16 2338, i16 8026, i16 26124, i16 -4618, i16 -27488, i16 -23753, i16 -9631, i16 20891, i16 10445], [128 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.fm10k_mbx_process = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 -507, i32 -506, i32 -507, i32 -507, i32 -503, i32 -507, i32 -501, i32 -507, i32 -507, i32 -498, i32 -497], [52 x i8] zeroinitializer }, align 32
@switch.table.fm10k_sm_mbx_process = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -507, i32 -506, i32 -507, i32 -504, i32 -507, i32 -507, i32 -501, i32 -507, i32 -507, i32 -498], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 15]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 15]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 15]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"fm10k_crc_16b_table\00", align 1
@___asan_gen_.17 = private constant [48 x i8] c"../drivers/net/ethernet/intel/fm10k/fm10k_mbx.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 515, i32 18 }
@___asan_gen_.19 = private unnamed_addr constant [31 x i8] c"switch.table.fm10k_mbx_process\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [34 x i8] c"switch.table.fm10k_sm_mbx_process\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @fm10k_crc_16b_table, ptr @switch.table.fm10k_mbx_process, ptr @switch.table.fm10k_sm_mbx_process], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fm10k_crc_16b_table to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fm10k_mbx_process to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fm10k_sm_mbx_process to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_pfvf_mbx_init(ptr nocapture noundef readonly %hw, ptr noundef %mbx, ptr noundef %msg_data, i8 noundef zeroext %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.fm10k_hw, ptr %hw, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mbx_reg = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 6
  %3 = ptrtoint ptr %mbx_reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 16, ptr %mbx_reg, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %id)
  %cmp = icmp ult i8 %id, 64
  br i1 %cmp, label %if.then, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %id to i32
  %add = or i32 %conv, 100352
  %mbx_reg4 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 6
  %4 = ptrtoint ptr %mbx_reg4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %mbx_reg4, align 4
  %mul = shl nuw nsw i32 %conv, 4
  %add7 = or i32 %mul, 98304
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb
  %add7.sink = phi i32 [ %add7, %if.then ], [ 40, %sw.bb ]
  %mbmem_reg8 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 7
  %5 = ptrtoint ptr %mbmem_reg8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add7.sink, ptr %mbmem_reg8, align 8
  %state = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 20
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 8
  %tobool.not.i = icmp eq ptr %msg_data, null
  br i1 %tobool.not.i, label %sw.epilog.if.end10_crit_edge, label %while.condthread-pre-split.i

sw.epilog.if.end10_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

while.condthread-pre-split.i:                     ; preds = %sw.epilog
  %7 = ptrtoint ptr %msg_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr.i = load i32, ptr %msg_data, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end24.i.while.cond.i_crit_edge, %while.condthread-pre-split.i
  %8 = phi i32 [ %.pr.i, %while.condthread-pre-split.i ], [ %18, %if.end24.i.while.cond.i_crit_edge ]
  %msg_data.addr.0.i = phi ptr [ %msg_data, %while.condthread-pre-split.i ], [ %incdec.ptr26.i, %if.end24.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp.not.i = icmp eq i32 %8, -1
  %func34.i = getelementptr inbounds %struct.fm10k_msg_data, ptr %msg_data.addr.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %func34.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %func34.i, align 4
  %tobool35.not.i = icmp eq ptr %10, null
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  br i1 %tobool35.not.i, label %while.body.i.return_crit_edge, label %if.end4.i

while.body.i.return_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4.i:                                        ; preds = %while.body.i
  %attr5.i = getelementptr inbounds %struct.fm10k_msg_data, ptr %msg_data.addr.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %attr5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attr5.i, align 4
  %tobool6.not.i = icmp eq ptr %12, null
  br i1 %tobool6.not.i, label %if.end4.i.if.end24.i_crit_edge, label %while.cond8thread-pre-split.i

if.end4.i.if.end24.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

while.cond8thread-pre-split.i:                    ; preds = %if.end4.i
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr55.i = load i32, ptr %12, align 4
  br label %while.cond8.i

while.cond8.i:                                    ; preds = %while.body11.i.while.cond8.i_crit_edge, %while.cond8thread-pre-split.i
  %14 = phi i32 [ %.pr55.i, %while.cond8thread-pre-split.i ], [ %16, %while.body11.i.while.cond8.i_crit_edge ]
  %attr.0.i = phi ptr [ %12, %while.cond8thread-pre-split.i ], [ %incdec.ptr.i, %while.body11.i.while.cond8.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp10.not.i = icmp eq i32 %14, -1
  br i1 %cmp10.not.i, label %while.cond8.i.if.end24.i_crit_edge, label %while.body11.i

while.cond8.i.if.end24.i_crit_edge:               ; preds = %while.cond8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

while.body11.i:                                   ; preds = %while.cond8.i
  %incdec.ptr.i = getelementptr %struct.fm10k_tlv_attr, ptr %attr.0.i, i32 1
  %15 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %incdec.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp14.not.i = icmp uge i32 %14, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %14)
  %cmp17.i = icmp ugt i32 %14, 31
  %or.cond.i = or i1 %cmp17.i, %cmp14.not.i
  br i1 %or.cond.i, label %while.body11.i.return_crit_edge, label %while.body11.i.while.cond8.i_crit_edge

while.body11.i.while.cond8.i_crit_edge:           ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond8.i

while.body11.i.return_crit_edge:                  ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end24.i:                                       ; preds = %while.cond8.i.if.end24.i_crit_edge, %if.end4.i.if.end24.i_crit_edge
  %incdec.ptr26.i = getelementptr %struct.fm10k_msg_data, ptr %msg_data.addr.0.i, i32 1
  %17 = ptrtoint ptr %incdec.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %incdec.ptr26.i, align 4
  %cmp28.not.i = icmp ult i32 %8, %18
  br i1 %cmp28.not.i, label %if.end24.i.while.cond.i_crit_edge, label %if.end24.i.return_crit_edge

if.end24.i.return_crit_edge:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end24.i.while.cond.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

lor.lhs.false.i:                                  ; preds = %while.cond.i
  br i1 %tobool35.not.i, label %lor.lhs.false.i.return_crit_edge, label %lor.lhs.false.i.if.end10_crit_edge

lor.lhs.false.i.if.end10_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end10:                                         ; preds = %lor.lhs.false.i.if.end10_crit_edge, %sw.epilog.if.end10_crit_edge
  %msg_data11 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 1
  %19 = ptrtoint ptr %msg_data11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg_data, ptr %msg_data11, align 8
  %timeout = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 4
  %20 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %timeout, align 4
  %udelay = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 5
  %21 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 500, ptr %udelay, align 8
  %tail = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %tail, align 8
  %head = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %23 = ptrtoint ptr %head to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %head, align 2
  %local = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %24 = ptrtoint ptr %local to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %local, align 4
  %remote = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %25 = ptrtoint ptr %remote to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %remote, align 2
  %max_size = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 10
  %26 = ptrtoint ptr %max_size to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 127, ptr %max_size, align 4
  %mbmem_len = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 11
  %27 = ptrtoint ptr %mbmem_len to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 8, ptr %mbmem_len, align 2
  %tx = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3
  %buffer = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 31
  %28 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buffer, ptr %tx, align 4
  %size2.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %size2.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 512, ptr %size2.i, align 4
  %head.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %head.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %tail.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %tail.i, align 2
  %rx = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2
  %arrayidx = getelementptr %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 31, i32 512
  %32 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx, ptr %rx, align 4
  %size2.i48 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %size2.i48 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 128, ptr %size2.i48, align 4
  %head.i49 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %head.i49 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %head.i49, align 4
  %tail.i50 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %tail.i50 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %tail.i50, align 2
  %36 = ptrtoint ptr %mbx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @fm10k_mbx_connect, ptr %mbx, align 8
  %disconnect = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 1
  %37 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @fm10k_mbx_disconnect, ptr %disconnect, align 4
  %rx_ready = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 2
  %38 = ptrtoint ptr %rx_ready to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @fm10k_mbx_rx_ready, ptr %rx_ready, align 8
  %tx_ready = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 3
  %39 = ptrtoint ptr %tx_ready to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @fm10k_mbx_tx_ready, ptr %tx_ready, align 4
  %tx_complete = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 4
  %40 = ptrtoint ptr %tx_complete to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @fm10k_mbx_tx_complete, ptr %tx_complete, align 8
  %enqueue_tx = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 5
  %41 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @fm10k_mbx_enqueue_tx, ptr %enqueue_tx, align 4
  %process = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 6
  %42 = ptrtoint ptr %process to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @fm10k_mbx_process, ptr %process, align 8
  %register_handlers = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 7
  %43 = ptrtoint ptr %register_handlers to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @fm10k_mbx_register_handlers, ptr %register_handlers, align 4
  br label %return

return:                                           ; preds = %if.end10, %lor.lhs.false.i.return_crit_edge, %if.end24.i.return_crit_edge, %while.body11.i.return_crit_edge, %while.body.i.return_crit_edge, %sw.bb1.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -511, %sw.bb1.return_crit_edge ], [ -511, %entry.return_crit_edge ], [ -2, %lor.lhs.false.i.return_crit_edge ], [ -2, %while.body11.i.return_crit_edge ], [ -2, %while.body.i.return_crit_edge ], [ -2, %if.end24.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_mbx_connect(ptr noundef %hw, ptr noundef %mbx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 20
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end2, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end2:                                          ; preds = %if.end
  %timeout = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 4
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2000, ptr %timeout, align 4
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state, align 8
  tail call fastcc void @fm10k_mbx_reset_work(ptr noundef %mbx)
  %head.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %head.i, align 2
  %8 = shl i16 %7, 4
  %9 = and i16 %8, 240
  %tail.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tail.i, align 8
  %12 = shl i16 %11, 8
  %13 = and i16 %12, 3840
  %14 = or i16 %9, %13
  %or414.i = or i16 %14, 13
  %local.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %15 = ptrtoint ptr %local.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %local.i, align 4
  %xor.i15.i = xor i16 %or414.i, %16
  %xor.i.i = zext i16 %xor.i15.i to i32
  %shr.i.i = lshr i32 %xor.i.i, 8
  %and.i.i = and i32 %xor.i.i, 255
  %arrayidx.i.i = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i.i, align 2
  %conv1.i.i = zext i16 %18 to i32
  %conv1.i.masked.i = and i32 %conv1.i.i, 255
  %and4.i.i = xor i32 %shr.i.i, %conv1.i.masked.i
  %arrayidx5.i.i = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and4.i.i
  %19 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx5.i.i, align 2
  %shr3.i.i = lshr i32 %conv1.i.i, 8
  %conv6.i.i = zext i16 %20 to i32
  %xor7.i.i = xor i32 %shr3.i.i, %conv6.i.i
  %or4.i = zext i16 %or414.i to i32
  %mbx_lock.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %21 = ptrtoint ptr %mbx_lock.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mbx_lock.i, align 4
  %or5.i = or i32 %22, 4
  store i32 %or5.i, ptr %mbx_lock.i, align 4
  %conv6.i = shl nuw i32 %xor7.i.i, 16
  %or9.i = or i32 %conv6.i, %or4.i
  %mbx_hdr.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 9
  %23 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or9.i, ptr %mbx_hdr.i, align 8
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hw, align 8
  %tobool6.not = icmp eq ptr %25, null
  br i1 %tobool6.not, label %if.end2.if.end14_crit_edge, label %do.body11, !prof !11

if.end2.if.end14_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.body11:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mbx_hdr.i, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %mbmem_reg = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 7
  %29 = ptrtoint ptr %mbmem_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mbmem_reg, align 8
  %mbmem_len = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 11
  %31 = ptrtoint ptr %mbmem_len to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %mbmem_len, align 2
  %conv = zext i16 %32 to i32
  %xor = xor i32 %30, %conv
  %arrayidx = getelementptr i32, ptr %25, i32 %xor
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %28) #7, !srcloc !13
  br label %if.end14

if.end14:                                         ; preds = %do.body11, %if.end2.if.end14_crit_edge
  %33 = ptrtoint ptr %mbx_lock.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 58, ptr %mbx_lock.i, align 4
  %34 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %head.i, align 2
  %36 = shl i16 %35, 8
  %37 = and i16 %36, 3840
  %38 = or i16 %37, 12
  %or1.i = zext i16 %38 to i32
  %size.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %size.i, align 4
  %41 = add i16 %40, -1
  %and3.i = zext i16 %41 to i32
  %shl4.i = shl nuw i32 %and3.i, 16
  %or5.i32 = or i32 %shl4.i, %or1.i
  %42 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or5.i32, ptr %mbx_hdr.i, align 8
  %mbmem_reg.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 7
  %43 = ptrtoint ptr %mbmem_reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mbmem_reg.i, align 8
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %hw, align 8
  %tobool.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i, label %if.end14.if.end.i_crit_edge, label %do.body6.i, !prof !11

if.end14.if.end.i_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body6.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mbx_hdr.i, align 8
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  %arrayidx.i = getelementptr i32, ptr %46, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %49) #7, !srcloc !13
  br label %if.end.i

if.end.i:                                         ; preds = %do.body6.i, %if.end14.if.end.i_crit_edge
  %50 = ptrtoint ptr %mbx_lock.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mbx_lock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool11.not.i = icmp eq i32 %51, 0
  br i1 %tobool11.not.i, label %if.end.i.fm10k_mbx_write.exit_crit_edge, label %do.body13.i

if.end.i.fm10k_mbx_write.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_write.exit

do.body13.i:                                      ; preds = %if.end.i
  %52 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %hw, align 8
  %tobool20.not.i = icmp eq ptr %53, null
  br i1 %tobool20.not.i, label %do.body13.i.fm10k_mbx_write.exit_crit_edge, label %do.body30.i, !prof !11

do.body13.i.fm10k_mbx_write.exit_crit_edge:       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_write.exit

do.body30.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %mbx_lock.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mbx_lock.i, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #7
  %mbx_reg.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 6
  %57 = ptrtoint ptr %mbx_reg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mbx_reg.i, align 4
  %arrayidx34.i = getelementptr i32, ptr %53, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx34.i, i32 %56) #7, !srcloc !13
  br label %fm10k_mbx_write.exit

fm10k_mbx_write.exit:                             ; preds = %do.body30.i, %do.body13.i.fm10k_mbx_write.exit_crit_edge, %if.end.i.fm10k_mbx_write.exit_crit_edge
  %59 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %mbx_hdr.i, align 8
  %60 = ptrtoint ptr %mbx_lock.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %mbx_lock.i, align 4
  br label %return

return:                                           ; preds = %fm10k_mbx_write.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %fm10k_mbx_write.exit ], [ -509, %entry.return_crit_edge ], [ -500, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_mbx_disconnect(ptr noundef %hw, ptr noundef %mbx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout1 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 4
  %0 = ptrtoint ptr %timeout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, i32 0, i32 500
  %state = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 20
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %state, align 8
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 8
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %entry.if.end_crit_edge, label %do.body8, !prof !11

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %mbx_reg = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 6
  %5 = ptrtoint ptr %mbx_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbx_reg, align 4
  %arrayidx = getelementptr i32, ptr %4, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 1107296256) #7, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %do.body8, %entry.if.end_crit_edge
  %process = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 6
  br label %do.body13

do.body13:                                        ; preds = %land.rhs.do.body13_crit_edge, %if.end
  %timeout.0 = phi i32 [ %cond, %if.end ], [ %sub, %land.rhs.do.body13_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 4080212) #7
  %8 = ptrtoint ptr %process to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %process, align 8
  %call = tail call i32 %9(ptr noundef %hw, ptr noundef %mbx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0)
  %cmp = icmp sgt i32 %timeout.0, 19
  br i1 %cmp, label %land.rhs, label %do.body13.do.end17_crit_edge

do.body13.do.end17_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

land.rhs:                                         ; preds = %do.body13
  %sub = add nsw i32 %timeout.0, -19
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  %cmp16.not = icmp eq i32 %11, 0
  br i1 %cmp16.not, label %land.rhs.do.end17_crit_edge, label %land.rhs.do.body13_crit_edge

land.rhs.do.body13_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

land.rhs.do.end17_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end17:                                         ; preds = %land.rhs.do.end17_crit_edge, %do.body13.do.end17_crit_edge
  tail call fastcc void @fm10k_mbx_reset_work(ptr noundef %mbx) #7
  %local.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %12 = ptrtoint ptr %local.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %local.i, align 4
  %remote.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %13 = ptrtoint ptr %remote.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %remote.i, align 2
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i = icmp eq i32 %15, 2
  %..i = zext i1 %cmp.i to i32
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %..i, ptr %state, align 8
  %tail.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tail.i, align 2
  %head.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %head.i, align 4
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %hw, align 8
  %tobool25.not = icmp eq ptr %21, null
  br i1 %tobool25.not, label %do.end17.if.end39_crit_edge, label %do.body35, !prof !11

do.end17.if.end39_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.body35:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %mbmem_reg = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 7
  %22 = ptrtoint ptr %mbmem_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mbmem_reg, align 8
  %arrayidx38 = getelementptr i32, ptr %21, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx38, i32 0) #7, !srcloc !13
  br label %if.end39

if.end39:                                         ; preds = %do.body35, %do.end17.if.end39_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fm10k_mbx_rx_ready(ptr nocapture noundef readonly %mbx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %head.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tail.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %1)
  %cmp.i.i = icmp eq i16 %3, %1
  br i1 %cmp.i.i, label %entry.land.end_crit_edge, label %fm10k_fifo_head_len.exit

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

fm10k_fifo_head_len.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rx = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2
  %size.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %size.i.i, align 4
  %sub.i.i = add i16 %5, -1
  %and.i.i = and i16 %sub.i.i, %1
  %6 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx, align 4
  %conv.i = zext i16 %and.i.i to i32
  %add.ptr.i = getelementptr i32, ptr %7, i32 %conv.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %add.i = add i32 %9, 3145728
  %shr.i = lshr i32 %add.i, 22
  %10 = trunc i32 %shr.i to i16
  %sub.i = sub i16 %3, %1
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i, i16 %10)
  %cmp = icmp ugt i16 %sub.i, %10
  br label %land.end

land.end:                                         ; preds = %fm10k_fifo_head_len.exit, %entry.land.end_crit_edge
  %11 = phi i1 [ %cmp, %fm10k_fifo_head_len.exit ], [ false, %entry.land.end_crit_edge ]
  ret i1 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fm10k_mbx_tx_ready(ptr nocapture noundef readonly %mbx, i16 noundef zeroext %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %size.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %size.i, align 4
  %head.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %head.i, align 4
  %add.i = add i16 %3, %1
  %tail.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tail.i, align 2
  %sub.i = sub i16 %add.i, %5
  %state = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 20
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i, i16 %len)
  %cmp2 = icmp uge i16 %sub.i, %len
  %spec.select = select i1 %cmp, i1 %cmp2, i1 false
  ret i1 %spec.select
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fm10k_mbx_tx_complete(ptr nocapture noundef readonly %mbx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tail.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.i = icmp eq i16 %1, %3
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_mbx_enqueue_tx(ptr noundef %hw, ptr noundef %mbx, ptr nocapture noundef readonly %msg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 4
  %state = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 20
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %1, label %sw.epilog [
    i32 0, label %entry.cleanup_crit_edge
    i32 3, label %entry.cleanup_crit_edge100
  ]

entry.cleanup_crit_edge100:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %3 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %timeout, align 4
  %tx = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg, align 4
  %add.i = add i32 %6, 3145728
  %shr.i = lshr i32 %add.i, 22
  %7 = trunc i32 %shr.i to i16
  %conv3.i = add nuw nsw i16 %7, 1
  %size.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %7)
  %cmp.not.i = icmp ugt i16 %9, %7
  br i1 %cmp.not.i, label %if.end.i, label %sw.epilog.fm10k_fifo_enqueue.exit_crit_edge

sw.epilog.fm10k_fifo_enqueue.exit_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_fifo_enqueue.exit

if.end.i:                                         ; preds = %sw.epilog
  %head.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %head.i.i, align 4
  %add.i.i = add i16 %11, %9
  %tail.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tail.i.i, align 2
  %sub.i.i = sub i16 %add.i.i, %13
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i.i, i16 %7)
  %cmp9.not.i = icmp ugt i16 %sub.i.i, %7
  br i1 %cmp9.not.i, label %if.end12.i, label %if.end.i.fm10k_fifo_enqueue.exit_crit_edge

if.end.i.fm10k_fifo_enqueue.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_fifo_enqueue.exit

if.end12.i:                                       ; preds = %if.end.i
  %sub.i.i.i = add i16 %9, -1
  %and.i.i.i = and i16 %13, %sub.i.i.i
  %14 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx, align 4
  %sub.i24.i = sub i16 %9, %and.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i24.i, i16 %7)
  %cmp.i.not.i = icmp ugt i16 %sub.i24.i, %7
  br i1 %cmp.i.not.i, label %if.end12.fm10k_fifo_write_copy.exit_crit_edge.i, label %if.then.i.i

if.end12.fm10k_fifo_write_copy.exit_crit_edge.i:  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = zext i16 %conv3.i to i32
  br label %fm10k_fifo_enqueue.exit.thread

if.then.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i.i = zext i16 %sub.i24.i to i32
  %conv5.i.i = zext i16 %conv3.i to i32
  %add.ptr9.i.i = getelementptr i32, ptr %msg, i32 %conv4.i.i
  %sub12.i.i = sub nsw i32 %conv5.i.i, %conv4.i.i
  %shl.i.i = shl nsw i32 %sub12.i.i, 2
  %16 = call ptr @memcpy(ptr %15, ptr %add.ptr9.i.i, i32 %shl.i.i)
  br label %fm10k_fifo_enqueue.exit.thread

fm10k_fifo_enqueue.exit.thread:                   ; preds = %if.then.i.i, %if.end12.fm10k_fifo_write_copy.exit_crit_edge.i
  %conv13.i.pre-phi.i = phi i32 [ %.pre.i, %if.end12.fm10k_fifo_write_copy.exit_crit_edge.i ], [ %conv4.i.i, %if.then.i.i ]
  %conv.i.i = zext i16 %and.i.i.i to i32
  %add.ptr.i.i = getelementptr i32, ptr %15, i32 %conv.i.i
  %shl14.i.i = shl nuw nsw i32 %conv13.i.pre-phi.i, 2
  %17 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %msg, i32 %shl14.i.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tail.i.i, align 2
  %add15.i = add i16 %19, %conv3.i
  store i16 %add15.i, ptr %tail.i.i, align 2
  br label %if.end

fm10k_fifo_enqueue.exit:                          ; preds = %if.end.i.fm10k_fifo_enqueue.exit_crit_edge, %sw.epilog.fm10k_fifo_enqueue.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not72 = icmp eq i32 %4, 0
  br i1 %tobool1.not72, label %fm10k_fifo_enqueue.exit.if.then_crit_edge, label %while.body.lr.ph

fm10k_fifo_enqueue.exit.if.then_crit_edge:        ; preds = %fm10k_fifo_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

while.body.lr.ph:                                 ; preds = %fm10k_fifo_enqueue.exit
  %udelay = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 5
  %process = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 6
  %head.i.i43 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 1
  %tail.i.i45 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 2
  br label %while.body

while.body:                                       ; preds = %fm10k_fifo_enqueue.exit69.while.body_crit_edge, %while.body.lr.ph
  %countdown.074 = phi i32 [ %4, %while.body.lr.ph ], [ %dec, %fm10k_fifo_enqueue.exit69.while.body_crit_edge ]
  %dec = add i32 %countdown.074, -1
  %20 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %udelay, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %22(i32 noundef %21) #7
  %23 = ptrtoint ptr %process to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %process, align 8
  %call8 = tail call i32 %24(ptr noundef %hw, ptr noundef %mbx) #7
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg, align 4
  %add.i38 = add i32 %26, 3145728
  %shr.i39 = lshr i32 %add.i38, 22
  %27 = trunc i32 %shr.i39 to i16
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %27)
  %cmp.not.i42 = icmp ugt i16 %29, %27
  br i1 %cmp.not.i42, label %if.end.i48, label %while.body.fm10k_fifo_enqueue.exit69_crit_edge

while.body.fm10k_fifo_enqueue.exit69_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_fifo_enqueue.exit69

if.end.i48:                                       ; preds = %while.body
  %30 = ptrtoint ptr %head.i.i43 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %head.i.i43, align 4
  %add.i.i44 = add i16 %31, %29
  %32 = ptrtoint ptr %tail.i.i45 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tail.i.i45, align 2
  %sub.i.i46 = sub i16 %add.i.i44, %33
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i.i46, i16 %27)
  %cmp9.not.i47 = icmp ugt i16 %sub.i.i46, %27
  br i1 %cmp9.not.i47, label %if.end12.i53, label %if.end.i48.fm10k_fifo_enqueue.exit69_crit_edge

if.end.i48.fm10k_fifo_enqueue.exit69_crit_edge:   ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_fifo_enqueue.exit69

if.end12.i53:                                     ; preds = %if.end.i48
  %34 = trunc i32 %shr.i39 to i16
  %conv3.i40.le = add nuw nsw i16 %34, 1
  %sub.i.i.i49 = add i16 %29, -1
  %and.i.i.i50 = and i16 %33, %sub.i.i.i49
  %35 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx, align 4
  %sub.i24.i51 = sub i16 %29, %and.i.i.i50
  call void @__sanitizer_cov_trace_cmp2(i16 %sub.i24.i51, i16 %34)
  %cmp.i.not.i52 = icmp ugt i16 %sub.i24.i51, %34
  br i1 %cmp.i.not.i52, label %if.end12.fm10k_fifo_write_copy.exit_crit_edge.i55, label %if.then.i.i61

if.end12.fm10k_fifo_write_copy.exit_crit_edge.i55: ; preds = %if.end12.i53
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i54 = zext i16 %conv3.i40.le to i32
  br label %fm10k_fifo_enqueue.exit69.thread

if.then.i.i61:                                    ; preds = %if.end12.i53
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i.i56 = zext i16 %sub.i24.i51 to i32
  %conv5.i.i57 = zext i16 %conv3.i40.le to i32
  %add.ptr9.i.i58 = getelementptr i32, ptr %msg, i32 %conv4.i.i56
  %sub12.i.i59 = sub nsw i32 %conv5.i.i57, %conv4.i.i56
  %shl.i.i60 = shl nsw i32 %sub12.i.i59, 2
  %37 = call ptr @memcpy(ptr %36, ptr %add.ptr9.i.i58, i32 %shl.i.i60)
  br label %fm10k_fifo_enqueue.exit69.thread

fm10k_fifo_enqueue.exit69.thread:                 ; preds = %if.then.i.i61, %if.end12.fm10k_fifo_write_copy.exit_crit_edge.i55
  %conv13.i.pre-phi.i62 = phi i32 [ %.pre.i54, %if.end12.fm10k_fifo_write_copy.exit_crit_edge.i55 ], [ %conv4.i.i56, %if.then.i.i61 ]
  %conv.i.i63 = zext i16 %and.i.i.i50 to i32
  %add.ptr.i.i64 = getelementptr i32, ptr %36, i32 %conv.i.i63
  %shl14.i.i65 = shl nuw nsw i32 %conv13.i.pre-phi.i62, 2
  %38 = call ptr @memcpy(ptr %add.ptr.i.i64, ptr %msg, i32 %shl14.i.i65)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %tail.i.i45 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %tail.i.i45, align 2
  %add15.i66 = add i16 %40, %conv3.i40.le
  store i16 %add15.i66, ptr %tail.i.i45, align 2
  br label %if.end

fm10k_fifo_enqueue.exit69:                        ; preds = %if.end.i48.fm10k_fifo_enqueue.exit69_crit_edge, %while.body.fm10k_fifo_enqueue.exit69_crit_edge
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %fm10k_fifo_enqueue.exit69.if.then_crit_edge, label %fm10k_fifo_enqueue.exit69.while.body_crit_edge

fm10k_fifo_enqueue.exit69.while.body_crit_edge:   ; preds = %fm10k_fifo_enqueue.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

fm10k_fifo_enqueue.exit69.if.then_crit_edge:      ; preds = %fm10k_fifo_enqueue.exit69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %fm10k_fifo_enqueue.exit69.if.then_crit_edge, %fm10k_fifo_enqueue.exit.if.then_crit_edge
  %41 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %timeout, align 4
  %tx_busy = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 22
  %42 = ptrtoint ptr %tx_busy to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %tx_busy, align 8
  %inc = add i64 %43, 1
  store i64 %inc, ptr %tx_busy, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %fm10k_fifo_enqueue.exit69.thread, %fm10k_fifo_enqueue.exit.thread
  %tail_len = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 13
  %44 = ptrtoint ptr %tail_len to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %tail_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool13.not = icmp eq i16 %45, 0
  br i1 %tobool13.not, label %if.then14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %process16 = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 6
  %46 = ptrtoint ptr %process16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %process16, align 8
  %call17 = tail call i32 %47(ptr noundef %hw, ptr noundef %mbx) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge100
  %retval.0 = phi i32 [ -511, %entry.cleanup_crit_edge ], [ -511, %entry.cleanup_crit_edge100 ], [ 0, %if.then14 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_mbx_process(ptr noundef %hw, ptr noundef %mbx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 20
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbx_hdr.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 9
  %2 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbx_hdr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %mbx_reg.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 6
  %4 = ptrtoint ptr %mbx_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mbx_reg.i, align 4
  %call.i = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %5) #7
  %and.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.do.body.i_crit_edge, label %if.then2.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mbx_lock.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %6 = ptrtoint ptr %mbx_lock.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %mbx_lock.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then2.i, %if.end.i.do.body.i_crit_edge
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw, align 8
  %tobool6.not.i = icmp eq ptr %8, null
  br i1 %tobool6.not.i, label %do.body.i.if.end2_crit_edge, label %do.body11.i, !prof !11

do.body.i.if.end2_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

do.body11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %mbx_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbx_reg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %8, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 402653184) #7, !srcloc !13
  br label %if.end2

if.end2:                                          ; preds = %do.body11.i, %do.body.i.if.end2_crit_edge
  %mbmem_reg.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 7
  %11 = ptrtoint ptr %mbmem_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbmem_reg.i, align 8
  %mbmem_len.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 11
  %13 = ptrtoint ptr %mbmem_len.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mbmem_len.i, align 2
  %conv.i = zext i16 %14 to i32
  %xor.i = xor i32 %12, %conv.i
  %call18.i = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %xor.i) #7
  %15 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call18.i, ptr %mbx_hdr.i, align 8
  %16 = trunc i32 %call18.i to i16
  %17 = lshr i16 %16, 4
  %conv12.i = and i16 %17, 15
  %18 = lshr i16 %16, 8
  %conv17.i = and i16 %18, 15
  %shr18.i = lshr i32 %call18.i, 16
  %19 = and i32 %call18.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i39 = icmp eq i32 %19, 0
  br i1 %tobool.not.i39, label %if.end.i40, label %if.end2.sw.epilog.i114_crit_edge

if.end2.sw.epilog.i114_crit_edge:                 ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

if.end.i40:                                       ; preds = %if.end2
  %conv2.i = and i32 %call18.i, 15
  %20 = zext i32 %conv2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %conv2.i, label %if.end.i40.sw.epilog.i114_crit_edge [
    i32 13, label %sw.bb.i
    i32 8, label %if.end.i40.sw.bb30.i_crit_edge
    i32 12, label %sw.bb59.i
    i32 14, label %if.end.i40.sw.bb70.i_crit_edge
  ]

if.end.i40.sw.bb70.i_crit_edge:                   ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb70.i

if.end.i40.sw.bb30.i_crit_edge:                   ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb30.i

if.end.i40.sw.epilog.i114_crit_edge:              ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

sw.bb.i:                                          ; preds = %if.end.i40
  %head25.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %21 = ptrtoint ptr %head25.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %head25.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv12.i, i16 %22)
  %cmp.not.i = icmp eq i16 %conv12.i, %22
  br i1 %cmp.not.i, label %sw.bb.i.sw.bb30.i_crit_edge, label %sw.bb.i.sw.epilog.i114_crit_edge

sw.bb.i.sw.epilog.i114_crit_edge:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

sw.bb.i.sw.bb30.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb30.i

sw.bb30.i:                                        ; preds = %sw.bb.i.sw.bb30.i_crit_edge, %if.end.i40.sw.bb30.i_crit_edge
  %trunc115.i = trunc i16 %18 to i4
  %23 = zext i4 %trunc115.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.3)
  switch i4 %trunc115.i, label %if.end36.i [
    i4 0, label %sw.bb30.i.sw.epilog.i114_crit_edge
    i4 -1, label %sw.bb30.i.sw.epilog.i114_crit_edge137
  ]

sw.bb30.i.sw.epilog.i114_crit_edge137:            ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

sw.bb30.i.sw.epilog.i114_crit_edge:               ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

if.end36.i:                                       ; preds = %sw.bb30.i
  %tail37.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %24 = ptrtoint ptr %tail37.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tail37.i, align 8
  %sub.i.i = sub i16 %25, %conv17.i
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %conv17.i)
  %cmp.i.i = icmp ult i16 %25, %conv17.i
  %sub7.i.i = add i16 %sub.i.i, -2
  %spec.select.i.i = select i1 %cmp.i.i, i16 %sub7.i.i, i16 %sub.i.i
  %26 = ptrtoint ptr %mbmem_len.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mbmem_len.i, align 2
  %shl.i.i = shl i16 %27, 1
  %sub11.i.i = add i16 %shl.i.i, -1
  %and.i.i = and i16 %sub11.i.i, %spec.select.i.i
  %tail_len.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 13
  %28 = ptrtoint ptr %tail_len.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tail_len.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i.i, i16 %29)
  %cmp40.i = icmp ugt i16 %and.i.i, %29
  br i1 %cmp40.i, label %if.end36.i.sw.epilog.i114_crit_edge, label %if.end43.i

if.end36.i.sw.epilog.i114_crit_edge:              ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

if.end43.i:                                       ; preds = %if.end36.i
  %trunc116.i = trunc i16 %17 to i4
  %30 = zext i4 %trunc116.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.4)
  switch i4 %trunc116.i, label %if.end50.i [
    i4 0, label %if.end43.i.sw.epilog.i114_crit_edge
    i4 -1, label %if.end43.i.sw.epilog.i114_crit_edge138
  ]

if.end43.i.sw.epilog.i114_crit_edge138:           ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

if.end43.i.sw.epilog.i114_crit_edge:              ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

if.end50.i:                                       ; preds = %if.end43.i
  %head51.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %31 = ptrtoint ptr %head51.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %head51.i, align 2
  %sub.i107.i = sub i16 %conv12.i, %32
  call void @__sanitizer_cov_trace_cmp2(i16 %conv12.i, i16 %32)
  %cmp.i108.i = icmp ult i16 %conv12.i, %32
  %sub7.i109.i = add i16 %sub.i107.i, -2
  %spec.select.i110.i = select i1 %cmp.i108.i, i16 %sub7.i109.i, i16 %sub.i107.i
  %and.i114.i = and i16 %spec.select.i110.i, %sub11.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i114.i, i16 %27)
  %cmp55.i = icmp ult i16 %and.i114.i, %27
  br i1 %cmp55.i, label %if.end50.i.if.end6_crit_edge, label %if.end50.i.sw.epilog.i114_crit_edge

if.end50.i.sw.epilog.i114_crit_edge:              ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

if.end50.i.if.end6_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb59.i:                                        ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_const_cmp4(i32 458752, i32 %call18.i)
  %cmp61.i = icmp ult i32 %call18.i, 458752
  br i1 %cmp61.i, label %sw.bb59.i.sw.epilog.i114_crit_edge, label %lor.lhs.false63.i

sw.bb59.i.sw.epilog.i114_crit_edge:               ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

lor.lhs.false63.i:                                ; preds = %sw.bb59.i
  %add.i = add nuw nsw i32 %shr18.i, 1
  %and66.i = and i32 %add.i, %shr18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %lor.lhs.false63.i.sw.bb70.i_crit_edge, label %lor.lhs.false63.i.sw.epilog.i114_crit_edge

lor.lhs.false63.i.sw.epilog.i114_crit_edge:       ; preds = %lor.lhs.false63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

lor.lhs.false63.i.sw.bb70.i_crit_edge:            ; preds = %lor.lhs.false63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb70.i

sw.bb70.i:                                        ; preds = %lor.lhs.false63.i.sw.bb70.i_crit_edge, %if.end.i40.sw.bb70.i_crit_edge
  %trunc.i = trunc i16 %18 to i4
  %33 = zext i4 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.5)
  switch i4 %trunc.i, label %if.end77.i [
    i4 0, label %sw.bb70.i.sw.epilog.i114_crit_edge
    i4 -1, label %sw.bb70.i.sw.epilog.i114_crit_edge139
  ]

sw.bb70.i.sw.epilog.i114_crit_edge139:            ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

sw.bb70.i.sw.epilog.i114_crit_edge:               ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

if.end77.i:                                       ; preds = %sw.bb70.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv12.i)
  %tobool78.not.i = icmp eq i16 %conv12.i, 0
  br i1 %tobool78.not.i, label %if.end77.i.if.end6_crit_edge, label %if.end77.i.sw.epilog.i114_crit_edge

if.end77.i.sw.epilog.i114_crit_edge:              ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

if.end77.i.if.end6_crit_edge:                     ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %if.end77.i.if.end6_crit_edge, %if.end50.i.if.end6_crit_edge
  %34 = zext i32 %conv2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %conv2.i, label %if.end6.sw.epilog.i114_crit_edge [
    i32 12, label %sw.bb
    i32 8, label %sw.bb9
    i32 13, label %sw.bb11
    i32 14, label %sw.bb13
  ]

if.end6.sw.epilog.i114_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

sw.bb:                                            ; preds = %if.end6
  %35 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %state, align 8
  %conv3.i = trunc i32 %shr18.i to i16
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %36, label %sw.bb.fm10k_mbx_process_connect.exit_crit_edge [
    i32 3, label %sw.bb.sw.bb.i44_crit_edge
    i32 2, label %sw.bb.sw.bb.i44_crit_edge140
    i32 1, label %sw.bb9.i
  ]

sw.bb.sw.bb.i44_crit_edge140:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i44

sw.bb.sw.bb.i44_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i44

sw.bb.fm10k_mbx_process_connect.exit_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_process_connect.exit

sw.bb.i44:                                        ; preds = %sw.bb.sw.bb.i44_crit_edge, %sw.bb.sw.bb.i44_crit_edge140
  tail call fastcc void @fm10k_mbx_reset_work(ptr noundef %mbx) #7
  %local.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %38 = ptrtoint ptr %local.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 -1, ptr %local.i.i, align 4
  %remote.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %39 = ptrtoint ptr %remote.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -1, ptr %remote.i.i, align 2
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp.i.i43 = icmp eq i32 %41, 2
  %..i.i = zext i1 %cmp.i.i43 to i32
  %42 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %..i.i, ptr %state, align 8
  br label %fm10k_mbx_process_connect.exit

sw.bb9.i:                                         ; preds = %sw.bb
  %size11.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %size11.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %size11.i, align 4
  %conv12.i45 = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr18.i, i32 %conv12.i45)
  %cmp.i = icmp ugt i32 %shr18.i, %conv12.i45
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i16 %44, -1
  %max_size.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 10
  %45 = ptrtoint ptr %max_size.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %sub.i, ptr %max_size.i, align 4
  br label %fm10k_mbx_process_connect.exit

if.else.i:                                        ; preds = %sw.bb9.i
  %46 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %state, align 8
  %max_size.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 10
  %47 = ptrtoint ptr %max_size.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv3.i, ptr %max_size.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %head.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %tail.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %51)
  %cmp.i.i.i.i = icmp eq i16 %49, %51
  br i1 %cmp.i.i.i.i, label %if.else.i.fm10k_mbx_process_connect.exit_crit_edge, label %fm10k_fifo_head_len.exit.i.i

if.else.i.fm10k_mbx_process_connect.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_process_connect.exit

fm10k_fifo_head_len.exit.i.i:                     ; preds = %if.else.i
  %tx.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3
  %size.i.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 3
  %52 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %size.i.i.i.i, align 4
  %sub.i.i.i.i = add i16 %53, -1
  %and.i.i.i.i = and i16 %sub.i.i.i.i, %49
  %54 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx.i.i, align 4
  %conv.i.i.i = zext i16 %and.i.i.i.i to i32
  %add.ptr.i.i.i = getelementptr i32, ptr %55, i32 %conv.i.i.i
  %56 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i.i.i, align 4
  %add.i.i.i = add i32 %57, 3145728
  %shr.i.i.i = lshr i32 %add.i.i.i, 22
  %58 = trunc i32 %shr.i.i.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %58, i16 %conv3.i)
  %cmp27.not.i.i = icmp ult i16 %58, %conv3.i
  br i1 %cmp27.not.i.i, label %fm10k_fifo_head_len.exit.i.i.fm10k_mbx_process_connect.exit_crit_edge, label %for.body.lr.ph.i.i

fm10k_fifo_head_len.exit.i.i.fm10k_mbx_process_connect.exit_crit_edge: ; preds = %fm10k_fifo_head_len.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_process_connect.exit

for.body.lr.ph.i.i:                               ; preds = %fm10k_fifo_head_len.exit.i.i
  %tx_dropped.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 23
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %fm10k_fifo_head_len.exit26.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %59 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %head.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %51)
  %cmp.i.i.i.i.i = icmp eq i16 %60, %51
  br i1 %cmp.i.i.i.i.i, label %for.body.i.i.fm10k_fifo_head_drop.exit.i.i_crit_edge, label %if.end.i.i.i.i

for.body.i.i.fm10k_fifo_head_drop.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_fifo_head_drop.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i.i.i.i = and i16 %60, %sub.i.i.i.i
  %conv.i.i.i.i = zext i16 %and.i.i.i.i.i to i32
  %add.ptr.i.i.i.i = getelementptr i32, ptr %55, i32 %conv.i.i.i.i
  %61 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %62, 3145728
  %shr.i.i.i.i = lshr i32 %add.i.i.i.i, 22
  %63 = trunc i32 %shr.i.i.i.i to i16
  %conv5.i.i.i.i = add nuw nsw i16 %63, 1
  br label %fm10k_fifo_head_drop.exit.i.i

fm10k_fifo_head_drop.exit.i.i:                    ; preds = %if.end.i.i.i.i, %for.body.i.i.fm10k_fifo_head_drop.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i16 [ %conv5.i.i.i.i, %if.end.i.i.i.i ], [ 0, %for.body.i.i.fm10k_fifo_head_drop.exit.i.i_crit_edge ]
  %add.i12.i.i = add i16 %retval.0.i.i.i.i, %60
  %64 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %add.i12.i.i, ptr %head.i.i.i.i, align 4
  %65 = ptrtoint ptr %tx_dropped.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %tx_dropped.i.i, align 8
  %inc.i.i = add i64 %66, 1
  store i64 %inc.i.i, ptr %tx_dropped.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i12.i.i, i16 %51)
  %cmp.i.i15.i.i = icmp eq i16 %add.i12.i.i, %51
  br i1 %cmp.i.i15.i.i, label %fm10k_fifo_head_drop.exit.i.i.fm10k_mbx_process_connect.exit_crit_edge, label %fm10k_fifo_head_len.exit26.i.i

fm10k_fifo_head_drop.exit.i.i.fm10k_mbx_process_connect.exit_crit_edge: ; preds = %fm10k_fifo_head_drop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_process_connect.exit

fm10k_fifo_head_len.exit26.i.i:                   ; preds = %fm10k_fifo_head_drop.exit.i.i
  %and.i.i18.i.i = and i16 %add.i12.i.i, %sub.i.i.i.i
  %conv.i19.i.i = zext i16 %and.i.i18.i.i to i32
  %add.ptr.i20.i.i = getelementptr i32, ptr %55, i32 %conv.i19.i.i
  %67 = ptrtoint ptr %add.ptr.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i20.i.i, align 4
  %add.i21.i.i = add i32 %68, 3145728
  %shr.i22.i.i = lshr i32 %add.i21.i.i, 22
  %69 = trunc i32 %shr.i22.i.i to i16
  %cmp.not.i.i = icmp ult i16 %69, %conv3.i
  br i1 %cmp.not.i.i, label %fm10k_fifo_head_len.exit26.i.i.fm10k_mbx_process_connect.exit_crit_edge, label %fm10k_fifo_head_len.exit26.i.i.for.body.i.i_crit_edge

fm10k_fifo_head_len.exit26.i.i.for.body.i.i_crit_edge: ; preds = %fm10k_fifo_head_len.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

fm10k_fifo_head_len.exit26.i.i.fm10k_mbx_process_connect.exit_crit_edge: ; preds = %fm10k_fifo_head_len.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_process_connect.exit

fm10k_mbx_process_connect.exit:                   ; preds = %fm10k_fifo_head_len.exit26.i.i.fm10k_mbx_process_connect.exit_crit_edge, %fm10k_fifo_head_drop.exit.i.i.fm10k_mbx_process_connect.exit_crit_edge, %fm10k_fifo_head_len.exit.i.i.fm10k_mbx_process_connect.exit_crit_edge, %if.else.i.fm10k_mbx_process_connect.exit_crit_edge, %if.then.i, %sw.bb.i44, %sw.bb.fm10k_mbx_process_connect.exit_crit_edge
  %tail.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %70 = ptrtoint ptr %tail.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv17.i, ptr %tail.i, align 8
  tail call fastcc void @fm10k_mbx_create_reply(ptr noundef %hw, ptr noundef %mbx, i16 noundef zeroext %conv17.i) #7
  br label %if.end18

sw.bb9:                                           ; preds = %if.end6
  %71 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp.i49 = icmp eq i32 %72, 1
  br i1 %cmp.i49, label %if.then.i50, label %sw.bb9.if.end.i52_crit_edge

sw.bb9.if.end.i52_crit_edge:                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i52

if.then.i50:                                      ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %tail9.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %73 = ptrtoint ptr %tail9.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv17.i, ptr %tail9.i, align 8
  %74 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 2, ptr %state, align 8
  br label %if.end.i52

if.end.i52:                                       ; preds = %if.then.i50, %sw.bb9.if.end.i52_crit_edge
  %call.i51 = tail call fastcc i32 @fm10k_mbx_push_tail(ptr noundef %hw, ptr noundef %mbx, i16 noundef zeroext %conv12.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp11.i = icmp slt i32 %call.i51, 0
  br i1 %cmp11.i, label %if.then17, label %if.end14.i

if.end14.i:                                       ; preds = %if.end.i52
  %head_len.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 16
  %75 = ptrtoint ptr %head_len.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %head_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool.not.i.i = icmp eq i16 %76, 0
  br i1 %tobool.not.i.i, label %if.end14.i.fm10k_mbx_verify_remote_crc.exit.i_crit_edge, label %if.then.i.i

if.end14.i.fm10k_mbx_verify_remote_crc.exit.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_verify_remote_crc.exit.i

if.then.i.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %size.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 3
  %77 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %size.i.i.i, align 4
  %sub.i.i.i = add i16 %78, -1
  %tail.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 2
  %79 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %tail.i.i.i, align 2
  %pushed.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 17
  %81 = ptrtoint ptr %pushed.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %pushed.i.i, align 2
  %add.i.i.i53 = add i16 %82, %80
  %and.i.i.i = and i16 %add.i.i.i53, %sub.i.i.i
  %rx.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2
  %sub.i.i54 = sub i16 %and.i.i.i, %76
  %remote.i.i55 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %83 = ptrtoint ptr %remote.i.i55 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %remote.i.i55, align 2
  %call3.i.i = tail call fastcc zeroext i16 @fm10k_fifo_crc(ptr noundef %rx.i.i, i16 noundef zeroext %sub.i.i54, i16 noundef zeroext %76, i16 noundef zeroext %84) #7
  %85 = ptrtoint ptr %remote.i.i55 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %call3.i.i, ptr %remote.i.i55, align 2
  br label %fm10k_mbx_verify_remote_crc.exit.i

fm10k_mbx_verify_remote_crc.exit.i:               ; preds = %if.then.i.i, %if.end14.i.fm10k_mbx_verify_remote_crc.exit.i_crit_edge
  %remote5.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %86 = ptrtoint ptr %remote5.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %remote5.i.i, align 2
  %conv.i.i.i56 = zext i16 %87 to i32
  %88 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mbx_hdr.i, align 4
  %xor.i.i.i = xor i32 %89, %conv.i.i.i56
  %shr.i.i.i57 = lshr i32 %xor.i.i.i, 8
  %and.i18.i.i = and i32 %xor.i.i.i, 255
  %arrayidx.i.i.i = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and.i18.i.i
  %90 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv1.i.i.i = zext i16 %91 to i32
  %xor2.i.i.i = xor i32 %shr.i.i.i57, %conv1.i.i.i
  %and4.i.i.i = and i32 %xor2.i.i.i, 255
  %arrayidx5.i.i.i = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and4.i.i.i
  %92 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx5.i.i.i, align 2
  %shr3.i.i.i = lshr i32 %xor2.i.i.i, 8
  %94 = trunc i32 %shr3.i.i.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %93, i16 %94)
  %tobool8.not.i.i = icmp eq i16 %93, %94
  br i1 %tobool8.not.i.i, label %if.end17.i, label %fm10k_mbx_verify_remote_crc.exit.i.sw.epilog.i114_crit_edge

fm10k_mbx_verify_remote_crc.exit.i.sw.epilog.i114_crit_edge: ; preds = %fm10k_mbx_verify_remote_crc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

if.end17.i:                                       ; preds = %fm10k_mbx_verify_remote_crc.exit.i
  %rx.i37.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2
  %head.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 1
  %tail.i.i38.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 2
  %95 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %head.i.i.i, align 4
  %97 = ptrtoint ptr %tail.i.i38.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %tail.i.i38.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %96, i16 %98)
  %cmp.i1.i.i = icmp eq i16 %96, %98
  br i1 %cmp.i1.i.i, label %if.end17.i.fm10k_mbx_dequeue_rx.exit.i_crit_edge, label %for.body.lr.ph.i.i58

if.end17.i.fm10k_mbx_dequeue_rx.exit.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_dequeue_rx.exit.i

for.body.lr.ph.i.i58:                             ; preds = %if.end17.i
  %msg_data.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 1
  %rx_parse_err.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 30
  %size.i.i.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 3
  br label %for.body.i.i60

for.body.i.i60:                                   ; preds = %fm10k_fifo_head_drop.exit.i.i71.for.body.i.i60_crit_edge, %for.body.lr.ph.i.i58
  %99 = ptrtoint ptr %rx.i37.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rx.i37.i, align 4
  %101 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %head.i.i.i, align 4
  %conv.i.i = zext i16 %102 to i32
  %add.ptr.i.i = getelementptr i32, ptr %100, i32 %conv.i.i
  %103 = ptrtoint ptr %msg_data.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %msg_data.i.i, align 8
  %call1.i.i = tail call i32 @fm10k_tlv_msg_parse(ptr noundef %hw, ptr noundef %add.ptr.i.i, ptr noundef %mbx, ptr noundef %104) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i59 = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i59, label %if.then.i39.i, label %for.body.i.i60.if.end.i.i_crit_edge

for.body.i.i60.if.end.i.i_crit_edge:              ; preds = %for.body.i.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i39.i:                                    ; preds = %for.body.i.i60
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %rx_parse_err.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %rx_parse_err.i.i, align 8
  %inc.i.i61 = add i64 %106, 1
  store i64 %inc.i.i61, ptr %rx_parse_err.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i39.i, %for.body.i.i60.if.end.i.i_crit_edge
  %107 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %head.i.i.i, align 4
  %109 = ptrtoint ptr %tail.i.i38.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %tail.i.i38.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %108, i16 %110)
  %cmp.i.i.i.i.i62 = icmp eq i16 %108, %110
  br i1 %cmp.i.i.i.i.i62, label %if.end.i.i.fm10k_fifo_head_drop.exit.i.i71_crit_edge, label %if.end.i.i.i.i69

if.end.i.i.fm10k_fifo_head_drop.exit.i.i71_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_fifo_head_drop.exit.i.i71

if.end.i.i.i.i69:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %size.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %size.i.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i16 %112, -1
  %and.i.i.i.i.i63 = and i16 %sub.i.i.i.i.i, %108
  %113 = ptrtoint ptr %rx.i37.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rx.i37.i, align 4
  %conv.i.i.i.i64 = zext i16 %and.i.i.i.i.i63 to i32
  %add.ptr.i.i.i.i65 = getelementptr i32, ptr %114, i32 %conv.i.i.i.i64
  %115 = ptrtoint ptr %add.ptr.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %add.ptr.i.i.i.i65, align 4
  %add.i.i.i.i66 = add i32 %116, 3145728
  %shr.i.i.i.i67 = lshr i32 %add.i.i.i.i66, 22
  %117 = trunc i32 %shr.i.i.i.i67 to i16
  %conv5.i.i.i.i68 = add nuw nsw i16 %117, 1
  br label %fm10k_fifo_head_drop.exit.i.i71

fm10k_fifo_head_drop.exit.i.i71:                  ; preds = %if.end.i.i.i.i69, %if.end.i.i.fm10k_fifo_head_drop.exit.i.i71_crit_edge
  %retval.0.i.i.i.i70 = phi i16 [ %conv5.i.i.i.i68, %if.end.i.i.i.i69 ], [ 0, %if.end.i.i.fm10k_fifo_head_drop.exit.i.i71_crit_edge ]
  %add.i.i40.i = add i16 %retval.0.i.i.i.i70, %108
  %118 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %add.i.i40.i, ptr %head.i.i.i, align 4
  %cmp.i.i.i = icmp eq i16 %add.i.i40.i, %110
  br i1 %cmp.i.i.i, label %fm10k_fifo_head_drop.exit.i.i71.fm10k_mbx_dequeue_rx.exit.i_crit_edge, label %fm10k_fifo_head_drop.exit.i.i71.for.body.i.i60_crit_edge

fm10k_fifo_head_drop.exit.i.i71.for.body.i.i60_crit_edge: ; preds = %fm10k_fifo_head_drop.exit.i.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i60

fm10k_fifo_head_drop.exit.i.i71.fm10k_mbx_dequeue_rx.exit.i_crit_edge: ; preds = %fm10k_fifo_head_drop.exit.i.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_dequeue_rx.exit.i

fm10k_mbx_dequeue_rx.exit.i:                      ; preds = %fm10k_fifo_head_drop.exit.i.i71.fm10k_mbx_dequeue_rx.exit.i_crit_edge, %if.end17.i.fm10k_mbx_dequeue_rx.exit.i_crit_edge
  %119 = ptrtoint ptr %rx.i37.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rx.i37.i, align 4
  %121 = ptrtoint ptr %tail.i.i38.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %tail.i.i38.i, align 2
  %conv7.i.i = zext i16 %122 to i32
  %add.ptr8.i.i = getelementptr i32, ptr %120, i32 %conv7.i.i
  %pushed.i41.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 17
  %123 = ptrtoint ptr %pushed.i41.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %pushed.i41.i, align 2
  %conv9.i.i = zext i16 %124 to i32
  %shl.i.i72 = shl nuw nsw i32 %conv9.i.i, 2
  %125 = call ptr @memmove(ptr %120, ptr %add.ptr8.i.i, i32 %shl.i.i72)
  %126 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %head.i.i.i, align 4
  %128 = load i16, ptr %tail.i.i38.i, align 2
  %sub.i42.i = sub i16 %128, %127
  store i16 %sub.i42.i, ptr %tail.i.i38.i, align 2
  store i16 0, ptr %head.i.i.i, align 4
  tail call fastcc void @fm10k_mbx_create_reply(ptr noundef %hw, ptr noundef %mbx, i16 noundef zeroext %conv17.i) #7
  br label %if.end18

sw.bb11:                                          ; preds = %if.end6
  %129 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %state, align 8
  %pushed.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 17
  %131 = ptrtoint ptr %pushed.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %pushed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool.not.i77 = icmp eq i16 %132, 0
  br i1 %tobool.not.i77, label %fm10k_mbx_verify_remote_crc.exit.i90, label %sw.bb11.sw.epilog.i114_crit_edge

sw.bb11.sw.epilog.i114_crit_edge:                 ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

fm10k_mbx_verify_remote_crc.exit.i90:             ; preds = %sw.bb11
  %head_len.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 16
  %133 = ptrtoint ptr %head_len.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 0, ptr %head_len.i, align 8
  %remote5.i.i78 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %134 = ptrtoint ptr %remote5.i.i78 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %remote5.i.i78, align 2
  %conv.i.i.i79 = zext i16 %135 to i32
  %xor.i.i.i80 = xor i32 %call18.i, %conv.i.i.i79
  %shr.i.i.i81 = lshr i32 %xor.i.i.i80, 8
  %and.i18.i.i82 = and i32 %xor.i.i.i80, 255
  %arrayidx.i.i.i83 = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and.i18.i.i82
  %136 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx.i.i.i83, align 2
  %conv1.i.i.i84 = zext i16 %137 to i32
  %xor2.i.i.i85 = xor i32 %shr.i.i.i81, %conv1.i.i.i84
  %and4.i.i.i86 = and i32 %xor2.i.i.i85, 255
  %arrayidx5.i.i.i87 = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and4.i.i.i86
  %138 = ptrtoint ptr %arrayidx5.i.i.i87 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %arrayidx5.i.i.i87, align 2
  %shr3.i.i.i88 = lshr i32 %xor2.i.i.i85, 8
  %140 = trunc i32 %shr3.i.i.i88 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %139, i16 %140)
  %tobool8.not.i.i89 = icmp eq i16 %139, %140
  br i1 %tobool8.not.i.i89, label %if.end6.i, label %fm10k_mbx_verify_remote_crc.exit.i90.sw.epilog.i114_crit_edge

fm10k_mbx_verify_remote_crc.exit.i90.sw.epilog.i114_crit_edge: ; preds = %fm10k_mbx_verify_remote_crc.exit.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

if.end6.i:                                        ; preds = %fm10k_mbx_verify_remote_crc.exit.i90
  %141 = and i32 %130, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %141)
  %switch.i = icmp eq i32 %141, 2
  br i1 %switch.i, label %sw.bb.i93, label %if.end6.i.sw.epilog.i100_crit_edge

if.end6.i.sw.epilog.i100_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i100

sw.bb.i93:                                        ; preds = %if.end6.i
  %head.i.i.i91 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 1
  %142 = ptrtoint ptr %head.i.i.i91 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %head.i.i.i91, align 4
  %tail.i.i29.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 2
  %144 = ptrtoint ptr %tail.i.i29.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %tail.i.i29.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %143, i16 %145)
  %cmp.i.i.i92 = icmp eq i16 %143, %145
  br i1 %cmp.i.i.i92, label %if.end9.i, label %sw.bb.i93.sw.epilog.i100_crit_edge

sw.bb.i93.sw.epilog.i100_crit_edge:               ; preds = %sw.bb.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i100

if.end9.i:                                        ; preds = %sw.bb.i93
  %tail.i94 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %146 = ptrtoint ptr %tail.i94 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %tail.i94, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %conv17.i, i16 %147)
  %cmp.not.i95 = icmp eq i16 %conv17.i, %147
  br i1 %cmp.not.i95, label %if.end14.i99, label %if.end9.i.sw.epilog.i114_crit_edge

if.end9.i.sw.epilog.i114_crit_edge:               ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i114

if.end14.i99:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @fm10k_mbx_reset_work(ptr noundef %mbx) #7
  %local.i.i96 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %148 = ptrtoint ptr %local.i.i96 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 -1, ptr %local.i.i96, align 4
  %149 = ptrtoint ptr %remote5.i.i78 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 -1, ptr %remote5.i.i78, align 2
  %150 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %151)
  %cmp.i.i97 = icmp eq i32 %151, 2
  %..i.i98 = zext i1 %cmp.i.i97 to i32
  %152 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %..i.i98, ptr %state, align 8
  br label %sw.epilog.i100

sw.epilog.i100:                                   ; preds = %if.end14.i99, %sw.bb.i93.sw.epilog.i100_crit_edge, %if.end6.i.sw.epilog.i100_crit_edge
  tail call fastcc void @fm10k_mbx_create_reply(ptr noundef %hw, ptr noundef %mbx, i16 noundef zeroext %conv17.i) #7
  br label %if.end18

sw.bb13:                                          ; preds = %if.end6
  %153 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %state, align 8
  %155 = and i32 %154, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %155)
  %switch.i103 = icmp eq i32 %155, 2
  br i1 %switch.i103, label %sw.bb.i108, label %sw.bb13.sw.epilog.i111_crit_edge

sw.bb13.sw.epilog.i111_crit_edge:                 ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i111

sw.bb.i108:                                       ; preds = %sw.bb13
  tail call fastcc void @fm10k_mbx_reset_work(ptr noundef %mbx) #7
  %local.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %156 = ptrtoint ptr %local.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 -1, ptr %local.i, align 4
  %remote.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %157 = ptrtoint ptr %remote.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 -1, ptr %remote.i, align 2
  %tail.i106 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %158 = ptrtoint ptr %tail.i106 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv17.i, ptr %tail.i106, align 8
  %159 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %160)
  %cmp.i107 = icmp eq i32 %160, 2
  br i1 %cmp.i107, label %if.then.i109, label %if.end.i110

if.then.i109:                                     ; preds = %sw.bb.i108
  call void @__sanitizer_cov_trace_pc() #9
  %161 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 1, ptr %state, align 8
  br label %sw.epilog.i111

if.end.i110:                                      ; preds = %sw.bb.i108
  call void @__sanitizer_cov_trace_pc() #9
  %mbx_lock.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %162 = ptrtoint ptr %mbx_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %mbx_lock.i.i, align 4
  %or.i.i = or i32 %163, 2
  store i32 %or.i.i, ptr %mbx_lock.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %164 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %head.i.i, align 2
  %166 = shl i16 %165, 8
  %167 = and i16 %166, 3840
  %168 = or i16 %167, 12
  %or1.i.i = zext i16 %168 to i32
  %size.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 3
  %169 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %size.i.i, align 4
  %171 = add i16 %170, -1
  %and3.i.i = zext i16 %171 to i32
  %shl4.i.i = shl nuw i32 %and3.i.i, 16
  %or5.i.i = or i32 %shl4.i.i, %or1.i.i
  %172 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %or5.i.i, ptr %mbx_hdr.i, align 8
  br label %if.end18

sw.epilog.i111:                                   ; preds = %if.then.i109, %sw.bb13.sw.epilog.i111_crit_edge
  %tail6.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %173 = ptrtoint ptr %tail6.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %tail6.i, align 8
  tail call fastcc void @fm10k_mbx_create_reply(ptr noundef %hw, ptr noundef %mbx, i16 noundef zeroext %174) #7
  br label %if.end18

if.then17:                                        ; preds = %if.end.i52
  %switch.tableidx = add i32 %call.i51, 507
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %175 = icmp ult i32 %switch.tableidx, 11
  br i1 %175, label %switch.hole_check, label %if.then17.if.end18_crit_edge

if.then17.if.end18_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

switch.hole_check:                                ; preds = %if.then17
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1619, %switch.maskindex
  %176 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %176)
  %switch.lobit.not = icmp eq i16 %176, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end18_crit_edge, label %switch.lookup

switch.hole_check.if.end18_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.fm10k_mbx_process, i32 0, i32 %switch.tableidx
  %177 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %177)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i114

sw.epilog.i114:                                   ; preds = %switch.lookup, %if.end9.i.sw.epilog.i114_crit_edge, %fm10k_mbx_verify_remote_crc.exit.i90.sw.epilog.i114_crit_edge, %sw.bb11.sw.epilog.i114_crit_edge, %fm10k_mbx_verify_remote_crc.exit.i.sw.epilog.i114_crit_edge, %if.end6.sw.epilog.i114_crit_edge, %if.end77.i.sw.epilog.i114_crit_edge, %sw.bb70.i.sw.epilog.i114_crit_edge, %sw.bb70.i.sw.epilog.i114_crit_edge139, %lor.lhs.false63.i.sw.epilog.i114_crit_edge, %sw.bb59.i.sw.epilog.i114_crit_edge, %if.end50.i.sw.epilog.i114_crit_edge, %if.end43.i.sw.epilog.i114_crit_edge, %if.end43.i.sw.epilog.i114_crit_edge138, %if.end36.i.sw.epilog.i114_crit_edge, %sw.bb30.i.sw.epilog.i114_crit_edge, %sw.bb30.i.sw.epilog.i114_crit_edge137, %sw.bb.i.sw.epilog.i114_crit_edge, %if.end.i40.sw.epilog.i114_crit_edge, %if.end2.sw.epilog.i114_crit_edge
  %err.0.ph133 = phi i32 [ -503, %if.end6.sw.epilog.i114_crit_edge ], [ -497, %fm10k_mbx_verify_remote_crc.exit.i.sw.epilog.i114_crit_edge ], [ -507, %sw.bb11.sw.epilog.i114_crit_edge ], [ -497, %fm10k_mbx_verify_remote_crc.exit.i90.sw.epilog.i114_crit_edge ], [ -506, %if.end9.i.sw.epilog.i114_crit_edge ], [ -498, %if.end2.sw.epilog.i114_crit_edge ], [ -507, %sw.bb.i.sw.epilog.i114_crit_edge ], [ -506, %sw.bb30.i.sw.epilog.i114_crit_edge ], [ -506, %sw.bb30.i.sw.epilog.i114_crit_edge137 ], [ -506, %if.end36.i.sw.epilog.i114_crit_edge ], [ -507, %if.end43.i.sw.epilog.i114_crit_edge ], [ -507, %if.end43.i.sw.epilog.i114_crit_edge138 ], [ -507, %if.end50.i.sw.epilog.i114_crit_edge ], [ -501, %lor.lhs.false63.i.sw.epilog.i114_crit_edge ], [ -501, %sw.bb59.i.sw.epilog.i114_crit_edge ], [ -506, %sw.bb70.i.sw.epilog.i114_crit_edge ], [ -506, %sw.bb70.i.sw.epilog.i114_crit_edge139 ], [ -507, %if.end77.i.sw.epilog.i114_crit_edge ], [ -503, %if.end.i40.sw.epilog.i114_crit_edge ], [ %switch.load, %switch.lookup ]
  %mbx_lock.i112 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %178 = ptrtoint ptr %mbx_lock.i112 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %mbx_lock.i112, align 4
  %or.i = or i32 %179, 2
  store i32 %or.i, ptr %mbx_lock.i112, align 4
  %shl.i = shl nsw i32 %err.0.ph133, 16
  %head.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %180 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %head.i, align 2
  %182 = shl i16 %181, 8
  %183 = and i16 %182, 3840
  %shl3.i = zext i16 %183 to i32
  %or1.i = or i32 %shl.i, %shl3.i
  %or4.i = or i32 %or1.i, 14
  %184 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %or4.i, ptr %mbx_hdr.i, align 8
  br label %if.end18

if.end18:                                         ; preds = %sw.epilog.i114, %switch.hole_check.if.end18_crit_edge, %if.then17.if.end18_crit_edge, %sw.epilog.i111, %if.end.i110, %sw.epilog.i100, %fm10k_mbx_dequeue_rx.exit.i, %fm10k_mbx_process_connect.exit
  %err.0128 = phi i32 [ 0, %fm10k_mbx_process_connect.exit ], [ 0, %fm10k_mbx_dequeue_rx.exit.i ], [ 0, %sw.epilog.i100 ], [ 0, %if.end.i110 ], [ 0, %sw.epilog.i111 ], [ %call.i51, %if.then17.if.end18_crit_edge ], [ %err.0.ph133, %sw.epilog.i114 ], [ %call.i51, %switch.hole_check.if.end18_crit_edge ]
  %185 = ptrtoint ptr %mbmem_reg.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %mbmem_reg.i, align 8
  %187 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile ptr, ptr %hw, align 8
  %tobool.not.i116 = icmp eq ptr %188, null
  br i1 %tobool.not.i116, label %if.end18.if.end.i120_crit_edge, label %do.body6.i, !prof !11

if.end18.if.end.i120_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i120

do.body6.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %189 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %mbx_hdr.i, align 8
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #7
  %arrayidx.i118 = getelementptr i32, ptr %188, i32 %186
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i118, i32 %191) #7, !srcloc !13
  br label %if.end.i120

if.end.i120:                                      ; preds = %do.body6.i, %if.end18.if.end.i120_crit_edge
  %mbx_lock.i119 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %192 = ptrtoint ptr %mbx_lock.i119 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %mbx_lock.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool11.not.i = icmp eq i32 %193, 0
  br i1 %tobool11.not.i, label %if.end.i120.fm10k_mbx_write.exit_crit_edge, label %do.body13.i

if.end.i120.fm10k_mbx_write.exit_crit_edge:       ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_write.exit

do.body13.i:                                      ; preds = %if.end.i120
  %194 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load volatile ptr, ptr %hw, align 8
  %tobool20.not.i = icmp eq ptr %195, null
  br i1 %tobool20.not.i, label %do.body13.i.fm10k_mbx_write.exit_crit_edge, label %do.body30.i, !prof !11

do.body13.i.fm10k_mbx_write.exit_crit_edge:       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_write.exit

do.body30.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %196 = ptrtoint ptr %mbx_lock.i119 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %mbx_lock.i119, align 4
  %198 = tail call i32 @llvm.bswap.i32(i32 %197) #7
  %199 = ptrtoint ptr %mbx_reg.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %mbx_reg.i, align 4
  %arrayidx34.i = getelementptr i32, ptr %195, i32 %200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx34.i, i32 %198) #7, !srcloc !13
  br label %fm10k_mbx_write.exit

fm10k_mbx_write.exit:                             ; preds = %do.body30.i, %do.body13.i.fm10k_mbx_write.exit_crit_edge, %if.end.i120.fm10k_mbx_write.exit_crit_edge
  %201 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %mbx_hdr.i, align 8
  %202 = ptrtoint ptr %mbx_lock.i119 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %mbx_lock.i119, align 4
  br label %cleanup

cleanup:                                          ; preds = %fm10k_mbx_write.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0128, %fm10k_mbx_write.exit ], [ 0, %entry.cleanup_crit_edge ], [ -500, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_mbx_register_handlers(ptr nocapture noundef writeonly %mbx, ptr noundef %msg_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %msg_data, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %while.condthread-pre-split.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.condthread-pre-split.i:                     ; preds = %entry
  %0 = ptrtoint ptr %msg_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pr.i = load i32, ptr %msg_data, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end24.i.while.cond.i_crit_edge, %while.condthread-pre-split.i
  %1 = phi i32 [ %.pr.i, %while.condthread-pre-split.i ], [ %11, %if.end24.i.while.cond.i_crit_edge ]
  %msg_data.addr.0.i = phi ptr [ %msg_data, %while.condthread-pre-split.i ], [ %incdec.ptr26.i, %if.end24.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, -1
  %func34.i = getelementptr inbounds %struct.fm10k_msg_data, ptr %msg_data.addr.0.i, i32 0, i32 2
  %2 = ptrtoint ptr %func34.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %func34.i, align 4
  %tobool35.not.i = icmp eq ptr %3, null
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  br i1 %tobool35.not.i, label %while.body.i.return_crit_edge, label %if.end4.i

while.body.i.return_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4.i:                                        ; preds = %while.body.i
  %attr5.i = getelementptr inbounds %struct.fm10k_msg_data, ptr %msg_data.addr.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %attr5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attr5.i, align 4
  %tobool6.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i, label %if.end4.i.if.end24.i_crit_edge, label %while.cond8thread-pre-split.i

if.end4.i.if.end24.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

while.cond8thread-pre-split.i:                    ; preds = %if.end4.i
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr55.i = load i32, ptr %5, align 4
  br label %while.cond8.i

while.cond8.i:                                    ; preds = %while.body11.i.while.cond8.i_crit_edge, %while.cond8thread-pre-split.i
  %7 = phi i32 [ %.pr55.i, %while.cond8thread-pre-split.i ], [ %9, %while.body11.i.while.cond8.i_crit_edge ]
  %attr.0.i = phi ptr [ %5, %while.cond8thread-pre-split.i ], [ %incdec.ptr.i, %while.body11.i.while.cond8.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp10.not.i = icmp eq i32 %7, -1
  br i1 %cmp10.not.i, label %while.cond8.i.if.end24.i_crit_edge, label %while.body11.i

while.cond8.i.if.end24.i_crit_edge:               ; preds = %while.cond8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

while.body11.i:                                   ; preds = %while.cond8.i
  %incdec.ptr.i = getelementptr %struct.fm10k_tlv_attr, ptr %attr.0.i, i32 1
  %8 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp14.not.i = icmp uge i32 %7, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %7)
  %cmp17.i = icmp ugt i32 %7, 31
  %or.cond.i = or i1 %cmp17.i, %cmp14.not.i
  br i1 %or.cond.i, label %while.body11.i.return_crit_edge, label %while.body11.i.while.cond8.i_crit_edge

while.body11.i.while.cond8.i_crit_edge:           ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond8.i

while.body11.i.return_crit_edge:                  ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end24.i:                                       ; preds = %while.cond8.i.if.end24.i_crit_edge, %if.end4.i.if.end24.i_crit_edge
  %incdec.ptr26.i = getelementptr %struct.fm10k_msg_data, ptr %msg_data.addr.0.i, i32 1
  %10 = ptrtoint ptr %incdec.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr26.i, align 4
  %cmp28.not.i = icmp ult i32 %1, %11
  br i1 %cmp28.not.i, label %if.end24.i.while.cond.i_crit_edge, label %if.end24.i.return_crit_edge

if.end24.i.return_crit_edge:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end24.i.while.cond.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

lor.lhs.false.i:                                  ; preds = %while.cond.i
  br i1 %tobool35.not.i, label %lor.lhs.false.i.return_crit_edge, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %msg_data1 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 1
  %12 = ptrtoint ptr %msg_data1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg_data, ptr %msg_data1, align 8
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.i.return_crit_edge, %if.end24.i.return_crit_edge, %while.body11.i.return_crit_edge, %while.body.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %lor.lhs.false.i.return_crit_edge ], [ -2, %while.body11.i.return_crit_edge ], [ -2, %while.body.i.return_crit_edge ], [ -2, %if.end24.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fm10k_sm_mbx_init(ptr nocapture noundef readnone %hw, ptr noundef %mbx, ptr noundef %msg_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mbx_reg = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 6
  %0 = ptrtoint ptr %mbx_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 100418, ptr %mbx_reg, align 4
  %mbmem_reg = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 7
  %1 = ptrtoint ptr %mbmem_reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 99840, ptr %mbmem_reg, align 8
  %state = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 20
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 8
  %tobool.not.i = icmp eq ptr %msg_data, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %while.condthread-pre-split.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.condthread-pre-split.i:                     ; preds = %entry
  %3 = ptrtoint ptr %msg_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr.i = load i32, ptr %msg_data, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end24.i.while.cond.i_crit_edge, %while.condthread-pre-split.i
  %4 = phi i32 [ %.pr.i, %while.condthread-pre-split.i ], [ %14, %if.end24.i.while.cond.i_crit_edge ]
  %msg_data.addr.0.i = phi ptr [ %msg_data, %while.condthread-pre-split.i ], [ %incdec.ptr26.i, %if.end24.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.not.i = icmp eq i32 %4, -1
  %func34.i = getelementptr inbounds %struct.fm10k_msg_data, ptr %msg_data.addr.0.i, i32 0, i32 2
  %5 = ptrtoint ptr %func34.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %func34.i, align 4
  %tobool35.not.i = icmp eq ptr %6, null
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  br i1 %tobool35.not.i, label %while.body.i.return_crit_edge, label %if.end4.i

while.body.i.return_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4.i:                                        ; preds = %while.body.i
  %attr5.i = getelementptr inbounds %struct.fm10k_msg_data, ptr %msg_data.addr.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %attr5.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attr5.i, align 4
  %tobool6.not.i = icmp eq ptr %8, null
  br i1 %tobool6.not.i, label %if.end4.i.if.end24.i_crit_edge, label %while.cond8thread-pre-split.i

if.end4.i.if.end24.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

while.cond8thread-pre-split.i:                    ; preds = %if.end4.i
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr55.i = load i32, ptr %8, align 4
  br label %while.cond8.i

while.cond8.i:                                    ; preds = %while.body11.i.while.cond8.i_crit_edge, %while.cond8thread-pre-split.i
  %10 = phi i32 [ %.pr55.i, %while.cond8thread-pre-split.i ], [ %12, %while.body11.i.while.cond8.i_crit_edge ]
  %attr.0.i = phi ptr [ %8, %while.cond8thread-pre-split.i ], [ %incdec.ptr.i, %while.body11.i.while.cond8.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp10.not.i = icmp eq i32 %10, -1
  br i1 %cmp10.not.i, label %while.cond8.i.if.end24.i_crit_edge, label %while.body11.i

while.cond8.i.if.end24.i_crit_edge:               ; preds = %while.cond8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

while.body11.i:                                   ; preds = %while.cond8.i
  %incdec.ptr.i = getelementptr %struct.fm10k_tlv_attr, ptr %attr.0.i, i32 1
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp14.not.i = icmp uge i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %10)
  %cmp17.i = icmp ugt i32 %10, 31
  %or.cond.i = or i1 %cmp17.i, %cmp14.not.i
  br i1 %or.cond.i, label %while.body11.i.return_crit_edge, label %while.body11.i.while.cond8.i_crit_edge

while.body11.i.while.cond8.i_crit_edge:           ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond8.i

while.body11.i.return_crit_edge:                  ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end24.i:                                       ; preds = %while.cond8.i.if.end24.i_crit_edge, %if.end4.i.if.end24.i_crit_edge
  %incdec.ptr26.i = getelementptr %struct.fm10k_msg_data, ptr %msg_data.addr.0.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr26.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %incdec.ptr26.i, align 4
  %cmp28.not.i = icmp ult i32 %4, %14
  br i1 %cmp28.not.i, label %if.end24.i.while.cond.i_crit_edge, label %if.end24.i.return_crit_edge

if.end24.i.return_crit_edge:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end24.i.while.cond.i_crit_edge:                ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

lor.lhs.false.i:                                  ; preds = %while.cond.i
  br i1 %tobool35.not.i, label %lor.lhs.false.i.return_crit_edge, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %msg_data1 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 1
  %15 = ptrtoint ptr %msg_data1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg_data, ptr %msg_data1, align 8
  %timeout = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 4
  %16 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %timeout, align 4
  %udelay = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 5
  %17 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 500, ptr %udelay, align 8
  %max_size = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 10
  %18 = ptrtoint ptr %max_size to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 127, ptr %max_size, align 4
  %mbmem_len = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 11
  %19 = ptrtoint ptr %mbmem_len to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 512, ptr %mbmem_len, align 2
  %tx = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3
  %buffer = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 31
  %20 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buffer, ptr %tx, align 4
  %size2.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %size2.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 512, ptr %size2.i, align 4
  %head.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %head.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %tail.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %tail.i, align 2
  %rx = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2
  %arrayidx = getelementptr %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 31, i32 512
  %24 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx, ptr %rx, align 4
  %size2.i30 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %size2.i30 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 128, ptr %size2.i30, align 4
  %head.i31 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %head.i31 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %head.i31, align 4
  %tail.i32 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %tail.i32 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %tail.i32, align 2
  %28 = ptrtoint ptr %mbx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @fm10k_sm_mbx_connect, ptr %mbx, align 8
  %disconnect = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 1
  %29 = ptrtoint ptr %disconnect to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @fm10k_sm_mbx_disconnect, ptr %disconnect, align 4
  %rx_ready = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 2
  %30 = ptrtoint ptr %rx_ready to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @fm10k_mbx_rx_ready, ptr %rx_ready, align 8
  %tx_ready = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 3
  %31 = ptrtoint ptr %tx_ready to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @fm10k_mbx_tx_ready, ptr %tx_ready, align 4
  %tx_complete = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 4
  %32 = ptrtoint ptr %tx_complete to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @fm10k_mbx_tx_complete, ptr %tx_complete, align 8
  %enqueue_tx = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 5
  %33 = ptrtoint ptr %enqueue_tx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @fm10k_mbx_enqueue_tx, ptr %enqueue_tx, align 4
  %process = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 6
  %34 = ptrtoint ptr %process to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @fm10k_sm_mbx_process, ptr %process, align 8
  %register_handlers = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 7
  %35 = ptrtoint ptr %register_handlers to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @fm10k_mbx_register_handlers, ptr %register_handlers, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.i.return_crit_edge, %if.end24.i.return_crit_edge, %while.body11.i.return_crit_edge, %while.body.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %lor.lhs.false.i.return_crit_edge ], [ -2, %while.body11.i.return_crit_edge ], [ -2, %while.body.i.return_crit_edge ], [ -2, %if.end24.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_sm_mbx_connect(ptr noundef %hw, ptr noundef %mbx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2
  %0 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 20
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %fm10k_sm_mbx_create_connect_hdr.exit, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

fm10k_sm_mbx_create_connect_hdr.exit:             ; preds = %if.end
  %timeout = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 4
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2000, ptr %timeout, align 4
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state, align 8
  %max_size = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 10
  %6 = ptrtoint ptr %max_size to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 127, ptr %max_size, align 4
  tail call fastcc void @fm10k_mbx_reset_work(ptr noundef %mbx) #7
  %local.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %7 = ptrtoint ptr %local.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %local.i, align 4
  %remote.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %8 = ptrtoint ptr %remote.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %remote.i, align 2
  %tail.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %9 = ptrtoint ptr %tail.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %head.i, align 2
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %state, align 8
  %mbx_lock = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %12 = ptrtoint ptr %mbx_lock to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 58, ptr %mbx_lock, align 4
  %mbx_hdr.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 9
  %13 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 65537, ptr %mbx_hdr.i, align 8
  %mbmem_reg.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 7
  %14 = ptrtoint ptr %mbmem_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mbmem_reg.i, align 8
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %hw, align 8
  %tobool.not.i16 = icmp eq ptr %17, null
  br i1 %tobool.not.i16, label %fm10k_sm_mbx_create_connect_hdr.exit.if.end.i_crit_edge, label %do.body6.i, !prof !11

fm10k_sm_mbx_create_connect_hdr.exit.if.end.i_crit_edge: ; preds = %fm10k_sm_mbx_create_connect_hdr.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body6.i:                                       ; preds = %fm10k_sm_mbx_create_connect_hdr.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mbx_hdr.i, align 8
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %arrayidx.i = getelementptr i32, ptr %17, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %20) #7, !srcloc !13
  br label %if.end.i

if.end.i:                                         ; preds = %do.body6.i, %fm10k_sm_mbx_create_connect_hdr.exit.if.end.i_crit_edge
  %21 = ptrtoint ptr %mbx_lock to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mbx_lock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool11.not.i = icmp eq i32 %22, 0
  br i1 %tobool11.not.i, label %if.end.i.fm10k_mbx_write.exit_crit_edge, label %do.body13.i

if.end.i.fm10k_mbx_write.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_write.exit

do.body13.i:                                      ; preds = %if.end.i
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %hw, align 8
  %tobool20.not.i = icmp eq ptr %24, null
  br i1 %tobool20.not.i, label %do.body13.i.fm10k_mbx_write.exit_crit_edge, label %do.body30.i, !prof !11

do.body13.i.fm10k_mbx_write.exit_crit_edge:       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_write.exit

do.body30.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %mbx_lock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mbx_lock, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  %mbx_reg.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 6
  %28 = ptrtoint ptr %mbx_reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mbx_reg.i, align 4
  %arrayidx34.i = getelementptr i32, ptr %24, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx34.i, i32 %27) #7, !srcloc !13
  br label %fm10k_mbx_write.exit

fm10k_mbx_write.exit:                             ; preds = %do.body30.i, %do.body13.i.fm10k_mbx_write.exit_crit_edge, %if.end.i.fm10k_mbx_write.exit_crit_edge
  %30 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %mbx_hdr.i, align 8
  %31 = ptrtoint ptr %mbx_lock to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %mbx_lock, align 4
  br label %return

return:                                           ; preds = %fm10k_mbx_write.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %fm10k_mbx_write.exit ], [ -509, %entry.return_crit_edge ], [ -500, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fm10k_sm_mbx_disconnect(ptr noundef %hw, ptr noundef %mbx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout1 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 4
  %0 = ptrtoint ptr %timeout1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool.not, i32 0, i32 500
  %state = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 20
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %state, align 8
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %hw, align 8
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %entry.if.end_crit_edge, label %do.body8, !prof !11

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %mbx_reg = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 6
  %5 = ptrtoint ptr %mbx_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mbx_reg, align 4
  %arrayidx = getelementptr i32, ptr %4, i32 %6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 1107296256) #7, !srcloc !13
  br label %if.end

if.end:                                           ; preds = %do.body8, %entry.if.end_crit_edge
  %process = getelementptr inbounds %struct.fm10k_mbx_ops, ptr %mbx, i32 0, i32 6
  br label %do.body13

do.body13:                                        ; preds = %land.rhs.do.body13_crit_edge, %if.end
  %timeout.0 = phi i32 [ %cond, %if.end ], [ %sub, %land.rhs.do.body13_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 4080212) #7
  %8 = ptrtoint ptr %process to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %process, align 8
  %call = tail call i32 %9(ptr noundef %hw, ptr noundef %mbx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %timeout.0)
  %cmp = icmp sgt i32 %timeout.0, 19
  br i1 %cmp, label %land.rhs, label %do.body13.do.end17_crit_edge

do.body13.do.end17_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

land.rhs:                                         ; preds = %do.body13
  %sub = add nsw i32 %timeout.0, -19
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 8
  %cmp16.not = icmp eq i32 %11, 0
  br i1 %cmp16.not, label %land.rhs.do.end17_crit_edge, label %land.rhs.do.body13_crit_edge

land.rhs.do.body13_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

land.rhs.do.end17_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end17:                                         ; preds = %land.rhs.do.end17_crit_edge, %do.body13.do.end17_crit_edge
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 8
  %remote = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %13 = ptrtoint ptr %remote to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %remote, align 2
  tail call fastcc void @fm10k_mbx_reset_work(ptr noundef %mbx)
  %tail.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tail.i, align 2
  %head.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %head.i, align 4
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %hw, align 8
  %tobool26.not = icmp eq ptr %18, null
  br i1 %tobool26.not, label %do.end17.if.end40_crit_edge, label %do.body36, !prof !11

do.end17.if.end40_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.body36:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %mbmem_reg = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 7
  %19 = ptrtoint ptr %mbmem_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mbmem_reg, align 8
  %arrayidx39 = getelementptr i32, ptr %18, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx39, i32 0) #7, !srcloc !13
  br label %if.end40

if.end40:                                         ; preds = %do.body36, %do.end17.if.end40_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fm10k_sm_mbx_process(ptr noundef %hw, ptr noundef %mbx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 20
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbx_hdr.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 9
  %2 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbx_hdr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %mbx_reg.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 6
  %4 = ptrtoint ptr %mbx_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mbx_reg.i, align 4
  %call.i = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %5) #7
  %and.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.do.body.i_crit_edge, label %if.then2.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mbx_lock.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %6 = ptrtoint ptr %mbx_lock.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %mbx_lock.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then2.i, %if.end.i.do.body.i_crit_edge
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %hw, align 8
  %tobool6.not.i = icmp eq ptr %8, null
  br i1 %tobool6.not.i, label %do.body.i.if.end2_crit_edge, label %do.body11.i, !prof !11

do.body.i.if.end2_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

do.body11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %mbx_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbx_reg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %8, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 402653184) #7, !srcloc !13
  br label %if.end2

if.end2:                                          ; preds = %do.body11.i, %do.body.i.if.end2_crit_edge
  %mbmem_reg.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 7
  %11 = ptrtoint ptr %mbmem_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mbmem_reg.i, align 8
  %mbmem_len.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 11
  %13 = ptrtoint ptr %mbmem_len.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mbmem_len.i, align 2
  %conv.i = zext i16 %14 to i32
  %xor.i = xor i32 %12, %conv.i
  %call18.i = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %xor.i) #7
  %15 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call18.i, ptr %mbx_hdr.i, align 8
  %16 = trunc i32 %call18.i to i16
  %conv2.i = and i16 %16, 4095
  %17 = lshr i32 %call18.i, 12
  %shr8.i = lshr i32 %call18.i, 16
  %18 = trunc i32 %shr8.i to i16
  %conv12.i = and i16 %18, 4095
  %conv13.i = and i32 %17, 15
  %19 = zext i32 %conv13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %conv13.i, label %if.end2.sw.epilog.i66_crit_edge [
    i32 0, label %if.end2.if.end6_crit_edge
    i32 1, label %sw.bb.i
  ]

if.end2.if.end6_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end2.sw.epilog.i66_crit_edge:                  ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i66

sw.bb.i:                                          ; preds = %if.end2
  %20 = add nsw i16 %conv12.i, -512
  call void @__sanitizer_cov_trace_const_cmp2(i16 -511, i16 %20)
  %21 = icmp ult i16 %20, -511
  br i1 %21, label %sw.bb.i.sw.epilog.i66_crit_edge, label %if.end.i41

sw.bb.i.sw.epilog.i66_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i66

if.end.i41:                                       ; preds = %sw.bb.i
  %22 = add nsw i16 %conv2.i, -512
  call void @__sanitizer_cov_trace_const_cmp2(i16 -511, i16 %22)
  %23 = icmp ult i16 %22, -511
  br i1 %23, label %if.end.i41.sw.epilog.i66_crit_edge, label %if.end22.i

if.end.i41.sw.epilog.i66_crit_edge:               ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i66

if.end22.i:                                       ; preds = %if.end.i41
  %tail23.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %24 = ptrtoint ptr %tail23.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tail23.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %conv12.i)
  %cmp26.i = icmp ult i16 %25, %conv12.i
  br i1 %cmp26.i, label %if.then28.i, label %if.end22.i.if.end32.i_crit_edge

if.end22.i.if.end32.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then28.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %mbmem_len.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mbmem_len.i, align 2
  %sub.i = add nsw i16 %conv12.i, -1
  %add.i = add i16 %sub.i, %27
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then28.i, %if.end22.i.if.end32.i_crit_edge
  %head.0.i = phi i16 [ %add.i, %if.then28.i ], [ %conv12.i, %if.end22.i.if.end32.i_crit_edge ]
  %head34.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %28 = ptrtoint ptr %head34.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %head34.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv2.i, i16 %29)
  %cmp36.i = icmp ult i16 %conv2.i, %29
  br i1 %cmp36.i, label %if.then38.i, label %if.end32.i.if.end45.i_crit_edge

if.end32.i.if.end45.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.then38.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %mbmem_len.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mbmem_len.i, align 2
  %sub41.i = add nsw i16 %conv2.i, -1
  %add43.i = add i16 %sub41.i, %31
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then38.i, %if.end32.i.if.end45.i_crit_edge
  %tail.0.i = phi i16 [ %add43.i, %if.then38.i ], [ %conv2.i, %if.end32.i.if.end45.i_crit_edge ]
  %sub.i.i = sub i16 %25, %head.0.i
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %head.0.i)
  %cmp.i.i = icmp ult i16 %25, %head.0.i
  %sub7.i.i = add i16 %sub.i.i, -2
  %spec.select.i.i = select i1 %cmp.i.i, i16 %sub7.i.i, i16 %sub.i.i
  %32 = ptrtoint ptr %mbmem_len.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %mbmem_len.i, align 2
  %shl.i.i = shl i16 %33, 1
  %sub11.i.i = add i16 %shl.i.i, -1
  %and.i.i = and i16 %sub11.i.i, %spec.select.i.i
  %tail_len.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 13
  %34 = ptrtoint ptr %tail_len.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %tail_len.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i.i, i16 %35)
  %cmp49.i = icmp ugt i16 %and.i.i, %35
  br i1 %cmp49.i, label %if.end45.i.sw.epilog.i66_crit_edge, label %if.end52.i

if.end45.i.sw.epilog.i66_crit_edge:               ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i66

if.end52.i:                                       ; preds = %if.end45.i
  %sub.i86.i = sub i16 %tail.0.i, %29
  call void @__sanitizer_cov_trace_cmp2(i16 %tail.0.i, i16 %29)
  %cmp.i87.i = icmp ult i16 %tail.0.i, %29
  %sub7.i88.i = add i16 %sub.i86.i, -2
  %spec.select.i89.i = select i1 %cmp.i87.i, i16 %sub7.i88.i, i16 %sub.i86.i
  %and.i93.i = and i16 %sub11.i.i, %spec.select.i89.i
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i93.i, i16 %33)
  %cmp58.i = icmp ult i16 %and.i93.i, %33
  br i1 %cmp58.i, label %if.end52.i.if.end6_crit_edge, label %if.end52.i.sw.epilog.i66_crit_edge

if.end52.i.sw.epilog.i66_crit_edge:               ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i66

if.end52.i.if.end6_crit_edge:                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %if.end52.i.if.end6_crit_edge, %if.end2.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call18.i)
  %tobool8.not = icmp ult i32 %call18.i, 268435456
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state, align 8
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %37, label %if.then9.sw.epilog.i46_crit_edge [
    i32 3, label %sw.bb.i44
    i32 2, label %sw.bb2.i
    i32 1, label %sw.bb3.i
  ]

if.then9.sw.epilog.i46_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i46

sw.bb.i44:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %remote.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %39 = ptrtoint ptr %remote.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %remote.i, align 2
  br label %sw.epilog.i46

sw.bb2.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @fm10k_mbx_reset_work(ptr noundef %mbx) #7
  %local.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %40 = ptrtoint ptr %local.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %local.i.i, align 4
  %remote.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %41 = ptrtoint ptr %remote.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %remote.i.i, align 2
  %tail.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %42 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %tail.i.i, align 8
  %head.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %43 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %head.i.i, align 2
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %state, align 8
  br label %sw.epilog.i46

sw.bb3.i:                                         ; preds = %if.then9
  %remote4.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %45 = ptrtoint ptr %remote4.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %remote4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool.not.i45 = icmp eq i16 %46, 0
  br i1 %tobool.not.i45, label %sw.bb3.i.sw.epilog.i46_crit_edge, label %while.cond.preheader.i

sw.bb3.i.sw.epilog.i46_crit_edge:                 ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i46

while.cond.preheader.i:                           ; preds = %sw.bb3.i
  %local.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %47 = ptrtoint ptr %local.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %local.promoted.i = load i16, ptr %local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %local.promoted.i)
  %cmp20.i = icmp ugt i16 %local.promoted.i, 1
  br i1 %cmp20.i, label %while.body.preheader.i, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.preheader.i:                           ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %local.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %local.i, align 4
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.preheader.i, %while.cond.preheader.i.while.end.i_crit_edge
  %49 = ptrtoint ptr %remote4.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %remote4.i, align 2
  br label %sw.epilog.i46

sw.epilog.i46:                                    ; preds = %while.end.i, %sw.bb3.i.sw.epilog.i46_crit_edge, %sw.bb2.i, %sw.bb.i44, %if.then9.sw.epilog.i46_crit_edge
  %local.i15.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %50 = ptrtoint ptr %local.i15.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %local.i15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.not.i.i = icmp eq i16 %51, 0
  br i1 %tobool.not.i.i, label %sw.epilog.i46.fm10k_sm_mbx_process_error.exit_crit_edge, label %if.then.i.i

sw.epilog.i46.fm10k_sm_mbx_process_error.exit_crit_edge: ; preds = %sw.epilog.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_sm_mbx_process_error.exit

if.then.i.i:                                      ; preds = %sw.epilog.i46
  call void @__sanitizer_cov_trace_pc() #9
  %mbx_lock.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %52 = ptrtoint ptr %mbx_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mbx_lock.i.i, align 4
  %or.i.i = or i32 %53, 2
  store i32 %or.i.i, ptr %mbx_lock.i.i, align 4
  br label %fm10k_sm_mbx_process_error.exit

fm10k_sm_mbx_process_error.exit:                  ; preds = %if.then.i.i, %sw.epilog.i46.fm10k_sm_mbx_process_error.exit_crit_edge
  %tail.i16.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %54 = ptrtoint ptr %tail.i16.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tail.i16.i, align 8
  %56 = and i16 %55, 4095
  %remote.i17.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %57 = ptrtoint ptr %remote.i17.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %remote.i17.i, align 2
  %59 = shl i16 %58, 12
  %or418.i.i = or i16 %59, %56
  %or4.i.i = zext i16 %or418.i.i to i32
  %head.i18.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %60 = ptrtoint ptr %head.i18.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %head.i18.i, align 2
  %62 = and i16 %61, 4095
  %and6.i.i = zext i16 %62 to i32
  %shl7.i.i = shl nuw nsw i32 %and6.i.i, 16
  %or8.i.i = or i32 %shl7.i.i, %or4.i.i
  %63 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or8.i.i, ptr %mbx_hdr.i, align 8
  br label %if.end22

if.end10:                                         ; preds = %if.end6
  %64 = zext i32 %conv13.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %conv13.i, label %if.end10.if.end22_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
  ]

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

sw.bb:                                            ; preds = %if.end10
  %65 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %state, align 8
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %66, label %sw.bb.fifo_err.thread95_crit_edge [
    i32 3, label %sw.bb.i49
    i32 2, label %if.then21.thread
    i32 1, label %sw.bb4.i
  ]

sw.bb.fifo_err.thread95_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %fifo_err.thread95

sw.bb.i49:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %local.i48 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %68 = ptrtoint ptr %local.i48 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 0, ptr %local.i48, align 4
  br label %fifo_err.thread95

sw.bb4.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %local5.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %69 = ptrtoint ptr %local5.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %local5.i, align 4
  %remote6.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %71 = ptrtoint ptr %remote6.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %remote6.i, align 2
  br label %fifo_err.thread95

sw.bb17:                                          ; preds = %if.end10
  %72 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp.i = icmp eq i32 %73, 1
  br i1 %cmp.i, label %if.then.i, label %sw.bb17.if.end17.i_crit_edge

sw.bb17.if.end17.i_crit_edge:                     ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then.i:                                        ; preds = %sw.bb17
  %remote.i58 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %74 = ptrtoint ptr %remote.i58 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %remote.i58, align 2
  %76 = zext i16 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %75, label %if.then.i.sw.bb3.i.i_crit_edge [
    i16 0, label %if.then.i.send_reply.i_crit_edge
    i16 1, label %if.end15.i59
  ]

if.then.i.send_reply.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %send_reply.i

if.then.i.sw.bb3.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i

if.end15.i59:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2, ptr %state, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end15.i59, %sw.bb17.if.end17.i_crit_edge
  %head.i.i60 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %rx.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2
  %head.i.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 1
  %tail.i.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 2
  %msg_data.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 1
  %rx_parse_err.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 30
  %size.i.i.i.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 3
  %pushed.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 17
  br label %do.body.i64

do.body.i64:                                      ; preds = %do.cond.i.do.body.i64_crit_edge, %if.end17.i
  %78 = ptrtoint ptr %mbmem_len.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %mbmem_len.i, align 2
  %sub.i.i61 = add i16 %79, -1
  %80 = ptrtoint ptr %head.i.i60 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %head.i.i60, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %81, i16 %conv2.i)
  %cmp.i.i62 = icmp ugt i16 %81, %conv2.i
  %add.i.i = select i1 %cmp.i.i62, i16 %sub.i.i61, i16 0
  %spec.select.i.i63 = add i16 %add.i.i, %conv2.i
  %call.i.i = tail call fastcc i32 @fm10k_mbx_push_tail(ptr noundef %hw, ptr noundef %mbx, i16 noundef zeroext %spec.select.i.i63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp9.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp9.i.i, label %if.then21, label %if.end12.i.i

if.end12.i.i:                                     ; preds = %do.body.i64
  %82 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %head.i.i.i.i, align 4
  %84 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %tail.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %83, i16 %85)
  %cmp.i1.i.i.i = icmp eq i16 %83, %85
  br i1 %cmp.i1.i.i.i, label %if.end12.i.i.fm10k_mbx_dequeue_rx.exit.i.i_crit_edge, label %if.end12.i.i.for.body.i.i.i_crit_edge

if.end12.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end12.i.i
  br label %for.body.i.i.i

if.end12.i.i.fm10k_mbx_dequeue_rx.exit.i.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_dequeue_rx.exit.i.i

for.body.i.i.i:                                   ; preds = %fm10k_fifo_head_drop.exit.i.i.i.for.body.i.i.i_crit_edge, %if.end12.i.i.for.body.i.i.i_crit_edge
  %86 = ptrtoint ptr %rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rx.i.i.i, align 4
  %88 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %head.i.i.i.i, align 4
  %conv.i.i.i = zext i16 %89 to i32
  %add.ptr.i.i.i = getelementptr i32, ptr %87, i32 %conv.i.i.i
  %90 = ptrtoint ptr %msg_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %msg_data.i.i.i, align 8
  %call1.i.i.i = tail call i32 @fm10k_tlv_msg_parse(ptr noundef %hw, ptr noundef %add.ptr.i.i.i, ptr noundef %mbx, ptr noundef %91) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %for.body.i.i.i.if.end.i.i.i_crit_edge

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %rx_parse_err.i.i.i to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %rx_parse_err.i.i.i, align 8
  %inc.i.i.i = add i64 %93, 1
  store i64 %inc.i.i.i, ptr %rx_parse_err.i.i.i, align 8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %for.body.i.i.i.if.end.i.i.i_crit_edge
  %94 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %head.i.i.i.i, align 4
  %96 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %tail.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %95, i16 %97)
  %cmp.i.i.i.i.i.i = icmp eq i16 %95, %97
  br i1 %cmp.i.i.i.i.i.i, label %if.end.i.i.i.fm10k_fifo_head_drop.exit.i.i.i_crit_edge, label %if.end.i.i.i.i.i

if.end.i.i.i.fm10k_fifo_head_drop.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_fifo_head_drop.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %size.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %size.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i16 %99, -1
  %and.i.i.i.i.i.i = and i16 %sub.i.i.i.i.i.i, %95
  %100 = ptrtoint ptr %rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rx.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %and.i.i.i.i.i.i to i32
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %101, i32 %conv.i.i.i.i.i
  %102 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %103, 3145728
  %shr.i.i.i.i.i = lshr i32 %add.i.i.i.i.i, 22
  %104 = trunc i32 %shr.i.i.i.i.i to i16
  %conv5.i.i.i.i.i = add nuw nsw i16 %104, 1
  br label %fm10k_fifo_head_drop.exit.i.i.i

fm10k_fifo_head_drop.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.fm10k_fifo_head_drop.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i16 [ %conv5.i.i.i.i.i, %if.end.i.i.i.i.i ], [ 0, %if.end.i.i.i.fm10k_fifo_head_drop.exit.i.i.i_crit_edge ]
  %add.i.i.i.i = add i16 %retval.0.i.i.i.i.i, %95
  %105 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %add.i.i.i.i, ptr %head.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq i16 %add.i.i.i.i, %97
  br i1 %cmp.i.i.i.i, label %fm10k_fifo_head_drop.exit.i.i.i.fm10k_mbx_dequeue_rx.exit.i.i_crit_edge, label %fm10k_fifo_head_drop.exit.i.i.i.for.body.i.i.i_crit_edge

fm10k_fifo_head_drop.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %fm10k_fifo_head_drop.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

fm10k_fifo_head_drop.exit.i.i.i.fm10k_mbx_dequeue_rx.exit.i.i_crit_edge: ; preds = %fm10k_fifo_head_drop.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_dequeue_rx.exit.i.i

fm10k_mbx_dequeue_rx.exit.i.i:                    ; preds = %fm10k_fifo_head_drop.exit.i.i.i.fm10k_mbx_dequeue_rx.exit.i.i_crit_edge, %if.end12.i.i.fm10k_mbx_dequeue_rx.exit.i.i_crit_edge
  %106 = ptrtoint ptr %rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rx.i.i.i, align 4
  %108 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %tail.i.i.i.i, align 2
  %conv7.i.i.i = zext i16 %109 to i32
  %add.ptr8.i.i.i = getelementptr i32, ptr %107, i32 %conv7.i.i.i
  %110 = ptrtoint ptr %pushed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %pushed.i.i.i, align 2
  %conv9.i.i.i = zext i16 %111 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv9.i.i.i, 2
  %112 = call ptr @memmove(ptr %107, ptr %add.ptr8.i.i.i, i32 %shl.i.i.i)
  %113 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %head.i.i.i.i, align 4
  %115 = load i16, ptr %tail.i.i.i.i, align 2
  %sub.i.i.i = sub i16 %115, %114
  store i16 %sub.i.i.i, ptr %tail.i.i.i.i, align 2
  store i16 0, ptr %head.i.i.i.i, align 4
  %116 = load i16, ptr %pushed.i.i.i, align 2
  %117 = ptrtoint ptr %head.i.i60 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %head.i.i60, align 2
  %119 = xor i16 %116, -1
  %sub3.i.i.i = add i16 %118, %119
  %120 = ptrtoint ptr %mbmem_len.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %mbmem_len.i, align 2
  %shl.i46.i.i = shl i16 %121, 1
  %sub5.i.i.i = add i16 %shl.i46.i.i, -1
  %and.i.i.i = and i16 %sub5.i.i.i, %sub3.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i.i.i, i16 %118)
  %cmp.i47.i.i = icmp ult i16 %and.i.i.i, %118
  %cond.in.v.i.i.i = select i1 %cmp.i47.i.i, i16 1, i16 -1
  %cond.in.i.i.i = add i16 %cond.in.v.i.i.i, %and.i.i.i
  %122 = ptrtoint ptr %head.i.i60 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %cond.in.i.i.i, ptr %head.i.i60, align 2
  %123 = ptrtoint ptr %pushed.i.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %pushed.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %cond.in.i.i.i, i16 %sub.i.i61)
  %cmp20.i.i = icmp ugt i16 %cond.in.i.i.i, %sub.i.i61
  br i1 %cmp20.i.i, label %if.then22.i.i, label %fm10k_mbx_dequeue_rx.exit.i.i.do.cond.i_crit_edge

fm10k_mbx_dequeue_rx.exit.i.i.do.cond.i_crit_edge: ; preds = %fm10k_mbx_dequeue_rx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond.i

if.then22.i.i:                                    ; preds = %fm10k_mbx_dequeue_rx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub26.i.i = sub i16 %cond.in.i.i.i, %sub.i.i61
  %124 = ptrtoint ptr %head.i.i60 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %sub26.i.i, ptr %head.i.i60, align 2
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then22.i.i, %fm10k_mbx_dequeue_rx.exit.i.i.do.cond.i_crit_edge
  %tobool22.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool22.not.i, label %do.cond.i.send_reply.i_crit_edge, label %do.cond.i.do.body.i64_crit_edge

do.cond.i.do.body.i64_crit_edge:                  ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i64

do.cond.i.send_reply.i_crit_edge:                 ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %send_reply.i

send_reply.i:                                     ; preds = %do.cond.i.send_reply.i_crit_edge, %if.then.i.send_reply.i_crit_edge
  tail call fastcc void @fm10k_sm_mbx_create_reply(ptr noundef %hw, ptr noundef %mbx, i16 noundef zeroext %conv12.i) #7
  br label %if.end22

fifo_err.thread95:                                ; preds = %sw.bb4.i, %sw.bb.i49, %sw.bb.fifo_err.thread95_crit_edge
  %tail.i97 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %125 = ptrtoint ptr %tail.i97 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %tail.i97, align 8
  tail call fastcc void @fm10k_sm_mbx_create_reply(ptr noundef %hw, ptr noundef %mbx, i16 noundef zeroext %126) #7
  br label %if.end22

if.then21.thread:                                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @fm10k_mbx_reset_work(ptr noundef %mbx) #7
  %local.i.i50 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %127 = ptrtoint ptr %local.i.i50 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 1, ptr %local.i.i50, align 4
  %remote.i.i51 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %128 = ptrtoint ptr %remote.i.i51 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %remote.i.i51, align 2
  %tail.i.i52 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %129 = ptrtoint ptr %tail.i.i52 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 1, ptr %tail.i.i52, align 8
  %head.i.i53 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %130 = ptrtoint ptr %head.i.i53 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 1, ptr %head.i.i53, align 2
  %131 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 1, ptr %state, align 8
  tail call fastcc void @fm10k_sm_mbx_create_reply(ptr noundef %hw, ptr noundef %mbx, i16 noundef zeroext 1) #7
  br label %if.end22

if.then21:                                        ; preds = %do.body.i64
  %switch.tableidx = add i32 %call.i.i, 507
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %132 = icmp ult i32 %switch.tableidx, 10
  br i1 %132, label %switch.hole_check, label %if.then21.if.end22_crit_edge

if.then21.if.end22_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

switch.hole_check:                                ; preds = %if.then21
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 587, %switch.maskindex
  %133 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %switch.lobit.not = icmp eq i16 %133, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end22_crit_edge, label %switch.lookup

switch.hole_check.if.end22_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [10 x i32], ptr @switch.table.fm10k_sm_mbx_process, i32 0, i32 %switch.tableidx
  %134 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %134)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i66

sw.epilog.i66:                                    ; preds = %switch.lookup, %if.end52.i.sw.epilog.i66_crit_edge, %if.end45.i.sw.epilog.i66_crit_edge, %if.end.i41.sw.epilog.i66_crit_edge, %sw.bb.i.sw.epilog.i66_crit_edge, %if.end2.sw.epilog.i66_crit_edge
  %err.0.ph103.ph = phi i32 [ -506, %sw.bb.i.sw.epilog.i66_crit_edge ], [ -507, %if.end.i41.sw.epilog.i66_crit_edge ], [ -506, %if.end45.i.sw.epilog.i66_crit_edge ], [ -507, %if.end52.i.sw.epilog.i66_crit_edge ], [ -504, %if.end2.sw.epilog.i66_crit_edge ], [ %switch.load, %switch.lookup ]
  %135 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %135)
  %.pr = load i32, ptr %state, align 8
  %136 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %.pr, label %sw.epilog.i66.sw.epilog.i.i_crit_edge [
    i32 3, label %sw.bb.i.i
    i32 2, label %sw.bb2.i.i
    i32 1, label %sw.epilog.i66.sw.bb3.i.i_crit_edge
  ]

sw.epilog.i66.sw.bb3.i.i_crit_edge:               ; preds = %sw.epilog.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i.i

sw.epilog.i66.sw.epilog.i.i_crit_edge:            ; preds = %sw.epilog.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %sw.epilog.i66
  call void @__sanitizer_cov_trace_pc() #9
  %remote.i.i67 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %137 = ptrtoint ptr %remote.i.i67 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %remote.i.i67, align 2
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %sw.epilog.i66
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @fm10k_mbx_reset_work(ptr noundef %mbx) #7
  %local.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %138 = ptrtoint ptr %local.i.i.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 1, ptr %local.i.i.i, align 4
  %remote.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %139 = ptrtoint ptr %remote.i.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %remote.i.i.i, align 2
  %tail.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %140 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 1, ptr %tail.i.i.i, align 8
  %head.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %141 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 1, ptr %head.i.i.i, align 2
  %142 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %state, align 8
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %sw.epilog.i66.sw.bb3.i.i_crit_edge, %if.then.i.sw.bb3.i.i_crit_edge
  %err.0.ph103107 = phi i32 [ %err.0.ph103.ph, %sw.epilog.i66.sw.bb3.i.i_crit_edge ], [ -504, %if.then.i.sw.bb3.i.i_crit_edge ]
  %remote4.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %143 = ptrtoint ptr %remote4.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %remote4.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %144)
  %tobool.not.i.i68 = icmp eq i16 %144, 0
  br i1 %tobool.not.i.i68, label %sw.bb3.i.i.sw.epilog.i.i_crit_edge, label %while.cond.preheader.i.i

sw.bb3.i.i.sw.epilog.i.i_crit_edge:               ; preds = %sw.bb3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i.i

while.cond.preheader.i.i:                         ; preds = %sw.bb3.i.i
  %local.i.i69 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %145 = ptrtoint ptr %local.i.i69 to i32
  call void @__asan_load2_noabort(i32 %145)
  %local.promoted.i.i = load i16, ptr %local.i.i69, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %local.promoted.i.i)
  %cmp20.i.i70 = icmp ugt i16 %local.promoted.i.i, 1
  br i1 %cmp20.i.i70, label %while.body.preheader.i.i, label %while.cond.preheader.i.i.while.end.i.i_crit_edge

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i.i

while.body.preheader.i.i:                         ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %local.i.i69 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 1, ptr %local.i.i69, align 4
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.preheader.i.i, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %147 = ptrtoint ptr %remote4.i.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %remote4.i.i, align 2
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %while.end.i.i, %sw.bb3.i.i.sw.epilog.i.i_crit_edge, %sw.bb2.i.i, %sw.bb.i.i, %sw.epilog.i66.sw.epilog.i.i_crit_edge
  %err.0.ph103108 = phi i32 [ %err.0.ph103107, %while.end.i.i ], [ %err.0.ph103107, %sw.bb3.i.i.sw.epilog.i.i_crit_edge ], [ %err.0.ph103.ph, %sw.bb2.i.i ], [ %err.0.ph103.ph, %sw.bb.i.i ], [ %err.0.ph103.ph, %sw.epilog.i66.sw.epilog.i.i_crit_edge ]
  %local.i15.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %148 = ptrtoint ptr %local.i15.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %local.i15.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool.not.i.i.i = icmp eq i16 %149, 0
  br i1 %tobool.not.i.i.i, label %sw.epilog.i.i.fm10k_sm_mbx_process_error.exit.i_crit_edge, label %if.then.i.i.i71

sw.epilog.i.i.fm10k_sm_mbx_process_error.exit.i_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_sm_mbx_process_error.exit.i

if.then.i.i.i71:                                  ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mbx_lock.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %150 = ptrtoint ptr %mbx_lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %mbx_lock.i.i.i, align 4
  %or.i.i.i = or i32 %151, 2
  store i32 %or.i.i.i, ptr %mbx_lock.i.i.i, align 4
  br label %fm10k_sm_mbx_process_error.exit.i

fm10k_sm_mbx_process_error.exit.i:                ; preds = %if.then.i.i.i71, %sw.epilog.i.i.fm10k_sm_mbx_process_error.exit.i_crit_edge
  %tail.i16.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %152 = ptrtoint ptr %tail.i16.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %tail.i16.i.i, align 8
  %154 = and i16 %153, 4095
  %remote.i17.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %155 = ptrtoint ptr %remote.i17.i.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %remote.i17.i.i, align 2
  %157 = shl i16 %156, 12
  %or418.i.i.i = or i16 %157, %154
  %or4.i.i.i = zext i16 %or418.i.i.i to i32
  %head.i18.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %158 = ptrtoint ptr %head.i18.i.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %head.i18.i.i, align 2
  %160 = and i16 %159, 4095
  %and6.i.i.i = zext i16 %160 to i32
  %shl7.i.i.i = shl nuw nsw i32 %and6.i.i.i, 16
  %or8.i.i.i = or i32 %shl7.i.i.i, %or4.i.i.i
  br i1 %tobool.not.i.i.i, label %fm10k_sm_mbx_process_error.exit.i.fm10k_sm_mbx_create_connect_hdr.exit.i_crit_edge, label %if.then.i.i74

fm10k_sm_mbx_process_error.exit.i.fm10k_sm_mbx_create_connect_hdr.exit.i_crit_edge: ; preds = %fm10k_sm_mbx_process_error.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_sm_mbx_create_connect_hdr.exit.i

if.then.i.i74:                                    ; preds = %fm10k_sm_mbx_process_error.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %mbx_lock.i.i72 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %161 = ptrtoint ptr %mbx_lock.i.i72 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %mbx_lock.i.i72, align 4
  %or.i.i73 = or i32 %162, 2
  store i32 %or.i.i73, ptr %mbx_lock.i.i72, align 4
  br label %fm10k_sm_mbx_create_connect_hdr.exit.i

fm10k_sm_mbx_create_connect_hdr.exit.i:           ; preds = %if.then.i.i74, %fm10k_sm_mbx_process_error.exit.i.fm10k_sm_mbx_create_connect_hdr.exit.i_crit_edge
  %or12.i.i = or i32 %or8.i.i.i, 268435456
  %163 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %or12.i.i, ptr %mbx_hdr.i, align 8
  br label %if.end22

if.end22:                                         ; preds = %fm10k_sm_mbx_create_connect_hdr.exit.i, %switch.hole_check.if.end22_crit_edge, %if.then21.if.end22_crit_edge, %if.then21.thread, %fifo_err.thread95, %send_reply.i, %if.end10.if.end22_crit_edge, %fm10k_sm_mbx_process_error.exit
  %err.088 = phi i32 [ 0, %fifo_err.thread95 ], [ -5, %if.then21.thread ], [ %call.i.i, %if.then21.if.end22_crit_edge ], [ %err.0.ph103108, %fm10k_sm_mbx_create_connect_hdr.exit.i ], [ 0, %fm10k_sm_mbx_process_error.exit ], [ 0, %if.end10.if.end22_crit_edge ], [ 0, %send_reply.i ], [ %call.i.i, %switch.hole_check.if.end22_crit_edge ]
  %164 = ptrtoint ptr %mbmem_reg.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %mbmem_reg.i, align 8
  %166 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile ptr, ptr %hw, align 8
  %tobool.not.i76 = icmp eq ptr %167, null
  br i1 %tobool.not.i76, label %if.end22.if.end.i80_crit_edge, label %do.body6.i, !prof !11

if.end22.if.end.i80_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i80

do.body6.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %168 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %mbx_hdr.i, align 8
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #7
  %arrayidx.i78 = getelementptr i32, ptr %167, i32 %165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i78, i32 %170) #7, !srcloc !13
  br label %if.end.i80

if.end.i80:                                       ; preds = %do.body6.i, %if.end22.if.end.i80_crit_edge
  %mbx_lock.i79 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %171 = ptrtoint ptr %mbx_lock.i79 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %mbx_lock.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool11.not.i = icmp eq i32 %172, 0
  br i1 %tobool11.not.i, label %if.end.i80.fm10k_mbx_write.exit_crit_edge, label %do.body13.i

if.end.i80.fm10k_mbx_write.exit_crit_edge:        ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_write.exit

do.body13.i:                                      ; preds = %if.end.i80
  %173 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile ptr, ptr %hw, align 8
  %tobool20.not.i = icmp eq ptr %174, null
  br i1 %tobool20.not.i, label %do.body13.i.fm10k_mbx_write.exit_crit_edge, label %do.body30.i, !prof !11

do.body13.i.fm10k_mbx_write.exit_crit_edge:       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_write.exit

do.body30.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %175 = ptrtoint ptr %mbx_lock.i79 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %mbx_lock.i79, align 4
  %177 = tail call i32 @llvm.bswap.i32(i32 %176) #7
  %178 = ptrtoint ptr %mbx_reg.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %mbx_reg.i, align 4
  %arrayidx34.i = getelementptr i32, ptr %174, i32 %179
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx34.i, i32 %177) #7, !srcloc !13
  br label %fm10k_mbx_write.exit

fm10k_mbx_write.exit:                             ; preds = %do.body30.i, %do.body13.i.fm10k_mbx_write.exit_crit_edge, %if.end.i80.fm10k_mbx_write.exit_crit_edge
  %180 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %mbx_hdr.i, align 8
  %181 = ptrtoint ptr %mbx_lock.i79 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %mbx_lock.i79, align 4
  br label %cleanup

cleanup:                                          ; preds = %fm10k_mbx_write.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.088, %fm10k_mbx_write.exit ], [ 0, %entry.cleanup_crit_edge ], [ -500, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fm10k_mbx_reset_work(ptr nocapture noundef %mbx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %size, align 4
  %sub = add i16 %1, -1
  %max_size = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 10
  %2 = ptrtoint ptr %max_size to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %sub, ptr %max_size, align 4
  %mbx_hdr = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 9
  %3 = ptrtoint ptr %mbx_hdr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mbx_hdr, align 8
  %5 = trunc i32 %4 to i16
  %6 = lshr i16 %5, 8
  %conv4 = and i16 %6, 15
  %tail = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %7 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tail, align 8
  %sub.i = sub i16 %8, %conv4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %conv4)
  %cmp.i = icmp ult i16 %8, %conv4
  %sub7.i = add i16 %sub.i, -2
  %spec.select.i = select i1 %cmp.i, i16 %sub7.i, i16 %sub.i
  %mbmem_len.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 11
  %9 = ptrtoint ptr %mbmem_len.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mbmem_len.i, align 2
  %shl.i = shl i16 %10, 1
  %sub11.i = add i16 %shl.i, -1
  %and.i = and i16 %spec.select.i, %sub11.i
  %tail_len = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 13
  %11 = ptrtoint ptr %tail_len to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tail_len, align 2
  %pulled = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 14
  %13 = ptrtoint ptr %pulled to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pulled, align 4
  %sub7 = add i16 %14, %12
  %add = sub i16 %sub7, %and.i
  %head.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 1
  %tail.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tail.i.i, align 2
  store i16 %add, ptr %pulled, align 4
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %head.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %16)
  %cmp.i.i57 = icmp eq i16 %18, %16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add)
  %tobool14.not58 = icmp eq i16 %add, 0
  %or.cond59 = select i1 %cmp.i.i57, i1 true, i1 %tobool14.not58
  br i1 %or.cond59, label %entry.while.end_crit_edge, label %fm10k_fifo_head_drop.exit.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

fm10k_fifo_head_drop.exit.lr.ph:                  ; preds = %entry
  %tx = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3
  %size.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %size.i.i.i, align 4
  %sub.i.i.i = add i16 %20, -1
  %21 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx, align 4
  %tx_dropped = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 23
  br label %fm10k_fifo_head_drop.exit

fm10k_fifo_head_drop.exit:                        ; preds = %fm10k_fifo_head_drop.exit.fm10k_fifo_head_drop.exit_crit_edge, %fm10k_fifo_head_drop.exit.lr.ph
  %23 = phi i16 [ %18, %fm10k_fifo_head_drop.exit.lr.ph ], [ %add.i54, %fm10k_fifo_head_drop.exit.fm10k_fifo_head_drop.exit_crit_edge ]
  %storemerge5360 = phi i16 [ %add, %fm10k_fifo_head_drop.exit.lr.ph ], [ %sub24, %fm10k_fifo_head_drop.exit.fm10k_fifo_head_drop.exit_crit_edge ]
  %and.i.i.i = and i16 %sub.i.i.i, %23
  %conv.i.i = zext i16 %and.i.i.i to i32
  %add.ptr.i.i = getelementptr i32, ptr %22, i32 %conv.i.i
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i, align 4
  %add.i.i = add i32 %25, 3145728
  %shr.i.i = lshr i32 %add.i.i, 22
  %26 = trunc i32 %shr.i.i to i16
  %conv5.i.i = add nuw nsw i16 %26, 1
  %add.i54 = add i16 %conv5.i.i, %23
  %27 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %add.i54, ptr %head.i.i, align 4
  %28 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tx_dropped, align 8
  %inc = add i64 %29, 1
  store i64 %inc, ptr %tx_dropped, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %storemerge5360, i16 %26)
  %cmp.not.not = icmp ugt i16 %storemerge5360, %26
  %sub24 = sub i16 %storemerge5360, %conv5.i.i
  %storemerge = select i1 %cmp.not.not, i16 %sub24, i16 0
  %30 = ptrtoint ptr %pulled to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %storemerge, ptr %pulled, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i54, i16 %16)
  %cmp.i.i = icmp eq i16 %add.i54, %16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %storemerge)
  %tobool14.not = icmp eq i16 %storemerge, 0
  %or.cond = select i1 %cmp.i.i, i1 true, i1 %tobool14.not
  br i1 %or.cond, label %fm10k_fifo_head_drop.exit.while.end_crit_edge, label %fm10k_fifo_head_drop.exit.fm10k_fifo_head_drop.exit_crit_edge

fm10k_fifo_head_drop.exit.fm10k_fifo_head_drop.exit_crit_edge: ; preds = %fm10k_fifo_head_drop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_fifo_head_drop.exit

fm10k_fifo_head_drop.exit.while.end_crit_edge:    ; preds = %fm10k_fifo_head_drop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %fm10k_fifo_head_drop.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %pushed = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 17
  %31 = ptrtoint ptr %pushed to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %pushed, align 2
  %32 = ptrtoint ptr %pulled to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %pulled, align 4
  %33 = ptrtoint ptr %tail_len to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %tail_len, align 2
  %head_len = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 16
  %34 = ptrtoint ptr %head_len to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %head_len, align 8
  %tail30 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %tail30 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %tail30, align 2
  %head32 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %head32 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %head32, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_read_reg(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fm10k_mbx_create_reply(ptr noundef %hw, ptr noundef %mbx, i16 noundef zeroext %head) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 20
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge56
    i32 1, label %sw.bb3
    i32 0, label %sw.bb4
  ]

entry.sw.bb_crit_edge56:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge56
  %tail_len.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 13
  %3 = ptrtoint ptr %tail_len.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tail_len.i, align 2
  %tail.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %5 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tail.i, align 8
  %sub.i.i = sub i16 %6, %head
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %head)
  %cmp.i.i = icmp ult i16 %6, %head
  %sub7.i.i = add i16 %sub.i.i, -2
  %spec.select.i.i = select i1 %cmp.i.i, i16 %sub7.i.i, i16 %sub.i.i
  %mbmem_len.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 11
  %7 = ptrtoint ptr %mbmem_len.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mbmem_len.i.i, align 2
  %shl.i.i = shl i16 %8, 1
  %sub11.i.i = add i16 %shl.i.i, -1
  %and.i.i = and i16 %sub11.i.i, %spec.select.i.i
  %sub.i = sub i16 %4, %and.i.i
  %tx.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3
  %pulled.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 14
  %9 = ptrtoint ptr %pulled.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pulled.i, align 4
  %head.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %head.i.i, align 4
  %add.i.i = add i16 %12, %10
  %size.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %size.i.i, align 4
  %sub.i15.i = add i16 %14, -1
  %and.i16.i = and i16 %sub.i15.i, %add.i.i
  %local.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %15 = ptrtoint ptr %local.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %local.i, align 4
  %call5.i = tail call fastcc zeroext i16 @fm10k_fifo_crc(ptr noundef %tx.i, i16 noundef zeroext %and.i16.i, i16 noundef zeroext %sub.i, i16 noundef zeroext %16) #7
  %17 = ptrtoint ptr %local.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %call5.i, ptr %local.i, align 4
  tail call fastcc void @fm10k_mbx_pull_head(ptr noundef %hw, ptr noundef %mbx, i16 noundef zeroext %head)
  %18 = ptrtoint ptr %tail_len.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tail_len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not = icmp eq i16 %19, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.i

lor.lhs.false:                                    ; preds = %sw.bb
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp = icmp eq i32 %21, 2
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %tail.i, align 8
  br i1 %cmp, label %if.then.thread, label %if.else

if.then.thread:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %head.i55 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %24 = ptrtoint ptr %head.i55 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %head.i55, align 2
  br label %fm10k_mbx_create_data_hdr.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tail.i, align 8
  %head.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %28 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %head.i, align 2
  %mbx_lock.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %30 = ptrtoint ptr %mbx_lock.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mbx_lock.i, align 4
  %or5.i = or i32 %31, 2
  store i32 %or5.i, ptr %mbx_lock.i, align 4
  br label %fm10k_mbx_create_data_hdr.exit

fm10k_mbx_create_data_hdr.exit:                   ; preds = %if.then.i, %if.then.thread
  %32 = phi i16 [ %25, %if.then.thread ], [ %29, %if.then.i ]
  %33 = phi i16 [ %23, %if.then.thread ], [ %27, %if.then.i ]
  %34 = shl i16 %33, 4
  %35 = and i16 %34, 240
  %36 = shl i16 %32, 8
  %37 = and i16 %36, 3840
  %38 = or i16 %37, %35
  %or423.i = or i16 %38, 8
  %39 = ptrtoint ptr %pulled.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pulled.i, align 4
  %41 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head.i.i, align 4
  %add.i.i6 = add i16 %42, %40
  %43 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %size.i.i, align 4
  %sub.i.i8 = add i16 %44, -1
  %and.i.i9 = and i16 %sub.i.i8, %add.i.i6
  %45 = ptrtoint ptr %local.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %local.i, align 4
  %call7.i = tail call fastcc zeroext i16 @fm10k_fifo_crc(ptr noundef %tx.i, i16 noundef zeroext %and.i.i9, i16 noundef zeroext %19, i16 noundef zeroext %46) #7
  %xor.i25.i = xor i16 %call7.i, %or423.i
  %xor.i.i = zext i16 %xor.i25.i to i32
  %shr.i.i = lshr i32 %xor.i.i, 8
  %and.i24.i = and i32 %xor.i.i, 255
  %arrayidx.i.i = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and.i24.i
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i.i, align 2
  %conv1.i.i = zext i16 %48 to i32
  %conv1.i.masked.i = and i32 %conv1.i.i, 255
  %and4.i.i = xor i32 %shr.i.i, %conv1.i.masked.i
  %arrayidx5.i.i = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and4.i.i
  %49 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx5.i.i, align 2
  %shr3.i.i = lshr i32 %conv1.i.i, 8
  %conv6.i.i = zext i16 %50 to i32
  %xor7.i.i = xor i32 %shr3.i.i, %conv6.i.i
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %51 = shl i16 %23, 4
  %52 = and i16 %51, 240
  %head.i12 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %53 = ptrtoint ptr %head.i12 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %head.i12, align 2
  %55 = shl i16 %54, 8
  %56 = and i16 %55, 3840
  %57 = or i16 %52, %56
  %or414.i = or i16 %57, 13
  %58 = ptrtoint ptr %local.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %local.i, align 4
  %xor.i15.i = xor i16 %or414.i, %59
  %xor.i.i14 = zext i16 %xor.i15.i to i32
  %shr.i.i15 = lshr i32 %xor.i.i14, 8
  %and.i.i16 = and i32 %xor.i.i14, 255
  %arrayidx.i.i17 = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and.i.i16
  %60 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.i.i17, align 2
  %conv1.i.i18 = zext i16 %61 to i32
  %conv1.i.masked.i19 = and i32 %conv1.i.i18, 255
  %and4.i.i20 = xor i32 %shr.i.i15, %conv1.i.masked.i19
  %arrayidx5.i.i21 = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and4.i.i20
  %62 = ptrtoint ptr %arrayidx5.i.i21 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx5.i.i21, align 2
  %shr3.i.i22 = lshr i32 %conv1.i.i18, 8
  %conv6.i.i23 = zext i16 %63 to i32
  %xor7.i.i24 = xor i32 %shr3.i.i22, %conv6.i.i23
  %mbx_lock.i26 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %64 = ptrtoint ptr %mbx_lock.i26 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mbx_lock.i26, align 4
  %or5.i27 = or i32 %65, 4
  store i32 %or5.i27, ptr %mbx_lock.i26, align 4
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mbx_lock.i29 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %66 = ptrtoint ptr %mbx_lock.i29 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mbx_lock.i29, align 4
  %or.i = or i32 %67, 2
  store i32 %or.i, ptr %mbx_lock.i29, align 4
  %head.i30 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %68 = ptrtoint ptr %head.i30 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %head.i30, align 2
  %70 = shl i16 %69, 8
  %71 = and i16 %70, 3840
  %72 = or i16 %71, 12
  %size.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 3
  %73 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %size.i, align 4
  %75 = add i16 %74, -1
  %and3.i = zext i16 %75 to i32
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tail.i33 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %76 = ptrtoint ptr %tail.i33 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %tail.i33, align 8
  %78 = shl i16 %77, 4
  %79 = and i16 %78, 240
  %head.i34 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %80 = ptrtoint ptr %head.i34 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %head.i34, align 2
  %82 = shl i16 %81, 8
  %83 = and i16 %82, 3840
  %84 = or i16 %79, %83
  %or414.i35 = or i16 %84, 13
  %local.i36 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %85 = ptrtoint ptr %local.i36 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %local.i36, align 4
  %xor.i15.i37 = xor i16 %or414.i35, %86
  %xor.i.i38 = zext i16 %xor.i15.i37 to i32
  %shr.i.i39 = lshr i32 %xor.i.i38, 8
  %and.i.i40 = and i32 %xor.i.i38, 255
  %arrayidx.i.i41 = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and.i.i40
  %87 = ptrtoint ptr %arrayidx.i.i41 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %arrayidx.i.i41, align 2
  %conv1.i.i42 = zext i16 %88 to i32
  %conv1.i.masked.i43 = and i32 %conv1.i.i42, 255
  %and4.i.i44 = xor i32 %shr.i.i39, %conv1.i.masked.i43
  %arrayidx5.i.i45 = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and4.i.i44
  %89 = ptrtoint ptr %arrayidx5.i.i45 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %arrayidx5.i.i45, align 2
  %shr3.i.i46 = lshr i32 %conv1.i.i42, 8
  %conv6.i.i47 = zext i16 %90 to i32
  %xor7.i.i48 = xor i32 %shr3.i.i46, %conv6.i.i47
  %mbx_lock.i50 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %91 = ptrtoint ptr %mbx_lock.i50 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mbx_lock.i50, align 4
  %or5.i51 = or i32 %92, 4
  store i32 %or5.i51, ptr %mbx_lock.i50, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %sw.bb3, %if.else, %fm10k_mbx_create_data_hdr.exit
  %xor7.i.i.sink = phi i32 [ %xor7.i.i, %fm10k_mbx_create_data_hdr.exit ], [ %xor7.i.i24, %if.else ], [ %xor7.i.i48, %sw.bb4 ], [ %and3.i, %sw.bb3 ]
  %or4.i.sink.in = phi i16 [ %or423.i, %fm10k_mbx_create_data_hdr.exit ], [ %or414.i, %if.else ], [ %or414.i35, %sw.bb4 ], [ %72, %sw.bb3 ]
  %or4.i.sink = zext i16 %or4.i.sink.in to i32
  %conv9.i = shl nuw i32 %xor7.i.i.sink, 16
  %or12.i = or i32 %conv9.i, %or4.i.sink
  %mbx_hdr.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 9
  %93 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or12.i, ptr %mbx_hdr.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fm10k_mbx_pull_head(ptr noundef %hw, ptr nocapture noundef %mbx, i16 noundef zeroext %head) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tail = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tail, align 8
  %sub.i = sub i16 %1, %head
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %head)
  %cmp.i = icmp ult i16 %1, %head
  %sub7.i = add i16 %sub.i, -2
  %spec.select.i = select i1 %cmp.i, i16 %sub7.i, i16 %sub.i
  %mbmem_len.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 11
  %2 = ptrtoint ptr %mbmem_len.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mbmem_len.i, align 2
  %shl.i = shl i16 %3, 1
  %sub11.i = add i16 %shl.i, -1
  %and.i = and i16 %sub11.i, %spec.select.i
  %tx = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3
  %tail_len = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 13
  %4 = ptrtoint ptr %tail_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tail_len, align 2
  %sub = sub i16 %5, %and.i
  %pulled = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 14
  %6 = ptrtoint ptr %pulled to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pulled, align 4
  %add = add i16 %sub, %7
  store i16 %add, ptr %pulled, align 4
  %sub6 = add i16 %3, -1
  %tail.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tail.i, align 2
  %head.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %head.i, align 4
  %12 = add i16 %add, %11
  %sub12 = sub i16 %9, %12
  %13 = tail call i16 @llvm.umin.i16(i16 %sub12, i16 %sub6)
  %sub19 = add i16 %1, 1
  %add.i = sub i16 %sub19, %and.i
  %add3.i = add i16 %add.i, %13
  %and.i68 = and i16 %add3.i, %sub11.i
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i68, i16 %1)
  %cmp.i69 = icmp ugt i16 %and.i68, %1
  %cond.in.v.i = select i1 %cmp.i69, i16 -1, i16 1
  %cond.in.i = add i16 %cond.in.v.i, %and.i68
  %14 = ptrtoint ptr %tail to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %cond.in.i, ptr %tail, align 8
  %15 = ptrtoint ptr %tail_len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %tail_len, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %9)
  %cmp.i.i = icmp eq i16 %11, %9
  br i1 %cmp.i.i, label %entry.for.end_crit_edge, label %fm10k_fifo_head_len.exit

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

fm10k_fifo_head_len.exit:                         ; preds = %entry
  %size.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %size.i.i, align 4
  %sub.i.i = add i16 %17, -1
  %and.i.i = and i16 %sub.i.i, %11
  %18 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx, align 4
  %conv.i = zext i16 %and.i.i to i32
  %add.ptr.i = getelementptr i32, ptr %19, i32 %conv.i
  %size.i.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 3
  %tx_messages = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 24
  %tx_dwords = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 25
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %len.1103.in.in.in.in114 = load i32, ptr %add.ptr.i, align 4
  %len.1103.in.in.in115 = add i32 %len.1103.in.in.in.in114, 3145728
  %len.1103.in.in116 = lshr i32 %len.1103.in.in.in115, 22
  %len.1103.in117 = trunc i32 %len.1103.in.in116 to i16
  %21 = ptrtoint ptr %pulled to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pulled, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %len.1103.in117)
  %cmp29.not.not119 = icmp ugt i16 %22, %len.1103.in117
  br i1 %cmp29.not.not119, label %fm10k_fifo_head_len.exit.for.body_crit_edge, label %fm10k_fifo_head_len.exit.for.end_crit_edge

fm10k_fifo_head_len.exit.for.end_crit_edge:       ; preds = %fm10k_fifo_head_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

fm10k_fifo_head_len.exit.for.body_crit_edge:      ; preds = %fm10k_fifo_head_len.exit
  br label %for.body

for.body:                                         ; preds = %fm10k_fifo_head_len.exit85.for.body_crit_edge, %fm10k_fifo_head_len.exit.for.body_crit_edge
  %23 = phi i16 [ %45, %fm10k_fifo_head_len.exit85.for.body_crit_edge ], [ %22, %fm10k_fifo_head_len.exit.for.body_crit_edge ]
  %len.1103120.in = phi i16 [ %len.1103.in, %fm10k_fifo_head_len.exit85.for.body_crit_edge ], [ %len.1103.in117, %fm10k_fifo_head_len.exit.for.body_crit_edge ]
  %len.1103120 = add nuw nsw i16 %len.1103120.in, 1
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %9)
  %cmp.i.i.i = icmp eq i16 %25, %9
  br i1 %cmp.i.i.i, label %for.body.fm10k_fifo_head_drop.exit_crit_edge, label %if.end.i.i

for.body.fm10k_fifo_head_drop.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_fifo_head_drop.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %size.i.i.i, align 4
  %sub.i.i.i = add i16 %27, -1
  %and.i.i.i = and i16 %sub.i.i.i, %25
  %28 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx, align 4
  %conv.i.i = zext i16 %and.i.i.i to i32
  %add.ptr.i.i = getelementptr i32, ptr %29, i32 %conv.i.i
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i, align 4
  %add.i.i = add i32 %31, 3145728
  %shr.i.i = lshr i32 %add.i.i, 22
  %32 = trunc i32 %shr.i.i to i16
  %conv5.i.i = add nuw nsw i16 %32, 1
  br label %fm10k_fifo_head_drop.exit

fm10k_fifo_head_drop.exit:                        ; preds = %if.end.i.i, %for.body.fm10k_fifo_head_drop.exit_crit_edge
  %retval.0.i.i = phi i16 [ %conv5.i.i, %if.end.i.i ], [ 0, %for.body.fm10k_fifo_head_drop.exit_crit_edge ]
  %add.i71 = add i16 %retval.0.i.i, %25
  %33 = ptrtoint ptr %head.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %add.i71, ptr %head.i, align 4
  %sub35 = sub i16 %23, %retval.0.i.i
  %34 = ptrtoint ptr %pulled to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %sub35, ptr %pulled, align 4
  %35 = ptrtoint ptr %tx_messages to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tx_messages, align 8
  %inc = add i64 %36, 1
  store i64 %inc, ptr %tx_messages, align 8
  %conv37 = zext i16 %len.1103120 to i64
  %37 = ptrtoint ptr %tx_dwords to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tx_dwords, align 8
  %add38 = add i64 %38, %conv37
  store i64 %add38, ptr %tx_dwords, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i71, i16 %9)
  %cmp.i.i74 = icmp eq i16 %add.i71, %9
  br i1 %cmp.i.i74, label %fm10k_fifo_head_drop.exit.for.end_crit_edge, label %fm10k_fifo_head_len.exit85

fm10k_fifo_head_drop.exit.for.end_crit_edge:      ; preds = %fm10k_fifo_head_drop.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

fm10k_fifo_head_len.exit85:                       ; preds = %fm10k_fifo_head_drop.exit
  %39 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %size.i.i.i, align 4
  %sub.i.i76 = add i16 %40, -1
  %and.i.i77 = and i16 %sub.i.i76, %add.i71
  %41 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx, align 4
  %conv.i78 = zext i16 %and.i.i77 to i32
  %add.ptr.i79 = getelementptr i32, ptr %42, i32 %conv.i78
  %43 = ptrtoint ptr %add.ptr.i79 to i32
  call void @__asan_load4_noabort(i32 %43)
  %len.1103.in.in.in.in = load i32, ptr %add.ptr.i79, align 4
  %len.1103.in.in.in = add i32 %len.1103.in.in.in.in, 3145728
  %len.1103.in.in = lshr i32 %len.1103.in.in.in, 22
  %len.1103.in = trunc i32 %len.1103.in.in to i16
  %44 = ptrtoint ptr %pulled to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %pulled, align 4
  %cmp29.not.not = icmp ugt i16 %45, %len.1103.in
  br i1 %cmp29.not.not, label %fm10k_fifo_head_len.exit85.for.body_crit_edge, label %fm10k_fifo_head_len.exit85.for.end_crit_edge

fm10k_fifo_head_len.exit85.for.end_crit_edge:     ; preds = %fm10k_fifo_head_len.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

fm10k_fifo_head_len.exit85.for.body_crit_edge:    ; preds = %fm10k_fifo_head_len.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %fm10k_fifo_head_len.exit85.for.end_crit_edge, %fm10k_fifo_head_drop.exit.for.end_crit_edge, %fm10k_fifo_head_len.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %mbmem_reg.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 7
  %46 = ptrtoint ptr %mbmem_reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mbmem_reg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i, label %for.end.fm10k_mbx_write_copy.exit_crit_edge, label %if.end.i97

for.end.fm10k_mbx_write_copy.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_write_copy.exit

if.end.i97:                                       ; preds = %for.end
  %48 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tx, align 4
  %50 = xor i16 %13, -1
  %sub3.i.i = add i16 %cond.in.i, %50
  %and.i.i88 = and i16 %sub3.i.i, %sub11.i
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i.i88, i16 %cond.in.i)
  %cmp.i.i89 = icmp ult i16 %and.i.i88, %cond.in.i
  %cond.in.v.i.i = select i1 %cmp.i.i89, i16 1, i16 -1
  %cond.in.i.i = add i16 %cond.in.v.i.i, %and.i.i88
  call void @__sanitizer_cov_trace_cmp2(i16 %cond.in.i.i, i16 %sub6)
  %cmp.i90 = icmp ugt i16 %cond.in.i.i, %sub6
  %inc.i = zext i1 %cmp.i90 to i16
  %spec.select.i91 = add i16 %cond.in.i.i, %inc.i
  %51 = ptrtoint ptr %pulled to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %pulled, align 4
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %head.i, align 4
  %add.i.i93 = add i16 %54, %52
  %size.i.i94 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 3
  %55 = ptrtoint ptr %size.i.i94 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %size.i.i94, align 4
  %sub.i.i95 = add i16 %56, -1
  %and.i77.i = and i16 %sub.i.i95, %add.i.i93
  %conv9.i = zext i16 %and.i77.i to i32
  %add.ptr.i96 = getelementptr i32, ptr %49, i32 %conv9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  %57 = ptrtoint ptr %size.i.i94 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %size.i.i94, align 4
  %sub12.i = sub i16 %58, %and.i77.i
  %tx_mbmem_pulled.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 26
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %if.end.i97
  %head.1.i = phi ptr [ %add.ptr.i96, %if.end.i97 ], [ %head.1.i.be, %do.body.i.backedge ]
  %end.1.i = phi i16 [ %sub12.i, %if.end.i97 ], [ %end.1.i.be, %do.body.i.backedge ]
  %len.1.i = phi i16 [ %13, %if.end.i97 ], [ %dec.i, %do.body.i.backedge ]
  %tail.2.i = phi i16 [ %spec.select.i91, %if.end.i97 ], [ %tail.4.i, %do.body.i.backedge ]
  %and75.i = and i16 %tail.2.i, %sub6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and75.i)
  %tobool18.not.i = icmp eq i16 %and75.i, 0
  %spec.select76.i = select i1 %tobool18.not.i, i16 1, i16 %and75.i
  %59 = ptrtoint ptr %tx_mbmem_pulled.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %tx_mbmem_pulled.i, align 8
  %inc22.i = add i64 %60, 1
  store i64 %inc22.i, ptr %tx_mbmem_pulled.i, align 8
  %61 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %hw, align 8
  %tobool26.not.i = icmp eq ptr %62, null
  br i1 %tobool26.not.i, label %do.body.i.if.end36.i_crit_edge, label %do.body31.i, !prof !11

do.body.i.if.end36.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

do.body31.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %incdec.ptr.i = getelementptr i32, ptr %head.1.i, i32 1
  %63 = ptrtoint ptr %head.1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %head.1.i, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #7
  %inc34.i = add i16 %spec.select76.i, 1
  %conv35.i = zext i16 %spec.select76.i to i32
  %add.i98 = add i32 %47, %conv35.i
  %arrayidx.i = getelementptr i32, ptr %62, i32 %add.i98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 %65) #7, !srcloc !13
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.body31.i, %do.body.i.if.end36.i_crit_edge
  %head.2.i = phi ptr [ %head.1.i, %do.body.i.if.end36.i_crit_edge ], [ %incdec.ptr.i, %do.body31.i ]
  %tail.4.i = phi i16 [ %spec.select76.i, %do.body.i.if.end36.i_crit_edge ], [ %inc34.i, %do.body31.i ]
  %dec.i = add i16 %len.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i)
  %tobool41.not.i = icmp eq i16 %dec.i, 0
  br i1 %tobool41.not.i, label %if.end36.i.fm10k_mbx_write_copy.exit_crit_edge, label %land.rhs.i

if.end36.i.fm10k_mbx_write_copy.exit_crit_edge:   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_write_copy.exit

land.rhs.i:                                       ; preds = %if.end36.i
  %dec42.i = add i16 %end.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec42.i)
  %tobool44.not.i = icmp eq i16 %dec42.i, 0
  br i1 %tobool44.not.i, label %for.inc.i, label %land.rhs.i.do.body.i.backedge_crit_edge

land.rhs.i.do.body.i.backedge_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.backedge

do.body.i.backedge:                               ; preds = %for.inc.i, %land.rhs.i.do.body.i.backedge_crit_edge
  %head.1.i.be = phi ptr [ %head.2.i, %land.rhs.i.do.body.i.backedge_crit_edge ], [ %67, %for.inc.i ]
  %end.1.i.be = phi i16 [ %dec42.i, %land.rhs.i.do.body.i.backedge_crit_edge ], [ 0, %for.inc.i ]
  br label %do.body.i

for.inc.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tx, align 4
  br label %do.body.i.backedge

fm10k_mbx_write_copy.exit:                        ; preds = %if.end36.i.fm10k_mbx_write_copy.exit_crit_edge, %for.end.fm10k_mbx_write_copy.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @fm10k_fifo_crc(ptr nocapture noundef readonly %fifo, i16 noundef zeroext %offset, i16 noundef zeroext %len, i16 noundef zeroext %seed) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo, align 4
  %conv = zext i16 %offset to i32
  %add.ptr = getelementptr i32, ptr %1, i32 %conv
  %size = getelementptr inbounds %struct.fm10k_mbx_fifo, ptr %fifo, i32 0, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size, align 4
  %sub = sub i16 %3, %offset
  call void @__sanitizer_cov_trace_cmp2(i16 %sub, i16 %len)
  %cmp = icmp ult i16 %sub, %len
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %mul = shl i16 %sub, 1
  %conv.i = zext i16 %seed to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mul)
  %tobool.not31.i = icmp eq i16 %mul, 0
  br i1 %tobool.not31.i, label %if.then.fm10k_crc_16b.exit_crit_edge, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  br label %if.end.i

if.then.fm10k_crc_16b.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_crc_16b.exit

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %result.034.i = phi i32 [ %xor19.i, %if.end.i.if.end.i_crit_edge ], [ %conv.i, %if.then.if.end.i_crit_edge ]
  %len.addr.033.i = phi i16 [ %dec8.i, %if.end.i.if.end.i_crit_edge ], [ %mul, %if.then.if.end.i_crit_edge ]
  %data.addr.032.i = phi ptr [ %incdec.ptr.i, %if.end.i.if.end.i_crit_edge ], [ %add.ptr, %if.then.if.end.i_crit_edge ]
  %4 = ptrtoint ptr %data.addr.032.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data.addr.032.i, align 4
  %xor.i = xor i32 %5, %result.034.i
  %shr.i = lshr i32 %xor.i, 8
  %and.i = and i32 %xor.i, 255
  %arrayidx.i = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %conv1.i = zext i16 %7 to i32
  %xor2.i = xor i32 %shr.i, %conv1.i
  %shr3.i = lshr i32 %xor2.i, 8
  %and4.i = and i32 %xor2.i, 255
  %arrayidx5.i = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and4.i
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx5.i, align 2
  %conv6.i = zext i16 %9 to i32
  %xor7.i = xor i32 %shr3.i, %conv6.i
  %dec8.i = add i16 %len.addr.033.i, -2
  %incdec.ptr.i = getelementptr i32, ptr %data.addr.032.i, i32 1
  %shr10.i = lshr i32 %xor7.i, 8
  %and11.i = and i32 %xor7.i, 255
  %arrayidx12.i = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and11.i
  %10 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx12.i, align 2
  %conv13.i = zext i16 %11 to i32
  %xor14.i = xor i32 %shr10.i, %conv13.i
  %shr15.i = lshr i32 %xor14.i, 8
  %and16.i = and i32 %xor14.i, 255
  %arrayidx17.i = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and16.i
  %12 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx17.i, align 2
  %conv18.i = zext i16 %13 to i32
  %xor19.i = xor i32 %shr15.i, %conv18.i
  %tobool.not.i = icmp eq i16 %dec8.i, 0
  br i1 %tobool.not.i, label %if.end.i.fm10k_crc_16b.exit_crit_edge, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.fm10k_crc_16b.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_crc_16b.exit

fm10k_crc_16b.exit:                               ; preds = %if.end.i.fm10k_crc_16b.exit_crit_edge, %if.then.fm10k_crc_16b.exit_crit_edge
  %result.1.i = phi i32 [ %conv.i, %if.then.fm10k_crc_16b.exit_crit_edge ], [ %xor19.i, %if.end.i.fm10k_crc_16b.exit_crit_edge ]
  %conv20.i = trunc i32 %result.1.i to i16
  %sub12 = sub i16 %len, %sub
  br label %if.end

if.end:                                           ; preds = %fm10k_crc_16b.exit, %entry.if.end_crit_edge
  %len.addr.0 = phi i16 [ %sub12, %fm10k_crc_16b.exit ], [ %len, %entry.if.end_crit_edge ]
  %seed.addr.0 = phi i16 [ %conv20.i, %fm10k_crc_16b.exit ], [ %seed, %entry.if.end_crit_edge ]
  %data.0 = phi ptr [ %1, %fm10k_crc_16b.exit ], [ %add.ptr, %entry.if.end_crit_edge ]
  %mul15 = shl i16 %len.addr.0, 1
  %conv.i28 = zext i16 %seed.addr.0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %mul15)
  %tobool.not31.i29 = icmp eq i16 %mul15, 0
  br i1 %tobool.not31.i29, label %if.end.fm10k_crc_16b.exit62_crit_edge, label %if.end.if.end.i59_crit_edge

if.end.if.end.i59_crit_edge:                      ; preds = %if.end
  br label %if.end.i59

if.end.fm10k_crc_16b.exit62_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_crc_16b.exit62

if.end.i59:                                       ; preds = %if.end.i59.if.end.i59_crit_edge, %if.end.if.end.i59_crit_edge
  %result.034.i30 = phi i32 [ %xor19.i57, %if.end.i59.if.end.i59_crit_edge ], [ %conv.i28, %if.end.if.end.i59_crit_edge ]
  %len.addr.033.i31 = phi i16 [ %dec8.i46, %if.end.i59.if.end.i59_crit_edge ], [ %mul15, %if.end.if.end.i59_crit_edge ]
  %data.addr.032.i32 = phi ptr [ %incdec.ptr.i47, %if.end.i59.if.end.i59_crit_edge ], [ %data.0, %if.end.if.end.i59_crit_edge ]
  %14 = ptrtoint ptr %data.addr.032.i32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data.addr.032.i32, align 4
  %xor.i33 = xor i32 %15, %result.034.i30
  %shr.i34 = lshr i32 %xor.i33, 8
  %and.i35 = and i32 %xor.i33, 255
  %arrayidx.i36 = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and.i35
  %16 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i36, align 2
  %conv1.i37 = zext i16 %17 to i32
  %xor2.i38 = xor i32 %shr.i34, %conv1.i37
  %shr3.i39 = lshr i32 %xor2.i38, 8
  %and4.i40 = and i32 %xor2.i38, 255
  %arrayidx5.i41 = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and4.i40
  %18 = ptrtoint ptr %arrayidx5.i41 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx5.i41, align 2
  %conv6.i42 = zext i16 %19 to i32
  %xor7.i43 = xor i32 %shr3.i39, %conv6.i42
  %dec8.i46 = add i16 %len.addr.033.i31, -2
  %incdec.ptr.i47 = getelementptr i32, ptr %data.addr.032.i32, i32 1
  %shr10.i48 = lshr i32 %xor7.i43, 8
  %and11.i49 = and i32 %xor7.i43, 255
  %arrayidx12.i50 = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and11.i49
  %20 = ptrtoint ptr %arrayidx12.i50 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx12.i50, align 2
  %conv13.i51 = zext i16 %21 to i32
  %xor14.i52 = xor i32 %shr10.i48, %conv13.i51
  %shr15.i53 = lshr i32 %xor14.i52, 8
  %and16.i54 = and i32 %xor14.i52, 255
  %arrayidx17.i55 = getelementptr [256 x i16], ptr @fm10k_crc_16b_table, i32 0, i32 %and16.i54
  %22 = ptrtoint ptr %arrayidx17.i55 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx17.i55, align 2
  %conv18.i56 = zext i16 %23 to i32
  %xor19.i57 = xor i32 %shr15.i53, %conv18.i56
  %tobool.not.i58 = icmp eq i16 %dec8.i46, 0
  br i1 %tobool.not.i58, label %if.end.i59.fm10k_crc_16b.exit62_crit_edge, label %if.end.i59.if.end.i59_crit_edge

if.end.i59.if.end.i59_crit_edge:                  ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i59

if.end.i59.fm10k_crc_16b.exit62_crit_edge:        ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_crc_16b.exit62

fm10k_crc_16b.exit62:                             ; preds = %if.end.i59.fm10k_crc_16b.exit62_crit_edge, %if.end.fm10k_crc_16b.exit62_crit_edge
  %result.1.i60 = phi i32 [ %conv.i28, %if.end.fm10k_crc_16b.exit62_crit_edge ], [ %xor19.i57, %if.end.i59.fm10k_crc_16b.exit62_crit_edge ]
  %conv20.i61 = trunc i32 %result.1.i60 to i16
  ret i16 %conv20.i61
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fm10k_mbx_push_tail(ptr noundef %hw, ptr noundef %mbx, i16 noundef zeroext %tail) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2
  %head = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %head, align 2
  %sub.i = sub i16 %tail, %1
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %tail)
  %cmp.i = icmp ugt i16 %1, %tail
  %sub7.i = add i16 %sub.i, -2
  %spec.select.i = select i1 %cmp.i, i16 %sub7.i, i16 %sub.i
  %mbmem_len.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 11
  %2 = ptrtoint ptr %mbmem_len.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mbmem_len.i, align 2
  %shl.i = shl i16 %3, 1
  %sub11.i = add i16 %shl.i, -1
  %and.i = and i16 %sub11.i, %spec.select.i
  %size.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %size.i, align 4
  %head.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %head.i, align 4
  %tail.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tail.i, align 2
  %pushed = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 17
  %10 = ptrtoint ptr %pushed to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pushed, align 2
  %.neg124 = add i16 %7, %5
  %12 = add i16 %9, %11
  %sub = sub i16 %.neg124, %12
  %13 = tail call i16 @llvm.umin.i16(i16 %sub, i16 %and.i)
  %add.i70 = add i16 %1, 1
  %add3.i = add i16 %add.i70, %13
  %and.i74 = and i16 %add3.i, %sub11.i
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i74, i16 %1)
  %cmp.i75 = icmp ugt i16 %and.i74, %1
  %cond.in.v.i = select i1 %cmp.i75, i16 -1, i16 1
  %cond.in.i = add i16 %cond.in.v.i, %and.i74
  %14 = ptrtoint ptr %head to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %cond.in.i, ptr %head, align 2
  %head_len = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 16
  %15 = ptrtoint ptr %head_len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %13, ptr %head_len, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body.preheader.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.preheader.lr.ph.i:                        ; preds = %entry
  %mbmem_reg.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 7
  %16 = ptrtoint ptr %mbmem_reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mbmem_reg.i, align 8
  %conv.i = zext i16 %3 to i32
  %xor.i = xor i32 %17, %conv.i
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %size.i, align 4
  %sub.i.i = add i16 %19, -1
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tail.i, align 2
  %add.i.i = add i16 %21, %11
  %and.i54.i = and i16 %add.i.i, %sub.i.i
  %sub.i77 = sub i16 %19, %and.i54.i
  %22 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx, align 4
  %conv6.i = zext i16 %and.i54.i to i32
  %add.ptr.i = getelementptr i32, ptr %23, i32 %conv6.i
  %24 = xor i16 %13, -1
  %sub3.i.i = add i16 %cond.in.i, %24
  %and.i.i = and i16 %sub3.i.i, %sub11.i
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i.i, i16 %cond.in.i)
  %cmp.i.i = icmp ult i16 %and.i.i, %cond.in.i
  %cond.in.v.i.i = select i1 %cmp.i.i, i16 1, i16 -1
  %cond.in.i.i = add i16 %cond.in.v.i.i, %and.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %cond.in.i.i, i16 %3)
  %cmp.not.i = icmp uge i16 %cond.in.i.i, %3
  %inc.i = zext i1 %cmp.not.i to i16
  %spec.select.i78 = add i16 %cond.in.i.i, %inc.i
  %rx_mbmem_pushed.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 29
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %do.body.preheader.lr.ph.i
  %tail.1.i = phi ptr [ %add.ptr.i, %do.body.preheader.lr.ph.i ], [ %tail.1.i.be, %do.body.i.backedge ]
  %end.1.i = phi i16 [ %sub.i77, %do.body.preheader.lr.ph.i ], [ %end.1.i.be, %do.body.i.backedge ]
  %len.1.i = phi i16 [ %13, %do.body.preheader.lr.ph.i ], [ %dec.i, %do.body.i.backedge ]
  %head.2.i = phi i16 [ %spec.select.i78, %do.body.preheader.lr.ph.i ], [ %inc20.i, %do.body.i.backedge ]
  %25 = ptrtoint ptr %mbmem_len.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mbmem_len.i, align 2
  %sub12.i = add i16 %26, -1
  %and.i79 = and i16 %sub12.i, %head.2.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.i79)
  %tobool15.not.i = icmp eq i16 %and.i79, 0
  %spec.select53.i = select i1 %tobool15.not.i, i16 1, i16 %and.i79
  %27 = ptrtoint ptr %rx_mbmem_pushed.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rx_mbmem_pushed.i, align 8
  %inc19.i = add i64 %28, 1
  store i64 %inc19.i, ptr %rx_mbmem_pushed.i, align 8
  %conv21.i = zext i16 %spec.select53.i to i32
  %add.i80 = add i32 %xor.i, %conv21.i
  %call22.i = tail call i32 @fm10k_read_reg(ptr noundef %hw, i32 noundef %add.i80) #7
  %29 = ptrtoint ptr %tail.1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call22.i, ptr %tail.1.i, align 4
  %dec.i = add i16 %len.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i)
  %tobool24.not.i = icmp eq i16 %dec.i, 0
  br i1 %tobool24.not.i, label %fm10k_mbx_read_copy.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %do.body.i
  %inc20.i = add i16 %spec.select53.i, 1
  %incdec.ptr.i = getelementptr i32, ptr %tail.1.i, i32 1
  %dec25.i = add i16 %end.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec25.i)
  %tobool27.not.i = icmp eq i16 %dec25.i, 0
  br i1 %tobool27.not.i, label %for.inc.i, label %land.rhs.i.do.body.i.backedge_crit_edge

land.rhs.i.do.body.i.backedge_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.backedge

do.body.i.backedge:                               ; preds = %for.inc.i, %land.rhs.i.do.body.i.backedge_crit_edge
  %tail.1.i.be = phi ptr [ %incdec.ptr.i, %land.rhs.i.do.body.i.backedge_crit_edge ], [ %31, %for.inc.i ]
  %end.1.i.be = phi i16 [ %dec25.i, %land.rhs.i.do.body.i.backedge_crit_edge ], [ 0, %for.inc.i ]
  br label %do.body.i

for.inc.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx, align 4
  br label %do.body.i.backedge

fm10k_mbx_read_copy.exit:                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %pushed to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pushed, align 2
  %add.i83 = add i16 %33, %13
  %34 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx, align 4
  %36 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %tail.i, align 2
  %38 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %size.i, align 4
  %sub.i.i86 = add i16 %39, -1
  br label %do.body.i91

do.body.i91:                                      ; preds = %do.body.i91.do.body.i91_crit_edge, %fm10k_mbx_read_copy.exit
  %total_len.0.i = phi i16 [ 0, %fm10k_mbx_read_copy.exit ], [ %conv12.i, %do.body.i91.do.body.i91_crit_edge ]
  %add.i.i87 = add i16 %total_len.0.i, %37
  %and.i.i88 = and i16 %add.i.i87, %sub.i.i86
  %conv3.i = zext i16 %and.i.i88 to i32
  %add.ptr.i89 = getelementptr i32, ptr %35, i32 %conv3.i
  %40 = ptrtoint ptr %add.ptr.i89 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i89, align 4
  %add4.i = add i32 %41, 3145728
  %shr.i = lshr i32 %add4.i, 22
  %42 = trunc i32 %shr.i to i16
  %43 = add nuw i16 %total_len.0.i, 1
  %conv12.i = add i16 %43, %42
  %cmp.i90 = icmp ugt i16 %add.i83, %conv12.i
  br i1 %cmp.i90, label %do.body.i91.do.body.i91_crit_edge, label %do.end.i

do.body.i91.do.body.i91_crit_edge:                ; preds = %do.body.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i91

do.end.i:                                         ; preds = %do.body.i91
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i83, i16 %conv12.i)
  %cmp18.i = icmp ult i16 %add.i83, %conv12.i
  br i1 %cmp18.i, label %land.lhs.true.i, label %cond.false.i

land.lhs.true.i:                                  ; preds = %do.end.i
  %max_size.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 10
  %44 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %max_size.i, align 4
  %conv21.i92 = zext i16 %45 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv21.i92)
  %cmp22.not.not.i = icmp ult i32 %shr.i, %conv21.i92
  br i1 %cmp22.not.not.i, label %land.lhs.true.i.if.end14_crit_edge, label %land.lhs.true.i.fm10k_mbx_validate_msg_size.exit_crit_edge

land.lhs.true.i.fm10k_mbx_validate_msg_size.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_mbx_validate_msg_size.exit

land.lhs.true.i.if.end14_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

cond.false.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i94 = sub i16 %add.i83, %conv12.i
  br label %fm10k_mbx_validate_msg_size.exit

fm10k_mbx_validate_msg_size.exit:                 ; preds = %cond.false.i, %land.lhs.true.i.fm10k_mbx_validate_msg_size.exit_crit_edge
  %retval.0.i = phi i16 [ %sub.i94, %cond.false.i ], [ %add.i83, %land.lhs.true.i.fm10k_mbx_validate_msg_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i)
  %tobool12.not = icmp eq i16 %retval.0.i, 0
  br i1 %tobool12.not, label %fm10k_mbx_validate_msg_size.exit.if.end14_crit_edge, label %fm10k_mbx_validate_msg_size.exit.cleanup_crit_edge

fm10k_mbx_validate_msg_size.exit.cleanup_crit_edge: ; preds = %fm10k_mbx_validate_msg_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fm10k_mbx_validate_msg_size.exit.if.end14_crit_edge: ; preds = %fm10k_mbx_validate_msg_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.end14:                                         ; preds = %fm10k_mbx_validate_msg_size.exit.if.end14_crit_edge, %land.lhs.true.i.if.end14_crit_edge
  %46 = ptrtoint ptr %pushed to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %add.i83, ptr %pushed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i83)
  %tobool.not.i = icmp eq i16 %add.i83, 0
  br i1 %tobool.not.i, label %if.end14.cleanup_crit_edge, label %fm10k_mbx_pushed_tail_len.exit

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fm10k_mbx_pushed_tail_len.exit:                   ; preds = %if.end14
  %and.i.i99 = and i16 %sub.i.i86, %37
  %rx_messages = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 27
  %rx_dwords = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 28
  %conv.i101.pn135 = zext i16 %and.i.i99 to i32
  %len.1127.in.in.in.in.in136 = getelementptr i32, ptr %35, i32 %conv.i101.pn135
  %47 = ptrtoint ptr %len.1127.in.in.in.in.in136 to i32
  call void @__asan_load4_noabort(i32 %47)
  %len.1127.in.in.in.in137 = load i32, ptr %len.1127.in.in.in.in.in136, align 4
  %len.1127.in.in.in138 = add i32 %len.1127.in.in.in.in137, 3145728
  %len.1127.in.in139 = lshr i32 %len.1127.in.in.in138, 22
  %len.1127.in140 = trunc i32 %len.1127.in.in139 to i16
  %48 = ptrtoint ptr %pushed to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %pushed, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %len.1127.in140)
  %cmp25.not.not141 = icmp ugt i16 %49, %len.1127.in140
  br i1 %cmp25.not.not141, label %fm10k_mbx_pushed_tail_len.exit.for.body_crit_edge, label %fm10k_mbx_pushed_tail_len.exit.cleanup_crit_edge

fm10k_mbx_pushed_tail_len.exit.cleanup_crit_edge: ; preds = %fm10k_mbx_pushed_tail_len.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fm10k_mbx_pushed_tail_len.exit.for.body_crit_edge: ; preds = %fm10k_mbx_pushed_tail_len.exit
  br label %for.body

land.rhs:                                         ; preds = %for.body
  %and.i.i111 = and i16 %add30, %sub.i.i86
  %conv.i101.pn = zext i16 %and.i.i111 to i32
  %len.1127.in.in.in.in.in = getelementptr i32, ptr %35, i32 %conv.i101.pn
  %50 = ptrtoint ptr %len.1127.in.in.in.in.in to i32
  call void @__asan_load4_noabort(i32 %50)
  %len.1127.in.in.in.in = load i32, ptr %len.1127.in.in.in.in.in, align 4
  %len.1127.in.in.in = add i32 %len.1127.in.in.in.in, 3145728
  %len.1127.in.in = lshr i32 %len.1127.in.in.in, 22
  %len.1127.in = trunc i32 %len.1127.in.in to i16
  %51 = ptrtoint ptr %pushed to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %pushed, align 2
  %cmp25.not.not = icmp ugt i16 %52, %len.1127.in
  br i1 %cmp25.not.not, label %land.rhs.for.body_crit_edge, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %fm10k_mbx_pushed_tail_len.exit.for.body_crit_edge
  %53 = phi i16 [ %52, %land.rhs.for.body_crit_edge ], [ %49, %fm10k_mbx_pushed_tail_len.exit.for.body_crit_edge ]
  %len.1127.in142 = phi i16 [ %len.1127.in, %land.rhs.for.body_crit_edge ], [ %len.1127.in140, %fm10k_mbx_pushed_tail_len.exit.for.body_crit_edge ]
  %len.1127 = add nuw nsw i16 %len.1127.in142, 1
  %54 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tail.i, align 2
  %add30 = add i16 %55, %len.1127
  store i16 %add30, ptr %tail.i, align 2
  %sub35 = sub i16 %53, %len.1127
  %56 = ptrtoint ptr %pushed to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %sub35, ptr %pushed, align 2
  %57 = ptrtoint ptr %rx_messages to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %rx_messages, align 8
  %inc = add i64 %58, 1
  store i64 %inc, ptr %rx_messages, align 8
  %conv37 = zext i16 %len.1127 to i64
  %59 = ptrtoint ptr %rx_dwords to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %rx_dwords, align 8
  %add38 = add i64 %60, %conv37
  store i64 %add38, ptr %rx_dwords, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %len.1127)
  %tobool.not.i107 = icmp eq i16 %53, %len.1127
  br i1 %tobool.not.i107, label %for.body.cleanup_crit_edge, label %land.rhs

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %fm10k_mbx_pushed_tail_len.exit.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %fm10k_mbx_validate_msg_size.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -501, %fm10k_mbx_validate_msg_size.exit.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %fm10k_mbx_pushed_tail_len.exit.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fm10k_tlv_msg_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fm10k_sm_mbx_create_reply(ptr noundef %hw, ptr noundef %mbx, i16 noundef zeroext %head) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 20
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge40
    i32 1, label %entry.sw.bb3_crit_edge
    i32 0, label %entry.sw.bb3_crit_edge41
  ]

entry.sw.bb3_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

entry.sw.bb_crit_edge40:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge40
  %tx.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3
  %mbmem_len1.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 11
  %3 = ptrtoint ptr %mbmem_len1.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mbmem_len1.i, align 2
  %sub.i = add i16 %4, -1
  %tail.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %5 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tail.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %head)
  %cmp.i = icmp ult i16 %6, %head
  %add.i = select i1 %cmp.i, i16 %sub.i, i16 0
  %spec.select.i = add i16 %add.i, %head
  tail call fastcc void @fm10k_mbx_pull_head(ptr noundef %hw, ptr noundef %mbx, i16 noundef zeroext %spec.select.i) #7
  %7 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx.i, align 4
  %head.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %head.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %size.i.i, align 4
  %sub.i.i = add i16 %12, -1
  %tail_len18.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 13
  %13 = ptrtoint ptr %tail_len18.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tail_len18.i, align 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %sw.bb
  %len.0.i = phi i16 [ 0, %sw.bb ], [ %conv16.i, %do.body.i.do.body.i_crit_edge ]
  %add.i.i = add i16 %len.0.i, %10
  %and.i.i = and i16 %add.i.i, %sub.i.i
  %conv9.i = zext i16 %and.i.i to i32
  %add.ptr.i = getelementptr i32, ptr %8, i32 %conv9.i
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %add10.i = add i32 %16, 3145728
  %shr.i = lshr i32 %add10.i, 22
  %17 = trunc i32 %shr.i to i16
  %18 = add nuw i16 %len.0.i, 1
  %conv16.i = add i16 %18, %17
  call void @__sanitizer_cov_trace_cmp2(i16 %conv16.i, i16 %14)
  %cmp20.not.i = icmp ule i16 %conv16.i, %14
  call void @__sanitizer_cov_trace_cmp2(i16 %conv16.i, i16 %sub.i)
  %cmp24.i = icmp ult i16 %conv16.i, %sub.i
  %or.cond.i = select i1 %cmp20.not.i, i1 %cmp24.i, i1 false
  br i1 %or.cond.i, label %do.body.i.do.body.i_crit_edge, label %do.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %len.0.i)
  %cmp29.i = icmp ugt i16 %14, %len.0.i
  br i1 %cmp29.i, label %if.then31.i, label %do.end.i.if.end40.i_crit_edge

do.end.i.if.end40.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

if.then31.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tail.i, align 8
  %21 = xor i16 %14, -1
  %22 = add i16 %len.0.i, %21
  %sub3.i.i = add i16 %22, %20
  %23 = ptrtoint ptr %mbmem_len1.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mbmem_len1.i, align 2
  %shl.i.i = shl i16 %24, 1
  %sub5.i.i = add i16 %shl.i.i, -1
  %and.i76.i = and i16 %sub5.i.i, %sub3.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i76.i, i16 %20)
  %cmp.i.i = icmp ult i16 %and.i76.i, %20
  %cond.in.v.i.i = select i1 %cmp.i.i, i16 1, i16 -1
  %cond.in.i.i = add i16 %cond.in.v.i.i, %and.i76.i
  %25 = ptrtoint ptr %tail.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %cond.in.i.i, ptr %tail.i, align 8
  %26 = ptrtoint ptr %tail_len18.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %len.0.i, ptr %tail_len18.i, align 2
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then31.i, %do.end.i.if.end40.i_crit_edge
  %27 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tail.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %sub.i)
  %cmp44.i = icmp ugt i16 %28, %sub.i
  br i1 %cmp44.i, label %if.then46.i, label %if.end40.i.fm10k_sm_mbx_transmit.exit_crit_edge

if.end40.i.fm10k_sm_mbx_transmit.exit_crit_edge:  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_sm_mbx_transmit.exit

if.then46.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub50.i = sub i16 %28, %sub.i
  %29 = ptrtoint ptr %tail.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %sub50.i, ptr %tail.i, align 8
  br label %fm10k_sm_mbx_transmit.exit

fm10k_sm_mbx_transmit.exit:                       ; preds = %if.then46.i, %if.end40.i.fm10k_sm_mbx_transmit.exit_crit_edge
  %30 = ptrtoint ptr %tail_len18.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tail_len18.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not = icmp eq i16 %31, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.then.i

lor.lhs.false:                                    ; preds = %fm10k_sm_mbx_transmit.exit
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp = icmp eq i32 %33, 2
  br i1 %cmp, label %lor.lhs.false.fm10k_sm_mbx_create_data_hdr.exit_crit_edge, label %if.else

lor.lhs.false.fm10k_sm_mbx_create_data_hdr.exit_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_sm_mbx_create_data_hdr.exit

if.then.i:                                        ; preds = %fm10k_sm_mbx_transmit.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mbx_lock.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %34 = ptrtoint ptr %mbx_lock.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mbx_lock.i, align 4
  %or.i = or i32 %35, 2
  store i32 %or.i, ptr %mbx_lock.i, align 4
  br label %fm10k_sm_mbx_create_data_hdr.exit

fm10k_sm_mbx_create_data_hdr.exit:                ; preds = %if.then.i, %lor.lhs.false.fm10k_sm_mbx_create_data_hdr.exit_crit_edge
  %36 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %tail.i, align 8
  %38 = and i16 %37, 4095
  %remote.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %39 = ptrtoint ptr %remote.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %remote.i, align 2
  %41 = shl i16 %40, 12
  %or414.i = or i16 %41, %38
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %lor.lhs.false
  %remote = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %42 = ptrtoint ptr %remote to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %remote, align 2
  %local.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %43 = ptrtoint ptr %local.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %local.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool.not.i12 = icmp eq i16 %44, 0
  br i1 %tobool.not.i12, label %if.else.fm10k_sm_mbx_create_connect_hdr.exit_crit_edge, label %if.then.i15

if.else.fm10k_sm_mbx_create_connect_hdr.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_sm_mbx_create_connect_hdr.exit

if.then.i15:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %mbx_lock.i13 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %45 = ptrtoint ptr %mbx_lock.i13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mbx_lock.i13, align 4
  %or.i14 = or i32 %46, 2
  store i32 %or.i14, ptr %mbx_lock.i13, align 4
  br label %fm10k_sm_mbx_create_connect_hdr.exit

fm10k_sm_mbx_create_connect_hdr.exit:             ; preds = %if.then.i15, %if.else.fm10k_sm_mbx_create_connect_hdr.exit_crit_edge
  %47 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %tail.i, align 8
  %49 = and i16 %48, 4095
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge41
  %local.i24 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 18
  %50 = ptrtoint ptr %local.i24 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %local.i24, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.not.i25 = icmp eq i16 %51, 0
  br i1 %tobool.not.i25, label %sw.bb3.fm10k_sm_mbx_create_connect_hdr.exit38_crit_edge, label %if.then.i28

sw.bb3.fm10k_sm_mbx_create_connect_hdr.exit38_crit_edge: ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %fm10k_sm_mbx_create_connect_hdr.exit38

if.then.i28:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %mbx_lock.i26 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 8
  %52 = ptrtoint ptr %mbx_lock.i26 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mbx_lock.i26, align 4
  %or.i27 = or i32 %53, 2
  store i32 %or.i27, ptr %mbx_lock.i26, align 4
  br label %fm10k_sm_mbx_create_connect_hdr.exit38

fm10k_sm_mbx_create_connect_hdr.exit38:           ; preds = %if.then.i28, %sw.bb3.fm10k_sm_mbx_create_connect_hdr.exit38_crit_edge
  %tail.i29 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 12
  %54 = ptrtoint ptr %tail.i29 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tail.i29, align 8
  %56 = and i16 %55, 4095
  %remote.i30 = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 19
  %57 = ptrtoint ptr %remote.i30 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %remote.i30, align 2
  %59 = shl i16 %58, 12
  %or418.i31 = or i16 %59, %56
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %fm10k_sm_mbx_create_connect_hdr.exit38, %fm10k_sm_mbx_create_connect_hdr.exit, %fm10k_sm_mbx_create_data_hdr.exit
  %or414.i.sink = phi i16 [ %or414.i, %fm10k_sm_mbx_create_data_hdr.exit ], [ %49, %fm10k_sm_mbx_create_connect_hdr.exit ], [ %or418.i31, %fm10k_sm_mbx_create_connect_hdr.exit38 ]
  %or4.i = zext i16 %or414.i.sink to i32
  %head.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 15
  %60 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %head.i, align 2
  %62 = and i16 %61, 4095
  %and6.i = zext i16 %62 to i32
  %shl7.i = shl nuw nsw i32 %and6.i, 16
  %or8.i = or i32 %shl7.i, %or4.i
  %mbx_hdr.i = getelementptr inbounds %struct.fm10k_mbx_info, ptr %mbx, i32 0, i32 9
  %63 = ptrtoint ptr %mbx_hdr.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or8.i, ptr %mbx_hdr.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @fm10k_crc_16b_table, !1, !"fm10k_crc_16b_table", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/intel/fm10k/fm10k_mbx.c", i32 515, i32 18}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2156144870}
!13 = !{i64 6131371}
!14 = !{i64 2156122912}
!15 = !{i64 2156126508}
!16 = !{i64 2156137017}
!17 = !{i64 2156141181}
!18 = !{i64 2156106949}
!19 = !{i64 2156115231}
!20 = !{i64 2156150527}
!21 = !{i64 2156154691}
!22 = !{i64 2156107299}
!23 = !{i64 2156110675}
!24 = !{i64 2156111039}
