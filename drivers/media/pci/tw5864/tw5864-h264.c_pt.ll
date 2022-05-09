; ModuleID = '/llk/IR_all_yes/drivers/media/pci/tw5864/tw5864-h264.c_pt.bc'
source_filename = "../drivers/media/pci/tw5864/tw5864-h264.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tw5864_h264_put_stream_header(ptr nocapture noundef %buf, ptr nocapture noundef %space_left, i32 noundef %qp, i32 noundef %width, i32 noundef %height) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 1, ptr %1, align 1
  %3 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  store ptr %add.ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %space_left to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %space_left, align 4
  %sub = add i32 %5, -4
  store i32 %sub, ptr %space_left, align 4
  %6 = load ptr, ptr %buf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 103, ptr %6, align 1
  %8 = load ptr, ptr %buf, align 4
  %add.ptr1 = getelementptr i8, ptr %8, i32 1
  store ptr %add.ptr1, ptr %buf, align 4
  %9 = load i32, ptr %space_left, align 4
  %sub2 = add i32 %9, -1
  store i32 %sub2, ptr %space_left, align 4
  %10 = load ptr, ptr %buf, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %sub2
  %add.ptr.i25.i = getelementptr i8, ptr %add.ptr.i.i, i32 -4
  %cmp.not.i.i = icmp ugt ptr %add.ptr.i25.i, %10
  br i1 %cmp.not.i.i, label %if.end13.i.i, label %entry.bs_write.exit.i_crit_edge

entry.bs_write.exit.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit.i

if.end13.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 66, ptr %10, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %10, i32 1
  br label %bs_write.exit.i

bs_write.exit.i:                                  ; preds = %if.end13.i.i, %entry.bs_write.exit.i_crit_edge
  %bs.sroa.29.1.i = phi ptr [ %10, %entry.bs_write.exit.i_crit_edge ], [ %incdec.ptr.i.i, %if.end13.i.i ]
  %cmp.not.i30.i = icmp ult ptr %bs.sroa.29.1.i, %add.ptr.i25.i
  br i1 %cmp.not.i30.i, label %if.end13.i153.i, label %bs_write.exit.i.bs_write.exit154.i_crit_edge

bs_write.exit.i.bs_write.exit154.i_crit_edge:     ; preds = %bs_write.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit154.i

if.end13.i153.i:                                  ; preds = %bs_write.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  %12 = ptrtoint ptr %bs.sroa.29.1.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -64, ptr %bs.sroa.29.1.i, align 1
  %incdec.ptr.i151.i = getelementptr i8, ptr %bs.sroa.29.1.i, i32 1
  br label %bs_write.exit154.i

bs_write.exit154.i:                               ; preds = %if.end13.i153.i, %bs_write.exit.i.bs_write.exit154.i_crit_edge
  %bs.sroa.29.9.i = phi ptr [ %bs.sroa.29.1.i, %bs_write.exit.i.bs_write.exit154.i_crit_edge ], [ %incdec.ptr.i151.i, %if.end13.i153.i ]
  %cmp.not.i158.i = icmp ult ptr %bs.sroa.29.9.i, %add.ptr.i25.i
  br i1 %cmp.not.i158.i, label %bs_write.exit186.i.loopexit, label %bs_write.exit154.i.bs_write.exit186.i_crit_edge

bs_write.exit154.i.bs_write.exit186.i_crit_edge:  ; preds = %bs_write.exit154.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit186.i

bs_write.exit186.i.loopexit:                      ; preds = %bs_write.exit154.i
  call void @__sanitizer_cov_trace_pc() #4
  %13 = ptrtoint ptr %bs.sroa.29.9.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 30, ptr %bs.sroa.29.9.i, align 1
  %incdec.ptr.i183.i = getelementptr i8, ptr %bs.sroa.29.9.i, i32 1
  br label %bs_write.exit186.i

bs_write.exit186.i:                               ; preds = %bs_write.exit186.i.loopexit, %bs_write.exit154.i.bs_write.exit186.i_crit_edge
  %bs.sroa.29.11.i = phi ptr [ %bs.sroa.29.9.i, %bs_write.exit154.i.bs_write.exit186.i_crit_edge ], [ %incdec.ptr.i183.i, %bs_write.exit186.i.loopexit ]
  %cmp.i.i.i = icmp ult ptr %bs.sroa.29.11.i, %add.ptr.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %bs_write.exit186.i.bs_write_ue.exit.i_crit_edge

bs_write.exit186.i.bs_write_ue.exit.i_crit_edge:  ; preds = %bs_write.exit186.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit.i

if.then.i.i.i:                                    ; preds = %bs_write.exit186.i
  call void @__sanitizer_cov_trace_pc() #4
  %14 = ptrtoint ptr %bs.sroa.29.11.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bs.sroa.29.11.i, align 1
  %shl.i.i.i = shl i8 %15, 1
  %conv5.i.i.i = or i8 %shl.i.i.i, 1
  store i8 %conv5.i.i.i, ptr %bs.sroa.29.11.i, align 1
  br label %bs_write_ue.exit.i

bs_write_ue.exit.i:                               ; preds = %if.then.i.i.i, %bs_write.exit186.i.bs_write_ue.exit.i_crit_edge
  %bs.sroa.137.12.i = phi i32 [ 8, %bs_write.exit186.i.bs_write_ue.exit.i_crit_edge ], [ 7, %if.then.i.i.i ]
  %cmp.not.i.i.i = icmp ult ptr %bs.sroa.29.11.i, %add.ptr.i25.i
  br i1 %cmp.not.i.i.i, label %if.then6.i.i.i, label %bs_write_ue.exit.i.bs_write_ue.exit187.i_crit_edge

bs_write_ue.exit.i.bs_write_ue.exit187.i_crit_edge: ; preds = %bs_write_ue.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit187.i

if.then6.i.i.i:                                   ; preds = %bs_write_ue.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  %16 = ptrtoint ptr %bs.sroa.29.11.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bs.sroa.29.11.i, align 1
  %shl8.i.i.i = shl i8 %17, 5
  %or.i.i.i = or i8 %shl8.i.i.i, 4
  store i8 %or.i.i.i, ptr %bs.sroa.29.11.i, align 1
  %sub12.i.i.i = add nsw i32 %bs.sroa.137.12.i, -5
  br label %bs_write_ue.exit187.i

bs_write_ue.exit187.i:                            ; preds = %if.then6.i.i.i, %bs_write_ue.exit.i.bs_write_ue.exit187.i_crit_edge
  %bs.sroa.137.14.i = phi i32 [ %sub12.i.i.i, %if.then6.i.i.i ], [ %bs.sroa.137.12.i, %bs_write_ue.exit.i.bs_write_ue.exit187.i_crit_edge ]
  %cmp.i.i190.i = icmp ult ptr %bs.sroa.29.11.i, %add.ptr.i.i
  br i1 %cmp.i.i190.i, label %if.then.i.i196.i, label %bs_write_ue.exit187.i.bs_write_ue.exit199.i_crit_edge

bs_write_ue.exit187.i.bs_write_ue.exit199.i_crit_edge: ; preds = %bs_write_ue.exit187.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit199.i

if.then.i.i196.i:                                 ; preds = %bs_write_ue.exit187.i
  call void @__sanitizer_cov_trace_pc() #4
  %18 = ptrtoint ptr %bs.sroa.29.11.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bs.sroa.29.11.i, align 1
  %shl.i.i191.i = shl i8 %19, 1
  %conv5.i.i192.i = or i8 %shl.i.i191.i, 1
  store i8 %conv5.i.i192.i, ptr %bs.sroa.29.11.i, align 1
  %dec.i.i194.i = add nsw i32 %bs.sroa.137.14.i, -1
  br label %bs_write_ue.exit199.i

bs_write_ue.exit199.i:                            ; preds = %if.then.i.i196.i, %bs_write_ue.exit187.i.bs_write_ue.exit199.i_crit_edge
  %bs.sroa.137.15.i = phi i32 [ %bs.sroa.137.14.i, %bs_write_ue.exit187.i.bs_write_ue.exit199.i_crit_edge ], [ %dec.i.i194.i, %if.then.i.i196.i ]
  %cmp.not.i.i203.i = icmp ult ptr %bs.sroa.29.11.i, %add.ptr.i25.i
  br i1 %cmp.not.i.i203.i, label %bs_write_ue.exit199.i.while.body.i.i214.i_crit_edge, label %bs_write_ue.exit199.i.bs_write_ue.exit231.i_crit_edge

bs_write_ue.exit199.i.bs_write_ue.exit231.i_crit_edge: ; preds = %bs_write_ue.exit199.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit231.i

bs_write_ue.exit199.i.while.body.i.i214.i_crit_edge: ; preds = %bs_write_ue.exit199.i
  br label %while.body.i.i214.i

while.body.i.i214.i:                              ; preds = %if.end13.i.i230.i.while.body.i.i214.i_crit_edge, %bs_write_ue.exit199.i.while.body.i.i214.i_crit_edge
  %bs.sroa.137.16.i = phi i32 [ 8, %if.end13.i.i230.i.while.body.i.i214.i_crit_edge ], [ %bs.sroa.137.15.i, %bs_write_ue.exit199.i.while.body.i.i214.i_crit_edge ]
  %bs.sroa.29.16.i = phi ptr [ %incdec.ptr.i9.i228.i, %if.end13.i.i230.i.while.body.i.i214.i_crit_edge ], [ %bs.sroa.29.11.i, %bs_write_ue.exit199.i.while.body.i.i214.i_crit_edge ]
  %bits.addr.051.i.i206.i = phi i32 [ %bits.addr.1.i.i212.i, %if.end13.i.i230.i.while.body.i.i214.i_crit_edge ], [ 4, %bs_write_ue.exit199.i.while.body.i.i214.i_crit_edge ]
  %count.addr.050.i.i207.i = phi i32 [ %sub19.i.i223.i, %if.end13.i.i230.i.while.body.i.i214.i_crit_edge ], [ 5, %bs_write_ue.exit199.i.while.body.i.i214.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.addr.050.i.i207.i)
  %cmp2.i.i208.i = icmp ult i32 %count.addr.050.i.i207.i, 32
  %notmask.i.i209.i = shl nsw i32 -1, %count.addr.050.i.i207.i
  %sub.i8.i210.i = xor i32 %notmask.i.i209.i, -1
  %and.i.i211.i = select i1 %cmp2.i.i208.i, i32 %sub.i8.i210.i, i32 -1
  %bits.addr.1.i.i212.i = and i32 %and.i.i211.i, %bits.addr.051.i.i206.i
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i.i207.i, i32 %bs.sroa.137.16.i)
  %cmp5.i.i213.i = icmp ult i32 %count.addr.050.i.i207.i, %bs.sroa.137.16.i
  %20 = ptrtoint ptr %bs.sroa.29.16.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bs.sroa.29.16.i, align 1
  %conv.i.i215.i = zext i8 %21 to i32
  br i1 %cmp5.i.i213.i, label %if.then6.i.i220.i, label %if.end13.i.i230.i

if.then6.i.i220.i:                                ; preds = %while.body.i.i214.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i.i215.i.le = zext i8 %21 to i32
  %shl8.i.i216.i = shl i32 %conv.i.i215.i.le, %count.addr.050.i.i207.i
  %or.i.i217.i = or i32 %shl8.i.i216.i, %bits.addr.1.i.i212.i
  %conv9.i.i218.i = trunc i32 %or.i.i217.i to i8
  %22 = ptrtoint ptr %bs.sroa.29.16.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv9.i.i218.i, ptr %bs.sroa.29.16.i, align 1
  %sub12.i.i219.i = sub nsw i32 %bs.sroa.137.16.i, %count.addr.050.i.i207.i
  br label %bs_write_ue.exit231.i

if.end13.i.i230.i:                                ; preds = %while.body.i.i214.i
  %shl17.i.i222.i = shl nuw nsw i32 %conv.i.i215.i, %bs.sroa.137.16.i
  %sub19.i.i223.i = sub i32 %count.addr.050.i.i207.i, %bs.sroa.137.16.i
  %shr.i.i224.i = lshr i32 %bits.addr.1.i.i212.i, %sub19.i.i223.i
  %or20.i.i225.i = or i32 %shl17.i.i222.i, %shr.i.i224.i
  %conv21.i.i226.i = trunc i32 %or20.i.i225.i to i8
  %23 = ptrtoint ptr %bs.sroa.29.16.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv21.i.i226.i, ptr %bs.sroa.29.16.i, align 1
  %incdec.ptr.i9.i228.i = getelementptr i8, ptr %bs.sroa.29.16.i, i32 1
  %cmp1.i.i229.i = icmp sgt i32 %sub19.i.i223.i, 0
  br i1 %cmp1.i.i229.i, label %if.end13.i.i230.i.while.body.i.i214.i_crit_edge, label %if.end13.i.i230.i.bs_write_ue.exit231.i_crit_edge

if.end13.i.i230.i.bs_write_ue.exit231.i_crit_edge: ; preds = %if.end13.i.i230.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit231.i

if.end13.i.i230.i.while.body.i.i214.i_crit_edge:  ; preds = %if.end13.i.i230.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.i214.i

bs_write_ue.exit231.i:                            ; preds = %if.end13.i.i230.i.bs_write_ue.exit231.i_crit_edge, %if.then6.i.i220.i, %bs_write_ue.exit199.i.bs_write_ue.exit231.i_crit_edge
  %bs.sroa.137.17.i = phi i32 [ %sub12.i.i219.i, %if.then6.i.i220.i ], [ %bs.sroa.137.15.i, %bs_write_ue.exit199.i.bs_write_ue.exit231.i_crit_edge ], [ 8, %if.end13.i.i230.i.bs_write_ue.exit231.i_crit_edge ]
  %bs.sroa.29.17.i = phi ptr [ %bs.sroa.29.16.i, %if.then6.i.i220.i ], [ %bs.sroa.29.11.i, %bs_write_ue.exit199.i.bs_write_ue.exit231.i_crit_edge ], [ %incdec.ptr.i9.i228.i, %if.end13.i.i230.i.bs_write_ue.exit231.i_crit_edge ]
  %cmp.not.i.i235.i = icmp ult ptr %bs.sroa.29.17.i, %add.ptr.i25.i
  br i1 %cmp.not.i.i235.i, label %bs_write_ue.exit231.i.while.body.i.i246.i_crit_edge, label %bs_write_ue.exit231.i.bs_write_ue.exit263.i_crit_edge

bs_write_ue.exit231.i.bs_write_ue.exit263.i_crit_edge: ; preds = %bs_write_ue.exit231.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit263.i

bs_write_ue.exit231.i.while.body.i.i246.i_crit_edge: ; preds = %bs_write_ue.exit231.i
  br label %while.body.i.i246.i

while.body.i.i246.i:                              ; preds = %if.end13.i.i262.i.while.body.i.i246.i_crit_edge, %bs_write_ue.exit231.i.while.body.i.i246.i_crit_edge
  %bs.sroa.137.18.i = phi i32 [ 8, %if.end13.i.i262.i.while.body.i.i246.i_crit_edge ], [ %bs.sroa.137.17.i, %bs_write_ue.exit231.i.while.body.i.i246.i_crit_edge ]
  %bs.sroa.29.18.i = phi ptr [ %incdec.ptr.i9.i260.i, %if.end13.i.i262.i.while.body.i.i246.i_crit_edge ], [ %bs.sroa.29.17.i, %bs_write_ue.exit231.i.while.body.i.i246.i_crit_edge ]
  %bits.addr.051.i.i238.i = phi i32 [ %bits.addr.1.i.i244.i, %if.end13.i.i262.i.while.body.i.i246.i_crit_edge ], [ 2, %bs_write_ue.exit231.i.while.body.i.i246.i_crit_edge ]
  %count.addr.050.i.i239.i = phi i32 [ %sub19.i.i255.i, %if.end13.i.i262.i.while.body.i.i246.i_crit_edge ], [ 3, %bs_write_ue.exit231.i.while.body.i.i246.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.addr.050.i.i239.i)
  %cmp2.i.i240.i = icmp ult i32 %count.addr.050.i.i239.i, 32
  %notmask.i.i241.i = shl nsw i32 -1, %count.addr.050.i.i239.i
  %sub.i8.i242.i = xor i32 %notmask.i.i241.i, -1
  %and.i.i243.i = select i1 %cmp2.i.i240.i, i32 %sub.i8.i242.i, i32 -1
  %bits.addr.1.i.i244.i = and i32 %and.i.i243.i, %bits.addr.051.i.i238.i
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i.i239.i, i32 %bs.sroa.137.18.i)
  %cmp5.i.i245.i = icmp ult i32 %count.addr.050.i.i239.i, %bs.sroa.137.18.i
  %24 = ptrtoint ptr %bs.sroa.29.18.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bs.sroa.29.18.i, align 1
  %conv.i.i247.i = zext i8 %25 to i32
  br i1 %cmp5.i.i245.i, label %if.then6.i.i252.i, label %if.end13.i.i262.i

if.then6.i.i252.i:                                ; preds = %while.body.i.i246.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i.i247.i.le = zext i8 %25 to i32
  %shl8.i.i248.i = shl i32 %conv.i.i247.i.le, %count.addr.050.i.i239.i
  %or.i.i249.i = or i32 %shl8.i.i248.i, %bits.addr.1.i.i244.i
  %conv9.i.i250.i = trunc i32 %or.i.i249.i to i8
  %26 = ptrtoint ptr %bs.sroa.29.18.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv9.i.i250.i, ptr %bs.sroa.29.18.i, align 1
  %sub12.i.i251.i = sub i32 %bs.sroa.137.18.i, %count.addr.050.i.i239.i
  br label %bs_write_ue.exit263.i

if.end13.i.i262.i:                                ; preds = %while.body.i.i246.i
  %shl17.i.i254.i = shl nuw nsw i32 %conv.i.i247.i, %bs.sroa.137.18.i
  %sub19.i.i255.i = sub i32 %count.addr.050.i.i239.i, %bs.sroa.137.18.i
  %shr.i.i256.i = lshr i32 %bits.addr.1.i.i244.i, %sub19.i.i255.i
  %or20.i.i257.i = or i32 %shl17.i.i254.i, %shr.i.i256.i
  %conv21.i.i258.i = trunc i32 %or20.i.i257.i to i8
  %27 = ptrtoint ptr %bs.sroa.29.18.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv21.i.i258.i, ptr %bs.sroa.29.18.i, align 1
  %incdec.ptr.i9.i260.i = getelementptr i8, ptr %bs.sroa.29.18.i, i32 1
  %cmp1.i.i261.i = icmp sgt i32 %sub19.i.i255.i, 0
  br i1 %cmp1.i.i261.i, label %if.end13.i.i262.i.while.body.i.i246.i_crit_edge, label %if.end13.i.i262.i.bs_write_ue.exit263.i_crit_edge

if.end13.i.i262.i.bs_write_ue.exit263.i_crit_edge: ; preds = %if.end13.i.i262.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit263.i

if.end13.i.i262.i.while.body.i.i246.i_crit_edge:  ; preds = %if.end13.i.i262.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.i246.i

bs_write_ue.exit263.i:                            ; preds = %if.end13.i.i262.i.bs_write_ue.exit263.i_crit_edge, %if.then6.i.i252.i, %bs_write_ue.exit231.i.bs_write_ue.exit263.i_crit_edge
  %bs.sroa.137.19.i = phi i32 [ %sub12.i.i251.i, %if.then6.i.i252.i ], [ %bs.sroa.137.17.i, %bs_write_ue.exit231.i.bs_write_ue.exit263.i_crit_edge ], [ 8, %if.end13.i.i262.i.bs_write_ue.exit263.i_crit_edge ]
  %bs.sroa.29.19.i = phi ptr [ %bs.sroa.29.18.i, %if.then6.i.i252.i ], [ %bs.sroa.29.17.i, %bs_write_ue.exit231.i.bs_write_ue.exit263.i_crit_edge ], [ %incdec.ptr.i9.i260.i, %if.end13.i.i262.i.bs_write_ue.exit263.i_crit_edge ]
  %cmp.not.i267.i = icmp ult ptr %bs.sroa.29.19.i, %add.ptr.i25.i
  br i1 %cmp.not.i267.i, label %bs_write_ue.exit263.i.while.body.i278.i_crit_edge, label %bs_write_ue.exit263.i.bs_write.exit295.i_crit_edge

bs_write_ue.exit263.i.bs_write.exit295.i_crit_edge: ; preds = %bs_write_ue.exit263.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit295.i

bs_write_ue.exit263.i.while.body.i278.i_crit_edge: ; preds = %bs_write_ue.exit263.i
  br label %while.body.i278.i

