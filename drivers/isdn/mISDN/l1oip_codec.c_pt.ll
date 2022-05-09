; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/l1oip_codec.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/l1oip_codec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@table_com = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@table_dec = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@alaw_to_ulaw = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\AB+\E3c\8B\0B\C9I\BA:\F6v\9B\1B\D7W\A3#\DD]\83\03\C1A\B22\EBk\93\13\CFO\AF/\E7g\8F\0F\CDM\BE>\FE~\9F\1F\DB[\A7'\DF_\87\07\C5E\B66\EFo\97\17\D3S\A9)\E1a\89\09\C7G\B88\F2r\99\19\D5U\A1!\DC\\\81\01\BF?\B00\E9i\91\11\CEN\AD-\E5e\8D\0D\CBK\BC<\FAz\9D\1D\D9Y\A5%\DE^\85\05\C3C\B44\EDm\95\15\D1Q\AC,\E4d\8C\0C\CAJ\BB;\F8x\9C\1C\D8X\A4$\DE^\84\04\C2B\B33\ECl\94\14\D0P\B00\E8h\90\10\CEN\BF?\FE~\A0 \DC\\\A8(\E0`\88\08\C6F\B77\F0p\98\18\D4T\AA*\E2b\8A\0A\C8H\B99\F4t\9A\1A\D6V\A2\22\DD]\82\02\C0@\B11\EAj\92\12\CFO\AE.\E6f\8E\0E\CCL\BD=\FC|\9E\1E\DAZ\A6&\DF_\86\06\C4D\B55\EEn\96\16\D2R", [64 x i8] zeroinitializer }, align 32
@ulaw_to_alaw = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\ABU\D5\15\95u\F55\B5E\C5\05\85e\E5%\A5]\DD\1D\9D}\FD=\BDM\CD\0D\8Dm\ED-\ADQ\D1\11\91q\F11\B1A\C1\01\81a\E1!Y\D9\19\99y\F99\B9I\C9\09\89i\E9)\A9\D7\17\97w\F77\B7G\C7\07\87g\E7'\A7\DF\9F\7F\FF?\BFO\CF\0F\8Fo\EF/S\13s3\B3C\C3\03\83c\E3#\A3[\DB\1B\9B{\FB;\BB\BBKK\CB\CB\0B\0B\8B\8Bkk\EB\EB++\ABT\D4\14\94t\F44\B4D\C4\04\84d\E4$\A4\\\DC\1C\9C|\FC<\BCL\CC\0C\8Cl\EC,\ACP\D0\10\90p\F00\B0@\C0\00\80`\E0 X\D8\18\98x\F88\B8H\C8\08\88h\E8(\A8\D6\16\96v\F66\B6F\C6\06\86f\E6&\A6\DE\9E~\FE>\BEN\CE\0E\8En\EE.R\12r2\B2B\C2\02\82b\E2\22\A2Z\DA\1A\9Az\FA:\BA\BAJJ\CA\CA\0A\0A\8A\8Ajj\EA\EA**", [64 x i8] zeroinitializer }, align 32
@ulaw_to_4bit = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\09\09\09\09\09\09\09\09\09\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08", [64 x i8] zeroinitializer }, align 32
@alaw_to_4bit = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\0E\01\0A\05\0F\00\0C\03\0D\02\08\07\0F\00\0B\04\0E\01\0A\05\0F\00\0C\03\0D\02\09\06\0F\00\0B\04\0E\01\0A\05\0F\00\0C\03\0D\02\08\07\0F\00\0B\04\0E\01\0A\05\0F\00\0C\03\0D\02\09\06\0F\00\0B\04\0E\01\0A\05\0F\00\0C\03\0D\02\08\07\0F\00\0B\04\0E\01\0A\05\0F\00\0D\02\0E\02\09\06\0F\00\0B\04\0E\01\0A\05\0F\00\0C\03\0D\02\08\07\0F\00\0B\04\0E\01\0A\05\0F\00\0C\03\0D\02\09\06\0F\00\0B\04\0E\01\0A\05\0F\00\0C\03\0D\02\08\07\0F\00\0B\04\0E\01\0A\05\0F\00\0C\03\0D\02\09\06\0F\00\0B\04\0E\02\09\06\0F\00\0B\04\0D\02\08\07\0F\01\0A\05\0E\01\0A\05\0F\00\0C\03\0D\02\09\07\0F\00\0B\04\0E\01\0A\05\0F\00\0C\03\0D\02\08\07\0F\00\0B\04\0E\01\0A\05\0F\00\0C\03\0D\02\09\06\0F\00\0B\04\0E\01\0A\05\0F\00\0C\03\0D\02\08\07\0F\00\0B\04\0E\01\0A\05\0F\00\0C\03\0D\02\09\06\0F\00\0B\04", [64 x i8] zeroinitializer }, align 32
@_4bit_to_ulaw = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\11!1@N\\hq\FE\EF\E7\DB\CD\BF\AF\9F", [16 x i8] zeroinitializer }, align 32
@_4bit_to_alaw = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"]Q\D9\D7_S\A3K*:\22.&V ,", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [10 x i8] c"table_com\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 45, i32 12 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"table_dec\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 46, i32 13 }
@___asan_gen_.7 = private unnamed_addr constant [13 x i8] c"alaw_to_ulaw\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 50, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"ulaw_to_alaw\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 87, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"ulaw_to_4bit\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 166, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"alaw_to_4bit\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 124, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"_4bit_to_ulaw\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 202, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"_4bit_to_alaw\00", align 1
@___asan_gen_.23 = private constant [36 x i8] c"../drivers/isdn/mISDN/l1oip_codec.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 160, i32 11 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @table_com, ptr @table_dec, ptr @alaw_to_ulaw, ptr @ulaw_to_alaw, ptr @ulaw_to_4bit, ptr @alaw_to_4bit, ptr @_4bit_to_ulaw, ptr @_4bit_to_alaw], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_com to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table_dec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alaw_to_ulaw to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulaw_to_alaw to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulaw_to_4bit to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alaw_to_4bit to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_4bit_to_ulaw to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_4bit_to_alaw to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @l1oip_law_to_4bit(ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef writeonly %result, ptr nocapture noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = load ptr, ptr @table_com, align 4
  %shl = shl i32 %1, 8
  %and = and i32 %shl, 65280
  %incdec.ptr = getelementptr i8, ptr %data, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %conv = zext i8 %4 to i32
  %or = or i32 %and, %conv
  %arrayidx = getelementptr i8, ptr %2, i32 %or
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %incdec.ptr3 = getelementptr i8, ptr %result, i32 1
  %7 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %result, align 1
  %dec = add i32 %len, -1
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %data.addr.0 = phi ptr [ %incdec.ptr, %if.then2 ], [ %data, %if.end.if.end4_crit_edge ]
  %len.addr.0 = phi i32 [ %dec, %if.then2 ], [ %len, %if.end.if.end4_crit_edge ]
  %result.addr.0 = phi ptr [ %incdec.ptr3, %if.then2 ], [ %result, %if.end.if.end4_crit_edge ]
  %o.0 = phi i32 [ 1, %if.then2 ], [ 0, %if.end.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len.addr.0)
  %cmp37 = icmp sgt i32 %len.addr.0, 1
  br i1 %cmp37, label %while.body.lr.ph, label %if.end4.while.end_crit_edge

