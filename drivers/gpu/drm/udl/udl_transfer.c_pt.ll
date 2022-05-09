; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/udl/udl_transfer.c_pt.bc'
source_filename = "../drivers/gpu/drm/udl/udl_transfer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udl_render_hline(ptr noundef %dev, i32 noundef %log_bpp, ptr nocapture noundef %urb_ptr, ptr noundef %front, ptr nocapture noundef %urb_buf_ptr, i32 noundef %byte_offset, i32 noundef %device_byte_offset, i32 noundef %byte_width) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %log_bpp)
  %cmp = icmp eq i32 %log_bpp, 1
  %0 = add i32 %log_bpp, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %0)
  %1 = icmp ult i32 %0, -2
  br i1 %1, label %do.body4, label %do.end9, !prof !9

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/udl/udl_transfer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #3, !srcloc !10
  unreachable

do.end9:                                          ; preds = %entry
  %2 = ptrtoint ptr %urb_buf_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb_buf_ptr, align 4
  %add.ptr10 = getelementptr i8, ptr %front, i32 %byte_offset
  %add.ptr11 = getelementptr i8, ptr %add.ptr10, i32 %byte_width
  %cmp1262 = icmp ult ptr %add.ptr10, %add.ptr11
  br i1 %cmp1262, label %while.body.lr.ph, label %do.end9.while.end_crit_edge

do.end9.while.end_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end9
  %shr = lshr i32 %device_byte_offset, %log_bpp
  %mul = shl nuw i32 %shr, 1
  %4 = ptrtoint ptr %urb_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb_ptr, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %transfer_buffer_length, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %shl.i = shl nuw nsw i32 1, %log_bpp
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr11 to i32
  br label %while.body