while.body.i278.i:                                ; preds = %if.end13.i294.i.while.body.i278.i_crit_edge, %bs_write_ue.exit263.i.while.body.i278.i_crit_edge
  %bs.sroa.137.20.i = phi i32 [ 8, %if.end13.i294.i.while.body.i278.i_crit_edge ], [ %bs.sroa.137.19.i, %bs_write_ue.exit263.i.while.body.i278.i_crit_edge ]
  %bs.sroa.29.20.i = phi ptr [ %incdec.ptr.i292.i, %if.end13.i294.i.while.body.i278.i_crit_edge ], [ %bs.sroa.29.19.i, %bs_write_ue.exit263.i.while.body.i278.i_crit_edge ]
  %count.addr.050.i271.i = phi i32 [ %sub19.i287.i, %if.end13.i294.i.while.body.i278.i_crit_edge ], [ 1, %bs_write_ue.exit263.i.while.body.i278.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i271.i, i32 %bs.sroa.137.20.i)
  %cmp5.i277.i = icmp ult i32 %count.addr.050.i271.i, %bs.sroa.137.20.i
  %28 = ptrtoint ptr %bs.sroa.29.20.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bs.sroa.29.20.i, align 1
  %conv.i279.i = zext i8 %29 to i32
  br i1 %cmp5.i277.i, label %if.then6.i284.i, label %if.end13.i294.i

if.then6.i284.i:                                  ; preds = %while.body.i278.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i279.i.le = zext i8 %29 to i32
  %shl8.i280.i = shl i32 %conv.i279.i.le, %count.addr.050.i271.i
  %conv9.i282.i = trunc i32 %shl8.i280.i to i8
  %30 = ptrtoint ptr %bs.sroa.29.20.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv9.i282.i, ptr %bs.sroa.29.20.i, align 1
  %sub12.i283.i = sub i32 %bs.sroa.137.20.i, %count.addr.050.i271.i
  br label %bs_write.exit295.i

if.end13.i294.i:                                  ; preds = %while.body.i278.i
  %shl17.i286.i = shl i32 %conv.i279.i, %bs.sroa.137.20.i
  %sub19.i287.i = sub i32 %count.addr.050.i271.i, %bs.sroa.137.20.i
  %conv21.i290.i = trunc i32 %shl17.i286.i to i8
  %31 = ptrtoint ptr %bs.sroa.29.20.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv21.i290.i, ptr %bs.sroa.29.20.i, align 1
  %incdec.ptr.i292.i = getelementptr i8, ptr %bs.sroa.29.20.i, i32 1
  %cmp1.i293.i = icmp sgt i32 %sub19.i287.i, 0
  br i1 %cmp1.i293.i, label %if.end13.i294.i.while.body.i278.i_crit_edge, label %if.end13.i294.i.bs_write.exit295.i_crit_edge

if.end13.i294.i.bs_write.exit295.i_crit_edge:     ; preds = %if.end13.i294.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit295.i

if.end13.i294.i.while.body.i278.i_crit_edge:      ; preds = %if.end13.i294.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i278.i

bs_write.exit295.i:                               ; preds = %if.end13.i294.i.bs_write.exit295.i_crit_edge, %if.then6.i284.i, %bs_write_ue.exit263.i.bs_write.exit295.i_crit_edge
  %bs.sroa.137.21.i = phi i32 [ %sub12.i283.i, %if.then6.i284.i ], [ %bs.sroa.137.19.i, %bs_write_ue.exit263.i.bs_write.exit295.i_crit_edge ], [ 8, %if.end13.i294.i.bs_write.exit295.i_crit_edge ]
  %bs.sroa.29.21.i = phi ptr [ %bs.sroa.29.20.i, %if.then6.i284.i ], [ %bs.sroa.29.19.i, %bs_write_ue.exit263.i.bs_write.exit295.i_crit_edge ], [ %incdec.ptr.i292.i, %if.end13.i294.i.bs_write.exit295.i_crit_edge ]
  %div.i = sdiv i32 %width, 16
  %32 = and i32 %width, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %32)
  %33 = icmp eq i32 %32, 16
  br i1 %33, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %bs_write.exit295.i
  %cmp.i.i298.i = icmp ult ptr %bs.sroa.29.21.i, %add.ptr.i.i
  br i1 %cmp.i.i298.i, label %if.then.i.i304.i, label %if.then.i.i.bs_write_ue.exit338.i_crit_edge

if.then.i.i.bs_write_ue.exit338.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit338.i

if.then.i.i304.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %34 = ptrtoint ptr %bs.sroa.29.21.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bs.sroa.29.21.i, align 1
  %shl.i.i299.i = shl i8 %35, 1
  %conv5.i.i300.i = or i8 %shl.i.i299.i, 1
  store i8 %conv5.i.i300.i, ptr %bs.sroa.29.21.i, align 1
  %dec.i.i302.i = add i32 %bs.sroa.137.21.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i302.i)
  %cmp7.i.i303.i = icmp eq i32 %dec.i.i302.i, 0
  %spec.select718.i = select i1 %cmp7.i.i303.i, i32 8, i32 %dec.i.i302.i
  %spec.select719.idx.i = zext i1 %cmp7.i.i303.i to i32
  %spec.select719.i = getelementptr i8, ptr %bs.sroa.29.21.i, i32 %spec.select719.idx.i
  br label %bs_write_ue.exit338.i

if.else.i.i:                                      ; preds = %bs_write.exit295.i
  %36 = add i32 %width, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %36)
  %37 = icmp ult i32 %36, -31
  %38 = tail call i32 @llvm.ctlz.i32(i32 %div.i, i1 true) #2, !range !11
  %.neg.i.i = mul nsw i32 %38, -2
  %cmp.not.i.i310.i = icmp ult ptr %bs.sroa.29.21.i, %add.ptr.i25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %.neg.i.i)
  %cmp149.i16.i.i = icmp sgt i32 %.neg.i.i, -63
  %cmp149.i.i.i = select i1 %37, i1 %cmp149.i16.i.i, i1 false
  %or.cond.i.i.i = and i1 %cmp149.i.i.i, %cmp.not.i.i310.i
  br i1 %or.cond.i.i.i, label %while.body.lr.ph.i.i312.i, label %if.else.i.i.bs_write_ue.exit338.i_crit_edge

if.else.i.i.bs_write_ue.exit338.i_crit_edge:      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit338.i

while.body.lr.ph.i.i312.i:                        ; preds = %if.else.i.i
  %sub.i.op.op.i.i = add nsw i32 %.neg.i.i, 63
  br label %while.body.i.i321.i

while.body.i.i321.i:                              ; preds = %if.end13.i.i337.i.while.body.i.i321.i_crit_edge, %while.body.lr.ph.i.i312.i
  %bs.sroa.137.22.i = phi i32 [ %bs.sroa.137.21.i, %while.body.lr.ph.i.i312.i ], [ 8, %if.end13.i.i337.i.while.body.i.i321.i_crit_edge ]
  %bs.sroa.29.22.i = phi ptr [ %bs.sroa.29.21.i, %while.body.lr.ph.i.i312.i ], [ %incdec.ptr.i9.i335.i, %if.end13.i.i337.i.while.body.i.i321.i_crit_edge ]
  %bits.addr.051.i.i313.i = phi i32 [ %div.i, %while.body.lr.ph.i.i312.i ], [ %bits.addr.1.i.i319.i, %if.end13.i.i337.i.while.body.i.i321.i_crit_edge ]
  %count.addr.050.i.i314.i = phi i32 [ %sub.i.op.op.i.i, %while.body.lr.ph.i.i312.i ], [ %sub19.i.i330.i, %if.end13.i.i337.i.while.body.i.i321.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.addr.050.i.i314.i)
  %cmp2.i.i315.i = icmp ult i32 %count.addr.050.i.i314.i, 32
  %notmask.i.i316.i = shl nsw i32 -1, %count.addr.050.i.i314.i
  %sub.i8.i317.i = xor i32 %notmask.i.i316.i, -1
  %and.i.i318.i = select i1 %cmp2.i.i315.i, i32 %sub.i8.i317.i, i32 -1
  %bits.addr.1.i.i319.i = and i32 %and.i.i318.i, %bits.addr.051.i.i313.i
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i.i314.i, i32 %bs.sroa.137.22.i)
  %cmp5.i.i320.i = icmp ult i32 %count.addr.050.i.i314.i, %bs.sroa.137.22.i
  %39 = ptrtoint ptr %bs.sroa.29.22.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bs.sroa.29.22.i, align 1
  %conv.i.i322.i = zext i8 %40 to i32
  br i1 %cmp5.i.i320.i, label %if.then6.i.i327.i, label %if.end13.i.i337.i

if.then6.i.i327.i:                                ; preds = %while.body.i.i321.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i.i322.i.le = zext i8 %40 to i32
  %shl8.i.i323.i = shl i32 %conv.i.i322.i.le, %count.addr.050.i.i314.i
  %or.i.i324.i = or i32 %shl8.i.i323.i, %bits.addr.1.i.i319.i
  %conv9.i.i325.i = trunc i32 %or.i.i324.i to i8
  %41 = ptrtoint ptr %bs.sroa.29.22.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv9.i.i325.i, ptr %bs.sroa.29.22.i, align 1
  %sub12.i.i326.i = sub i32 %bs.sroa.137.22.i, %count.addr.050.i.i314.i
  br label %bs_write_ue.exit338.i

if.end13.i.i337.i:                                ; preds = %while.body.i.i321.i
  %shl17.i.i329.i = shl i32 %conv.i.i322.i, %bs.sroa.137.22.i
  %sub19.i.i330.i = sub i32 %count.addr.050.i.i314.i, %bs.sroa.137.22.i
  %shr.i.i331.i = lshr i32 %bits.addr.1.i.i319.i, %sub19.i.i330.i
  %or20.i.i332.i = or i32 %shl17.i.i329.i, %shr.i.i331.i
  %conv21.i.i333.i = trunc i32 %or20.i.i332.i to i8
  %42 = ptrtoint ptr %bs.sroa.29.22.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv21.i.i333.i, ptr %bs.sroa.29.22.i, align 1
  %incdec.ptr.i9.i335.i = getelementptr i8, ptr %bs.sroa.29.22.i, i32 1
  %cmp1.i.i336.i = icmp sgt i32 %sub19.i.i330.i, 0
  br i1 %cmp1.i.i336.i, label %if.end13.i.i337.i.while.body.i.i321.i_crit_edge, label %if.end13.i.i337.i.bs_write_ue.exit338.i_crit_edge

if.end13.i.i337.i.bs_write_ue.exit338.i_crit_edge: ; preds = %if.end13.i.i337.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit338.i

if.end13.i.i337.i.while.body.i.i321.i_crit_edge:  ; preds = %if.end13.i.i337.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.i321.i

bs_write_ue.exit338.i:                            ; preds = %if.end13.i.i337.i.bs_write_ue.exit338.i_crit_edge, %if.then6.i.i327.i, %if.else.i.i.bs_write_ue.exit338.i_crit_edge, %if.then.i.i304.i, %if.then.i.i.bs_write_ue.exit338.i_crit_edge
  %bs.sroa.137.23.i = phi i32 [ %bs.sroa.137.21.i, %if.then.i.i.bs_write_ue.exit338.i_crit_edge ], [ %sub12.i.i326.i, %if.then6.i.i327.i ], [ %bs.sroa.137.21.i, %if.else.i.i.bs_write_ue.exit338.i_crit_edge ], [ %spec.select718.i, %if.then.i.i304.i ], [ 8, %if.end13.i.i337.i.bs_write_ue.exit338.i_crit_edge ]
  %bs.sroa.29.23.i = phi ptr [ %bs.sroa.29.21.i, %if.then.i.i.bs_write_ue.exit338.i_crit_edge ], [ %bs.sroa.29.22.i, %if.then6.i.i327.i ], [ %bs.sroa.29.21.i, %if.else.i.i.bs_write_ue.exit338.i_crit_edge ], [ %spec.select719.i, %if.then.i.i304.i ], [ %incdec.ptr.i9.i335.i, %if.end13.i.i337.i.bs_write_ue.exit338.i_crit_edge ]
  %div1.i = sdiv i32 %height, 16
  %43 = and i32 %height, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %43)
  %44 = icmp eq i32 %43, 16
  br i1 %44, label %if.then.i343.i, label %if.else.i361.i

if.then.i343.i:                                   ; preds = %bs_write_ue.exit338.i
  %cmp.i.i342.i = icmp ult ptr %bs.sroa.29.23.i, %add.ptr.i.i
  br i1 %cmp.i.i342.i, label %if.then.i.i349.i, label %if.then.i343.i.bs_write_ue.exit390.i_crit_edge

if.then.i343.i.bs_write_ue.exit390.i_crit_edge:   ; preds = %if.then.i343.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit390.i

if.then.i.i349.i:                                 ; preds = %if.then.i343.i
  call void @__sanitizer_cov_trace_pc() #4
  %45 = ptrtoint ptr %bs.sroa.29.23.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bs.sroa.29.23.i, align 1
  %shl.i.i344.i = shl i8 %46, 1
  %conv5.i.i345.i = or i8 %shl.i.i344.i, 1
  store i8 %conv5.i.i345.i, ptr %bs.sroa.29.23.i, align 1
  %dec.i.i347.i = add i32 %bs.sroa.137.23.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i347.i)
  %cmp7.i.i348.i = icmp eq i32 %dec.i.i347.i, 0
  %spec.select720.i = select i1 %cmp7.i.i348.i, i32 8, i32 %dec.i.i347.i
  %spec.select721.idx.i = zext i1 %cmp7.i.i348.i to i32
  %spec.select721.i = getelementptr i8, ptr %bs.sroa.29.23.i, i32 %spec.select721.idx.i
  br label %bs_write_ue.exit390.i

if.else.i361.i:                                   ; preds = %bs_write_ue.exit338.i
  %47 = add i32 %height, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %47)
  %48 = icmp ult i32 %47, -31
  %49 = tail call i32 @llvm.ctlz.i32(i32 %div1.i, i1 true) #2, !range !11
  %.neg.i353.i = mul nsw i32 %49, -2
  %cmp.not.i.i357.i = icmp ult ptr %bs.sroa.29.23.i, %add.ptr.i25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %.neg.i353.i)
  %cmp149.i16.i358.i = icmp sgt i32 %.neg.i353.i, -63
  %cmp149.i.i359.i = select i1 %48, i1 %cmp149.i16.i358.i, i1 false
  %or.cond.i.i360.i = and i1 %cmp149.i.i359.i, %cmp.not.i.i357.i
  br i1 %or.cond.i.i360.i, label %while.body.lr.ph.i.i364.i, label %if.else.i361.i.bs_write_ue.exit390.i_crit_edge

if.else.i361.i.bs_write_ue.exit390.i_crit_edge:   ; preds = %if.else.i361.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit390.i

while.body.lr.ph.i.i364.i:                        ; preds = %if.else.i361.i
  %sub.i.op.op.i362.i = add nsw i32 %.neg.i353.i, 63
  br label %while.body.i.i373.i

while.body.i.i373.i:                              ; preds = %if.end13.i.i389.i.while.body.i.i373.i_crit_edge, %while.body.lr.ph.i.i364.i
  %bs.sroa.137.24.i = phi i32 [ %bs.sroa.137.23.i, %while.body.lr.ph.i.i364.i ], [ 8, %if.end13.i.i389.i.while.body.i.i373.i_crit_edge ]
  %bs.sroa.29.24.i = phi ptr [ %bs.sroa.29.23.i, %while.body.lr.ph.i.i364.i ], [ %incdec.ptr.i9.i387.i, %if.end13.i.i389.i.while.body.i.i373.i_crit_edge ]
  %bits.addr.051.i.i365.i = phi i32 [ %div1.i, %while.body.lr.ph.i.i364.i ], [ %bits.addr.1.i.i371.i, %if.end13.i.i389.i.while.body.i.i373.i_crit_edge ]
  %count.addr.050.i.i366.i = phi i32 [ %sub.i.op.op.i362.i, %while.body.lr.ph.i.i364.i ], [ %sub19.i.i382.i, %if.end13.i.i389.i.while.body.i.i373.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.addr.050.i.i366.i)
  %cmp2.i.i367.i = icmp ult i32 %count.addr.050.i.i366.i, 32
  %notmask.i.i368.i = shl nsw i32 -1, %count.addr.050.i.i366.i
  %sub.i8.i369.i = xor i32 %notmask.i.i368.i, -1
  %and.i.i370.i = select i1 %cmp2.i.i367.i, i32 %sub.i8.i369.i, i32 -1
  %bits.addr.1.i.i371.i = and i32 %and.i.i370.i, %bits.addr.051.i.i365.i
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i.i366.i, i32 %bs.sroa.137.24.i)
  %cmp5.i.i372.i = icmp ult i32 %count.addr.050.i.i366.i, %bs.sroa.137.24.i
  %50 = ptrtoint ptr %bs.sroa.29.24.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bs.sroa.29.24.i, align 1
  %conv.i.i374.i = zext i8 %51 to i32
  br i1 %cmp5.i.i372.i, label %if.then6.i.i379.i, label %if.end13.i.i389.i

if.then6.i.i379.i:                                ; preds = %while.body.i.i373.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i.i374.i.le = zext i8 %51 to i32
  %shl8.i.i375.i = shl i32 %conv.i.i374.i.le, %count.addr.050.i.i366.i
  %or.i.i376.i = or i32 %shl8.i.i375.i, %bits.addr.1.i.i371.i
  %conv9.i.i377.i = trunc i32 %or.i.i376.i to i8
  %52 = ptrtoint ptr %bs.sroa.29.24.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv9.i.i377.i, ptr %bs.sroa.29.24.i, align 1
  %sub12.i.i378.i = sub i32 %bs.sroa.137.24.i, %count.addr.050.i.i366.i
  br label %bs_write_ue.exit390.i

if.end13.i.i389.i:                                ; preds = %while.body.i.i373.i
  %shl17.i.i381.i = shl i32 %conv.i.i374.i, %bs.sroa.137.24.i
  %sub19.i.i382.i = sub i32 %count.addr.050.i.i366.i, %bs.sroa.137.24.i
  %shr.i.i383.i = lshr i32 %bits.addr.1.i.i371.i, %sub19.i.i382.i
  %or20.i.i384.i = or i32 %shl17.i.i381.i, %shr.i.i383.i
  %conv21.i.i385.i = trunc i32 %or20.i.i384.i to i8
  %53 = ptrtoint ptr %bs.sroa.29.24.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv21.i.i385.i, ptr %bs.sroa.29.24.i, align 1
  %incdec.ptr.i9.i387.i = getelementptr i8, ptr %bs.sroa.29.24.i, i32 1
  %cmp1.i.i388.i = icmp sgt i32 %sub19.i.i382.i, 0
  br i1 %cmp1.i.i388.i, label %if.end13.i.i389.i.while.body.i.i373.i_crit_edge, label %if.end13.i.i389.i.bs_write_ue.exit390.i_crit_edge

if.end13.i.i389.i.bs_write_ue.exit390.i_crit_edge: ; preds = %if.end13.i.i389.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit390.i

if.end13.i.i389.i.while.body.i.i373.i_crit_edge:  ; preds = %if.end13.i.i389.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.i373.i

bs_write_ue.exit390.i:                            ; preds = %if.end13.i.i389.i.bs_write_ue.exit390.i_crit_edge, %if.then6.i.i379.i, %if.else.i361.i.bs_write_ue.exit390.i_crit_edge, %if.then.i.i349.i, %if.then.i343.i.bs_write_ue.exit390.i_crit_edge
  %bs.sroa.137.25.i = phi i32 [ %bs.sroa.137.23.i, %if.then.i343.i.bs_write_ue.exit390.i_crit_edge ], [ %sub12.i.i378.i, %if.then6.i.i379.i ], [ %bs.sroa.137.23.i, %if.else.i361.i.bs_write_ue.exit390.i_crit_edge ], [ %spec.select720.i, %if.then.i.i349.i ], [ 8, %if.end13.i.i389.i.bs_write_ue.exit390.i_crit_edge ]
  %bs.sroa.29.25.i = phi ptr [ %bs.sroa.29.23.i, %if.then.i343.i.bs_write_ue.exit390.i_crit_edge ], [ %bs.sroa.29.24.i, %if.then6.i.i379.i ], [ %bs.sroa.29.23.i, %if.else.i361.i.bs_write_ue.exit390.i_crit_edge ], [ %spec.select721.i, %if.then.i.i349.i ], [ %incdec.ptr.i9.i387.i, %if.end13.i.i389.i.bs_write_ue.exit390.i_crit_edge ]
  %cmp.not.i394.i = icmp ult ptr %bs.sroa.29.25.i, %add.ptr.i25.i
  br i1 %cmp.not.i394.i, label %bs_write_ue.exit390.i.while.body.i405.i_crit_edge, label %bs_write_ue.exit390.i.bs_write.exit422.i_crit_edge