if.end4.while.end_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end4
  %shr43 = lshr i32 %len.addr.0, 1
  %8 = load ptr, ptr @table_com, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %i.040 = phi i32 [ 0, %while.body.lr.ph ], [ %inc14, %while.body.while.body_crit_edge ]
  %result.addr.139 = phi ptr [ %result.addr.0, %while.body.lr.ph ], [ %incdec.ptr13, %while.body.while.body_crit_edge ]
  %data.addr.138 = phi ptr [ %data.addr.0, %while.body.lr.ph ], [ %add.ptr, %while.body.while.body_crit_edge ]
  %9 = ptrtoint ptr %data.addr.138 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data.addr.138, align 1
  %conv7 = zext i8 %10 to i32
  %shl8 = shl nuw nsw i32 %conv7, 8
  %arrayidx9 = getelementptr i8, ptr %data.addr.138, i32 1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %12 to i32
  %or11 = or i32 %shl8, %conv10
  %arrayidx12 = getelementptr i8, ptr %8, i32 %or11
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx12, align 1
  %incdec.ptr13 = getelementptr i8, ptr %result.addr.139, i32 1
  %15 = ptrtoint ptr %result.addr.139 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %result.addr.139, align 1
  %add.ptr = getelementptr i8, ptr %data.addr.138, i32 2
  %inc14 = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc14, %shr43
  br i1 %exitcond.not, label %while.end.loopexit, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %16 = add nuw i32 %o.0, %shr43
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end4.while.end_crit_edge
  %data.addr.1.lcssa = phi ptr [ %data.addr.0, %if.end4.while.end_crit_edge ], [ %add.ptr, %while.end.loopexit ]
  %o.1.lcssa = phi i32 [ %o.0, %if.end4.while.end_crit_edge ], [ %16, %while.end.loopexit ]
  %and16 = and i32 %len.addr.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %while.end.if.end20_crit_edge, label %if.then18

