pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const _int8_t = i8;
pub const _uint8_t = u8;
pub const _int16_t = c_short;
pub const _uint16_t = c_ushort;
pub const _int32_t = c_long;
pub const _uint32_t = c_ulong;
pub const _int64_t = c_longlong;
pub const _uint64_t = c_ulonglong;
pub const _intmax_t = _int64_t;
pub const _uintmax_t = _uint64_t;
pub const _wchar_t = c_int;
pub const _ssize_t = c_int;
pub const _size_t = c_uint;
pub const irqstate_t = c_uint;
pub const int_least64_t = i64;
pub const uint_least64_t = u64;
pub const int_fast64_t = i64;
pub const uint_fast64_t = u64;
pub const int_least32_t = i32;
pub const uint_least32_t = u32;
pub const int_fast32_t = i32;
pub const uint_fast32_t = u32;
pub const int_least16_t = i16;
pub const uint_least16_t = u16;
pub const int_fast16_t = i16;
pub const uint_fast16_t = u16;
pub const int_least8_t = i8;
pub const uint_least8_t = u8;
pub const int_fast8_t = i8;
pub const uint_fast8_t = u8;
pub const intmax_t = c_longlong;
pub const uintmax_t = c_ulonglong;
pub const mode_t = c_uint;
pub const rsize_t = _size_t;
pub const uid_t = i16;
pub const gid_t = i16;
pub const dev_t = u32;
pub const ino_t = u16;
pub const nlink_t = u16;
pub const pid_t = c_int;
pub const id_t = c_int;
pub const key_t = i32;
pub const ptrdiff_t = isize;
pub const wchar_t = _wchar_t;
pub const wint_t = c_int;
pub const wctype_t = c_int;
pub const fsblkcnt_t = u32;
pub const fsfilcnt_t = u32;
pub const blkcnt_t = u32;
pub const off_t = i32;
pub const fpos_t = i32;
pub const blksize_t = i16;
pub const socklen_t = c_uint;
pub const sa_family_t = u16;
pub const clock_t = u32;
pub const useconds_t = u32;
pub const suseconds_t = i32;
pub const cpu_set_t = u8;
pub const u_char = u8;
pub const u_short = c_ushort;
pub const u_int = c_uint;
pub const u_long = c_ulong;
pub const unchar = u8;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const ulong = c_ulong;
pub const s_char = i8;
pub const caddr_t = [*c]u8;
pub const u_int8_t = u8;
pub const u_int16_t = u16;
pub const u_int32_t = u32;
pub const u_int64_t = u64;
pub const main_t = ?fn (c_int, [*c][*c]u8) callconv(.C) c_int;
pub const ERROR: c_int = -1;
pub const OK: c_int = 0;
const enum_unnamed_1 = c_int;
pub const time_t = u32;
pub const clockid_t = u8;
pub const timer_t = ?*anyopaque;
pub const struct_timespec = extern struct {
    tv_sec: time_t,
    tv_nsec: c_long,
};
pub const struct_tm = extern struct {
    tm_sec: c_int,
    tm_min: c_int,
    tm_hour: c_int,
    tm_mday: c_int,
    tm_mon: c_int,
    tm_year: c_int,
    tm_wday: c_int,
    tm_yday: c_int,
    tm_isdst: c_int,
    tm_gmtoff: c_long,
    tm_zone: [*c]const u8,
};
pub const struct_itimerspec = extern struct {
    it_interval: struct_timespec,
    it_value: struct_timespec,
};
pub const union_sigval = extern union {
    sival_int: c_int,
    sival_ptr: ?*anyopaque,
};
pub const sigev_notify_function_t = ?fn (union_sigval) callconv(.C) void;
pub const struct_pthread_attr_s = extern struct {
    priority: u8,
    policy: u8,
    inheritsched: u8,
    detachstate: u8,
    stackaddr: ?*anyopaque,
    stacksize: usize,
};
pub const pthread_attr_t = struct_pthread_attr_s;
pub const struct_sigevent = extern struct {
    sigev_notify: u8,
    sigev_signo: u8,
    sigev_value: union_sigval,
    sigev_notify_function: sigev_notify_function_t,
    sigev_notify_attributes: [*c]pthread_attr_t,
};
pub extern fn clock() clock_t;
pub extern fn clock_settime(clockid: clockid_t, tp: [*c]const struct_timespec) c_int;
pub extern fn clock_gettime(clockid: clockid_t, tp: [*c]struct_timespec) c_int;
pub extern fn clock_getres(clockid: clockid_t, res: [*c]struct_timespec) c_int;
pub extern fn timespec_get(t: [*c]struct_timespec, b: c_int) c_int;
pub extern fn timegm(tp: [*c]struct_tm) time_t;
pub extern fn mktime(tp: [*c]struct_tm) time_t;
pub extern fn gmtime(timep: [*c]const time_t) [*c]struct_tm;
pub extern fn gmtime_r(timep: [*c]const time_t, result: [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime(timep: [*c]const time_t) [*c]struct_tm;
pub extern fn localtime_r(timep: [*c]const time_t, result: [*c]struct_tm) [*c]struct_tm;
pub extern fn strftime(s: [*c]u8, max: usize, format: [*c]const u8, tm: [*c]const struct_tm) usize;
pub extern fn strptime(s: [*c]const u8, format: [*c]const u8, tm: [*c]struct_tm) [*c]u8;
pub extern fn asctime(tp: [*c]const struct_tm) [*c]u8;
pub extern fn asctime_r(tp: [*c]const struct_tm, buf: [*c]u8) [*c]u8;
pub extern fn ctime(timep: [*c]const time_t) [*c]u8;
pub extern fn ctime_r(timep: [*c]const time_t, buf: [*c]u8) [*c]u8;
pub extern fn time(timep: [*c]time_t) time_t;
pub extern fn difftime(time1: time_t, time0: time_t) f64;
pub extern fn timer_create(clockid: clockid_t, evp: [*c]struct_sigevent, timerid: [*c]timer_t) c_int;
pub extern fn timer_delete(timerid: timer_t) c_int;
pub extern fn timer_settime(timerid: timer_t, flags: c_int, value: [*c]const struct_itimerspec, ovalue: [*c]struct_itimerspec) c_int;
pub extern fn timer_gettime(timerid: timer_t, value: [*c]struct_itimerspec) c_int;
pub extern fn timer_getoverrun(timerid: timer_t) c_int;
pub extern fn clock_nanosleep(clockid: clockid_t, flags: c_int, rqtp: [*c]const struct_timespec, rmtp: [*c]struct_timespec) c_int;
pub extern fn nanosleep(rqtp: [*c]const struct_timespec, rmtp: [*c]struct_timespec) c_int;
pub const __builtin_va_list = ?*anyopaque;
pub const va_list = __builtin_va_list;
pub const __gnuc_va_list = __builtin_va_list;
pub extern fn __errno() [*c]c_int;
pub extern fn _assert(filename: [*c]const u8, linenum: c_int) noreturn;
pub extern fn vfork() pid_t;
pub extern fn getpid() pid_t;
pub extern fn gettid() pid_t;
pub extern fn getppid() pid_t;
pub extern fn _exit(status: c_int) noreturn;
pub extern fn sleep(seconds: c_uint) c_uint;
pub extern fn usleep(usec: useconds_t) c_int;
pub extern fn pause() c_int;
pub extern fn nice(inc: c_int) c_int;
pub extern fn daemon(nochdir: c_int, noclose: c_int) c_int;
pub extern fn close(fd: c_int) c_int;
pub extern fn dup(fd: c_int) c_int;
pub extern fn dup2(fd1: c_int, fd2: c_int) c_int;
pub extern fn fsync(fd: c_int) c_int;
pub extern fn lseek(fd: c_int, offset: off_t, whence: c_int) off_t;
pub extern fn read(fd: c_int, buf: ?*anyopaque, nbytes: usize) isize;
pub extern fn write(fd: c_int, buf: ?*const anyopaque, nbytes: usize) isize;
pub extern fn pread(fd: c_int, buf: ?*anyopaque, nbytes: usize, offset: off_t) isize;
pub extern fn pwrite(fd: c_int, buf: ?*const anyopaque, nbytes: usize, offset: off_t) isize;
pub extern fn ftruncate(fd: c_int, length: off_t) c_int;
pub extern fn fchown(fd: c_int, owner: uid_t, group: gid_t) c_int;
pub extern fn isatty(fd: c_int) c_int;
pub extern fn ttyname(fd: c_int) [*c]u8;
pub extern fn ttyname_r(fd: c_int, buf: [*c]u8, buflen: usize) c_int;
pub extern fn pipe(fd: [*c]c_int) c_int;
pub extern fn pipe2(pipefd: [*c]c_int, flags: c_int) c_int;
pub extern fn alarm(seconds: c_uint) c_uint;
pub extern fn chdir(path: [*c]const u8) c_int;
pub extern fn getcwd(buf: [*c]u8, size: usize) [*c]u8;
pub extern fn access(path: [*c]const u8, amode: c_int) c_int;
pub extern fn rmdir(pathname: [*c]const u8) c_int;
pub extern fn unlink(pathname: [*c]const u8) c_int;
pub extern fn truncate(path: [*c]const u8, length: off_t) c_int;
pub extern fn symlink(path1: [*c]const u8, path2: [*c]const u8) c_int;
pub extern fn readlink(path: [*c]const u8, buf: [*c]u8, bufsize: usize) isize;
pub extern fn chown(path: [*c]const u8, owner: uid_t, group: gid_t) c_int;
pub extern fn lchown(path: [*c]const u8, owner: uid_t, group: gid_t) c_int;
pub extern fn swab(src: ?*const anyopaque, dest: ?*anyopaque, nbytes: isize) void;
pub extern fn getopt(argc: c_int, argv: [*c]const [*c]u8, optstring: [*c]const u8) c_int;
pub extern fn getoptargp() [*c][*c]u8;
pub extern fn getopterrp() [*c]c_int;
pub extern fn getoptindp() [*c]c_int;
pub extern fn getoptoptp() [*c]c_int;
pub extern fn gethostname(name: [*c]u8, namelen: usize) c_int;
pub extern fn sethostname(name: [*c]const u8, namelen: usize) c_int;
pub extern fn sysconf(name: c_int) c_long;
pub extern fn fpathconf(fildes: c_int, name: c_int) c_long;
pub extern fn pathconf(path: [*c]const u8, name: c_int) c_long;
pub extern fn setuid(uid: uid_t) c_int;
pub extern fn getuid() uid_t;
pub extern fn setgid(gid: gid_t) c_int;
pub extern fn getgid() gid_t;
pub extern fn seteuid(uid: uid_t) c_int;
pub extern fn geteuid() uid_t;
pub extern fn setegid(gid: gid_t) c_int;
pub extern fn getegid() gid_t;
pub extern fn setreuid(ruid: uid_t, euid: uid_t) c_int;
pub extern fn setregid(rgid: gid_t, egid: gid_t) c_int;
pub extern fn getentropy(buffer: ?*anyopaque, length: usize) c_int;
pub const struct_sem_s = extern struct {
    semcount: i16,
};
pub const sem_t = struct_sem_s;
pub extern fn sem_init(sem: [*c]sem_t, pshared: c_int, value: c_uint) c_int;
pub extern fn sem_destroy(sem: [*c]sem_t) c_int;
pub extern fn sem_wait(sem: [*c]sem_t) c_int;
pub extern fn sem_timedwait(sem: [*c]sem_t, abstime: [*c]const struct_timespec) c_int;
pub extern fn sem_clockwait(sem: [*c]sem_t, clockid: clockid_t, abstime: [*c]const struct_timespec) c_int;
pub extern fn sem_trywait(sem: [*c]sem_t) c_int;
pub extern fn sem_post(sem: [*c]sem_t) c_int;
pub extern fn sem_getvalue(sem: [*c]sem_t, sval: [*c]c_int) c_int;
pub extern fn sem_setprotocol(sem: [*c]sem_t, protocol: c_int) c_int;
pub extern fn sem_getprotocol(sem: [*c]sem_t, protocol: [*c]c_int) c_int;
pub const sclock_t = i32;
pub extern var g_system_timer: clock_t;
pub extern fn clock_timespec_compare(ts1: [*c]const struct_timespec, ts2: [*c]const struct_timespec) c_int;
pub extern fn clock_timespec_add(ts1: [*c]const struct_timespec, ts2: [*c]const struct_timespec, ts3: [*c]struct_timespec) void;
pub extern fn clock_timespec_subtract(ts1: [*c]const struct_timespec, ts2: [*c]const struct_timespec, ts3: [*c]struct_timespec) void;
pub extern fn clock_time2ticks(reltime: [*c]const struct_timespec, ticks: [*c]sclock_t) c_int;
pub extern fn clock_ticks2time(ticks: sclock_t, reltime: [*c]struct_timespec) c_int;
pub extern fn clock_systime_timespec(ts: [*c]struct_timespec) c_int;
pub extern fn nxsem_init(sem: [*c]sem_t, pshared: c_int, value: c_uint) c_int;
pub extern fn nxsem_destroy(sem: [*c]sem_t) c_int;
pub extern fn nxsem_wait(sem: [*c]sem_t) c_int;
pub extern fn nxsem_trywait(sem: [*c]sem_t) c_int;
pub extern fn nxsem_timedwait(sem: [*c]sem_t, abstime: [*c]const struct_timespec) c_int;
pub extern fn nxsem_clockwait(sem: [*c]sem_t, clockid: clockid_t, abstime: [*c]const struct_timespec) c_int;
pub extern fn nxsem_tickwait(sem: [*c]sem_t, delay: u32) c_int;
pub extern fn nxsem_post(sem: [*c]sem_t) c_int;
pub extern fn nxsem_get_value(sem: [*c]sem_t, sval: [*c]c_int) c_int;
pub extern fn nxsem_reset(sem: [*c]sem_t, count: i16) c_int;
pub extern fn nxsem_set_protocol(sem: [*c]sem_t, protocol: c_int) c_int;
pub extern fn nxsem_wait_uninterruptible(sem: [*c]sem_t) c_int;
pub extern fn nxsem_timedwait_uninterruptible(sem: [*c]sem_t, abstime: [*c]const struct_timespec) c_int;
pub extern fn nxsem_clockwait_uninterruptible(sem: [*c]sem_t, clockid: clockid_t, abstime: [*c]const struct_timespec) c_int;
pub extern fn nxsem_tickwait_uninterruptible(sem: [*c]sem_t, delay: u32) c_int;
pub const mutex_t = sem_t;
pub const struct_rmutex_s = extern struct {
    mutex: mutex_t,
    holder: pid_t,
    count: u16,
};
pub const rmutex_t = struct_rmutex_s;
pub fn nxmutex_init(arg_mutex: [*c]mutex_t) callconv(.C) c_int {
    var mutex = arg_mutex;
    var ret: c_int = sem_init(mutex, @as(c_int, 0), @bitCast(c_uint, @as(c_int, 1)));
    if (ret < @as(c_int, 0)) {
        return -__errno().*;
    }
    return ret;
}
pub fn nxmutex_destroy(arg_mutex: [*c]mutex_t) callconv(.C) c_int {
    var mutex = arg_mutex;
    var ret: c_int = sem_destroy(mutex);
    if (ret < @as(c_int, 0)) {
        return -__errno().*;
    }
    return ret;
}
pub fn nxmutex_lock(arg_mutex: [*c]mutex_t) callconv(.C) c_int {
    var mutex = arg_mutex;
    var ret: c_int = undefined;
    while (true) {
        ret = sem_wait(mutex);
        if (ret >= @as(c_int, 0)) {
            break;
        }
        ret = -__errno().*;
        if ((ret != -@as(c_int, 4)) and (ret != -@as(c_int, 140))) {
            break;
        }
    }
    return ret;
}
pub fn nxmutex_trylock(arg_mutex: [*c]mutex_t) callconv(.C) c_int {
    var mutex = arg_mutex;
    var ret: c_int = sem_trywait(mutex);
    if (ret < @as(c_int, 0)) {
        return -__errno().*;
    }
    return ret;
}
pub fn nxmutex_is_locked(arg_mutex: [*c]mutex_t) callconv(.C) bool {
    var mutex = arg_mutex;
    var cnt: c_int = undefined;
    var ret: c_int = undefined;
    ret = sem_getvalue(mutex, &cnt);
    {
        if (!(ret == OK)) {
            _assert("/home/user/nuttx/nuttx/include/nuttx/mutex.h", @as(c_int, 230));
        }
    }
    return cnt < @as(c_int, 1);
}
pub fn nxmutex_unlock(arg_mutex: [*c]mutex_t) callconv(.C) c_int {
    var mutex = arg_mutex;
    var ret: c_int = undefined;
    ret = sem_post(mutex);
    if (ret < @as(c_int, 0)) {
        return -__errno().*;
    }
    return ret;
}
pub fn nxrmutex_init(arg_rmutex: [*c]rmutex_t) callconv(.C) c_int {
    var rmutex = arg_rmutex;
    rmutex.*.count = 0;
    rmutex.*.holder = @bitCast(pid_t, -@as(c_int, 1));
    return nxmutex_init(&rmutex.*.mutex);
}
pub fn nxrmutex_destroy(arg_rmutex: [*c]rmutex_t) callconv(.C) c_int {
    var rmutex = arg_rmutex;
    return nxmutex_destroy(&rmutex.*.mutex);
}
pub fn nxrmutex_lock(arg_rmutex: [*c]rmutex_t) callconv(.C) c_int {
    var rmutex = arg_rmutex;
    var tid: pid_t = gettid();
    var ret: c_int = undefined;
    if (rmutex.*.holder == tid) {
        {
            if (!(@bitCast(c_uint, @as(c_uint, rmutex.*.count)) < @as(c_uint, 65535))) {
                _assert("/home/user/nuttx/nuttx/include/nuttx/mutex.h", @as(c_int, 342));
            }
        }
        rmutex.*.count +%= 1;
        ret = OK;
    } else {
        ret = nxmutex_lock(&rmutex.*.mutex);
        if (ret == OK) {
            rmutex.*.holder = tid;
            rmutex.*.count = 1;
        }
    }
    return ret;
}
pub fn nxrmutex_trylock(arg_rmutex: [*c]rmutex_t) callconv(.C) c_int {
    var rmutex = arg_rmutex;
    var tid: pid_t = gettid();
    var ret: c_int = undefined;
    if (rmutex.*.holder == tid) {
        {
            if (!(@bitCast(c_uint, @as(c_uint, rmutex.*.count)) < @as(c_uint, 65535))) {
                _assert("/home/user/nuttx/nuttx/include/nuttx/mutex.h", @as(c_int, 389));
            }
        }
        rmutex.*.count +%= 1;
        ret = OK;
    } else {
        ret = nxmutex_trylock(&rmutex.*.mutex);
        if (ret == OK) {
            rmutex.*.holder = tid;
            rmutex.*.count = 1;
        }
    }
    return ret;
}
pub fn nxrmutex_is_locked(arg_rmutex: [*c]rmutex_t) callconv(.C) bool {
    var rmutex = arg_rmutex;
    return @bitCast(c_int, @as(c_uint, rmutex.*.count)) > @as(c_int, 0);
}
pub fn nxrmutex_is_hold(arg_rmutex: [*c]rmutex_t) callconv(.C) bool {
    var rmutex = arg_rmutex;
    return rmutex.*.holder == gettid();
}
pub fn nxrmutex_unlock(arg_rmutex: [*c]rmutex_t) callconv(.C) c_int {
    var rmutex = arg_rmutex;
    var tid: pid_t = gettid();
    var ret: c_int = OK;
    {
        if (!(rmutex.*.holder == tid)) {
            _assert("/home/user/nuttx/nuttx/include/nuttx/mutex.h", @as(c_int, 470));
        }
    }
    {
        if (!(@bitCast(c_int, @as(c_uint, rmutex.*.count)) > @as(c_int, 0))) {
            _assert("/home/user/nuttx/nuttx/include/nuttx/mutex.h", @as(c_int, 471));
        }
    }
    if (@bitCast(c_int, @as(c_uint, rmutex.*.count)) == @as(c_int, 1)) {
        rmutex.*.count = 0;
        rmutex.*.holder = @bitCast(pid_t, -@as(c_int, 1));
        ret = nxmutex_unlock(&rmutex.*.mutex);
    } else {
        rmutex.*.count -%= 1;
    }
    return ret;
}
pub const pollevent_t = u32;
pub const struct_pollfd = extern struct {
    fd: c_int,
    events: pollevent_t,
    revents: pollevent_t,
    ptr: ?*anyopaque,
    sem: [*c]sem_t,
    priv: ?*anyopaque,
};
pub const struct_file_operations = extern struct {
    open: ?fn ([*c]struct_file) callconv(.C) c_int,
    close: ?fn ([*c]struct_file) callconv(.C) c_int,
    read: ?fn ([*c]struct_file, [*c]u8, usize) callconv(.C) isize,
    write: ?fn ([*c]struct_file, [*c]const u8, usize) callconv(.C) isize,
    seek: ?fn ([*c]struct_file, off_t, c_int) callconv(.C) off_t,
    ioctl: ?fn ([*c]struct_file, c_int, c_ulong) callconv(.C) c_int,
    poll: ?fn ([*c]struct_file, [*c]struct_pollfd, bool) callconv(.C) c_int,
};
pub const struct_geometry = extern struct {
    geo_available: bool,
    geo_mediachanged: bool,
    geo_writeenabled: bool,
    geo_nsectors: blkcnt_t,
    geo_sectorsize: blksize_t,
};
pub const struct_block_operations = extern struct {
    open: ?fn ([*c]struct_inode) callconv(.C) c_int,
    close: ?fn ([*c]struct_inode) callconv(.C) c_int,
    read: ?fn ([*c]struct_inode, [*c]u8, blkcnt_t, c_uint) callconv(.C) isize,
    write: ?fn ([*c]struct_inode, [*c]const u8, blkcnt_t, c_uint) callconv(.C) isize,
    geometry: ?fn ([*c]struct_inode, [*c]struct_geometry) callconv(.C) c_int,
    ioctl: ?fn ([*c]struct_inode, c_int, c_ulong) callconv(.C) c_int,
};
pub const struct_mtd_dev_s = opaque {};
pub const struct_stat = opaque {};
pub const struct_fs_dirent_s = opaque {};
pub const struct_statfs = opaque {};
pub const struct_mountpt_operations = extern struct {
    open: ?fn ([*c]struct_file, [*c]const u8, c_int, mode_t) callconv(.C) c_int,
    close: ?fn ([*c]struct_file) callconv(.C) c_int,
    read: ?fn ([*c]struct_file, [*c]u8, usize) callconv(.C) isize,
    write: ?fn ([*c]struct_file, [*c]const u8, usize) callconv(.C) isize,
    seek: ?fn ([*c]struct_file, off_t, c_int) callconv(.C) off_t,
    ioctl: ?fn ([*c]struct_file, c_int, c_ulong) callconv(.C) c_int,
    sync: ?fn ([*c]struct_file) callconv(.C) c_int,
    dup: ?fn ([*c]const struct_file, [*c]struct_file) callconv(.C) c_int,
    fstat: ?fn ([*c]const struct_file, ?*struct_stat) callconv(.C) c_int,
    fchstat: ?fn ([*c]const struct_file, ?*const struct_stat, c_int) callconv(.C) c_int,
    truncate: ?fn ([*c]struct_file, off_t) callconv(.C) c_int,
    opendir: ?fn ([*c]struct_inode, [*c]const u8, ?*struct_fs_dirent_s) callconv(.C) c_int,
    closedir: ?fn ([*c]struct_inode, ?*struct_fs_dirent_s) callconv(.C) c_int,
    readdir: ?fn ([*c]struct_inode, ?*struct_fs_dirent_s) callconv(.C) c_int,
    rewinddir: ?fn ([*c]struct_inode, ?*struct_fs_dirent_s) callconv(.C) c_int,
    bind: ?fn ([*c]struct_inode, ?*const anyopaque, [*c]?*anyopaque) callconv(.C) c_int,
    unbind: ?fn (?*anyopaque, [*c][*c]struct_inode, c_uint) callconv(.C) c_int,
    statfs: ?fn ([*c]struct_inode, ?*struct_statfs) callconv(.C) c_int,
    unlink: ?fn ([*c]struct_inode, [*c]const u8) callconv(.C) c_int,
    mkdir: ?fn ([*c]struct_inode, [*c]const u8, mode_t) callconv(.C) c_int,
    rmdir: ?fn ([*c]struct_inode, [*c]const u8) callconv(.C) c_int,
    rename: ?fn ([*c]struct_inode, [*c]const u8, [*c]const u8) callconv(.C) c_int,
    stat: ?fn ([*c]struct_inode, [*c]const u8, ?*struct_stat) callconv(.C) c_int,
    chstat: ?fn ([*c]struct_inode, [*c]const u8, ?*const struct_stat, c_int) callconv(.C) c_int,
};
pub const union_inode_ops_u = extern union {
    i_ops: [*c]const struct_file_operations,
    i_bops: [*c]const struct_block_operations,
    i_mtd: ?*struct_mtd_dev_s,
    i_mops: [*c]const struct_mountpt_operations,
};
pub const struct_inode = extern struct {
    i_parent: [*c]struct_inode,
    i_peer: [*c]struct_inode,
    i_child: [*c]struct_inode,
    i_crefs: i16,
    i_flags: u16,
    u: union_inode_ops_u,
    i_private: ?*anyopaque,
    i_name: [1]u8,
};
pub const struct_file = extern struct {
    f_oflags: c_int,
    f_pos: off_t,
    f_inode: [*c]struct_inode,
    f_priv: ?*anyopaque,
};
pub const struct_partition_info_s = extern struct {
    numsectors: usize,
    sectorsize: usize,
    startsector: off_t,
    parent: [33]u8,
};
pub const struct_filelist = extern struct {
    fl_sem: sem_t,
    fl_rows: u8,
    fl_files: [*c][*c]struct_file,
};
pub const struct_file_struct = extern struct {
    fs_next: [*c]struct_file_struct,
    fs_fd: c_int,
    fs_oflags: u16,
    fs_flags: u8,
    fs_nungotten: u8,
    fs_ungotten: [2]u8,
};
pub const struct_streamlist = extern struct {
    sl_sem: sem_t,
    sl_std: [3]struct_file_struct,
    sl_head: [*c]struct_file_struct,
    sl_tail: [*c]struct_file_struct,
};
pub extern fn fs_initialize() void;
pub extern fn register_driver(path: [*c]const u8, fops: [*c]const struct_file_operations, mode: mode_t, priv: ?*anyopaque) c_int;
pub extern fn register_blockdriver(path: [*c]const u8, bops: [*c]const struct_block_operations, mode: mode_t, priv: ?*anyopaque) c_int;
pub extern fn register_blockpartition(partition: [*c]const u8, mode: mode_t, parent: [*c]const u8, firstsector: off_t, nsectors: off_t) c_int;
pub extern fn unregister_driver(path: [*c]const u8) c_int;
pub extern fn unregister_blockdriver(path: [*c]const u8) c_int;
pub extern fn nx_mount(source: [*c]const u8, target: [*c]const u8, filesystemtype: [*c]const u8, mountflags: c_ulong, data: ?*const anyopaque) c_int;
pub extern fn nx_umount2(target: [*c]const u8, flags: c_uint) c_int;
pub extern fn files_initlist(list: [*c]struct_filelist) void;
pub extern fn files_releaselist(list: [*c]struct_filelist) void;
pub extern fn files_duplist(plist: [*c]struct_filelist, clist: [*c]struct_filelist) c_int;
pub extern fn file_dup(filep: [*c]struct_file, minfd: c_int) c_int;
pub extern fn nx_dup(fd: c_int) c_int;
pub extern fn file_dup2(filep1: [*c]struct_file, filep2: [*c]struct_file) c_int;
pub extern fn nx_dup2(fd1: c_int, fd2: c_int) c_int;
pub extern fn file_open(filep: [*c]struct_file, path: [*c]const u8, oflags: c_int, ...) c_int;
pub extern fn nx_open(path: [*c]const u8, oflags: c_int, ...) c_int;
pub extern fn fs_getfilep(fd: c_int, filep: [*c][*c]struct_file) c_int;
pub extern fn file_close(filep: [*c]struct_file) c_int;
pub extern fn nx_close(fd: c_int) c_int;
pub extern fn open_blockdriver(pathname: [*c]const u8, mountflags: c_int, ppinode: [*c][*c]struct_inode) c_int;
pub extern fn close_blockdriver(inode: [*c]struct_inode) c_int;
pub const struct_join_s = opaque {};
pub const struct_task_info_s = opaque {};
pub const struct_sq_entry_s = extern struct {
    flink: [*c]struct_sq_entry_s,
};
pub const sq_entry_t = struct_sq_entry_s;
pub const struct_sq_queue_s = extern struct {
    head: [*c]sq_entry_t,
    tail: [*c]sq_entry_t,
};
pub const sq_queue_t = struct_sq_queue_s;
pub const struct_task_group_s = extern struct {
    tg_pid: pid_t,
    tg_ppid: pid_t,
    tg_flags: u8,
    tg_nmembers: u8,
    tg_nwaiters: u8,
    tg_waitflags: u8,
    tg_exitsem: sem_t,
    tg_statloc: [*c]c_int,
    tg_joinsem: sem_t,
    tg_joinhead: ?*struct_join_s,
    tg_jointail: ?*struct_join_s,
    tg_info: ?*struct_task_info_s,
    tg_sigactionq: sq_queue_t,
    tg_sigpendingq: sq_queue_t,
    itimer: timer_t,
    tg_filelist: struct_filelist,
    tg_streamlist: struct_streamlist,
};
pub const start_t = ?fn () callconv(.C) void;
pub const pthread_addr_t = ?*anyopaque;
pub const pthread_startroutine_t = ?fn (pthread_addr_t) callconv(.C) pthread_addr_t;
pub const union_entry_u = extern union {
    pthread: pthread_startroutine_t,
    sensortest_main: main_t,
};
pub const entry_t = union_entry_u;
pub const wdparm_t = usize;
pub const wdentry_t = ?fn (wdparm_t) callconv(.C) void;
pub const struct_wdog_s = extern struct {
    next: [*c]struct_wdog_s,
    func: wdentry_t,
    lag: sclock_t,
    arg: wdparm_t,
};
pub const sigset_t = u32;
pub const struct_siginfo = extern struct {
    si_signo: u8,
    si_code: u8,
    si_errno: u8,
    si_value: union_sigval,
};
pub const siginfo_t = struct_siginfo;
pub const struct_mqueue_inode_s = opaque {};
pub const struct_xcptcontext = extern struct {
    sigdeliver: ?*anyopaque,
    saved_regs: [*c]usize,
    regs: [*c]usize,
};
pub const struct_tcb_s = extern struct {
    flink: [*c]struct_tcb_s,
    blink: [*c]struct_tcb_s,
    group: [*c]struct_task_group_s,
    pid: pid_t,
    sched_priority: u8,
    init_priority: u8,
    start: start_t,
    entry: entry_t,
    task_state: u8,
    flags: u16,
    lockcount: i16,
    errcode: i16,
    timeslice: i32,
    waitdog: struct_wdog_s,
    adj_stack_size: usize,
    stack_alloc_ptr: ?*anyopaque,
    stack_base_ptr: ?*anyopaque,
    waitsem: [*c]sem_t,
    sigprocmask: sigset_t,
    sigwaitmask: sigset_t,
    sigpendactionq: sq_queue_t,
    sigpostedq: sq_queue_t,
    sigunbinfo: siginfo_t,
    msgwaitq: ?*struct_mqueue_inode_s,
    xcp: struct_xcptcontext,
    name: [13]u8,
};
pub extern fn fs_fdopen(fd: c_int, oflags: c_int, tcb: [*c]struct_tcb_s, filep: [*c][*c]struct_file_struct) c_int;
pub extern fn lib_flushall(list: [*c]struct_streamlist) c_int;
pub extern fn file_read(filep: [*c]struct_file, buf: ?*anyopaque, nbytes: usize) isize;
pub extern fn nx_read(fd: c_int, buf: ?*anyopaque, nbytes: usize) isize;
pub extern fn file_write(filep: [*c]struct_file, buf: ?*const anyopaque, nbytes: usize) isize;
pub extern fn nx_write(fd: c_int, buf: ?*const anyopaque, nbytes: usize) isize;
pub extern fn file_pread(filep: [*c]struct_file, buf: ?*anyopaque, nbytes: usize, offset: off_t) isize;
pub extern fn file_pwrite(filep: [*c]struct_file, buf: ?*const anyopaque, nbytes: usize, offset: off_t) isize;
pub extern fn file_sendfile(outfile: [*c]struct_file, infile: [*c]struct_file, offset: [*c]off_t, count: usize) isize;
pub extern fn file_seek(filep: [*c]struct_file, offset: off_t, whence: c_int) off_t;
pub extern fn nx_seek(fd: c_int, offset: off_t, whence: c_int) off_t;
pub extern fn file_fsync(filep: [*c]struct_file) c_int;
pub extern fn file_truncate(filep: [*c]struct_file, length: off_t) c_int;
pub extern fn file_mmap(filep: [*c]struct_file, start: ?*anyopaque, length: usize, prot: c_int, flags: c_int, offset: off_t, mapped: [*c]?*anyopaque) c_int;
pub extern fn file_munmap(start: ?*anyopaque, length: usize) c_int;
pub extern fn file_ioctl(filep: [*c]struct_file, req: c_int, ...) c_int;
pub extern fn nx_ioctl(fd: c_int, req: c_int, ...) c_int;
pub extern fn file_fcntl(filep: [*c]struct_file, cmd: c_int, ...) c_int;
pub extern fn nx_fcntl(fd: c_int, cmd: c_int, ...) c_int;
pub extern fn file_poll(filep: [*c]struct_file, fds: [*c]struct_pollfd, setup: bool) c_int;
pub extern fn nx_poll(fds: [*c]struct_pollfd, nfds: c_uint, timeout: c_int) c_int;
pub extern fn file_fstat(filep: [*c]struct_file, buf: ?*struct_stat) c_int;
pub extern fn nx_stat(path: [*c]const u8, buf: ?*struct_stat, resolve: c_int) c_int;
pub extern fn file_fchstat(filep: [*c]struct_file, buf: ?*struct_stat, flags: c_int) c_int;
pub extern fn nx_unlink(pathname: [*c]const u8) c_int;
pub const struct_winsize = extern struct {
    ws_row: u16,
    ws_col: u16,
    ws_xpixel: u16,
    ws_ypixel: u16,
};
pub const struct_serial_rs485 = extern struct {
    flags: u32,
    delay_rts_before_send: u32,
    delay_rts_after_send: u32,
};
pub fn sensor_get_timestamp() callconv(.C) u64 {
    var ts: struct_timespec = undefined;
    _ = clock_systime_timespec(&ts);
    return (@as(c_ulonglong, 1000000) *% @bitCast(c_ulonglong, @as(c_ulonglong, ts.tv_sec))) +% @bitCast(c_ulonglong, @as(c_longlong, @divTrunc(ts.tv_nsec, @bitCast(c_long, @as(c_long, @as(c_int, 1000))))));
}
pub const struct_sensor_accel = extern struct {
    timestamp: u64,
    x: f32,
    y: f32,
    z: f32,
    temperature: f32,
};
pub const struct_sensor_gyro = extern struct {
    timestamp: u64,
    x: f32,
    y: f32,
    z: f32,
    temperature: f32,
};
pub const struct_sensor_mag = extern struct {
    timestamp: u64,
    x: f32,
    y: f32,
    z: f32,
    temperature: f32,
};
pub const struct_sensor_baro = extern struct {
    timestamp: u64,
    pressure: f32,
    temperature: f32,
};
pub const struct_sensor_prox = extern struct {
    timestamp: u64,
    proximity: f32,
};
pub const struct_sensor_light = extern struct {
    timestamp: u64,
    light: f32,
};
pub const struct_sensor_humi = extern struct {
    timestamp: u64,
    humidity: f32,
};
pub const struct_sensor_temp = extern struct {
    timestamp: u64,
    temperature: f32,
};
pub const struct_sensor_rgb = extern struct {
    timestamp: u64,
    r: f32,
    g: f32,
    b: f32,
};
pub const struct_sensor_hall = extern struct {
    timestamp: u64,
    hall: bool,
};
pub const struct_sensor_ir = extern struct {
    timestamp: u64,
    ir: f32,
};
pub const struct_sensor_gps = extern struct {
    timestamp: u64,
    time_utc: u64,
    latitude: f32,
    longitude: f32,
    altitude: f32,
    altitude_ellipsoid: f32,
    eph: f32,
    epv: f32,
    hdop: f32,
    vdop: f32,
    ground_speed: f32,
    course: f32,
    satellites_used: u32,
};
pub const struct_sensor_uv = extern struct {
    timestamp: u64,
    uvi: f32,
};
pub const struct_sensor_noise = extern struct {
    timestamp: u64,
    db: f32,
};
pub const struct_sensor_pm25 = extern struct {
    timestamp: u64,
    pm25: f32,
};
pub const struct_sensor_pm10 = extern struct {
    timestamp: u64,
    pm10: f32,
};
pub const struct_sensor_pm1p0 = extern struct {
    timestamp: u64,
    pm1p0: f32,
};
pub const struct_sensor_co2 = extern struct {
    timestamp: u64,
    co2: f32,
};
pub const struct_sensor_hcho = extern struct {
    timestamp: u64,
    hcho: f32,
};
pub const struct_sensor_tvoc = extern struct {
    timestamp: u64,
    tvoc: f32,
};
pub const struct_sensor_ph = extern struct {
    timestamp: u64,
    ph: f32,
};
pub const struct_sensor_dust = extern struct {
    timestamp: u64,
    dust: f32,
};
pub const struct_sensor_hrate = extern struct {
    timestamp: u64,
    bpm: f32,
};
pub const struct_sensor_hbeat = extern struct {
    timestamp: u64,
    beat: f32,
};
pub const struct_sensor_ecg = extern struct {
    timestamp: u64,
    ecg: f32,
};
pub const struct_sensor_ppgd = extern struct {
    timestamp: u64,
    ppg: [2]u32,
    current: u32,
    gain: [2]u16,
};
pub const struct_sensor_ppgq = extern struct {
    timestamp: u64,
    ppg: [4]u32,
    current: u32,
    gain: [4]u16,
};
pub const struct_sensor_impd = extern struct {
    timestamp: u64,
    real: f32,
    imag: f32,
};
pub const struct_sensor_ots = extern struct {
    timestamp: u64,
    x: i32,
    y: i32,
};
pub const struct_satellite = extern struct {
    svid: u32,
    elevation: u32,
    azimuth: u32,
    snr: u32,
};
pub const struct_sensor_gps_satellite = extern struct {
    timestamp: u64,
    count: u32,
    satellites: u32,
    info: [4]struct_satellite,
};
pub const struct_sensor_wake_gesture = extern struct {
    timestamp: u64,
    event: u32,
};
pub const struct_sensor_cap = extern struct {
    timestamp: u64,
    status: i32,
    rawdata: [4]i32,
};
pub const struct_sensor_ops_s = extern struct {
    open: ?fn ([*c]struct_sensor_lowerhalf_s, [*c]struct_file) callconv(.C) c_int,
    close: ?fn ([*c]struct_sensor_lowerhalf_s, [*c]struct_file) callconv(.C) c_int,
    activate: ?fn ([*c]struct_sensor_lowerhalf_s, [*c]struct_file, bool) callconv(.C) c_int,
    set_interval: ?fn ([*c]struct_sensor_lowerhalf_s, [*c]struct_file, [*c]c_ulong) callconv(.C) c_int,
    batch: ?fn ([*c]struct_sensor_lowerhalf_s, [*c]struct_file, [*c]c_ulong) callconv(.C) c_int,
    fetch: ?fn ([*c]struct_sensor_lowerhalf_s, [*c]struct_file, [*c]u8, usize) callconv(.C) c_int,
    selftest: ?fn ([*c]struct_sensor_lowerhalf_s, [*c]struct_file, c_ulong) callconv(.C) c_int,
    set_calibvalue: ?fn ([*c]struct_sensor_lowerhalf_s, [*c]struct_file, c_ulong) callconv(.C) c_int,
    calibrate: ?fn ([*c]struct_sensor_lowerhalf_s, [*c]struct_file, c_ulong) callconv(.C) c_int,
    control: ?fn ([*c]struct_sensor_lowerhalf_s, [*c]struct_file, c_int, c_ulong) callconv(.C) c_int,
};
pub const sensor_push_event_t = ?fn (?*anyopaque, ?*const anyopaque, usize) callconv(.C) isize;
pub const sensor_notify_event_t = ?fn (?*anyopaque) callconv(.C) void;
const union_unnamed_2 = extern union {
    push_event: sensor_push_event_t,
    notify_event: sensor_notify_event_t,
};
pub const struct_sensor_lowerhalf_s = extern struct {
    type: c_int,
    nbuffer: c_ulong,
    uncalibrated: bool,
    ops: [*c]const struct_sensor_ops_s,
    unnamed_0: union_unnamed_2,
    sensor_lock: ?fn (?*anyopaque) callconv(.C) void,
    sensor_unlock: ?fn (?*anyopaque) callconv(.C) void,
    priv: ?*anyopaque,
    persist: bool,
};
pub const struct_sensor_state_s = extern struct {
    esize: c_ulong,
    nbuffer: c_ulong,
    min_latency: c_ulong,
    min_interval: c_ulong,
    nsubscribers: c_ulong,
    nadvertisers: c_ulong,
    generation: c_ulong,
    priv: ?*anyopaque,
};
pub const struct_sensor_ustate_s = extern struct {
    esize: c_ulong,
    latency: c_ulong,
    interval: c_ulong,
    generation: c_ulong,
};
pub const struct_sensor_ioctl_s = extern struct {
    len: usize,
    data: [1]u8,
};
pub extern fn sensor_register(dev: [*c]struct_sensor_lowerhalf_s, devno: c_int) c_int;
pub extern fn sensor_custom_register(dev: [*c]struct_sensor_lowerhalf_s, path: [*c]const u8, esize: c_ulong) c_int;
pub extern fn sensor_unregister(dev: [*c]struct_sensor_lowerhalf_s, devno: c_int) void;
pub extern fn sensor_custom_unregister(dev: [*c]struct_sensor_lowerhalf_s, path: [*c]const u8) void;
pub extern fn ioctl(fd: c_int, req: c_int, ...) c_int;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8),
    __clang_max_align_nonce2: c_longdouble align(16),
};
pub const imaxdiv_t = ?*anyopaque;
pub extern fn imaxabs(j: intmax_t) intmax_t;
pub extern fn imaxdiv(number: intmax_t, denom: intmax_t) imaxdiv_t;
pub extern fn strtoimax(nptr: [*c]const u8, endptr: [*c][*c]u8, base: c_int) intmax_t;
pub extern fn strtoumax(nptr: [*c]const u8, endptr: [*c][*c]u8, base: c_int) uintmax_t;
pub extern fn wcstoimax(nptr: [*c]const wchar_t, endptr: [*c][*c]wchar_t, base: c_int) intmax_t;
pub extern fn wcstoumax(nptr: [*c]const wchar_t, endptr: [*c][*c]wchar_t, base: c_int) uintmax_t;
pub const struct_div_s = extern struct {
    quot: c_int,
    rem: c_int,
};
pub const div_t = struct_div_s;
pub const struct_ldiv_s = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const ldiv_t = struct_ldiv_s;
pub const struct_lldiv_s = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const lldiv_t = struct_lldiv_s;
pub extern fn srand(seed: c_uint) void;
pub extern fn rand() c_int;
pub extern fn random() c_long;
pub extern fn arc4random_buf(bytes: ?*anyopaque, nbytes: usize) void;
pub extern fn get_environ_ptr() [*c][*c]u8;
pub extern fn getenv(name: [*c]const u8) [*c]u8;
pub extern fn putenv(string: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn setenv(name: [*c]const u8, value: [*c]const u8, overwrite: c_int) c_int;
pub extern fn unsetenv(name: [*c]const u8) c_int;
pub extern fn exit(status: c_int) noreturn;
pub extern fn abort() noreturn;
pub extern fn atexit(func: ?fn () callconv(.C) void) c_int;
pub extern fn on_exit(func: ?fn (c_int, ?*anyopaque) callconv(.C) void, arg: ?*anyopaque) c_int;
pub extern fn _Exit(status: c_int) noreturn;
pub extern fn system(cmd: [*c]const u8) c_int;
pub extern fn realpath(path: [*c]const u8, resolved: [*c]u8) [*c]u8;
pub extern fn strtol(nptr: [*c]const u8, endptr: [*c][*c]u8, base: c_int) c_long;
pub extern fn strtoul(nptr: [*c]const u8, endptr: [*c][*c]u8, base: c_int) c_ulong;
pub extern fn strtoll(nptr: [*c]const u8, endptr: [*c][*c]u8, base: c_int) c_longlong;
pub extern fn strtoull(nptr: [*c]const u8, endptr: [*c][*c]u8, base: c_int) c_ulonglong;
pub extern fn strtof(str: [*c]const u8, endptr: [*c][*c]u8) f32;
pub extern fn strtod(str: [*c]const u8, endptr: [*c][*c]u8) f64;
pub extern fn strtold(str: [*c]const u8, endptr: [*c][*c]u8) c_longdouble;
pub extern fn atoi(nptr: [*c]const u8) c_int;
pub extern fn atol(nptr: [*c]const u8) c_long;
pub extern fn atoll(nptr: [*c]const u8) c_longlong;
pub extern fn atof(nptr: [*c]const u8) f64;
pub extern fn itoa(val: c_int, str: [*c]u8, base: c_int) [*c]u8;
pub extern fn mblen(s: [*c]const u8, n: usize) c_int;
pub extern fn mbtowc(pwc: [*c]wchar_t, s: [*c]const u8, n: usize) c_int;
pub extern fn mbstowcs(dst: [*c]wchar_t, src: [*c]const u8, len: usize) usize;
pub extern fn wctomb(s: [*c]u8, wchar: wchar_t) c_int;
pub extern fn wcstombs(dst: [*c]u8, src: [*c]const wchar_t, len: usize) usize;
pub extern fn malloc(usize) ?*anyopaque;
pub extern fn valloc(usize) ?*anyopaque;
pub extern fn free(?*anyopaque) void;
pub extern fn realloc(?*anyopaque, usize) ?*anyopaque;
pub extern fn memalign(usize, usize) ?*anyopaque;
pub extern fn zalloc(usize) ?*anyopaque;
pub extern fn calloc(usize, usize) ?*anyopaque;
pub extern fn aligned_alloc(usize, usize) ?*anyopaque;
pub extern fn posix_memalign([*c]?*anyopaque, usize, usize) c_int;
pub extern fn abs(j: c_int) c_int;
pub extern fn labs(j: c_long) c_long;
pub extern fn llabs(j: c_longlong) c_longlong;
pub extern fn div(number: c_int, denom: c_int) div_t;
pub extern fn ldiv(number: c_long, denom: c_long) ldiv_t;
pub extern fn lldiv(number: c_longlong, denom: c_longlong) lldiv_t;
pub extern fn mktemp(path_template: [*c]u8) [*c]u8;
pub extern fn mkstemp(path_template: [*c]u8) c_int;
pub extern fn mkdtemp(path_template: [*c]u8) [*c]u8;
pub extern fn qsort(base: ?*anyopaque, nel: usize, width: usize, compar: ?fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) void;
pub extern fn bsearch(key: ?*const anyopaque, base: ?*const anyopaque, nel: usize, width: usize, compar: ?fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) ?*anyopaque;
pub extern fn getprogname() [*c]const u8;
pub const struct_dq_entry_s = extern struct {
    flink: [*c]struct_dq_entry_s,
    blink: [*c]struct_dq_entry_s,
};
pub const dq_entry_t = struct_dq_entry_s;
pub const struct_dq_queue_s = extern struct {
    head: [*c]dq_entry_t,
    tail: [*c]dq_entry_t,
};
pub const dq_queue_t = struct_dq_queue_s;
pub extern fn sq_addfirst(node: [*c]sq_entry_t, queue: [*c]sq_queue_t) void;
pub extern fn dq_addfirst(node: [*c]dq_entry_t, queue: [*c]dq_queue_t) void;
pub extern fn sq_addlast(node: [*c]sq_entry_t, queue: [*c]sq_queue_t) void;
pub extern fn dq_addlast(node: [*c]dq_entry_t, queue: [*c]dq_queue_t) void;
pub extern fn sq_addafter(prev: [*c]sq_entry_t, node: [*c]sq_entry_t, queue: [*c]sq_queue_t) void;
pub extern fn dq_addafter(prev: [*c]dq_entry_t, node: [*c]dq_entry_t, queue: [*c]dq_queue_t) void;
pub extern fn dq_addbefore(next: [*c]dq_entry_t, node: [*c]dq_entry_t, queue: [*c]dq_queue_t) void;
pub extern fn sq_cat(queue1: [*c]sq_queue_t, queue2: [*c]sq_queue_t) void;
pub extern fn dq_cat(queue1: [*c]dq_queue_t, queue2: [*c]dq_queue_t) void;
pub extern fn sq_remafter(node: [*c]sq_entry_t, queue: [*c]sq_queue_t) [*c]sq_entry_t;
pub extern fn sq_rem(node: [*c]sq_entry_t, queue: [*c]sq_queue_t) void;
pub extern fn dq_rem(node: [*c]dq_entry_t, queue: [*c]dq_queue_t) void;
pub extern fn sq_remlast(queue: [*c]sq_queue_t) [*c]sq_entry_t;
pub extern fn dq_remlast(queue: [*c]dq_queue_t) [*c]dq_entry_t;
pub extern fn sq_remfirst(queue: [*c]sq_queue_t) [*c]sq_entry_t;
pub extern fn dq_remfirst(queue: [*c]dq_queue_t) [*c]dq_entry_t;
pub extern fn sq_count(queue: [*c]sq_queue_t) usize;
pub extern fn dq_count(queue: [*c]dq_queue_t) usize;
pub extern fn strdup(s: [*c]const u8) [*c]u8;
pub extern fn strndup(s: [*c]const u8, size: usize) [*c]u8;
pub extern fn strerror(c_int) [*c]u8;
pub extern fn strerror_r(c_int, [*c]u8, usize) c_int;
pub extern fn strlen([*c]const u8) usize;
pub extern fn strnlen([*c]const u8, usize) usize;
pub extern fn strcat([*c]u8, [*c]const u8) [*c]u8;
pub extern fn strlcat([*c]u8, [*c]const u8, usize) usize;
pub extern fn strncat([*c]u8, [*c]const u8, usize) [*c]u8;
pub extern fn strcmp([*c]const u8, [*c]const u8) c_int;
pub extern fn strncmp([*c]const u8, [*c]const u8, usize) c_int;
pub extern fn strcoll([*c]const u8, s2: [*c]const u8) c_int;
pub extern fn strcpy(dest: [*c]u8, src: [*c]const u8) [*c]u8;
pub extern fn stpcpy(dest: [*c]u8, src: [*c]const u8) [*c]u8;
pub extern fn strlcpy(dst: [*c]u8, src: [*c]const u8, siz: usize) usize;
pub extern fn strncpy([*c]u8, [*c]const u8, usize) [*c]u8;
pub extern fn stpncpy([*c]u8, [*c]const u8, usize) [*c]u8;
pub extern fn strpbrk([*c]const u8, [*c]const u8) [*c]u8;
pub extern fn strchr(s: [*c]const u8, c: c_int) [*c]u8;
pub extern fn strchrnul(s: [*c]const u8, c: c_int) [*c]u8;
pub extern fn strrchr(s: [*c]const u8, c: c_int) [*c]u8;
pub extern fn strspn([*c]const u8, [*c]const u8) usize;
pub extern fn strcspn([*c]const u8, [*c]const u8) usize;
pub extern fn strstr([*c]const u8, [*c]const u8) [*c]u8;
pub extern fn strcasestr([*c]const u8, [*c]const u8) [*c]u8;
pub extern fn strsep([*c][*c]u8, [*c]const u8) [*c]u8;
pub extern fn strsignal(signum: c_int) [*c]u8;
pub extern fn strtok([*c]u8, [*c]const u8) [*c]u8;
pub extern fn strtok_r([*c]u8, [*c]const u8, [*c][*c]u8) [*c]u8;
pub extern fn strxfrm([*c]u8, [*c]const u8, n: usize) usize;
pub extern fn memchr(s: ?*const anyopaque, c: c_int, n: usize) ?*anyopaque;
pub extern fn memrchr(s: ?*const anyopaque, c: c_int, n: usize) ?*anyopaque;
pub extern fn memccpy(s1: ?*anyopaque, s2: ?*const anyopaque, c: c_int, n: usize) ?*anyopaque;
pub extern fn memcmp(s1: ?*const anyopaque, s2: ?*const anyopaque, n: usize) c_int;
pub extern fn memcpy(dest: ?*anyopaque, src: ?*const anyopaque, n: usize) ?*anyopaque;
pub extern fn memmove(dest: ?*anyopaque, src: ?*const anyopaque, count: usize) ?*anyopaque;
pub extern fn memset(s: ?*anyopaque, c: c_int, n: usize) ?*anyopaque;
pub extern fn memmem(haystack: ?*const anyopaque, haystacklen: usize, needle: ?*const anyopaque, needlelen: usize) ?*anyopaque;
pub extern fn explicit_bzero(s: ?*anyopaque, n: usize) void;
pub extern fn ffs(j: c_int) c_int;
pub extern fn ffsl(j: c_long) c_int;
pub extern fn ffsll(j: c_longlong) c_int;
pub extern fn fls(j: c_int) c_int;
pub extern fn flsl(j: c_long) c_int;
pub extern fn flsll(j: c_longlong) c_int;
pub extern fn popcount(j: c_uint) c_uint;
pub extern fn popcountl(j: c_ulong) c_uint;
pub extern fn popcountll(j: c_ulonglong) c_uint;
pub extern fn index(s: [*c]const u8, c: c_int) [*c]u8;
pub extern fn rindex(s: [*c]const u8, c: c_int) [*c]u8;
pub extern fn strcasecmp([*c]const u8, [*c]const u8) c_int;
pub extern fn strncasecmp([*c]const u8, [*c]const u8, usize) c_int;
pub const struct_sched_param = extern struct {
    sched_priority: c_int,
};
pub extern fn task_create(name: [*c]const u8, priority: c_int, stack_size: c_int, entry: main_t, argv: [*c]const [*c]u8) c_int;
pub extern fn task_delete(pid: pid_t) c_int;
pub extern fn task_restart(pid: pid_t) c_int;
pub extern fn task_setcancelstate(state: c_int, oldstate: [*c]c_int) c_int;
pub extern fn task_setcanceltype(@"type": c_int, oldtype: [*c]c_int) c_int;
pub extern fn task_testcancel() void;
pub extern fn sched_setparam(pid: pid_t, param: [*c]const struct_sched_param) c_int;
pub extern fn sched_getparam(pid: pid_t, param: [*c]struct_sched_param) c_int;
pub extern fn sched_setscheduler(pid: pid_t, policy: c_int, param: [*c]const struct_sched_param) c_int;
pub extern fn sched_getscheduler(pid: pid_t) c_int;
pub extern fn sched_yield() c_int;
pub extern fn sched_get_priority_max(policy: c_int) c_int;
pub extern fn sched_get_priority_min(policy: c_int) c_int;
pub extern fn sched_rr_get_interval(pid: pid_t, interval: [*c]struct_timespec) c_int;
pub extern fn sched_lock() c_int;
pub extern fn sched_unlock() c_int;
pub extern fn sched_lockcount() c_int;
pub extern fn sched_idletask() bool;
pub extern fn sched_backtrace(tid: pid_t, buffer: [*c]?*anyopaque, size: c_int, skip: c_int) c_int;
pub extern fn sched_dumpstack(tid: pid_t) void;
pub const pthread_key_t = c_int;
pub const pthread_func_t = pthread_startroutine_t;
pub const pthread_trampoline_t = ?fn (pthread_startroutine_t, pthread_addr_t) callconv(.C) void;
pub const pthread_t = pid_t;
pub const struct_pthread_condattr_s = extern struct {
    clockid: clockid_t,
};
pub const pthread_condattr_t = struct_pthread_condattr_s;
pub const struct_pthread_cond_s = extern struct {
    sem: sem_t,
    clockid: clockid_t,
};
pub const pthread_cond_t = struct_pthread_cond_s; // /home/user/nuttx/nuttx/include/pthread.h:274:11: warning: struct demoted to opaque type - has bitfield
pub const struct_pthread_mutexattr_s = opaque {};
pub const pthread_mutexattr_t = struct_pthread_mutexattr_s;
pub const struct_pthread_mutex_s = extern struct {
    sem: sem_t,
    pid: pid_t,
};
pub const pthread_mutex_t = struct_pthread_mutex_s;
pub const struct_pthread_barrierattr_s = extern struct {
    pshared: c_int,
};
pub const pthread_barrierattr_t = struct_pthread_barrierattr_s;
pub const struct_pthread_barrier_s = extern struct {
    sem: sem_t,
    count: c_uint,
};
pub const pthread_barrier_t = struct_pthread_barrier_s;
pub const pthread_once_t = bool;
pub const struct_pthread_rwlock_s = extern struct {
    lock: pthread_mutex_t,
    cv: pthread_cond_t,
    num_readers: c_uint,
    num_writers: c_uint,
    write_in_progress: bool,
};
pub const pthread_rwlock_t = struct_pthread_rwlock_s;
pub const pthread_rwlockattr_t = c_int;
pub extern fn pthread_attr_init(attr: [*c]pthread_attr_t) c_int;
pub extern fn pthread_attr_destroy(attr: [*c]pthread_attr_t) c_int;
pub extern fn pthread_attr_setschedpolicy(attr: [*c]pthread_attr_t, policy: c_int) c_int;
pub extern fn pthread_attr_getschedpolicy(attr: [*c]const pthread_attr_t, policy: [*c]c_int) c_int;
pub extern fn pthread_attr_setschedparam(attr: [*c]pthread_attr_t, param: [*c]const struct_sched_param) c_int;
pub extern fn pthread_attr_getschedparam(attr: [*c]const pthread_attr_t, param: [*c]struct_sched_param) c_int;
pub extern fn pthread_attr_setinheritsched(attr: [*c]pthread_attr_t, inheritsched: c_int) c_int;
pub extern fn pthread_attr_getinheritsched(attr: [*c]const pthread_attr_t, inheritsched: [*c]c_int) c_int;
pub extern fn pthread_attr_getdetachstate(attr: [*c]const pthread_attr_t, detachstate: [*c]c_int) c_int;
pub extern fn pthread_attr_setdetachstate(attr: [*c]pthread_attr_t, detachstate: c_int) c_int;
pub extern fn pthread_attr_setstacksize(attr: [*c]pthread_attr_t, stacksize: usize) c_int;
pub extern fn pthread_attr_getstacksize(attr: [*c]const pthread_attr_t, stackaddr: [*c]usize) c_int;
pub extern fn pthread_attr_setstack(attr: [*c]pthread_attr_t, stackaddr: ?*anyopaque, stacksize: c_long) c_int;
pub extern fn pthread_attr_getstack(attr: [*c]pthread_attr_t, stackaddr: [*c]?*anyopaque, stacksize: [*c]c_long) c_int;
pub extern fn pthread_setname_np(thread: pthread_t, name: [*c]const u8) c_int;
pub extern fn pthread_getname_np(thread: pthread_t, name: [*c]u8, len: usize) c_int;
pub extern fn pthread_get_stackaddr_np(thread: pthread_t) ?*anyopaque;
pub extern fn pthread_get_stacksize_np(thread: pthread_t) isize;
pub extern fn pthread_create(thread: [*c]pthread_t, attr: [*c]const pthread_attr_t, startroutine: pthread_startroutine_t, arg: pthread_addr_t) c_int;
pub extern fn pthread_detach(thread: pthread_t) c_int;
pub extern fn pthread_exit(value: pthread_addr_t) noreturn;
pub extern fn pthread_cancel(thread: pthread_t) c_int;
pub extern fn pthread_setcancelstate(state: c_int, oldstate: [*c]c_int) c_int;
pub extern fn pthread_setcanceltype(@"type": c_int, oldtype: [*c]c_int) c_int;
pub extern fn pthread_testcancel() void;
pub extern fn pthread_join(thread: pthread_t, value: [*c]pthread_addr_t) c_int;
pub extern fn pthread_yield() void;
pub extern fn pthread_getschedparam(thread: pthread_t, policy: [*c]c_int, param: [*c]struct_sched_param) c_int;
pub extern fn pthread_setschedparam(thread: pthread_t, policy: c_int, param: [*c]const struct_sched_param) c_int;
pub extern fn pthread_setschedprio(thread: pthread_t, prio: c_int) c_int;
pub extern fn pthread_key_create(key: [*c]pthread_key_t, destructor: ?fn (?*anyopaque) callconv(.C) void) c_int;
pub extern fn pthread_setspecific(key: pthread_key_t, value: ?*const anyopaque) c_int;
pub extern fn pthread_getspecific(key: pthread_key_t) ?*anyopaque;
pub extern fn pthread_key_delete(key: pthread_key_t) c_int;
pub extern fn pthread_mutexattr_init(attr: ?*pthread_mutexattr_t) c_int;
pub extern fn pthread_mutexattr_destroy(attr: ?*pthread_mutexattr_t) c_int;
pub extern fn pthread_mutexattr_getpshared(attr: ?*const pthread_mutexattr_t, pshared: [*c]c_int) c_int;
pub extern fn pthread_mutexattr_setpshared(attr: ?*pthread_mutexattr_t, pshared: c_int) c_int;
pub extern fn pthread_mutexattr_gettype(attr: ?*const pthread_mutexattr_t, @"type": [*c]c_int) c_int;
pub extern fn pthread_mutexattr_settype(attr: ?*pthread_mutexattr_t, @"type": c_int) c_int;
pub extern fn pthread_mutexattr_getprotocol(attr: ?*const pthread_mutexattr_t, protocol: [*c]c_int) c_int;
pub extern fn pthread_mutexattr_setprotocol(attr: ?*pthread_mutexattr_t, protocol: c_int) c_int;
pub extern fn pthread_mutexattr_getrobust(attr: ?*const pthread_mutexattr_t, robust: [*c]c_int) c_int;
pub extern fn pthread_mutexattr_setrobust(attr: ?*pthread_mutexattr_t, robust: c_int) c_int;
pub extern fn pthread_mutex_init(mutex: [*c]pthread_mutex_t, attr: ?*const pthread_mutexattr_t) c_int;
pub extern fn pthread_mutex_destroy(mutex: [*c]pthread_mutex_t) c_int;
pub extern fn pthread_mutex_lock(mutex: [*c]pthread_mutex_t) c_int;
pub extern fn pthread_mutex_timedlock(mutex: [*c]pthread_mutex_t, abs_timeout: [*c]const struct_timespec) c_int;
pub extern fn pthread_mutex_trylock(mutex: [*c]pthread_mutex_t) c_int;
pub extern fn pthread_mutex_unlock(mutex: [*c]pthread_mutex_t) c_int;
pub extern fn pthread_condattr_init(attr: [*c]pthread_condattr_t) c_int;
pub extern fn pthread_condattr_destroy(attr: [*c]pthread_condattr_t) c_int;
pub extern fn pthread_condattr_getclock(attr: [*c]const pthread_condattr_t, clock_id: [*c]clockid_t) c_int;
pub extern fn pthread_condattr_setclock(attr: [*c]pthread_condattr_t, clock_id: clockid_t) c_int;
pub extern fn pthread_cond_init(cond: [*c]pthread_cond_t, attr: [*c]const pthread_condattr_t) c_int;
pub extern fn pthread_cond_destroy(cond: [*c]pthread_cond_t) c_int;
pub extern fn pthread_cond_broadcast(cond: [*c]pthread_cond_t) c_int;
pub extern fn pthread_cond_signal(cond: [*c]pthread_cond_t) c_int;
pub extern fn pthread_cond_wait(cond: [*c]pthread_cond_t, mutex: [*c]pthread_mutex_t) c_int;
pub extern fn pthread_cond_timedwait(cond: [*c]pthread_cond_t, mutex: [*c]pthread_mutex_t, abstime: [*c]const struct_timespec) c_int;
pub extern fn pthread_cond_clockwait(cond: [*c]pthread_cond_t, mutex: [*c]pthread_mutex_t, clockid: clockid_t, abstime: [*c]const struct_timespec) c_int;
pub extern fn pthread_barrierattr_destroy(attr: [*c]pthread_barrierattr_t) c_int;
pub extern fn pthread_barrierattr_init(attr: [*c]pthread_barrierattr_t) c_int;
pub extern fn pthread_barrierattr_getpshared(attr: [*c]const pthread_barrierattr_t, pshared: [*c]c_int) c_int;
pub extern fn pthread_barrierattr_setpshared(attr: [*c]pthread_barrierattr_t, pshared: c_int) c_int;
pub extern fn pthread_barrier_destroy(barrier: [*c]pthread_barrier_t) c_int;
pub extern fn pthread_barrier_init(barrier: [*c]pthread_barrier_t, attr: [*c]const pthread_barrierattr_t, count: c_uint) c_int;
pub extern fn pthread_barrier_wait(barrier: [*c]pthread_barrier_t) c_int;
pub extern fn pthread_once(once_control: [*c]pthread_once_t, init_routine: ?fn () callconv(.C) void) c_int;
pub extern fn pthread_rwlock_destroy(rw_lock: [*c]pthread_rwlock_t) c_int;
pub extern fn pthread_rwlock_init(rw_lock: [*c]pthread_rwlock_t, attr: [*c]const pthread_rwlockattr_t) c_int;
pub extern fn pthread_rwlock_rdlock(lock: [*c]pthread_rwlock_t) c_int;
pub extern fn pthread_rwlock_timedrdlock(lock: [*c]pthread_rwlock_t, abstime: [*c]const struct_timespec) c_int;
pub extern fn pthread_rwlock_clockrdlock(lock: [*c]pthread_rwlock_t, clockid: clockid_t, abstime: [*c]const struct_timespec) c_int;
pub extern fn pthread_rwlock_tryrdlock(lock: [*c]pthread_rwlock_t) c_int;
pub extern fn pthread_rwlock_wrlock(lock: [*c]pthread_rwlock_t) c_int;
pub extern fn pthread_rwlock_timedwrlock(lock: [*c]pthread_rwlock_t, abstime: [*c]const struct_timespec) c_int;
pub extern fn pthread_rwlock_clockwrlock(lock: [*c]pthread_rwlock_t, clockid: clockid_t, abstime: [*c]const struct_timespec) c_int;
pub extern fn pthread_rwlock_trywrlock(lock: [*c]pthread_rwlock_t) c_int;
pub extern fn pthread_rwlock_unlock(lock: [*c]pthread_rwlock_t) c_int;
pub extern fn pthread_kill(thread: pthread_t, sig: c_int) c_int;
pub extern fn pthread_sigmask(how: c_int, set: [*c]const sigset_t, oset: [*c]sigset_t) c_int;
pub extern fn pthread_atfork(prepare: ?fn () callconv(.C) void, parent: ?fn () callconv(.C) void, child: ?fn () callconv(.C) void) c_int;
pub const sig_atomic_t = c_int;
pub const _sa_handler_t = ?fn (c_int) callconv(.C) void;
pub const _sa_sigaction_t = ?fn (c_int, [*c]siginfo_t, ?*anyopaque) callconv(.C) void;
pub const sighandler_t = _sa_handler_t;
const union_unnamed_3 = extern union {
    _sa_handler: _sa_handler_t,
    _sa_sigaction: _sa_sigaction_t,
};
pub const struct_sigaction = extern struct {
    sa_u: union_unnamed_3,
    sa_mask: sigset_t,
    sa_flags: c_int,
};
pub extern fn kill(pid: pid_t, signo: c_int) c_int;
pub extern fn psignal(signum: c_int, message: [*c]const u8) void;
pub extern fn psiginfo(pinfo: [*c]const siginfo_t, message: [*c]const u8) void;
pub extern fn raise(signo: c_int) c_int;
pub extern fn sigaction(signo: c_int, act: [*c]const struct_sigaction, oact: [*c]struct_sigaction) c_int;
pub extern fn sigaddset(set: [*c]sigset_t, signo: c_int) c_int;
pub extern fn sigdelset(set: [*c]sigset_t, signo: c_int) c_int;
pub extern fn sigemptyset(set: [*c]sigset_t) c_int;
pub extern fn sigfillset(set: [*c]sigset_t) c_int;
pub extern fn sighold(signo: c_int) c_int;
pub extern fn sigismember(set: [*c]const sigset_t, signo: c_int) c_int;
pub extern fn sigignore(signo: c_int) c_int;
pub extern fn signal(signo: c_int, func: _sa_handler_t) _sa_handler_t;
pub extern fn sigpause(signo: c_int) c_int;
pub extern fn sigpending(set: [*c]sigset_t) c_int;
pub extern fn sigprocmask(how: c_int, set: [*c]const sigset_t, oset: [*c]sigset_t) c_int;
pub extern fn sigqueue(pid: c_int, signo: c_int, value: union_sigval) c_int;
pub extern fn sigrelse(signo: c_int) c_int;
pub extern fn sigset(signo: c_int, func: _sa_handler_t) _sa_handler_t;
pub extern fn sigwait(set: [*c]const sigset_t, sig: [*c]c_int) c_int;
pub extern fn sigtimedwait(set: [*c]const sigset_t, value: [*c]struct_siginfo, timeout: [*c]const struct_timespec) c_int;
pub extern fn sigsuspend(sigmask: [*c]const sigset_t) c_int;
pub extern fn sigwaitinfo(set: [*c]const sigset_t, value: [*c]struct_siginfo) c_int;
pub extern fn up_irq_enable() irqstate_t; // /home/user/nuttx/nuttx/include/arch/irq.h:586:3: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /home/user/nuttx/nuttx/include/arch/irq.h:583:25: warning: unable to translate function, demoted to extern
pub extern fn up_getsp() callconv(.C) usize;
pub extern var g_current_regs: [1][*c]volatile usize; // /home/user/nuttx/nuttx/include/arch/irq.h:674:3: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /home/user/nuttx/nuttx/include/arch/irq.h:668:26: warning: unable to translate function, demoted to extern
pub extern fn up_irq_save() callconv(.C) irqstate_t; // /home/user/nuttx/nuttx/include/arch/irq.h:699:3: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /home/user/nuttx/nuttx/include/arch/irq.h:697:20: warning: unable to translate function, demoted to extern
pub extern fn up_irq_restore(arg_flags: irqstate_t) callconv(.C) void;
pub fn up_interrupt_context() callconv(.C) bool {
    var ret: bool = g_current_regs[@intCast(c_uint, @as(c_int, 0))] != @ptrCast([*c]volatile usize, @alignCast(@import("std").meta.alignment(usize), @intToPtr(?*anyopaque, @as(c_int, 0))));
    return ret;
}
pub const irq_t = u8;
pub const xcpt_t = ?fn (c_int, ?*anyopaque, ?*anyopaque) callconv(.C) c_int;
pub extern fn irq_attach(irq: c_int, isr: xcpt_t, arg: ?*anyopaque) c_int;
pub extern fn wd_start(wdog: [*c]struct_wdog_s, delay: sclock_t, wdentry: wdentry_t, arg: wdparm_t) c_int;
pub extern fn wd_cancel(wdog: [*c]struct_wdog_s) c_int;
pub extern fn wd_gettime(wdog: [*c]struct_wdog_s) sclock_t;
pub const TSTATE_TASK_INVALID: c_int = 0;
pub const TSTATE_TASK_PENDING: c_int = 1;
pub const TSTATE_TASK_READYTORUN: c_int = 2;
pub const TSTATE_TASK_RUNNING: c_int = 3;
pub const TSTATE_TASK_INACTIVE: c_int = 4;
pub const TSTATE_WAIT_SEM: c_int = 5;
pub const TSTATE_WAIT_SIG: c_int = 6;
pub const TSTATE_WAIT_MQNOTEMPTY: c_int = 7;
pub const TSTATE_WAIT_MQNOTFULL: c_int = 8;
pub const NUM_TASK_STATES: c_int = 9;
pub const enum_tstate_e = c_uint;
pub const tstate_t = enum_tstate_e;
pub const struct_stackinfo_s = extern struct {
    adj_stack_size: usize,
    stack_alloc_ptr: ?*anyopaque,
    stack_base_ptr: ?*anyopaque,
};
pub const struct_task_tcb_s = extern struct {
    cmn: struct_tcb_s,
};
pub const struct_pthread_tcb_s = extern struct {
    cmn: struct_tcb_s,
    trampoline: pthread_trampoline_t,
    arg: pthread_addr_t,
    joininfo: ?*anyopaque,
};
pub const nxsched_foreach_t = ?fn ([*c]struct_tcb_s, ?*anyopaque) callconv(.C) void;
pub extern fn nxsched_self() [*c]struct_tcb_s;
pub extern fn nxsched_foreach(handler: nxsched_foreach_t, arg: ?*anyopaque) void;
pub extern fn nxsched_get_tcb(pid: pid_t) [*c]struct_tcb_s;
pub extern fn nxsched_release_tcb(tcb: [*c]struct_tcb_s, ttype: u8) c_int;
pub extern fn nxsched_get_files() [*c]struct_filelist;
pub extern fn nxsched_get_streams() [*c]struct_streamlist;
pub extern fn nxtask_init(tcb: [*c]struct_task_tcb_s, name: [*c]const u8, priority: c_int, stack: ?*anyopaque, stack_size: u32, entry: main_t, argv: [*c]const [*c]u8, envp: [*c]const [*c]u8) c_int;
pub extern fn nxtask_uninit(tcb: [*c]struct_task_tcb_s) void;
pub extern fn nxtask_create(name: [*c]const u8, priority: c_int, stack_size: c_int, entry: main_t, argv: [*c]const [*c]u8) c_int;
pub extern fn nxtask_delete(pid: pid_t) c_int;
pub extern fn nxtask_activate(tcb: [*c]struct_tcb_s) void;
pub extern fn nxtask_startup(entrypt: main_t, argc: c_int, argv: [*c][*c]u8) void;
pub extern fn nxtask_setup_vfork(retaddr: start_t) [*c]struct_task_tcb_s;
pub extern fn nxtask_start_vfork(child: [*c]struct_task_tcb_s) pid_t;
pub extern fn nxtask_abort_vfork(child: [*c]struct_task_tcb_s, errcode: c_int) void;
pub extern fn nxsched_resume_scheduler(tcb: [*c]struct_tcb_s) void;
pub extern fn nxsched_get_param(pid: pid_t, param: [*c]struct_sched_param) c_int;
pub extern fn nxsched_set_param(pid: pid_t, param: [*c]const struct_sched_param) c_int;
pub extern fn nxsched_get_scheduler(pid: pid_t) c_int;
pub extern fn nxsched_set_scheduler(pid: pid_t, policy: c_int, param: [*c]const struct_sched_param) c_int;
pub extern fn nxsched_get_stackinfo(pid: pid_t, stackinfo: [*c]struct_stackinfo_s) c_int;
pub extern fn nx_wait(stat_loc: [*c]c_int) pid_t;
pub extern fn nx_waitid(idtype: c_int, id: id_t, info: [*c]siginfo_t, options: c_int) c_int;
pub extern fn nx_waitpid(pid: pid_t, stat_loc: [*c]c_int, options: c_int) pid_t;
pub const FILE = struct_file_struct;
pub const struct_va_format = extern struct {
    fmt: [*c]const u8,
    va: [*c]va_list,
};
pub extern fn clearerr(stream: [*c]FILE) void;
pub extern fn fclose(stream: [*c]FILE) c_int;
pub extern fn fflush(stream: [*c]FILE) c_int;
pub extern fn feof(stream: [*c]FILE) c_int;
pub extern fn ferror(stream: [*c]FILE) c_int;
pub extern fn fileno(stream: [*c]FILE) c_int;
pub extern fn fgetc(stream: [*c]FILE) c_int;
pub extern fn fgetpos(stream: [*c]FILE, pos: [*c]fpos_t) c_int;
pub extern fn fgets(s: [*c]u8, n: c_int, stream: [*c]FILE) [*c]u8;
pub extern fn fopen(path: [*c]const u8, @"type": [*c]const u8) [*c]FILE;
pub extern fn fprintf(stream: [*c]FILE, format: [*c]const u8, ...) c_int;
pub extern fn fputc(c: c_int, stream: [*c]FILE) c_int;
pub extern fn fputs(s: [*c]const u8, stream: [*c]FILE) c_int;
pub extern fn fread(ptr: ?*anyopaque, size: usize, n_items: usize, stream: [*c]FILE) usize;
pub extern fn freopen(path: [*c]const u8, mode: [*c]const u8, stream: [*c]FILE) [*c]FILE;
pub extern fn fscanf(stream: [*c]FILE, fmt: [*c]const u8, ...) c_int;
pub extern fn fseek(stream: [*c]FILE, offset: c_long, whence: c_int) c_int;
pub extern fn fseeko(stream: [*c]FILE, offset: off_t, whence: c_int) c_int;
pub extern fn fsetpos(stream: [*c]FILE, pos: [*c]fpos_t) c_int;
pub extern fn ftell(stream: [*c]FILE) c_long;
pub extern fn ftello(stream: [*c]FILE) off_t;
pub extern fn fwrite(ptr: ?*const anyopaque, size: usize, n_items: usize, stream: [*c]FILE) usize;
pub extern fn getc(stream: [*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn getdelim(lineptr: [*c][*c]u8, n: [*c]usize, delimiter: c_int, stream: [*c]FILE) isize;
pub extern fn getline(lineptr: [*c][*c]u8, n: [*c]usize, stream: [*c]FILE) isize;
pub extern fn gets(s: [*c]u8) [*c]u8;
pub extern fn gets_s(s: [*c]u8, n: rsize_t) [*c]u8;
pub extern fn rewind(stream: [*c]FILE) void;
pub extern fn setbuf(stream: [*c]FILE, buf: [*c]u8) void;
pub extern fn setvbuf(stream: [*c]FILE, buffer: [*c]u8, mode: c_int, size: usize) c_int;
pub extern fn ungetc(c: c_int, stream: [*c]FILE) c_int;
pub extern fn perror(s: [*c]const u8) void;
pub extern fn printf(fmt: [*c]const u8, ...) c_int;
pub extern fn putc(c: c_int, stream: [*c]FILE) c_int;
pub extern fn putchar(c: c_int) c_int;
pub extern fn puts(s: [*c]const u8) c_int;
pub extern fn rename(oldpath: [*c]const u8, newpath: [*c]const u8) c_int;
pub extern fn sprintf(buf: [*c]u8, fmt: [*c]const u8, ...) c_int;
pub extern fn asprintf(ptr: [*c][*c]u8, fmt: [*c]const u8, ...) c_int;
pub extern fn snprintf(buf: [*c]u8, size: usize, fmt: [*c]const u8, ...) c_int;
pub extern fn sscanf(buf: [*c]const u8, fmt: [*c]const u8, ...) c_int;
pub extern fn scanf(fmt: [*c]const u8, ...) c_int;
pub extern fn vasprintf(ptr: [*c][*c]u8, fmt: [*c]const u8, ap: va_list) c_int;
pub extern fn vfprintf(stream: [*c]FILE, fmt: [*c]const u8, ap: va_list) c_int;
pub extern fn vfscanf(stream: [*c]FILE, fmt: [*c]const u8, ap: va_list) c_int;
pub extern fn vprintf(fmt: [*c]const u8, ap: va_list) c_int;
pub extern fn vscanf(fmt: [*c]const u8, ap: va_list) c_int;
pub extern fn vsnprintf(buf: [*c]u8, size: usize, fmt: [*c]const u8, ap: va_list) c_int;
pub extern fn vsprintf(buf: [*c]u8, fmt: [*c]const u8, ap: va_list) c_int;
pub extern fn vsscanf(buf: [*c]const u8, fmt: [*c]const u8, ap: va_list) c_int;
pub extern fn fdopen(fd: c_int, @"type": [*c]const u8) [*c]FILE;
pub extern fn dprintf(fd: c_int, fmt: [*c]const u8, ...) c_int;
pub extern fn vdprintf(fd: c_int, fmt: [*c]const u8, ap: va_list) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam(s: [*c]u8) [*c]u8;
pub extern fn tempnam(dir: [*c]const u8, pfx: [*c]const u8) [*c]u8;
pub extern fn remove(path: [*c]const u8) c_int;
pub extern fn popen(command: [*c]const u8, mode: [*c]const u8) [*c]FILE;
pub extern fn pclose(stream: [*c]FILE) c_int;
pub const struct_flock = extern struct {
    l_type: i16,
    l_whence: i16,
    l_start: off_t,
    l_len: off_t,
    l_pid: pid_t,
};
pub extern fn open(path: [*c]const u8, oflag: c_int, ...) c_int;
pub extern fn fcntl(fd: c_int, cmd: c_int, ...) c_int;
pub extern fn posix_fallocate(fd: c_int, offset: off_t, len: off_t) c_int;
pub const nfds_t = c_uint;
pub extern fn poll(fds: [*c]struct_pollfd, nfds: nfds_t, timeout: c_int) c_int;
pub extern fn ppoll(fds: [*c]struct_pollfd, nfds: nfds_t, timeout_ts: [*c]const struct_timespec, sigmask: [*c]const sigset_t) c_int;
pub const data_print = ?fn ([*c]const u8, [*c]const u8) callconv(.C) void;
pub const struct_sensor_info = extern struct {
    print: data_print,
    esize: u8,
    name: [*c]const u8,
};
pub fn print_vec3(arg_buffer: [*c]const u8, arg_name: [*c]const u8) callconv(.C) void {
    var buffer = arg_buffer;
    var name = arg_name;
    var event: [*c]struct_sensor_accel = @intToPtr([*c]struct_sensor_accel, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu x:%.2f y:%.2f z:%.2f, temperature:%.2f\n", name, event.*.timestamp, @floatCast(f64, event.*.x), @floatCast(f64, event.*.y), @floatCast(f64, event.*.z), @floatCast(f64, event.*.temperature));
}
pub fn print_valf3(arg_buffer: [*c]const u8, arg_name: [*c]const u8) callconv(.C) void {
    var buffer = arg_buffer;
    var name = arg_name;
    var event: [*c]struct_sensor_rgb = @intToPtr([*c]struct_sensor_rgb, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu value1:%.2f value2:%.2f, value3:%.2f\n", name, event.*.timestamp, @floatCast(f64, event.*.r), @floatCast(f64, event.*.g), @floatCast(f64, event.*.b));
}
pub fn print_valf2(arg_buffer: [*c]const u8, arg_name: [*c]const u8) callconv(.C) void {
    var buffer = arg_buffer;
    var name = arg_name;
    var event: [*c]struct_sensor_baro = @intToPtr([*c]struct_sensor_baro, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu value1:%.2f value2:%.2f\n", name, event.*.timestamp, @floatCast(f64, event.*.pressure), @floatCast(f64, event.*.temperature));
}
pub fn print_valf(arg_buffer: [*c]const u8, arg_name: [*c]const u8) callconv(.C) void {
    var buffer = arg_buffer;
    var name = arg_name;
    var event: [*c]struct_sensor_prox = @intToPtr([*c]struct_sensor_prox, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu value:%.2f\n", name, event.*.timestamp, @floatCast(f64, event.*.proximity));
}
pub fn print_valb(arg_buffer: [*c]const u8, arg_name: [*c]const u8) callconv(.C) void {
    var buffer = arg_buffer;
    var name = arg_name;
    var event: [*c]struct_sensor_hall = @intToPtr([*c]struct_sensor_hall, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu value:%d\n", name, event.*.timestamp, @as(c_int, @boolToInt(event.*.hall)));
}
pub fn print_vali2(arg_buffer: [*c]const u8, arg_name: [*c]const u8) callconv(.C) void {
    var buffer = arg_buffer;
    var name = arg_name;
    var event: [*c]struct_sensor_ots = @intToPtr([*c]struct_sensor_ots, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu value1:% li value2:% li\n", name, event.*.timestamp, event.*.x, event.*.y);
}
pub fn print_ppgd(arg_buffer: [*c]const u8, arg_name: [*c]const u8) callconv(.C) void {
    var buffer = arg_buffer;
    var name = arg_name;
    var event: [*c]struct_sensor_ppgd = @intToPtr([*c]struct_sensor_ppgd, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu ppg1:%lu ppg2:%lu current:%lu gain1:%u gain2:%u\n", name, event.*.timestamp, event.*.ppg[@intCast(c_uint, @as(c_int, 0))], event.*.ppg[@intCast(c_uint, @as(c_int, 1))], event.*.current, @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 0))])), @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 1))])));
}
pub fn print_ppgq(arg_buffer: [*c]const u8, arg_name: [*c]const u8) callconv(.C) void {
    var buffer = arg_buffer;
    var name = arg_name;
    var event: [*c]struct_sensor_ppgq = @intToPtr([*c]struct_sensor_ppgq, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu ppg1:%lu ppg2:%lu ppg3:%lu ppg4:%lu current:%lu gain1:%u gain2:%u gain3:%u gain4:%u\n", name, event.*.timestamp, event.*.ppg[@intCast(c_uint, @as(c_int, 0))], event.*.ppg[@intCast(c_uint, @as(c_int, 1))], event.*.ppg[@intCast(c_uint, @as(c_int, 2))], event.*.ppg[@intCast(c_uint, @as(c_int, 3))], event.*.current, @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 0))])), @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 1))])), @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 2))])), @bitCast(c_int, @as(c_uint, event.*.gain[@intCast(c_uint, @as(c_int, 3))])));
}
pub fn print_gps(arg_buffer: [*c]const u8, arg_name: [*c]const u8) callconv(.C) void {
    var buffer = arg_buffer;
    var name = arg_name;
    var event: [*c]struct_sensor_gps = @intToPtr([*c]struct_sensor_gps, @ptrToInt(buffer));
    _ = printf("%s: timestamp:%llu time_utc: %llu latitude: %f longitude: %f altitude: %f altitude_ellipsoid: %f eph: %f epv: %f hdop: %f vdop: %f ground_speed: %f course: %f satellites_used: %lu\n", name, event.*.timestamp, event.*.time_utc, @floatCast(f64, event.*.latitude), @floatCast(f64, event.*.longitude), @floatCast(f64, event.*.altitude), @floatCast(f64, event.*.altitude_ellipsoid), @floatCast(f64, event.*.eph), @floatCast(f64, event.*.epv), @floatCast(f64, event.*.hdop), @floatCast(f64, event.*.vdop), @floatCast(f64, event.*.ground_speed), @floatCast(f64, event.*.course), event.*.satellites_used);
}
pub fn print_gps_satellite(arg_buffer: [*c]const u8, arg_name: [*c]const u8) callconv(.C) void {
    var buffer = arg_buffer;
    var name = arg_name;
    var event: [*c]struct_sensor_gps_satellite = @intToPtr([*c]struct_sensor_gps_satellite, @ptrToInt(buffer));
    _ = printf("%s: timestamp: %llu count: %lu satellites: %lu\n", name, event.*.timestamp, event.*.count, event.*.satellites);
}
pub var g_should_exit: bool = @as(c_int, 0) != 0;
pub const g_sensor_info: [30]struct_sensor_info = [30]struct_sensor_info{
    struct_sensor_info{
        .print = print_vec3,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_accel))),
        .name = "accel",
    },
    struct_sensor_info{
        .print = print_vec3,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_mag))),
        .name = "mag",
    },
    struct_sensor_info{
        .print = print_vec3,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_gyro))),
        .name = "gyro",
    },
    struct_sensor_info{
        .print = print_valf2,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_baro))),
        .name = "baro",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_light))),
        .name = "light",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_prox))),
        .name = "prox",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_humi))),
        .name = "humi",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_temp))),
        .name = "temp",
    },
    struct_sensor_info{
        .print = print_valf3,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_rgb))),
        .name = "rgb",
    },
    struct_sensor_info{
        .print = print_valb,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_hall))),
        .name = "hall",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_ir))),
        .name = "ir",
    },
    struct_sensor_info{
        .print = print_gps,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_gps))),
        .name = "gps",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_uv))),
        .name = "uv",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_noise))),
        .name = "noise",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_pm25))),
        .name = "pm25",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_pm1p0))),
        .name = "pm1p0",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_pm10))),
        .name = "pm10",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_co2))),
        .name = "co2",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_hcho))),
        .name = "hcho",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_tvoc))),
        .name = "tvoc",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_ph))),
        .name = "ph",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_dust))),
        .name = "dust",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_hrate))),
        .name = "hrate",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_hbeat))),
        .name = "hbeat",
    },
    struct_sensor_info{
        .print = print_valf,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_ecg))),
        .name = "ecg",
    },
    struct_sensor_info{
        .print = print_ppgd,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_ppgd))),
        .name = "ppgd",
    },
    struct_sensor_info{
        .print = print_ppgq,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_ppgq))),
        .name = "ppgq",
    },
    struct_sensor_info{
        .print = print_valf2,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_impd))),
        .name = "impd",
    },
    struct_sensor_info{
        .print = print_vali2,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_ots))),
        .name = "ots",
    },
    struct_sensor_info{
        .print = print_gps_satellite,
        .esize = @bitCast(u8, @truncate(u8, @sizeOf(struct_sensor_gps_satellite))),
        .name = "gps_satellite",
    },
};
pub fn usage() callconv(.C) void {
    _ = printf("sensortest [arguments...] <command>\n");
    _ = printf("\t[-h      ]  sensortest commands help\n");
    _ = printf("\t[-i <val>]  The output data period of sensor in us\n");
    _ = printf("\t            default: 1000000\n");
    _ = printf("\t[-b <val>]  The maximum report latency of sensor in us\n");
    _ = printf("\t            default: 0\n");
    _ = printf("\t[-n <val>]  The number of output data\n");
    _ = printf("\t            default: 0\n");
    _ = printf(" Commands:\n");
    _ = printf("\t<sensor_node_name> ex, accel0(/dev/sensor/accel0)\n");
}
pub fn exit_handler(arg_signo: c_int) callconv(.C) void {
    var signo = arg_signo;
    _ = signo;
    g_should_exit = @as(c_int, 1) != 0;
}
pub export fn sensortest_main(arg_argc: c_int, arg_argv: [*c][*c]u8) c_int {
    var argc = arg_argc;
    var argv = arg_argv;
    var interval: c_uint = @bitCast(c_uint, @as(c_int, 1000000));
    var received: c_uint = 0;
    var latency: c_uint = 0;
    var count: c_uint = 0;
    var devname: [256]u8 = undefined;
    var fds: struct_pollfd = undefined;
    var buffer: [*c]u8 = undefined;
    var name: [*c]u8 = undefined;
    var len: c_int = 0;
    var fd: c_int = undefined;
    var idx: c_int = undefined;
    var ret: c_int = undefined;
    if (argc <= @as(c_int, 1)) {
        usage();
        return -@as(c_int, 22);
    }
    if (signal(@as(c_int, 10), exit_handler) == @intToPtr(_sa_handler_t, -@as(c_int, 1))) {
        return -__errno().*;
    }
    g_should_exit = @as(c_int, 0) != 0;
    while ((blk: {
        const tmp = getopt(argc, argv, "i:b:n:h");
        ret = tmp;
        break :blk tmp;
    }) != -@as(c_int, 1)) {
        while (true) {
            switch (ret) {
                @as(c_int, 105) => {
                    interval = @bitCast(c_uint, @truncate(c_uint, strtoul(getoptargp().*, null, @as(c_int, 0))));
                    break;
                },
                @as(c_int, 98) => {
                    latency = @bitCast(c_uint, @truncate(c_uint, strtoul(getoptargp().*, null, @as(c_int, 0))));
                    break;
                },
                @as(c_int, 110) => {
                    count = @bitCast(c_uint, @truncate(c_uint, strtoul(getoptargp().*, null, @as(c_int, 0))));
                    break;
                },
                else => {
                    usage();
                    return ret;
                },
            }
            break;
        }
    }
    if (getoptindp().* < argc) {
        name = (blk: {
            const tmp = getoptindp().*;
            if (tmp >= 0) break :blk argv + @intCast(usize, tmp) else break :blk argv - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
        }).*;
        {
            idx = 0;
            while (@bitCast(c_uint, idx) < (@sizeOf([30]struct_sensor_info) / @sizeOf(struct_sensor_info))) : (idx += 1) {
                if (!(strncmp(name, g_sensor_info[@intCast(c_uint, idx)].name, strlen(g_sensor_info[@intCast(c_uint, idx)].name)) != 0)) {
                    len = @bitCast(c_int, @as(c_uint, g_sensor_info[@intCast(c_uint, idx)].esize));
                    buffer = @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), calloc(@bitCast(usize, @as(c_int, 1)), @bitCast(usize, len))));
                    break;
                }
            }
        }
        if (!(len != 0)) {
            _ = printf("The sensor node name:%s is invalid\n", name);
            usage();
            ret = -@as(c_int, 22);
            return ret;
        }
        if (!(buffer != null)) {
            ret = -@as(c_int, 12);
            return ret;
        }
    } else {
        usage();
        ret = -@as(c_int, 22);
        return ret;
    }
    _ = snprintf(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), &devname)), @bitCast(usize, @as(c_int, 256)), "/dev/sensor/sensor_%s", name);
    fd = open(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), &devname)), (@as(c_int, 1) << @intCast(@import("std").math.Log2Int(c_int), 0)) | (@as(c_int, 1) << @intCast(@import("std").math.Log2Int(c_int), 6)));
    if (fd < @as(c_int, 0)) {
        ret = -__errno().*;
        _ = printf("Failed to open device:%s, ret:%s\n", @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), &devname)), strerror(__errno().*));
        return ret;
    }
    ret = ioctl(fd, @as(c_int, 2560) | @as(c_int, 129), interval);
    if (ret < @as(c_int, 0)) {
        ret = -__errno().*;
        if (ret != -@as(c_int, 134)) {
            _ = printf("Failed to set interval for sensor:%s, ret:%s\n", @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), &devname)), strerror(__errno().*));
            return ret;
        }
    }
    ret = ioctl(fd, @as(c_int, 2560) | @as(c_int, 130), latency);
    if (ret < @as(c_int, 0)) {
        ret = -__errno().*;
        if (ret != -@as(c_int, 134)) {
            _ = printf("Failed to batch for sensor:%s, ret:%s\n", @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), &devname)), strerror(__errno().*));
            return ret;
        }
    }
    _ = printf("SensorTest: Test %s with interval(%uus), latency(%uus)\n", @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), &devname)), interval, latency);
    fds.fd = fd;
    fds.events = @bitCast(pollevent_t, @as(c_int, 1));
    while ((!(count != 0) or (received < count)) and !g_should_exit) {
        if (poll(&fds, @bitCast(nfds_t, @as(c_int, 1)), -@as(c_int, 1)) > @as(c_int, 0)) {
            if (read(fd, @ptrCast(?*anyopaque, buffer), @bitCast(usize, len)) >= len) {
                received +%= 1;
                g_sensor_info[@intCast(c_uint, idx)].print.?(buffer, name);
            }
        }
    }
    _ = printf("SensorTest: Received message: %s, number:%d/%d\n", name, received, count);
    _ = close(fd);
    free(@ptrCast(?*anyopaque, buffer));
    getoptindp().* = 0;
    return ret;
}
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // (no file):67:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // (no file):73:9
pub const __FLT16_DENORM_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):104:9
pub const __FLT16_EPSILON__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):108:9
pub const __FLT16_MAX__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):114:9
pub const __FLT16_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):117:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // (no file):179:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):201:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // (no file):209:9
pub const CONFIG_INIT_ENTRYPOINT = @compileError("unable to translate macro: undefined identifier `nsh_main`"); // /home/user/nuttx/nuttx/include/nuttx/config.h:102:9
pub const CONFIG_RAM_VEND = @compileError("unable to translate macro: undefined identifier `CONFIG_RAM_VSTART`"); // /home/user/nuttx/nuttx/include/nuttx/config.h:366:11
pub const CONFIG_FLASH_END = @compileError("unable to translate macro: undefined identifier `CONFIG_FLASH_START`"); // /home/user/nuttx/nuttx/include/nuttx/config.h:374:11
pub const TZ_MAX_TIMES = @compileError("unable to translate macro: undefined identifier `CONFIG_LIBC_TZ_MAX_TIMES`"); // /home/user/nuttx/nuttx/include/limits.h:220:9
pub const TZ_MAX_TYPES = @compileError("unable to translate macro: undefined identifier `CONFIG_LIBC_TZ_MAX_TYPES`"); // /home/user/nuttx/nuttx/include/limits.h:221:9
pub const NL_TEXTMAX = @compileError("unable to translate macro: undefined identifier `_POSIX2_LINE_MAX`"); // /home/user/nuttx/nuttx/include/limits.h:281:9
pub const goto = @compileError("unable to translate macro: undefined identifier `ret`"); // sensortest.c:28:9
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:118:11
pub const weak_alias = @compileError("unable to translate macro: undefined identifier `__typeof`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:128:13
pub const weak_data = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:130:13
pub const weak_function = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:131:13
pub const weak_const_function = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:132:13
pub const noreturn_function = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:145:11
pub const farcall_function = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:151:11
pub const locate_code = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:155:11
pub const aligned_data = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:159:11
pub const locate_data = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:163:11
pub const end_packed_struct = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:170:11
pub const naked_function = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:180:11
pub const inline_function = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:187:11
pub const noinline_function = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:188:11
pub const noinstrument_function = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:192:11
pub const nostackprotect_function = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:200:15
pub const unused_code = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:219:11
pub const unused_data = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:220:11
pub const used_code = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:221:11
pub const used_data = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:222:11
pub const __syslog__ = @compileError("unable to translate macro: undefined identifier `__printf__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:230:13
pub const formatlike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:233:11
pub const printflike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:234:11
pub const sysloglike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:235:11
pub const scanflike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:236:11
pub const strftimelike = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:237:11
pub const no_builtin = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:391:13
pub const EXTERN = @compileError("unable to translate C expr: unexpected token 'extern'"); // /home/user/nuttx/nuttx/include/nuttx/compiler.h:807:9
pub const __stdint_join3 = @compileError("unable to translate C expr: unexpected token '##'"); // /home/user/zig-linux-x86_64-0.10.0-dev.2674+d980c6a38/lib/include/stdint.h:245:9
pub const __int_c_join = @compileError("unable to translate C expr: unexpected token '##'"); // /home/user/zig-linux-x86_64-0.10.0-dev.2674+d980c6a38/lib/include/stdint.h:282:9
pub const __uint_c = @compileError("unable to translate macro: undefined identifier `U`"); // /home/user/zig-linux-x86_64-0.10.0-dev.2674+d980c6a38/lib/include/stdint.h:284:9
pub const __INTN_MIN = @compileError("unable to translate macro: undefined identifier `INT`"); // /home/user/zig-linux-x86_64-0.10.0-dev.2674+d980c6a38/lib/include/stdint.h:639:10
pub const __INTN_MAX = @compileError("unable to translate macro: undefined identifier `INT`"); // /home/user/zig-linux-x86_64-0.10.0-dev.2674+d980c6a38/lib/include/stdint.h:640:10
pub const __UINTN_MAX = @compileError("unable to translate macro: undefined identifier `UINT`"); // /home/user/zig-linux-x86_64-0.10.0-dev.2674+d980c6a38/lib/include/stdint.h:641:9
pub const __INTN_C = @compileError("unable to translate macro: undefined identifier `INT`"); // /home/user/zig-linux-x86_64-0.10.0-dev.2674+d980c6a38/lib/include/stdint.h:642:10
pub const __UINTN_C = @compileError("unable to translate macro: undefined identifier `UINT`"); // /home/user/zig-linux-x86_64-0.10.0-dev.2674+d980c6a38/lib/include/stdint.h:643:9
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /home/user/zig-linux-x86_64-0.10.0-dev.2674+d980c6a38/lib/include/stdarg.h:17:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /home/user/zig-linux-x86_64-0.10.0-dev.2674+d980c6a38/lib/include/stdarg.h:18:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // /home/user/zig-linux-x86_64-0.10.0-dev.2674+d980c6a38/lib/include/stdarg.h:19:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /home/user/zig-linux-x86_64-0.10.0-dev.2674+d980c6a38/lib/include/stdarg.h:24:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /home/user/zig-linux-x86_64-0.10.0-dev.2674+d980c6a38/lib/include/stdarg.h:27:9
pub const set_errno = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/user/nuttx/nuttx/include/errno.h:42:9
pub const PANIC = @compileError("unable to translate macro: undefined identifier `__FILE__`"); // /home/user/nuttx/nuttx/include/assert.h:46:11
pub const ASSERT = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/user/nuttx/nuttx/include/assert.h:51:9
pub const VERIFY = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/user/nuttx/nuttx/include/assert.h:52:9
pub const static_assert = @compileError("unable to translate C expr: unexpected token '_Static_assert'"); // /home/user/nuttx/nuttx/include/assert.h:81:13
pub const SEM_FAILED = @compileError("unable to translate C expr: unexpected token ')'"); // /home/user/nuttx/nuttx/include/semaphore.h:46:9
pub const SEM_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'"); // /home/user/nuttx/nuttx/include/semaphore.h:130:11
pub const NXSEM_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'"); // /home/user/nuttx/nuttx/include/nuttx/semaphore.h:50:11
pub const NXRMUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'"); // /home/user/nuttx/nuttx/include/nuttx/mutex.h:40:9
pub const INODE_SET_TYPE = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/user/nuttx/nuttx/include/nuttx/fs/fs.h:134:9
pub const DIRENT_SETPSEUDONODE = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/user/nuttx/nuttx/include/nuttx/fs/fs.h:155:9
pub const umount = @compileError("unable to translate macro: undefined identifier `umount2`"); // /home/user/nuttx/nuttx/include/nuttx/fs/fs.h:170:9
pub const sq_init = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/user/nuttx/nuttx/include/queue.h:34:9
pub const dq_init = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/user/nuttx/nuttx/include/queue.h:42:9
pub const sq_move = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/user/nuttx/nuttx/include/queue.h:50:9
pub const dq_move = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/user/nuttx/nuttx/include/queue.h:60:9
pub const PTHREAD_CANCELED = @compileError("unable to translate C expr: expected ')' instead got 'void'"); // /home/user/nuttx/nuttx/include/pthread.h:134:9
pub const PTHREAD_COND_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'"); // /home/user/nuttx/nuttx/include/pthread.h:270:9
pub const PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'"); // /home/user/nuttx/nuttx/include/pthread.h:343:11
pub const PTHREAD_RWLOCK_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'"); // /home/user/nuttx/nuttx/include/pthread.h:385:9
pub const sa_handler = @compileError("unable to translate macro: undefined identifier `sa_u`"); // /home/user/nuttx/nuttx/include/signal.h:408:9
pub const sa_sigaction = @compileError("unable to translate macro: undefined identifier `sa_u`"); // /home/user/nuttx/nuttx/include/signal.h:409:9
pub const CSR_STATUS = @compileError("unable to translate macro: undefined identifier `mstatus`"); // /home/user/nuttx/nuttx/include/arch/mode.h:72:11
pub const CSR_SCRATCH = @compileError("unable to translate macro: undefined identifier `mscratch`"); // /home/user/nuttx/nuttx/include/arch/mode.h:73:11
pub const CSR_EPC = @compileError("unable to translate macro: undefined identifier `mepc`"); // /home/user/nuttx/nuttx/include/arch/mode.h:74:11
pub const CSR_IE = @compileError("unable to translate macro: undefined identifier `mie`"); // /home/user/nuttx/nuttx/include/arch/mode.h:75:11
pub const CSR_CAUSE = @compileError("unable to translate macro: undefined identifier `mcause`"); // /home/user/nuttx/nuttx/include/arch/mode.h:76:11
pub const ERET = @compileError("unable to translate macro: undefined identifier `mret`"); // /home/user/nuttx/nuttx/include/arch/mode.h:99:11
pub const __STR = @compileError("unable to translate C expr: unexpected token '#'"); // /home/user/nuttx/nuttx/include/arch/irq.h:49:11
pub const _SCHED_GETAFFINITY = @compileError("unable to translate macro: undefined identifier `sched_getaffinity`"); // /home/user/nuttx/nuttx/include/nuttx/sched.h:169:11
pub const _SCHED_SETAFFINITY = @compileError("unable to translate macro: undefined identifier `sched_setaffinity`"); // /home/user/nuttx/nuttx/include/nuttx/sched.h:170:11
pub const FIRST_ASSIGNED_STATE = @compileError("unable to translate macro: undefined identifier `TSTATE_TASK_ASSIGNED`"); // /home/user/nuttx/nuttx/include/nuttx/sched.h:237:9
pub const nxsched_suspend_scheduler = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /home/user/nuttx/nuttx/include/nuttx/sched.h:1154:11
pub const ARRAYSIZE = @compileError("unable to translate C expr: expected ')' instead got '['"); // sensortest.c:48:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 13);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 1);
pub const __clang_version__ = "13.0.1 (git@github.com:ziglang/zig-bootstrap.git 81f0e6c5b902ead84753490db4f0007d08df964a)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 13.0.1 (git@github.com:ziglang/zig-bootstrap.git 81f0e6c5b902ead84753490db4f0007d08df964a)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __OPTIMIZE__ = @as(c_int, 1);
pub const __OPTIMIZE_SIZE__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _ILP32 = @as(c_int, 1);
pub const __ILP32__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @as(c_long, 2147483647);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INTMAX_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINTMAX_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 4);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 4);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 4);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 4);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __INTMAX_TYPE__ = c_longlong;
pub const __INTMAX_FMTd__ = "lld";
pub const __INTMAX_FMTi__ = "lli";
pub const __UINTMAX_TYPE__ = c_ulonglong;
pub const __UINTMAX_FMTo__ = "llo";
pub const __UINTMAX_FMTu__ = "llu";
pub const __UINTMAX_FMTx__ = "llx";
pub const __UINTMAX_FMTX__ = "llX";
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_TYPE__ = c_int;
pub const __PTRDIFF_FMTd__ = "d";
pub const __PTRDIFF_FMTi__ = "i";
pub const __PTRDIFF_WIDTH__ = @as(c_int, 32);
pub const __INTPTR_TYPE__ = c_int;
pub const __INTPTR_FMTd__ = "d";
pub const __INTPTR_FMTi__ = "i";
pub const __INTPTR_WIDTH__ = @as(c_int, 32);
pub const __SIZE_TYPE__ = c_uint;
pub const __SIZE_FMTo__ = "o";
pub const __SIZE_FMTu__ = "u";
pub const __SIZE_FMTx__ = "x";
pub const __SIZE_FMTX__ = "X";
pub const __SIZE_WIDTH__ = @as(c_int, 32);
pub const __WCHAR_TYPE__ = c_int;
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_TYPE__ = c_uint;
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_TYPE__ = c_uint;
pub const __UINTPTR_FMTo__ = "o";
pub const __UINTPTR_FMTu__ = "u";
pub const __UINTPTR_FMTx__ = "x";
pub const __UINTPTR_FMTX__ = "X";
pub const __UINTPTR_WIDTH__ = @as(c_int, 32);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 6.47517511943802511092443895822764655e-4966);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 33);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 36);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.92592994438723585305597794258492732e-34);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 113);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176508575932662800702e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626267781732175260e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 32);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __CHAR_UNSIGNED__ = @as(c_int, 1);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 1);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 1);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_ALL__ = @as(c_int, 3);
pub const __ELF__ = @as(c_int, 1);
pub const __riscv = @as(c_int, 1);
pub const __riscv_xlen = @as(c_int, 32);
pub const __riscv_cmodel_medlow = @as(c_int, 1);
pub const __riscv_float_abi_single = @as(c_int, 1);
pub const __riscv_arch_test = @as(c_int, 1);
pub const __riscv_i = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2000000, .decimal);
pub const __riscv_m = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2000000, .decimal);
pub const __riscv_mul = @as(c_int, 1);
pub const __riscv_div = @as(c_int, 1);
pub const __riscv_muldiv = @as(c_int, 1);
pub const __riscv_a = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2000000, .decimal);
pub const __riscv_atomic = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __riscv_f = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2000000, .decimal);
pub const __riscv_flen = @as(c_int, 32);
pub const __riscv_fdiv = @as(c_int, 1);
pub const __riscv_fsqrt = @as(c_int, 1);
pub const __riscv_c = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2000000, .decimal);
pub const __riscv_compressed = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 0);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const __NuttX__ = @as(c_int, 1);
pub const NDEBUG = @as(c_int, 1);
pub const ARCH_RISCV = @as(c_int, 1);
pub const main = sensortest_main;
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const __ARCH_RISCV_INCLUDE_TYPES_H = "";
pub const __INT64_DEFINED = "";
pub const unsigned = c_int;
pub const __INCLUDE_LIMITS_H = "";
pub const __INCLUDE_NUTTX_CONFIG_H = "";
pub const CONFIG_y = @as(c_int, 1);
pub const CONFIG_m = @as(c_int, 2);
pub const CONFIG_DEFAULT_SMALL = @as(c_int, 1);
pub const CONFIG_HOST_LINUX = @as(c_int, 1);
pub const CONFIG_APPS_DIR = "../apps";
pub const CONFIG_BUILD_FLAT = @as(c_int, 1);
pub const CONFIG_INTELHEX_BINARY = @as(c_int, 1);
pub const CONFIG_RAW_BINARY = @as(c_int, 1);
pub const CONFIG_ARCH_HAVE_STDARG_H = @as(c_int, 1);
pub const CONFIG_ARCH_HAVE_SETJMP = @as(c_int, 1);
pub const CONFIG_ARCH_NONE_DEBUG_H = @as(c_int, 1);
pub const CONFIG_NDEBUG = @as(c_int, 1);
pub const CONFIG_DEBUG_ALERT = @as(c_int, 1);
pub const CONFIG_DEBUG_FEATURES = @as(c_int, 1);
pub const CONFIG_DEBUG_ERROR = @as(c_int, 1);
pub const CONFIG_DEBUG_WARN = @as(c_int, 1);
pub const CONFIG_DEBUG_ASSERTIONS = @as(c_int, 1);
pub const CONFIG_DEBUG_GPIO = @as(c_int, 1);
pub const CONFIG_DEBUG_GPIO_ERROR = @as(c_int, 1);
pub const CONFIG_DEBUG_GPIO_WARN = @as(c_int, 1);
pub const CONFIG_DEBUG_I2C = @as(c_int, 1);
pub const CONFIG_DEBUG_I2C_ERROR = @as(c_int, 1);
pub const CONFIG_DEBUG_I2C_WARN = @as(c_int, 1);
pub const CONFIG_DEBUG_SENSORS = @as(c_int, 1);
pub const CONFIG_DEBUG_SENSORS_ERROR = @as(c_int, 1);
pub const CONFIG_DEBUG_SENSORS_WARN = @as(c_int, 1);
pub const CONFIG_DEBUG_SPI = @as(c_int, 1);
pub const CONFIG_DEBUG_SPI_ERROR = @as(c_int, 1);
pub const CONFIG_DEBUG_SPI_WARN = @as(c_int, 1);
pub const CONFIG_ARCH_HAVE_STACKCHECK = @as(c_int, 1);
pub const CONFIG_STACK_COLORATION = @as(c_int, 1);
pub const CONFIG_STACK_CANARIES = @as(c_int, 1);
pub const CONFIG_DEBUG_SYMBOLS = @as(c_int, 1);
pub const CONFIG_ARCH_HAVE_CUSTOMOPT = @as(c_int, 1);
pub const CONFIG_DEBUG_FULLOPT = @as(c_int, 1);
pub const CONFIG_DEBUG_OPT_UNUSED_SECTIONS = @as(c_int, 1);
pub const CONFIG_DEBUG_LINK_MAP = @as(c_int, 1);
pub const CONFIG_ARCH_RISCV = @as(c_int, 1);
pub const CONFIG_ARCH = "risc-v";
pub const CONFIG_ARCH_FAMILY = "rv32";
pub const CONFIG_ARCH_CHIP = "bl602";
pub const CONFIG_ARCH_CHIP_BL602 = @as(c_int, 1);
pub const CONFIG_ARCH_RV32 = @as(c_int, 1);
pub const CONFIG_ARCH_RV_ISA_M = @as(c_int, 1);
pub const CONFIG_ARCH_RV_ISA_A = @as(c_int, 1);
pub const CONFIG_ARCH_RV_ISA_C = @as(c_int, 1);
pub const CONFIG_ARCH_HAVE_MISALIGN_EXCEPTION = @as(c_int, 1);
pub const CONFIG_RISCV_MISALIGNED_HANDLER = @as(c_int, 1);
pub const CONFIG_ARCH_MPU_MIN_BLOCK_SIZE = @as(c_int, 4);
pub const CONFIG_ARCH_MPU_HAS_TOR = @as(c_int, 1);
pub const CONFIG_ARCH_MPU_HAS_NO4 = @as(c_int, 1);
pub const CONFIG_ARCH_MPU_HAS_NAPOT = @as(c_int, 1);
pub const CONFIG_RISCV_TOOLCHAIN_GNU_RVG = @as(c_int, 1);
pub const CONFIG_BL602_HAVE_UART0 = @as(c_int, 1);
pub const CONFIG_BL602_UART0 = @as(c_int, 1);
pub const CONFIG_BL602_TIMER0 = @as(c_int, 1);
pub const CONFIG_BL602_I2C0 = @as(c_int, 1);
pub const CONFIG_BL602_SPI0 = @as(c_int, 1);
pub const CONFIG_ARCH_BOARD = "bl602evb";
pub const CONFIG_ARCH_TOOLCHAIN_GNU = @as(c_int, 1);
pub const CONFIG_LTO_NONE = @as(c_int, 1);
pub const CONFIG_ARCH_HAVE_VFORK = @as(c_int, 1);
pub const CONFIG_ARCH_HAVE_FPU = @as(c_int, 1);
pub const CONFIG_ARCH_HAVE_RESET = @as(c_int, 1);
pub const CONFIG_ARCH_HAVE_TESTSET = @as(c_int, 1);
pub const CONFIG_ARCH_HAVE_THREAD_LOCAL = @as(c_int, 1);
pub const CONFIG_ARCH_HAVE_SYSCALL_HOOKS = @as(c_int, 1);
pub const CONFIG_ARCH_HAVE_BACKTRACE = @as(c_int, 1);
pub const CONFIG_ARCH_FPU = @as(c_int, 1);
pub const CONFIG_ARCH_STACKDUMP = @as(c_int, 1);
pub const CONFIG_ARCH_STACKDUMP_MAX_LENGTH = @as(c_int, 0);
pub const CONFIG_BOARD_LOOPSPERMSEC = @as(c_int, 10000);
pub const CONFIG_ARCH_HAVE_INTERRUPTSTACK = @as(c_int, 1);
pub const CONFIG_ARCH_INTERRUPTSTACK = @as(c_int, 8192);
pub const CONFIG_BOOT_RUNFROMFLASH = @as(c_int, 1);
pub const CONFIG_RAM_START = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xc0800000, .hexadecimal);
pub const CONFIG_RAM_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 134217728, .decimal);
pub const CONFIG_ARCH_BOARD_BL602EVB = @as(c_int, 1);
pub const CONFIG_BOARDCTL = @as(c_int, 1);
pub const CONFIG_DISABLE_OS_API = @as(c_int, 1);
pub const CONFIG_DISABLE_ENVIRON = @as(c_int, 1);
pub const CONFIG_ARCH_HAVE_TICKLESS = @as(c_int, 1);
pub const CONFIG_USEC_PER_TICK = @as(c_int, 10000);
pub const CONFIG_ARCH_HAVE_TIMEKEEPING = @as(c_int, 1);
pub const CONFIG_START_YEAR = @as(c_int, 2020);
pub const CONFIG_START_MONTH = @as(c_int, 3);
pub const CONFIG_START_DAY = @as(c_int, 20);
pub const CONFIG_PREALLOC_TIMERS = @as(c_int, 0);
pub const CONFIG_INIT_ENTRY = @as(c_int, 1);
pub const CONFIG_INIT_STACKSIZE = @as(c_int, 8192);
pub const CONFIG_INIT_PRIORITY = @as(c_int, 100);
pub const CONFIG_INIT_ENTRYNAME = "nsh_main";
pub const CONFIG_RR_INTERVAL = @as(c_int, 200);
pub const CONFIG_TASK_NAME_SIZE = @as(c_int, 12);
pub const CONFIG_SCHED_WAITPID = @as(c_int, 1);
pub const CONFIG_PTHREAD_MUTEX_UNSAFE = @as(c_int, 1);
pub const CONFIG_PTHREAD_MUTEX_DEFAULT_PRIO_NONE = @as(c_int, 1);
pub const CONFIG_DEV_CONSOLE = @as(c_int, 1);
pub const CONFIG_NFILE_DESCRIPTORS_PER_BLOCK = @as(c_int, 6);
pub const CONFIG_FILE_STREAM = @as(c_int, 1);
pub const CONFIG_NAME_MAX = @as(c_int, 32);
pub const CONFIG_PATH_MAX = @as(c_int, 256);
pub const CONFIG_SIG_PREALLOC_IRQ_ACTIONS = @as(c_int, 4);
pub const CONFIG_SIG_EVTHREAD = @as(c_int, 1);
pub const CONFIG_SIG_SIGUSR1 = @as(c_int, 1);
pub const CONFIG_SIG_SIGUSR2 = @as(c_int, 2);
pub const CONFIG_SIG_SIGALRM = @as(c_int, 3);
pub const CONFIG_SIG_PIPE = @as(c_int, 13);
pub const CONFIG_SIG_HUP = @as(c_int, 14);
pub const CONFIG_SIG_TTIN = @as(c_int, 15);
pub const CONFIG_SIG_SIGCONDTIMEDOUT = @as(c_int, 16);
pub const CONFIG_SIG_SIGWORK = @as(c_int, 17);
pub const CONFIG_PREALLOC_MQ_MSGS = @as(c_int, 4);
pub const CONFIG_PREALLOC_MQ_IRQ_MSGS = @as(c_int, 4);
pub const CONFIG_MQ_MAXMSGSIZE = @as(c_int, 32);
pub const CONFIG_DISABLE_MQUEUE_NOTIFICATION = @as(c_int, 1);
pub const CONFIG_SCHED_WORKQUEUE = @as(c_int, 1);
pub const CONFIG_SCHED_HPWORK = @as(c_int, 1);
pub const CONFIG_SCHED_HPNTHREADS = @as(c_int, 1);
pub const CONFIG_SCHED_HPWORKPRIORITY = @as(c_int, 224);
pub const CONFIG_SCHED_HPWORKSTACKSIZE = @as(c_int, 2048);
pub const CONFIG_DEFAULT_TASK_STACKSIZE = @as(c_int, 2048);
pub const CONFIG_IDLETHREAD_STACKSIZE = @as(c_int, 8192);
pub const CONFIG_PTHREAD_STACK_MIN = @as(c_int, 256);
pub const CONFIG_PTHREAD_STACK_DEFAULT = @as(c_int, 8192);
pub const CONFIG_SCHED_BACKTRACE = @as(c_int, 1);
pub const CONFIG_DEV_URANDOM = @as(c_int, 1);
pub const CONFIG_DEV_URANDOM_RANDOM_POOL = @as(c_int, 1);
pub const CONFIG_I2C = @as(c_int, 1);
pub const CONFIG_I2C_DRIVER = @as(c_int, 1);
pub const CONFIG_SPI = @as(c_int, 1);
pub const CONFIG_SPI_EXCHANGE = @as(c_int, 1);
pub const CONFIG_SPI_CMDDATA = @as(c_int, 1);
pub const CONFIG_SPI_DRIVER = @as(c_int, 1);
pub const CONFIG_ARCH_HAVE_PWM_MULTICHAN = @as(c_int, 1);
pub const CONFIG_TIMER = @as(c_int, 1);
pub const CONFIG_TIMER_ARCH = @as(c_int, 1);
pub const CONFIG_ONESHOT = @as(c_int, 1);
pub const CONFIG_ALARM_ARCH = @as(c_int, 1);
pub const CONFIG_DEV_GPIO = @as(c_int, 1);
pub const CONFIG_DEV_GPIO_NSIGNALS = @as(c_int, 1);
pub const CONFIG_DEV_NULL = @as(c_int, 1);
pub const CONFIG_DEV_ZERO = @as(c_int, 1);
pub const CONFIG_ARCH_HAVE_RDWR_MEM_CPU_RUN = @as(c_int, 1);
pub const CONFIG_SENSORS = @as(c_int, 1);
pub const CONFIG_SENSORS_BME280 = @as(c_int, 1);
pub const CONFIG_BME280_I2C_FREQUENCY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 400000, .decimal);
pub const CONFIG_ARCH_HAVE_SERIAL_TERMIOS = @as(c_int, 1);
pub const CONFIG_SERIAL = @as(c_int, 1);
pub const CONFIG_SERIAL_CONSOLE = @as(c_int, 1);
pub const CONFIG_MCU_SERIAL = @as(c_int, 1);
pub const CONFIG_STANDARD_SERIAL = @as(c_int, 1);
pub const CONFIG_SERIAL_NPOLLWAITERS = @as(c_int, 4);
pub const CONFIG_UART0_SERIAL_CONSOLE = @as(c_int, 1);
pub const CONFIG_UART0_SERIALDRIVER = @as(c_int, 1);
pub const CONFIG_UART0_RXBUFSIZE = @as(c_int, 128);
pub const CONFIG_UART0_TXBUFSIZE = @as(c_int, 128);
pub const CONFIG_UART0_BAUD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2000000, .decimal);
pub const CONFIG_UART0_BITS = @as(c_int, 8);
pub const CONFIG_UART0_PARITY = @as(c_int, 0);
pub const CONFIG_UART0_2STOP = @as(c_int, 0);
pub const CONFIG_SYSLOG_MAX_CHANNELS = @as(c_int, 1);
pub const CONFIG_SYSLOG_DEVPATH = "/dev/ttyS1";
pub const CONFIG_SYSLOG_DEFAULT = @as(c_int, 1);
pub const CONFIG_DRIVERS_RF = @as(c_int, 1);
pub const CONFIG_RF_SPI_TEST_DRIVER = @as(c_int, 1);
pub const CONFIG_CRYPTO = @as(c_int, 1);
pub const CONFIG_CRYPTO_BLAKE2S = @as(c_int, 1);
pub const CONFIG_CRYPTO_RANDOM_POOL = @as(c_int, 1);
pub const CONFIG_CRYPTO_RANDOM_POOL_COLLECT_IRQ_RANDOMNESS = @as(c_int, 1);
pub const CONFIG_FS_NEPOLL_DESCRIPTORS = @as(c_int, 8);
pub const CONFIG_DISABLE_PSEUDOFS_OPERATIONS = @as(c_int, 1);
pub const CONFIG_SENDFILE_BUFSIZE = @as(c_int, 512);
pub const CONFIG_FS_MQUEUE_VFS_PATH = "/var/mqueue";
pub const CONFIG_FS_MQUEUE_NPOLLWAITERS = @as(c_int, 4);
pub const CONFIG_FS_PROCFS = @as(c_int, 1);
pub const CONFIG_FS_PROCFS_MAX_TASKS = @as(c_int, 128);
pub const CONFIG_FS_PROCFS_EXCLUDE_ENVIRON = @as(c_int, 1);
pub const CONFIG_NXFONTS_PACKEDMSFIRST = @as(c_int, 1);
pub const CONFIG_MM_DEFAULT_MANAGER = @as(c_int, 1);
pub const CONFIG_MM_REGIONS = @as(c_int, 1);
pub const CONFIG_MM_CIRCBUF = @as(c_int, 1);
pub const CONFIG_MM_BACKTRACE = -@as(c_int, 1);
pub const CONFIG_BINFMT_DISABLE = @as(c_int, 1);
pub const CONFIG_STDIO_DISABLE_BUFFERING = @as(c_int, 1);
pub const CONFIG_NUNGET_CHARS = @as(c_int, 2);
pub const CONFIG_LIBC_FLOATINGPOINT = @as(c_int, 1);
pub const CONFIG_EOL_IS_EITHER_CRLF = @as(c_int, 1);
pub const CONFIG_ARCH_LOWPUTC = @as(c_int, 1);
pub const CONFIG_LIBC_RAND_ORDER = @as(c_int, 1);
pub const CONFIG_LIBC_TMPDIR = "/tmp";
pub const CONFIG_LIBC_MAX_TMPFILE = @as(c_int, 32);
pub const CONFIG_LIBC_MAX_EXITFUNS = @as(c_int, 0);
pub const CONFIG_POSIX_SPAWN_PROXY_STACKSIZE = @as(c_int, 1024);
pub const CONFIG_TASK_SPAWN_DEFAULT_STACKSIZE = @as(c_int, 8192);
pub const CONFIG_LIBC_HOSTNAME = "";
pub const CONFIG_LIBC_OPEN_MAX = @as(c_int, 255);
pub const CONFIG_LIBC_STRERROR = @as(c_int, 1);
pub const CONFIG_LIBC_PERROR_STDOUT = @as(c_int, 1);
pub const CONFIG_TLS_NELEM = @as(c_int, 4);
pub const CONFIG_TLS_TASK_NELEM = @as(c_int, 0);
pub const CONFIG_NETDB_BUFSIZE = @as(c_int, 256);
pub const CONFIG_NETDB_MAX_IPADDR = @as(c_int, 1);
pub const CONFIG_LIBC_ERR = @as(c_int, 1);
pub const CONFIG_BUILTIN = @as(c_int, 1);
pub const CONFIG_LIBSX1262 = @as(c_int, 1);
pub const CONFIG_LIBSX1262_SPI_DEVPATH = "/dev/spitest0";
pub const CONFIG_LIBSX1262_CS_DEVPATH = "/dev/gpio1";
pub const CONFIG_LIBSX1262_BUSY_DEVPATH = "/dev/gpio0";
pub const CONFIG_LIBSX1262_DIO1_DEVPATH = "/dev/gpio2";
pub const CONFIG_LIBLORAWAN = @as(c_int, 1);
pub const CONFIG_LIBNPL = @as(c_int, 1);
pub const CONFIG_LIBTINYCBOR = @as(c_int, 1);
pub const CONFIG_LIBRUST = @as(c_int, 1);
pub const CONFIG_LIBBL602_ADC = @as(c_int, 1);
pub const CONFIG_EXAMPLES_BL602_ADC_TEST = @as(c_int, 1);
pub const CONFIG_EXAMPLES_BL602_ADC_TEST_PROGNAME = "bl602_adc_test";
pub const CONFIG_EXAMPLES_BL602_ADC_TEST_PRIORITY = @as(c_int, 100);
pub const CONFIG_EXAMPLES_BL602_ADC_TEST_STACKSIZE = @as(c_int, 2048);
pub const CONFIG_EXAMPLES_GPIO = @as(c_int, 1);
pub const CONFIG_EXAMPLES_GPIO_PROGNAME = "gpio";
pub const CONFIG_EXAMPLES_GPIO_PRIORITY = @as(c_int, 100);
pub const CONFIG_EXAMPLES_GPIO_STACKSIZE = @as(c_int, 2048);
pub const CONFIG_EXAMPLES_HELLO = @as(c_int, 1);
pub const CONFIG_EXAMPLES_HELLO_PROGNAME = "hello";
pub const CONFIG_EXAMPLES_HELLO_PRIORITY = @as(c_int, 100);
pub const CONFIG_EXAMPLES_HELLO_STACKSIZE = @as(c_int, 8192);
pub const CONFIG_EXAMPLES_IKEA_AIR_QUALITY_SENSOR = @as(c_int, 1);
pub const CONFIG_EXAMPLES_IKEA_AIR_QUALITY_SENSOR_PROGNAME = "ikea_air_quality_sensor";
pub const CONFIG_EXAMPLES_IKEA_AIR_QUALITY_SENSOR_PRIORITY = @as(c_int, 100);
pub const CONFIG_EXAMPLES_IKEA_AIR_QUALITY_SENSOR_STACKSIZE = @as(c_int, 2048);
pub const CONFIG_EXAMPLES_LORAWAN_TEST = @as(c_int, 1);
pub const CONFIG_EXAMPLES_LORAWAN_TEST_PROGNAME = "lorawan_test";
pub const CONFIG_EXAMPLES_LORAWAN_TEST_PRIORITY = @as(c_int, 100);
pub const CONFIG_EXAMPLES_LORAWAN_TEST_STACKSIZE = @as(c_int, 2048);
pub const CONFIG_EXAMPLES_SPI_TEST = @as(c_int, 1);
pub const CONFIG_EXAMPLES_SPI_TEST_PROGNAME = "spi_test";
pub const CONFIG_EXAMPLES_SPI_TEST_PRIORITY = @as(c_int, 100);
pub const CONFIG_EXAMPLES_SPI_TEST_STACKSIZE = @as(c_int, 2048);
pub const CONFIG_EXAMPLES_SPI_TEST2 = @as(c_int, 1);
pub const CONFIG_EXAMPLES_SPI_TEST2_PROGNAME = "spi_test2";
pub const CONFIG_EXAMPLES_SPI_TEST2_PRIORITY = @as(c_int, 100);
pub const CONFIG_EXAMPLES_SPI_TEST2_STACKSIZE = @as(c_int, 2048);
pub const CONFIG_EXAMPLES_SX1262_TEST = @as(c_int, 1);
pub const CONFIG_EXAMPLES_SX1262_TEST_PROGNAME = "sx1262_test";
pub const CONFIG_EXAMPLES_SX1262_TEST_PRIORITY = @as(c_int, 100);
pub const CONFIG_EXAMPLES_SX1262_TEST_STACKSIZE = @as(c_int, 2048);
pub const CONFIG_EXAMPLES_TIMER = @as(c_int, 1);
pub const CONFIG_EXAMPLES_TIMER_DEVNAME = "/dev/timer0";
pub const CONFIG_EXAMPLES_TIMER_INTERVAL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal);
pub const CONFIG_EXAMPLES_TIMER_DELAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 100000, .decimal);
pub const CONFIG_EXAMPLES_TIMER_NSAMPLES = @as(c_int, 20);
pub const CONFIG_EXAMPLES_TIMER_SIGNO = @as(c_int, 17);
pub const CONFIG_EXAMPLES_TIMER_STACKSIZE = @as(c_int, 2048);
pub const CONFIG_EXAMPLES_TIMER_PRIORITY = @as(c_int, 100);
pub const CONFIG_EXAMPLES_TIMER_PROGNAME = "timer";
pub const CONFIG_EXAMPLES_TINYCBOR_TEST = @as(c_int, 1);
pub const CONFIG_EXAMPLES_TINYCBOR_TEST_PROGNAME = "tinycbor_test";
pub const CONFIG_EXAMPLES_TINYCBOR_TEST_PRIORITY = @as(c_int, 100);
pub const CONFIG_EXAMPLES_TINYCBOR_TEST_STACKSIZE = @as(c_int, 2048);
pub const CONFIG_INTERPRETERS_BAS = @as(c_int, 1);
pub const CONFIG_INTERPRETER_BAS_VERSION = "2.4";
pub const CONFIG_INTERPRETER_BAS_PRIORITY = @as(c_int, 100);
pub const CONFIG_INTERPRETER_BAS_STACKSIZE = @as(c_int, 4096);
pub const CONFIG_INTERPRETER_BAS_VT100 = @as(c_int, 1);
pub const CONFIG_NSH_LIBRARY = @as(c_int, 1);
pub const CONFIG_NSH_PROMPT_STRING = "nsh> ";
pub const CONFIG_NSH_READLINE = @as(c_int, 1);
pub const CONFIG_NSH_LINELEN = @as(c_int, 64);
pub const CONFIG_NSH_DISABLE_SEMICOLON = @as(c_int, 1);
pub const CONFIG_NSH_MAXARGUMENTS = @as(c_int, 7);
pub const CONFIG_NSH_NESTDEPTH = @as(c_int, 3);
pub const CONFIG_NSH_BUILTIN_APPS = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_BASENAME = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_CD = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_CP = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_CMP = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_TIMEDATECTL = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_DATE = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_DD = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_DF = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_DIRNAME = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_ECHO = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_ENV = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_EXEC = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_EXIT = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_EXPORT = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_FREE = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_GET = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_HEXDUMP = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_IFCONFIG = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_IFUPDOWN = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_KILL = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_LOSETUP = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_MB = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_MKDIR = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_MKRD = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_MH = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_MOUNT = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_MV = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_MW = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_PRINTF = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_PS = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_PUT = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_PWD = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_RM = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_RMDIR = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_SET = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_SOURCE = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_SLEEP = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_TIME = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_TEST = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_TELNETD = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_TRUNCATE = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_UMOUNT = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_UNSET = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_USLEEP = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_WGET = @as(c_int, 1);
pub const CONFIG_NSH_DISABLE_XD = @as(c_int, 1);
pub const CONFIG_NSH_CODECS_BUFSIZE = @as(c_int, 128);
pub const CONFIG_NSH_PROC_MOUNTPOINT = "/proc";
pub const CONFIG_NSH_FILEIOSIZE = @as(c_int, 64);
pub const CONFIG_NSH_STRERROR = @as(c_int, 1);
pub const CONFIG_NSH_DISABLESCRIPT = @as(c_int, 1);
pub const CONFIG_NSH_CONSOLE = @as(c_int, 1);
pub const CONFIG_NSH_ARCHINIT = @as(c_int, 1);
pub const CONFIG_SYSTEM_NSH = @as(c_int, 1);
pub const CONFIG_SYSTEM_NSH_PRIORITY = @as(c_int, 100);
pub const CONFIG_SYSTEM_NSH_STACKSIZE = @as(c_int, 2048);
pub const CONFIG_SYSTEM_NSH_PROGNAME = "nsh";
pub const CONFIG_SYSTEM_READLINE = @as(c_int, 1);
pub const CONFIG_READLINE_HAVE_EXTMATCH = @as(c_int, 1);
pub const CONFIG_READLINE_ECHO = @as(c_int, 1);
pub const CONFIG_TESTING_GETPRIME = @as(c_int, 1);
pub const CONFIG_TESTING_GETPRIME_PROGNAME = "getprime";
pub const CONFIG_TESTING_GETPRIME_PRIORITY = @as(c_int, 50);
pub const CONFIG_TESTING_GETPRIME_STACKSIZE = @as(c_int, 2048);
pub const CONFIG_TESTING_GETPRIME_THREAD_PRIORITY = @as(c_int, 10);
pub const CONFIG_TESTING_SENSORTEST = @as(c_int, 1);
pub const CONFIG_TESTING_SENSORTEST_PROGNAME = "sensortest";
pub const CONFIG_TESTING_SENSORTEST_PRIORITY = @as(c_int, 100);
pub const CONFIG_TESTING_SENSORTEST_STACKSIZE = @as(c_int, 2048);
pub const CONFIG_RAM_END = CONFIG_RAM_START + CONFIG_RAM_SIZE;
pub const __ARCH_RISCV_INCLUDE_LIMITS_H = "";
pub const CHAR_BIT = @as(c_int, 8);
pub const SCHAR_MIN = -SCHAR_MAX - @as(c_int, 1);
pub const SCHAR_MAX = @as(c_int, 127);
pub const UCHAR_MAX = @as(c_int, 255);
pub const CHAR_MIN = @as(c_int, 0);
pub const CHAR_MAX = UCHAR_MAX;
pub const SHRT_MIN = -SHRT_MAX - @as(c_int, 1);
pub const SHRT_MAX = @as(c_int, 32767);
pub const USHRT_MAX = @as(c_uint, 65535);
pub const INT_MIN = -INT_MAX - @as(c_int, 1);
pub const INT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const UINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const LONG_MIN = -LONG_MAX - @as(c_int, 1);
pub const LONG_MAX = @as(c_long, 2147483647);
pub const ULONG_MAX = @as(c_ulong, 4294967295);
pub const LLONG_MIN = -LLONG_MAX - @as(c_int, 1);
pub const LLONG_MAX = @as(c_longlong, 9223372036854775807);
pub const ULLONG_MAX = @as(c_ulonglong, 18446744073709551615);
pub const PTR_MIN = -PTR_MAX - @as(c_int, 1);
pub const PTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const UPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const WCHAR_MIN = -__WCHAR_MAX__ - @as(c_int, 1);
pub const WCHAR_MAX = __WCHAR_MAX__;
pub const MB_LEN_MAX = @as(c_int, 4);
pub const _POSIX_ARG_MAX = @as(c_int, 4096);
pub const _POSIX_CHILD_MAX = @as(c_int, 6);
pub const _POSIX_LINK_MAX = @as(c_int, 8);
pub const _POSIX_MAX_CANON = @as(c_int, 255);
pub const _POSIX_MAX_INPUT = @as(c_int, 255);
pub const _POSIX_NAME_MAX = CONFIG_NAME_MAX;
pub const _POSIX_NGROUPS_MAX = @as(c_int, 0);
pub const _POSIX_OPEN_MAX = @as(c_int, 16);
pub const _POSIX_PATH_MAX = CONFIG_PATH_MAX;
pub const _POSIX_PIPE_BUF = @as(c_int, 512);
pub const _POSIX_STREAM_MAX = @as(c_int, 16);
pub const _POSIX_TZNAME_MAX = @as(c_int, 3);
pub const _POSIX_SIZE_MAX = @as(c_ulong, 4294967295);
pub const _POSIX_SIZE_MIN = @as(c_int, 0);
pub const _POSIX_SSIZE_MAX = @as(c_long, 2147483647);
pub const _POSIX_SSIZE_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 2147483648, .decimal);
pub const _POSIX_RTSIG_MAX = @as(c_int, 31);
pub const _POSIX_SIGQUEUE_MAX = @as(c_int, 32);
pub const _POSIX_SYMLOOP_MAX = @as(c_int, 8);
pub const _POSIX_DELAYTIMER_MAX = @as(c_int, 32);
pub const _POSIX_TIMER_MAX = @as(c_int, 32);
pub const _POSIX_CLOCKRES_MIN = CONFIG_USEC_PER_TICK * @as(c_int, 1000);
pub const _POSIX_AIO_LISTIO_MAX = @as(c_int, 2);
pub const _POSIX_AIO_MAX = @as(c_int, 1);
pub const _POSIX_MQ_OPEN_MAX = @as(c_int, 8);
pub const _POSIX_MQ_PRIO_MAX = UCHAR_MAX;
pub const _POSIX_SEM_NSEMS_MAX = INT_MAX;
pub const _POSIX_SEM_VALUE_MAX = @as(c_int, 0x7fff);
pub const ARG_MAX = _POSIX_ARG_MAX;
pub const CHILD_MAX = _POSIX_CHILD_MAX;
pub const LINK_MAX = _POSIX_LINK_MAX;
pub const MAX_CANON = _POSIX_MAX_CANON;
pub const MAX_INPUT = _POSIX_MAX_INPUT;
pub const NAME_MAX = _POSIX_NAME_MAX;
pub const TTY_NAME_MAX = _POSIX_NAME_MAX;
pub const NGROUPS_MAX = _POSIX_NGROUPS_MAX;
pub const OPEN_MAX = CONFIG_LIBC_OPEN_MAX;
pub const PATH_MAX = _POSIX_PATH_MAX;
pub const PIPE_BUF = _POSIX_PIPE_BUF;
pub const SIZE_MAX = _POSIX_SIZE_MAX;
pub const SIZE_MIN = _POSIX_SIZE_MIN;
pub const RSIZE_MAX = _POSIX_SIZE_MAX;
pub const SSIZE_MAX = _POSIX_SSIZE_MAX;
pub const SSIZE_MIN = _POSIX_SSIZE_MIN;
pub const STREAM_MAX = _POSIX_STREAM_MAX;
pub const TZNAME_MAX = _POSIX_TZNAME_MAX;
pub const RTSIG_MAX = _POSIX_RTSIG_MAX;
pub const SIGQUEUE_MAX = _POSIX_SIGQUEUE_MAX;
pub const SYMLOOP_MAX = _POSIX_SYMLOOP_MAX;
pub const DELAYTIMER_MAX = _POSIX_DELAYTIMER_MAX;
pub const TIMER_MAX = _POSIX_TIMER_MAX;
pub const CLOCKRES_MIN = _POSIX_CLOCKRES_MIN;
pub const CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const NL_LANGMAX = @as(c_int, 14);
pub const NL_MSGMAX = @as(c_int, 32767);
pub const NL_SETMAX = @as(c_int, 255);
pub const NZERO = @as(c_int, 128);
pub const AIO_LISTIO_MAX = _POSIX_AIO_LISTIO_MAX;
pub const AIO_MAX = _POSIX_AIO_MAX;
pub const MQ_OPEN_MAX = _POSIX_MQ_OPEN_MAX;
pub const MQ_PRIO_MAX = _POSIX_MQ_PRIO_MAX;
pub const SEM_NSEMS_MAX = _POSIX_SEM_NSEMS_MAX;
pub const SEM_VALUE_MAX = _POSIX_SEM_VALUE_MAX;
pub const IOV_MAX = INT_MAX;
pub const HOST_NAME_MAX = @as(c_int, 32);
pub const name_err = "";
pub const open_err = "";
pub const ctl_err = "";
pub const __INCLUDE_NUTTX_SENSORS_SENSOR_H = "";
pub const __INCLUDE_SYS_TYPES_H = "";
pub const __INCLUDE_NUTTX_COMPILER_H = "";
pub const CONFIG_HAVE_ANONYMOUS_STRUCT = @as(c_int, 1);
pub const CONFIG_HAVE_ANONYMOUS_UNION = @as(c_int, 1);
pub const CONFIG_C99_BOOL = @as(c_int, 1);
pub const CONFIG_HAVE_BUILTIN_BSWAP16 = @as(c_int, 1);
pub const CONFIG_HAVE_BUILTIN_BSWAP32 = @as(c_int, 1);
pub const CONFIG_HAVE_BUILTIN_BSWAP64 = @as(c_int, 1);
pub const CONFIG_HAVE_BUILTIN_CTZ = @as(c_int, 1);
pub const CONFIG_HAVE_BUILTIN_CLZ = @as(c_int, 1);
pub const CONFIG_HAVE_BUILTIN_POPCOUNT = @as(c_int, 1);
pub const CONFIG_HAVE_BUILTIN_POPCOUNTLL = @as(c_int, 1);
pub const CONFIG_HAVE_BUILTIN_FFS = @as(c_int, 1);
pub const CONFIG_HAVE_BUILTIN_FFSL = @as(c_int, 1);
pub const CONFIG_HAVE_BUILTIN_FFSLL = @as(c_int, 1);
pub const CONFIG_CPP_HAVE_VARARGS = @as(c_int, 1);
pub const CONFIG_CPP_HAVE_WARNING = @as(c_int, 1);
pub const CONFIG_HAVE_FUNCTIONNAME = @as(c_int, 1);
pub const CONFIG_HAVE_FILENAME = @as(c_int, 1);
pub const CONFIG_HAVE_WEAKFUNCTIONS = @as(c_int, 1);
pub const begin_packed_struct = "";
pub const reentrant_function = "";
pub const FAR = "";
pub const NEAR = "";
pub const DSEG = "";
pub const CODE = "";
pub const CONFIG_HAVE_LONG_LONG = @as(c_int, 1);
pub const CONFIG_HAVE_FLOAT = @as(c_int, 1);
pub const CONFIG_HAVE_DOUBLE = @as(c_int, 1);
pub const CONFIG_HAVE_LONG_DOUBLE = @as(c_int, 1);
pub const IOBJ = "";
pub const IPTR = "";
pub inline fn UNUSED(a: anytype) anyopaque {
    return @import("std").zig.c_translation.cast(anyopaque, (@as(c_int, 1) != 0) or ((&a) != 0));
}
pub const __CLANG_STDINT_H = "";
pub const __int_least64_t = i64;
pub const __uint_least64_t = u64;
pub const __int_least32_t = i64;
pub const __uint_least32_t = u64;
pub const __int_least16_t = i64;
pub const __uint_least16_t = u64;
pub const __int_least8_t = i64;
pub const __uint_least8_t = u64;
pub const __uint32_t_defined = "";
pub const __int8_t_defined = "";
pub const __intptr_t_defined = "";
pub const _INTPTR_T = "";
pub const _UINTPTR_T = "";
pub inline fn __int_c(v: anytype, suffix: anytype) @TypeOf(__int_c_join(v, suffix)) {
    return __int_c_join(v, suffix);
}
pub const __int64_c_suffix = __INT64_C_SUFFIX__;
pub const __int32_c_suffix = __INT64_C_SUFFIX__;
pub const __int16_c_suffix = __INT64_C_SUFFIX__;
pub const __int8_c_suffix = __INT64_C_SUFFIX__;
pub inline fn INT64_C(v: anytype) @TypeOf(__int_c(v, __int64_c_suffix)) {
    return __int_c(v, __int64_c_suffix);
}
pub inline fn UINT64_C(v: anytype) @TypeOf(__uint_c(v, __int64_c_suffix)) {
    return __uint_c(v, __int64_c_suffix);
}
pub inline fn INT32_C(v: anytype) @TypeOf(__int_c(v, __int32_c_suffix)) {
    return __int_c(v, __int32_c_suffix);
}
pub inline fn UINT32_C(v: anytype) @TypeOf(__uint_c(v, __int32_c_suffix)) {
    return __uint_c(v, __int32_c_suffix);
}
pub inline fn INT16_C(v: anytype) @TypeOf(__int_c(v, __int16_c_suffix)) {
    return __int_c(v, __int16_c_suffix);
}
pub inline fn UINT16_C(v: anytype) @TypeOf(__uint_c(v, __int16_c_suffix)) {
    return __uint_c(v, __int16_c_suffix);
}
pub inline fn INT8_C(v: anytype) @TypeOf(__int_c(v, __int8_c_suffix)) {
    return __int_c(v, __int8_c_suffix);
}
pub inline fn UINT8_C(v: anytype) @TypeOf(__uint_c(v, __int8_c_suffix)) {
    return __uint_c(v, __int8_c_suffix);
}
pub const INT64_MAX = INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const INT64_MIN = -INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const UINT64_MAX = UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const __INT_LEAST64_MIN = INT64_MIN;
pub const __INT_LEAST64_MAX = INT64_MAX;
pub const __UINT_LEAST64_MAX = UINT64_MAX;
pub const __INT_LEAST32_MIN = INT64_MIN;
pub const __INT_LEAST32_MAX = INT64_MAX;
pub const __UINT_LEAST32_MAX = UINT64_MAX;
pub const __INT_LEAST16_MIN = INT64_MIN;
pub const __INT_LEAST16_MAX = INT64_MAX;
pub const __UINT_LEAST16_MAX = UINT64_MAX;
pub const __INT_LEAST8_MIN = INT64_MIN;
pub const __INT_LEAST8_MAX = INT64_MAX;
pub const __UINT_LEAST8_MAX = UINT64_MAX;
pub const INT_LEAST64_MIN = __INT_LEAST64_MIN;
pub const INT_LEAST64_MAX = __INT_LEAST64_MAX;
pub const UINT_LEAST64_MAX = __UINT_LEAST64_MAX;
pub const INT_FAST64_MIN = __INT_LEAST64_MIN;
pub const INT_FAST64_MAX = __INT_LEAST64_MAX;
pub const UINT_FAST64_MAX = __UINT_LEAST64_MAX;
pub const INT32_MAX = INT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal));
pub const INT32_MIN = -INT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal)) - @as(c_int, 1);
pub const UINT32_MAX = UINT32_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 4294967295, .decimal));
pub const INT_LEAST32_MIN = __INT_LEAST32_MIN;
pub const INT_LEAST32_MAX = __INT_LEAST32_MAX;
pub const UINT_LEAST32_MAX = __UINT_LEAST32_MAX;
pub const INT_FAST32_MIN = __INT_LEAST32_MIN;
pub const INT_FAST32_MAX = __INT_LEAST32_MAX;
pub const UINT_FAST32_MAX = __UINT_LEAST32_MAX;
pub const INT16_MAX = INT16_C(@as(c_int, 32767));
pub const INT16_MIN = -INT16_C(@as(c_int, 32767)) - @as(c_int, 1);
pub const UINT16_MAX = UINT16_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal));
pub const INT_LEAST16_MIN = __INT_LEAST16_MIN;
pub const INT_LEAST16_MAX = __INT_LEAST16_MAX;
pub const UINT_LEAST16_MAX = __UINT_LEAST16_MAX;
pub const INT_FAST16_MIN = __INT_LEAST16_MIN;
pub const INT_FAST16_MAX = __INT_LEAST16_MAX;
pub const UINT_FAST16_MAX = __UINT_LEAST16_MAX;
pub const INT8_MAX = INT8_C(@as(c_int, 127));
pub const INT8_MIN = -INT8_C(@as(c_int, 127)) - @as(c_int, 1);
pub const UINT8_MAX = UINT8_C(@as(c_int, 255));
pub const INT_LEAST8_MIN = __INT_LEAST8_MIN;
pub const INT_LEAST8_MAX = __INT_LEAST8_MAX;
pub const UINT_LEAST8_MAX = __UINT_LEAST8_MAX;
pub const INT_FAST8_MIN = __INT_LEAST8_MIN;
pub const INT_FAST8_MAX = __INT_LEAST8_MAX;
pub const UINT_FAST8_MAX = __UINT_LEAST8_MAX;
pub const INTPTR_MIN = -__INTPTR_MAX__ - @as(c_int, 1);
pub const INTPTR_MAX = __INTPTR_MAX__;
pub const UINTPTR_MAX = __UINTPTR_MAX__;
pub const PTRDIFF_MIN = -__PTRDIFF_MAX__ - @as(c_int, 1);
pub const PTRDIFF_MAX = __PTRDIFF_MAX__;
pub const INTMAX_MIN = -__INTMAX_MAX__ - @as(c_int, 1);
pub const INTMAX_MAX = __INTMAX_MAX__;
pub const UINTMAX_MAX = __UINTMAX_MAX__;
pub const SIG_ATOMIC_MIN = __INTN_MIN(__SIG_ATOMIC_WIDTH__);
pub const SIG_ATOMIC_MAX = __INTN_MAX(__SIG_ATOMIC_WIDTH__);
pub const WINT_MIN = __UINTN_C(__WINT_WIDTH__, @as(c_int, 0));
pub const WINT_MAX = __UINTN_MAX(__WINT_WIDTH__);
pub inline fn INTMAX_C(v: anytype) @TypeOf(__int_c(v, __INTMAX_C_SUFFIX__)) {
    return __int_c(v, __INTMAX_C_SUFFIX__);
}
pub inline fn UINTMAX_C(v: anytype) @TypeOf(__int_c(v, __UINTMAX_C_SUFFIX__)) {
    return __int_c(v, __UINTMAX_C_SUFFIX__);
}
pub const TRUE = @as(c_int, 1);
pub const FALSE = @as(c_int, 0);
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const CONFIG_SMP_NCPUS = @as(c_int, 1);
pub const SCHED_PRIORITY_MAX = @as(c_int, 255);
pub const SCHED_PRIORITY_DEFAULT = @as(c_int, 100);
pub const SCHED_PRIORITY_MIN = @as(c_int, 1);
pub const SCHED_PRIORITY_IDLE = @as(c_int, 0);
pub const __socklen_t_defined = "";
pub const __STDBOOL_H = "";
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const __INCLUDE_TIME_H = "";
pub const CLK_TCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal) / CONFIG_USEC_PER_TICK;
pub const CLOCKS_PER_SEC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal) / CONFIG_USEC_PER_TICK;
pub const CLOCK_REALTIME = @as(c_int, 0);
pub const CLOCK_MONOTONIC = @as(c_int, 1);
pub const CLOCK_BOOTTIME = @as(c_int, 2);
pub const TIMER_ABSTIME = @as(c_int, 1);
pub const TIME_UTC = @as(c_int, 1);
pub const timelocal = mktime;
pub inline fn strftime_l(s: anytype, m: anytype, f: anytype, t: anytype, l: anytype) @TypeOf(strftime(s, m, f, t)) {
    _ = l;
    return strftime(s, m, f, t);
}
pub const __INCLUDE_NUTTX_FS_FS_H = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const __GNUC_VA_LIST = @as(c_int, 1);
pub const __INCLUDE_NUTTX_MUTEX_H = "";
pub const __INCLUDE_ERRNO_H = "";
pub const errno = __errno().*;
pub inline fn get_errno() @TypeOf(errno) {
    return errno;
}
pub const EPERM = @as(c_int, 1);
pub const EPERM_STR = "Operation not permitted";
pub const ENOENT = @as(c_int, 2);
pub const ENOENT_STR = "No such file or directory";
pub const ESRCH = @as(c_int, 3);
pub const ESRCH_STR = "No such process";
pub const EINTR = @as(c_int, 4);
pub const EINTR_STR = "Interrupted system call";
pub const EIO = @as(c_int, 5);
pub const EIO_STR = "I/O error";
pub const ENXIO = @as(c_int, 6);
pub const ENXIO_STR = "No such device or address";
pub const E2BIG = @as(c_int, 7);
pub const E2BIG_STR = "Arg list too long";
pub const ENOEXEC = @as(c_int, 8);
pub const ENOEXEC_STR = "Exec format error";
pub const EBADF = @as(c_int, 9);
pub const EBADF_STR = "Bad file number";
pub const ECHILD = @as(c_int, 10);
pub const ECHILD_STR = "No child processes";
pub const EAGAIN = @as(c_int, 11);
pub const EWOULDBLOCK = EAGAIN;
pub const EAGAIN_STR = "Try again";
pub const ENOMEM = @as(c_int, 12);
pub const ENOMEM_STR = "Out of memory";
pub const EACCES = @as(c_int, 13);
pub const EACCES_STR = "Permission denied";
pub const EFAULT = @as(c_int, 14);
pub const EFAULT_STR = "Bad address";
pub const ENOTBLK = @as(c_int, 15);
pub const ENOTBLK_STR = "Block device required";
pub const EBUSY = @as(c_int, 16);
pub const EBUSY_STR = "Device or resource busy";
pub const EEXIST = @as(c_int, 17);
pub const EEXIST_STR = "File exists";
pub const EXDEV = @as(c_int, 18);
pub const EXDEV_STR = "Cross-device link";
pub const ENODEV = @as(c_int, 19);
pub const ENODEV_STR = "No such device";
pub const ENOTDIR = @as(c_int, 20);
pub const ENOTDIR_STR = "Not a directory";
pub const EISDIR = @as(c_int, 21);
pub const EISDIR_STR = "Is a directory";
pub const EINVAL = @as(c_int, 22);
pub const EINVAL_STR = "Invalid argument";
pub const ENFILE = @as(c_int, 23);
pub const ENFILE_STR = "File table overflow";
pub const EMFILE = @as(c_int, 24);
pub const EMFILE_STR = "Too many open files";
pub const ENOTTY = @as(c_int, 25);
pub const ENOTTY_STR = "Not a typewriter";
pub const ETXTBSY = @as(c_int, 26);
pub const ETXTBSY_STR = "Text file busy";
pub const EFBIG = @as(c_int, 27);
pub const EFBIG_STR = "File too large";
pub const ENOSPC = @as(c_int, 28);
pub const ENOSPC_STR = "No space left on device";
pub const ESPIPE = @as(c_int, 29);
pub const ESPIPE_STR = "Illegal seek";
pub const EROFS = @as(c_int, 30);
pub const EROFS_STR = "Read-only file system";
pub const EMLINK = @as(c_int, 31);
pub const EMLINK_STR = "Too many links";
pub const EPIPE = @as(c_int, 32);
pub const EPIPE_STR = "Broken pipe";
pub const EDOM = @as(c_int, 33);
pub const EDOM_STR = "Math argument out of domain of func";
pub const ERANGE = @as(c_int, 34);
pub const ERANGE_STR = "Math result not representable";
pub const ENOMSG = @as(c_int, 35);
pub const ENOMSG_STR = "No message of desired type";
pub const EIDRM = @as(c_int, 36);
pub const EIDRM_STR = "Identifier removed";
pub const ECHRNG = @as(c_int, 37);
pub const ECHRNG_STR = "Channel number out of range";
pub const EL2NSYNC = @as(c_int, 38);
pub const EL2NSYNC_STR = "Level 2 not synchronized";
pub const EL3HLT = @as(c_int, 39);
pub const EL3HLT_STR = "Level 3 halted";
pub const EL3RST = @as(c_int, 40);
pub const EL3RST_STR = "Level 3 reset";
pub const ELNRNG = @as(c_int, 41);
pub const ELNRNG_STR = "Link number out of range";
pub const EUNATCH = @as(c_int, 42);
pub const EUNATCH_STR = "Protocol driver not attached";
pub const ENOCSI = @as(c_int, 43);
pub const ENOCSI_STR = "No CSI structure available";
pub const EL2HLT = @as(c_int, 44);
pub const EL2HLT_STR = "Level 2 halted";
pub const EDEADLK = @as(c_int, 45);
pub const EDEADLK_STR = "Resource deadlock would occur";
pub const ENOLCK = @as(c_int, 46);
pub const ENOLCK_STR = "No record locks available";
pub const EBADE = @as(c_int, 50);
pub const EBADE_STR = "Invalid exchange";
pub const EBADR = @as(c_int, 51);
pub const EBADR_STR = "Invalid request descriptor";
pub const EXFULL = @as(c_int, 52);
pub const EXFULL_STR = "Exchange full";
pub const ENOANO = @as(c_int, 53);
pub const ENOANO_STR = "No anode";
pub const EBADRQC = @as(c_int, 54);
pub const EBADRQC_STR = "Invalid request code";
pub const EBADSLT = @as(c_int, 55);
pub const EBADSLT_STR = "Invalid slot";
pub const EDEADLOCK = @as(c_int, 56);
pub const EDEADLOCK_STR = "File locking deadlock error";
pub const EBFONT = @as(c_int, 57);
pub const EBFONT_STR = "Bad font file format";
pub const ENOSTR = @as(c_int, 60);
pub const ENOSTR_STR = "Device not a stream";
pub const ENODATA = @as(c_int, 61);
pub const ENODATA_STR = "No data available";
pub const ETIME = @as(c_int, 62);
pub const ETIME_STR = "Timer expired";
pub const ENOSR = @as(c_int, 63);
pub const ENOSR_STR = "Out of streams resources";
pub const ENONET = @as(c_int, 64);
pub const ENONET_STR = "Machine is not on the network";
pub const ENOPKG = @as(c_int, 65);
pub const ENOPKG_STR = "Package not installed";
pub const EREMOTE = @as(c_int, 66);
pub const EREMOTE_STR = "Object is remote";
pub const ENOLINK = @as(c_int, 67);
pub const ENOLINK_STR = "Link has been severed";
pub const EADV = @as(c_int, 68);
pub const EADV_STR = "Advertise error";
pub const ESRMNT = @as(c_int, 69);
pub const ESRMNT_STR = "Srmount error";
pub const ECOMM = @as(c_int, 70);
pub const ECOMM_STR = "Communication error on send";
pub const EPROTO = @as(c_int, 71);
pub const EPROTO_STR = "Protocol error";
pub const EMULTIHOP = @as(c_int, 74);
pub const EMULTIHOP_STR = "Multihop attempted";
pub const ELBIN = @as(c_int, 75);
pub const ELBIN_STR = "Inode is remote";
pub const EDOTDOT = @as(c_int, 76);
pub const EDOTDOT_STR = "RFS specific error";
pub const EBADMSG = @as(c_int, 77);
pub const EBADMSG_STR = "Not a data message";
pub const EFTYPE = @as(c_int, 79);
pub const EFTYPE_STR = "Inappropriate file type or format";
pub const ENOTUNIQ = @as(c_int, 80);
pub const ENOTUNIQ_STR = "Name not unique on network";
pub const EBADFD = @as(c_int, 81);
pub const EBADFD_STR = "File descriptor in bad state";
pub const EREMCHG = @as(c_int, 82);
pub const EREMCHG_STR = "Remote address changed";
pub const ELIBACC = @as(c_int, 83);
pub const ELIBACC_STR = "Can not access a needed shared library";
pub const ELIBBAD = @as(c_int, 84);
pub const ELIBBAD_STR = "Accessing a corrupted shared library";
pub const ELIBSCN = @as(c_int, 85);
pub const ELIBSCN_STR = ".lib section in a.out corrupted";
pub const ELIBMAX = @as(c_int, 86);
pub const ELIBMAX_STR = "Attempting to link in too many shared libraries";
pub const ELIBEXEC = @as(c_int, 87);
pub const ELIBEXEC_STR = "Cannot exec a shared library directly";
pub const ENOSYS = @as(c_int, 88);
pub const ENOSYS_STR = "Function not implemented";
pub const ENMFILE = @as(c_int, 89);
pub const ENMFILE_STR = "No more files";
pub const ENOTEMPTY = @as(c_int, 90);
pub const ENOTEMPTY_STR = "Directory not empty";
pub const ENAMETOOLONG = @as(c_int, 91);
pub const ENAMETOOLONG_STR = "File name too long";
pub const ELOOP = @as(c_int, 92);
pub const ELOOP_STR = "Too many symbolic links encountered";
pub const EOPNOTSUPP = @as(c_int, 95);
pub const EOPNOTSUPP_STR = "Operation not supported on transport endpoint";
pub const EPFNOSUPPORT = @as(c_int, 96);
pub const EPFNOSUPPORT_STR = "Protocol family not supported";
pub const ECONNRESET = @as(c_int, 104);
pub const ECONNRESET_STR = "Connection reset by peer";
pub const ENOBUFS = @as(c_int, 105);
pub const ENOBUFS_STR = "No buffer space available";
pub const EAFNOSUPPORT = @as(c_int, 106);
pub const EAFNOSUPPORT_STR = "Address family not supported by protocol";
pub const EPROTOTYPE = @as(c_int, 107);
pub const EPROTOTYPE_STR = "Protocol wrong type for socket";
pub const ENOTSOCK = @as(c_int, 108);
pub const ENOTSOCK_STR = "Socket operation on non-socket";
pub const ENOPROTOOPT = @as(c_int, 109);
pub const ENOPROTOOPT_STR = "Protocol not available";
pub const ESHUTDOWN = @as(c_int, 110);
pub const ESHUTDOWN_STR = "Cannot send after transport endpoint shutdown";
pub const ECONNREFUSED = @as(c_int, 111);
pub const ECONNREFUSED_STR = "Connection refused";
pub const EADDRINUSE = @as(c_int, 112);
pub const EADDRINUSE_STR = "Address already in use";
pub const ECONNABORTED = @as(c_int, 113);
pub const ECONNABORTED_STR = "Software caused connection abort";
pub const ENETUNREACH = @as(c_int, 114);
pub const ENETUNREACH_STR = "Network is unreachable";
pub const ENETDOWN = @as(c_int, 115);
pub const ENETDOWN_STR = "Network is down";
pub const ETIMEDOUT = @as(c_int, 116);
pub const ETIMEDOUT_STR = "Connection timed out";
pub const EHOSTDOWN = @as(c_int, 117);
pub const EHOSTDOWN_STR = "Host is down";
pub const EHOSTUNREACH = @as(c_int, 118);
pub const EHOSTUNREACH_STR = "No route to host";
pub const EINPROGRESS = @as(c_int, 119);
pub const EINPROGRESS_STR = "Operation now in progress";
pub const EALREADY = @as(c_int, 120);
pub const EALREADY_STR = "Socket already connected";
pub const EDESTADDRREQ = @as(c_int, 121);
pub const EDESTADDRREQ_STR = "Destination address required";
pub const EMSGSIZE = @as(c_int, 122);
pub const EMSGSIZE_STR = "Message too long";
pub const EPROTONOSUPPORT = @as(c_int, 123);
pub const EPROTONOSUPPORT_STR = "Protocol not supported";
pub const ESOCKTNOSUPPORT = @as(c_int, 124);
pub const ESOCKTNOSUPPORT_STR = "Socket type not supported";
pub const EADDRNOTAVAIL = @as(c_int, 125);
pub const EADDRNOTAVAIL_STR = "Cannot assign requested address";
pub const ENETRESET = @as(c_int, 126);
pub const ENETRESET_STR = "Network dropped connection because of reset";
pub const EISCONN = @as(c_int, 127);
pub const EISCONN_STR = "Transport endpoint is already connected";
pub const ENOTCONN = @as(c_int, 128);
pub const ENOTCONN_STR = "Transport endpoint is not connected";
pub const ETOOMANYREFS = @as(c_int, 129);
pub const ETOOMANYREFS_STR = "Too many references: cannot splice";
pub const EPROCLIM = @as(c_int, 130);
pub const EPROCLIM_STR = "Limit would be exceeded by attempted fork";
pub const EUSERS = @as(c_int, 131);
pub const EUSERS_STR = "Too many users";
pub const EDQUOT = @as(c_int, 132);
pub const EDQUOT_STR = "Quota exceeded";
pub const ESTALE = @as(c_int, 133);
pub const ESTALE_STR = "Stale NFS file handle";
pub const ENOTSUP = @as(c_int, 134);
pub const ENOTSUP_STR = "Not supported";
pub const ENOMEDIUM = @as(c_int, 135);
pub const ENOMEDIUM_STR = "No medium found";
pub const ENOSHARE = @as(c_int, 136);
pub const ENOSHARE_STR = "No such host or network path";
pub const ECASECLASH = @as(c_int, 137);
pub const ECASECLASH_STR = "Filename exists with different case";
pub const EILSEQ = @as(c_int, 138);
pub const EILSEQ_STR = "Illegal byte sequence";
pub const EOVERFLOW = @as(c_int, 139);
pub const EOVERFLOW_STR = "Value too large for defined data type";
pub const ECANCELED = @as(c_int, 140);
pub const ECANCELED_STR = "Operation cancelled";
pub const ENOTRECOVERABLE = @as(c_int, 141);
pub const ENOTRECOVERABLE_STR = "State not recoverable";
pub const EOWNERDEAD = @as(c_int, 142);
pub const EOWNERDEAD_STR = "Previous owner died";
pub const ESTRPIPE = @as(c_int, 143);
pub const ESTRPIPE_STR = "Streams pipe error";
pub const __ELASTERROR = @as(c_int, 2000);
pub const __INCLUDE_ASSERT_H = "";
pub inline fn DEBUGPANIC() @TypeOf(PANIC()) {
    return PANIC();
}
pub inline fn DEBUGASSERT(f: anytype) @TypeOf(ASSERT(f)) {
    return ASSERT(f);
}
pub inline fn DEBUGVERIFY(f: anytype) @TypeOf(VERIFY(f)) {
    return VERIFY(f);
}
pub inline fn assert(f: anytype) anyopaque {
    return @import("std").zig.c_translation.cast(anyopaque, (@as(c_int, 1) != 0) or (f != 0));
}
pub const __INCLUDE_UNISTD_H = "";
pub const __CLANG_LIMITS_H = "";
pub const _GCC_LIMITS_H_ = "";
pub const LONG_LONG_MAX = __LONG_LONG_MAX__;
pub const LONG_LONG_MIN = -__LONG_LONG_MAX__ - @as(c_longlong, 1);
pub const ULONG_LONG_MAX = (__LONG_LONG_MAX__ * @as(c_ulonglong, 2)) + @as(c_ulonglong, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const F_OK = @as(c_int, 0);
pub const X_OK = @as(c_int, 1);
pub const W_OK = @as(c_int, 2);
pub const R_OK = @as(c_int, 4);
pub const POSIX_VERSION = "";
pub const _POSIX_REALTIME_SIGNALS = @as(c_int, 1);
pub const _POSIX_MESSAGE_PASSING = @as(c_int, 1);
pub const _POSIX_PRIORITY_SCHEDULING = @as(c_int, 1);
pub const _POSIX_TIMERS = @as(c_int, 1);
pub const _POSIX_TIMEOUTS = @as(c_int, 1);
pub const _POSIX_SYNCHRONIZED_IO = @as(c_int, 1);
pub const _POSIX_SPORADIC_SERVER = -@as(c_int, 1);
pub const _POSIX_THREAD_SPORADIC_SERVER = -@as(c_int, 1);
pub const _POSIX_SYNC_IO = @as(c_int, 1);
pub const _PC_2_SYMLINKS = @as(c_int, 0x0001);
pub const _PC_ALLOC_SIZE_MIN = @as(c_int, 0x0002);
pub const _PC_ASYNC_IO = @as(c_int, 0x0003);
pub const _PC_CHOWN_RESTRICTED = @as(c_int, 0x0004);
pub const _PC_FILESIZEBITS = @as(c_int, 0x0005);
pub const _PC_LINK_MAX = @as(c_int, 0x0006);
pub const _PC_MAX_CANON = @as(c_int, 0x0007);
pub const _PC_MAX_INPUT = @as(c_int, 0x0008);
pub const _PC_NAME_MAX = @as(c_int, 0x0009);
pub const _PC_NO_TRUNC = @as(c_int, 0x000a);
pub const _PC_PATH_MAX = @as(c_int, 0x000b);
pub const _PC_PIPE_BUF = @as(c_int, 0x000c);
pub const _PC_PRIO_IO = @as(c_int, 0x000d);
pub const _PC_REC_INCR_XFER_SIZE = @as(c_int, 0x000e);
pub const _PC_REC_MIN_XFER_SIZE = @as(c_int, 0x000f);
pub const _PC_REC_XFER_ALIGN = @as(c_int, 0x0010);
pub const _PC_SYMLINK_MAX = @as(c_int, 0x0011);
pub const _PC_SYNC_IO = @as(c_int, 0x0012);
pub const _PC_VDISABLE = @as(c_int, 0x0013);
pub const _SC_2_C_BIND = @as(c_int, 0x0001);
pub const _SC_2_C_DEV = @as(c_int, 0x0002);
pub const _SC_2_CHAR_TERM = @as(c_int, 0x0003);
pub const _SC_2_FORT_DEV = @as(c_int, 0x0004);
pub const _SC_2_FORT_RUN = @as(c_int, 0x0005);
pub const _SC_2_LOCALEDEF = @as(c_int, 0x0006);
pub const _SC_2_PBS = @as(c_int, 0x0007);
pub const _SC_2_PBS_ACCOUNTING = @as(c_int, 0x0008);
pub const _SC_2_PBS_CHECKPOINT = @as(c_int, 0x0009);
pub const _SC_2_PBS_LOCATE = @as(c_int, 0x000a);
pub const _SC_2_PBS_MESSAGE = @as(c_int, 0x000b);
pub const _SC_2_PBS_TRACK = @as(c_int, 0x000c);
pub const _SC_2_SW_DEV = @as(c_int, 0x000d);
pub const _SC_2_UPE = @as(c_int, 0x000e);
pub const _SC_2_VERSION = @as(c_int, 0x000f);
pub const _SC_ADVISORY_INFO = @as(c_int, 0x0010);
pub const _SC_AIO_LISTIO_MAX = @as(c_int, 0x0011);
pub const _SC_AIO_MAX = @as(c_int, 0x0012);
pub const _SC_AIO_PRIO_DELTA_MAX = @as(c_int, 0x0013);
pub const _SC_ARG_MAX = @as(c_int, 0x0014);
pub const _SC_ASYNCHRONOUS_IO = @as(c_int, 0x0015);
pub const _SC_ATEXIT_MAX = @as(c_int, 0x0016);
pub const _SC_BARRIERS = @as(c_int, 0x0017);
pub const _SC_BC_BASE_MAX = @as(c_int, 0x0018);
pub const _SC_BC_DIM_MAX = @as(c_int, 0x0019);
pub const _SC_BC_SCALE_MAX = @as(c_int, 0x001a);
pub const _SC_BC_STRING_MAX = @as(c_int, 0x001b);
pub const _SC_CHILD_MAX = @as(c_int, 0x001c);
pub const _SC_CLK_TCK = @as(c_int, 0x001d);
pub const _SC_CLOCK_SELECTION = @as(c_int, 0x001e);
pub const _SC_COLL_WEIGHTS_MAX = @as(c_int, 0x001f);
pub const _SC_CPUTIME = @as(c_int, 0x0020);
pub const _SC_DELAYTIMER_MAX = @as(c_int, 0x0021);
pub const _SC_EXPR_NEST_MAX = @as(c_int, 0x0022);
pub const _SC_FSYNC = @as(c_int, 0x0023);
pub const _SC_GETGR_R_SIZE_MAX = @as(c_int, 0x0024);
pub const _SC_GETPW_R_SIZE_MAX = @as(c_int, 0x0025);
pub const _SC_HOST_NAME_MAX = @as(c_int, 0x0026);
pub const _SC_IOV_MAX = @as(c_int, 0x0027);
pub const _SC_IPV6 = @as(c_int, 0x0028);
pub const _SC_JOB_CONTROL = @as(c_int, 0x0029);
pub const _SC_LINE_MAX = @as(c_int, 0x002a);
pub const _SC_LOGIN_NAME_MAX = @as(c_int, 0x002b);
pub const _SC_MAPPED_FILES = @as(c_int, 0x002c);
pub const _SC_MEMLOCK = @as(c_int, 0x002d);
pub const _SC_MEMLOCK_RANGE = @as(c_int, 0x002e);
pub const _SC_MEMORY_PROTECTION = @as(c_int, 0x002f);
pub const _SC_MESSAGE_PASSING = @as(c_int, 0x0030);
pub const _SC_MONOTONIC_CLOCK = @as(c_int, 0x0031);
pub const _SC_MQ_OPEN_MAX = @as(c_int, 0x0032);
pub const _SC_MQ_PRIO_MAX = @as(c_int, 0x0033);
pub const _SC_NGROUPS_MAX = @as(c_int, 0x0034);
pub const _SC_OPEN_MAX = @as(c_int, 0x0035);
pub const _SC_PAGE_SIZE = @as(c_int, 0x0036);
pub const _SC_PAGESIZE = _SC_PAGE_SIZE;
pub const _SC_PRIORITIZED_IO = @as(c_int, 0x0037);
pub const _SC_PRIORITY_SCHEDULING = @as(c_int, 0x0038);
pub const _SC_RAW_SOCKETS = @as(c_int, 0x0039);
pub const _SC_RE_DUP_MAX = @as(c_int, 0x003a);
pub const _SC_READER_WRITER_LOCKS = @as(c_int, 0x003b);
pub const _SC_REALTIME_SIGNALS = @as(c_int, 0x003c);
pub const _SC_REGEXP = @as(c_int, 0x003d);
pub const _SC_RTSIG_MAX = @as(c_int, 0x003e);
pub const _SC_SAVED_IDS = @as(c_int, 0x003f);
pub const _SC_SEM_NSEMS_MAX = @as(c_int, 0x0040);
pub const _SC_SEM_VALUE_MAX = @as(c_int, 0x0041);
pub const _SC_SEMAPHORES = @as(c_int, 0x0042);
pub const _SC_SHARED_MEMORY_OBJECTS = @as(c_int, 0x0043);
pub const _SC_SHELL = @as(c_int, 0x0044);
pub const _SC_SIGQUEUE_MAX = @as(c_int, 0x0045);
pub const _SC_SPAWN = @as(c_int, 0x0046);
pub const _SC_SPIN_LOCKS = @as(c_int, 0x0047);
pub const _SC_SPORADIC_SERVER = @as(c_int, 0x0048);
pub const _SC_SS_REPL_MAX = @as(c_int, 0x0049);
pub const _SC_STREAM_MAX = @as(c_int, 0x004a);
pub const _SC_SYMLOOP_MAX = @as(c_int, 0x004b);
pub const _SC_SYNCHRONIZED_IO = @as(c_int, 0x004c);
pub const _SC_THREAD_ATTR_STACKADDR = @as(c_int, 0x004d);
pub const _SC_THREAD_ATTR_STACKSIZE = @as(c_int, 0x004e);
pub const _SC_THREAD_CPUTIME = @as(c_int, 0x004f);
pub const _SC_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 0x0050);
pub const _SC_THREAD_KEYS_MAX = @as(c_int, 0x0051);
pub const _SC_THREAD_PRIO_INHERIT = @as(c_int, 0x0052);
pub const _SC_THREAD_PRIO_PROTECT = @as(c_int, 0x0053);
pub const _SC_THREAD_PRIORITY_SCHEDULING = @as(c_int, 0x0054);
pub const _SC_THREAD_PROCESS_SHARED = @as(c_int, 0x0055);
pub const _SC_THREAD_SAFE_FUNCTIONS = @as(c_int, 0x0056);
pub const _SC_THREAD_SPORADIC_SERVER = @as(c_int, 0x0057);
pub const _SC_THREAD_STACK_MIN = @as(c_int, 0x0058);
pub const _SC_THREAD_THREADS_MAX = @as(c_int, 0x0059);
pub const _SC_THREADS = @as(c_int, 0x005a);
pub const _SC_TIMEOUTS = @as(c_int, 0x005b);
pub const _SC_TIMER_MAX = @as(c_int, 0x005c);
pub const _SC_TIMERS = @as(c_int, 0x005d);
pub const _SC_TRACE = @as(c_int, 0x005e);
pub const _SC_TRACE_EVENT_FILTER = @as(c_int, 0x005f);
pub const _SC_TRACE_EVENT_NAME_MAX = @as(c_int, 0x0060);
pub const _SC_TRACE_INHERIT = @as(c_int, 0x0061);
pub const _SC_TRACE_LOG = @as(c_int, 0x0062);
pub const _SC_TRACE_NAME_MAX = @as(c_int, 0x0063);
pub const _SC_TRACE_SYS_MAX = @as(c_int, 0x0064);
pub const _SC_TRACE_USER_EVENT_MAX = @as(c_int, 0x0065);
pub const _SC_TTY_NAME_MAX = @as(c_int, 0x0066);
pub const _SC_TYPED_MEMORY_OBJECTS = @as(c_int, 0x0067);
pub const _SC_TZNAME_MAX = @as(c_int, 0x0068);
pub const _SC_V6_ILP32_OFF32 = @as(c_int, 0x0069);
pub const _SC_V6_ILP32_OFFBIG = @as(c_int, 0x006a);
pub const _SC_V6_LP64_OFF64 = @as(c_int, 0x006b);
pub const _SC_V6_LPBIG_OFFBIG = @as(c_int, 0x006c);
pub const _SC_VERSION = @as(c_int, 0x006d);
pub const _SC_XBS5_ILP32_OFF32 = @as(c_int, 0x006e);
pub const _SC_XBS5_ILP32_OFFBIG = @as(c_int, 0x006f);
pub const _SC_XBS5_LP64_OFF64 = @as(c_int, 0x0070);
pub const _SC_XBS5_LPBIG_OFFBIG = @as(c_int, 0x0071);
pub const _SC_XOPEN_CRYPT = @as(c_int, 0x0072);
pub const _SC_XOPEN_ENH_I18N = @as(c_int, 0x0073);
pub const _SC_XOPEN_LEGACY = @as(c_int, 0x0074);
pub const _SC_XOPEN_REALTIME = @as(c_int, 0x0075);
pub const _SC_XOPEN_REALTIME_THREADS = @as(c_int, 0x0076);
pub const _SC_XOPEN_SHM = @as(c_int, 0x0077);
pub const _SC_XOPEN_STREAMS = @as(c_int, 0x0078);
pub const _SC_XOPEN_UNIX = @as(c_int, 0x0079);
pub const _SC_XOPEN_VERSION = @as(c_int, 0x007a);
pub const _SC_PHYS_PAGES = @as(c_int, 0x007b);
pub const _SC_AVPHYS_PAGES = @as(c_int, 0x007c);
pub const _SC_NPROCESSORS_CONF = @as(c_int, 0x007d);
pub const _SC_NPROCESSORS_ONLN = @as(c_int, 0x007e);
pub const STDERR_FILENO = @as(c_int, 2);
pub const STDIN_FILENO = @as(c_int, 0);
pub const STDOUT_FILENO = @as(c_int, 1);
pub inline fn link(p1: anytype, p2: anytype) @TypeOf(symlink(p1, p2)) {
    return symlink(p1, p2);
}
pub inline fn fdatasync(f: anytype) @TypeOf(fsync(f)) {
    return fsync(f);
}
pub inline fn getdtablesize(f: anytype) c_int {
    _ = f;
    return @import("std").zig.c_translation.cast(c_int, sysconf(_SC_OPEN_MAX));
}
pub inline fn getpagesize(f: anytype) c_int {
    _ = f;
    return @import("std").zig.c_translation.cast(c_int, sysconf(_SC_PAGESIZE));
}
pub const optarg = getoptargp().*;
pub const opterr = getopterrp().*;
pub const optind = getoptindp().*;
pub const optopt = getoptoptp().*;
pub const __INCLUDE_NUTTX_SEMAPHORE_H = "";
pub const __INCLUDE_SEMAPHORE_H = "";
pub const SEM_PRIO_NONE = @as(c_int, 0);
pub const SEM_PRIO_INHERIT = @as(c_int, 1);
pub const SEM_PRIO_PROTECT = @as(c_int, 2);
pub const PRIOINHERIT_FLAGS_DISABLE = @as(c_int, 1) << @as(c_int, 0);
pub const __INCLUDE_NUTTX_CLOCK_H = "";
pub const __HAVE_KERNEL_GLOBALS = @as(c_int, 1);
pub const NSEC_PER_SEC = @as(c_long, 1000000000);
pub const USEC_PER_SEC = @as(c_long, 1000000);
pub const MSEC_PER_SEC = @as(c_int, 1000);
pub const DSEC_PER_SEC = @as(c_int, 10);
pub const HSEC_PER_SEC = @as(c_int, 2);
pub const NSEC_PER_HSEC = @as(c_long, 500000000);
pub const USEC_PER_HSEC = @as(c_long, 500000);
pub const MSEC_PER_HSEC = @as(c_int, 500);
pub const DSEC_PER_HSEC = @as(c_int, 5);
pub const NSEC_PER_DSEC = @as(c_long, 100000000);
pub const USEC_PER_DSEC = @as(c_long, 100000);
pub const MSEC_PER_DSEC = @as(c_int, 100);
pub const NSEC_PER_MSEC = @as(c_long, 1000000);
pub const USEC_PER_MSEC = @as(c_int, 1000);
pub const NSEC_PER_USEC = @as(c_int, 1000);
pub const SEC_PER_MIN = @as(c_int, 60);
pub const NSEC_PER_MIN = NSEC_PER_SEC * SEC_PER_MIN;
pub const USEC_PER_MIN = USEC_PER_SEC * SEC_PER_MIN;
pub const MSEC_PER_MIN = MSEC_PER_SEC * SEC_PER_MIN;
pub const DSEC_PER_MIN = DSEC_PER_SEC * SEC_PER_MIN;
pub const HSEC_PER_MIN = HSEC_PER_SEC * SEC_PER_MIN;
pub const MIN_PER_HOUR = @as(c_int, 60);
pub const NSEC_PER_HOUR = NSEC_PER_MIN * MIN_PER_HOUR;
pub const USEC_PER_HOUR = USEC_PER_MIN * MIN_PER_HOUR;
pub const MSEC_PER_HOUR = MSEC_PER_MIN * MIN_PER_HOUR;
pub const DSEC_PER_HOUR = DSEC_PER_MIN * MIN_PER_HOUR;
pub const HSEC_PER_HOUR = HSEC_PER_MIN * MIN_PER_HOUR;
pub const SEC_PER_HOUR = SEC_PER_MIN * MIN_PER_HOUR;
pub const HOURS_PER_DAY = @as(c_int, 24);
pub const SEC_PER_DAY = HOURS_PER_DAY * SEC_PER_HOUR;
pub const USEC_PER_TICK = CONFIG_USEC_PER_TICK;
pub const TICK_PER_HOUR = USEC_PER_HOUR / USEC_PER_TICK;
pub const TICK_PER_MIN = USEC_PER_MIN / USEC_PER_TICK;
pub const TICK_PER_SEC = USEC_PER_SEC / USEC_PER_TICK;
pub const TICK_PER_MSEC = USEC_PER_MSEC / USEC_PER_TICK;
pub const TICK_PER_DSEC = USEC_PER_DSEC / USEC_PER_TICK;
pub const TICK_PER_HSEC = USEC_PER_HSEC / USEC_PER_TICK;
pub const MSEC_PER_TICK = USEC_PER_TICK / USEC_PER_MSEC;
pub const NSEC_PER_TICK = USEC_PER_TICK * NSEC_PER_USEC;
pub inline fn NSEC2TICK(nsec: anytype) @TypeOf((nsec + (NSEC_PER_TICK / @as(c_int, 2))) / NSEC_PER_TICK) {
    return (nsec + (NSEC_PER_TICK / @as(c_int, 2))) / NSEC_PER_TICK;
}
pub inline fn USEC2TICK(usec: anytype) @TypeOf((usec + (USEC_PER_TICK / @as(c_int, 2))) / USEC_PER_TICK) {
    return (usec + (USEC_PER_TICK / @as(c_int, 2))) / USEC_PER_TICK;
}
pub inline fn MSEC2TICK(msec: anytype) @TypeOf((msec + (MSEC_PER_TICK / @as(c_int, 2))) / MSEC_PER_TICK) {
    return (msec + (MSEC_PER_TICK / @as(c_int, 2))) / MSEC_PER_TICK;
}
pub inline fn DSEC2TICK(dsec: anytype) @TypeOf(MSEC2TICK(dsec * MSEC_PER_DSEC)) {
    return MSEC2TICK(dsec * MSEC_PER_DSEC);
}
pub inline fn HSEC2TICK(dsec: anytype) @TypeOf(MSEC2TICK(dsec * MSEC_PER_HSEC)) {
    return MSEC2TICK(dsec * MSEC_PER_HSEC);
}
pub inline fn SEC2TICK(sec: anytype) @TypeOf(MSEC2TICK(sec * MSEC_PER_SEC)) {
    return MSEC2TICK(sec * MSEC_PER_SEC);
}
pub inline fn TICK2NSEC(tick: anytype) @TypeOf(tick * NSEC_PER_TICK) {
    return tick * NSEC_PER_TICK;
}
pub inline fn TICK2USEC(tick: anytype) @TypeOf(tick * USEC_PER_TICK) {
    return tick * USEC_PER_TICK;
}
pub inline fn TICK2MSEC(tick: anytype) @TypeOf(tick * MSEC_PER_TICK) {
    return tick * MSEC_PER_TICK;
}
pub inline fn TICK2DSEC(tick: anytype) @TypeOf((tick + (TICK_PER_DSEC / @as(c_int, 2))) / TICK_PER_DSEC) {
    return (tick + (TICK_PER_DSEC / @as(c_int, 2))) / TICK_PER_DSEC;
}
pub inline fn TICK2HSEC(tick: anytype) @TypeOf((tick + (TICK_PER_HSEC / @as(c_int, 2))) / TICK_PER_HSEC) {
    return (tick + (TICK_PER_HSEC / @as(c_int, 2))) / TICK_PER_HSEC;
}
pub inline fn TICK2SEC(tick: anytype) @TypeOf((tick + (TICK_PER_SEC / @as(c_int, 2))) / TICK_PER_SEC) {
    return (tick + (TICK_PER_SEC / @as(c_int, 2))) / TICK_PER_SEC;
}
pub const INITIAL_SYSTEM_TIMER_TICKS = @as(c_int, 0);
pub inline fn clock_systime_ticks() @TypeOf(g_system_timer) {
    return g_system_timer;
}
pub inline fn _SEM_INIT(s: anytype, p: anytype, c: anytype) @TypeOf(sem_init(s, p, c)) {
    return sem_init(s, p, c);
}
pub inline fn _SEM_DESTROY(s: anytype) @TypeOf(sem_destroy(s)) {
    return sem_destroy(s);
}
pub inline fn _SEM_WAIT(s: anytype) @TypeOf(sem_wait(s)) {
    return sem_wait(s);
}
pub inline fn _SEM_TRYWAIT(s: anytype) @TypeOf(sem_trywait(s)) {
    return sem_trywait(s);
}
pub inline fn _SEM_TIMEDWAIT(s: anytype, t: anytype) @TypeOf(sem_timedwait(s, t)) {
    return sem_timedwait(s, t);
}
pub inline fn _SEM_CLOCKWAIT(s: anytype, c: anytype, t: anytype) @TypeOf(sem_clockwait(s, c, t)) {
    return sem_clockwait(s, c, t);
}
pub inline fn _SEM_GETVALUE(s: anytype, v: anytype) @TypeOf(sem_getvalue(s, v)) {
    return sem_getvalue(s, v);
}
pub inline fn _SEM_POST(s: anytype) @TypeOf(sem_post(s)) {
    return sem_post(s);
}
pub inline fn _SEM_GETPROTOCOL(s: anytype, p: anytype) @TypeOf(sem_getprotocol(s, p)) {
    return sem_getprotocol(s, p);
}
pub inline fn _SEM_SETPROTOCOL(s: anytype, p: anytype) @TypeOf(sem_setprotocol(s, p)) {
    return sem_setprotocol(s, p);
}
pub inline fn _SEM_ERRNO(r: anytype) @TypeOf(errno) {
    _ = r;
    return errno;
}
pub inline fn _SEM_ERRVAL(r: anytype) @TypeOf(-errno) {
    _ = r;
    return -errno;
}
pub inline fn nxsem_get_protocol(s: anytype, p: anytype) @TypeOf(sem_getprotocol(s, p)) {
    return sem_getprotocol(s, p);
}
pub const NXRMUTEX_NO_HOLDER = @import("std").zig.c_translation.cast(pid_t, -@as(c_int, 1));
pub const NXMUTEX_INITIALIZER = SEM_INITIALIZER(@as(c_int, 1));
pub const _NX_OPEN = open;
pub inline fn _NX_CLOSE(f: anytype) @TypeOf(close(f)) {
    return close(f);
}
pub inline fn _NX_READ(f: anytype, b: anytype, s: anytype) @TypeOf(read(f, b, s)) {
    return read(f, b, s);
}
pub inline fn _NX_WRITE(f: anytype, b: anytype, s: anytype) @TypeOf(write(f, b, s)) {
    return write(f, b, s);
}
pub inline fn _NX_SEEK(f: anytype, o: anytype, w: anytype) @TypeOf(lseek(f, o, w)) {
    return lseek(f, o, w);
}
pub inline fn _NX_IOCTL(f: anytype, r: anytype, a: anytype) @TypeOf(ioctl(f, r, a)) {
    return ioctl(f, r, a);
}
pub inline fn _NX_STAT(p: anytype, s: anytype) @TypeOf(stat(p, s)) {
    return stat(p, s);
}
pub inline fn _NX_GETERRNO(r: anytype) @TypeOf(errno) {
    _ = r;
    return errno;
}
pub const _NX_SETERRNO = @import("std").zig.c_translation.Macros.DISCARD;
pub inline fn _NX_GETERRVAL(r: anytype) @TypeOf(-errno) {
    _ = r;
    return -errno;
}
pub const __FS_FLAG_EOF = @as(c_int, 1) << @as(c_int, 0);
pub const __FS_FLAG_ERROR = @as(c_int, 1) << @as(c_int, 1);
pub const __FS_FLAG_LBF = @as(c_int, 1) << @as(c_int, 2);
pub const __FS_FLAG_UBF = @as(c_int, 1) << @as(c_int, 3);
pub const FSNODEFLAG_TYPE_MASK = @as(c_int, 0x0000000f);
pub const FSNODEFLAG_TYPE_PSEUDODIR = @as(c_int, 0x00000000);
pub const FSNODEFLAG_TYPE_DRIVER = @as(c_int, 0x00000001);
pub const FSNODEFLAG_TYPE_BLOCK = @as(c_int, 0x00000002);
pub const FSNODEFLAG_TYPE_MOUNTPT = @as(c_int, 0x00000003);
pub const FSNODEFLAG_TYPE_NAMEDSEM = @as(c_int, 0x00000004);
pub const FSNODEFLAG_TYPE_MQUEUE = @as(c_int, 0x00000005);
pub const FSNODEFLAG_TYPE_SHM = @as(c_int, 0x00000006);
pub const FSNODEFLAG_TYPE_MTD = @as(c_int, 0x00000007);
pub const FSNODEFLAG_TYPE_SOFTLINK = @as(c_int, 0x00000008);
pub const FSNODEFLAG_TYPE_SOCKET = @as(c_int, 0x00000009);
pub const FSNODEFLAG_DELETED = @as(c_int, 0x00000010);
pub inline fn INODE_IS_TYPE(i: anytype, t: anytype) @TypeOf((i.*.i_flags & FSNODEFLAG_TYPE_MASK) == t) {
    return (i.*.i_flags & FSNODEFLAG_TYPE_MASK) == t;
}
pub inline fn INODE_IS_PSEUDODIR(i: anytype) @TypeOf(INODE_IS_TYPE(i, FSNODEFLAG_TYPE_PSEUDODIR)) {
    return INODE_IS_TYPE(i, FSNODEFLAG_TYPE_PSEUDODIR);
}
pub inline fn INODE_IS_DRIVER(i: anytype) @TypeOf(INODE_IS_TYPE(i, FSNODEFLAG_TYPE_DRIVER)) {
    return INODE_IS_TYPE(i, FSNODEFLAG_TYPE_DRIVER);
}
pub inline fn INODE_IS_BLOCK(i: anytype) @TypeOf(INODE_IS_TYPE(i, FSNODEFLAG_TYPE_BLOCK)) {
    return INODE_IS_TYPE(i, FSNODEFLAG_TYPE_BLOCK);
}
pub inline fn INODE_IS_MOUNTPT(i: anytype) @TypeOf(INODE_IS_TYPE(i, FSNODEFLAG_TYPE_MOUNTPT)) {
    return INODE_IS_TYPE(i, FSNODEFLAG_TYPE_MOUNTPT);
}
pub inline fn INODE_IS_NAMEDSEM(i: anytype) @TypeOf(INODE_IS_TYPE(i, FSNODEFLAG_TYPE_NAMEDSEM)) {
    return INODE_IS_TYPE(i, FSNODEFLAG_TYPE_NAMEDSEM);
}
pub inline fn INODE_IS_MQUEUE(i: anytype) @TypeOf(INODE_IS_TYPE(i, FSNODEFLAG_TYPE_MQUEUE)) {
    return INODE_IS_TYPE(i, FSNODEFLAG_TYPE_MQUEUE);
}
pub inline fn INODE_IS_SHM(i: anytype) @TypeOf(INODE_IS_TYPE(i, FSNODEFLAG_TYPE_SHM)) {
    return INODE_IS_TYPE(i, FSNODEFLAG_TYPE_SHM);
}
pub inline fn INODE_IS_MTD(i: anytype) @TypeOf(INODE_IS_TYPE(i, FSNODEFLAG_TYPE_MTD)) {
    return INODE_IS_TYPE(i, FSNODEFLAG_TYPE_MTD);
}
pub inline fn INODE_IS_SOFTLINK(i: anytype) @TypeOf(INODE_IS_TYPE(i, FSNODEFLAG_TYPE_SOFTLINK)) {
    return INODE_IS_TYPE(i, FSNODEFLAG_TYPE_SOFTLINK);
}
pub inline fn INODE_IS_SOCKET(i: anytype) @TypeOf(INODE_IS_TYPE(i, FSNODEFLAG_TYPE_SOCKET)) {
    return INODE_IS_TYPE(i, FSNODEFLAG_TYPE_SOCKET);
}
pub inline fn INODE_GET_TYPE(i: anytype) @TypeOf(i.*.i_flags & FSNODEFLAG_TYPE_MASK) {
    return i.*.i_flags & FSNODEFLAG_TYPE_MASK;
}
pub inline fn INODE_SET_DRIVER(i: anytype) @TypeOf(INODE_SET_TYPE(i, FSNODEFLAG_TYPE_DRIVER)) {
    return INODE_SET_TYPE(i, FSNODEFLAG_TYPE_DRIVER);
}
pub inline fn INODE_SET_BLOCK(i: anytype) @TypeOf(INODE_SET_TYPE(i, FSNODEFLAG_TYPE_BLOCK)) {
    return INODE_SET_TYPE(i, FSNODEFLAG_TYPE_BLOCK);
}
pub inline fn INODE_SET_MOUNTPT(i: anytype) @TypeOf(INODE_SET_TYPE(i, FSNODEFLAG_TYPE_MOUNTPT)) {
    return INODE_SET_TYPE(i, FSNODEFLAG_TYPE_MOUNTPT);
}
pub inline fn INODE_SET_NAMEDSEM(i: anytype) @TypeOf(INODE_SET_TYPE(i, FSNODEFLAG_TYPE_NAMEDSEM)) {
    return INODE_SET_TYPE(i, FSNODEFLAG_TYPE_NAMEDSEM);
}
pub inline fn INODE_SET_MQUEUE(i: anytype) @TypeOf(INODE_SET_TYPE(i, FSNODEFLAG_TYPE_MQUEUE)) {
    return INODE_SET_TYPE(i, FSNODEFLAG_TYPE_MQUEUE);
}
pub inline fn INODE_SET_SHM(i: anytype) @TypeOf(INODE_SET_TYPE(i, FSNODEFLAG_TYPE_SHM)) {
    return INODE_SET_TYPE(i, FSNODEFLAG_TYPE_SHM);
}
pub inline fn INODE_SET_MTD(i: anytype) @TypeOf(INODE_SET_TYPE(i, FSNODEFLAG_TYPE_MTD)) {
    return INODE_SET_TYPE(i, FSNODEFLAG_TYPE_MTD);
}
pub inline fn INODE_SET_SOFTLINK(i: anytype) @TypeOf(INODE_SET_TYPE(i, FSNODEFLAG_TYPE_SOFTLINK)) {
    return INODE_SET_TYPE(i, FSNODEFLAG_TYPE_SOFTLINK);
}
pub inline fn INODE_SET_SOCKET(i: anytype) @TypeOf(INODE_SET_TYPE(i, FSNODEFLAG_TYPE_SOCKET)) {
    return INODE_SET_TYPE(i, FSNODEFLAG_TYPE_SOCKET);
}
pub const DIRENTFLAGS_PSEUDONODE = @as(c_int, 1);
pub inline fn DIRENT_ISPSEUDONODE(f: anytype) @TypeOf((f & DIRENTFLAGS_PSEUDONODE) != @as(c_int, 0)) {
    return (f & DIRENTFLAGS_PSEUDONODE) != @as(c_int, 0);
}
pub const CH_STAT_MODE = @as(c_int, 1) << @as(c_int, 0);
pub const CH_STAT_UID = @as(c_int, 1) << @as(c_int, 1);
pub const CH_STAT_GID = @as(c_int, 1) << @as(c_int, 2);
pub const CH_STAT_ATIME = @as(c_int, 1) << @as(c_int, 3);
pub const CH_STAT_MTIME = @as(c_int, 1) << @as(c_int, 4);
pub inline fn FSNODE_SIZE(n: anytype) @TypeOf(@import("std").zig.c_translation.sizeof(struct_inode) + n) {
    return @import("std").zig.c_translation.sizeof(struct_inode) + n;
}
pub const __INCLUDE_NUTTX_SENSORS_IOCTL_H = "";
pub const __INCLUDE_NUTTX_FS_IOCTL_H = "";
pub const _TIOCBASE = @as(c_int, 0x0100);
pub const _WDIOCBASE = @as(c_int, 0x0200);
pub const _FIOCBASE = @as(c_int, 0x0300);
pub const _DIOCBASE = @as(c_int, 0x0400);
pub const _BIOCBASE = @as(c_int, 0x0500);
pub const _MTDIOCBASE = @as(c_int, 0x0600);
pub const _SIOCBASE = @as(c_int, 0x0700);
pub const _ARPIOCBASE = @as(c_int, 0x0800);
pub const _TSIOCBASE = @as(c_int, 0x0900);
pub const _SNIOCBASE = @as(c_int, 0x0a00);
pub const _ANIOCBASE = @as(c_int, 0x0b00);
pub const _PWMIOCBASE = @as(c_int, 0x0c00);
pub const _CAIOCBASE = @as(c_int, 0x0d00);
pub const _BATIOCBASE = @as(c_int, 0x0e00);
pub const _QEIOCBASE = @as(c_int, 0x0f00);
pub const _AUDIOIOCBASE = @as(c_int, 0x1000);
pub const _LCDIOCBASE = @as(c_int, 0x1100);
pub const _SLCDIOCBASE = @as(c_int, 0x1200);
pub const _CAPIOCBASE = @as(c_int, 0x1300);
pub const _WLCIOCBASE = @as(c_int, 0x1400);
pub const _CFGDIOCBASE = @as(c_int, 0x1500);
pub const _TCIOCBASE = @as(c_int, 0x1600);
pub const _JOYBASE = @as(c_int, 0x1700);
pub const _PIPEBASE = @as(c_int, 0x1800);
pub const _RTCBASE = @as(c_int, 0x1900);
pub const _RELAYBASE = @as(c_int, 0x1a00);
pub const _CANBASE = @as(c_int, 0x1b00);
pub const _BTNBASE = @as(c_int, 0x1c00);
pub const _ULEDBASE = @as(c_int, 0x1d00);
pub const _ZCBASE = @as(c_int, 0x1e00);
pub const _LOOPBASE = @as(c_int, 0x1f00);
pub const _MODEMBASE = @as(c_int, 0x2000);
pub const _I2CBASE = @as(c_int, 0x2100);
pub const _SPIBASE = @as(c_int, 0x2200);
pub const _GPIOBASE = @as(c_int, 0x2300);
pub const _CLIOCBASE = @as(c_int, 0x2400);
pub const _USBCBASE = @as(c_int, 0x2500);
pub const _MAC802154BASE = @as(c_int, 0x2600);
pub const _PWRBASE = @as(c_int, 0x2700);
pub const _FBIOCBASE = @as(c_int, 0x2800);
pub const _NXTERMBASE = @as(c_int, 0x2900);
pub const _RFIOCBASE = @as(c_int, 0x2a00);
pub const _RPTUNBASE = @as(c_int, 0x2b00);
pub const _NOTECTLBASE = @as(c_int, 0x2c00);
pub const _NOTERAMBASE = @as(c_int, 0x2d00);
pub const _RCIOCBASE = @as(c_int, 0x2e00);
pub const _HIMEMBASE = @as(c_int, 0x2f00);
pub const _EFUSEBASE = @as(c_int, 0x3000);
pub const _MTRIOBASE = @as(c_int, 0x3100);
pub const _MATHIOBASE = @as(c_int, 0x3200);
pub const _MMCSDIOBASE = @as(c_int, 0x3300);
pub const _WLIOCBASE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8b00, .hexadecimal);
pub const _BOARDBASE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hexadecimal);
pub const _IOC_MASK = @as(c_int, 0x00ff);
pub inline fn _IOC_TYPE(cmd: anytype) @TypeOf(cmd & ~_IOC_MASK) {
    return cmd & ~_IOC_MASK;
}
pub inline fn _IOC_NR(cmd: anytype) @TypeOf(cmd & _IOC_MASK) {
    return cmd & _IOC_MASK;
}
pub inline fn _IOC(@"type": anytype, nr: anytype) @TypeOf(@"type" | nr) {
    return @"type" | nr;
}
pub inline fn _TIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _TIOCBASE) {
    return _IOC_TYPE(c) == _TIOCBASE;
}
pub inline fn _TIOC(nr: anytype) @TypeOf(_IOC(_TIOCBASE, nr)) {
    return _IOC(_TIOCBASE, nr);
}
pub const __INCLUDE_NUTTX_SERIAL_TIOCTL_H = "";
pub const TCGETS = _TIOC(@as(c_int, 0x0001));
pub const TCSETS = _TIOC(@as(c_int, 0x0002));
pub const TCSETSW = _TIOC(@as(c_int, 0x0003));
pub const TCSETSF = _TIOC(@as(c_int, 0x0004));
pub const TCGETA = _TIOC(@as(c_int, 0x0005));
pub const TCSETA = _TIOC(@as(c_int, 0x0006));
pub const TCSETAW = _TIOC(@as(c_int, 0x0007));
pub const TCSETAF = _TIOC(@as(c_int, 0x0008));
pub const TIOCGLCKTRMIOS = _TIOC(@as(c_int, 0x0009));
pub const TIOCSLCKTRMIOS = _TIOC(@as(c_int, 0x000a));
pub const TIOCGWINSZ = _TIOC(@as(c_int, 0x000b));
pub const TIOCSWINSZ = _TIOC(@as(c_int, 0x000c));
pub const TCSBRK = _TIOC(@as(c_int, 0x000d));
pub const TCSBRKP = _TIOC(@as(c_int, 0x000e));
pub const TIOCSBRK = _TIOC(@as(c_int, 0x000f));
pub const TIOCCBRK = _TIOC(@as(c_int, 0x0010));
pub const TCXONC = _TIOC(@as(c_int, 0x0011));
pub const TIOCINQ = _TIOC(@as(c_int, 0x0012));
pub const TIOCOUTQ = _TIOC(@as(c_int, 0x0013));
pub const TCFLSH = _TIOC(@as(c_int, 0x0014));
pub const TCDRN = _TIOC(@as(c_int, 0x0015));
pub const TIOCSTI = _TIOC(@as(c_int, 0x0016));
pub const TIOCCONS = _TIOC(@as(c_int, 0x0017));
pub const TIOCSCTTY = _TIOC(@as(c_int, 0x0018));
pub const TIOCNOTTY = _TIOC(@as(c_int, 0x0019));
pub const TIOCEXCL = _TIOC(@as(c_int, 0x001a));
pub const TIOCNXCL = _TIOC(@as(c_int, 0x001b));
pub const TIOCGETD = _TIOC(@as(c_int, 0x001c));
pub const TIOCSETD = _TIOC(@as(c_int, 0x001d));
pub const TIOCPKT = _TIOC(@as(c_int, 0x001e));
pub const TIOCPKT_FLUSHREAD = @as(c_int, 1) << @as(c_int, 0);
pub const TIOCPKT_FLUSHWRITE = @as(c_int, 1) << @as(c_int, 1);
pub const TIOCPKT_STOP = @as(c_int, 1) << @as(c_int, 2);
pub const TIOCPKT_START = @as(c_int, 1) << @as(c_int, 3);
pub const TIOCPKT_DOSTOP = @as(c_int, 1) << @as(c_int, 4);
pub const TIOCPKT_NOSTOP = @as(c_int, 1) << @as(c_int, 5);
pub const TIOCMGET = _TIOC(@as(c_int, 0x001f));
pub const TIOCMSET = _TIOC(@as(c_int, 0x0020));
pub const TIOCMBIC = _TIOC(@as(c_int, 0x0021));
pub const TIOCMBIS = _TIOC(@as(c_int, 0x0022));
pub const TIOCM_LE = @as(c_int, 1) << @as(c_int, 0);
pub const TIOCM_DTR = @as(c_int, 1) << @as(c_int, 1);
pub const TIOCM_RTS = @as(c_int, 1) << @as(c_int, 2);
pub const TIOCM_ST = @as(c_int, 1) << @as(c_int, 3);
pub const TIOCM_SR = @as(c_int, 1) << @as(c_int, 4);
pub const TIOCM_CTS = @as(c_int, 1) << @as(c_int, 5);
pub const TIOCM_CAR = @as(c_int, 1) << @as(c_int, 6);
pub const TIOCM_CD = TIOCM_CAR;
pub const TIOCM_RNG = @as(c_int, 1) << @as(c_int, 7);
pub const TIOCM_RI = TIOCM_RNG;
pub const TIOCM_DSR = @as(c_int, 1) << @as(c_int, 8);
pub const TIOCVHANGUP = _TIOC(@as(c_int, 0x0023));
pub const TIOCGSOFTCAR = _TIOC(@as(c_int, 0x0024));
pub const TIOCSSOFTCAR = _TIOC(@as(c_int, 0x0025));
pub const TIOCGSERIAL = _TIOC(@as(c_int, 0x0026));
pub const TIOCSSERIAL = _TIOC(@as(c_int, 0x0027));
pub const TIOCSERGETLSR = _TIOC(@as(c_int, 0x0028));
pub const TIOCMIWAIT = _TIOC(@as(c_int, 0x0029));
pub const TIOCGICOUNT = _TIOC(@as(c_int, 0x002a));
pub const TIOCGPTN = _TIOC(@as(c_int, 0x002b));
pub const TIOCSPTLCK = _TIOC(@as(c_int, 0x002c));
pub const TIOCGPTLCK = _TIOC(@as(c_int, 0x002d));
pub const TIOCSRS485 = _TIOC(@as(c_int, 0x002e));
pub const TIOCGRS485 = _TIOC(@as(c_int, 0x002f));
pub const SER_RS485_ENABLED = @as(c_int, 1) << @as(c_int, 0);
pub const SER_RS485_RTS_ON_SEND = @as(c_int, 1) << @as(c_int, 1);
pub const SER_RS485_RTS_AFTER_SEND = @as(c_int, 1) << @as(c_int, 2);
pub const SER_RS485_RX_DURING_TX = @as(c_int, 1) << @as(c_int, 4);
pub const TIOCSSINGLEWIRE = _TIOC(@as(c_int, 0x0030));
pub const TIOCGSINGLEWIRE = _TIOC(@as(c_int, 0x0031));
pub const SER_SINGLEWIRE_ENABLED = @as(c_int, 1) << @as(c_int, 0);
pub const SER_SINGLEWIRE_PULL_SHIFT = @as(c_int, 1);
pub const SER_SINGLEWIRE_PULL_MASK = @as(c_int, 3) << SER_SINGLEWIRE_PULL_SHIFT;
pub const SER_SINGLEWIRE_PULL_DISABLE = @as(c_int, 0) << SER_SINGLEWIRE_PULL_SHIFT;
pub const SER_SINGLEWIRE_PULLUP = @as(c_int, 1) << SER_SINGLEWIRE_PULL_SHIFT;
pub const SER_SINGLEWIRE_PULLDOWN = @as(c_int, 2) << SER_SINGLEWIRE_PULL_SHIFT;
pub const SER_SINGLEWIRE_PUSHPULL = @as(c_int, 1) << @as(c_int, 3);
pub const TIOCSERGSTRUCT = _TIOC(@as(c_int, 0x0032));
pub const TIOCSINVERT = _TIOC(@as(c_int, 0x0033));
pub const TIOCGINVERT = _TIOC(@as(c_int, 0x0034));
pub const SER_INVERT_ENABLED_RX = @as(c_int, 1) << @as(c_int, 0);
pub const SER_INVERT_ENABLED_TX = @as(c_int, 1) << @as(c_int, 1);
pub const TIOCSSWAP = _TIOC(@as(c_int, 0x0035));
pub const TIOCGSWAP = _TIOC(@as(c_int, 0x0036));
pub const SER_SWAP_ENABLED = @as(c_int, 1) << @as(c_int, 0);
pub const TIOCSLINID = _TIOC(@as(c_int, 0x0037));
pub inline fn _WDIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _WDIOCBASE) {
    return _IOC_TYPE(c) == _WDIOCBASE;
}
pub inline fn _WDIOC(nr: anytype) @TypeOf(_IOC(_WDIOCBASE, nr)) {
    return _IOC(_WDIOCBASE, nr);
}
pub inline fn _FIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _FIOCBASE) {
    return _IOC_TYPE(c) == _FIOCBASE;
}
pub inline fn _FIOC(nr: anytype) @TypeOf(_IOC(_FIOCBASE, nr)) {
    return _IOC(_FIOCBASE, nr);
}
pub const FIOC_MMAP = _FIOC(@as(c_int, 0x0001));
pub const FIOC_REFORMAT = _FIOC(@as(c_int, 0x0002));
pub const FIOC_OPTIMIZE = _FIOC(@as(c_int, 0x0003));
pub const FIOC_FILEPATH = _FIOC(@as(c_int, 0x0004));
pub const FIOC_INTEGRITY = _FIOC(@as(c_int, 0x0005));
pub const FIOC_DUMP = _FIOC(@as(c_int, 0x0006));
pub const FIONREAD = _FIOC(@as(c_int, 0x0007));
pub const FIONWRITE = _FIOC(@as(c_int, 0x0008));
pub const FIONSPACE = _FIOC(@as(c_int, 0x0009));
pub const FIONUSERFS = _FIOC(@as(c_int, 0x000a));
pub const FIONBIO = _FIOC(@as(c_int, 0x000b));
pub const FIOCLEX = _FIOC(@as(c_int, 0x000c));
pub const FIONCLEX = _FIOC(@as(c_int, 0x000d));
pub const FIOC_NOTIFY = _FIOC(@as(c_int, 0x000e));
pub const FIOC_TRUNCATE = _FIOC(@as(c_int, 0x0010));
pub inline fn _DIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _DIOCBASE) {
    return _IOC_TYPE(c) == _DIOCBASE;
}
pub inline fn _DIOC(nr: anytype) @TypeOf(_IOC(_DIOCBASE, nr)) {
    return _IOC(_DIOCBASE, nr);
}
pub const DIOC_GETPRIV = _DIOC(@as(c_int, 0x0001));
pub const DIOC_RELPRIV = _DIOC(@as(c_int, 0x0003));
pub const DIOC_SETKEY = _DIOC(@as(c_int, 0x0004));
pub inline fn _BIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _BIOCBASE) {
    return _IOC_TYPE(c) == _BIOCBASE;
}
pub inline fn _BIOC(nr: anytype) @TypeOf(_IOC(_BIOCBASE, nr)) {
    return _IOC(_BIOCBASE, nr);
}
pub const BIOC_XIPBASE = _BIOC(@as(c_int, 0x0001));
pub const BIOC_PROBE = _BIOC(@as(c_int, 0x0002));
pub const BIOC_EJECT = _BIOC(@as(c_int, 0x0003));
pub const BIOC_LLFORMAT = _BIOC(@as(c_int, 0x0004));
pub const BIOC_GETFORMAT = _BIOC(@as(c_int, 0x0005));
pub const BIOC_ALLOCSECT = _BIOC(@as(c_int, 0x0006));
pub const BIOC_FREESECT = _BIOC(@as(c_int, 0x0007));
pub const BIOC_READSECT = _BIOC(@as(c_int, 0x0008));
pub const BIOC_WRITESECT = _BIOC(@as(c_int, 0x0009));
pub const BIOC_GETPROCFSD = _BIOC(@as(c_int, 0x000a));
pub const BIOC_DEBUGCMD = _BIOC(@as(c_int, 0x000b));
pub const BIOC_GEOMETRY = _BIOC(@as(c_int, 0x000c));
pub const BIOC_FLUSH = _BIOC(@as(c_int, 0x000d));
pub const BIOC_PARTINFO = _BIOC(@as(c_int, 0x000e));
pub const BIOC_BLKSSZGET = _BIOC(@as(c_int, 0x000f));
pub inline fn _MTDIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _MTDIOCBASE) {
    return _IOC_TYPE(c) == _MTDIOCBASE;
}
pub inline fn _MTDIOC(nr: anytype) @TypeOf(_IOC(_MTDIOCBASE, nr)) {
    return _IOC(_MTDIOCBASE, nr);
}
pub inline fn _SIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _SIOCBASE) {
    return _IOC_TYPE(c) == _SIOCBASE;
}
pub inline fn _SIOC(nr: anytype) @TypeOf(_IOC(_SIOCBASE, nr)) {
    return _IOC(_SIOCBASE, nr);
}
pub inline fn _ARPIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _ARPIOCBASE) {
    return _IOC_TYPE(c) == _ARPIOCBASE;
}
pub inline fn _ARPIOC(nr: anytype) @TypeOf(_IOC(_ARPIOCBASE, nr)) {
    return _IOC(_ARPIOCBASE, nr);
}
pub inline fn _TSIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _TSIOCBASE) {
    return _IOC_TYPE(c) == _TSIOCBASE;
}
pub inline fn _TSIOC(nr: anytype) @TypeOf(_IOC(_TSIOCBASE, nr)) {
    return _IOC(_TSIOCBASE, nr);
}
pub inline fn _SNIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _SNIOCBASE) {
    return _IOC_TYPE(c) == _SNIOCBASE;
}
pub inline fn _SNIOC(nr: anytype) @TypeOf(_IOC(_SNIOCBASE, nr)) {
    return _IOC(_SNIOCBASE, nr);
}
pub inline fn _ANIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _ANIOCBASE) {
    return _IOC_TYPE(c) == _ANIOCBASE;
}
pub inline fn _ANIOC(nr: anytype) @TypeOf(_IOC(_ANIOCBASE, nr)) {
    return _IOC(_ANIOCBASE, nr);
}
pub inline fn _PWMIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _PWMIOCBASE) {
    return _IOC_TYPE(c) == _PWMIOCBASE;
}
pub inline fn _PWMIOC(nr: anytype) @TypeOf(_IOC(_PWMIOCBASE, nr)) {
    return _IOC(_PWMIOCBASE, nr);
}
pub inline fn _CAPIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _CAPIOCBASE) {
    return _IOC_TYPE(c) == _CAPIOCBASE;
}
pub inline fn _CAPIOC(nr: anytype) @TypeOf(_IOC(_CAPIOCBASE, nr)) {
    return _IOC(_CAPIOCBASE, nr);
}
pub inline fn _CAIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _CAIOCBASE) {
    return _IOC_TYPE(c) == _CAIOCBASE;
}
pub inline fn _CAIOC(nr: anytype) @TypeOf(_IOC(_CAIOCBASE, nr)) {
    return _IOC(_CAIOCBASE, nr);
}
pub inline fn _BATIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _BATIOCBASE) {
    return _IOC_TYPE(c) == _BATIOCBASE;
}
pub inline fn _BATIOC(nr: anytype) @TypeOf(_IOC(_BATIOCBASE, nr)) {
    return _IOC(_BATIOCBASE, nr);
}
pub inline fn _QEIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _QEIOCBASE) {
    return _IOC_TYPE(c) == _QEIOCBASE;
}
pub inline fn _QEIOC(nr: anytype) @TypeOf(_IOC(_QEIOCBASE, nr)) {
    return _IOC(_QEIOCBASE, nr);
}
pub inline fn _AUDIOIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _AUDIOIOCBASE) {
    return _IOC_TYPE(c) == _AUDIOIOCBASE;
}
pub inline fn _AUDIOIOC(nr: anytype) @TypeOf(_IOC(_AUDIOIOCBASE, nr)) {
    return _IOC(_AUDIOIOCBASE, nr);
}
pub inline fn _LCDIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _LCDIOCBASE) {
    return _IOC_TYPE(c) == _LCDIOCBASE;
}
pub inline fn _LCDIOC(nr: anytype) @TypeOf(_IOC(_LCDIOCBASE, nr)) {
    return _IOC(_LCDIOCBASE, nr);
}
pub inline fn _SLCDIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _SLCDIOCBASE) {
    return _IOC_TYPE(c) == _SLCDIOCBASE;
}
pub inline fn _SLCDIOC(nr: anytype) @TypeOf(_IOC(_SLCDIOCBASE, nr)) {
    return _IOC(_SLCDIOCBASE, nr);
}
pub inline fn _WLCIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _WLCIOCBASE) {
    return _IOC_TYPE(c) == _WLCIOCBASE;
}
pub inline fn _WLCIOC(nr: anytype) @TypeOf(_IOC(_WLCIOCBASE, nr)) {
    return _IOC(_WLCIOCBASE, nr);
}
pub inline fn _CFGDIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _CFGDIOCBASE) {
    return _IOC_TYPE(c) == _CFGDIOCBASE;
}
pub inline fn _CFGDIOC(nr: anytype) @TypeOf(_IOC(_CFGDIOCBASE, nr)) {
    return _IOC(_CFGDIOCBASE, nr);
}
pub inline fn _TCIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _TCIOCBASE) {
    return _IOC_TYPE(c) == _TCIOCBASE;
}
pub inline fn _TCIOC(nr: anytype) @TypeOf(_IOC(_TCIOCBASE, nr)) {
    return _IOC(_TCIOCBASE, nr);
}
pub inline fn _JOYIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _JOYBASE) {
    return _IOC_TYPE(c) == _JOYBASE;
}
pub inline fn _JOYIOC(nr: anytype) @TypeOf(_IOC(_JOYBASE, nr)) {
    return _IOC(_JOYBASE, nr);
}
pub inline fn _PIPEIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _PIPEBASE) {
    return _IOC_TYPE(c) == _PIPEBASE;
}
pub inline fn _PIPEIOC(nr: anytype) @TypeOf(_IOC(_PIPEBASE, nr)) {
    return _IOC(_PIPEBASE, nr);
}
pub const PIPEIOC_POLICY = _PIPEIOC(@as(c_int, 0x0001));
pub inline fn _RTCIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _RTCBASE) {
    return _IOC_TYPE(c) == _RTCBASE;
}
pub inline fn _RTCIOC(nr: anytype) @TypeOf(_IOC(_RTCBASE, nr)) {
    return _IOC(_RTCBASE, nr);
}
pub inline fn _RELAYIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _RELAYBASE) {
    return _IOC_TYPE(c) == _RELAYBASE;
}
pub inline fn _RELAYIOC(nr: anytype) @TypeOf(_IOC(_RELAYBASE, nr)) {
    return _IOC(_RELAYBASE, nr);
}
pub inline fn _CANIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _CANBASE) {
    return _IOC_TYPE(c) == _CANBASE;
}
pub inline fn _CANIOC(nr: anytype) @TypeOf(_IOC(_CANBASE, nr)) {
    return _IOC(_CANBASE, nr);
}
pub inline fn _BTNIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _BTNBASE) {
    return _IOC_TYPE(c) == _BTNBASE;
}
pub inline fn _BTNIOC(nr: anytype) @TypeOf(_IOC(_BTNBASE, nr)) {
    return _IOC(_BTNBASE, nr);
}
pub inline fn _ULEDIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _ULEDBASE) {
    return _IOC_TYPE(c) == _ULEDBASE;
}
pub inline fn _ULEDIOC(nr: anytype) @TypeOf(_IOC(_ULEDBASE, nr)) {
    return _IOC(_ULEDBASE, nr);
}
pub inline fn _ZCIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _ZCBASE) {
    return _IOC_TYPE(c) == _ZCBASE;
}
pub inline fn _ZCIOC(nr: anytype) @TypeOf(_IOC(_ZCBASE, nr)) {
    return _IOC(_ZCBASE, nr);
}
pub inline fn _LOOPIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _LOOPBASE) {
    return _IOC_TYPE(c) == _LOOPBASE;
}
pub inline fn _LOOPIOC(nr: anytype) @TypeOf(_IOC(_LOOPBASE, nr)) {
    return _IOC(_LOOPBASE, nr);
}
pub inline fn _MODEMIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _MODEMBASE) {
    return _IOC_TYPE(c) == _MODEMBASE;
}
pub inline fn _MODEMIOC(nr: anytype) @TypeOf(_IOC(_MODEMBASE, nr)) {
    return _IOC(_MODEMBASE, nr);
}
pub inline fn _I2CIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _I2CBASE) {
    return _IOC_TYPE(c) == _I2CBASE;
}
pub inline fn _I2CIOC(nr: anytype) @TypeOf(_IOC(_I2CBASE, nr)) {
    return _IOC(_I2CBASE, nr);
}
pub inline fn _SPIIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _SPIBASE) {
    return _IOC_TYPE(c) == _SPIBASE;
}
pub inline fn _SPIIOC(nr: anytype) @TypeOf(_IOC(_SPIBASE, nr)) {
    return _IOC(_SPIBASE, nr);
}
pub inline fn _GPIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _GPIOBASE) {
    return _IOC_TYPE(c) == _GPIOBASE;
}
pub inline fn _GPIOC(nr: anytype) @TypeOf(_IOC(_GPIOBASE, nr)) {
    return _IOC(_GPIOBASE, nr);
}
pub inline fn _CLIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _CLIOCBASE) {
    return _IOC_TYPE(c) == _CLIOCBASE;
}
pub inline fn _CLIOC(nr: anytype) @TypeOf(_IOC(_CLIOCBASE, nr)) {
    return _IOC(_CLIOCBASE, nr);
}
pub inline fn _USBCIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _USBCBASE) {
    return _IOC_TYPE(c) == _USBCBASE;
}
pub inline fn _USBCIOC(nr: anytype) @TypeOf(_IOC(_USBCBASE, nr)) {
    return _IOC(_USBCBASE, nr);
}
pub inline fn _MAC802154IOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _MAC802154BASE) {
    return _IOC_TYPE(c) == _MAC802154BASE;
}
pub inline fn _MAC802154IOC(nr: anytype) @TypeOf(_IOC(_MAC802154BASE, nr)) {
    return _IOC(_MAC802154BASE, nr);
}
pub inline fn _PWRIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _PWRBASE) {
    return _IOC_TYPE(c) == _PWRBASE;
}
pub inline fn _PWRIOC(nr: anytype) @TypeOf(_IOC(_PWRBASE, nr)) {
    return _IOC(_PWRBASE, nr);
}
pub inline fn _FBIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _FBIOCBASE) {
    return _IOC_TYPE(c) == _FBIOCBASE;
}
pub inline fn _FBIOC(nr: anytype) @TypeOf(_IOC(_FBIOCBASE, nr)) {
    return _IOC(_FBIOCBASE, nr);
}
pub inline fn _NXTERMVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _NXTERMBASE) {
    return _IOC_TYPE(c) == _NXTERMBASE;
}
pub inline fn _NXTERMIOC(nr: anytype) @TypeOf(_IOC(_NXTERMBASE, nr)) {
    return _IOC(_NXTERMBASE, nr);
}
pub inline fn _RFIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _RFIOCBASE) {
    return _IOC_TYPE(c) == _RFIOCBASE;
}
pub inline fn _RFIOC(nr: anytype) @TypeOf(_IOC(_RFIOCBASE, nr)) {
    return _IOC(_RFIOCBASE, nr);
}
pub inline fn _RPTUNIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _RPTUNBASE) {
    return _IOC_TYPE(c) == _RPTUNBASE;
}
pub inline fn _RPTUNIOC(nr: anytype) @TypeOf(_IOC(_RPTUNBASE, nr)) {
    return _IOC(_RPTUNBASE, nr);
}
pub inline fn _NOTECTLIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _NOTECTLBASE) {
    return _IOC_TYPE(c) == _NOTECTLBASE;
}
pub inline fn _NOTECTLIOC(nr: anytype) @TypeOf(_IOC(_NOTECTLBASE, nr)) {
    return _IOC(_NOTECTLBASE, nr);
}
pub inline fn _NOTERAMIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _NOTERAMBASE) {
    return _IOC_TYPE(c) == _NOTERAMBASE;
}
pub inline fn _NOTERAMIOC(nr: anytype) @TypeOf(_IOC(_NOTERAMBASE, nr)) {
    return _IOC(_NOTERAMBASE, nr);
}
pub inline fn _RCIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _RCIOCBASE) {
    return _IOC_TYPE(c) == _RCIOCBASE;
}
pub inline fn _RCIOC(nr: anytype) @TypeOf(_IOC(_RCIOCBASE, nr)) {
    return _IOC(_RCIOCBASE, nr);
}
pub inline fn _HIMEMIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _HIMEMBASE) {
    return _IOC_TYPE(c) == _HIMEMBASE;
}
pub inline fn _HIMEMIOC(nr: anytype) @TypeOf(_IOC(_HIMEMBASE, nr)) {
    return _IOC(_HIMEMBASE, nr);
}
pub inline fn _EFUSEIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _EFUSEBASE) {
    return _IOC_TYPE(c) == _EFUSEBASE;
}
pub inline fn _EFUSEIOC(nr: anytype) @TypeOf(_IOC(_EFUSEBASE, nr)) {
    return _IOC(_EFUSEBASE, nr);
}
pub inline fn _MTRIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _MTRIOBASE) {
    return _IOC_TYPE(c) == _MTRIOBASE;
}
pub inline fn _MTRIOC(nr: anytype) @TypeOf(_IOC(_MTRIOBASE, nr)) {
    return _IOC(_MTRIOBASE, nr);
}
pub inline fn _MATHIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _MATHIOBASE) {
    return _IOC_TYPE(c) == _MATHIOBASE;
}
pub inline fn _MATHIOC(nr: anytype) @TypeOf(_IOC(_MATHIOBASE, nr)) {
    return _IOC(_MATHIOBASE, nr);
}
pub inline fn _MMCSDIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _MMCSDIOBASE) {
    return _IOC_TYPE(c) == _MMCSDIOBASE;
}
pub inline fn _MMCSDIOC(nr: anytype) @TypeOf(_IOC(_MMCSDIOBASE, nr)) {
    return _IOC(_MMCSDIOBASE, nr);
}
pub inline fn _WLIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _WLIOCBASE) {
    return _IOC_TYPE(c) == _WLIOCBASE;
}
pub inline fn _WLIOC(nr: anytype) @TypeOf(_IOC(_WLIOCBASE, nr)) {
    return _IOC(_WLIOCBASE, nr);
}
pub inline fn _BOARDIOCVALID(c: anytype) @TypeOf(_IOC_TYPE(c) == _BOARDBASE) {
    return _IOC_TYPE(c) == _BOARDBASE;
}
pub inline fn _BOARDIOC(nr: anytype) @TypeOf(_IOC(_BOARDBASE, nr)) {
    return _IOC(_BOARDBASE, nr);
}
pub const SNIOC_CHRM = _SNIOC(@as(c_int, 0x0001));
pub const SNIOC_CHRM2 = _SNIOC(@as(c_int, 0x0002));
pub const SNIOC_CLRM = _SNIOC(@as(c_int, 0x0003));
pub const SNIOC_OTHRM = _SNIOC(@as(c_int, 0x0004));
pub const SNIOC_OTHRM2 = _SNIOC(@as(c_int, 0x0005));
pub const SNIOC_OTLRM = _SNIOC(@as(c_int, 0x0006));
pub const SNIOC_CHMEATIME = _SNIOC(@as(c_int, 0x0007));
pub const SNIOC_ENABLE = _SNIOC(@as(c_int, 0x0008));
pub const SNIOC_DISABLE = _SNIOC(@as(c_int, 0x0009));
pub const SNIOC_CONFIGURE = _SNIOC(@as(c_int, 0x000a));
pub const SNIOC_READCONF = _SNIOC(@as(c_int, 0x000b));
pub const SNIOC_WRITECONF = _SNIOC(@as(c_int, 0x000c));
pub const SNIOC_SHUTDOWN = _SNIOC(@as(c_int, 0x000d));
pub const SNIOC_POWERUP = _SNIOC(@as(c_int, 0x000e));
pub const SNIOC_FAHRENHEIT = _SNIOC(@as(c_int, 0x000f));
pub const SNIOC_CENTIGRADE = _SNIOC(@as(c_int, 0x0010));
pub const SNIOC_READTHYS = _SNIOC(@as(c_int, 0x0011));
pub const SNIOC_WRITETHYS = _SNIOC(@as(c_int, 0x0012));
pub const SNIOC_READTOS = _SNIOC(@as(c_int, 0x0013));
pub const SNIOC_WRITETOS = _SNIOC(@as(c_int, 0x0014));
pub const SNIOC_READTCRIT = _SNIOC(@as(c_int, 0x0015));
pub const SNIOC_WRITETCRIT = _SNIOC(@as(c_int, 0x0016));
pub const SNIOC_READTLOW = _SNIOC(@as(c_int, 0x0017));
pub const SNIOC_WRITETLOW = _SNIOC(@as(c_int, 0x0018));
pub const SNIOC_READTHIGH = _SNIOC(@as(c_int, 0x0019));
pub const SNIOC_WRITETHIGH = _SNIOC(@as(c_int, 0x001a));
pub const SNIOC_READID = _SNIOC(@as(c_int, 0x001b));
pub const SNIOC_START = _SNIOC(@as(c_int, 0x001c));
pub const SNIOC_STOP = _SNIOC(@as(c_int, 0x001d));
pub const SNIOC_SETSAMPLERATE = _SNIOC(@as(c_int, 0x001e));
pub const SNIOC_SETFULLSCALE = _SNIOC(@as(c_int, 0x001f));
pub const SNIOC_MEASURE = _SNIOC(@as(c_int, 0x0020));
pub const SNIOC_RANGE = _SNIOC(@as(c_int, 0x0021));
pub const SNIOC_CHANGEADDR = _SNIOC(@as(c_int, 0x0022));
pub const SNIOC_READTEMP = _SNIOC(@as(c_int, 0x0023));
pub const SNIOC_SETRESOLUTION = _SNIOC(@as(c_int, 0x0024));
pub const SNIOC_TEMPERATURE = _SNIOC(@as(c_int, 0x0026));
pub const SNIOC_PRESSURE = _SNIOC(@as(c_int, 0x0027));
pub const SNIOC_RESET = _SNIOC(@as(c_int, 0x0028));
pub const SNIOC_OVERSAMPLING = _SNIOC(@as(c_int, 0x0029));
pub const SNIOC_CFGR = _SNIOC(@as(c_int, 0x002a));
pub const SNIOC_GET_DEV_ID = _SNIOC(@as(c_int, 0x002b));
pub const SNIOC_START_CONVERSION = _SNIOC(@as(c_int, 0x002c));
pub const SNIOC_CHECK_STATUS_REG = _SNIOC(@as(c_int, 0x002d));
pub const SNIOC_READ_RAW_DATA = _SNIOC(@as(c_int, 0x002e));
pub const SNIOC_READ_CONVERT_DATA = _SNIOC(@as(c_int, 0x002f));
pub const SNIOC_DUMP_REGS = _SNIOC(@as(c_int, 0x0030));
pub const SNIOC_TEMPERATURE_OUT = _SNIOC(@as(c_int, 0x0031));
pub const SNIOC_PRESSURE_OUT = _SNIOC(@as(c_int, 0x0032));
pub const SNIOC_SENSOR_OFF = _SNIOC(@as(c_int, 0x0033));
pub const SNIOC_WRITESETUP = _SNIOC(@as(c_int, 0x0034));
pub const SNIOC_WRITE_INT1THRESHOLD = _SNIOC(@as(c_int, 0x0035));
pub const SNIOC_WRITE_INT2THRESHOLD = _SNIOC(@as(c_int, 0x0036));
pub const SNIOC_RESET_HPFILTER = _SNIOC(@as(c_int, 0x0037));
pub const SNIOC_START_SELFTEST = _SNIOC(@as(c_int, 0x0038));
pub const SNIOC_WHO_AM_I = _SNIOC(@as(c_int, 0x0039));
pub const SNIOC_READ_TEMP = _SNIOC(@as(c_int, 0x003a));
pub const SNIOC_INIT = _SNIOC(@as(c_int, 0x003b));
pub const SNIOC_THRESHOLD = _SNIOC(@as(c_int, 0x003c));
pub const SNIOC_SET_POWER_MODE = _SNIOC(@as(c_int, 0x003d));
pub const SNIOC_SET_DATA_RATE = _SNIOC(@as(c_int, 0x003e));
pub const SNIOC_SET_DATA_FORMAT = _SNIOC(@as(c_int, 0x003f));
pub const SNIOC_SPCALIB = _SNIOC(@as(c_int, 0x0040));
pub const SNIOC_ABCLOGIC = _SNIOC(@as(c_int, 0x0041));
pub const SNIOC_LSM6DSLSENSORREAD = _SNIOC(@as(c_int, 0x0046));
pub const SNIOC_LSM303AGRSENSORREAD = _SNIOC(@as(c_int, 0x0051));
pub const SNIOC_CHANGE_SMBUSADDR = _SNIOC(@as(c_int, 0x0053));
pub const SNIOC_SET_TEMP_OFFSET = _SNIOC(@as(c_int, 0x0055));
pub const SNIOC_SET_PRESSURE_COMP = _SNIOC(@as(c_int, 0x0056));
pub const SNIOC_SET_ALTITUDE_COMP = _SNIOC(@as(c_int, 0x0057));
pub const SNIOC_SET_FRC = _SNIOC(@as(c_int, 0x0058));
pub const SNIOC_ENABLE_ASC = _SNIOC(@as(c_int, 0x0059));
pub const SNIOC_GET_BASELINE = _SNIOC(@as(c_int, 0x005a));
pub const SNIOC_SET_BASELINE = _SNIOC(@as(c_int, 0x005b));
pub const SNIOC_SET_HUMIDITY = _SNIOC(@as(c_int, 0x005c));
pub const SNIOC_SET_CLEAN_INTERVAL = _SNIOC(@as(c_int, 0x005d));
pub const SNIOC_START_FAN_CLEANING = _SNIOC(@as(c_int, 0x005e));
pub const SNIOC_READSTAT = _SNIOC(@as(c_int, 0x005f));
pub const SNIOC_DISTANCESHORT = _SNIOC(@as(c_int, 0x0060));
pub const SNIOC_DISTANCELONG = _SNIOC(@as(c_int, 0x0061));
pub const SNIOC_CALIBRATE = _SNIOC(@as(c_int, 0x0062));
pub const SNIOC_TEMPUPDATE = _SNIOC(@as(c_int, 0x0063));
pub const SNIOC_SET_OPERATIONAL_MODE = _SNIOC(@as(c_int, 0x0064));
pub const SNIOC_SET_RESOLUTION = _SNIOC(@as(c_int, 0x0065));
pub const SNIOC_SET_RANGE = _SNIOC(@as(c_int, 0x0066));
pub const SNIOC_READADDR = SNIOC_READID;
pub const SNIOC_READROMCODE = _SNIOC(@as(c_int, 0x0067));
pub const SNIOC_SETALARM = _SNIOC(@as(c_int, 0x0068));
pub const SNIOC_GET_STATE = _SNIOC(@as(c_int, 0x0080));
pub const SNIOC_SET_INTERVAL = _SNIOC(@as(c_int, 0x0081));
pub const SNIOC_BATCH = _SNIOC(@as(c_int, 0x0082));
pub const SNIOC_SET_USERPRIV = _SNIOC(@as(c_int, 0x0083));
pub const SNIOC_SET_BUFFER_NUMBER = _SNIOC(@as(c_int, 0x0084));
pub const SNIOC_GET_POSITION = _SNIOC(@as(c_int, 0x0085));
pub const SNIOC_SELFTEST = _SNIOC(@as(c_int, 0x0086));
pub const SNIOC_SET_CALIBVALUE = _SNIOC(@as(c_int, 0x0087));
pub const SNIOC_UPDATED = _SNIOC(@as(c_int, 0x0091));
pub const SNIOC_GET_USTATE = _SNIOC(@as(c_int, 0x0092));
pub const SENSOR_TYPE_CUSTOM = @as(c_int, 0);
pub const SENSOR_TYPE_ACCELEROMETER = @as(c_int, 1);
pub const SENSOR_TYPE_MAGNETIC_FIELD = @as(c_int, 2);
pub const SENSOR_TYPE_GYROSCOPE = @as(c_int, 3);
pub const SENSOR_TYPE_LIGHT = @as(c_int, 4);
pub const SENSOR_TYPE_BAROMETER = @as(c_int, 5);
pub const SENSOR_TYPE_PROXIMITY = @as(c_int, 6);
pub const SENSOR_TYPE_RELATIVE_HUMIDITY = @as(c_int, 7);
pub const SENSOR_TYPE_AMBIENT_TEMPERATURE = @as(c_int, 8);
pub const SENSOR_TYPE_RGB = @as(c_int, 9);
pub const SENSOR_TYPE_HALL = @as(c_int, 10);
pub const SENSOR_TYPE_IR = @as(c_int, 11);
pub const SENSOR_TYPE_GPS = @as(c_int, 12);
pub const SENSOR_TYPE_ULTRAVIOLET = @as(c_int, 13);
pub const SENSOR_TYPE_NOISE = @as(c_int, 14);
pub const SENSOR_TYPE_PM25 = @as(c_int, 15);
pub const SENSOR_TYPE_PM1P0 = @as(c_int, 16);
pub const SENSOR_TYPE_PM10 = @as(c_int, 17);
pub const SENSOR_TYPE_CO2 = @as(c_int, 18);
pub const SENSOR_TYPE_HCHO = @as(c_int, 19);
pub const SENSOR_TYPE_TVOC = @as(c_int, 20);
pub const SENSOR_TYPE_PH = @as(c_int, 21);
pub const SENSOR_TYPE_DUST = @as(c_int, 22);
pub const SENSOR_TYPE_HEART_RATE = @as(c_int, 23);
pub const SENSOR_TYPE_HEART_BEAT = @as(c_int, 24);
pub const SENSOR_TYPE_ECG = @as(c_int, 25);
pub const SENSOR_TYPE_PPGD = @as(c_int, 26);
pub const SENSOR_TYPE_PPGQ = @as(c_int, 27);
pub const SENSOR_TYPE_IMPEDANCE = @as(c_int, 28);
pub const SENSOR_TYPE_OTS = @as(c_int, 29);
pub const SENSOR_TYPE_GPS_SATELLITE = @as(c_int, 30);
pub const SENSOR_TYPE_WAKE_GESTURE = @as(c_int, 31);
pub const SENSOR_TYPE_CAP = @as(c_int, 32);
pub const SENSOR_TYPE_COUNT = @as(c_int, 33);
pub const SENSOR_REMOTE = @as(c_int, 1) << @as(c_int, 31);
pub const SENSOR_PERSIST = @as(c_int, 1) << @as(c_int, 30);
pub const __INCLUDE_SYS_IOCTL_H = "";
pub const __CLANG_INTTYPES_H = "";
pub const __INCLUDE_INTTYPES_H = "";
pub const __STDDEF_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_size_t = "";
pub const __need_wchar_t = "";
pub const __need_NULL = "";
pub const __need_STDDEF_H_misc = "";
pub const _PTRDIFF_T = "";
pub const _SIZE_T = "";
pub const _WCHAR_T = "";
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const __ARCH_RISCV_INCLUDE_INTTYPES_H = "";
pub const _PRI32PREFIX = "l";
pub const _PRI64PREFIX = "ll";
pub const _PRIPTRPREFIX = "";
pub const _SCN32PREFIX = "l";
pub const _SCN64PREFIX = "ll";
pub const _SCNPTRPREFIX = "";
pub const PRId8 = "d";
pub const PRId16 = "d";
pub const PRId32 = _PRI32PREFIX ++ "d";
pub const PRId64 = _PRI64PREFIX ++ "d";
pub const PRIdPTR = _PRIPTRPREFIX ++ "d";
pub const PRIi8 = "i";
pub const PRIi16 = "i";
pub const PRIi32 = _PRI32PREFIX ++ "i";
pub const PRIi64 = _PRI64PREFIX ++ "i";
pub const PRIiPTR = _PRIPTRPREFIX ++ "i";
pub const PRIo8 = "o";
pub const PRIo16 = "o";
pub const PRIo32 = _PRI32PREFIX ++ "o";
pub const PRIo64 = _PRI64PREFIX ++ "o";
pub const PRIoPTR = _PRIPTRPREFIX ++ "o";
pub const PRIu8 = "u";
pub const PRIu16 = "u";
pub const PRIu32 = _PRI32PREFIX ++ "u";
pub const PRIu64 = _PRI64PREFIX ++ "u";
pub const PRIuPTR = _PRIPTRPREFIX ++ "u";
pub const PRIx8 = "x";
pub const PRIx16 = "x";
pub const PRIx32 = _PRI32PREFIX ++ "x";
pub const PRIx64 = _PRI64PREFIX ++ "x";
pub const PRIxPTR = _PRIPTRPREFIX ++ "x";
pub const PRIX8 = "X";
pub const PRIX16 = "X";
pub const PRIX32 = _PRI32PREFIX ++ "X";
pub const PRIX64 = _PRI64PREFIX ++ "X";
pub const PRIXPTR = _PRIPTRPREFIX ++ "X";
pub const SCNd8 = "hhd";
pub const SCNd16 = "hd";
pub const SCNd32 = _SCN32PREFIX ++ "d";
pub const SCNd64 = _SCN64PREFIX ++ "d";
pub const SCNdPTR = _SCNPTRPREFIX ++ "d";
pub const SCNi8 = "hhi";
pub const SCNi16 = "hi";
pub const SCNi32 = _SCN32PREFIX ++ "i";
pub const SCNi64 = _SCN64PREFIX ++ "i";
pub const SCNiPTR = _SCNPTRPREFIX ++ "i";
pub const SCNo8 = "hho";
pub const SCNo16 = "ho";
pub const SCNo32 = _SCN32PREFIX ++ "o";
pub const SCNo64 = _SCN64PREFIX ++ "o";
pub const SCNoPTR = _SCNPTRPREFIX ++ "o";
pub const SCNu8 = "hhu";
pub const SCNu16 = "hu";
pub const SCNu32 = _SCN32PREFIX ++ "u";
pub const SCNu64 = _SCN64PREFIX ++ "u";
pub const SCNuPTR = _SCNPTRPREFIX ++ "u";
pub const SCNx8 = "hhx";
pub const SCNx16 = "hx";
pub const SCNx32 = _SCN32PREFIX ++ "x";
pub const SCNx64 = _SCN64PREFIX ++ "x";
pub const SCNxPTR = _SCNPTRPREFIX ++ "x";
pub const PRIdLEAST8 = PRId8;
pub const PRIdLEAST16 = PRId16;
pub const PRIdLEAST32 = PRId32;
pub const PRIdLEAST64 = PRId64;
pub const PRIdFAST8 = PRId8;
pub const PRIdFAST16 = PRId16;
pub const PRIdFAST32 = PRId32;
pub const PRIdFAST64 = PRId64;
pub const PRIiLEAST8 = PRIi8;
pub const PRIiLEAST16 = PRIi16;
pub const PRIiLEAST32 = PRIi32;
pub const PRIiLEAST64 = PRIi64;
pub const PRIiFAST8 = PRIi8;
pub const PRIiFAST16 = PRIi16;
pub const PRIiFAST32 = PRIi32;
pub const PRIiFAST64 = PRIi64;
pub const PRIoLEAST8 = PRIo8;
pub const PRIoLEAST16 = PRIo16;
pub const PRIoLEAST32 = PRIo32;
pub const PRIoLEAST64 = PRIo64;
pub const PRIoFAST8 = PRIo8;
pub const PRIoFAST16 = PRIo16;
pub const PRIoFAST32 = PRIo32;
pub const PRIoFAST64 = PRIo64;
pub const PRIuLEAST8 = PRIu8;
pub const PRIuLEAST16 = PRIu16;
pub const PRIuLEAST32 = PRIu32;
pub const PRIuLEAST64 = PRIu64;
pub const PRIuFAST8 = PRIu8;
pub const PRIuFAST16 = PRIu16;
pub const PRIuFAST32 = PRIu32;
pub const PRIuFAST64 = PRIu64;
pub const PRIxLEAST8 = PRIx8;
pub const PRIxLEAST16 = PRIx16;
pub const PRIxLEAST32 = PRIx32;
pub const PRIxLEAST64 = PRIx64;
pub const PRIxFAST8 = PRIx8;
pub const PRIxFAST16 = PRIx16;
pub const PRIxFAST32 = PRIx32;
pub const PRIxFAST64 = PRIx64;
pub const PRIXLEAST8 = PRIX8;
pub const PRIXLEAST16 = PRIX16;
pub const PRIXLEAST32 = PRIX32;
pub const PRIXLEAST64 = PRIX64;
pub const PRIXFAST8 = PRIX8;
pub const PRIXFAST16 = PRIX16;
pub const PRIXFAST32 = PRIX32;
pub const PRIXFAST64 = PRIX64;
pub const SCNdLEAST8 = SCNd8;
pub const SCNdLEAST16 = SCNd16;
pub const SCNdLEAST32 = SCNd32;
pub const SCNdLEAST64 = SCNd64;
pub const SCNdFAST8 = SCNd8;
pub const SCNdFAST16 = SCNd16;
pub const SCNdFAST32 = SCNd32;
pub const SCNdFAST64 = SCNd64;
pub const SCNiLEAST8 = SCNi8;
pub const SCNiLEAST16 = SCNi16;
pub const SCNiLEAST32 = SCNi32;
pub const SCNiLEAST64 = SCNi64;
pub const SCNiFAST8 = SCNi8;
pub const SCNiFAST16 = SCNi16;
pub const SCNiFAST32 = SCNi32;
pub const SCNiFAST64 = SCNi64;
pub const SCNoLEAST8 = SCNo8;
pub const SCNoLEAST16 = SCNo16;
pub const SCNoLEAST32 = SCNo32;
pub const SCNoLEAST64 = SCNo64;
pub const SCNoFAST8 = SCNo8;
pub const SCNoFAST16 = SCNo16;
pub const SCNoFAST32 = SCNo32;
pub const SCNoFAST64 = SCNo64;
pub const SCNuLEAST8 = SCNu8;
pub const SCNuLEAST16 = SCNu16;
pub const SCNuLEAST32 = SCNu32;
pub const SCNuLEAST64 = SCNu64;
pub const SCNuFAST8 = SCNu8;
pub const SCNuFAST16 = SCNu16;
pub const SCNuFAST32 = SCNu32;
pub const SCNuFAST64 = SCNu64;
pub const SCNxLEAST8 = SCNx8;
pub const SCNxLEAST16 = SCNx16;
pub const SCNxLEAST32 = SCNx32;
pub const SCNxLEAST64 = SCNx64;
pub const SCNxFAST8 = SCNx8;
pub const SCNxFAST16 = SCNx16;
pub const SCNxFAST32 = SCNx32;
pub const SCNxFAST64 = SCNx64;
pub const PRIdMAX = "jd";
pub const PRIiMAX = "ji";
pub const PRIoMAX = "jo";
pub const PRIuMAX = "ju";
pub const PRIxMAX = "jx";
pub const PRIXMAX = "jX";
pub const SCNdMAX = "jd";
pub const SCNiMAX = "ji";
pub const SCNoMAX = "jo";
pub const SCNuMAX = "ju";
pub const SCNxMAX = "jx";
pub const PRIdOFF = PRId32;
pub const PRIiOFF = PRIi32;
pub const PRIoOFF = PRIo32;
pub const PRIuOFF = PRIu32;
pub const PRIxOFF = PRIx32;
pub const PRIXOFF = PRIX32;
pub const SCNdOFF = SCNd32;
pub const SCNiOFF = SCNi32;
pub const SCNoOFF = SCNo32;
pub const SCNuOFF = SCNu32;
pub const SCNxOFF = SCNx32;
pub const __INCLUDE_STDLIB_H = "";
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const RAND_MAX = INT_MAX;
pub const MB_CUR_MAX = @as(c_int, 4);
pub const environ = NULL;
pub inline fn strtof_l(s: anytype, e: anytype, l: anytype) @TypeOf(strtof(s, e)) {
    _ = l;
    return strtof(s, e);
}
pub inline fn strtod_l(s: anytype, e: anytype, l: anytype) @TypeOf(strtod(s, e)) {
    _ = l;
    return strtod(s, e);
}
pub inline fn strtold_l(s: anytype, e: anytype, l: anytype) @TypeOf(strtold(s, e)) {
    _ = l;
    return strtold(s, e);
}
pub inline fn strtoll_l(s: anytype, e: anytype, b: anytype, l: anytype) @TypeOf(strtoll(s, e, b)) {
    _ = l;
    return strtoll(s, e, b);
}
pub inline fn strtoull_l(s: anytype, e: anytype, b: anytype, l: anytype) @TypeOf(strtoull(s, e, b)) {
    _ = l;
    return strtoull(s, e, b);
}
pub inline fn srandom(s: anytype) @TypeOf(srand(s)) {
    return srand(s);
}
pub const __INCLUDE_STDIO_H = "";
pub const __INCLUDE_NUTTX_SCHED_H = "";
pub const __INCLUDE_QUEUE_H = "";
pub inline fn sq_next(p: anytype) @TypeOf(p.*.flink) {
    return p.*.flink;
}
pub inline fn dq_next(p: anytype) @TypeOf(p.*.flink) {
    return p.*.flink;
}
pub inline fn dq_prev(p: anytype) @TypeOf(p.*.blink) {
    return p.*.blink;
}
pub inline fn sq_empty(q: anytype) @TypeOf(q.*.head == NULL) {
    return q.*.head == NULL;
}
pub inline fn dq_empty(q: anytype) @TypeOf(q.*.head == NULL) {
    return q.*.head == NULL;
}
pub inline fn sq_peek(q: anytype) @TypeOf(q.*.head) {
    return q.*.head;
}
pub inline fn dq_peek(q: anytype) @TypeOf(q.*.head) {
    return q.*.head;
}
pub inline fn sq_tail(q: anytype) @TypeOf(q.*.tail) {
    return q.*.tail;
}
pub inline fn dq_tail(q: anytype) @TypeOf(q.*.tail) {
    return q.*.tail;
}
pub const __INCLUDE_SCHED_H = "";
pub const __INCLUDE_STRINGS_H = "";
pub const __INCLUDE_STRING_H = "";
pub inline fn strcoll_l(s1: anytype, s2: anytype, l: anytype) @TypeOf(strcoll(s1, s2)) {
    _ = l;
    return strcoll(s1, s2);
}
pub inline fn strerror_l(e: anytype, l: anytype) @TypeOf(strerror(e)) {
    _ = l;
    return strerror(e);
}
pub inline fn strxfrm_l(s1: anytype, s2: anytype, n: anytype, l: anytype) @TypeOf(strxfrm(s1, s2, n)) {
    _ = l;
    return strxfrm(s1, s2, n);
}
pub inline fn bcmp(b1: anytype, b2: anytype, len: anytype) @TypeOf(memcmp(b1, b2, @import("std").zig.c_translation.cast(usize, len))) {
    return memcmp(b1, b2, @import("std").zig.c_translation.cast(usize, len));
}
pub inline fn bcopy(b1: anytype, b2: anytype, len: anytype) @TypeOf(memmove(b2, b1, len)) {
    return memmove(b2, b1, len);
}
pub inline fn bzero(s: anytype, n: anytype) @TypeOf(memset(s, @as(c_int, 0), n)) {
    return memset(s, @as(c_int, 0), n);
}
pub inline fn strcasecmp_l(s1: anytype, s2: anytype, l: anytype) @TypeOf(strcasecmp(s1, s2)) {
    _ = l;
    return strcasecmp(s1, s2);
}
pub inline fn strncasecmp_l(s1: anytype, s2: anytype, n: anytype, l: anytype) @TypeOf(strncasecmp(s1, s2, n)) {
    _ = l;
    return strncasecmp(s1, s2, n);
}
pub const SCHED_FIFO = @as(c_int, 1);
pub const SCHED_RR = @as(c_int, 2);
pub const SCHED_SPORADIC = @as(c_int, 3);
pub const SCHED_OTHER = @as(c_int, 4);
pub const SS_REPL_MAX = CONFIG_SCHED_SPORADIC_MAXREPL;
pub const TASK_CANCEL_ENABLE = @as(c_int, 0);
pub const TASK_CANCEL_DISABLE = @as(c_int, 1);
pub const TASK_CANCEL_DEFERRED = @as(c_int, 0);
pub const TASK_CANCEL_ASYNCHRONOUS = @as(c_int, 1);
pub const PTHREAD_KEYS_MAX = CONFIG_TLS_NELEM;
pub const __INCLUDE_SIGNAL_H = "";
pub const __INCLUDE_PTHREAD_H = "";
pub const __SIGSET_T_DEFINED = @as(c_int, 1);
pub const __SIGINFO_T_DEFINED = @as(c_int, 1);
pub const _POSIX_THREADS = "";
pub const _POSIX_THREAD_ATTR_STACKSIZE = "";
pub const PTHREAD_PROCESS_PRIVATE = @as(c_int, 0);
pub const PTHREAD_PROCESS_SHARED = @as(c_int, 1);
pub const PTHREAD_MUTEX_NORMAL = @as(c_int, 0);
pub const PTHREAD_MUTEX_ERRORCHECK = @as(c_int, 1);
pub const PTHREAD_MUTEX_RECURSIVE = @as(c_int, 2);
pub const PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL;
pub const PTHREAD_STACK_MIN = CONFIG_PTHREAD_STACK_MIN;
pub const PTHREAD_STACK_DEFAULT = CONFIG_PTHREAD_STACK_DEFAULT;
pub const PTHREAD_INHERIT_SCHED = @as(c_int, 0);
pub const PTHREAD_EXPLICIT_SCHED = @as(c_int, 1);
pub const PTHREAD_CREATE_JOINABLE = @as(c_int, 0);
pub const PTHREAD_CREATE_DETACHED = @as(c_int, 1);
pub const PTHREAD_DEFAULT_PRIORITY = @as(c_int, 100);
pub const PTHREAD_CANCEL_ENABLE = @as(c_int, 0);
pub const PTHREAD_CANCEL_DISABLE = @as(c_int, 1);
pub const PTHREAD_CANCEL_DEFERRED = @as(c_int, 0);
pub const PTHREAD_CANCEL_ASYNCHRONOUS = @as(c_int, 1);
pub const PTHREAD_ONCE_INIT = @"false";
pub const PTHREAD_BARRIER_SERIAL_THREAD = @as(c_int, 0x1000);
pub const PTHREAD_PRIO_NONE = SEM_PRIO_NONE;
pub const PTHREAD_PRIO_INHERIT = SEM_PRIO_INHERIT;
pub const PTHREAD_PRIO_PROTECT = SEM_PRIO_PROTECT;
pub const PTHREAD_MUTEX_STALLED = @as(c_int, 0);
pub const PTHREAD_MUTEX_ROBUST = @as(c_int, 1);
pub const _PTHREAD_MFLAGS_ROBUST = @as(c_int, 1) << @as(c_int, 0);
pub const _PTHREAD_MFLAGS_INCONSISTENT = @as(c_int, 1) << @as(c_int, 1);
pub const _PTHREAD_MFLAGS_NRECOVERABLE = @as(c_int, 1) << @as(c_int, 2);
pub const __PTHREAD_KEY_T_DEFINED = @as(c_int, 1);
pub const __PTHREAD_ADDR_T_DEFINED = @as(c_int, 1);
pub const __PTHREAD_ATTR_T_DEFINED = @as(c_int, 1);
pub const __PTHREAD_T_DEFINED = @as(c_int, 1);
pub const __PTHREAD_CONDATTR_T_DEFINED = @as(c_int, 1);
pub const __PTHREAD_COND_T_DEFINED = @as(c_int, 1);
pub const __PTHREAD_MUTEXATTR_T_DEFINED = @as(c_int, 1);
pub const __PTHREAD_MUTEX_T_DEFINED = @as(c_int, 1);
pub const __PTHREAD_BARRIERATTR_T_DEFINED = @as(c_int, 1);
pub const __PTHREAD_BARRIER_T_DEFINED = @as(c_int, 1);
pub const __PTHREAD_ONCE_T_DEFINED = @as(c_int, 1);
pub inline fn pthread_self() pthread_t {
    return @import("std").zig.c_translation.cast(pthread_t, getpid());
}
pub inline fn pthread_equal(t1: anytype, t2: anytype) @TypeOf(t1 == t2) {
    return t1 == t2;
}
pub const NULL_SIGNAL_SET = @import("std").zig.c_translation.cast(sigset_t, @as(c_int, 0x00000000));
pub const ALL_SIGNAL_SET = @import("std").zig.c_translation.cast(sigset_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffffffff, .hexadecimal));
pub const MIN_SIGNO = @as(c_int, 1);
pub const MAX_SIGNO = @as(c_int, 31);
pub inline fn GOOD_SIGNO(s: anytype) @TypeOf(@import("std").zig.c_translation.cast(c_uint, s) <= MAX_SIGNO) {
    return @import("std").zig.c_translation.cast(c_uint, s) <= MAX_SIGNO;
}
pub inline fn SIGNO2SET(s: anytype) @TypeOf(@import("std").zig.c_translation.cast(sigset_t, @as(c_int, 1)) << s) {
    return @import("std").zig.c_translation.cast(sigset_t, @as(c_int, 1)) << s;
}
pub const SIGRTMIN = MIN_SIGNO;
pub const SIGRTMAX = MAX_SIGNO;
pub const SIGUSR1 = CONFIG_SIG_SIGUSR1;
pub const SIGUSR2 = CONFIG_SIG_SIGUSR2;
pub const SIGALRM = CONFIG_SIG_SIGALRM;
pub const SIGSTOP = @as(c_int, 6);
pub const SIGTSTP = @as(c_int, 7);
pub const SIGCONT = @as(c_int, 8);
pub const SIGKILL = @as(c_int, 9);
pub const SIGINT = @as(c_int, 10);
pub const SIGQUIT = @as(c_int, 11);
pub const SIGTERM = @as(c_int, 12);
pub const SIGPIPE = CONFIG_SIG_PIPE;
pub const SIGHUP = CONFIG_SIG_HUP;
pub const SIGTTIN = CONFIG_SIG_TTIN;
pub const SIGCONDTIMEDOUT = CONFIG_SIG_SIGCONDTIMEDOUT;
pub const SIGWORK = CONFIG_SIG_SIGWORK;
pub const SIG_BLOCK = @as(c_int, 1);
pub const SIG_UNBLOCK = @as(c_int, 2);
pub const SIG_SETMASK = @as(c_int, 3);
pub const SA_NOCLDSTOP = @as(c_int, 1) << @as(c_int, 0);
pub const SA_SIGINFO = @as(c_int, 1) << @as(c_int, 1);
pub const SA_NOCLDWAIT = @as(c_int, 1) << @as(c_int, 2);
pub const SA_ONSTACK = @as(c_int, 1) << @as(c_int, 3);
pub const SA_RESTART = @as(c_int, 1) << @as(c_int, 4);
pub const SA_NODEFER = @as(c_int, 1) << @as(c_int, 5);
pub const SA_RESETHAND = @as(c_int, 1) << @as(c_int, 6);
pub const SI_USER = @as(c_int, 0);
pub const SI_QUEUE = @as(c_int, 1);
pub const SI_TIMER = @as(c_int, 2);
pub const SI_ASYNCIO = @as(c_int, 3);
pub const SI_MESGQ = @as(c_int, 4);
pub const CLD_EXITED = @as(c_int, 5);
pub const CLD_KILLED = @as(c_int, 6);
pub const CLD_DUMPED = @as(c_int, 7);
pub const CLD_TRAPPED = @as(c_int, 8);
pub const CLD_STOPPED = @as(c_int, 9);
pub const CLD_CONTINUED = @as(c_int, 10);
pub const SIGEV_NONE = @as(c_int, 0);
pub const SIGEV_SIGNAL = @as(c_int, 1);
pub const SIGEV_THREAD = @as(c_int, 3);
pub const SIG_ERR = @import("std").zig.c_translation.cast(_sa_handler_t, -@as(c_int, 1));
pub const SIG_IGN = @import("std").zig.c_translation.cast(_sa_handler_t, @as(c_int, 0));
pub const SIG_DFL = @import("std").zig.c_translation.cast(_sa_handler_t, @as(c_int, 0));
pub const SIG_HOLD = @import("std").zig.c_translation.cast(_sa_handler_t, @as(c_int, 1));
pub const __INCLUDE_NUTTX_IRQ_H = "";
pub const __ARCH_RISCV_INCLUDE_IRQ_H = "";
pub const __ARCH_RISCV_INCLUDE_CSR_H = "";
pub const CSR_USTATUS = @as(c_int, 0x000);
pub const CSR_UIE = @as(c_int, 0x004);
pub const CSR_UTVEC = @as(c_int, 0x005);
pub const CSR_USCRATCH = @as(c_int, 0x040);
pub const CSR_UEPC = @as(c_int, 0x041);
pub const CSR_UCAUSE = @as(c_int, 0x042);
pub const CSR_UTVAL = @as(c_int, 0x043);
pub const CSR_UIP = @as(c_int, 0x044);
pub const CSR_FFLAGS = @as(c_int, 0x001);
pub const CSR_FRM = @as(c_int, 0x002);
pub const CSR_FCSR = @as(c_int, 0x003);
pub const CSR_CYCLE = @as(c_int, 0xc00);
pub const CSR_TIME = @as(c_int, 0xc01);
pub const CSR_INSTRET = @as(c_int, 0xc02);
pub const CSR_HPCOUNTER3 = @as(c_int, 0xc03);
pub const CSR_HPCOUNTER4 = @as(c_int, 0xc04);
pub const CSR_HPCOUNTER5 = @as(c_int, 0xc05);
pub const CSR_HPCOUNTER6 = @as(c_int, 0xc06);
pub const CSR_HPCOUNTER7 = @as(c_int, 0xc07);
pub const CSR_HPCOUNTER8 = @as(c_int, 0xc08);
pub const CSR_HPCOUNTER9 = @as(c_int, 0xc09);
pub const CSR_HPCOUNTER10 = @as(c_int, 0xc0a);
pub const CSR_HPCOUNTER11 = @as(c_int, 0xc0b);
pub const CSR_HPCOUNTER12 = @as(c_int, 0xc0c);
pub const CSR_HPCOUNTER13 = @as(c_int, 0xc0d);
pub const CSR_HPCOUNTER14 = @as(c_int, 0xc0e);
pub const CSR_HPCOUNTER15 = @as(c_int, 0xc0f);
pub const CSR_HPCOUNTER16 = @as(c_int, 0xc10);
pub const CSR_HPCOUNTER17 = @as(c_int, 0xc11);
pub const CSR_HPCOUNTER18 = @as(c_int, 0xc12);
pub const CSR_HPCOUNTER19 = @as(c_int, 0xc13);
pub const CSR_HPCOUNTER20 = @as(c_int, 0xc14);
pub const CSR_HPCOUNTER21 = @as(c_int, 0xc15);
pub const CSR_HPCOUNTER22 = @as(c_int, 0xc16);
pub const CSR_HPCOUNTER24 = @as(c_int, 0xc17);
pub const CSR_HPCOUNTER25 = @as(c_int, 0xc18);
pub const CSR_HPCOUNTER26 = @as(c_int, 0xc19);
pub const CSR_HPCOUNTER27 = @as(c_int, 0xc1a);
pub const CSR_HPCOUNTER28 = @as(c_int, 0xc1b);
pub const CSR_HPCOUNTER29 = @as(c_int, 0xc1c);
pub const CSR_HPCOUNTER30 = @as(c_int, 0xc1d);
pub const CSR_HPCOUNTER31 = @as(c_int, 0xc1f);
pub const CSR_CYCLEH = @as(c_int, 0xc80);
pub const CSR_TIMEH = @as(c_int, 0xc81);
pub const CSR_INSTRETH = @as(c_int, 0xc82);
pub const CSR_HPCOUNTER3H = @as(c_int, 0xc83);
pub const CSR_HPCOUNTER4H = @as(c_int, 0xc84);
pub const CSR_HPCOUNTER5H = @as(c_int, 0xc85);
pub const CSR_HPCOUNTER6H = @as(c_int, 0xc86);
pub const CSR_HPCOUNTER7H = @as(c_int, 0xc87);
pub const CSR_HPCOUNTER8H = @as(c_int, 0xc88);
pub const CSR_HPCOUNTER9H = @as(c_int, 0xc89);
pub const CSR_HPCOUNTER10H = @as(c_int, 0xc8a);
pub const CSR_HPCOUNTER11H = @as(c_int, 0xc8b);
pub const CSR_HPCOUNTER12H = @as(c_int, 0xc8c);
pub const CSR_HPCOUNTER13H = @as(c_int, 0xc8d);
pub const CSR_HPCOUNTER14H = @as(c_int, 0xc8e);
pub const CSR_HPCOUNTER15H = @as(c_int, 0xc8f);
pub const CSR_HPCOUNTER16H = @as(c_int, 0xc90);
pub const CSR_HPCOUNTER17H = @as(c_int, 0xc91);
pub const CSR_HPCOUNTER18H = @as(c_int, 0xc92);
pub const CSR_HPCOUNTER19H = @as(c_int, 0xc93);
pub const CSR_HPCOUNTER20H = @as(c_int, 0xc94);
pub const CSR_HPCOUNTER21H = @as(c_int, 0xc95);
pub const CSR_HPCOUNTER22H = @as(c_int, 0xc96);
pub const CSR_HPCOUNTER24H = @as(c_int, 0xc97);
pub const CSR_HPCOUNTER25H = @as(c_int, 0xc98);
pub const CSR_HPCOUNTER26H = @as(c_int, 0xc99);
pub const CSR_HPCOUNTER27H = @as(c_int, 0xc9a);
pub const CSR_HPCOUNTER28H = @as(c_int, 0xc9b);
pub const CSR_HPCOUNTER29H = @as(c_int, 0xc9c);
pub const CSR_HPCOUNTER30H = @as(c_int, 0xc9d);
pub const CSR_HPCOUNTER31H = @as(c_int, 0xc9f);
pub const CSR_SSTATUS = @as(c_int, 0x100);
pub const CSR_SEDELEG = @as(c_int, 0x102);
pub const CSR_SIDELEG = @as(c_int, 0x103);
pub const CSR_SIE = @as(c_int, 0x104);
pub const CSR_STVEC = @as(c_int, 0x105);
pub const CSR_SCOUNTEREN = @as(c_int, 0x106);
pub const CSR_SSCRATCH = @as(c_int, 0x140);
pub const CSR_SEPC = @as(c_int, 0x141);
pub const CSR_SCAUSE = @as(c_int, 0x142);
pub const CSR_STVAL = @as(c_int, 0x143);
pub const CSR_SIP = @as(c_int, 0x144);
pub const CSR_SATP = @as(c_int, 0x180);
pub const CSR_MVENDORID = @as(c_int, 0xf11);
pub const CSR_MARCHID = @as(c_int, 0xf12);
pub const CSR_MIMPID = @as(c_int, 0xf13);
pub const CSR_MHARTID = @as(c_int, 0xf14);
pub const CSR_MSTATUS = @as(c_int, 0x300);
pub const CSR_MISA = @as(c_int, 0x301);
pub const CSR_MEDELEG = @as(c_int, 0x302);
pub const CSR_MIDELEG = @as(c_int, 0x303);
pub const CSR_MIE = @as(c_int, 0x304);
pub const CSR_MTVEC = @as(c_int, 0x305);
pub const CSR_MCOUNTEREN = @as(c_int, 0x306);
pub const CSR_MSCRATCH = @as(c_int, 0x340);
pub const CSR_MEPC = @as(c_int, 0x341);
pub const CSR_MCAUSE = @as(c_int, 0x342);
pub const CSR_MTVAL = @as(c_int, 0x343);
pub const CSR_MIP = @as(c_int, 0x344);
pub const CSR_PMPCFG0 = @as(c_int, 0x3a0);
pub const CSR_PMPCFG1 = @as(c_int, 0x3a1);
pub const CSR_PMPCFG2 = @as(c_int, 0x3a2);
pub const CSR_PMPCFG3 = @as(c_int, 0x3a3);
pub const CSR_PMPADDR0 = @as(c_int, 0x3b0);
pub const CSR_PMPADDR1 = @as(c_int, 0x3b1);
pub const CSR_PMPADDR2 = @as(c_int, 0x3b2);
pub const CSR_PMPADDR3 = @as(c_int, 0x3b3);
pub const CSR_PMPADDR4 = @as(c_int, 0x3b4);
pub const CSR_PMPADDR5 = @as(c_int, 0x3b5);
pub const CSR_PMPADDR6 = @as(c_int, 0x3b6);
pub const CSR_PMPADDR7 = @as(c_int, 0x3b7);
pub const CSR_PMPADDR8 = @as(c_int, 0x3b8);
pub const CSR_PMPADDR9 = @as(c_int, 0x3b9);
pub const CSR_PMPADDR10 = @as(c_int, 0x3ba);
pub const CSR_PMPADDR11 = @as(c_int, 0x3bb);
pub const CSR_PMPADDR12 = @as(c_int, 0x3bc);
pub const CSR_PMPADDR13 = @as(c_int, 0x3bd);
pub const CSR_PMPADDR14 = @as(c_int, 0x3be);
pub const CSR_PMPADDR15 = @as(c_int, 0x3bf);
pub const CSR_MCYCLE = @as(c_int, 0xb00);
pub const CSR_MINSTRET = @as(c_int, 0xb02);
pub const CSR_MHPMCOUNTER3 = @as(c_int, 0xb03);
pub const CSR_MHPMCOUNTER4 = @as(c_int, 0xb04);
pub const CSR_MHPMCOUNTER5 = @as(c_int, 0xb05);
pub const CSR_MHPMCOUNTER6 = @as(c_int, 0xb06);
pub const CSR_MHPMCOUNTER7 = @as(c_int, 0xb07);
pub const CSR_MHPMCOUNTER8 = @as(c_int, 0xb08);
pub const CSR_MHPMCOUNTER9 = @as(c_int, 0xb09);
pub const CSR_MHPMCOUNTER10 = @as(c_int, 0xb0a);
pub const CSR_MHPMCOUNTER11 = @as(c_int, 0xb0b);
pub const CSR_MHPMCOUNTER12 = @as(c_int, 0xb0c);
pub const CSR_MHPMCOUNTER13 = @as(c_int, 0xb0d);
pub const CSR_MHPMCOUNTER14 = @as(c_int, 0xb0e);
pub const CSR_MHPMCOUNTER15 = @as(c_int, 0xb0f);
pub const CSR_MHPMCOUNTER16 = @as(c_int, 0xb10);
pub const CSR_MHPMCOUNTER17 = @as(c_int, 0xb11);
pub const CSR_MHPMCOUNTER18 = @as(c_int, 0xb12);
pub const CSR_MHPMCOUNTER19 = @as(c_int, 0xb13);
pub const CSR_MHPMCOUNTER20 = @as(c_int, 0xb14);
pub const CSR_MHPMCOUNTER21 = @as(c_int, 0xb15);
pub const CSR_MHPMCOUNTER22 = @as(c_int, 0xb16);
pub const CSR_MHPMCOUNTER23 = @as(c_int, 0xb17);
pub const CSR_MHPMCOUNTER24 = @as(c_int, 0xb18);
pub const CSR_MHPMCOUNTER25 = @as(c_int, 0xb19);
pub const CSR_MHPMCOUNTER26 = @as(c_int, 0xb1a);
pub const CSR_MHPMCOUNTER27 = @as(c_int, 0xb1b);
pub const CSR_MHPMCOUNTER28 = @as(c_int, 0xb1c);
pub const CSR_MHPMCOUNTER29 = @as(c_int, 0xb1d);
pub const CSR_MHPMCOUNTER30 = @as(c_int, 0xb1e);
pub const CSR_MHPMCOUNTER31 = @as(c_int, 0xb1f);
pub const CSR_MCYCLEH = @as(c_int, 0xb80);
pub const CSR_MINSTRETH = @as(c_int, 0xb82);
pub const CSR_MHPMCOUNTER3H = @as(c_int, 0xb83);
pub const CSR_MHPMCOUNTER4H = @as(c_int, 0xb84);
pub const CSR_MHPMCOUNTER5H = @as(c_int, 0xb85);
pub const CSR_MHPMCOUNTER6H = @as(c_int, 0xb86);
pub const CSR_MHPMCOUNTER7H = @as(c_int, 0xb87);
pub const CSR_MHPMCOUNTER8H = @as(c_int, 0xb88);
pub const CSR_MHPMCOUNTER9H = @as(c_int, 0xb89);
pub const CSR_MHPMCOUNTER10H = @as(c_int, 0xb8a);
pub const CSR_MHPMCOUNTER11H = @as(c_int, 0xb8b);
pub const CSR_MHPMCOUNTER12H = @as(c_int, 0xb8c);
pub const CSR_MHPMCOUNTER13H = @as(c_int, 0xb8d);
pub const CSR_MHPMCOUNTER14H = @as(c_int, 0xb8e);
pub const CSR_MHPMCOUNTER15H = @as(c_int, 0xb8f);
pub const CSR_MHPMCOUNTER16H = @as(c_int, 0xb90);
pub const CSR_MHPMCOUNTER17H = @as(c_int, 0xb91);
pub const CSR_MHPMCOUNTER18H = @as(c_int, 0xb92);
pub const CSR_MHPMCOUNTER19H = @as(c_int, 0xb93);
pub const CSR_MHPMCOUNTER20H = @as(c_int, 0xb94);
pub const CSR_MHPMCOUNTER21H = @as(c_int, 0xb95);
pub const CSR_MHPMCOUNTER22H = @as(c_int, 0xb96);
pub const CSR_MHPMCOUNTER23H = @as(c_int, 0xb97);
pub const CSR_MHPMCOUNTER24H = @as(c_int, 0xb98);
pub const CSR_MHPMCOUNTER25H = @as(c_int, 0xb99);
pub const CSR_MHPMCOUNTER26H = @as(c_int, 0xb9a);
pub const CSR_MHPMCOUNTER27H = @as(c_int, 0xb9b);
pub const CSR_MHPMCOUNTER28H = @as(c_int, 0xb9c);
pub const CSR_MHPMCOUNTER29H = @as(c_int, 0xb9d);
pub const CSR_MHPMCOUNTER30H = @as(c_int, 0xb9e);
pub const CSR_MHPMCOUNTER31H = @as(c_int, 0xb9f);
pub const CSR_MPHEVENT3 = @as(c_int, 0x323);
pub const CSR_MPHEVENT4 = @as(c_int, 0x324);
pub const CSR_MPHEVENT5 = @as(c_int, 0x325);
pub const CSR_MPHEVENT6 = @as(c_int, 0x326);
pub const CSR_MPHEVENT7 = @as(c_int, 0x327);
pub const CSR_MPHEVENT8 = @as(c_int, 0x328);
pub const CSR_MPHEVENT9 = @as(c_int, 0x329);
pub const CSR_MPHEVENT10 = @as(c_int, 0x32a);
pub const CSR_MPHEVENT11 = @as(c_int, 0x32b);
pub const CSR_MPHEVENT12 = @as(c_int, 0x32c);
pub const CSR_MPHEVENT13 = @as(c_int, 0x32d);
pub const CSR_MPHEVENT14 = @as(c_int, 0x32e);
pub const CSR_MPHEVENT15 = @as(c_int, 0x32f);
pub const CSR_MPHEVENT16 = @as(c_int, 0x330);
pub const CSR_MPHEVENT17 = @as(c_int, 0x331);
pub const CSR_MPHEVENT18 = @as(c_int, 0x332);
pub const CSR_MPHEVENT19 = @as(c_int, 0x333);
pub const CSR_MPHEVENT20 = @as(c_int, 0x334);
pub const CSR_MPHEVENT21 = @as(c_int, 0x335);
pub const CSR_MPHEVENT22 = @as(c_int, 0x336);
pub const CSR_MPHEVENT23 = @as(c_int, 0x337);
pub const CSR_MPHEVENT24 = @as(c_int, 0x338);
pub const CSR_MPHEVENT25 = @as(c_int, 0x339);
pub const CSR_MPHEVENT26 = @as(c_int, 0x33a);
pub const CSR_MPHEVENT27 = @as(c_int, 0x33b);
pub const CSR_MPHEVENT28 = @as(c_int, 0x33c);
pub const CSR_MPHEVENT29 = @as(c_int, 0x33d);
pub const CSR_MPHEVENT30 = @as(c_int, 0x33e);
pub const CSR_MPHEVENT31 = @as(c_int, 0x33f);
pub const CSR_TSELECT = @as(c_int, 0x7a0);
pub const CSR_TDATA1 = @as(c_int, 0x7a1);
pub const CSR_TDATA2 = @as(c_int, 0x7a2);
pub const CSR_TDATA3 = @as(c_int, 0x7a3);
pub const CSR_DCSR = @as(c_int, 0x7b0);
pub const CSR_DPC = @as(c_int, 0x7b1);
pub const CSR_DSCRATCH = @as(c_int, 0x7b2);
pub const MSTATUS_UIE = @as(c_int, 0x1) << @as(c_int, 0);
pub const MSTATUS_SIE = @as(c_int, 0x1) << @as(c_int, 1);
pub const MSTATUS_MIE = @as(c_int, 0x1) << @as(c_int, 3);
pub const MSTATUS_SPIE = @as(c_int, 0x1) << @as(c_int, 5);
pub const MSTATUS_MPIE = @as(c_int, 0x1) << @as(c_int, 7);
pub const MSTATUS_SPPU = @as(c_int, 0x0) << @as(c_int, 8);
pub const MSTATUS_SPPS = @as(c_int, 0x1) << @as(c_int, 8);
pub const MSTATUS_MPPU = @as(c_int, 0x0) << @as(c_int, 11);
pub const MSTATUS_MPPS = @as(c_int, 0x1) << @as(c_int, 11);
pub const MSTATUS_MPPM = @as(c_int, 0x3) << @as(c_int, 11);
pub const MSTATUS_MPP_MASK = @as(c_int, 0x3) << @as(c_int, 11);
pub const MSTATUS_FS = @as(c_int, 0x3) << @as(c_int, 13);
pub const MSTATUS_FS_INIT = @as(c_int, 0x1) << @as(c_int, 13);
pub const MSTATUS_FS_CLEAN = @as(c_int, 0x2) << @as(c_int, 13);
pub const MSTATUS_FS_DIRTY = @as(c_int, 0x3) << @as(c_int, 13);
pub const MSTATUS_MPRV = @as(c_int, 0x1) << @as(c_int, 17);
pub const MSTATUS_SUM = @as(c_int, 0x1) << @as(c_int, 18);
pub const MSTATUS_MXR = @as(c_int, 0x1) << @as(c_int, 19);
pub const MSTATUS_TVM = @as(c_int, 0x1) << @as(c_int, 20);
pub const MSTATUS_TW = @as(c_int, 0x1) << @as(c_int, 21);
pub const MSTATUS_TSR = @as(c_int, 0x1) << @as(c_int, 22);
pub const MSTATUS_WPRI = (@as(c_int, 0xff) << @as(c_int, 23)) | @as(c_int, 0x15);
pub const MIE_SSIE = @as(c_int, 0x1) << @as(c_int, 1);
pub const MIE_MSIE = @as(c_int, 0x1) << @as(c_int, 3);
pub const MIE_STIE = @as(c_int, 0x1) << @as(c_int, 5);
pub const MIE_MTIE = @as(c_int, 0x1) << @as(c_int, 7);
pub const MIE_SEIE = @as(c_int, 0x1) << @as(c_int, 9);
pub const MIE_MEIE = @as(c_int, 0x1) << @as(c_int, 11);
pub const MIP_SSIP = @as(c_int, 0x1) << @as(c_int, 1);
pub const MIP_STIP = @as(c_int, 0x1) << @as(c_int, 5);
pub const MIP_MTIP = @as(c_int, 0x1) << @as(c_int, 7);
pub const MIP_SEIP = @as(c_int, 0x1) << @as(c_int, 9);
pub const SSTATUS_SIE = MSTATUS_SIE;
pub const SSTATUS_SPIE = MSTATUS_SPIE;
pub const SSTATUS_SPPU = MSTATUS_SPPU;
pub const SSTATUS_SPPS = MSTATUS_SPPS;
pub const SSTATUS_FS = MSTATUS_FS;
pub const SSTATUS_FS_INIT = MSTATUS_FS_INIT;
pub const SSTATUS_FS_CLEAN = MSTATUS_FS_CLEAN;
pub const SSTATUS_FS_DIRTY = MSTATUS_FS_DIRTY;
pub const SSTATUS_SUM = MSTATUS_SUM;
pub const SSTATUS_MXR = MSTATUS_MXR;
pub const SIE_SSIE = MIE_SSIE;
pub const SIE_STIE = MIE_STIE;
pub const SIE_SEIE = MIE_SEIE;
pub const SIP_SSIP = MIP_SSIP;
pub const SIP_STIP = MIP_STIP;
pub const SIP_SEIP = MIP_SEIP;
pub const PMPCFG_R = @as(c_int, 1) << @as(c_int, 0);
pub const PMPCFG_W = @as(c_int, 1) << @as(c_int, 1);
pub const PMPCFG_X = @as(c_int, 1) << @as(c_int, 2);
pub const PMPCFG_RWX_MASK = @as(c_int, 7) << @as(c_int, 0);
pub const PMPCFG_A_OFF = @as(c_int, 0) << @as(c_int, 3);
pub const PMPCFG_A_TOR = @as(c_int, 1) << @as(c_int, 3);
pub const PMPCFG_A_NA4 = @as(c_int, 2) << @as(c_int, 3);
pub const PMPCFG_A_NAPOT = @as(c_int, 3) << @as(c_int, 3);
pub const PMPCFG_A_MASK = @as(c_int, 3) << @as(c_int, 3);
pub const PMPCFG_L = @as(c_int, 1) << @as(c_int, 7);
pub const __ARCH_RISCV_INCLUDE_BL602_IRQ_H = "";
pub const CLIC_TIMER_ENABLE_ADDRESS = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x02800407, .hexadecimal);
pub const BL602_IRQ_NUM_BASE = @as(c_int, 16);
pub const BL602_IRQ_BMX_ERR = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 0);
pub const BL602_IRQ_BMX_TO = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 1);
pub const BL602_IRQ_L1C_BMX_ERR = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 2);
pub const BL602_IRQ_L1C_BMX_TO = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 3);
pub const BL602_IRQ_SEC_BMX_ERR = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 4);
pub const BL602_IRQ_RF_TOP_INT0 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 5);
pub const BL602_IRQ_RF_TOP_INT1 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 6);
pub const BL602_IRQ_SDIO = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 7);
pub const BL602_IRQ_DMA_BMX_ERR = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 8);
pub const BL602_IRQ_SEC_GMAC = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 9);
pub const BL602_IRQ_SEC_CDET = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 10);
pub const BL602_IRQ_SEC_PKA = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 11);
pub const BL602_IRQ_SEC_TRNG = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 12);
pub const BL602_IRQ_SEC_AES = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 13);
pub const BL602_IRQ_SEC_SHA = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 14);
pub const BL602_IRQ_DMA_ALL = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 15);
pub const BL602_IRQ_RESERVED0 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 16);
pub const BL602_IRQ_RESERVED1 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 17);
pub const BL602_IRQ_RESERVED2 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 18);
pub const BL602_IRQ_IRTX_IRQn = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 19);
pub const BL602_IRQ_IRRX_IRQn = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 20);
pub const BL602_IRQ_RESERVED3 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 21);
pub const BL602_IRQ_RESERVED4 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 22);
pub const BL602_IRQ_SF_CTRL = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 23);
pub const BL602_IRQ_RESERVED5 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 24);
pub const BL602_IRQ_GPADC_DMA = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 25);
pub const BL602_IRQ_EFUSE = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 26);
pub const BL602_IRQ_SPI = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 27);
pub const BL602_IRQ_RESERVED6 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 28);
pub const BL602_IRQ_UART0 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 29);
pub const BL602_IRQ_UART1 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 30);
pub const BL602_IRQ_RESERVED7 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 31);
pub const BL602_IRQ_I2C = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 32);
pub const BL602_IRQ_RESERVED8 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 33);
pub const BL602_IRQ_PWM = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 34);
pub const BL602_IRQ_RESERVED9 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 35);
pub const BL602_IRQ_TIMER_CH0 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 36);
pub const BL602_IRQ_TIMER_CH1 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 37);
pub const BL602_IRQ_TIMER_WDT = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 38);
pub const BL602_IRQ_RESERVED10 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 39);
pub const BL602_IRQ_RESERVED11 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 40);
pub const BL602_IRQ_RESERVED12 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 41);
pub const BL602_IRQ_RESERVED13 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 42);
pub const BL602_IRQ_RESERVED14 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 43);
pub const BL602_IRQ_GPIO_INT0 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 44);
pub const BL602_IRQ_RESERVED16 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 45);
pub const BL602_IRQ_RESERVED17 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 46);
pub const BL602_IRQ_RESERVED18 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 47);
pub const BL602_IRQ_RESERVED19 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 48);
pub const BL602_IRQ_RESERVED20 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 49);
pub const BL602_IRQ_PDS_WAKEUP = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 50);
pub const BL602_IRQ_HBN_OUT0 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 51);
pub const BL602_IRQ_HBN_OUT1 = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 52);
pub const BL602_IRQ_BOR = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 53);
pub const BL602_IRQ_WIFI = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 54);
pub const BL602_IRQ_BZ_PHY = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 55);
pub const BL602_IRQ_BLE = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 56);
pub const BL602_IRQ_MAC_TXRX_TIMER = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 57);
pub const BL602_IRQ_MAC_TXRX_MISC = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 58);
pub const BL602_IRQ_MAC_RX_TRG = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 59);
pub const BL602_IRQ_MAC_TX_TRG = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 60);
pub const BL602_IRQ_MAC_GEN = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 61);
pub const BL602_IRQ_MAC_PORT_TRG = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 62);
pub const BL602_IRQ_WIFI_IPC_PUBLIC = (RISCV_IRQ_ASYNC + BL602_IRQ_NUM_BASE) + @as(c_int, 63);
pub const NR_IRQS = (@as(c_int, 64) + @as(c_int, 16)) + @as(c_int, 16);
pub const __ARCH_RISCV_INCLUDE_MODE_H = "";
pub const STATUS_IE = MSTATUS_MIE;
pub const STATUS_PIE = MSTATUS_MPIE;
pub const STATUS_PPP = MSTATUS_MPPM;
pub const STATUS_SUM = @as(c_int, 0);
pub const IE_EIE = MIE_MEIE;
pub const IE_SIE = MIE_MSIE;
pub const IE_TIE = MIE_MTIE;
pub const RISCV_IRQ_EXT = RISCV_IRQ_MEXT;
pub const RISCV_IRQ_TIMER = RISCV_IRQ_MTIMER;
pub const RISCV_IRQ_SOFT = RISCV_IRQ_MSOFT;
pub inline fn __XSTR(s: anytype) @TypeOf(__STR(s)) {
    return __STR(s);
}
pub const RISCV_IRQ_IAMISALIGNED = @as(c_int, 0);
pub const RISCV_IRQ_IAFAULT = @as(c_int, 1);
pub const RISCV_IRQ_IINSTRUCTION = @as(c_int, 2);
pub const RISCV_IRQ_BPOINT = @as(c_int, 3);
pub const RISCV_IRQ_LAMISALIGNED = @as(c_int, 4);
pub const RISCV_IRQ_LAFAULT = @as(c_int, 5);
pub const RISCV_IRQ_SAMISALIGNED = @as(c_int, 6);
pub const RISCV_IRQ_SAFAULT = @as(c_int, 7);
pub const RISCV_IRQ_ECALLU = @as(c_int, 8);
pub const RISCV_IRQ_ECALLS = @as(c_int, 9);
pub const RISCV_IRQ_ECALLH = @as(c_int, 10);
pub const RISCV_IRQ_ECALLM = @as(c_int, 11);
pub const RISCV_IRQ_INSTRUCTIONPF = @as(c_int, 12);
pub const RISCV_IRQ_LOADPF = @as(c_int, 13);
pub const RISCV_IRQ_RESERVED = @as(c_int, 14);
pub const RISCV_IRQ_STOREPF = @as(c_int, 15);
pub const RISCV_MAX_EXCEPTION = @as(c_int, 15);
pub const RISCV_IRQ_ASYNC = @as(c_int, 16);
pub const RISCV_IRQ_SSOFT = RISCV_IRQ_ASYNC + @as(c_int, 1);
pub const RISCV_IRQ_MSOFT = RISCV_IRQ_ASYNC + @as(c_int, 3);
pub const RISCV_IRQ_STIMER = RISCV_IRQ_ASYNC + @as(c_int, 5);
pub const RISCV_IRQ_MTIMER = RISCV_IRQ_ASYNC + @as(c_int, 7);
pub const RISCV_IRQ_SEXT = RISCV_IRQ_ASYNC + @as(c_int, 9);
pub const RISCV_IRQ_MEXT = RISCV_IRQ_ASYNC + @as(c_int, 11);
pub const RISCV_IRQ_HPMOV = RISCV_IRQ_ASYNC + @as(c_int, 17);
pub const RISCV_IRQ_BIT = @as(c_int, 1) << @as(c_int, 31);
pub const RISCV_IRQ_MASK = ~RISCV_IRQ_BIT;
pub const CONFIG_SYS_NNEST = @as(c_int, 2);
pub const REG_EPC_NDX = @as(c_int, 0);
pub const REG_X1_NDX = @as(c_int, 1);
pub const REG_X2_NDX = @as(c_int, 2);
pub const REG_X3_NDX = @as(c_int, 3);
pub const REG_X4_NDX = @as(c_int, 4);
pub const REG_X5_NDX = @as(c_int, 5);
pub const REG_X6_NDX = @as(c_int, 6);
pub const REG_X7_NDX = @as(c_int, 7);
pub const REG_X8_NDX = @as(c_int, 8);
pub const REG_X9_NDX = @as(c_int, 9);
pub const REG_X10_NDX = @as(c_int, 10);
pub const REG_X11_NDX = @as(c_int, 11);
pub const REG_X12_NDX = @as(c_int, 12);
pub const REG_X13_NDX = @as(c_int, 13);
pub const REG_X14_NDX = @as(c_int, 14);
pub const REG_X15_NDX = @as(c_int, 15);
pub const REG_X16_NDX = @as(c_int, 16);
pub const REG_X17_NDX = @as(c_int, 17);
pub const REG_X18_NDX = @as(c_int, 18);
pub const REG_X19_NDX = @as(c_int, 19);
pub const REG_X20_NDX = @as(c_int, 20);
pub const REG_X21_NDX = @as(c_int, 21);
pub const REG_X22_NDX = @as(c_int, 22);
pub const REG_X23_NDX = @as(c_int, 23);
pub const REG_X24_NDX = @as(c_int, 24);
pub const REG_X25_NDX = @as(c_int, 25);
pub const REG_X26_NDX = @as(c_int, 26);
pub const REG_X27_NDX = @as(c_int, 27);
pub const REG_X28_NDX = @as(c_int, 28);
pub const REG_X29_NDX = @as(c_int, 29);
pub const REG_X30_NDX = @as(c_int, 30);
pub const REG_X31_NDX = @as(c_int, 31);
pub const REG_INT_CTX_NDX = @as(c_int, 32);
pub const INT_XCPT_REGS = @as(c_int, 33);
pub const INT_REG_SIZE = @as(c_int, 4);
pub const INT_XCPT_SIZE = INT_REG_SIZE * INT_XCPT_REGS;
pub const FPU_REG_SIZE = @as(c_int, 1);
pub const REG_F0_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 0));
pub const REG_F1_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 1));
pub const REG_F2_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 2));
pub const REG_F3_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 3));
pub const REG_F4_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 4));
pub const REG_F5_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 5));
pub const REG_F6_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 6));
pub const REG_F7_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 7));
pub const REG_F8_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 8));
pub const REG_F9_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 9));
pub const REG_F10_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 10));
pub const REG_F11_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 11));
pub const REG_F12_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 12));
pub const REG_F13_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 13));
pub const REG_F14_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 14));
pub const REG_F15_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 15));
pub const REG_F16_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 16));
pub const REG_F17_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 17));
pub const REG_F18_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 18));
pub const REG_F19_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 19));
pub const REG_F20_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 20));
pub const REG_F21_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 21));
pub const REG_F22_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 22));
pub const REG_F23_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 23));
pub const REG_F24_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 24));
pub const REG_F25_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 25));
pub const REG_F26_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 26));
pub const REG_F27_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 27));
pub const REG_F28_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 28));
pub const REG_F29_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 29));
pub const REG_F30_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 30));
pub const REG_F31_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 31));
pub const REG_FCSR_NDX = INT_XCPT_REGS + (FPU_REG_SIZE * @as(c_int, 32));
pub const FPU_XCPT_REGS = FPU_REG_SIZE * @as(c_int, 33);
pub const FPU_REG_FULL_SIZE = INT_REG_SIZE * FPU_REG_SIZE;
pub const XCPTCONTEXT_REGS = INT_XCPT_REGS + FPU_XCPT_REGS;
pub const XCPTCONTEXT_SIZE = INT_REG_SIZE * XCPTCONTEXT_REGS;
pub const REG_EPC = REG_EPC_NDX;
pub const REG_X1 = REG_X1_NDX;
pub const REG_X2 = REG_X2_NDX;
pub const REG_X3 = REG_X3_NDX;
pub const REG_X4 = REG_X4_NDX;
pub const REG_X5 = REG_X5_NDX;
pub const REG_X6 = REG_X6_NDX;
pub const REG_X7 = REG_X7_NDX;
pub const REG_X8 = REG_X8_NDX;
pub const REG_X9 = REG_X9_NDX;
pub const REG_X10 = REG_X10_NDX;
pub const REG_X11 = REG_X11_NDX;
pub const REG_X12 = REG_X12_NDX;
pub const REG_X13 = REG_X13_NDX;
pub const REG_X14 = REG_X14_NDX;
pub const REG_X15 = REG_X15_NDX;
pub const REG_X16 = REG_X16_NDX;
pub const REG_X17 = REG_X17_NDX;
pub const REG_X18 = REG_X18_NDX;
pub const REG_X19 = REG_X19_NDX;
pub const REG_X20 = REG_X20_NDX;
pub const REG_X21 = REG_X21_NDX;
pub const REG_X22 = REG_X22_NDX;
pub const REG_X23 = REG_X23_NDX;
pub const REG_X24 = REG_X24_NDX;
pub const REG_X25 = REG_X25_NDX;
pub const REG_X26 = REG_X26_NDX;
pub const REG_X27 = REG_X27_NDX;
pub const REG_X28 = REG_X28_NDX;
pub const REG_X29 = REG_X29_NDX;
pub const REG_X30 = REG_X30_NDX;
pub const REG_X31 = REG_X31_NDX;
pub const REG_INT_CTX = REG_INT_CTX_NDX;
pub const REG_F0 = REG_F0_NDX;
pub const REG_F1 = REG_F1_NDX;
pub const REG_F2 = REG_F2_NDX;
pub const REG_F3 = REG_F3_NDX;
pub const REG_F4 = REG_F4_NDX;
pub const REG_F5 = REG_F5_NDX;
pub const REG_F6 = REG_F6_NDX;
pub const REG_F7 = REG_F7_NDX;
pub const REG_F8 = REG_F8_NDX;
pub const REG_F9 = REG_F9_NDX;
pub const REG_F10 = REG_F10_NDX;
pub const REG_F11 = REG_F11_NDX;
pub const REG_F12 = REG_F12_NDX;
pub const REG_F13 = REG_F13_NDX;
pub const REG_F14 = REG_F14_NDX;
pub const REG_F15 = REG_F15_NDX;
pub const REG_F16 = REG_F16_NDX;
pub const REG_F17 = REG_F17_NDX;
pub const REG_F18 = REG_F18_NDX;
pub const REG_F19 = REG_F19_NDX;
pub const REG_F20 = REG_F20_NDX;
pub const REG_F21 = REG_F21_NDX;
pub const REG_F22 = REG_F22_NDX;
pub const REG_F23 = REG_F23_NDX;
pub const REG_F24 = REG_F24_NDX;
pub const REG_F25 = REG_F25_NDX;
pub const REG_F26 = REG_F26_NDX;
pub const REG_F27 = REG_F27_NDX;
pub const REG_F28 = REG_F28_NDX;
pub const REG_F29 = REG_F29_NDX;
pub const REG_F30 = REG_F30_NDX;
pub const REG_F31 = REG_F31_NDX;
pub const REG_FCSR = REG_FCSR_NDX;
pub const REG_RA = REG_X1;
pub const REG_SP = REG_X2;
pub const REG_GP = REG_X3;
pub const REG_TP = REG_X4;
pub const REG_T0 = REG_X5;
pub const REG_T1 = REG_X6;
pub const REG_T2 = REG_X7;
pub const REG_S0 = REG_X8;
pub const REG_FP = REG_X8;
pub const REG_S1 = REG_X9;
pub const REG_A0 = REG_X10;
pub const REG_A1 = REG_X11;
pub const REG_A2 = REG_X12;
pub const REG_A3 = REG_X13;
pub const REG_A4 = REG_X14;
pub const REG_A5 = REG_X15;
pub const REG_A6 = REG_X16;
pub const REG_A7 = REG_X17;
pub const REG_S2 = REG_X18;
pub const REG_S3 = REG_X19;
pub const REG_S4 = REG_X20;
pub const REG_S5 = REG_X21;
pub const REG_S6 = REG_X22;
pub const REG_S7 = REG_X23;
pub const REG_S8 = REG_X24;
pub const REG_S9 = REG_X25;
pub const REG_S10 = REG_X26;
pub const REG_S11 = REG_X27;
pub const REG_T3 = REG_X28;
pub const REG_T4 = REG_X29;
pub const REG_T5 = REG_X30;
pub const REG_T6 = REG_X31;
pub const REG_FS0 = REG_F8;
pub const REG_FS1 = REG_F9;
pub const REG_FS2 = REG_F18;
pub const REG_FS3 = REG_F19;
pub const REG_FS4 = REG_F20;
pub const REG_FS5 = REG_F21;
pub const REG_FS6 = REG_F22;
pub const REG_FS7 = REG_F23;
pub const REG_FS8 = REG_F24;
pub const REG_FS9 = REG_F25;
pub const REG_FS10 = REG_F26;
pub const REG_FS11 = REG_F27;
pub const CURRENT_REGS = g_current_regs[up_cpu_index()];
pub inline fn up_cpu_index() @TypeOf(@as(c_int, 0)) {
    return @as(c_int, 0);
}
pub inline fn irq_detach(irq: anytype) @TypeOf(irq_attach(irq, NULL, NULL)) {
    return irq_attach(irq, NULL, NULL);
}
pub const IRQT_MAX = UINT8_MAX;
pub inline fn irqchain_detach(irq: anytype, isr: anytype, arg: anytype) @TypeOf(irq_detach(irq)) {
    _ = isr;
    _ = arg;
    return irq_detach(irq);
}
pub inline fn enter_critical_section() @TypeOf(up_irq_save()) {
    return up_irq_save();
}
pub inline fn leave_critical_section(f: anytype) @TypeOf(up_irq_restore(f)) {
    return up_irq_restore(f);
}
pub const __INCLUDE_NUTTX_WDOG_H = "";
pub inline fn WDOG_ISACTIVE(w: anytype) @TypeOf(w.*.func != NULL) {
    return w.*.func != NULL;
}
pub const __INCLUDE_NUTTX_MM_SHM_H = "";
pub const __INCLUDE_NUTTX_MM_GRAN_H = "";
pub const __INCLUDE_NUTTX_NET_NET_H = "";
pub const __ARCH_RISCV_INCLUDE_ARCH_H = "";
pub const CONFIG_SCHED_SPORADIC_MAXREPL = @as(c_int, 3);
pub const IDLE_PROCESS_ID = @import("std").zig.c_translation.cast(pid_t, @as(c_int, 0));
pub const INVALID_PROCESS_ID = @import("std").zig.c_translation.cast(pid_t, -@as(c_int, 1));
pub const MAX_LOCK_COUNT = @as(c_int, 127);
pub const TCB_FLAG_TTYPE_SHIFT = @as(c_int, 0);
pub const TCB_FLAG_TTYPE_MASK = @as(c_int, 3) << TCB_FLAG_TTYPE_SHIFT;
pub const TCB_FLAG_TTYPE_TASK = @as(c_int, 0) << TCB_FLAG_TTYPE_SHIFT;
pub const TCB_FLAG_TTYPE_PTHREAD = @as(c_int, 1) << TCB_FLAG_TTYPE_SHIFT;
pub const TCB_FLAG_TTYPE_KERNEL = @as(c_int, 2) << TCB_FLAG_TTYPE_SHIFT;
pub const TCB_FLAG_NONCANCELABLE = @as(c_int, 1) << @as(c_int, 2);
pub const TCB_FLAG_CANCEL_DEFERRED = @as(c_int, 1) << @as(c_int, 3);
pub const TCB_FLAG_CANCEL_PENDING = @as(c_int, 1) << @as(c_int, 4);
pub const TCB_FLAG_POLICY_SHIFT = @as(c_int, 5);
pub const TCB_FLAG_POLICY_MASK = @as(c_int, 3) << TCB_FLAG_POLICY_SHIFT;
pub const TCB_FLAG_SCHED_FIFO = @as(c_int, 0) << TCB_FLAG_POLICY_SHIFT;
pub const TCB_FLAG_SCHED_RR = @as(c_int, 1) << TCB_FLAG_POLICY_SHIFT;
pub const TCB_FLAG_SCHED_SPORADIC = @as(c_int, 2) << TCB_FLAG_POLICY_SHIFT;
pub const TCB_FLAG_SCHED_OTHER = @as(c_int, 3) << TCB_FLAG_POLICY_SHIFT;
pub const TCB_FLAG_CPU_LOCKED = @as(c_int, 1) << @as(c_int, 8);
pub const TCB_FLAG_SIGNAL_ACTION = @as(c_int, 1) << @as(c_int, 9);
pub const TCB_FLAG_SYSCALL = @as(c_int, 1) << @as(c_int, 10);
pub const TCB_FLAG_EXIT_PROCESSING = @as(c_int, 1) << @as(c_int, 11);
pub const TCB_FLAG_FREE_STACK = @as(c_int, 1) << @as(c_int, 12);
pub const TCB_FLAG_HEAPCHECK = @as(c_int, 1) << @as(c_int, 13);
pub const GROUP_FLAG_NOCLDWAIT = @as(c_int, 1) << @as(c_int, 0);
pub const GROUP_FLAG_ADDRENV = @as(c_int, 1) << @as(c_int, 1);
pub const GROUP_FLAG_PRIVILEGED = @as(c_int, 1) << @as(c_int, 2);
pub const GROUP_FLAG_DELETED = @as(c_int, 1) << @as(c_int, 3);
pub const CHILD_FLAG_TTYPE_SHIFT = @as(c_int, 0);
pub const CHILD_FLAG_TTYPE_MASK = @as(c_int, 3) << CHILD_FLAG_TTYPE_SHIFT;
pub const CHILD_FLAG_TTYPE_TASK = @as(c_int, 0) << CHILD_FLAG_TTYPE_SHIFT;
pub const CHILD_FLAG_TTYPE_PTHREAD = @as(c_int, 1) << CHILD_FLAG_TTYPE_SHIFT;
pub const CHILD_FLAG_TTYPE_KERNEL = @as(c_int, 2) << CHILD_FLAG_TTYPE_SHIFT;
pub const CHILD_FLAG_EXITED = @as(c_int, 1) << @as(c_int, 2);
pub const SPORADIC_FLAG_ALLOCED = @as(c_int, 1) << @as(c_int, 0);
pub const SPORADIC_FLAG_MAIN = @as(c_int, 1) << @as(c_int, 1);
pub const SPORADIC_FLAG_REPLENISH = @as(c_int, 1) << @as(c_int, 2);
pub inline fn _SCHED_GETPARAM(t: anytype, p: anytype) @TypeOf(sched_getparam(t, p)) {
    return sched_getparam(t, p);
}
pub inline fn _SCHED_SETPARAM(t: anytype, p: anytype) @TypeOf(sched_setparam(t, p)) {
    return sched_setparam(t, p);
}
pub inline fn _SCHED_GETSCHEDULER(t: anytype) @TypeOf(sched_getscheduler(t)) {
    return sched_getscheduler(t);
}
pub inline fn _SCHED_SETSCHEDULER(t: anytype, s: anytype, p: anytype) @TypeOf(sched_setscheduler(t, s, p)) {
    return sched_setscheduler(t, s, p);
}
pub inline fn _SCHED_ERRNO(r: anytype) @TypeOf(errno) {
    _ = r;
    return errno;
}
pub inline fn _SCHED_ERRVAL(r: anytype) @TypeOf(-errno) {
    _ = r;
    return -errno;
}
pub const FIRST_READY_TO_RUN_STATE = TSTATE_TASK_READYTORUN;
pub const LAST_READY_TO_RUN_STATE = TSTATE_TASK_RUNNING;
pub const LAST_ASSIGNED_STATE = TSTATE_TASK_RUNNING;
pub const FIRST_BLOCKED_STATE = TSTATE_TASK_INACTIVE;
pub const LAST_BLOCKED_STATE = NUM_TASK_STATES - @as(c_int, 1);
pub const FILENAME_MAX = _POSIX_NAME_MAX;
pub const BUFSIZ = @as(c_int, 64);
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const EOF = -@as(c_int, 1);
pub const stdin = &nxsched_get_streams().*.sl_std[@as(c_int, 0)];
pub const stdout = &nxsched_get_streams().*.sl_std[@as(c_int, 1)];
pub const stderr = &nxsched_get_streams().*.sl_std[@as(c_int, 2)];
pub const P_tmpdir = CONFIG_LIBC_TMPDIR;
pub const L_tmpnam = CONFIG_LIBC_MAX_TMPFILE;
pub const TMP_MAX = @as(c_ulonglong, 56800235584);
pub inline fn setlinebuf(stream: anytype) @TypeOf(setvbuf(stream, NULL, _IOLBF, @as(c_int, 0))) {
    return setvbuf(stream, NULL, _IOLBF, @as(c_int, 0));
}
pub const __INCLUDE_FCNTL_H = "";
pub const O_RDONLY = @as(c_int, 1) << @as(c_int, 0);
pub const O_RDOK = O_RDONLY;
pub const O_WRONLY = @as(c_int, 1) << @as(c_int, 1);
pub const O_WROK = O_WRONLY;
pub const O_RDWR = O_RDOK | O_WROK;
pub const O_CREAT = @as(c_int, 1) << @as(c_int, 2);
pub const O_EXCL = @as(c_int, 1) << @as(c_int, 3);
pub const O_APPEND = @as(c_int, 1) << @as(c_int, 4);
pub const O_TRUNC = @as(c_int, 1) << @as(c_int, 5);
pub const O_NONBLOCK = @as(c_int, 1) << @as(c_int, 6);
pub const O_NDELAY = O_NONBLOCK;
pub const O_SYNC = @as(c_int, 1) << @as(c_int, 7);
pub const O_DSYNC = O_SYNC;
pub const O_TEXT = @as(c_int, 1) << @as(c_int, 8);
pub const O_DIRECT = @as(c_int, 1) << @as(c_int, 9);
pub const O_CLOEXEC = @as(c_int, 1) << @as(c_int, 10);
pub const O_RSYNC = @as(c_int, 0);
pub const O_ACCMODE = O_RDWR;
pub const O_NOCTTY = @as(c_int, 0);
pub const O_BINARY = @as(c_int, 0);
pub const _O_MAXBIT = @as(c_int, 8);
pub const FNDELAY = O_NONBLOCK;
pub const FNONBLOCK = O_NONBLOCK;
pub const FAPPEND = O_APPEND;
pub const FSYNC = O_SYNC;
pub const FASYNC = @as(c_int, 0);
pub const FFCNTL = (((FNONBLOCK | FNDELAY) | FAPPEND) | FSYNC) | FASYNC;
pub const F_DUPFD = @as(c_int, 0);
pub const F_GETFD = @as(c_int, 1);
pub const F_GETFL = @as(c_int, 2);
pub const F_GETLEASE = @as(c_int, 3);
pub const F_GETLK = @as(c_int, 4);
pub const F_GETOWN = @as(c_int, 5);
pub const F_GETSIG = @as(c_int, 6);
pub const F_NOTIFY = @as(c_int, 7);
pub const F_SETFD = @as(c_int, 8);
pub const F_SETFL = @as(c_int, 9);
pub const F_SETLEASE = @as(c_int, 10);
pub const F_SETLK = @as(c_int, 11);
pub const F_SETLKW = @as(c_int, 12);
pub const F_SETOWN = @as(c_int, 13);
pub const F_SETSIG = @as(c_int, 14);
pub const F_GETPATH = @as(c_int, 15);
pub const F_RDLCK = @as(c_int, 0);
pub const F_WRLCK = @as(c_int, 1);
pub const F_UNLCK = @as(c_int, 2);
pub const FD_CLOEXEC = @as(c_int, 1);
pub const DN_ACCESS = @as(c_int, 0);
pub const DN_MODIFY = @as(c_int, 1);
pub const DN_CREATE = @as(c_int, 2);
pub const DN_DELETE = @as(c_int, 3);
pub const DN_RENAME = @as(c_int, 4);
pub const DN_ATTRIB = @as(c_int, 5);
pub inline fn creat(path: anytype, mode: anytype) @TypeOf(open(path, (O_WRONLY | O_CREAT) | O_TRUNC, mode)) {
    return open(path, (O_WRONLY | O_CREAT) | O_TRUNC, mode);
}
pub const __INCLUDE_POLL_H = "";
pub const __INCLUDE_SYS_POLL_H = "";
pub const POLLIN = @as(c_int, 0x01);
pub const POLLRDNORM = @as(c_int, 0x01);
pub const POLLRDBAND = @as(c_int, 0x01);
pub const POLLPRI = @as(c_int, 0x02);
pub const POLLOUT = @as(c_int, 0x04);
pub const POLLWRNORM = @as(c_int, 0x04);
pub const POLLWRBAND = @as(c_int, 0x04);
pub const POLLERR = @as(c_int, 0x08);
pub const POLLHUP = @as(c_int, 0x10);
pub const POLLRDHUP = @as(c_int, 0x10);
pub const POLLNVAL = @as(c_int, 0x20);
pub const POLLFD = @as(c_int, 0x00);
pub const POLLFILE = @as(c_int, 0x40);
pub const POLLSOCK = @as(c_int, 0x80);
pub const POLLMASK = @as(c_int, 0xC0);
pub const DEVNAME_FMT = "/dev/sensor/sensor_%s";
pub const DEVNAME_MAX = @as(c_int, 64);
pub const timespec = struct_timespec;
pub const tm = struct_tm;
pub const itimerspec = struct_itimerspec;
pub const sigval = union_sigval;
pub const pthread_attr_s = struct_pthread_attr_s;
pub const sigevent = struct_sigevent;
pub const sem_s = struct_sem_s;
pub const rmutex_s = struct_rmutex_s;
pub const pollfd = struct_pollfd;
pub const file_operations = struct_file_operations;
pub const geometry = struct_geometry;
pub const block_operations = struct_block_operations;
pub const mtd_dev_s = struct_mtd_dev_s;
pub const stat = struct_stat;
pub const fs_dirent_s = struct_fs_dirent_s;
pub const statfs = struct_statfs;
pub const mountpt_operations = struct_mountpt_operations;
pub const inode_ops_u = union_inode_ops_u;
pub const inode = struct_inode;
pub const file = struct_file;
pub const partition_info_s = struct_partition_info_s;
pub const filelist = struct_filelist;
pub const file_struct = struct_file_struct;
pub const streamlist = struct_streamlist;
pub const join_s = struct_join_s;
pub const task_info_s = struct_task_info_s;
pub const sq_entry_s = struct_sq_entry_s;
pub const sq_queue_s = struct_sq_queue_s;
pub const task_group_s = struct_task_group_s;
pub const entry_u = union_entry_u;
pub const wdog_s = struct_wdog_s;
pub const siginfo = struct_siginfo;
pub const mqueue_inode_s = struct_mqueue_inode_s;
pub const xcptcontext = struct_xcptcontext;
pub const tcb_s = struct_tcb_s;
pub const winsize = struct_winsize;
pub const serial_rs485 = struct_serial_rs485;
pub const sensor_accel = struct_sensor_accel;
pub const sensor_gyro = struct_sensor_gyro;
pub const sensor_mag = struct_sensor_mag;
pub const sensor_baro = struct_sensor_baro;
pub const sensor_prox = struct_sensor_prox;
pub const sensor_light = struct_sensor_light;
pub const sensor_humi = struct_sensor_humi;
pub const sensor_temp = struct_sensor_temp;
pub const sensor_rgb = struct_sensor_rgb;
pub const sensor_hall = struct_sensor_hall;
pub const sensor_ir = struct_sensor_ir;
pub const sensor_gps = struct_sensor_gps;
pub const sensor_uv = struct_sensor_uv;
pub const sensor_noise = struct_sensor_noise;
pub const sensor_pm25 = struct_sensor_pm25;
pub const sensor_pm10 = struct_sensor_pm10;
pub const sensor_pm1p0 = struct_sensor_pm1p0;
pub const sensor_co2 = struct_sensor_co2;
pub const sensor_hcho = struct_sensor_hcho;
pub const sensor_tvoc = struct_sensor_tvoc;
pub const sensor_ph = struct_sensor_ph;
pub const sensor_dust = struct_sensor_dust;
pub const sensor_hrate = struct_sensor_hrate;
pub const sensor_hbeat = struct_sensor_hbeat;
pub const sensor_ecg = struct_sensor_ecg;
pub const sensor_ppgd = struct_sensor_ppgd;
pub const sensor_ppgq = struct_sensor_ppgq;
pub const sensor_impd = struct_sensor_impd;
pub const sensor_ots = struct_sensor_ots;
pub const satellite = struct_satellite;
pub const sensor_gps_satellite = struct_sensor_gps_satellite;
pub const sensor_wake_gesture = struct_sensor_wake_gesture;
pub const sensor_cap = struct_sensor_cap;
pub const sensor_ops_s = struct_sensor_ops_s;
pub const sensor_lowerhalf_s = struct_sensor_lowerhalf_s;
pub const sensor_state_s = struct_sensor_state_s;
pub const sensor_ustate_s = struct_sensor_ustate_s;
pub const sensor_ioctl_s = struct_sensor_ioctl_s;
pub const div_s = struct_div_s;
pub const ldiv_s = struct_ldiv_s;
pub const lldiv_s = struct_lldiv_s;
pub const dq_entry_s = struct_dq_entry_s;
pub const dq_queue_s = struct_dq_queue_s;
pub const sched_param = struct_sched_param;
pub const pthread_condattr_s = struct_pthread_condattr_s;
pub const pthread_cond_s = struct_pthread_cond_s;
pub const pthread_mutexattr_s = struct_pthread_mutexattr_s;
pub const pthread_mutex_s = struct_pthread_mutex_s;
pub const pthread_barrierattr_s = struct_pthread_barrierattr_s;
pub const pthread_barrier_s = struct_pthread_barrier_s;
pub const pthread_rwlock_s = struct_pthread_rwlock_s;
pub const tstate_e = enum_tstate_e;
pub const stackinfo_s = struct_stackinfo_s;
pub const task_tcb_s = struct_task_tcb_s;
pub const pthread_tcb_s = struct_pthread_tcb_s;
pub const va_format = struct_va_format;
pub const flock = struct_flock;
pub const sensor_info = struct_sensor_info;