bs_write_ue.exit390.i.bs_write.exit422.i_crit_edge: ; preds = %bs_write_ue.exit390.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit422.i

bs_write_ue.exit390.i.while.body.i405.i_crit_edge: ; preds = %bs_write_ue.exit390.i
  br label %while.body.i405.i

while.body.i405.i:                                ; preds = %if.end13.i421.i.while.body.i405.i_crit_edge, %bs_write_ue.exit390.i.while.body.i405.i_crit_edge
  %bs.sroa.137.26.i = phi i32 [ 8, %if.end13.i421.i.while.body.i405.i_crit_edge ], [ %bs.sroa.137.25.i, %bs_write_ue.exit390.i.while.body.i405.i_crit_edge ]
  %bs.sroa.29.26.i = phi ptr [ %incdec.ptr.i419.i, %if.end13.i421.i.while.body.i405.i_crit_edge ], [ %bs.sroa.29.25.i, %bs_write_ue.exit390.i.while.body.i405.i_crit_edge ]
  %bits.addr.051.i397.i = phi i32 [ %bits.addr.1.i403.i, %if.end13.i421.i.while.body.i405.i_crit_edge ], [ 1, %bs_write_ue.exit390.i.while.body.i405.i_crit_edge ]
  %count.addr.050.i398.i = phi i32 [ %sub19.i414.i, %if.end13.i421.i.while.body.i405.i_crit_edge ], [ 1, %bs_write_ue.exit390.i.while.body.i405.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.addr.050.i398.i)
  %cmp2.i399.i = icmp ult i32 %count.addr.050.i398.i, 32
  %notmask.i400.i = shl nsw i32 -1, %count.addr.050.i398.i
  %sub.i401.i = xor i32 %notmask.i400.i, -1
  %and.i402.i = select i1 %cmp2.i399.i, i32 %sub.i401.i, i32 -1
  %bits.addr.1.i403.i = and i32 %and.i402.i, %bits.addr.051.i397.i
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i398.i, i32 %bs.sroa.137.26.i)
  %cmp5.i404.i = icmp ult i32 %count.addr.050.i398.i, %bs.sroa.137.26.i
  %54 = ptrtoint ptr %bs.sroa.29.26.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bs.sroa.29.26.i, align 1
  %conv.i406.i = zext i8 %55 to i32
  br i1 %cmp5.i404.i, label %if.then6.i411.i, label %if.end13.i421.i

if.then6.i411.i:                                  ; preds = %while.body.i405.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i406.i.le = zext i8 %55 to i32
  %shl8.i407.i = shl i32 %conv.i406.i.le, %count.addr.050.i398.i
  %or.i408.i = or i32 %shl8.i407.i, %bits.addr.1.i403.i
  %conv9.i409.i = trunc i32 %or.i408.i to i8
  %56 = ptrtoint ptr %bs.sroa.29.26.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv9.i409.i, ptr %bs.sroa.29.26.i, align 1
  %sub12.i410.i = sub i32 %bs.sroa.137.26.i, %count.addr.050.i398.i
  br label %bs_write.exit422.i

if.end13.i421.i:                                  ; preds = %while.body.i405.i
  %shl17.i413.i = shl i32 %conv.i406.i, %bs.sroa.137.26.i
  %sub19.i414.i = sub i32 %count.addr.050.i398.i, %bs.sroa.137.26.i
  %shr.i415.i = lshr i32 %bits.addr.1.i403.i, %sub19.i414.i
  %or20.i416.i = or i32 %shl17.i413.i, %shr.i415.i
  %conv21.i417.i = trunc i32 %or20.i416.i to i8
  %57 = ptrtoint ptr %bs.sroa.29.26.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv21.i417.i, ptr %bs.sroa.29.26.i, align 1
  %incdec.ptr.i419.i = getelementptr i8, ptr %bs.sroa.29.26.i, i32 1
  %cmp1.i420.i = icmp sgt i32 %sub19.i414.i, 0
  br i1 %cmp1.i420.i, label %if.end13.i421.i.while.body.i405.i_crit_edge, label %if.end13.i421.i.bs_write.exit422.i_crit_edge

if.end13.i421.i.bs_write.exit422.i_crit_edge:     ; preds = %if.end13.i421.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit422.i

if.end13.i421.i.while.body.i405.i_crit_edge:      ; preds = %if.end13.i421.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i405.i

bs_write.exit422.i:                               ; preds = %if.end13.i421.i.bs_write.exit422.i_crit_edge, %if.then6.i411.i, %bs_write_ue.exit390.i.bs_write.exit422.i_crit_edge
  %bs.sroa.137.27.i = phi i32 [ %sub12.i410.i, %if.then6.i411.i ], [ %bs.sroa.137.25.i, %bs_write_ue.exit390.i.bs_write.exit422.i_crit_edge ], [ 8, %if.end13.i421.i.bs_write.exit422.i_crit_edge ]
  %bs.sroa.29.27.i = phi ptr [ %bs.sroa.29.26.i, %if.then6.i411.i ], [ %bs.sroa.29.25.i, %bs_write_ue.exit390.i.bs_write.exit422.i_crit_edge ], [ %incdec.ptr.i419.i, %if.end13.i421.i.bs_write.exit422.i_crit_edge ]
  %cmp.not.i426.i = icmp ult ptr %bs.sroa.29.27.i, %add.ptr.i25.i
  br i1 %cmp.not.i426.i, label %bs_write.exit422.i.while.body.i437.i_crit_edge, label %bs_write.exit422.i.bs_write.exit454.i_crit_edge

bs_write.exit422.i.bs_write.exit454.i_crit_edge:  ; preds = %bs_write.exit422.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit454.i

bs_write.exit422.i.while.body.i437.i_crit_edge:   ; preds = %bs_write.exit422.i
  br label %while.body.i437.i

while.body.i437.i:                                ; preds = %if.end13.i453.i.while.body.i437.i_crit_edge, %bs_write.exit422.i.while.body.i437.i_crit_edge
  %bs.sroa.137.28.i = phi i32 [ 8, %if.end13.i453.i.while.body.i437.i_crit_edge ], [ %bs.sroa.137.27.i, %bs_write.exit422.i.while.body.i437.i_crit_edge ]
  %bs.sroa.29.28.i = phi ptr [ %incdec.ptr.i451.i, %if.end13.i453.i.while.body.i437.i_crit_edge ], [ %bs.sroa.29.27.i, %bs_write.exit422.i.while.body.i437.i_crit_edge ]
  %count.addr.050.i430.i = phi i32 [ %sub19.i446.i, %if.end13.i453.i.while.body.i437.i_crit_edge ], [ 1, %bs_write.exit422.i.while.body.i437.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i430.i, i32 %bs.sroa.137.28.i)
  %cmp5.i436.i = icmp ult i32 %count.addr.050.i430.i, %bs.sroa.137.28.i
  %58 = ptrtoint ptr %bs.sroa.29.28.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bs.sroa.29.28.i, align 1
  %conv.i438.i = zext i8 %59 to i32
  br i1 %cmp5.i436.i, label %if.then6.i443.i, label %if.end13.i453.i

if.then6.i443.i:                                  ; preds = %while.body.i437.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i438.i.le = zext i8 %59 to i32
  %shl8.i439.i = shl i32 %conv.i438.i.le, %count.addr.050.i430.i
  %conv9.i441.i = trunc i32 %shl8.i439.i to i8
  %60 = ptrtoint ptr %bs.sroa.29.28.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv9.i441.i, ptr %bs.sroa.29.28.i, align 1
  %sub12.i442.i = sub i32 %bs.sroa.137.28.i, %count.addr.050.i430.i
  br label %bs_write.exit454.i

if.end13.i453.i:                                  ; preds = %while.body.i437.i
  %shl17.i445.i = shl i32 %conv.i438.i, %bs.sroa.137.28.i
  %sub19.i446.i = sub i32 %count.addr.050.i430.i, %bs.sroa.137.28.i
  %conv21.i449.i = trunc i32 %shl17.i445.i to i8
  %61 = ptrtoint ptr %bs.sroa.29.28.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv21.i449.i, ptr %bs.sroa.29.28.i, align 1
  %incdec.ptr.i451.i = getelementptr i8, ptr %bs.sroa.29.28.i, i32 1
  %cmp1.i452.i = icmp sgt i32 %sub19.i446.i, 0
  br i1 %cmp1.i452.i, label %if.end13.i453.i.while.body.i437.i_crit_edge, label %if.end13.i453.i.bs_write.exit454.i_crit_edge

if.end13.i453.i.bs_write.exit454.i_crit_edge:     ; preds = %if.end13.i453.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit454.i

if.end13.i453.i.while.body.i437.i_crit_edge:      ; preds = %if.end13.i453.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i437.i

bs_write.exit454.i:                               ; preds = %if.end13.i453.i.bs_write.exit454.i_crit_edge, %if.then6.i443.i, %bs_write.exit422.i.bs_write.exit454.i_crit_edge
  %bs.sroa.137.29.i = phi i32 [ %sub12.i442.i, %if.then6.i443.i ], [ %bs.sroa.137.27.i, %bs_write.exit422.i.bs_write.exit454.i_crit_edge ], [ 8, %if.end13.i453.i.bs_write.exit454.i_crit_edge ]
  %bs.sroa.29.29.i = phi ptr [ %bs.sroa.29.28.i, %if.then6.i443.i ], [ %bs.sroa.29.27.i, %bs_write.exit422.i.bs_write.exit454.i_crit_edge ], [ %incdec.ptr.i451.i, %if.end13.i453.i.bs_write.exit454.i_crit_edge ]
  %cmp.not.i458.i = icmp ult ptr %bs.sroa.29.29.i, %add.ptr.i25.i
  br i1 %cmp.not.i458.i, label %bs_write.exit454.i.while.body.i469.i_crit_edge, label %bs_write.exit454.i.bs_write.exit486.i_crit_edge

bs_write.exit454.i.bs_write.exit486.i_crit_edge:  ; preds = %bs_write.exit454.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit486.i

bs_write.exit454.i.while.body.i469.i_crit_edge:   ; preds = %bs_write.exit454.i
  br label %while.body.i469.i

while.body.i469.i:                                ; preds = %if.end13.i485.i.while.body.i469.i_crit_edge, %bs_write.exit454.i.while.body.i469.i_crit_edge
  %bs.sroa.137.30.i = phi i32 [ 8, %if.end13.i485.i.while.body.i469.i_crit_edge ], [ %bs.sroa.137.29.i, %bs_write.exit454.i.while.body.i469.i_crit_edge ]
  %bs.sroa.29.30.i = phi ptr [ %incdec.ptr.i483.i, %if.end13.i485.i.while.body.i469.i_crit_edge ], [ %bs.sroa.29.29.i, %bs_write.exit454.i.while.body.i469.i_crit_edge ]
  %count.addr.050.i462.i = phi i32 [ %sub19.i478.i, %if.end13.i485.i.while.body.i469.i_crit_edge ], [ 1, %bs_write.exit454.i.while.body.i469.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i462.i, i32 %bs.sroa.137.30.i)
  %cmp5.i468.i = icmp ult i32 %count.addr.050.i462.i, %bs.sroa.137.30.i
  %62 = ptrtoint ptr %bs.sroa.29.30.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bs.sroa.29.30.i, align 1
  %conv.i470.i = zext i8 %63 to i32
  br i1 %cmp5.i468.i, label %if.then6.i475.i, label %if.end13.i485.i

if.then6.i475.i:                                  ; preds = %while.body.i469.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i470.i.le = zext i8 %63 to i32
  %shl8.i471.i = shl i32 %conv.i470.i.le, %count.addr.050.i462.i
  %conv9.i473.i = trunc i32 %shl8.i471.i to i8
  %64 = ptrtoint ptr %bs.sroa.29.30.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv9.i473.i, ptr %bs.sroa.29.30.i, align 1
  %sub12.i474.i = sub i32 %bs.sroa.137.30.i, %count.addr.050.i462.i
  br label %bs_write.exit486.i

if.end13.i485.i:                                  ; preds = %while.body.i469.i
  %shl17.i477.i = shl i32 %conv.i470.i, %bs.sroa.137.30.i
  %sub19.i478.i = sub i32 %count.addr.050.i462.i, %bs.sroa.137.30.i
  %conv21.i481.i = trunc i32 %shl17.i477.i to i8
  %65 = ptrtoint ptr %bs.sroa.29.30.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv21.i481.i, ptr %bs.sroa.29.30.i, align 1
  %incdec.ptr.i483.i = getelementptr i8, ptr %bs.sroa.29.30.i, i32 1
  %cmp1.i484.i = icmp sgt i32 %sub19.i478.i, 0
  br i1 %cmp1.i484.i, label %if.end13.i485.i.while.body.i469.i_crit_edge, label %if.end13.i485.i.bs_write.exit486.i_crit_edge

if.end13.i485.i.bs_write.exit486.i_crit_edge:     ; preds = %if.end13.i485.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit486.i

if.end13.i485.i.while.body.i469.i_crit_edge:      ; preds = %if.end13.i485.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i469.i

bs_write.exit486.i:                               ; preds = %if.end13.i485.i.bs_write.exit486.i_crit_edge, %if.then6.i475.i, %bs_write.exit454.i.bs_write.exit486.i_crit_edge
  %bs.sroa.137.31.i = phi i32 [ %sub12.i474.i, %if.then6.i475.i ], [ %bs.sroa.137.29.i, %bs_write.exit454.i.bs_write.exit486.i_crit_edge ], [ 8, %if.end13.i485.i.bs_write.exit486.i_crit_edge ]
  %bs.sroa.29.31.i = phi ptr [ %bs.sroa.29.30.i, %if.then6.i475.i ], [ %bs.sroa.29.29.i, %bs_write.exit454.i.bs_write.exit486.i_crit_edge ], [ %incdec.ptr.i483.i, %if.end13.i485.i.bs_write.exit486.i_crit_edge ]
  %cmp.not.i490.i = icmp ult ptr %bs.sroa.29.31.i, %add.ptr.i25.i
  br i1 %cmp.not.i490.i, label %bs_write.exit486.i.while.body.i501.i_crit_edge, label %bs_write.exit486.i.bs_write.exit518.i_crit_edge

bs_write.exit486.i.bs_write.exit518.i_crit_edge:  ; preds = %bs_write.exit486.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit518.i

bs_write.exit486.i.while.body.i501.i_crit_edge:   ; preds = %bs_write.exit486.i
  br label %while.body.i501.i

while.body.i501.i:                                ; preds = %if.end13.i517.i.while.body.i501.i_crit_edge, %bs_write.exit486.i.while.body.i501.i_crit_edge
  %bs.sroa.137.32.i = phi i32 [ 8, %if.end13.i517.i.while.body.i501.i_crit_edge ], [ %bs.sroa.137.31.i, %bs_write.exit486.i.while.body.i501.i_crit_edge ]
  %bs.sroa.29.32.i = phi ptr [ %incdec.ptr.i515.i, %if.end13.i517.i.while.body.i501.i_crit_edge ], [ %bs.sroa.29.31.i, %bs_write.exit486.i.while.body.i501.i_crit_edge ]
  %count.addr.050.i494.i = phi i32 [ %sub19.i510.i, %if.end13.i517.i.while.body.i501.i_crit_edge ], [ 1, %bs_write.exit486.i.while.body.i501.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i494.i, i32 %bs.sroa.137.32.i)
  %cmp5.i500.i = icmp ult i32 %count.addr.050.i494.i, %bs.sroa.137.32.i
  %66 = ptrtoint ptr %bs.sroa.29.32.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bs.sroa.29.32.i, align 1
  %conv.i502.i = zext i8 %67 to i32
  br i1 %cmp5.i500.i, label %if.then6.i507.i, label %if.end13.i517.i

if.then6.i507.i:                                  ; preds = %while.body.i501.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i502.i.le = zext i8 %67 to i32
  %shl8.i503.i = shl i32 %conv.i502.i.le, %count.addr.050.i494.i
  %conv9.i505.i = trunc i32 %shl8.i503.i to i8
  %68 = ptrtoint ptr %bs.sroa.29.32.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv9.i505.i, ptr %bs.sroa.29.32.i, align 1
  %sub12.i506.i = sub i32 %bs.sroa.137.32.i, %count.addr.050.i494.i
  br label %bs_write.exit518.i

if.end13.i517.i:                                  ; preds = %while.body.i501.i
  %shl17.i509.i = shl i32 %conv.i502.i, %bs.sroa.137.32.i
  %sub19.i510.i = sub i32 %count.addr.050.i494.i, %bs.sroa.137.32.i
  %conv21.i513.i = trunc i32 %shl17.i509.i to i8
  %69 = ptrtoint ptr %bs.sroa.29.32.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv21.i513.i, ptr %bs.sroa.29.32.i, align 1
  %incdec.ptr.i515.i = getelementptr i8, ptr %bs.sroa.29.32.i, i32 1
  %cmp1.i516.i = icmp sgt i32 %sub19.i510.i, 0
  br i1 %cmp1.i516.i, label %if.end13.i517.i.while.body.i501.i_crit_edge, label %if.end13.i517.i.bs_write.exit518.i_crit_edge

if.end13.i517.i.bs_write.exit518.i_crit_edge:     ; preds = %if.end13.i517.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit518.i

if.end13.i517.i.while.body.i501.i_crit_edge:      ; preds = %if.end13.i517.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i501.i

bs_write.exit518.i:                               ; preds = %if.end13.i517.i.bs_write.exit518.i_crit_edge, %if.then6.i507.i, %bs_write.exit486.i.bs_write.exit518.i_crit_edge
  %bs.sroa.137.33.i = phi i32 [ %sub12.i506.i, %if.then6.i507.i ], [ %bs.sroa.137.31.i, %bs_write.exit486.i.bs_write.exit518.i_crit_edge ], [ 8, %if.end13.i517.i.bs_write.exit518.i_crit_edge ]
  %bs.sroa.29.33.i = phi ptr [ %bs.sroa.29.32.i, %if.then6.i507.i ], [ %bs.sroa.29.31.i, %bs_write.exit486.i.bs_write.exit518.i_crit_edge ], [ %incdec.ptr.i515.i, %if.end13.i517.i.bs_write.exit518.i_crit_edge ]
  %cmp.i.i521.i = icmp ult ptr %bs.sroa.29.33.i, %add.ptr.i.i
  br i1 %cmp.i.i521.i, label %if.then.i.i527.i, label %bs_write.exit518.i.bs_write1.exit.i.i_crit_edge

bs_write.exit518.i.bs_write1.exit.i.i_crit_edge:  ; preds = %bs_write.exit518.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write1.exit.i.i

if.then.i.i527.i:                                 ; preds = %bs_write.exit518.i
  %70 = ptrtoint ptr %bs.sroa.29.33.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bs.sroa.29.33.i, align 1
  %shl.i.i522.i = shl i8 %71, 1
  %conv5.i.i523.i = or i8 %shl.i.i522.i, 1
  store i8 %conv5.i.i523.i, ptr %bs.sroa.29.33.i, align 1
  %dec.i.i525.i = add i32 %bs.sroa.137.33.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i525.i)
  %cmp7.i.i526.i = icmp eq i32 %dec.i.i525.i, 0
  br i1 %cmp7.i.i526.i, label %bs_write1.exit.i.thread.i, label %if.then.i.i527.i.bs_write1.exit.i.i_crit_edge

if.then.i.i527.i.bs_write1.exit.i.i_crit_edge:    ; preds = %if.then.i.i527.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write1.exit.i.i

bs_write1.exit.i.thread.i:                        ; preds = %if.then.i.i527.i
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr.i.i528.i = getelementptr i8, ptr %bs.sroa.29.33.i, i32 1
  br label %tw5864_h264_gen_sps_rbsp.exit

bs_write1.exit.i.i:                               ; preds = %if.then.i.i527.i.bs_write1.exit.i.i_crit_edge, %bs_write.exit518.i.bs_write1.exit.i.i_crit_edge
  %bs.sroa.137.34.i = phi i32 [ %dec.i.i525.i, %if.then.i.i527.i.bs_write1.exit.i.i_crit_edge ], [ %bs.sroa.137.33.i, %bs_write.exit518.i.bs_write1.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bs.sroa.137.34.i)
  %cmp.not.i531.i = icmp eq i32 %bs.sroa.137.34.i, 8
  br i1 %cmp.not.i531.i, label %bs_write1.exit.i.i.tw5864_h264_gen_sps_rbsp.exit_crit_edge, label %if.then.i536.i