while.end.if.end20_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then18:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %data.addr.1.lcssa to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %data.addr.1.lcssa, align 1
  %conv19 = zext i8 %18 to i32
  %add = or i32 %conv19, 256
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %while.end.if.end20_crit_edge
  %storemerge = phi i32 [ %add, %if.then18 ], [ 0, %while.end.if.end20_crit_edge ]
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %o.1.lcssa, %if.end20 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @l1oip_4bit_to_law(ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9 = icmp sgt i32 %len, 0
  br i1 %cmp9, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = load ptr, ptr @table_dec, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %i.012 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %result.addr.011 = phi ptr [ %result, %while.body.lr.ph ], [ %incdec.ptr4, %while.body.while.body_crit_edge ]
  %data.addr.010 = phi ptr [ %data, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %data.addr.010, i32 1
  %1 = ptrtoint ptr %data.addr.010 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data.addr.010, align 1
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr i16, ptr %0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %5 = lshr i16 %4, 8
  %conv1 = trunc i16 %5 to i8
  %incdec.ptr2 = getelementptr i8, ptr %result.addr.011, i32 1
  %6 = ptrtoint ptr %result.addr.011 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1, ptr %result.addr.011, align 1
  %conv3 = trunc i16 %4 to i8
  %incdec.ptr4 = getelementptr i8, ptr %result.addr.011, i32 2
  %7 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %incdec.ptr2, align 1
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %shl = shl i32 %len, 1
  ret i32 %shl
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @l1oip_alaw_to_ulaw(ptr nocapture noundef readonly %data, i32 noundef returned %len, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp4 = icmp sgt i32 %len, 0
  br i1 %cmp4, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %i.07 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %result.addr.06 = phi ptr [ %incdec.ptr1, %while.body.while.body_crit_edge ], [ %result, %entry.while.body_crit_edge ]
  %data.addr.05 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %data, %entry.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %data.addr.05, i32 1
  %0 = ptrtoint ptr %data.addr.05 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.addr.05, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [256 x i8], ptr @alaw_to_ulaw, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %incdec.ptr1 = getelementptr i8, ptr %result.addr.06, i32 1
  %4 = ptrtoint ptr %result.addr.06 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %result.addr.06, align 1
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 %len
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @l1oip_ulaw_to_alaw(ptr nocapture noundef readonly %data, i32 noundef returned %len, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp4 = icmp sgt i32 %len, 0
  br i1 %cmp4, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %i.07 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %result.addr.06 = phi ptr [ %incdec.ptr1, %while.body.while.body_crit_edge ], [ %result, %entry.while.body_crit_edge ]
  %data.addr.05 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %data, %entry.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %data.addr.05, i32 1
  %0 = ptrtoint ptr %data.addr.05 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.addr.05, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [256 x i8], ptr @ulaw_to_alaw, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %incdec.ptr1 = getelementptr i8, ptr %result.addr.06, i32 1
  %4 = ptrtoint ptr %result.addr.06 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %result.addr.06, align 1
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 %len
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @l1oip_4bit_free() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @table_dec, align 4
  tail call void @vfree(ptr noundef %0) #4
  %1 = load ptr, ptr @table_com, align 4
  tail call void @vfree(ptr noundef %1) #4
  store ptr null, ptr @table_com, align 4
  store ptr null, ptr @table_dec, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @l1oip_4bit_alloc(i32 noundef %ulaw) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @table_dec, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call noalias ptr @vzalloc(i32 noundef 65536) #7
  store ptr %call, ptr @table_com, align 4
  %call1 = tail call noalias ptr @vzalloc(i32 noundef 512) #7
  store ptr %call1, ptr @table_dec, align 4
  %1 = load ptr, ptr @table_com, align 4
  %tobool2.not = icmp eq ptr %1, null
  %tobool3.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.then4, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ulaw)
  %tobool6.not = icmp eq i32 %ulaw, 0
  %alaw_to_4bit.ulaw_to_4bit = select i1 %tobool6.not, ptr @alaw_to_4bit, ptr @ulaw_to_4bit
  br label %while.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vfree(ptr noundef %call1) #4
  %2 = load ptr, ptr @table_com, align 4
  tail call void @vfree(ptr noundef %2) #4
  store ptr null, ptr @table_com, align 4
  store ptr null, ptr @table_dec, align 4
  br label %cleanup

while.cond28.preheader:                           ; preds = %while.end
  %_4bit_to_alaw._4bit_to_ulaw = select i1 %tobool6.not, ptr @_4bit_to_alaw, ptr @_4bit_to_ulaw
  br label %while.body31

while.body:                                       ; preds = %while.end.while.body_crit_edge, %while.cond.preheader
  %i1.087 = phi i32 [ 0, %while.cond.preheader ], [ %inc26, %while.end.while.body_crit_edge ]
  %c.0.in.in = getelementptr [256 x i8], ptr %alaw_to_4bit.ulaw_to_4bit, i32 0, i32 %i1.087
  %3 = ptrtoint ptr %c.0.in.in to i32
  call void @__asan_load1_noabort(i32 %3)
  %c.0.in = load i8, ptr %c.0.in.in, align 1
  %shl = shl i8 %c.0.in, 4
  %shl15 = shl i32 %i1.087, 8
  br label %while.body14

while.body14:                                     ; preds = %while.body14.while.body14_crit_edge, %while.body
  %i2.086 = phi i32 [ 0, %while.body ], [ %inc, %while.body14.while.body14_crit_edge ]
  %or = or i32 %i2.086, %shl15
  %arrayidx16 = getelementptr i8, ptr %1, i32 %or
  %4 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx16, align 1
  %or18 = or i8 %5, %shl
  store i8 %or18, ptr %arrayidx16, align 1
  %shl20 = shl i32 %i2.086, 8
  %or21 = or i32 %shl20, %i1.087
  %arrayidx22 = getelementptr i8, ptr %1, i32 %or21
  %6 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx22, align 1
  %or2485 = or i8 %7, %c.0.in
  store i8 %or2485, ptr %arrayidx22, align 1
  %inc = add nuw nsw i32 %i2.086, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %while.end, label %while.body14.while.body14_crit_edge

while.body14.while.body14_crit_edge:              ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body14

while.end:                                        ; preds = %while.body14
  %inc26 = add nuw nsw i32 %i1.087, 1
  %exitcond90.not = icmp eq i32 %inc26, 256
  br i1 %exitcond90.not, label %while.cond28.preheader, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body31:                                     ; preds = %while.end58.while.body31_crit_edge, %while.cond28.preheader
  %i1.189 = phi i32 [ 0, %while.cond28.preheader ], [ %inc59, %while.end58.while.body31_crit_edge ]
  %sample.0.in.in = getelementptr [16 x i8], ptr %_4bit_to_alaw._4bit_to_ulaw, i32 0, i32 %i1.189
  %8 = ptrtoint ptr %sample.0.in.in to i32
  call void @__asan_load1_noabort(i32 %8)
  %sample.0.in = load i8, ptr %sample.0.in.in, align 1
  %sample.0 = zext i8 %sample.0.in to i16
  %shl45 = shl i32 %i1.189, 4
  %9 = shl nuw i16 %sample.0, 8
  br label %while.body43

while.body43:                                     ; preds = %while.body43.while.body43_crit_edge, %while.body31
  %i2.188 = phi i32 [ 0, %while.body31 ], [ %inc57, %while.body43.while.body43_crit_edge ]
  %or46 = or i32 %i2.188, %shl45
  %arrayidx47 = getelementptr i16, ptr %call1, i32 %or46
  %10 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx47, align 2
  %conv50 = or i16 %11, %9
  store i16 %conv50, ptr %arrayidx47, align 2
  %shl51 = shl i32 %i2.188, 4
  %or52 = or i32 %shl51, %i1.189
  %arrayidx53 = getelementptr i16, ptr %call1, i32 %or52
  %12 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx53, align 2
  %or55 = or i16 %13, %sample.0
  store i16 %or55, ptr %arrayidx53, align 2
  %inc57 = add nuw nsw i32 %i2.188, 1
  %exitcond91.not = icmp eq i32 %inc57, 16
  br i1 %exitcond91.not, label %while.end58, label %while.body43.while.body43_crit_edge

while.body43.while.body43_crit_edge:              ; preds = %while.body43
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body43

while.end58:                                      ; preds = %while.body43
  %inc59 = add nuw nsw i32 %i1.189, 1
  %exitcond92.not = icmp eq i32 %inc59, 16
  br i1 %exitcond92.not, label %while.end58.cleanup_crit_edge, label %while.end58.while.body31_crit_edge

while.end58.while.body31_crit_edge:               ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body31

while.end58.cleanup_crit_edge:                    ; preds = %while.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %while.end58.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %while.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @table_com, !1, !"table_com", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/l1oip_codec.c", i32 45, i32 12}
!2 = !{ptr @table_dec, !3, !"table_dec", i1 false, i1 false}
!3 = !{!"../drivers/isdn/mISDN/l1oip_codec.c", i32 46, i32 13}
!4 = !{ptr @alaw_to_ulaw, !5, !"alaw_to_ulaw", i1 false, i1 false}
!5 = !{!"../drivers/isdn/mISDN/l1oip_codec.c", i32 50, i32 11}
!6 = !{ptr @ulaw_to_alaw, !7, !"ulaw_to_alaw", i1 false, i1 false}
!7 = !{!"../drivers/isdn/mISDN/l1oip_codec.c", i32 87, i32 11}
!8 = !{ptr @ulaw_to_4bit, !9, !"ulaw_to_4bit", i1 false, i1 false}
!9 = !{!"../drivers/isdn/mISDN/l1oip_codec.c", i32 166, i32 11}
!10 = !{ptr @alaw_to_4bit, !11, !"alaw_to_4bit", i1 false, i1 false}
!11 = !{!"../drivers/isdn/mISDN/l1oip_codec.c", i32 124, i32 11}
!12 = !{ptr @_4bit_to_ulaw, !13, !"_4bit_to_ulaw", i1 false, i1 false}
!13 = !{!"../drivers/isdn/mISDN/l1oip_codec.c", i32 202, i32 11}
!14 = !{ptr @_4bit_to_alaw, !15, !"_4bit_to_alaw", i1 false, i1 false}
!15 = !{!"../drivers/isdn/mISDN/l1oip_codec.c", i32 160, i32 11}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