while.body:                                       ; preds = %if.end26.while.body_crit_edge, %while.body.lr.ph
  %cmd_end.068 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %cmd_end.2, %if.end26.while.body_crit_edge ]
  %urb.066 = phi ptr [ %5, %while.body.lr.ph ], [ %urb.2, %if.end26.while.body_crit_edge ]
  %cmd.065 = phi ptr [ %3, %while.body.lr.ph ], [ %cmd.2, %if.end26.while.body_crit_edge ]
  %base16.064 = phi i32 [ %mul, %while.body.lr.ph ], [ %dev_addr.0.lcssa.i, %if.end26.while.body_crit_edge ]
  %next_pixel.063 = phi ptr [ %add.ptr10, %while.body.lr.ph ], [ %pixel.0.lcssa.i, %if.end26.while.body_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %cmd_end.068, i32 -11
  %cmp1206.i = icmp ugt ptr %add.ptr.i, %cmd.065
  br i1 %cmp1206.i, label %while.body.lr.ph.i, label %while.body.while.end88.i_crit_edge

while.body.while.end88.i_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end88.i

while.body.lr.ph.i:                               ; preds = %while.body
  %add.ptr16.i = getelementptr i8, ptr %cmd_end.068, i32 -1
  %sub.ptr.lhs.cast17.i = ptrtoint ptr %add.ptr16.i to i32
  br label %while.body.i

while.body.i:                                     ; preds = %if.end76.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pixel.0210.i = phi ptr [ %next_pixel.063, %while.body.lr.ph.i ], [ %pixel.1.lcssa225.i, %if.end76.i.while.body.i_crit_edge ]
  %cmd.0209.i = phi ptr [ %cmd.065, %while.body.lr.ph.i ], [ %cmd.3.i, %if.end76.i.while.body.i_crit_edge ]
  %dev_addr.0208.i = phi i32 [ %base16.064, %while.body.lr.ph.i ], [ %add87.i, %if.end76.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %cmd.0209.i, i32 1
  %10 = ptrtoint ptr %cmd.0209.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -81, ptr %cmd.0209.i, align 1
  %incdec.ptr2.i = getelementptr i8, ptr %cmd.0209.i, i32 2
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 107, ptr %incdec.ptr.i, align 1
  %shr.i = lshr i32 %dev_addr.0208.i, 16
  %conv.i = trunc i32 %shr.i to i8
  %incdec.ptr3.i = getelementptr i8, ptr %cmd.0209.i, i32 3
  %12 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %incdec.ptr2.i, align 1
  %shr4.i = lshr i32 %dev_addr.0208.i, 8
  %conv6.i = trunc i32 %shr4.i to i8
  %incdec.ptr7.i = getelementptr i8, ptr %cmd.0209.i, i32 4
  %13 = ptrtoint ptr %incdec.ptr3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6.i, ptr %incdec.ptr3.i, align 1
  %conv9.i = trunc i32 %dev_addr.0208.i to i8
  %incdec.ptr10.i = getelementptr i8, ptr %cmd.0209.i, i32 5
  %14 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv9.i, ptr %incdec.ptr7.i, align 1
  %incdec.ptr11.i = getelementptr i8, ptr %cmd.0209.i, i32 6
  %incdec.ptr12.i = getelementptr i8, ptr %cmd.0209.i, i32 7
  %sub.ptr.rhs.cast.i = ptrtoint ptr %pixel.0210.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %shr13.i = lshr i32 %sub.ptr.sub.i, %log_bpp
  %sub.ptr.rhs.cast18.i = ptrtoint ptr %incdec.ptr12.i to i32
  %sub.ptr.sub19.i = sub i32 %sub.ptr.lhs.cast17.i, %sub.ptr.rhs.cast18.i
  %div175.i = lshr i32 %sub.ptr.sub19.i, 1
  %15 = tail call i32 @llvm.umin.i32(i32 %shr13.i, i32 %div175.i) #3
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 256) #3
  %shl27.i = shl i32 %16, %log_bpp
  %add.ptr28.i = getelementptr i8, ptr %pixel.0210.i, i32 %shl27.i
  br i1 %cmp, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %pixel.0210.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pixel.0210.i, align 2
  br label %get_pixel_val16.exit.i

if.else.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %pixel.0210.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pixel.0210.i, align 4
  %shr.i.i.i = lshr i32 %20, 3
  %and.i.i.i = and i32 %shr.i.i.i, 31
  %shr1.i.i.i = lshr i32 %20, 5
  %and2.i.i.i = and i32 %shr1.i.i.i, 2016
  %or.i.i.i = or i32 %and.i.i.i, %and2.i.i.i
  %shr3.i.i.i = lshr i32 %20, 8
  %and4.i.i.i = and i32 %shr3.i.i.i, 63488
  %or5.i.i.i = or i32 %or.i.i.i, %and4.i.i.i
  %conv.i.i.i = trunc i32 %or5.i.i.i to i16
  br label %get_pixel_val16.exit.i

get_pixel_val16.exit.i:                           ; preds = %if.else.i.i, %if.then.i.i
  %pixel_val16.0.i.i = phi i16 [ %18, %if.then.i.i ], [ %conv.i.i.i, %if.else.i.i ]
  %cmp30195.i = icmp ult ptr %pixel.0210.i, %add.ptr28.i
  br i1 %cmp30195.i, label %get_pixel_val16.exit.i.while.body32.i_crit_edge, label %get_pixel_val16.exit.i.if.else.i_crit_edge

get_pixel_val16.exit.i.if.else.i_crit_edge:       ; preds = %get_pixel_val16.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

get_pixel_val16.exit.i.while.body32.i_crit_edge:  ; preds = %get_pixel_val16.exit.i
  br label %while.body32.i

while.body32.i:                                   ; preds = %if.end64.i.while.body32.i_crit_edge, %get_pixel_val16.exit.i.while.body32.i_crit_edge
  %pixel.1200.i = phi ptr [ %pixel.2.lcssa217.i, %if.end64.i.while.body32.i_crit_edge ], [ %pixel.0210.i, %get_pixel_val16.exit.i.while.body32.i_crit_edge ]
  %pixel_val16.0199.i = phi i16 [ %pixel_val16.2218.i, %if.end64.i.while.body32.i_crit_edge ], [ %pixel_val16.0.i.i, %get_pixel_val16.exit.i.while.body32.i_crit_edge ]
  %raw_pixel_start.0198.i = phi ptr [ %raw_pixel_start.1.i, %if.end64.i.while.body32.i_crit_edge ], [ %pixel.0210.i, %get_pixel_val16.exit.i.while.body32.i_crit_edge ]
  %raw_pixels_count_byte.0197.i = phi ptr [ %raw_pixels_count_byte.1.i, %if.end64.i.while.body32.i_crit_edge ], [ %incdec.ptr11.i, %get_pixel_val16.exit.i.while.body32.i_crit_edge ]
  %cmd.1196.i = phi ptr [ %cmd.2.i, %if.end64.i.while.body32.i_crit_edge ], [ %incdec.ptr12.i, %get_pixel_val16.exit.i.while.body32.i_crit_edge ]
  %21 = ptrtoint ptr %cmd.1196.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %pixel_val16.0199.i, ptr %cmd.1196.i, align 1
  %add.ptr33.i = getelementptr i8, ptr %cmd.1196.i, i32 2
  %add.ptr34.i = getelementptr i8, ptr %pixel.1200.i, i32 %shl.i
  %cmp36190.i = icmp ult ptr %add.ptr34.i, %add.ptr28.i
  br i1 %cmp36190.i, label %while.body32.i.while.body38.i_crit_edge, label %while.body32.i.if.end64.i_crit_edge

while.body32.i.if.end64.i_crit_edge:              ; preds = %while.body32.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end64.i

while.body32.i.while.body38.i_crit_edge:          ; preds = %while.body32.i
  br label %while.body38.i

while.body38.i:                                   ; preds = %if.end.i.while.body38.i_crit_edge, %while.body32.i.while.body38.i_crit_edge
  %pixel.2191.i = phi ptr [ %add.ptr44.i, %if.end.i.while.body38.i_crit_edge ], [ %add.ptr34.i, %while.body32.i.while.body38.i_crit_edge ]
  br i1 %cmp, label %if.then.i177.i, label %if.else.i187.i

if.then.i177.i:                                   ; preds = %while.body38.i
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %pixel.2191.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pixel.2191.i, align 2
  br label %get_pixel_val16.exit189.i

if.else.i187.i:                                   ; preds = %while.body38.i
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %pixel.2191.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pixel.2191.i, align 4
  %shr.i.i178.i = lshr i32 %25, 3
  %and.i.i179.i = and i32 %shr.i.i178.i, 31
  %shr1.i.i180.i = lshr i32 %25, 5
  %and2.i.i181.i = and i32 %shr1.i.i180.i, 2016
  %or.i.i182.i = or i32 %and.i.i179.i, %and2.i.i181.i
  %shr3.i.i183.i = lshr i32 %25, 8
  %and4.i.i184.i = and i32 %shr3.i.i183.i, 63488
  %or5.i.i185.i = or i32 %or.i.i182.i, %and4.i.i184.i
  %conv.i.i186.i = trunc i32 %or5.i.i185.i to i16
  br label %get_pixel_val16.exit189.i

get_pixel_val16.exit189.i:                        ; preds = %if.else.i187.i, %if.then.i177.i
  %pixel_val16.0.i188.i = phi i16 [ %23, %if.then.i177.i ], [ %conv.i.i186.i, %if.else.i187.i ]
  call void @__sanitizer_cov_trace_cmp2(i16 %pixel_val16.0.i188.i, i16 %pixel_val16.0199.i)
  %cmp42.not.i = icmp eq i16 %pixel_val16.0.i188.i, %pixel_val16.0199.i
  br i1 %cmp42.not.i, label %if.end.i, label %get_pixel_val16.exit189.i.while.end.i_crit_edge

get_pixel_val16.exit189.i.while.end.i_crit_edge:  ; preds = %get_pixel_val16.exit189.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

if.end.i:                                         ; preds = %get_pixel_val16.exit189.i
  %add.ptr44.i = getelementptr i8, ptr %pixel.2191.i, i32 %shl.i
  %cmp36.i = icmp ult ptr %add.ptr44.i, %add.ptr28.i
  br i1 %cmp36.i, label %if.end.i.while.body38.i_crit_edge, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end.i

if.end.i.while.body38.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body38.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %get_pixel_val16.exit189.i.while.end.i_crit_edge
  %pixel.2.lcssa.i = phi ptr [ %pixel.2191.i, %get_pixel_val16.exit189.i.while.end.i_crit_edge ], [ %add.ptr44.i, %if.end.i.while.end.i_crit_edge ]
  %pixel_val16.2.i = phi i16 [ %pixel_val16.0.i188.i, %get_pixel_val16.exit189.i.while.end.i_crit_edge ], [ %pixel_val16.0199.i, %if.end.i.while.end.i_crit_edge ]
  %cmp46.i = icmp ugt ptr %pixel.2.lcssa.i, %add.ptr34.i
  br i1 %cmp46.i, label %if.then49.i, label %while.end.i.if.end64.i_crit_edge, !prof !9

while.end.i.if.end64.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end64.i

if.then49.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.lhs.cast50.i = ptrtoint ptr %pixel.1200.i to i32
  %sub.ptr.rhs.cast51.i = ptrtoint ptr %raw_pixel_start.0198.i to i32
  %sub.ptr.sub52.i = sub i32 %sub.ptr.lhs.cast50.i, %sub.ptr.rhs.cast51.i
  %shr53.i = ashr i32 %sub.ptr.sub52.i, %log_bpp
  %26 = trunc i32 %shr53.i to i8
  %conv55.i = add i8 %26, 1
  %27 = ptrtoint ptr %raw_pixels_count_byte.0197.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv55.i, ptr %raw_pixels_count_byte.0197.i, align 1
  %sub.ptr.lhs.cast56.i = ptrtoint ptr %pixel.2.lcssa.i to i32
  %sub.ptr.sub58.i = sub i32 %sub.ptr.lhs.cast56.i, %sub.ptr.lhs.cast50.i
  %shr59.i = ashr i32 %sub.ptr.sub58.i, %log_bpp
  %28 = trunc i32 %shr59.i to i8
  %conv61.i = add i8 %28, -1
  %incdec.ptr62.i = getelementptr i8, ptr %cmd.1196.i, i32 3
  %29 = ptrtoint ptr %add.ptr33.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv61.i, ptr %add.ptr33.i, align 1
  %incdec.ptr63.i = getelementptr i8, ptr %cmd.1196.i, i32 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then49.i, %while.end.i.if.end64.i_crit_edge, %while.body32.i.if.end64.i_crit_edge
  %pixel_val16.2218.i = phi i16 [ %pixel_val16.2.i, %if.then49.i ], [ %pixel_val16.2.i, %while.end.i.if.end64.i_crit_edge ], [ %pixel_val16.0199.i, %while.body32.i.if.end64.i_crit_edge ]
  %pixel.2.lcssa217.i = phi ptr [ %pixel.2.lcssa.i, %if.then49.i ], [ %pixel.2.lcssa.i, %while.end.i.if.end64.i_crit_edge ], [ %add.ptr34.i, %while.body32.i.if.end64.i_crit_edge ]
  %cmd.2.i = phi ptr [ %incdec.ptr63.i, %if.then49.i ], [ %add.ptr33.i, %while.end.i.if.end64.i_crit_edge ], [ %add.ptr33.i, %while.body32.i.if.end64.i_crit_edge ]
  %raw_pixels_count_byte.1.i = phi ptr [ %incdec.ptr62.i, %if.then49.i ], [ %raw_pixels_count_byte.0197.i, %while.end.i.if.end64.i_crit_edge ], [ %raw_pixels_count_byte.0197.i, %while.body32.i.if.end64.i_crit_edge ]
  %raw_pixel_start.1.i = phi ptr [ %pixel.2.lcssa.i, %if.then49.i ], [ %raw_pixel_start.0198.i, %while.end.i.if.end64.i_crit_edge ], [ %raw_pixel_start.0198.i, %while.body32.i.if.end64.i_crit_edge ]
  %cmp30.i = icmp ult ptr %pixel.2.lcssa217.i, %add.ptr28.i
  br i1 %cmp30.i, label %if.end64.i.while.body32.i_crit_edge, label %while.end65.i

if.end64.i.while.body32.i_crit_edge:              ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body32.i

while.end65.i:                                    ; preds = %if.end64.i
  %cmp66.i = icmp ugt ptr %pixel.2.lcssa217.i, %raw_pixel_start.1.i
  %sub.ptr.lhs.cast69.i = ptrtoint ptr %pixel.2.lcssa217.i to i32
  br i1 %cmp66.i, label %if.then68.i, label %while.end65.i.if.else.i_crit_edge

while.end65.i.if.else.i_crit_edge:                ; preds = %while.end65.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

if.then68.i:                                      ; preds = %while.end65.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.rhs.cast70.i = ptrtoint ptr %raw_pixel_start.1.i to i32
  %sub.ptr.sub71.i = sub i32 %sub.ptr.lhs.cast69.i, %sub.ptr.rhs.cast70.i
  %shr72.i = ashr i32 %sub.ptr.sub71.i, %log_bpp
  %conv74.i = trunc i32 %shr72.i to i8
  %30 = ptrtoint ptr %raw_pixels_count_byte.1.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv74.i, ptr %raw_pixels_count_byte.1.i, align 1
  br label %if.end76.i

if.else.i:                                        ; preds = %while.end65.i.if.else.i_crit_edge, %get_pixel_val16.exit.i.if.else.i_crit_edge
  %.pre.i.pre-phi = phi i32 [ %sub.ptr.rhs.cast.i, %get_pixel_val16.exit.i.if.else.i_crit_edge ], [ %sub.ptr.lhs.cast69.i, %while.end65.i.if.else.i_crit_edge ]
  %pixel.1.lcssa226.i = phi ptr [ %pixel.0210.i, %get_pixel_val16.exit.i.if.else.i_crit_edge ], [ %pixel.2.lcssa217.i, %while.end65.i.if.else.i_crit_edge ]
  %cmd.1.lcssa224.i = phi ptr [ %incdec.ptr12.i, %get_pixel_val16.exit.i.if.else.i_crit_edge ], [ %cmd.2.i, %while.end65.i.if.else.i_crit_edge ]
  %incdec.ptr75.i = getelementptr i8, ptr %cmd.1.lcssa224.i, i32 -1
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.else.i, %if.then68.i
  %pixel.1.lcssa225.i = phi ptr [ %pixel.1.lcssa226.i, %if.else.i ], [ %pixel.2.lcssa217.i, %if.then68.i ]
  %sub.ptr.lhs.cast77.pre-phi.i = phi i32 [ %.pre.i.pre-phi, %if.else.i ], [ %sub.ptr.lhs.cast69.i, %if.then68.i ]
  %cmd.3.i = phi ptr [ %incdec.ptr75.i, %if.else.i ], [ %cmd.2.i, %if.then68.i ]
  %sub.ptr.sub79.i = sub i32 %sub.ptr.lhs.cast77.pre-phi.i, %sub.ptr.rhs.cast.i
  %shr80.i = ashr i32 %sub.ptr.sub79.i, %log_bpp
  %conv82.i = trunc i32 %shr80.i to i8
  %31 = ptrtoint ptr %incdec.ptr10.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv82.i, ptr %incdec.ptr10.i, align 1
  %mul.i = shl i32 %shr80.i, 1
  %add87.i = add i32 %mul.i, %dev_addr.0208.i
  %cmp.i = icmp ult ptr %pixel.1.lcssa225.i, %add.ptr11
  %cmp1.i = icmp ugt ptr %add.ptr.i, %cmd.3.i
  %or.cond.i = and i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.end76.i.while.body.i_crit_edge, label %if.end76.i.while.end88.i_crit_edge

if.end76.i.while.end88.i_crit_edge:               ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end88.i

if.end76.i.while.body.i_crit_edge:                ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

while.end88.i:                                    ; preds = %if.end76.i.while.end88.i_crit_edge, %while.body.while.end88.i_crit_edge
  %dev_addr.0.lcssa.i = phi i32 [ %base16.064, %while.body.while.end88.i_crit_edge ], [ %add87.i, %if.end76.i.while.end88.i_crit_edge ]
  %cmd.0.lcssa.i = phi ptr [ %cmd.065, %while.body.while.end88.i_crit_edge ], [ %cmd.3.i, %if.end76.i.while.end88.i_crit_edge ]
  %pixel.0.lcssa.i = phi ptr [ %next_pixel.063, %while.body.while.end88.i_crit_edge ], [ %pixel.1.lcssa225.i, %if.end76.i.while.end88.i_crit_edge ]
  %add.ptr89.i = getelementptr i8, ptr %cmd.0.lcssa.i, i32 11
  %cmp90.not.i = icmp ult ptr %add.ptr89.i, %cmd_end.068
  %cmp13.not = icmp ult ptr %cmd.0.lcssa.i, %cmd_end.068
  br i1 %cmp90.not.i, label %udl_compress_hline16.exit, label %if.then92.i

if.then92.i:                                      ; preds = %while.end88.i
  br i1 %cmp13.not, label %if.then95.i, label %if.then92.i.if.then14_crit_edge

if.then92.i.if.then14_crit_edge:                  ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then14

if.then95.i:                                      ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #5
  %sub.ptr.lhs.cast96.i = ptrtoint ptr %cmd_end.068 to i32
  %sub.ptr.rhs.cast97.i = ptrtoint ptr %cmd.0.lcssa.i to i32
  %sub.ptr.sub98.i = sub i32 %sub.ptr.lhs.cast96.i, %sub.ptr.rhs.cast97.i
  %32 = call ptr @memset(ptr %cmd.0.lcssa.i, i32 175, i32 %sub.ptr.sub98.i)
  br label %if.then14

udl_compress_hline16.exit:                        ; preds = %while.end88.i
  br i1 %cmp13.not, label %udl_compress_hline16.exit.if.end26_crit_edge, label %udl_compress_hline16.exit.if.then14_crit_edge

udl_compress_hline16.exit.if.then14_crit_edge:    ; preds = %udl_compress_hline16.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then14

udl_compress_hline16.exit.if.end26_crit_edge:     ; preds = %udl_compress_hline16.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26

if.then14:                                        ; preds = %udl_compress_hline16.exit.if.then14_crit_edge, %if.then95.i, %if.then92.i.if.then14_crit_edge
  %cmd.4.i55 = phi ptr [ %cmd.0.lcssa.i, %udl_compress_hline16.exit.if.then14_crit_edge ], [ %cmd_end.068, %if.then95.i ], [ %cmd_end.068, %if.then92.i.if.then14_crit_edge ]
  %transfer_buffer15 = getelementptr inbounds %struct.urb, ptr %urb.066, i32 0, i32 14
  %33 = ptrtoint ptr %transfer_buffer15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %transfer_buffer15, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %cmd.4.i55 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = tail call i32 @udl_submit_urb(ptr noundef %dev, ptr noundef %urb.066, i32 noundef %sub.ptr.sub) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %if.end18, label %if.then14.cleanup27_crit_edge

if.then14.cleanup27_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

if.end18:                                         ; preds = %if.then14
  %call19 = tail call ptr @udl_get_urb(ptr noundef %dev) #3
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.cleanup27_crit_edge, label %cleanup

if.end18.cleanup27_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup27

cleanup:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %urb_ptr to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call19, ptr %urb_ptr, align 4
  %transfer_buffer23 = getelementptr inbounds %struct.urb, ptr %call19, i32 0, i32 14
  %36 = ptrtoint ptr %transfer_buffer23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %transfer_buffer23, align 4
  %transfer_buffer_length24 = getelementptr inbounds %struct.urb, ptr %call19, i32 0, i32 19
  %38 = ptrtoint ptr %transfer_buffer_length24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %transfer_buffer_length24, align 4
  %arrayidx = getelementptr i8, ptr %37, i32 %39
  br label %if.end26

if.end26:                                         ; preds = %cleanup, %udl_compress_hline16.exit.if.end26_crit_edge
  %cmd.2 = phi ptr [ %cmd.0.lcssa.i, %udl_compress_hline16.exit.if.end26_crit_edge ], [ %37, %cleanup ]
  %urb.2 = phi ptr [ %urb.066, %udl_compress_hline16.exit.if.end26_crit_edge ], [ %call19, %cleanup ]
  %cmd_end.2 = phi ptr [ %cmd_end.068, %udl_compress_hline16.exit.if.end26_crit_edge ], [ %arrayidx, %cleanup ]
  %cmp12 = icmp ult ptr %pixel.0.lcssa.i, %add.ptr11
  br i1 %cmp12, label %if.end26.while.body_crit_edge, label %if.end26.while.end_crit_edge

if.end26.while.end_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %if.end26.while.end_crit_edge, %do.end9.while.end_crit_edge
  %cmd.0.lcssa = phi ptr [ %3, %do.end9.while.end_crit_edge ], [ %cmd.2, %if.end26.while.end_crit_edge ]
  %40 = ptrtoint ptr %urb_buf_ptr to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %cmd.0.lcssa, ptr %urb_buf_ptr, align 4
  br label %cleanup27

cleanup27:                                        ; preds = %while.end, %if.end18.cleanup27_crit_edge, %if.then14.cleanup27_crit_edge
  %retval.3 = phi i32 [ 0, %while.end ], [ %call, %if.then14.cleanup27_crit_edge ], [ -11, %if.end18.cleanup27_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udl_submit_urb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @udl_get_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2156716177, i64 2156716676, i64 2156716214, i64 2156716270, i64 2156716304, i64 2156716328, i64 2156716369, i64 2156716390, i64 2156716418, i64 2156716452}