bs_write1.exit.i.i.tw5864_h264_gen_sps_rbsp.exit_crit_edge: ; preds = %bs_write1.exit.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %tw5864_h264_gen_sps_rbsp.exit

if.then.i536.i:                                   ; preds = %bs_write1.exit.i.i
  %cmp.not.i.i533.i = icmp ult ptr %bs.sroa.29.33.i, %add.ptr.i25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bs.sroa.137.34.i)
  %cmp149.i.i534.i = icmp sgt i32 %bs.sroa.137.34.i, 0
  %or.cond.i.i535.i = and i1 %cmp.not.i.i533.i, %cmp149.i.i534.i
  br i1 %or.cond.i.i535.i, label %if.end13.i.i550.i, label %if.then.i536.i.tw5864_h264_gen_sps_rbsp.exit_crit_edge

if.then.i536.i.tw5864_h264_gen_sps_rbsp.exit_crit_edge: ; preds = %if.then.i536.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %tw5864_h264_gen_sps_rbsp.exit

if.end13.i.i550.i:                                ; preds = %if.then.i536.i
  call void @__sanitizer_cov_trace_pc() #4
  %72 = ptrtoint ptr %bs.sroa.29.33.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bs.sroa.29.33.i, align 1
  %conv15.i.i545.i = zext i8 %73 to i32
  %shl17.i.i546.i = shl i32 %conv15.i.i545.i, %bs.sroa.137.34.i
  %conv21.i.i547.i = trunc i32 %shl17.i.i546.i to i8
  store i8 %conv21.i.i547.i, ptr %bs.sroa.29.33.i, align 1
  %incdec.ptr.i8.i.i = getelementptr i8, ptr %bs.sroa.29.33.i, i32 1
  br label %tw5864_h264_gen_sps_rbsp.exit

tw5864_h264_gen_sps_rbsp.exit:                    ; preds = %if.end13.i.i550.i, %if.then.i536.i.tw5864_h264_gen_sps_rbsp.exit_crit_edge, %bs_write1.exit.i.i.tw5864_h264_gen_sps_rbsp.exit_crit_edge, %bs_write1.exit.i.thread.i
  %bs.sroa.29.36.i = phi ptr [ %bs.sroa.29.33.i, %bs_write1.exit.i.i.tw5864_h264_gen_sps_rbsp.exit_crit_edge ], [ %bs.sroa.29.33.i, %if.then.i536.i.tw5864_h264_gen_sps_rbsp.exit_crit_edge ], [ %incdec.ptr.i.i528.i, %bs_write1.exit.i.thread.i ], [ %incdec.ptr.i8.i.i, %if.end13.i.i550.i ]
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %bs.sroa.29.36.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %74 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %buf, align 4
  %add.ptr3 = getelementptr i8, ptr %75, i32 %sub.ptr.sub.i.i
  store ptr %add.ptr3, ptr %buf, align 4
  %76 = ptrtoint ptr %space_left to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %space_left, align 4
  %sub4 = sub i32 %77, %sub.ptr.sub.i.i
  store i32 %sub4, ptr %space_left, align 4
  %78 = load ptr, ptr %buf, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 1, ptr %78, align 1
  %80 = load ptr, ptr %buf, align 4
  %add.ptr5 = getelementptr i8, ptr %80, i32 4
  store ptr %add.ptr5, ptr %buf, align 4
  %81 = load i32, ptr %space_left, align 4
  %sub6 = add i32 %81, -4
  store i32 %sub6, ptr %space_left, align 4
  %82 = load ptr, ptr %buf, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 104, ptr %82, align 1
  %84 = load ptr, ptr %buf, align 4
  %add.ptr7 = getelementptr i8, ptr %84, i32 1
  store ptr %add.ptr7, ptr %buf, align 4
  %85 = load i32, ptr %space_left, align 4
  %sub8 = add i32 %85, -1
  store i32 %sub8, ptr %space_left, align 4
  %86 = load ptr, ptr %buf, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %86, i32 %sub8
  %cmp.i.i.i34 = icmp ugt ptr %add.ptr.i.i33, %86
  br i1 %cmp.i.i.i34, label %if.then.i.i28.i, label %tw5864_h264_gen_sps_rbsp.exit.bs_write_ue.exit31.i_crit_edge

tw5864_h264_gen_sps_rbsp.exit.bs_write_ue.exit31.i_crit_edge: ; preds = %tw5864_h264_gen_sps_rbsp.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit31.i

if.then.i.i28.i:                                  ; preds = %tw5864_h264_gen_sps_rbsp.exit
  call void @__sanitizer_cov_trace_pc() #4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %86, align 1
  %shl.i.i.i35 = shl i8 %88, 2
  %conv5.i.i24.i = or i8 %shl.i.i.i35, 3
  store i8 %conv5.i.i24.i, ptr %86, align 1
  br label %bs_write_ue.exit31.i

bs_write_ue.exit31.i:                             ; preds = %if.then.i.i28.i, %tw5864_h264_gen_sps_rbsp.exit.bs_write_ue.exit31.i_crit_edge
  %bs.sroa.115.1.i = phi i32 [ 6, %if.then.i.i28.i ], [ 8, %tw5864_h264_gen_sps_rbsp.exit.bs_write_ue.exit31.i_crit_edge ]
  %add.ptr.i34.i = getelementptr i8, ptr %add.ptr.i.i33, i32 -4
  %cmp.not.i.i36 = icmp ugt ptr %add.ptr.i34.i, %86
  br i1 %cmp.not.i.i36, label %if.then6.i56.i, label %bs_write_ue.exit31.i.bs_write.exit67.i_crit_edge

bs_write_ue.exit31.i.bs_write.exit67.i_crit_edge: ; preds = %bs_write_ue.exit31.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit67.i

if.then6.i56.i:                                   ; preds = %bs_write_ue.exit31.i
  call void @__sanitizer_cov_trace_pc() #4
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %86, align 1
  %shl8.i52.i = shl i8 %90, 2
  store i8 %shl8.i52.i, ptr %86, align 1
  %sub12.i55.i = add nsw i32 %bs.sroa.115.1.i, -2
  br label %bs_write.exit67.i

bs_write.exit67.i:                                ; preds = %if.then6.i56.i, %bs_write_ue.exit31.i.bs_write.exit67.i_crit_edge
  %bs.sroa.115.5.i = phi i32 [ %sub12.i55.i, %if.then6.i56.i ], [ %bs.sroa.115.1.i, %bs_write_ue.exit31.i.bs_write.exit67.i_crit_edge ]
  %cmp.i.i70.i = icmp ult ptr %86, %add.ptr.i.i33
  br i1 %cmp.i.i70.i, label %if.then.i.i76.i, label %bs_write.exit67.i.bs_write_ue.exit79.i_crit_edge

bs_write.exit67.i.bs_write_ue.exit79.i_crit_edge: ; preds = %bs_write.exit67.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit79.i

if.then.i.i76.i:                                  ; preds = %bs_write.exit67.i
  call void @__sanitizer_cov_trace_pc() #4
  %91 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %86, align 1
  %shl.i.i71.i = shl i8 %92, 1
  %conv5.i.i72.i = or i8 %shl.i.i71.i, 1
  store i8 %conv5.i.i72.i, ptr %86, align 1
  %dec.i.i74.i = add nsw i32 %bs.sroa.115.5.i, -1
  br label %bs_write_ue.exit79.i

bs_write_ue.exit79.i:                             ; preds = %if.then.i.i76.i, %bs_write.exit67.i.bs_write_ue.exit79.i_crit_edge
  %bs.sroa.115.6.i = phi i32 [ %bs.sroa.115.5.i, %bs_write.exit67.i.bs_write_ue.exit79.i_crit_edge ], [ %dec.i.i74.i, %if.then.i.i76.i ]
  %cmp.i.i82.i = icmp ult ptr %86, %add.ptr.i.i33
  br i1 %cmp.i.i82.i, label %if.then.i.i88.i, label %bs_write_ue.exit79.i.bs_write_ue.exit91.i_crit_edge

bs_write_ue.exit79.i.bs_write_ue.exit91.i_crit_edge: ; preds = %bs_write_ue.exit79.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit91.i

if.then.i.i88.i:                                  ; preds = %bs_write_ue.exit79.i
  call void @__sanitizer_cov_trace_pc() #4
  %93 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %86, align 1
  %shl.i.i83.i = shl i8 %94, 1
  %conv5.i.i84.i = or i8 %shl.i.i83.i, 1
  store i8 %conv5.i.i84.i, ptr %86, align 1
  %dec.i.i86.i = add nsw i32 %bs.sroa.115.6.i, -1
  br label %bs_write_ue.exit91.i

bs_write_ue.exit91.i:                             ; preds = %if.then.i.i88.i, %bs_write_ue.exit79.i.bs_write_ue.exit91.i_crit_edge
  %bs.sroa.115.7.i = phi i32 [ %bs.sroa.115.6.i, %bs_write_ue.exit79.i.bs_write_ue.exit91.i_crit_edge ], [ %dec.i.i86.i, %if.then.i.i88.i ]
  %cmp.i.i94.i = icmp ult ptr %86, %add.ptr.i.i33
  br i1 %cmp.i.i94.i, label %if.then.i.i100.i, label %bs_write_ue.exit91.i.bs_write_ue.exit103.i_crit_edge

bs_write_ue.exit91.i.bs_write_ue.exit103.i_crit_edge: ; preds = %bs_write_ue.exit91.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit103.i

if.then.i.i100.i:                                 ; preds = %bs_write_ue.exit91.i
  call void @__sanitizer_cov_trace_pc() #4
  %95 = ptrtoint ptr %86 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %86, align 1
  %shl.i.i95.i = shl i8 %96, 1
  %conv5.i.i96.i = or i8 %shl.i.i95.i, 1
  store i8 %conv5.i.i96.i, ptr %86, align 1
  %dec.i.i98.i = add nsw i32 %bs.sroa.115.7.i, -1
  br label %bs_write_ue.exit103.i

bs_write_ue.exit103.i:                            ; preds = %if.then.i.i100.i, %bs_write_ue.exit91.i.bs_write_ue.exit103.i_crit_edge
  %bs.sroa.115.8.i = phi i32 [ %bs.sroa.115.7.i, %bs_write_ue.exit91.i.bs_write_ue.exit103.i_crit_edge ], [ %dec.i.i98.i, %if.then.i.i100.i ]
  %cmp.not.i107.i = icmp ult ptr %86, %add.ptr.i34.i
  br i1 %cmp.not.i107.i, label %bs_write_ue.exit103.i.while.body.i118.i_crit_edge, label %bs_write_ue.exit103.i.bs_write.exit135.i_crit_edge

bs_write_ue.exit103.i.bs_write.exit135.i_crit_edge: ; preds = %bs_write_ue.exit103.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit135.i

bs_write_ue.exit103.i.while.body.i118.i_crit_edge: ; preds = %bs_write_ue.exit103.i
  br label %while.body.i118.i

while.body.i118.i:                                ; preds = %if.end13.i134.i.while.body.i118.i_crit_edge, %bs_write_ue.exit103.i.while.body.i118.i_crit_edge
  %bs.sroa.115.9.i = phi i32 [ 8, %if.end13.i134.i.while.body.i118.i_crit_edge ], [ %bs.sroa.115.8.i, %bs_write_ue.exit103.i.while.body.i118.i_crit_edge ]
  %bs.sroa.26.9.i = phi ptr [ %incdec.ptr.i132.i, %if.end13.i134.i.while.body.i118.i_crit_edge ], [ %86, %bs_write_ue.exit103.i.while.body.i118.i_crit_edge ]
  %count.addr.050.i111.i = phi i32 [ %sub19.i127.i, %if.end13.i134.i.while.body.i118.i_crit_edge ], [ 1, %bs_write_ue.exit103.i.while.body.i118.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i111.i, i32 %bs.sroa.115.9.i)
  %cmp5.i117.i = icmp ult i32 %count.addr.050.i111.i, %bs.sroa.115.9.i
  %97 = ptrtoint ptr %bs.sroa.26.9.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %bs.sroa.26.9.i, align 1
  %conv.i119.i = zext i8 %98 to i32
  br i1 %cmp5.i117.i, label %if.then6.i124.i, label %if.end13.i134.i

if.then6.i124.i:                                  ; preds = %while.body.i118.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i119.i.le = zext i8 %98 to i32
  %shl8.i120.i = shl i32 %conv.i119.i.le, %count.addr.050.i111.i
  %conv9.i122.i = trunc i32 %shl8.i120.i to i8
  %99 = ptrtoint ptr %bs.sroa.26.9.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv9.i122.i, ptr %bs.sroa.26.9.i, align 1
  %sub12.i123.i = sub nsw i32 %bs.sroa.115.9.i, %count.addr.050.i111.i
  br label %bs_write.exit135.i

if.end13.i134.i:                                  ; preds = %while.body.i118.i
  %shl17.i126.i = shl nuw nsw i32 %conv.i119.i, %bs.sroa.115.9.i
  %sub19.i127.i = sub i32 %count.addr.050.i111.i, %bs.sroa.115.9.i
  %conv21.i130.i = trunc i32 %shl17.i126.i to i8
  %100 = ptrtoint ptr %bs.sroa.26.9.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv21.i130.i, ptr %bs.sroa.26.9.i, align 1
  %incdec.ptr.i132.i = getelementptr i8, ptr %bs.sroa.26.9.i, i32 1
  %cmp1.i133.i = icmp sgt i32 %sub19.i127.i, 0
  br i1 %cmp1.i133.i, label %if.end13.i134.i.while.body.i118.i_crit_edge, label %if.end13.i134.i.bs_write.exit135.i_crit_edge

if.end13.i134.i.bs_write.exit135.i_crit_edge:     ; preds = %if.end13.i134.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit135.i

if.end13.i134.i.while.body.i118.i_crit_edge:      ; preds = %if.end13.i134.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i118.i

bs_write.exit135.i:                               ; preds = %if.end13.i134.i.bs_write.exit135.i_crit_edge, %if.then6.i124.i, %bs_write_ue.exit103.i.bs_write.exit135.i_crit_edge
  %bs.sroa.115.10.i = phi i32 [ %sub12.i123.i, %if.then6.i124.i ], [ %bs.sroa.115.8.i, %bs_write_ue.exit103.i.bs_write.exit135.i_crit_edge ], [ 8, %if.end13.i134.i.bs_write.exit135.i_crit_edge ]
  %bs.sroa.26.10.i = phi ptr [ %bs.sroa.26.9.i, %if.then6.i124.i ], [ %86, %bs_write_ue.exit103.i.bs_write.exit135.i_crit_edge ], [ %incdec.ptr.i132.i, %if.end13.i134.i.bs_write.exit135.i_crit_edge ]
  %cmp.not.i139.i = icmp ult ptr %bs.sroa.26.10.i, %add.ptr.i34.i
  br i1 %cmp.not.i139.i, label %bs_write.exit135.i.while.body.i150.i_crit_edge, label %bs_write.exit135.i.bs_write.exit167.i_crit_edge

bs_write.exit135.i.bs_write.exit167.i_crit_edge:  ; preds = %bs_write.exit135.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit167.i

bs_write.exit135.i.while.body.i150.i_crit_edge:   ; preds = %bs_write.exit135.i
  br label %while.body.i150.i

while.body.i150.i:                                ; preds = %if.end13.i166.i.while.body.i150.i_crit_edge, %bs_write.exit135.i.while.body.i150.i_crit_edge
  %bs.sroa.115.11.i = phi i32 [ 8, %if.end13.i166.i.while.body.i150.i_crit_edge ], [ %bs.sroa.115.10.i, %bs_write.exit135.i.while.body.i150.i_crit_edge ]
  %bs.sroa.26.11.i = phi ptr [ %incdec.ptr.i164.i, %if.end13.i166.i.while.body.i150.i_crit_edge ], [ %bs.sroa.26.10.i, %bs_write.exit135.i.while.body.i150.i_crit_edge ]
  %count.addr.050.i143.i = phi i32 [ %sub19.i159.i, %if.end13.i166.i.while.body.i150.i_crit_edge ], [ 2, %bs_write.exit135.i.while.body.i150.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i143.i, i32 %bs.sroa.115.11.i)
  %cmp5.i149.i = icmp ult i32 %count.addr.050.i143.i, %bs.sroa.115.11.i
  %101 = ptrtoint ptr %bs.sroa.26.11.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %bs.sroa.26.11.i, align 1
  %conv.i151.i = zext i8 %102 to i32
  br i1 %cmp5.i149.i, label %if.then6.i156.i, label %if.end13.i166.i

if.then6.i156.i:                                  ; preds = %while.body.i150.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i151.i.le = zext i8 %102 to i32
  %shl8.i152.i = shl i32 %conv.i151.i.le, %count.addr.050.i143.i
  %conv9.i154.i = trunc i32 %shl8.i152.i to i8
  %103 = ptrtoint ptr %bs.sroa.26.11.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv9.i154.i, ptr %bs.sroa.26.11.i, align 1
  %sub12.i155.i = sub i32 %bs.sroa.115.11.i, %count.addr.050.i143.i
  br label %bs_write.exit167.i

if.end13.i166.i:                                  ; preds = %while.body.i150.i
  %shl17.i158.i = shl nuw nsw i32 %conv.i151.i, %bs.sroa.115.11.i
  %sub19.i159.i = sub i32 %count.addr.050.i143.i, %bs.sroa.115.11.i
  %conv21.i162.i = trunc i32 %shl17.i158.i to i8
  %104 = ptrtoint ptr %bs.sroa.26.11.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv21.i162.i, ptr %bs.sroa.26.11.i, align 1
  %incdec.ptr.i164.i = getelementptr i8, ptr %bs.sroa.26.11.i, i32 1
  %cmp1.i165.i = icmp sgt i32 %sub19.i159.i, 0
  br i1 %cmp1.i165.i, label %if.end13.i166.i.while.body.i150.i_crit_edge, label %if.end13.i166.i.bs_write.exit167.i_crit_edge

if.end13.i166.i.bs_write.exit167.i_crit_edge:     ; preds = %if.end13.i166.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit167.i

if.end13.i166.i.while.body.i150.i_crit_edge:      ; preds = %if.end13.i166.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i150.i

bs_write.exit167.i:                               ; preds = %if.end13.i166.i.bs_write.exit167.i_crit_edge, %if.then6.i156.i, %bs_write.exit135.i.bs_write.exit167.i_crit_edge
  %bs.sroa.115.12.i = phi i32 [ %sub12.i155.i, %if.then6.i156.i ], [ %bs.sroa.115.10.i, %bs_write.exit135.i.bs_write.exit167.i_crit_edge ], [ 8, %if.end13.i166.i.bs_write.exit167.i_crit_edge ]
  %bs.sroa.26.12.i = phi ptr [ %bs.sroa.26.11.i, %if.then6.i156.i ], [ %bs.sroa.26.10.i, %bs_write.exit135.i.bs_write.exit167.i_crit_edge ], [ %incdec.ptr.i164.i, %if.end13.i166.i.bs_write.exit167.i_crit_edge ]
  %sub.i = add i32 %qp, -26
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i.i = icmp slt i32 %sub.i, 1
  %.neg.i.i39 = mul i32 %sub.i, -2
  %mul1.i.i = shl i32 %sub.i, 1
  %sub2.i.i = add i32 %mul1.i.i, -1
  %cond.i.i = select i1 %cmp.i.i, i32 %.neg.i.i39, i32 %sub2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %cmp.i283.i = icmp eq i32 %cond.i.i, 0
  br i1 %cmp.i283.i, label %if.then.i287.i, label %if.else.i.i41

if.then.i287.i:                                   ; preds = %bs_write.exit167.i
  %cmp.i.i286.i = icmp ult ptr %bs.sroa.26.12.i, %add.ptr.i.i33
  br i1 %cmp.i.i286.i, label %if.then.i.i293.i, label %if.then.i287.i.if.then.i320.i_crit_edge

if.then.i287.i.if.then.i320.i_crit_edge:          ; preds = %if.then.i287.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then.i320.i

if.then.i.i293.i:                                 ; preds = %if.then.i287.i
  call void @__sanitizer_cov_trace_pc() #4
  %105 = ptrtoint ptr %bs.sroa.26.12.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %bs.sroa.26.12.i, align 1
  %shl.i.i288.i = shl i8 %106, 1
  %conv5.i.i289.i = or i8 %shl.i.i288.i, 1
  store i8 %conv5.i.i289.i, ptr %bs.sroa.26.12.i, align 1
  %dec.i.i291.i = add i32 %bs.sroa.115.12.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i291.i)
  %cmp7.i.i292.i = icmp eq i32 %dec.i.i291.i, 0
  %spec.select523.idx.i = zext i1 %cmp7.i.i292.i to i32
  %spec.select523.i = getelementptr i8, ptr %bs.sroa.26.12.i, i32 %spec.select523.idx.i
  %spec.select524.i = select i1 %cmp7.i.i292.i, i32 8, i32 %dec.i.i291.i
  br label %if.then.i320.i

if.else.i.i41:                                    ; preds = %bs_write.exit167.i
  %inc.i.i = add i32 %cond.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %tobool.not.i.i.i = icmp ne i32 %inc.i.i, 0
  %107 = tail call i32 @llvm.ctlz.i32(i32 %inc.i.i, i1 true) #2, !range !11
  %.neg.i296.i = mul nsw i32 %107, -2
  %cmp.not.i.i298.i = icmp ult ptr %bs.sroa.26.12.i, %add.ptr.i34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %.neg.i296.i)
  %cmp149.i16.i.i40 = icmp sgt i32 %.neg.i296.i, -63
  %cmp149.i.i299.i = select i1 %tobool.not.i.i.i, i1 %cmp149.i16.i.i40, i1 false
  %or.cond.i.i300.i = and i1 %cmp149.i.i299.i, %cmp.not.i.i298.i
  br i1 %or.cond.i.i300.i, label %while.body.lr.ph.i.i.i, label %if.else.i.i41.if.else.i339.i_crit_edge

if.else.i.i41.if.else.i339.i_crit_edge:           ; preds = %if.else.i.i41
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.i339.i

while.body.lr.ph.i.i.i:                           ; preds = %if.else.i.i41
  %sub.i.op.op.i.i42 = add nsw i32 %.neg.i296.i, 63
  br label %while.body.i.i303.i

while.body.i.i303.i:                              ; preds = %if.end13.i.i314.i.while.body.i.i303.i_crit_edge, %while.body.lr.ph.i.i.i
  %bs.sroa.115.13.i = phi i32 [ %bs.sroa.115.12.i, %while.body.lr.ph.i.i.i ], [ 8, %if.end13.i.i314.i.while.body.i.i303.i_crit_edge ]
  %bs.sroa.26.13.i = phi ptr [ %bs.sroa.26.12.i, %while.body.lr.ph.i.i.i ], [ %incdec.ptr.i9.i.i53, %if.end13.i.i314.i.while.body.i.i303.i_crit_edge ]
  %bits.addr.051.i.i.i43 = phi i32 [ %inc.i.i, %while.body.lr.ph.i.i.i ], [ %bits.addr.1.i.i.i48, %if.end13.i.i314.i.while.body.i.i303.i_crit_edge ]
  %count.addr.050.i.i301.i = phi i32 [ %sub.i.op.op.i.i42, %while.body.lr.ph.i.i.i ], [ %sub19.i.i.i50, %if.end13.i.i314.i.while.body.i.i303.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.addr.050.i.i301.i)
  %cmp2.i.i.i44 = icmp ult i32 %count.addr.050.i.i301.i, 32
  %notmask.i.i.i45 = shl nsw i32 -1, %count.addr.050.i.i301.i
  %sub.i8.i.i46 = xor i32 %notmask.i.i.i45, -1
  %and.i.i.i47 = select i1 %cmp2.i.i.i44, i32 %sub.i8.i.i46, i32 -1
  %bits.addr.1.i.i.i48 = and i32 %and.i.i.i47, %bits.addr.051.i.i.i43
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i.i301.i, i32 %bs.sroa.115.13.i)
  %cmp5.i.i302.i = icmp ult i32 %count.addr.050.i.i301.i, %bs.sroa.115.13.i
  %108 = ptrtoint ptr %bs.sroa.26.13.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %bs.sroa.26.13.i, align 1
  %conv.i.i304.i = zext i8 %109 to i32
  br i1 %cmp5.i.i302.i, label %if.then6.i.i308.i, label %if.end13.i.i314.i

if.then6.i.i308.i:                                ; preds = %while.body.i.i303.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i.i304.i.le = zext i8 %109 to i32
  %shl8.i.i305.i = shl i32 %conv.i.i304.i.le, %count.addr.050.i.i301.i
  %or.i.i.i49 = or i32 %shl8.i.i305.i, %bits.addr.1.i.i.i48
  %conv9.i.i306.i = trunc i32 %or.i.i.i49 to i8
  %110 = ptrtoint ptr %bs.sroa.26.13.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv9.i.i306.i, ptr %bs.sroa.26.13.i, align 1
  %sub12.i.i307.i = sub i32 %bs.sroa.115.13.i, %count.addr.050.i.i301.i
  br label %if.else.i339.i

if.end13.i.i314.i:                                ; preds = %while.body.i.i303.i
  %shl17.i.i310.i = shl i32 %conv.i.i304.i, %bs.sroa.115.13.i
  %sub19.i.i.i50 = sub i32 %count.addr.050.i.i301.i, %bs.sroa.115.13.i
  %shr.i.i.i51 = lshr i32 %bits.addr.1.i.i.i48, %sub19.i.i.i50
  %or20.i.i.i52 = or i32 %shl17.i.i310.i, %shr.i.i.i51
  %conv21.i.i311.i = trunc i32 %or20.i.i.i52 to i8
  %111 = ptrtoint ptr %bs.sroa.26.13.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv21.i.i311.i, ptr %bs.sroa.26.13.i, align 1
  %incdec.ptr.i9.i.i53 = getelementptr i8, ptr %bs.sroa.26.13.i, i32 1
  %cmp1.i.i313.i = icmp sgt i32 %sub19.i.i.i50, 0
  br i1 %cmp1.i.i313.i, label %if.end13.i.i314.i.while.body.i.i303.i_crit_edge, label %if.end13.i.i314.i.if.else.i339.i_crit_edge

if.end13.i.i314.i.if.else.i339.i_crit_edge:       ; preds = %if.end13.i.i314.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else.i339.i

if.end13.i.i314.i.while.body.i.i303.i_crit_edge:  ; preds = %if.end13.i.i314.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.i303.i

if.then.i320.i:                                   ; preds = %if.then.i.i293.i, %if.then.i287.i.if.then.i320.i_crit_edge
  %bs.sroa.26.14509.i = phi ptr [ %bs.sroa.26.12.i, %if.then.i287.i.if.then.i320.i_crit_edge ], [ %spec.select523.i, %if.then.i.i293.i ]
  %bs.sroa.115.14508.i = phi i32 [ %bs.sroa.115.12.i, %if.then.i287.i.if.then.i320.i_crit_edge ], [ %spec.select524.i, %if.then.i.i293.i ]
  %cmp.i.i319.i = icmp ult ptr %bs.sroa.26.14509.i, %add.ptr.i.i33
  br i1 %cmp.i.i319.i, label %if.then.i.i326.i, label %if.then.i320.i.bs_write_ue.exit368.i_crit_edge

if.then.i320.i.bs_write_ue.exit368.i_crit_edge:   ; preds = %if.then.i320.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit368.i

if.then.i.i326.i:                                 ; preds = %if.then.i320.i
  call void @__sanitizer_cov_trace_pc() #4
  %112 = ptrtoint ptr %bs.sroa.26.14509.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bs.sroa.26.14509.i, align 1
  %shl.i.i321.i = shl i8 %113, 1
  %conv5.i.i322.i = or i8 %shl.i.i321.i, 1
  store i8 %conv5.i.i322.i, ptr %bs.sroa.26.14509.i, align 1
  %dec.i.i324.i = add i32 %bs.sroa.115.14508.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i324.i)
  %cmp7.i.i325.i = icmp eq i32 %dec.i.i324.i, 0
  %spec.select525.i = select i1 %cmp7.i.i325.i, i32 8, i32 %dec.i.i324.i
  %spec.select526.idx.i = zext i1 %cmp7.i.i325.i to i32
  %spec.select526.i = getelementptr i8, ptr %bs.sroa.26.14509.i, i32 %spec.select526.idx.i
  br label %bs_write_ue.exit368.i

if.else.i339.i:                                   ; preds = %if.end13.i.i314.i.if.else.i339.i_crit_edge, %if.then6.i.i308.i, %if.else.i.i41.if.else.i339.i_crit_edge
  %bs.sroa.26.14514.i = phi ptr [ %bs.sroa.26.12.i, %if.else.i.i41.if.else.i339.i_crit_edge ], [ %bs.sroa.26.13.i, %if.then6.i.i308.i ], [ %incdec.ptr.i9.i.i53, %if.end13.i.i314.i.if.else.i339.i_crit_edge ]
  %bs.sroa.115.14513.i = phi i32 [ %bs.sroa.115.12.i, %if.else.i.i41.if.else.i339.i_crit_edge ], [ %sub12.i.i307.i, %if.then6.i.i308.i ], [ 8, %if.end13.i.i314.i.if.else.i339.i_crit_edge ]
  %cmp.not.i.i335.i = icmp ult ptr %bs.sroa.26.14514.i, %add.ptr.i34.i
  %or.cond.i.i338.i = and i1 %cmp149.i.i299.i, %cmp.not.i.i335.i
  br i1 %or.cond.i.i338.i, label %while.body.lr.ph.i.i342.i, label %if.else.i339.i.bs_write_ue.exit368.i_crit_edge

if.else.i339.i.bs_write_ue.exit368.i_crit_edge:   ; preds = %if.else.i339.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit368.i

while.body.lr.ph.i.i342.i:                        ; preds = %if.else.i339.i
  %sub.i.op.op.i340.i = add nsw i32 %.neg.i296.i, 63
  br label %while.body.i.i351.i

while.body.i.i351.i:                              ; preds = %if.end13.i.i367.i.while.body.i.i351.i_crit_edge, %while.body.lr.ph.i.i342.i
  %bs.sroa.115.15.i = phi i32 [ %bs.sroa.115.14513.i, %while.body.lr.ph.i.i342.i ], [ 8, %if.end13.i.i367.i.while.body.i.i351.i_crit_edge ]
  %bs.sroa.26.15.i = phi ptr [ %bs.sroa.26.14514.i, %while.body.lr.ph.i.i342.i ], [ %incdec.ptr.i9.i365.i, %if.end13.i.i367.i.while.body.i.i351.i_crit_edge ]
  %bits.addr.051.i.i343.i = phi i32 [ %inc.i.i, %while.body.lr.ph.i.i342.i ], [ %bits.addr.1.i.i349.i, %if.end13.i.i367.i.while.body.i.i351.i_crit_edge ]
  %count.addr.050.i.i344.i = phi i32 [ %sub.i.op.op.i340.i, %while.body.lr.ph.i.i342.i ], [ %sub19.i.i360.i, %if.end13.i.i367.i.while.body.i.i351.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.addr.050.i.i344.i)
  %cmp2.i.i345.i = icmp ult i32 %count.addr.050.i.i344.i, 32
  %notmask.i.i346.i = shl nsw i32 -1, %count.addr.050.i.i344.i
  %sub.i8.i347.i = xor i32 %notmask.i.i346.i, -1
  %and.i.i348.i = select i1 %cmp2.i.i345.i, i32 %sub.i8.i347.i, i32 -1
  %bits.addr.1.i.i349.i = and i32 %and.i.i348.i, %bits.addr.051.i.i343.i
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i.i344.i, i32 %bs.sroa.115.15.i)
  %cmp5.i.i350.i = icmp ult i32 %count.addr.050.i.i344.i, %bs.sroa.115.15.i
  %114 = ptrtoint ptr %bs.sroa.26.15.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %bs.sroa.26.15.i, align 1
  %conv.i.i352.i = zext i8 %115 to i32
  br i1 %cmp5.i.i350.i, label %if.then6.i.i357.i, label %if.end13.i.i367.i

if.then6.i.i357.i:                                ; preds = %while.body.i.i351.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i.i352.i.le = zext i8 %115 to i32
  %shl8.i.i353.i = shl i32 %conv.i.i352.i.le, %count.addr.050.i.i344.i
  %or.i.i354.i = or i32 %shl8.i.i353.i, %bits.addr.1.i.i349.i
  %conv9.i.i355.i = trunc i32 %or.i.i354.i to i8
  %116 = ptrtoint ptr %bs.sroa.26.15.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv9.i.i355.i, ptr %bs.sroa.26.15.i, align 1
  %sub12.i.i356.i = sub i32 %bs.sroa.115.15.i, %count.addr.050.i.i344.i
  br label %bs_write_ue.exit368.i

if.end13.i.i367.i:                                ; preds = %while.body.i.i351.i
  %shl17.i.i359.i = shl i32 %conv.i.i352.i, %bs.sroa.115.15.i
  %sub19.i.i360.i = sub i32 %count.addr.050.i.i344.i, %bs.sroa.115.15.i
  %shr.i.i361.i = lshr i32 %bits.addr.1.i.i349.i, %sub19.i.i360.i
  %or20.i.i362.i = or i32 %shl17.i.i359.i, %shr.i.i361.i
  %conv21.i.i363.i = trunc i32 %or20.i.i362.i to i8
  %117 = ptrtoint ptr %bs.sroa.26.15.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv21.i.i363.i, ptr %bs.sroa.26.15.i, align 1
  %incdec.ptr.i9.i365.i = getelementptr i8, ptr %bs.sroa.26.15.i, i32 1
  %cmp1.i.i366.i = icmp sgt i32 %sub19.i.i360.i, 0
  br i1 %cmp1.i.i366.i, label %if.end13.i.i367.i.while.body.i.i351.i_crit_edge, label %if.end13.i.i367.i.bs_write_ue.exit368.i_crit_edge

if.end13.i.i367.i.bs_write_ue.exit368.i_crit_edge: ; preds = %if.end13.i.i367.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit368.i

if.end13.i.i367.i.while.body.i.i351.i_crit_edge:  ; preds = %if.end13.i.i367.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.i351.i

bs_write_ue.exit368.i:                            ; preds = %if.end13.i.i367.i.bs_write_ue.exit368.i_crit_edge, %if.then6.i.i357.i, %if.else.i339.i.bs_write_ue.exit368.i_crit_edge, %if.then.i.i326.i, %if.then.i320.i.bs_write_ue.exit368.i_crit_edge
  %bs.sroa.115.16.i = phi i32 [ %bs.sroa.115.14508.i, %if.then.i320.i.bs_write_ue.exit368.i_crit_edge ], [ %sub12.i.i356.i, %if.then6.i.i357.i ], [ %bs.sroa.115.14513.i, %if.else.i339.i.bs_write_ue.exit368.i_crit_edge ], [ %spec.select525.i, %if.then.i.i326.i ], [ 8, %if.end13.i.i367.i.bs_write_ue.exit368.i_crit_edge ]
  %bs.sroa.26.16.i = phi ptr [ %bs.sroa.26.14509.i, %if.then.i320.i.bs_write_ue.exit368.i_crit_edge ], [ %bs.sroa.26.15.i, %if.then6.i.i357.i ], [ %bs.sroa.26.14514.i, %if.else.i339.i.bs_write_ue.exit368.i_crit_edge ], [ %spec.select526.i, %if.then.i.i326.i ], [ %incdec.ptr.i9.i365.i, %if.end13.i.i367.i.bs_write_ue.exit368.i_crit_edge ]
  %cmp.i.i371.i = icmp ult ptr %bs.sroa.26.16.i, %add.ptr.i.i33
  br i1 %cmp.i.i371.i, label %if.then.i.i378.i, label %bs_write_ue.exit368.i.bs_write_ue.exit381.i_crit_edge

bs_write_ue.exit368.i.bs_write_ue.exit381.i_crit_edge: ; preds = %bs_write_ue.exit368.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit381.i

if.then.i.i378.i:                                 ; preds = %bs_write_ue.exit368.i
  call void @__sanitizer_cov_trace_pc() #4
  %118 = ptrtoint ptr %bs.sroa.26.16.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %bs.sroa.26.16.i, align 1
  %shl.i.i373.i = shl i8 %119, 1
  %conv5.i.i374.i = or i8 %shl.i.i373.i, 1
  store i8 %conv5.i.i374.i, ptr %bs.sroa.26.16.i, align 1
  %dec.i.i376.i = add i32 %bs.sroa.115.16.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i376.i)
  %cmp7.i.i377.i = icmp eq i32 %dec.i.i376.i, 0
  %spec.select527.i = select i1 %cmp7.i.i377.i, i32 8, i32 %dec.i.i376.i
  %spec.select528.idx.i = zext i1 %cmp7.i.i377.i to i32
  %spec.select528.i = getelementptr i8, ptr %bs.sroa.26.16.i, i32 %spec.select528.idx.i
  br label %bs_write_ue.exit381.i

bs_write_ue.exit381.i:                            ; preds = %if.then.i.i378.i, %bs_write_ue.exit368.i.bs_write_ue.exit381.i_crit_edge
  %bs.sroa.115.17.i = phi i32 [ %bs.sroa.115.16.i, %bs_write_ue.exit368.i.bs_write_ue.exit381.i_crit_edge ], [ %spec.select527.i, %if.then.i.i378.i ]
  %bs.sroa.26.17.i = phi ptr [ %bs.sroa.26.16.i, %bs_write_ue.exit368.i.bs_write_ue.exit381.i_crit_edge ], [ %spec.select528.i, %if.then.i.i378.i ]
  %cmp.not.i176.i = icmp ult ptr %bs.sroa.26.17.i, %add.ptr.i34.i
  br i1 %cmp.not.i176.i, label %bs_write_ue.exit381.i.while.body.i187.i_crit_edge, label %bs_write_ue.exit381.i.bs_write.exit204.i_crit_edge

bs_write_ue.exit381.i.bs_write.exit204.i_crit_edge: ; preds = %bs_write_ue.exit381.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit204.i

bs_write_ue.exit381.i.while.body.i187.i_crit_edge: ; preds = %bs_write_ue.exit381.i
  br label %while.body.i187.i

while.body.i187.i:                                ; preds = %if.end13.i203.i.while.body.i187.i_crit_edge, %bs_write_ue.exit381.i.while.body.i187.i_crit_edge
  %bs.sroa.115.18.i = phi i32 [ 8, %if.end13.i203.i.while.body.i187.i_crit_edge ], [ %bs.sroa.115.17.i, %bs_write_ue.exit381.i.while.body.i187.i_crit_edge ]
  %bs.sroa.26.18.i = phi ptr [ %incdec.ptr.i201.i, %if.end13.i203.i.while.body.i187.i_crit_edge ], [ %bs.sroa.26.17.i, %bs_write_ue.exit381.i.while.body.i187.i_crit_edge ]
  %count.addr.050.i180.i = phi i32 [ %sub19.i196.i, %if.end13.i203.i.while.body.i187.i_crit_edge ], [ 1, %bs_write_ue.exit381.i.while.body.i187.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i180.i, i32 %bs.sroa.115.18.i)
  %cmp5.i186.i = icmp ult i32 %count.addr.050.i180.i, %bs.sroa.115.18.i
  %120 = ptrtoint ptr %bs.sroa.26.18.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %bs.sroa.26.18.i, align 1
  %conv.i188.i = zext i8 %121 to i32
  br i1 %cmp5.i186.i, label %if.then6.i193.i, label %if.end13.i203.i

if.then6.i193.i:                                  ; preds = %while.body.i187.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i188.i.le = zext i8 %121 to i32
  %shl8.i189.i = shl i32 %conv.i188.i.le, %count.addr.050.i180.i
  %conv9.i191.i = trunc i32 %shl8.i189.i to i8
  %122 = ptrtoint ptr %bs.sroa.26.18.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv9.i191.i, ptr %bs.sroa.26.18.i, align 1
  %sub12.i192.i = sub i32 %bs.sroa.115.18.i, %count.addr.050.i180.i
  br label %bs_write.exit204.i

if.end13.i203.i:                                  ; preds = %while.body.i187.i
  %shl17.i195.i = shl i32 %conv.i188.i, %bs.sroa.115.18.i
  %sub19.i196.i = sub i32 %count.addr.050.i180.i, %bs.sroa.115.18.i
  %conv21.i199.i = trunc i32 %shl17.i195.i to i8
  %123 = ptrtoint ptr %bs.sroa.26.18.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv21.i199.i, ptr %bs.sroa.26.18.i, align 1
  %incdec.ptr.i201.i = getelementptr i8, ptr %bs.sroa.26.18.i, i32 1
  %cmp1.i202.i = icmp sgt i32 %sub19.i196.i, 0
  br i1 %cmp1.i202.i, label %if.end13.i203.i.while.body.i187.i_crit_edge, label %if.end13.i203.i.bs_write.exit204.i_crit_edge

if.end13.i203.i.bs_write.exit204.i_crit_edge:     ; preds = %if.end13.i203.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit204.i

if.end13.i203.i.while.body.i187.i_crit_edge:      ; preds = %if.end13.i203.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i187.i

bs_write.exit204.i:                               ; preds = %if.end13.i203.i.bs_write.exit204.i_crit_edge, %if.then6.i193.i, %bs_write_ue.exit381.i.bs_write.exit204.i_crit_edge
  %bs.sroa.115.19.i = phi i32 [ %sub12.i192.i, %if.then6.i193.i ], [ %bs.sroa.115.17.i, %bs_write_ue.exit381.i.bs_write.exit204.i_crit_edge ], [ 8, %if.end13.i203.i.bs_write.exit204.i_crit_edge ]
  %bs.sroa.26.19.i = phi ptr [ %bs.sroa.26.18.i, %if.then6.i193.i ], [ %bs.sroa.26.17.i, %bs_write_ue.exit381.i.bs_write.exit204.i_crit_edge ], [ %incdec.ptr.i201.i, %if.end13.i203.i.bs_write.exit204.i_crit_edge ]
  %cmp.not.i208.i = icmp ult ptr %bs.sroa.26.19.i, %add.ptr.i34.i
  br i1 %cmp.not.i208.i, label %bs_write.exit204.i.while.body.i219.i_crit_edge, label %bs_write.exit204.i.bs_write.exit236.i_crit_edge

bs_write.exit204.i.bs_write.exit236.i_crit_edge:  ; preds = %bs_write.exit204.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit236.i

bs_write.exit204.i.while.body.i219.i_crit_edge:   ; preds = %bs_write.exit204.i
  br label %while.body.i219.i

while.body.i219.i:                                ; preds = %if.end13.i235.i.while.body.i219.i_crit_edge, %bs_write.exit204.i.while.body.i219.i_crit_edge
  %bs.sroa.115.20.i = phi i32 [ 8, %if.end13.i235.i.while.body.i219.i_crit_edge ], [ %bs.sroa.115.19.i, %bs_write.exit204.i.while.body.i219.i_crit_edge ]
  %bs.sroa.26.20.i = phi ptr [ %incdec.ptr.i233.i, %if.end13.i235.i.while.body.i219.i_crit_edge ], [ %bs.sroa.26.19.i, %bs_write.exit204.i.while.body.i219.i_crit_edge ]
  %count.addr.050.i212.i = phi i32 [ %sub19.i228.i, %if.end13.i235.i.while.body.i219.i_crit_edge ], [ 1, %bs_write.exit204.i.while.body.i219.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i212.i, i32 %bs.sroa.115.20.i)
  %cmp5.i218.i = icmp ult i32 %count.addr.050.i212.i, %bs.sroa.115.20.i
  %124 = ptrtoint ptr %bs.sroa.26.20.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %bs.sroa.26.20.i, align 1
  %conv.i220.i = zext i8 %125 to i32
  br i1 %cmp5.i218.i, label %if.then6.i225.i, label %if.end13.i235.i

if.then6.i225.i:                                  ; preds = %while.body.i219.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i220.i.le = zext i8 %125 to i32
  %shl8.i221.i = shl i32 %conv.i220.i.le, %count.addr.050.i212.i
  %conv9.i223.i = trunc i32 %shl8.i221.i to i8
  %126 = ptrtoint ptr %bs.sroa.26.20.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %conv9.i223.i, ptr %bs.sroa.26.20.i, align 1
  %sub12.i224.i = sub i32 %bs.sroa.115.20.i, %count.addr.050.i212.i
  br label %bs_write.exit236.i

if.end13.i235.i:                                  ; preds = %while.body.i219.i
  %shl17.i227.i = shl i32 %conv.i220.i, %bs.sroa.115.20.i
  %sub19.i228.i = sub i32 %count.addr.050.i212.i, %bs.sroa.115.20.i
  %conv21.i231.i = trunc i32 %shl17.i227.i to i8
  %127 = ptrtoint ptr %bs.sroa.26.20.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %conv21.i231.i, ptr %bs.sroa.26.20.i, align 1
  %incdec.ptr.i233.i = getelementptr i8, ptr %bs.sroa.26.20.i, i32 1
  %cmp1.i234.i = icmp sgt i32 %sub19.i228.i, 0
  br i1 %cmp1.i234.i, label %if.end13.i235.i.while.body.i219.i_crit_edge, label %if.end13.i235.i.bs_write.exit236.i_crit_edge

if.end13.i235.i.bs_write.exit236.i_crit_edge:     ; preds = %if.end13.i235.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit236.i

if.end13.i235.i.while.body.i219.i_crit_edge:      ; preds = %if.end13.i235.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i219.i

bs_write.exit236.i:                               ; preds = %if.end13.i235.i.bs_write.exit236.i_crit_edge, %if.then6.i225.i, %bs_write.exit204.i.bs_write.exit236.i_crit_edge
  %bs.sroa.115.21.i = phi i32 [ %sub12.i224.i, %if.then6.i225.i ], [ %bs.sroa.115.19.i, %bs_write.exit204.i.bs_write.exit236.i_crit_edge ], [ 8, %if.end13.i235.i.bs_write.exit236.i_crit_edge ]
  %bs.sroa.26.21.i = phi ptr [ %bs.sroa.26.20.i, %if.then6.i225.i ], [ %bs.sroa.26.19.i, %bs_write.exit204.i.bs_write.exit236.i_crit_edge ], [ %incdec.ptr.i233.i, %if.end13.i235.i.bs_write.exit236.i_crit_edge ]
  %cmp.not.i240.i = icmp ult ptr %bs.sroa.26.21.i, %add.ptr.i34.i
  br i1 %cmp.not.i240.i, label %bs_write.exit236.i.while.body.i251.i_crit_edge, label %bs_write.exit236.i.bs_write.exit268.i_crit_edge

bs_write.exit236.i.bs_write.exit268.i_crit_edge:  ; preds = %bs_write.exit236.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit268.i

bs_write.exit236.i.while.body.i251.i_crit_edge:   ; preds = %bs_write.exit236.i
  br label %while.body.i251.i

while.body.i251.i:                                ; preds = %if.end13.i267.i.while.body.i251.i_crit_edge, %bs_write.exit236.i.while.body.i251.i_crit_edge
  %bs.sroa.115.22.i = phi i32 [ 8, %if.end13.i267.i.while.body.i251.i_crit_edge ], [ %bs.sroa.115.21.i, %bs_write.exit236.i.while.body.i251.i_crit_edge ]
  %bs.sroa.26.22.i = phi ptr [ %incdec.ptr.i265.i, %if.end13.i267.i.while.body.i251.i_crit_edge ], [ %bs.sroa.26.21.i, %bs_write.exit236.i.while.body.i251.i_crit_edge ]
  %count.addr.050.i244.i = phi i32 [ %sub19.i260.i, %if.end13.i267.i.while.body.i251.i_crit_edge ], [ 1, %bs_write.exit236.i.while.body.i251.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i244.i, i32 %bs.sroa.115.22.i)
  %cmp5.i250.i = icmp ult i32 %count.addr.050.i244.i, %bs.sroa.115.22.i
  %128 = ptrtoint ptr %bs.sroa.26.22.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %bs.sroa.26.22.i, align 1
  %conv.i252.i = zext i8 %129 to i32
  br i1 %cmp5.i250.i, label %if.then6.i257.i, label %if.end13.i267.i

if.then6.i257.i:                                  ; preds = %while.body.i251.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i252.i.le = zext i8 %129 to i32
  %shl8.i253.i = shl i32 %conv.i252.i.le, %count.addr.050.i244.i
  %conv9.i255.i = trunc i32 %shl8.i253.i to i8
  %130 = ptrtoint ptr %bs.sroa.26.22.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv9.i255.i, ptr %bs.sroa.26.22.i, align 1
  %sub12.i256.i = sub i32 %bs.sroa.115.22.i, %count.addr.050.i244.i
  br label %bs_write.exit268.i

if.end13.i267.i:                                  ; preds = %while.body.i251.i
  %shl17.i259.i = shl i32 %conv.i252.i, %bs.sroa.115.22.i
  %sub19.i260.i = sub i32 %count.addr.050.i244.i, %bs.sroa.115.22.i
  %conv21.i263.i = trunc i32 %shl17.i259.i to i8
  %131 = ptrtoint ptr %bs.sroa.26.22.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv21.i263.i, ptr %bs.sroa.26.22.i, align 1
  %incdec.ptr.i265.i = getelementptr i8, ptr %bs.sroa.26.22.i, i32 1
  %cmp1.i266.i = icmp sgt i32 %sub19.i260.i, 0
  br i1 %cmp1.i266.i, label %if.end13.i267.i.while.body.i251.i_crit_edge, label %if.end13.i267.i.bs_write.exit268.i_crit_edge

if.end13.i267.i.bs_write.exit268.i_crit_edge:     ; preds = %if.end13.i267.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit268.i

if.end13.i267.i.while.body.i251.i_crit_edge:      ; preds = %if.end13.i267.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i251.i

bs_write.exit268.i:                               ; preds = %if.end13.i267.i.bs_write.exit268.i_crit_edge, %if.then6.i257.i, %bs_write.exit236.i.bs_write.exit268.i_crit_edge
  %bs.sroa.115.23.i = phi i32 [ %sub12.i256.i, %if.then6.i257.i ], [ %bs.sroa.115.21.i, %bs_write.exit236.i.bs_write.exit268.i_crit_edge ], [ 8, %if.end13.i267.i.bs_write.exit268.i_crit_edge ]
  %bs.sroa.26.23.i = phi ptr [ %bs.sroa.26.22.i, %if.then6.i257.i ], [ %bs.sroa.26.21.i, %bs_write.exit236.i.bs_write.exit268.i_crit_edge ], [ %incdec.ptr.i265.i, %if.end13.i267.i.bs_write.exit268.i_crit_edge ]
  %cmp.i.i271.i = icmp ult ptr %bs.sroa.26.23.i, %add.ptr.i.i33
  br i1 %cmp.i.i271.i, label %if.then.i.i277.i, label %bs_write.exit268.i.bs_write1.exit.i.i55_crit_edge

bs_write.exit268.i.bs_write1.exit.i.i55_crit_edge: ; preds = %bs_write.exit268.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write1.exit.i.i55

if.then.i.i277.i:                                 ; preds = %bs_write.exit268.i
  %132 = ptrtoint ptr %bs.sroa.26.23.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %bs.sroa.26.23.i, align 1
  %shl.i.i272.i = shl i8 %133, 1
  %conv5.i.i273.i = or i8 %shl.i.i272.i, 1
  store i8 %conv5.i.i273.i, ptr %bs.sroa.26.23.i, align 1
  %dec.i.i275.i = add i32 %bs.sroa.115.23.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i275.i)
  %cmp7.i.i276.i = icmp eq i32 %dec.i.i275.i, 0
  br i1 %cmp7.i.i276.i, label %bs_write1.exit.i.thread.i54, label %if.then.i.i277.i.bs_write1.exit.i.i55_crit_edge

if.then.i.i277.i.bs_write1.exit.i.i55_crit_edge:  ; preds = %if.then.i.i277.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write1.exit.i.i55

bs_write1.exit.i.thread.i54:                      ; preds = %if.then.i.i277.i
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr.i.i278.i = getelementptr i8, ptr %bs.sroa.26.23.i, i32 1
  br label %tw5864_h264_gen_pps_rbsp.exit

bs_write1.exit.i.i55:                             ; preds = %if.then.i.i277.i.bs_write1.exit.i.i55_crit_edge, %bs_write.exit268.i.bs_write1.exit.i.i55_crit_edge
  %bs.sroa.115.24.i = phi i32 [ %dec.i.i275.i, %if.then.i.i277.i.bs_write1.exit.i.i55_crit_edge ], [ %bs.sroa.115.23.i, %bs_write.exit268.i.bs_write1.exit.i.i55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bs.sroa.115.24.i)
  %cmp.not.i281.i = icmp eq i32 %bs.sroa.115.24.i, 8
  br i1 %cmp.not.i281.i, label %bs_write1.exit.i.i55.tw5864_h264_gen_pps_rbsp.exit_crit_edge, label %if.then.i.i59

bs_write1.exit.i.i55.tw5864_h264_gen_pps_rbsp.exit_crit_edge: ; preds = %bs_write1.exit.i.i55
  call void @__sanitizer_cov_trace_pc() #4
  br label %tw5864_h264_gen_pps_rbsp.exit

if.then.i.i59:                                    ; preds = %bs_write1.exit.i.i55
  %cmp.not.i.i.i56 = icmp ult ptr %bs.sroa.26.23.i, %add.ptr.i34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bs.sroa.115.24.i)
  %cmp149.i.i.i57 = icmp sgt i32 %bs.sroa.115.24.i, 0
  %or.cond.i.i.i58 = and i1 %cmp.not.i.i.i56, %cmp149.i.i.i57
  br i1 %or.cond.i.i.i58, label %if.end13.i.i.i64, label %if.then.i.i59.tw5864_h264_gen_pps_rbsp.exit_crit_edge

if.then.i.i59.tw5864_h264_gen_pps_rbsp.exit_crit_edge: ; preds = %if.then.i.i59
  call void @__sanitizer_cov_trace_pc() #4
  br label %tw5864_h264_gen_pps_rbsp.exit

if.end13.i.i.i64:                                 ; preds = %if.then.i.i59
  call void @__sanitizer_cov_trace_pc() #4
  %134 = ptrtoint ptr %bs.sroa.26.23.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %bs.sroa.26.23.i, align 1
  %conv15.i.i.i60 = zext i8 %135 to i32
  %shl17.i.i.i61 = shl i32 %conv15.i.i.i60, %bs.sroa.115.24.i
  %conv21.i.i.i62 = trunc i32 %shl17.i.i.i61 to i8
  store i8 %conv21.i.i.i62, ptr %bs.sroa.26.23.i, align 1
  %incdec.ptr.i8.i.i63 = getelementptr i8, ptr %bs.sroa.26.23.i, i32 1
  br label %tw5864_h264_gen_pps_rbsp.exit

tw5864_h264_gen_pps_rbsp.exit:                    ; preds = %if.end13.i.i.i64, %if.then.i.i59.tw5864_h264_gen_pps_rbsp.exit_crit_edge, %bs_write1.exit.i.i55.tw5864_h264_gen_pps_rbsp.exit_crit_edge, %bs_write1.exit.i.thread.i54
  %bs.sroa.26.26.i = phi ptr [ %bs.sroa.26.23.i, %bs_write1.exit.i.i55.tw5864_h264_gen_pps_rbsp.exit_crit_edge ], [ %bs.sroa.26.23.i, %if.then.i.i59.tw5864_h264_gen_pps_rbsp.exit_crit_edge ], [ %incdec.ptr.i.i278.i, %bs_write1.exit.i.thread.i54 ], [ %incdec.ptr.i8.i.i63, %if.end13.i.i.i64 ]
  %sub.ptr.lhs.cast.i.i65 = ptrtoint ptr %bs.sroa.26.26.i to i32
  %sub.ptr.rhs.cast.i.i66 = ptrtoint ptr %86 to i32
  %sub.ptr.sub.i.i67 = sub i32 %sub.ptr.lhs.cast.i.i65, %sub.ptr.rhs.cast.i.i66
  %136 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %buf, align 4
  %add.ptr10 = getelementptr i8, ptr %137, i32 %sub.ptr.sub.i.i67
  store ptr %add.ptr10, ptr %buf, align 4
  %138 = ptrtoint ptr %space_left to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %space_left, align 4
  %sub11 = sub i32 %139, %sub.ptr.sub.i.i67
  store i32 %sub11, ptr %space_left, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tw5864_h264_put_slice_header(ptr nocapture noundef %buf, ptr nocapture noundef %space_left, i32 noundef %idr_pic_id, i32 noundef %frame_gop_seqno, ptr nocapture noundef writeonly %tail_nb_bits, ptr nocapture noundef writeonly %tail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 1, ptr %1, align 1
  %3 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  store ptr %add.ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %space_left to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %space_left, align 4
  %sub = add i32 %5, -4
  store i32 %sub, ptr %space_left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frame_gop_seqno)
  %cmp = icmp eq i32 %frame_gop_seqno, 0
  %conv = select i1 %cmp, i8 37, i8 33
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %7, align 1
  %9 = load ptr, ptr %buf, align 4
  %add.ptr1 = getelementptr i8, ptr %9, i32 1
  store ptr %add.ptr1, ptr %buf, align 4
  %10 = ptrtoint ptr %space_left to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %space_left, align 4
  %sub2 = add i32 %11, -1
  store i32 %sub2, ptr %space_left, align 4
  %12 = load ptr, ptr %buf, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %sub2
  %cmp.i.i.i = icmp ugt ptr %add.ptr.i.i, %12
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %entry.bs_write_ue.exit.i_crit_edge

entry.bs_write_ue.exit.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %shl.i.i.i = shl i8 %14, 1
  %conv5.i.i.i = or i8 %shl.i.i.i, 1
  store i8 %conv5.i.i.i, ptr %12, align 1
  br label %bs_write_ue.exit.i

bs_write_ue.exit.i:                               ; preds = %if.then.i.i.i, %entry.bs_write_ue.exit.i_crit_edge
  %bs.sroa.86.0.i = phi i32 [ 7, %if.then.i.i.i ], [ 8, %entry.bs_write_ue.exit.i_crit_edge ]
  %inc.i.i = select i1 %cmp, i32 3, i32 6
  %15 = tail call i32 @llvm.ctlz.i32(i32 %inc.i.i, i1 true) #2, !range !11
  %.neg.i.i = mul nsw i32 %15, -2
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -4
  %cmp.not.i.i.i = icmp ugt ptr %add.ptr.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %.neg.i.i)
  %cmp149.i16.i.i = icmp sgt i32 %.neg.i.i, -63
  %or.cond.i.i.i = and i1 %cmp149.i16.i.i, %cmp.not.i.i.i
  br i1 %or.cond.i.i.i, label %while.body.lr.ph.i.i.i, label %bs_write_ue.exit.i.bs_write_ue.exit37.i_crit_edge

bs_write_ue.exit.i.bs_write_ue.exit37.i_crit_edge: ; preds = %bs_write_ue.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit37.i

while.body.lr.ph.i.i.i:                           ; preds = %bs_write_ue.exit.i
  %sub.i.op.op.i.i = add nsw i32 %.neg.i.i, 63
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end13.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %bs.sroa.86.1.i = phi i32 [ %bs.sroa.86.0.i, %while.body.lr.ph.i.i.i ], [ 8, %if.end13.i.i.i.while.body.i.i.i_crit_edge ]
  %bs.sroa.21.1.i = phi ptr [ %12, %while.body.lr.ph.i.i.i ], [ %incdec.ptr.i9.i.i, %if.end13.i.i.i.while.body.i.i.i_crit_edge ]
  %bits.addr.051.i.i.i = phi i32 [ %inc.i.i, %while.body.lr.ph.i.i.i ], [ %bits.addr.1.i.i.i, %if.end13.i.i.i.while.body.i.i.i_crit_edge ]
  %count.addr.050.i.i.i = phi i32 [ %sub.i.op.op.i.i, %while.body.lr.ph.i.i.i ], [ %sub19.i.i.i, %if.end13.i.i.i.while.body.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.addr.050.i.i.i)
  %cmp2.i.i.i = icmp ult i32 %count.addr.050.i.i.i, 32
  %notmask.i.i.i = shl nsw i32 -1, %count.addr.050.i.i.i
  %sub.i8.i.i = xor i32 %notmask.i.i.i, -1
  %and.i.i.i = select i1 %cmp2.i.i.i, i32 %sub.i8.i.i, i32 -1
  %bits.addr.1.i.i.i = and i32 %and.i.i.i, %bits.addr.051.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i.i.i, i32 %bs.sroa.86.1.i)
  %cmp5.i.i.i = icmp ult i32 %count.addr.050.i.i.i, %bs.sroa.86.1.i
  %16 = ptrtoint ptr %bs.sroa.21.1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bs.sroa.21.1.i, align 1
  %conv.i.i.i = zext i8 %17 to i32
  br i1 %cmp5.i.i.i, label %if.then6.i.i.i, label %if.end13.i.i.i

if.then6.i.i.i:                                   ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i.i.i.le = zext i8 %17 to i32
  %shl8.i.i.i = shl i32 %conv.i.i.i.le, %count.addr.050.i.i.i
  %or.i.i.i = or i32 %shl8.i.i.i, %bits.addr.1.i.i.i
  %conv9.i.i.i = trunc i32 %or.i.i.i to i8
  %18 = ptrtoint ptr %bs.sroa.21.1.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv9.i.i.i, ptr %bs.sroa.21.1.i, align 1
  %sub12.i.i.i = sub nsw i32 %bs.sroa.86.1.i, %count.addr.050.i.i.i
  br label %bs_write_ue.exit37.i

if.end13.i.i.i:                                   ; preds = %while.body.i.i.i
  %shl17.i.i.i = shl nuw nsw i32 %conv.i.i.i, %bs.sroa.86.1.i
  %sub19.i.i.i = sub i32 %count.addr.050.i.i.i, %bs.sroa.86.1.i
  %shr.i.i.i = lshr i32 %bits.addr.1.i.i.i, %sub19.i.i.i
  %or20.i.i.i = or i32 %shl17.i.i.i, %shr.i.i.i
  %conv21.i.i.i = trunc i32 %or20.i.i.i to i8
  %19 = ptrtoint ptr %bs.sroa.21.1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv21.i.i.i, ptr %bs.sroa.21.1.i, align 1
  %incdec.ptr.i9.i.i = getelementptr i8, ptr %bs.sroa.21.1.i, i32 1
  %cmp1.i.i.i = icmp sgt i32 %sub19.i.i.i, 0
  br i1 %cmp1.i.i.i, label %if.end13.i.i.i.while.body.i.i.i_crit_edge, label %if.end13.i.i.i.bs_write_ue.exit37.i_crit_edge

if.end13.i.i.i.bs_write_ue.exit37.i_crit_edge:    ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit37.i

if.end13.i.i.i.while.body.i.i.i_crit_edge:        ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.i.i

bs_write_ue.exit37.i:                             ; preds = %if.end13.i.i.i.bs_write_ue.exit37.i_crit_edge, %if.then6.i.i.i, %bs_write_ue.exit.i.bs_write_ue.exit37.i_crit_edge
  %bs.sroa.86.2.i = phi i32 [ %sub12.i.i.i, %if.then6.i.i.i ], [ %bs.sroa.86.0.i, %bs_write_ue.exit.i.bs_write_ue.exit37.i_crit_edge ], [ 8, %if.end13.i.i.i.bs_write_ue.exit37.i_crit_edge ]
  %bs.sroa.21.2.i = phi ptr [ %bs.sroa.21.1.i, %if.then6.i.i.i ], [ %12, %bs_write_ue.exit.i.bs_write_ue.exit37.i_crit_edge ], [ %incdec.ptr.i9.i.i, %if.end13.i.i.i.bs_write_ue.exit37.i_crit_edge ]
  %cmp.i.i40.i = icmp ult ptr %bs.sroa.21.2.i, %add.ptr.i.i
  br i1 %cmp.i.i40.i, label %if.then.i.i46.i, label %bs_write_ue.exit37.i.bs_write_ue.exit49.i_crit_edge

bs_write_ue.exit37.i.bs_write_ue.exit49.i_crit_edge: ; preds = %bs_write_ue.exit37.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit49.i

if.then.i.i46.i:                                  ; preds = %bs_write_ue.exit37.i
  call void @__sanitizer_cov_trace_pc() #4
  %20 = ptrtoint ptr %bs.sroa.21.2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bs.sroa.21.2.i, align 1
  %shl.i.i41.i = shl i8 %21, 1
  %conv5.i.i42.i = or i8 %shl.i.i41.i, 1
  store i8 %conv5.i.i42.i, ptr %bs.sroa.21.2.i, align 1
  %dec.i.i44.i = add nsw i32 %bs.sroa.86.2.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i44.i)
  %cmp7.i.i45.i = icmp eq i32 %dec.i.i44.i, 0
  %spec.select.i = select i1 %cmp7.i.i45.i, i32 8, i32 %dec.i.i44.i
  %spec.select321.idx.i = zext i1 %cmp7.i.i45.i to i32
  %spec.select321.i = getelementptr i8, ptr %bs.sroa.21.2.i, i32 %spec.select321.idx.i
  br label %bs_write_ue.exit49.i

bs_write_ue.exit49.i:                             ; preds = %if.then.i.i46.i, %bs_write_ue.exit37.i.bs_write_ue.exit49.i_crit_edge
  %bs.sroa.86.3.i = phi i32 [ %bs.sroa.86.2.i, %bs_write_ue.exit37.i.bs_write_ue.exit49.i_crit_edge ], [ %spec.select.i, %if.then.i.i46.i ]
  %bs.sroa.21.3.i = phi ptr [ %bs.sroa.21.2.i, %bs_write_ue.exit37.i.bs_write_ue.exit49.i_crit_edge ], [ %spec.select321.i, %if.then.i.i46.i ]
  %cmp.not.i.i = icmp ult ptr %bs.sroa.21.3.i, %add.ptr.i.i.i
  br i1 %cmp.not.i.i, label %bs_write_ue.exit49.i.while.body.i.i_crit_edge, label %bs_write_ue.exit49.i.bs_write.exit.i_crit_edge

bs_write_ue.exit49.i.bs_write.exit.i_crit_edge:   ; preds = %bs_write_ue.exit49.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit.i

bs_write_ue.exit49.i.while.body.i.i_crit_edge:    ; preds = %bs_write_ue.exit49.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end13.i.i.while.body.i.i_crit_edge, %bs_write_ue.exit49.i.while.body.i.i_crit_edge
  %bs.sroa.86.4.i = phi i32 [ 8, %if.end13.i.i.while.body.i.i_crit_edge ], [ %bs.sroa.86.3.i, %bs_write_ue.exit49.i.while.body.i.i_crit_edge ]
  %bs.sroa.21.4.i = phi ptr [ %incdec.ptr.i.i, %if.end13.i.i.while.body.i.i_crit_edge ], [ %bs.sroa.21.3.i, %bs_write_ue.exit49.i.while.body.i.i_crit_edge ]
  %bits.addr.051.i.i = phi i32 [ %bits.addr.1.i.i, %if.end13.i.i.while.body.i.i_crit_edge ], [ %frame_gop_seqno, %bs_write_ue.exit49.i.while.body.i.i_crit_edge ]
  %count.addr.050.i.i = phi i32 [ %sub19.i.i, %if.end13.i.i.while.body.i.i_crit_edge ], [ 7, %bs_write_ue.exit49.i.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.addr.050.i.i)
  %cmp2.i.i = icmp ult i32 %count.addr.050.i.i, 32
  %notmask.i.i = shl nsw i32 -1, %count.addr.050.i.i
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and.i.i = select i1 %cmp2.i.i, i32 %sub.i.i, i32 -1
  %bits.addr.1.i.i = and i32 %and.i.i, %bits.addr.051.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i.i, i32 %bs.sroa.86.4.i)
  %cmp5.i.i = icmp ult i32 %count.addr.050.i.i, %bs.sroa.86.4.i
  %22 = ptrtoint ptr %bs.sroa.21.4.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bs.sroa.21.4.i, align 1
  %conv.i.i = zext i8 %23 to i32
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.end13.i.i

if.then6.i.i:                                     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i.i.le = zext i8 %23 to i32
  %shl8.i.i = shl i32 %conv.i.i.le, %count.addr.050.i.i
  %or.i.i = or i32 %shl8.i.i, %bits.addr.1.i.i
  %conv9.i.i = trunc i32 %or.i.i to i8
  %24 = ptrtoint ptr %bs.sroa.21.4.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv9.i.i, ptr %bs.sroa.21.4.i, align 1
  %sub12.i.i = sub i32 %bs.sroa.86.4.i, %count.addr.050.i.i
  br label %bs_write.exit.i

if.end13.i.i:                                     ; preds = %while.body.i.i
  %shl17.i.i = shl nuw nsw i32 %conv.i.i, %bs.sroa.86.4.i
  %sub19.i.i = sub i32 %count.addr.050.i.i, %bs.sroa.86.4.i
  %shr.i.i = lshr i32 %bits.addr.1.i.i, %sub19.i.i
  %or20.i.i = or i32 %shl17.i.i, %shr.i.i
  %conv21.i.i = trunc i32 %or20.i.i to i8
  %25 = ptrtoint ptr %bs.sroa.21.4.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv21.i.i, ptr %bs.sroa.21.4.i, align 1
  %incdec.ptr.i.i = getelementptr i8, ptr %bs.sroa.21.4.i, i32 1
  %cmp1.i.i = icmp sgt i32 %sub19.i.i, 0
  br i1 %cmp1.i.i, label %if.end13.i.i.while.body.i.i_crit_edge, label %if.end13.i.i.bs_write.exit.i_crit_edge

if.end13.i.i.bs_write.exit.i_crit_edge:           ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit.i

if.end13.i.i.while.body.i.i_crit_edge:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.i

bs_write.exit.i:                                  ; preds = %if.end13.i.i.bs_write.exit.i_crit_edge, %if.then6.i.i, %bs_write_ue.exit49.i.bs_write.exit.i_crit_edge
  %bs.sroa.86.5.i = phi i32 [ %sub12.i.i, %if.then6.i.i ], [ %bs.sroa.86.3.i, %bs_write_ue.exit49.i.bs_write.exit.i_crit_edge ], [ 8, %if.end13.i.i.bs_write.exit.i_crit_edge ]
  %bs.sroa.21.5.i = phi ptr [ %bs.sroa.21.4.i, %if.then6.i.i ], [ %bs.sroa.21.3.i, %bs_write_ue.exit49.i.bs_write.exit.i_crit_edge ], [ %incdec.ptr.i.i, %if.end13.i.i.bs_write.exit.i_crit_edge ]
  br i1 %cmp, label %if.then.i, label %if.else.critedge.i

if.then.i:                                        ; preds = %bs_write.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idr_pic_id)
  %cmp.i.i = icmp eq i32 %idr_pic_id, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %cmp.i.i56.i = icmp ult ptr %bs.sroa.21.5.i, %add.ptr.i.i
  br i1 %cmp.i.i56.i, label %if.then.i.i62.i, label %if.then.i.i.bs_write_ue.exit101.i_crit_edge

if.then.i.i.bs_write_ue.exit101.i_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit101.i

if.then.i.i62.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %26 = ptrtoint ptr %bs.sroa.21.5.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bs.sroa.21.5.i, align 1
  %shl.i.i57.i = shl i8 %27, 1
  %conv5.i.i58.i = or i8 %shl.i.i57.i, 1
  store i8 %conv5.i.i58.i, ptr %bs.sroa.21.5.i, align 1
  %dec.i.i60.i = add i32 %bs.sroa.86.5.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i60.i)
  %cmp7.i.i61.i = icmp eq i32 %dec.i.i60.i, 0
  %spec.select322.i = select i1 %cmp7.i.i61.i, i32 8, i32 %dec.i.i60.i
  %spec.select323.idx.i = zext i1 %cmp7.i.i61.i to i32
  %spec.select323.i = getelementptr i8, ptr %bs.sroa.21.5.i, i32 %spec.select323.idx.i
  br label %bs_write_ue.exit101.i

if.else.i.i:                                      ; preds = %if.then.i
  %inc.i65.i = add i32 %idr_pic_id, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i65.i)
  %tobool.not.i.i.i = icmp ne i32 %inc.i65.i, 0
  %28 = tail call i32 @llvm.ctlz.i32(i32 %inc.i65.i, i1 true) #2, !range !11
  %.neg.i66.i = mul nsw i32 %28, -2
  %cmp.not.i.i70.i = icmp ult ptr %bs.sroa.21.5.i, %add.ptr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -63, i32 %.neg.i66.i)
  %cmp149.i16.i71.i = icmp sgt i32 %.neg.i66.i, -63
  %cmp149.i.i.i = select i1 %tobool.not.i.i.i, i1 %cmp149.i16.i71.i, i1 false
  %or.cond.i.i72.i = and i1 %cmp149.i.i.i, %cmp.not.i.i70.i
  br i1 %or.cond.i.i72.i, label %while.body.lr.ph.i.i75.i, label %if.else.i.i.bs_write_ue.exit101.i_crit_edge

if.else.i.i.bs_write_ue.exit101.i_crit_edge:      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit101.i

while.body.lr.ph.i.i75.i:                         ; preds = %if.else.i.i
  %sub.i.op.op.i73.i = add nsw i32 %.neg.i66.i, 63
  br label %while.body.i.i84.i

while.body.i.i84.i:                               ; preds = %if.end13.i.i100.i.while.body.i.i84.i_crit_edge, %while.body.lr.ph.i.i75.i
  %bs.sroa.86.6.i = phi i32 [ %bs.sroa.86.5.i, %while.body.lr.ph.i.i75.i ], [ 8, %if.end13.i.i100.i.while.body.i.i84.i_crit_edge ]
  %bs.sroa.21.6.i = phi ptr [ %bs.sroa.21.5.i, %while.body.lr.ph.i.i75.i ], [ %incdec.ptr.i9.i98.i, %if.end13.i.i100.i.while.body.i.i84.i_crit_edge ]
  %bits.addr.051.i.i76.i = phi i32 [ %inc.i65.i, %while.body.lr.ph.i.i75.i ], [ %bits.addr.1.i.i82.i, %if.end13.i.i100.i.while.body.i.i84.i_crit_edge ]
  %count.addr.050.i.i77.i = phi i32 [ %sub.i.op.op.i73.i, %while.body.lr.ph.i.i75.i ], [ %sub19.i.i93.i, %if.end13.i.i100.i.while.body.i.i84.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.addr.050.i.i77.i)
  %cmp2.i.i78.i = icmp ult i32 %count.addr.050.i.i77.i, 32
  %notmask.i.i79.i = shl nsw i32 -1, %count.addr.050.i.i77.i
  %sub.i8.i80.i = xor i32 %notmask.i.i79.i, -1
  %and.i.i81.i = select i1 %cmp2.i.i78.i, i32 %sub.i8.i80.i, i32 -1
  %bits.addr.1.i.i82.i = and i32 %and.i.i81.i, %bits.addr.051.i.i76.i
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i.i77.i, i32 %bs.sroa.86.6.i)
  %cmp5.i.i83.i = icmp ult i32 %count.addr.050.i.i77.i, %bs.sroa.86.6.i
  %29 = ptrtoint ptr %bs.sroa.21.6.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bs.sroa.21.6.i, align 1
  %conv.i.i85.i = zext i8 %30 to i32
  br i1 %cmp5.i.i83.i, label %if.then6.i.i90.i, label %if.end13.i.i100.i

if.then6.i.i90.i:                                 ; preds = %while.body.i.i84.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i.i85.i.le = zext i8 %30 to i32
  %shl8.i.i86.i = shl i32 %conv.i.i85.i.le, %count.addr.050.i.i77.i
  %or.i.i87.i = or i32 %shl8.i.i86.i, %bits.addr.1.i.i82.i
  %conv9.i.i88.i = trunc i32 %or.i.i87.i to i8
  %31 = ptrtoint ptr %bs.sroa.21.6.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv9.i.i88.i, ptr %bs.sroa.21.6.i, align 1
  %sub12.i.i89.i = sub i32 %bs.sroa.86.6.i, %count.addr.050.i.i77.i
  br label %bs_write_ue.exit101.i

if.end13.i.i100.i:                                ; preds = %while.body.i.i84.i
  %shl17.i.i92.i = shl i32 %conv.i.i85.i, %bs.sroa.86.6.i
  %sub19.i.i93.i = sub i32 %count.addr.050.i.i77.i, %bs.sroa.86.6.i
  %shr.i.i94.i = lshr i32 %bits.addr.1.i.i82.i, %sub19.i.i93.i
  %or20.i.i95.i = or i32 %shl17.i.i92.i, %shr.i.i94.i
  %conv21.i.i96.i = trunc i32 %or20.i.i95.i to i8
  %32 = ptrtoint ptr %bs.sroa.21.6.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv21.i.i96.i, ptr %bs.sroa.21.6.i, align 1
  %incdec.ptr.i9.i98.i = getelementptr i8, ptr %bs.sroa.21.6.i, i32 1
  %cmp1.i.i99.i = icmp sgt i32 %sub19.i.i93.i, 0
  br i1 %cmp1.i.i99.i, label %if.end13.i.i100.i.while.body.i.i84.i_crit_edge, label %if.end13.i.i100.i.bs_write_ue.exit101.i_crit_edge

if.end13.i.i100.i.bs_write_ue.exit101.i_crit_edge: ; preds = %if.end13.i.i100.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit101.i

if.end13.i.i100.i.while.body.i.i84.i_crit_edge:   ; preds = %if.end13.i.i100.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i.i84.i

bs_write_ue.exit101.i:                            ; preds = %if.end13.i.i100.i.bs_write_ue.exit101.i_crit_edge, %if.then6.i.i90.i, %if.else.i.i.bs_write_ue.exit101.i_crit_edge, %if.then.i.i62.i, %if.then.i.i.bs_write_ue.exit101.i_crit_edge
  %bs.sroa.86.7.i = phi i32 [ %bs.sroa.86.5.i, %if.then.i.i.bs_write_ue.exit101.i_crit_edge ], [ %sub12.i.i89.i, %if.then6.i.i90.i ], [ %bs.sroa.86.5.i, %if.else.i.i.bs_write_ue.exit101.i_crit_edge ], [ %spec.select322.i, %if.then.i.i62.i ], [ 8, %if.end13.i.i100.i.bs_write_ue.exit101.i_crit_edge ]
  %bs.sroa.21.7.i = phi ptr [ %bs.sroa.21.5.i, %if.then.i.i.bs_write_ue.exit101.i_crit_edge ], [ %bs.sroa.21.6.i, %if.then6.i.i90.i ], [ %bs.sroa.21.5.i, %if.else.i.i.bs_write_ue.exit101.i_crit_edge ], [ %spec.select323.i, %if.then.i.i62.i ], [ %incdec.ptr.i9.i98.i, %if.end13.i.i100.i.bs_write_ue.exit101.i_crit_edge ]
  %cmp.not.i105.i = icmp ult ptr %bs.sroa.21.7.i, %add.ptr.i.i.i
  br i1 %cmp.not.i105.i, label %bs_write_ue.exit101.i.while.body.i116.i_crit_edge, label %bs_write_ue.exit101.i.bs_write.exit133.i_crit_edge

bs_write_ue.exit101.i.bs_write.exit133.i_crit_edge: ; preds = %bs_write_ue.exit101.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit133.i

bs_write_ue.exit101.i.while.body.i116.i_crit_edge: ; preds = %bs_write_ue.exit101.i
  br label %while.body.i116.i

while.body.i116.i:                                ; preds = %if.end13.i132.i.while.body.i116.i_crit_edge, %bs_write_ue.exit101.i.while.body.i116.i_crit_edge
  %bs.sroa.86.8.i = phi i32 [ 8, %if.end13.i132.i.while.body.i116.i_crit_edge ], [ %bs.sroa.86.7.i, %bs_write_ue.exit101.i.while.body.i116.i_crit_edge ]
  %bs.sroa.21.8.i = phi ptr [ %incdec.ptr.i130.i, %if.end13.i132.i.while.body.i116.i_crit_edge ], [ %bs.sroa.21.7.i, %bs_write_ue.exit101.i.while.body.i116.i_crit_edge ]
  %count.addr.050.i109.i = phi i32 [ %sub19.i125.i, %if.end13.i132.i.while.body.i116.i_crit_edge ], [ 7, %bs_write_ue.exit101.i.while.body.i116.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i109.i, i32 %bs.sroa.86.8.i)
  %cmp5.i115.i = icmp ult i32 %count.addr.050.i109.i, %bs.sroa.86.8.i
  %33 = ptrtoint ptr %bs.sroa.21.8.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bs.sroa.21.8.i, align 1
  %conv.i117.i = zext i8 %34 to i32
  br i1 %cmp5.i115.i, label %if.then6.i122.i, label %if.end13.i132.i

if.then6.i122.i:                                  ; preds = %while.body.i116.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i117.i.le = zext i8 %34 to i32
  %shl8.i118.i = shl i32 %conv.i117.i.le, %count.addr.050.i109.i
  %conv9.i120.i = trunc i32 %shl8.i118.i to i8
  %35 = ptrtoint ptr %bs.sroa.21.8.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv9.i120.i, ptr %bs.sroa.21.8.i, align 1
  %sub12.i121.i = sub i32 %bs.sroa.86.8.i, %count.addr.050.i109.i
  br label %bs_write.exit133.i

if.end13.i132.i:                                  ; preds = %while.body.i116.i
  %shl17.i124.i = shl i32 %conv.i117.i, %bs.sroa.86.8.i
  %sub19.i125.i = sub i32 %count.addr.050.i109.i, %bs.sroa.86.8.i
  %conv21.i128.i = trunc i32 %shl17.i124.i to i8
  %36 = ptrtoint ptr %bs.sroa.21.8.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv21.i128.i, ptr %bs.sroa.21.8.i, align 1
  %incdec.ptr.i130.i = getelementptr i8, ptr %bs.sroa.21.8.i, i32 1
  %cmp1.i131.i = icmp sgt i32 %sub19.i125.i, 0
  br i1 %cmp1.i131.i, label %if.end13.i132.i.while.body.i116.i_crit_edge, label %if.end13.i132.i.bs_write.exit133.i_crit_edge

if.end13.i132.i.bs_write.exit133.i_crit_edge:     ; preds = %if.end13.i132.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit133.i

if.end13.i132.i.while.body.i116.i_crit_edge:      ; preds = %if.end13.i132.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i116.i

bs_write.exit133.i:                               ; preds = %if.end13.i132.i.bs_write.exit133.i_crit_edge, %if.then6.i122.i, %bs_write_ue.exit101.i.bs_write.exit133.i_crit_edge
  %bs.sroa.86.9.i = phi i32 [ %sub12.i121.i, %if.then6.i122.i ], [ %bs.sroa.86.7.i, %bs_write_ue.exit101.i.bs_write.exit133.i_crit_edge ], [ 8, %if.end13.i132.i.bs_write.exit133.i_crit_edge ]
  %bs.sroa.21.9.i = phi ptr [ %bs.sroa.21.8.i, %if.then6.i122.i ], [ %bs.sroa.21.7.i, %bs_write_ue.exit101.i.bs_write.exit133.i_crit_edge ], [ %incdec.ptr.i130.i, %if.end13.i132.i.bs_write.exit133.i_crit_edge ]
  %cmp.i136.i = icmp ult ptr %bs.sroa.21.9.i, %add.ptr.i.i
  br i1 %cmp.i136.i, label %if.then.i138.i, label %bs_write.exit133.i.bs_write1.exit.i_crit_edge

bs_write.exit133.i.bs_write1.exit.i_crit_edge:    ; preds = %bs_write.exit133.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write1.exit.i

if.then.i138.i:                                   ; preds = %bs_write.exit133.i
  call void @__sanitizer_cov_trace_pc() #4
  %37 = ptrtoint ptr %bs.sroa.21.9.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bs.sroa.21.9.i, align 1
  %shl.i.i = shl i8 %38, 1
  store i8 %shl.i.i, ptr %bs.sroa.21.9.i, align 1
  %dec.i.i = add i32 %bs.sroa.86.9.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp7.i.i = icmp eq i32 %dec.i.i, 0
  %spec.select324.i = select i1 %cmp7.i.i, i32 8, i32 %dec.i.i
  %spec.select325.idx.i = zext i1 %cmp7.i.i to i32
  %spec.select325.i = getelementptr i8, ptr %bs.sroa.21.9.i, i32 %spec.select325.idx.i
  br label %bs_write1.exit.i

bs_write1.exit.i:                                 ; preds = %if.then.i138.i, %bs_write.exit133.i.bs_write1.exit.i_crit_edge
  %bs.sroa.86.10.i = phi i32 [ %bs.sroa.86.9.i, %bs_write.exit133.i.bs_write1.exit.i_crit_edge ], [ %spec.select324.i, %if.then.i138.i ]
  %bs.sroa.21.10.i = phi ptr [ %bs.sroa.21.9.i, %bs_write.exit133.i.bs_write1.exit.i_crit_edge ], [ %spec.select325.i, %if.then.i138.i ]
  %cmp.i142.i = icmp ult ptr %bs.sroa.21.10.i, %add.ptr.i.i
  br i1 %cmp.i142.i, label %if.then.i147.i, label %bs_write1.exit.i.if.end4.i_crit_edge

bs_write1.exit.i.if.end4.i_crit_edge:             ; preds = %bs_write1.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4.i

if.then.i147.i:                                   ; preds = %bs_write1.exit.i
  call void @__sanitizer_cov_trace_pc() #4
  %39 = ptrtoint ptr %bs.sroa.21.10.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bs.sroa.21.10.i, align 1
  %shl.i143.i = shl i8 %40, 1
  store i8 %shl.i143.i, ptr %bs.sroa.21.10.i, align 1
  %dec.i145.i = add i32 %bs.sroa.86.10.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i145.i)
  %cmp7.i146.i = icmp eq i32 %dec.i145.i, 0
  %spec.select326.i = select i1 %cmp7.i146.i, i32 8, i32 %dec.i145.i
  %spec.select327.idx.i = zext i1 %cmp7.i146.i to i32
  %spec.select327.i = getelementptr i8, ptr %bs.sroa.21.10.i, i32 %spec.select327.idx.i
  br label %if.end4.i

if.else.critedge.i:                               ; preds = %bs_write.exit.i
  %cmp.not.i154.i = icmp ult ptr %bs.sroa.21.5.i, %add.ptr.i.i.i
  br i1 %cmp.not.i154.i, label %if.else.critedge.i.while.body.i165.i_crit_edge, label %if.else.critedge.i.bs_write.exit182.i_crit_edge

if.else.critedge.i.bs_write.exit182.i_crit_edge:  ; preds = %if.else.critedge.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit182.i

if.else.critedge.i.while.body.i165.i_crit_edge:   ; preds = %if.else.critedge.i
  br label %while.body.i165.i

while.body.i165.i:                                ; preds = %if.end13.i181.i.while.body.i165.i_crit_edge, %if.else.critedge.i.while.body.i165.i_crit_edge
  %bs.sroa.86.12.i = phi i32 [ 8, %if.end13.i181.i.while.body.i165.i_crit_edge ], [ %bs.sroa.86.5.i, %if.else.critedge.i.while.body.i165.i_crit_edge ]
  %bs.sroa.21.12.i = phi ptr [ %incdec.ptr.i179.i, %if.end13.i181.i.while.body.i165.i_crit_edge ], [ %bs.sroa.21.5.i, %if.else.critedge.i.while.body.i165.i_crit_edge ]
  %bits.addr.051.i157.i = phi i32 [ %bits.addr.1.i163.i, %if.end13.i181.i.while.body.i165.i_crit_edge ], [ %frame_gop_seqno, %if.else.critedge.i.while.body.i165.i_crit_edge ]
  %count.addr.050.i158.i = phi i32 [ %sub19.i174.i, %if.end13.i181.i.while.body.i165.i_crit_edge ], [ 7, %if.else.critedge.i.while.body.i165.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.addr.050.i158.i)
  %cmp2.i159.i = icmp ult i32 %count.addr.050.i158.i, 32
  %notmask.i160.i = shl nsw i32 -1, %count.addr.050.i158.i
  %sub.i161.i = xor i32 %notmask.i160.i, -1
  %and.i162.i = select i1 %cmp2.i159.i, i32 %sub.i161.i, i32 -1
  %bits.addr.1.i163.i = and i32 %and.i162.i, %bits.addr.051.i157.i
  call void @__sanitizer_cov_trace_cmp4(i32 %count.addr.050.i158.i, i32 %bs.sroa.86.12.i)
  %cmp5.i164.i = icmp ult i32 %count.addr.050.i158.i, %bs.sroa.86.12.i
  %41 = ptrtoint ptr %bs.sroa.21.12.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bs.sroa.21.12.i, align 1
  %conv.i166.i = zext i8 %42 to i32
  br i1 %cmp5.i164.i, label %if.then6.i171.i, label %if.end13.i181.i

if.then6.i171.i:                                  ; preds = %while.body.i165.i
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i166.i.le = zext i8 %42 to i32
  %shl8.i167.i = shl i32 %conv.i166.i.le, %count.addr.050.i158.i
  %or.i168.i = or i32 %shl8.i167.i, %bits.addr.1.i163.i
  %conv9.i169.i = trunc i32 %or.i168.i to i8
  %43 = ptrtoint ptr %bs.sroa.21.12.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv9.i169.i, ptr %bs.sroa.21.12.i, align 1
  %sub12.i170.i = sub i32 %bs.sroa.86.12.i, %count.addr.050.i158.i
  br label %bs_write.exit182.i

if.end13.i181.i:                                  ; preds = %while.body.i165.i
  %shl17.i173.i = shl i32 %conv.i166.i, %bs.sroa.86.12.i
  %sub19.i174.i = sub i32 %count.addr.050.i158.i, %bs.sroa.86.12.i
  %shr.i175.i = lshr i32 %bits.addr.1.i163.i, %sub19.i174.i
  %or20.i176.i = or i32 %shl17.i173.i, %shr.i175.i
  %conv21.i177.i = trunc i32 %or20.i176.i to i8
  %44 = ptrtoint ptr %bs.sroa.21.12.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv21.i177.i, ptr %bs.sroa.21.12.i, align 1
  %incdec.ptr.i179.i = getelementptr i8, ptr %bs.sroa.21.12.i, i32 1
  %cmp1.i180.i = icmp sgt i32 %sub19.i174.i, 0
  br i1 %cmp1.i180.i, label %if.end13.i181.i.while.body.i165.i_crit_edge, label %if.end13.i181.i.bs_write.exit182.i_crit_edge

if.end13.i181.i.bs_write.exit182.i_crit_edge:     ; preds = %if.end13.i181.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write.exit182.i

if.end13.i181.i.while.body.i165.i_crit_edge:      ; preds = %if.end13.i181.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body.i165.i

bs_write.exit182.i:                               ; preds = %if.end13.i181.i.bs_write.exit182.i_crit_edge, %if.then6.i171.i, %if.else.critedge.i.bs_write.exit182.i_crit_edge
  %bs.sroa.86.13.i = phi i32 [ %sub12.i170.i, %if.then6.i171.i ], [ %bs.sroa.86.5.i, %if.else.critedge.i.bs_write.exit182.i_crit_edge ], [ 8, %if.end13.i181.i.bs_write.exit182.i_crit_edge ]
  %bs.sroa.21.13.i = phi ptr [ %bs.sroa.21.12.i, %if.then6.i171.i ], [ %bs.sroa.21.5.i, %if.else.critedge.i.bs_write.exit182.i_crit_edge ], [ %incdec.ptr.i179.i, %if.end13.i181.i.bs_write.exit182.i_crit_edge ]
  %cmp.i185.i = icmp ult ptr %bs.sroa.21.13.i, %add.ptr.i.i
  br i1 %cmp.i185.i, label %if.then.i190.i, label %bs_write.exit182.i.bs_write1.exit193.i_crit_edge

bs_write.exit182.i.bs_write1.exit193.i_crit_edge: ; preds = %bs_write.exit182.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write1.exit193.i

if.then.i190.i:                                   ; preds = %bs_write.exit182.i
  call void @__sanitizer_cov_trace_pc() #4
  %45 = ptrtoint ptr %bs.sroa.21.13.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bs.sroa.21.13.i, align 1
  %shl.i186.i = shl i8 %46, 1
  store i8 %shl.i186.i, ptr %bs.sroa.21.13.i, align 1
  %dec.i188.i = add i32 %bs.sroa.86.13.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i188.i)
  %cmp7.i189.i = icmp eq i32 %dec.i188.i, 0
  %spec.select328.i = select i1 %cmp7.i189.i, i32 8, i32 %dec.i188.i
  %spec.select329.idx.i = zext i1 %cmp7.i189.i to i32
  %spec.select329.i = getelementptr i8, ptr %bs.sroa.21.13.i, i32 %spec.select329.idx.i
  br label %bs_write1.exit193.i

bs_write1.exit193.i:                              ; preds = %if.then.i190.i, %bs_write.exit182.i.bs_write1.exit193.i_crit_edge
  %bs.sroa.86.14.i = phi i32 [ %bs.sroa.86.13.i, %bs_write.exit182.i.bs_write1.exit193.i_crit_edge ], [ %spec.select328.i, %if.then.i190.i ]
  %bs.sroa.21.14.i = phi ptr [ %bs.sroa.21.13.i, %bs_write.exit182.i.bs_write1.exit193.i_crit_edge ], [ %spec.select329.i, %if.then.i190.i ]
  %cmp.i196.i = icmp ult ptr %bs.sroa.21.14.i, %add.ptr.i.i
  br i1 %cmp.i196.i, label %if.then.i201.i, label %bs_write1.exit193.i.bs_write1.exit204.i_crit_edge

bs_write1.exit193.i.bs_write1.exit204.i_crit_edge: ; preds = %bs_write1.exit193.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write1.exit204.i

if.then.i201.i:                                   ; preds = %bs_write1.exit193.i
  call void @__sanitizer_cov_trace_pc() #4
  %47 = ptrtoint ptr %bs.sroa.21.14.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bs.sroa.21.14.i, align 1
  %shl.i197.i = shl i8 %48, 1
  store i8 %shl.i197.i, ptr %bs.sroa.21.14.i, align 1
  %dec.i199.i = add i32 %bs.sroa.86.14.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i199.i)
  %cmp7.i200.i = icmp eq i32 %dec.i199.i, 0
  %spec.select330.i = select i1 %cmp7.i200.i, i32 8, i32 %dec.i199.i
  %spec.select331.idx.i = zext i1 %cmp7.i200.i to i32
  %spec.select331.i = getelementptr i8, ptr %bs.sroa.21.14.i, i32 %spec.select331.idx.i
  br label %bs_write1.exit204.i

bs_write1.exit204.i:                              ; preds = %if.then.i201.i, %bs_write1.exit193.i.bs_write1.exit204.i_crit_edge
  %bs.sroa.86.15.i = phi i32 [ %bs.sroa.86.14.i, %bs_write1.exit193.i.bs_write1.exit204.i_crit_edge ], [ %spec.select330.i, %if.then.i201.i ]
  %bs.sroa.21.15.i = phi ptr [ %bs.sroa.21.14.i, %bs_write1.exit193.i.bs_write1.exit204.i_crit_edge ], [ %spec.select331.i, %if.then.i201.i ]
  %cmp.i207.i = icmp ult ptr %bs.sroa.21.15.i, %add.ptr.i.i
  br i1 %cmp.i207.i, label %if.then.i212.i, label %bs_write1.exit204.i.if.end4.i_crit_edge

bs_write1.exit204.i.if.end4.i_crit_edge:          ; preds = %bs_write1.exit204.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4.i

if.then.i212.i:                                   ; preds = %bs_write1.exit204.i
  call void @__sanitizer_cov_trace_pc() #4
  %49 = ptrtoint ptr %bs.sroa.21.15.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bs.sroa.21.15.i, align 1
  %shl.i208.i = shl i8 %50, 1
  store i8 %shl.i208.i, ptr %bs.sroa.21.15.i, align 1
  %dec.i210.i = add i32 %bs.sroa.86.15.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i210.i)
  %cmp7.i211.i = icmp eq i32 %dec.i210.i, 0
  %spec.select332.i = select i1 %cmp7.i211.i, i32 8, i32 %dec.i210.i
  %spec.select333.idx.i = zext i1 %cmp7.i211.i to i32
  %spec.select333.i = getelementptr i8, ptr %bs.sroa.21.15.i, i32 %spec.select333.idx.i
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i212.i, %bs_write1.exit204.i.if.end4.i_crit_edge, %if.then.i147.i, %bs_write1.exit.i.if.end4.i_crit_edge
  %bs.sroa.86.17.i = phi i32 [ %bs.sroa.86.10.i, %bs_write1.exit.i.if.end4.i_crit_edge ], [ %bs.sroa.86.15.i, %bs_write1.exit204.i.if.end4.i_crit_edge ], [ %spec.select326.i, %if.then.i147.i ], [ %spec.select332.i, %if.then.i212.i ]
  %bs.sroa.21.17.i = phi ptr [ %bs.sroa.21.10.i, %bs_write1.exit.i.if.end4.i_crit_edge ], [ %bs.sroa.21.15.i, %bs_write1.exit204.i.if.end4.i_crit_edge ], [ %spec.select327.i, %if.then.i147.i ], [ %spec.select333.i, %if.then.i212.i ]
  %cmp.i.i219.i = icmp ult ptr %bs.sroa.21.17.i, %add.ptr.i.i
  br i1 %cmp.i.i219.i, label %if.then.i.i226.i, label %if.end4.i.bs_write_ue.exit229.i_crit_edge

if.end4.i.bs_write_ue.exit229.i_crit_edge:        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit229.i

if.then.i.i226.i:                                 ; preds = %if.end4.i
  %51 = ptrtoint ptr %bs.sroa.21.17.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bs.sroa.21.17.i, align 1
  %shl.i.i221.i = shl i8 %52, 1
  %conv5.i.i222.i = or i8 %shl.i.i221.i, 1
  store i8 %conv5.i.i222.i, ptr %bs.sroa.21.17.i, align 1
  %dec.i.i224.i = add i32 %bs.sroa.86.17.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i224.i)
  %cmp7.i.i225.i = icmp eq i32 %dec.i.i224.i, 0
  br i1 %cmp7.i.i225.i, label %bs_write_ue.exit229.thread.i, label %if.then.i.i226.i.bs_write_ue.exit229.i_crit_edge

if.then.i.i226.i.bs_write_ue.exit229.i_crit_edge: ; preds = %if.then.i.i226.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %bs_write_ue.exit229.i

bs_write_ue.exit229.thread.i:                     ; preds = %if.then.i.i226.i
  call void @__sanitizer_cov_trace_pc() #4
  %incdec.ptr.i.i227.i = getelementptr i8, ptr %bs.sroa.21.17.i, i32 1
  br label %if.else12.i

bs_write_ue.exit229.i:                            ; preds = %if.then.i.i226.i.bs_write_ue.exit229.i_crit_edge, %if.end4.i.bs_write_ue.exit229.i_crit_edge
  %bs.sroa.86.18.i = phi i32 [ %dec.i.i224.i, %if.then.i.i226.i.bs_write_ue.exit229.i_crit_edge ], [ %bs.sroa.86.17.i, %if.end4.i.bs_write_ue.exit229.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bs.sroa.86.18.i)
  %cmp5.not.i = icmp eq i32 %bs.sroa.86.18.i, 8
  br i1 %cmp5.not.i, label %bs_write_ue.exit229.i.if.else12.i_crit_edge, label %if.then7.i

bs_write_ue.exit229.i.if.else12.i_crit_edge:      ; preds = %bs_write_ue.exit229.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else12.i

if.then7.i:                                       ; preds = %bs_write_ue.exit229.i
  call void @__sanitizer_cov_trace_pc() #4
  %53 = ptrtoint ptr %bs.sroa.21.17.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bs.sroa.21.17.i, align 1
  %conv8.i = zext i8 %54 to i32
  %shl.i = shl i32 %conv8.i, %bs.sroa.86.18.i
  %conv10.i = trunc i32 %shl.i to i8
  %55 = ptrtoint ptr %tail to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv10.i, ptr %tail, align 1
  %sub.i = sub i32 8, %bs.sroa.86.18.i
  br label %tw5864_h264_gen_slice_head.exit

if.else12.i:                                      ; preds = %bs_write_ue.exit229.i.if.else12.i_crit_edge, %bs_write_ue.exit229.thread.i
  %bs.sroa.21.18320.i = phi ptr [ %incdec.ptr.i.i227.i, %bs_write_ue.exit229.thread.i ], [ %bs.sroa.21.17.i, %bs_write_ue.exit229.i.if.else12.i_crit_edge ]
  %56 = ptrtoint ptr %tail to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %tail, align 1
  br label %tw5864_h264_gen_slice_head.exit

tw5864_h264_gen_slice_head.exit:                  ; preds = %if.else12.i, %if.then7.i
  %bs.sroa.21.18319.i = phi ptr [ %bs.sroa.21.18320.i, %if.else12.i ], [ %bs.sroa.21.17.i, %if.then7.i ]
  %storemerge.i = phi i32 [ 0, %if.else12.i ], [ %sub.i, %if.then7.i ]
  %57 = ptrtoint ptr %tail_nb_bits to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %storemerge.i, ptr %tail_nb_bits, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %bs.sroa.21.18319.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %58 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf, align 4
  %add.ptr3 = getelementptr i8, ptr %59, i32 %sub.ptr.sub.i.i
  store ptr %add.ptr3, ptr %buf, align 4
  %60 = ptrtoint ptr %space_left to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %space_left, align 4
  %sub4 = sub i32 %61, %sub.ptr.sub.i.i
  store i32 %sub4, ptr %space_left, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null, !1, !"marker", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/tw5864/tw5864-h264.c", i32 12, i32 11}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i32 0, i32 33}
